from robosapiens_tool_utils.data import Image#,Timeseries, PointCloud
import numpy as np
import rospy
from rospy.rostime import Time
from cv_bridge import CvBridge

from std_msgs.msg import ColorRGBA, String, Header
from sensor_msgs.msg import Image as ImageMsg



class ROSBridge:

    def __init__(self):
        self._cv_bridge = CvBridge()

    def from_ros_image(self, message: ImageMsg, encoding: str='passthrough') -> Image:
        """
        Converts a ROS image message into an OpenPose-format image
        :param message: ROS image to be converted
        :type message: sensor_msgs.msg.Image
        :param encoding: encoding to be used for the conversion (inherited from CvBridge)
        :type encoding: str
        :return:  image (RGB)
        :rtype: data.Image
        """
        cv_image = self._cv_bridge.imgmsg_to_cv2(message, desired_encoding=encoding)
        image = Image(np.asarray(cv_image, dtype=np.uint8))
        return image

    def to_ros_image(self,
                     image: Image,
                     encoding: str='passthrough',
                     frame_id: str = None,
                     time: Time = None) -> ImageMsg:
        """
        Converts an RGB image into a ROS image message
        :param image: RGB image to be converted
        :type image: engine.data.Image
        :param encoding: encoding to be used for the conversion (inherited from CvBridge)
        :type encoding: str
        :param frame_id: frame id of the image
        :type frame_id: str
        :param time: time of the image
        :type time: rospy.rostime.Time
        :return: ROS image
        :rtype: sensor_msgs.msg.Image
        """
        # Convert from the standard (CHW/RGB) to OpenCV standard (HWC/BGR)
        header = Header()
        if frame_id is not None:
            header.frame_id = frame_id
        if time is not None:
            header.stamp = time
        message = self._cv_bridge.cv2_to_imgmsg(image.opencv(), encoding=encoding, header=header)
        return message


