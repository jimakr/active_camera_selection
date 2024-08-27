#!/usr/bin/env python3


import argparse
import torch
from time import perf_counter
import numpy as np
from collections import deque
import cv2
from cv_bridge import CvBridge
import rospy
import sys


from std_msgs.msg import Float32
from std_msgs.msg import String
from geometry_msgs.msg import PoseArray, Pose

from sensor_msgs.msg import Image as ROS_Image
from robosapiens_tool.msg import PoseConfKpt2D

from robosapiens_tool.msg import Camera_Box_Detection_Confidence, Cameras_id_Confidence, id_conf, bbox, img_bbox_heatmap


from robosapiens_tool_utils import ROSBridge

from robosapiens_tool_utils.data import Image
from robosapiens_tool_utils.draw import draw
from robosapiens_tool_utils.High_Resolution_Pose_Estimation import HighResolutionPoseEstimation


class HRPoseEstimationNode:

    def __init__(self, input_rgb_image_topic="/usb_cam/image_raw",
                 output_rgb_image_topic="/image_pose_annotated", detections_topic="/poses/", device="cuda",
                 performance_topic=None, num_refinement_stages=2, use_stride=False, half_precision=False, percentage_around_crop=0.1 ):
        """
        Creates a ROS Node for high resolution pose estimation with HR Pose Estimation.
        :param input_rgb_image_topic: Topic from which we are reading the input image
        :type input_rgb_image_topic: str
        :param output_rgb_image_topic: Topic to which we are publishing the annotated image (if None, no annotated
        image is published)
        :type output_rgb_image_topic: str
        :param detections_topic: Topic to which we are publishing the annotations (if None, no pose detection message
        is published)
        :type detections_topic:  str
        :param performance_topic: Topic to which we are publishing performance information (if None, no performance
        message is published)
        :type performance_topic:  str
        :param device: device on which we are running inference ('cpu' or 'cuda')
        :type device: str
        :param num_refinement_stages: Specifies the number of pose estimation refinement stages are added on the
        model's head, including the initial stage. Can be 0, 1 or 2, with more stages meaning slower and more accurate
        inference
        :type num_refinement_stages: int
        :param use_stride: Whether to add a stride value in the model, which reduces accuracy but increases
        inference speed
        :type use_stride: bool
        :param half_precision: Enables inference using half (fp16) precision instead of single (fp32) precision.
        Valid only for GPU-based inference
        :type half_precision: bool
        """
        self.input_rgb_image_topic = input_rgb_image_topic

        if output_rgb_image_topic is not None:
            self.image_publisher = rospy.Publisher(output_rgb_image_topic, ROS_Image, queue_size=1)
        else:
            self.image_publisher = None

        if detections_topic is not None:
            self.pose_publisher = rospy.Publisher(detections_topic, PoseConfKpt2D, queue_size=1)
        else:
            self.pose_publisher = None

        if performance_topic is not None:
            self.performance_publisher = rospy.Publisher(performance_topic, Float32, queue_size=1)
        else:
            self.performance_publisher = None

        self.bridge = ROSBridge()
        self.cv_bridge = CvBridge()

        # Initialize the high resolution pose estimation learner
        self.pose_estimator = HighResolutionPoseEstimation(device=device, num_refinement_stages=num_refinement_stages,
                                                                  mobilenet_use_stride=use_stride,
                                                                  half_precision=half_precision, method='primary')

        self.pose_estimator.load()


        self.conf1 = None
        self.conf2 = None
        self.conf3 = None
        self.conf4 = None

        self.pose_image1= None
        self.pose_image2 = None
        self.pose_image3 = None
        self.pose_image4 = None

        self.best_camera_id = None
        self.cameras = {
            "cam1": {},
            "cam2": {},
            "cam3": {},
            "cam4": {}
        }
        self.prior_value = {'confidence': 0.01, 'id': None}
        self.prev_id = None
        self.prev_max_val = 0
        self.max_conf_image = np.zeros((100, 100))
        self.max_conf_bbox = [0,0,0,0]
        self.max_conf_heatmap = np.zeros((100,100))

        self.camera_confidences = {
            "cam1": deque(maxlen=1),
            "cam2": deque(maxlen=1),
            "cam3": deque(maxlen=1),
            "cam4": deque(maxlen=1)
        }
        self.current_camera_id = None
        self.switch_threshold = 2.9  # Confidence threshold for switching
        self.min_switch_interval = 0.1  # Minimum time in seconds before switching again
        self.last_switch_time = rospy.get_time()

        self.cv_image1 = None
        self.cv_image2 = None
        self.cv_image3 = None
        self.cv_image4 = None

        self.heatmap1 = None
        self.bounds1 = None

        self.heatmap2 = None
        self.bounds2 = None

        self.heatmap3 = None
        self.bounds3 = None

        self.heatmap4 = None
        self.bounds4 = None


    def listen(self):
        """
        Start the node and begin processing input data.
        """


        rospy.Subscriber('/camera1/image_raw', ROS_Image, self.callback, queue_size=1, buff_size=1000)
        rospy.Subscriber('/camera2/image_raw', ROS_Image, self.callback2, queue_size=1, buff_size=1000)
        rospy.Subscriber('/camera3/image_raw', ROS_Image, self.callback3, queue_size=1, buff_size=1000)
        rospy.Subscriber('/camera4/image_raw', ROS_Image, self.callback4, queue_size=1, buff_size=1000)

        print('conf1: ', self.conf1, '\nconf2: ', self.conf2, '\nconf3: ', self.conf3, '\nconf4: ', self.conf4)


        rospy.loginfo("Pose estimation node started.")
        # rospy.spin()

    def print_confs(self):
        print('conf1: ', self.conf1, '\nconf2: ', self.conf2, '\nconf3: ', self.conf3, '\nconf4: ', self.conf4)

    def show_image(self, img, heatmap, bbox, window_name):
        heatmap = cv2.resize(heatmap, (heatmap.shape[1] * 3, heatmap.shape[0] * 2), interpolation=cv2.INTER_LINEAR)

        y_offset = img.shape[0] - heatmap.shape[0]
        x_offset = 0

        img = img.copy()
        # Place the heatmap in the bottom-left corner of the large image
        heatmap = cv2.merge([heatmap] * 3)
        img[y_offset:y_offset + heatmap.shape[0], x_offset:x_offset + heatmap.shape[1]] = heatmap

        top_left = (int(bbox[0]), int(bbox[2]))
        bottom_right = (int(bbox[1]), int(bbox[3]))

        # Define the color (BGR format) and thickness
        color = (255, 0, 0)  # Blue color
        thickness = 2

        # Draw the rectangle on the image
        cv2.rectangle(img, top_left, bottom_right, color, thickness)

        print(img.shape)
        cv2.imshow(window_name, img)
        cv2.imshow('heatmap', heatmap * 100)
        cv2.waitKey(1)  # Add a small delay (e.g., 1 millisecond)

    def find_best_cam(self):
        if self.conf1 != None and self.conf2 != None and self.conf3 != None and self.conf4 != None:
            current_time= rospy.get_time()

            self.cameras['cam1']['id'] = str(1)
            self.cameras['cam1']['confidence'] = self.conf1
            self.cameras['cam1']['image'] = self.image1

            self.cameras['cam1']['heatmap'] = self.heatmap1
            self.cameras['cam1']['bbox'] = self.bounds1[0]

            self.cameras['cam2']['id'] = str(2)
            self.cameras['cam2']['confidence'] = self.conf2
            self.cameras['cam2']['image'] = self.image2
            self.cameras['cam2']['heatmap'] = self.heatmap2
            self.cameras['cam2']['bbox'] = self.bounds2[0]

            self.cameras['cam3']['id'] = str(3)
            self.cameras['cam3']['confidence'] = self.conf3
            self.cameras['cam3']['image'] = self.image3
            self.cameras['cam3']['heatmap'] = self.heatmap3
            self.cameras['cam3']['bbox'] = self.bounds3[0]


            self.cameras['cam4']['id'] = str(4)
            self.cameras['cam4']['confidence'] = self.conf4
            self.cameras['cam4']['image'] = self.image4
            self.cameras['cam4']['heatmap'] = self.heatmap4
            self.cameras['cam4']['bbox'] = self.bounds4[0]

            self.camera_confidences["cam1"].append(self.conf1)
            self.camera_confidences["cam2"].append(self.conf2)
            self.camera_confidences["cam3"].append(self.conf3)
            self.camera_confidences["cam4"].append(self.conf4)
            avg_confidences = {cam: np.mean(confs) for cam, confs in self.camera_confidences.items()}
            best_camera_id, best_confidence = max(avg_confidences.items(), key=lambda x: x[1])

            if self.current_camera_id is None or (best_confidence - avg_confidences[
                self.current_camera_id] > self.switch_threshold and current_time - self.last_switch_time > self.min_switch_interval):

                self.current_camera_id = best_camera_id
                self.last_switch_time = current_time
                # self.max_conf_image = self.cameras[self.current_camera_id]['image']
                self.best_camera_id = self.current_camera_id
            self.max_conf_image = self.cameras[self.current_camera_id]['image']
            self.max_conf_bbox = self.cameras[self.current_camera_id]['bbox']
            self.max_conf_heatmap = self.cameras[self.current_camera_id]['heatmap']

            pub_img_bbox_hmp = rospy.Publisher('/best_camera_values/', img_bbox_heatmap, queue_size=1)

            pub_img_bbox_hmp_msg = img_bbox_heatmap()
            pub_img_bbox_hmp_msg.image = self.max_conf_image
            pub_img_bbox_hmp_msg.bbox = self.max_conf_bbox

            pub_img_bbox_hmp_msg.heatmap = self.max_conf_heatmap

            pub_img_bbox_hmp.publish(pub_img_bbox_hmp_msg)
        else:
            pass


    def callback(self, data):
        """
        Callback that processes the input data and publishes to the corresponding topics.
        :param data: Input image message
        :type data: sensor_msgs.msg.Image
        """

        cam_box_det_msg = Camera_Box_Detection_Confidence()

        conf_pub = rospy.Publisher('/confs/', Cameras_id_Confidence, queue_size=1)
        cam_conf_msg = Cameras_id_Confidence()


        if self.performance_publisher:
            start_time = perf_counter()
        # Convert sensor_msgs.msg.Image into OpenDR Image
        image = self.bridge.from_ros_image(data, encoding='bgr8')


        poses, heatmap, bounds = self.pose_estimator.infer(image)
        self.heatmap1 = self.cv_bridge.cv2_to_imgmsg(heatmap, encoding='mono8')
        self.bounds1 = bounds


        cam_box_det_msg.camera_id = '1'
        if len(poses) == 0:
            cam_box_det_msg.detection = 0
            cam_box_det_msg.confidence = 0.0

            self.conf1 = 0.0
            cam_conf_msg.camera1_conf =0.0
        else:
            cam_box_det_msg.detection = 1
            cam_box_det_msg.confidence = poses[0].confidence

            self.conf1 = round(poses[0].confidence, 3)
            conf_pub.camera1_conf = poses[0].confidence

        image = image.opencv()


        for pose in poses:
            draw(image, pose)
        self.image1 = self.bridge.to_ros_image(Image(image))

        self.find_best_cam()

    def callback2(self, data):
        """
        Callback that processes the input data and publishes to the corresponding topics.
        :param data: Input image message
        :type data: sensor_msgs.msg.Image
        """

        cam_box_det_msg = Camera_Box_Detection_Confidence()

        # conf_pub = rospy.Publisher('/confs/', Cameras_id_Confidence, queue_size=1)
        cam_conf_msg = Cameras_id_Confidence()

        if self.performance_publisher:
            start_time = perf_counter()
        # Convert sensor_msgs.msg.Image into OpenDR Image
        image = self.bridge.from_ros_image(data, encoding='bgr8')

        # Run pose estimation
        poses, heatmap, bounds = self.pose_estimator.infer(image)
        self.heatmap2 = self.cv_bridge.cv2_to_imgmsg(heatmap, encoding='mono8')
        self.bounds2 = bounds

        cam_box_det_msg.camera_id = '2'
        if len(poses) == 0:
            cam_box_det_msg.detection = 0
            cam_box_det_msg.confidence = 0.0

            self.conf2 = 0.0
            cam_conf_msg.camera2_conf = 0.0
        else:
            cam_box_det_msg.detection = 1
            cam_box_det_msg.confidence = poses[0].confidence

            self.conf2 = round(poses[0].confidence, 3)
            cam_conf_msg.camera2_conf = poses[0].confidence

        image = image.opencv()

        for pose in poses:
            draw(image, pose)
        self.image2 = self.bridge.to_ros_image(Image(image))

        # self.print_confs()
        self.find_best_cam()


    def callback3(self, data):
        """
        Callback that processes the input data and publishes to the corresponding topics.
        :param data: Input image message
        :type data: sensor_msgs.msg.Image
        """

        cam_box_det_msg = Camera_Box_Detection_Confidence()

        conf_pub = rospy.Publisher('/confs/', Cameras_id_Confidence, queue_size=1)
        cam_conf_msg = Cameras_id_Confidence()

        if self.performance_publisher:
            start_time = perf_counter()
        # Convert sensor_msgs.msg.Image into OpenDR Image
        image = self.bridge.from_ros_image(data, encoding='bgr8')

        # Run pose estimation
        poses, heatmap, bounds = self.pose_estimator.infer(image)
        self.heatmap3 = self.cv_bridge.cv2_to_imgmsg(heatmap, encoding='mono8')
        self.bounds3 = bounds


        cam_box_det_msg.camera_id = '3'
        if len(poses) == 0:
            cam_box_det_msg.detection = 0
            cam_box_det_msg.confidence = 0.0

            self.conf3 = 0.0
            cam_conf_msg.camera3_conf = 0.0
        else:
            cam_box_det_msg.detection = 1
            cam_box_det_msg.confidence = poses[0].confidence

            self.conf3 = round(poses[0].confidence, 3)
            cam_conf_msg.camera3_conf = poses[0].confidence

        image = image.opencv()



        for pose in poses:
            draw(image, pose)
        self.image3 = self.bridge.to_ros_image(Image(image))
        self.find_best_cam()



    def callback4(self, data):
        """
        Callback that processes the input data and publishes to the corresponding topics.
        :param data: Input image message
        :type data: sensor_msgs.msg.Image
        """

        cam_box_det_msg = Camera_Box_Detection_Confidence()

        conf_pub = rospy.Publisher('/confs/', Cameras_id_Confidence, queue_size=1)
        cam_conf_msg = Cameras_id_Confidence()

        if self.performance_publisher:
            start_time = perf_counter()
        # Convert sensor_msgs.msg.Image into OpenDR Image
        image = self.bridge.from_ros_image(data, encoding='bgr8')

        # Run pose estimation
        poses, heatmap, bounds = self.pose_estimator.infer(image)
        self.heatmap4 = self.cv_bridge.cv2_to_imgmsg(heatmap, encoding='mono8')
        self.bounds4 = bounds


        cam_box_det_msg.camera_id = '4'
        if len(poses) == 0:
            cam_box_det_msg.detection = 0
            cam_box_det_msg.confidence = 0.0

            self.conf4 = 0.0
            cam_conf_msg.camera4_conf = 0.0

        else:
            cam_box_det_msg.detection = 1
            cam_box_det_msg.confidence = poses[0].confidence

            self.conf4 = round(poses[0].confidence, 3)
            cam_conf_msg.camera4_conf = poses[0].confidence


        image = image.opencv()

        for pose in poses:
            draw(image, pose)
        self.image4 = self.bridge.to_ros_image(Image(image))

        self.find_best_cam()





