
"use strict";

let DeleteCollection = require('./DeleteCollection.js')
let SetAdditionalTfsInteractiveMarker = require('./SetAdditionalTfsInteractiveMarker.js')
let SaveCollection = require('./SaveCollection.js')
let ToggleAutomaticDataCollector = require('./ToggleAutomaticDataCollector.js')
let SetSensorInteractiveMarker = require('./SetSensorInteractiveMarker.js')
let GetAdditionalTfsInteractiveMarker = require('./GetAdditionalTfsInteractiveMarker.js')
let GetSensorInteractiveMarker = require('./GetSensorInteractiveMarker.js')
let GetDataset = require('./GetDataset.js')

module.exports = {
  DeleteCollection: DeleteCollection,
  SetAdditionalTfsInteractiveMarker: SetAdditionalTfsInteractiveMarker,
  SaveCollection: SaveCollection,
  ToggleAutomaticDataCollector: ToggleAutomaticDataCollector,
  SetSensorInteractiveMarker: SetSensorInteractiveMarker,
  GetAdditionalTfsInteractiveMarker: GetAdditionalTfsInteractiveMarker,
  GetSensorInteractiveMarker: GetSensorInteractiveMarker,
  GetDataset: GetDataset,
};
