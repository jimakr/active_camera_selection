
import numpy as np
import cv2
from robosapiens_tool_utils.target import Pose


# For in-depth explanation of BODY_PARTS_KPT_IDS and BODY_PARTS_PAF_IDS see
#  https://github.com/Daniil-Osokin/lightweight-human-pose-estimation.pytorch/blob/master/TRAIN-ON-CUSTOM-DATASET.md
BODY_PARTS_KPT_IDS = [[1, 2], [1, 5], [2, 3], [3, 4], [5, 6], [6, 7], [1, 8], [8, 9], [9, 10], [1, 11],
                      [11, 12], [12, 13], [1, 0], [0, 14], [14, 16], [0, 15], [15, 17], [2, 16], [5, 17]]
BODY_PARTS_PAF_IDS = ([12, 13], [20, 21], [14, 15], [16, 17], [22, 23], [24, 25], [0, 1], [2, 3], [4, 5],
                      [6, 7], [8, 9], [10, 11], [28, 29], [30, 31], [34, 35], [32, 33], [36, 37], [18, 19],
                      [26, 27])
sigmas = np.array([.26, .79, .79, .72, .62, .79, .72, .62, 1.07, .87, .89, 1.07, .87, .89, .25, .25, .35, .35],
                  dtype=np.float32) / 10.0
vars_ = (sigmas * 2) ** 2
last_id = -1
color = [0, 224, 255]


def draw(img, pose):
    """
    Draws the provided pose on the provided image.

    :param img: the image to draw the pose on
    :param pose: the pose to draw on the image
    """
    assert pose.data.shape == (Pose.num_kpts, 2)

    for part_id in range(len(BODY_PARTS_PAF_IDS) - 2):
        kpt_a_id = BODY_PARTS_KPT_IDS[part_id][0]
        global_kpt_a_id = pose.data[kpt_a_id, 0]
        x_a, y_a, x_b, y_b = 0, 0, 0, 0
        if global_kpt_a_id != -1:
            x_a, y_a = pose.data[kpt_a_id]
            cv2.circle(img, (int(x_a), int(y_a)), 3, color, -1)
        kpt_b_id = BODY_PARTS_KPT_IDS[part_id][1]
        global_kpt_b_id = pose.data[kpt_b_id, 0]
        if global_kpt_b_id != -1:
            x_b, y_b = pose.data[kpt_b_id]
            cv2.circle(img, (int(x_b), int(y_b)), 3, color, -1)
        if global_kpt_a_id != -1 and global_kpt_b_id != -1:
            cv2.line(img, (int(x_a), int(y_a)), (int(x_b), int(y_b)), color, 2)

