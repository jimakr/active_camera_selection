#!/usr/bin/env python3

import argparse
import random
import torch
from time import perf_counter
import cv2

import rospy
from std_msgs.msg import Float32
from std_msgs.msg import Int32
from std_msgs.msg import String

from robosapiens_tool.msg import Pose_Detection, Box, All_Camera_Detection_Info, Camera_Box_Detection_Confidence, img_bbox_heatmap
# from sensor_msgs.msg import Image as ROS_Image
from sensor_msgs.msg import Image

import cv2
import numpy as np
from cv_bridge import CvBridge, CvBridgeError
#from robosapiens_tool.msg import PoseConfKpt2D

bridge = CvBridge()


def show_image(img, heatmap, bbox, window_name):
    # cv2.rectangle(img, (int(bbox[0]), int(bbox[1])), int((bbox[2]), int(bbox[3])), (255, 0, 0), 2)
    heatmap = cv2.resize(heatmap,(heatmap.shape[1]*3, heatmap.shape[0]*2), interpolation=cv2.INTER_LINEAR)

    y_offset = img.shape[0] - heatmap.shape[0]
    x_offset = 0

    img = img.copy()
    # Place the heatmap in the bottom-left corner of the large image
    heatmap = cv2.merge([heatmap] * 3)
    heatmap= heatmap*5
    img[y_offset:y_offset + heatmap.shape[0], x_offset:x_offset + heatmap.shape[1]] = heatmap

    top_left = (int(bbox[0]), int(bbox[2]))
    bottom_right = (int(bbox[1]), int(bbox[3]))

    # Define the color (BGR format) and thickness
    color = (255, 0, 0)  # Blue color
    thickness = 2

    # Draw the rectangle on the image
    cv2.rectangle(img, top_left, bottom_right, color, thickness)

    cv2.imshow(window_name, img)
    cv2.imshow('heatmap', heatmap*100)
    cv2.waitKey(1)  # Add a small delay (e.g., 1 millisecond)



def callback(img_msg):
    window_name = "Best Camera View"
    try:
        cv_image = bridge.imgmsg_to_cv2(img_msg, desired_encoding="passthrough")

        # Show the converted image
        show_image(cv_image, window_name)
    except CvBridgeError as e:
        rospy.logerr("CvBridge Error: {0}".format(e))

def new_callback(data):
    window_name = "Best Camera View"
    img = data.image
    bbox = data.bbox
    heatmap = data.heatmap
    try:
        cv_image = bridge.imgmsg_to_cv2(img, desired_encoding="passthrough")
        cv_heatmap = bridge.imgmsg_to_cv2(heatmap, desired_encoding="passthrough")

        # Show the converted image
        show_image(cv_image, cv_heatmap, bbox, window_name)
    except CvBridgeError as e:
        rospy.logerr("CvBridge Error: {0}".format(e))







def main():
    # Initialize the ROS Node
    rospy.init_node('look_from_the_best_camera', anonymous=False)

    # rospy.Subscriber("/best_camera_view/", Image, callback,queue_size=1, buff_size=1000)
    rospy.Subscriber("/best_camera_values/", img_bbox_heatmap, new_callback,queue_size=1, buff_size=1000)

    # Spin (keep the program from shutting down unless ROS is shut down, or CTRL+C is pressed)
    rospy.spin()

    # Close the OpenCV windows when the script ends
    cv2.destroyAllWindows()


if __name__ == '__main__':
    main()