def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("-i", "--input_rgb_image_topic", help="Topic name for input rgb image",
                        type=str, default="/usb_cam/image_raw")
    parser.add_argument("-o", "--output_rgb_image_topic", help="Topic name for output annotated rgb image",
                        type=lambda value: value if value.lower() != "none" else None,
                        default="/opendr/image_pose_annotated")
    parser.add_argument("-d", "--detections_topic", help="Topic name for detection messages",
                        type=lambda value: value if value.lower() != "none" else None,
                        default="/opendr/poses")
    parser.add_argument("--performance_topic", help="Topic name for performance messages, disabled (None) by default",
                        type=str, default=None)
    parser.add_argument("--device", help="Device to use, either \"cpu\" or \"cuda\", defaults to \"cuda\"",
                        type=str, default="cuda", choices=["cuda", "cpu"])
    parser.add_argument("--accelerate", help="Enables acceleration flags (e.g., stride)", default=False,
                        action="store_true")
    args = parser.parse_args(rospy.myargv()[1:])

    try:
        if args.device == "cuda" and torch.cuda.is_available():
            device = "cuda"
        elif args.device == "cuda":
            print("GPU not found. Using CPU instead.")
            device = "cpu"
        else:
            print("Using CPU.")
            device = "cpu"
    except:
        print("Using CPU.")
        device = "cpu"

    if args.accelerate:
        stride = True
        stages = 0
        half_prec = True
    else:
        stride = False
        stages = 2
        half_prec = False

    rospy.init_node('opendr_hr_pose_estimation_node', anonymous=True)

    pose_estimator_node = HRPoseEstimationNode(device=device,
                                               input_rgb_image_topic=args.input_rgb_image_topic,
                                               output_rgb_image_topic=args.output_rgb_image_topic,
                                               detections_topic=args.detections_topic,
                                               performance_topic=args.performance_topic,
                                               num_refinement_stages=stages, use_stride=stride, half_precision=half_prec)
    pose_estimator_node.listen()






    rospy.spin()




if __name__ == '__main__':
    main()
