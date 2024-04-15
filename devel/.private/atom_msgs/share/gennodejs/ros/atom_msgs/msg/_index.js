
"use strict";

let PointCloudWithLidar3DLabels = require('./PointCloudWithLidar3DLabels.js');
let Lidar3DLabels = require('./Lidar3DLabels.js');
let ImageWithRGBLabels = require('./ImageWithRGBLabels.js');
let DepthLabels = require('./DepthLabels.js');
let Detection2D = require('./Detection2D.js');
let DepthImageWithDepthLabels = require('./DepthImageWithDepthLabels.js');
let RGBLabels = require('./RGBLabels.js');

module.exports = {
  PointCloudWithLidar3DLabels: PointCloudWithLidar3DLabels,
  Lidar3DLabels: Lidar3DLabels,
  ImageWithRGBLabels: ImageWithRGBLabels,
  DepthLabels: DepthLabels,
  Detection2D: Detection2D,
  DepthImageWithDepthLabels: DepthImageWithDepthLabels,
  RGBLabels: RGBLabels,
};
