

from abc import ABC
import numpy as np
from typing import Optional, Dict, Tuple, Any, List


class Pose():
    """
    This target is used for pose estimation. It contains a list of Keypoints.
    Refer to kpt_names for keypoint naming.
    """

    num_kpts = 18
    kpt_names = [
        "nose",
        "neck",
        "r_sho",
        "r_elb",
        "r_wri",
        "l_sho",
        "l_elb",
        "l_wri",
        "r_hip",
        "r_knee",
        "r_ank",
        "l_hip",
        "l_knee",
        "l_ank",
        "r_eye",
        "l_eye",
        "r_ear",
        "l_ear",
    ]
    last_id = -1

    def __init__(self, keypoints, confidence):
        #super().__init__()
        self.data = keypoints
        self.confidence = confidence
        self._id = None

    @property
    def id(self):
        """
        Getter of human id.

        :return: the actual human id held by the object
        :rtype: int
        """
        return self._id

    @id.setter
    def id(self, id):
        """
        Setter for human id to which the Pose corresponds to. Pose expects id to be of int type.
        Please note that None is a valid value, since a pose is not always accompanied with an id.
        :param: human id to which the Pose corresponds to
        """
        if isinstance(id, int) or id is None:
            self._id = id
        else:
            raise ValueError("Pose id should be an integer or None")

    @property
    def data(self):
        """
        Getter of data.

        :return: the actual pose data held by the object
        :rtype: numpy.ndarray
        """
        if self._data is None:
            raise ValueError("Pose object is empty")

        return self._data

    @data.setter
    def data(self, data):
        """
        Setter for data. Pose expects a NumPy array or a list
        :param: data to be used for creating Pose
        """
        if isinstance(data, np.ndarray) or isinstance(data, list):
            self._data = data
        else:
            raise ValueError(
                "Pose expects either NumPy arrays or lists as data"
            )

    def __str__(self):
        """
        Returns pose in a human-readable format, that contains the pose ID, detection confidence and
        the matched kpt_names and keypoints x,y position.
        """

        out_string = "Pose ID: " + str(self.id)
        out_string += "\nDetection confidence: " + str(self.confidence) + "\nKeypoints name-position:\n"
        # noinspection PyUnresolvedReferences
        for name, kpt in zip(Pose.kpt_names, self.data.tolist()):
            out_string += name + ": " + str(kpt) + "\n"
        return out_string

    def __getitem__(self, key):
        """  Allows for accessing keypoint position using either integers or keypoint names """
        if isinstance(key, int):
            if key >= Pose.num_kpts or key < 0:
                raise ValueError('Pose supports ' + str(Pose.num_kpts) + ' keypoints. Keypoint id ' + str(
                    key) + ' is not within the supported range.')
            else:
                return self.data[key]
        elif isinstance(key, str):
            try:
                position = Pose.kpt_names.index(key)
                return self.data[position]
            except:
                raise ValueError("Keypoint " + key + " not supported.")
        else:
            raise ValueError(
                "Only string and integers are supported for retrieving keypoints."
            )


