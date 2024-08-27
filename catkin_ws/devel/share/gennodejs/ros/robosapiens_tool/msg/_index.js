
"use strict";

let img_bbox_heatmap = require('./img_bbox_heatmap.js');
let Pose2DKeypoint = require('./Pose2DKeypoint.js');
let id_conf = require('./id_conf.js');
let bbox = require('./bbox.js');
let Camera_Box_Detection_Confidence = require('./Camera_Box_Detection_Confidence.js');
let Box = require('./Box.js');
let Cameras_id_Confidence = require('./Cameras_id_Confidence.js');
let Pose_Detection = require('./Pose_Detection.js');
let PoseConfKpt2D = require('./PoseConfKpt2D.js');
let All_Camera_Detection_Info = require('./All_Camera_Detection_Info.js');

module.exports = {
  img_bbox_heatmap: img_bbox_heatmap,
  Pose2DKeypoint: Pose2DKeypoint,
  id_conf: id_conf,
  bbox: bbox,
  Camera_Box_Detection_Confidence: Camera_Box_Detection_Confidence,
  Box: Box,
  Cameras_id_Confidence: Cameras_id_Confidence,
  Pose_Detection: Pose_Detection,
  PoseConfKpt2D: PoseConfKpt2D,
  All_Camera_Detection_Info: All_Camera_Detection_Info,
};
