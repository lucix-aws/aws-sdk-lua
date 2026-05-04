local types = require("location.types")

local record Client
    associateTrackerConsumer: function(Client, types.AssociateTrackerConsumerInput): types.AssociateTrackerConsumerOutput, table
    batchDeleteDevicePositionHistory: function(Client, types.BatchDeleteDevicePositionHistoryInput): types.BatchDeleteDevicePositionHistoryOutput, table
    batchDeleteGeofence: function(Client, types.BatchDeleteGeofenceInput): types.BatchDeleteGeofenceOutput, table
    batchEvaluateGeofences: function(Client, types.BatchEvaluateGeofencesInput): types.BatchEvaluateGeofencesOutput, table
    batchGetDevicePosition: function(Client, types.BatchGetDevicePositionInput): types.BatchGetDevicePositionOutput, table
    batchPutGeofence: function(Client, types.BatchPutGeofenceInput): types.BatchPutGeofenceOutput, table
    batchUpdateDevicePosition: function(Client, types.BatchUpdateDevicePositionInput): types.BatchUpdateDevicePositionOutput, table
    calculateRoute: function(Client, types.CalculateRouteInput): types.CalculateRouteOutput, table
    calculateRouteMatrix: function(Client, types.CalculateRouteMatrixInput): types.CalculateRouteMatrixOutput, table
    cancelJob: function(Client, types.CancelJobInput): types.CancelJobOutput, table
    createGeofenceCollection: function(Client, types.CreateGeofenceCollectionInput): types.CreateGeofenceCollectionOutput, table
    createKey: function(Client, types.CreateKeyInput): types.CreateKeyOutput, table
    createMap: function(Client, types.CreateMapInput): types.CreateMapOutput, table
    createPlaceIndex: function(Client, types.CreatePlaceIndexInput): types.CreatePlaceIndexOutput, table
    createRouteCalculator: function(Client, types.CreateRouteCalculatorInput): types.CreateRouteCalculatorOutput, table
    createTracker: function(Client, types.CreateTrackerInput): types.CreateTrackerOutput, table
    deleteGeofenceCollection: function(Client, types.DeleteGeofenceCollectionInput): types.DeleteGeofenceCollectionOutput, table
    deleteKey: function(Client, types.DeleteKeyInput): types.DeleteKeyOutput, table
    deleteMap: function(Client, types.DeleteMapInput): types.DeleteMapOutput, table
    deletePlaceIndex: function(Client, types.DeletePlaceIndexInput): types.DeletePlaceIndexOutput, table
    deleteRouteCalculator: function(Client, types.DeleteRouteCalculatorInput): types.DeleteRouteCalculatorOutput, table
    deleteTracker: function(Client, types.DeleteTrackerInput): types.DeleteTrackerOutput, table
    describeGeofenceCollection: function(Client, types.DescribeGeofenceCollectionInput): types.DescribeGeofenceCollectionOutput, table
    describeKey: function(Client, types.DescribeKeyInput): types.DescribeKeyOutput, table
    describeMap: function(Client, types.DescribeMapInput): types.DescribeMapOutput, table
    describePlaceIndex: function(Client, types.DescribePlaceIndexInput): types.DescribePlaceIndexOutput, table
    describeRouteCalculator: function(Client, types.DescribeRouteCalculatorInput): types.DescribeRouteCalculatorOutput, table
    describeTracker: function(Client, types.DescribeTrackerInput): types.DescribeTrackerOutput, table
    disassociateTrackerConsumer: function(Client, types.DisassociateTrackerConsumerInput): types.DisassociateTrackerConsumerOutput, table
    forecastGeofenceEvents: function(Client, types.ForecastGeofenceEventsInput): types.ForecastGeofenceEventsOutput, table
    getDevicePosition: function(Client, types.GetDevicePositionInput): types.GetDevicePositionOutput, table
    getDevicePositionHistory: function(Client, types.GetDevicePositionHistoryInput): types.GetDevicePositionHistoryOutput, table
    getGeofence: function(Client, types.GetGeofenceInput): types.GetGeofenceOutput, table
    getJob: function(Client, types.GetJobInput): types.GetJobOutput, table
    getMapGlyphs: function(Client, types.GetMapGlyphsInput): types.GetMapGlyphsOutput, table
    getMapSprites: function(Client, types.GetMapSpritesInput): types.GetMapSpritesOutput, table
    getMapStyleDescriptor: function(Client, types.GetMapStyleDescriptorInput): types.GetMapStyleDescriptorOutput, table
    getMapTile: function(Client, types.GetMapTileInput): types.GetMapTileOutput, table
    getPlace: function(Client, types.GetPlaceInput): types.GetPlaceOutput, table
    listDevicePositions: function(Client, types.ListDevicePositionsInput): types.ListDevicePositionsOutput, table
    listGeofenceCollections: function(Client, types.ListGeofenceCollectionsInput): types.ListGeofenceCollectionsOutput, table
    listGeofences: function(Client, types.ListGeofencesInput): types.ListGeofencesOutput, table
    listJobs: function(Client, types.ListJobsInput): types.ListJobsOutput, table
    listKeys: function(Client, types.ListKeysInput): types.ListKeysOutput, table
    listMaps: function(Client, types.ListMapsInput): types.ListMapsOutput, table
    listPlaceIndexes: function(Client, types.ListPlaceIndexesInput): types.ListPlaceIndexesOutput, table
    listRouteCalculators: function(Client, types.ListRouteCalculatorsInput): types.ListRouteCalculatorsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listTrackerConsumers: function(Client, types.ListTrackerConsumersInput): types.ListTrackerConsumersOutput, table
    listTrackers: function(Client, types.ListTrackersInput): types.ListTrackersOutput, table
    putGeofence: function(Client, types.PutGeofenceInput): types.PutGeofenceOutput, table
    searchPlaceIndexForPosition: function(Client, types.SearchPlaceIndexForPositionInput): types.SearchPlaceIndexForPositionOutput, table
    searchPlaceIndexForSuggestions: function(Client, types.SearchPlaceIndexForSuggestionsInput): types.SearchPlaceIndexForSuggestionsOutput, table
    searchPlaceIndexForText: function(Client, types.SearchPlaceIndexForTextInput): types.SearchPlaceIndexForTextOutput, table
    startJob: function(Client, types.StartJobInput): types.StartJobOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateGeofenceCollection: function(Client, types.UpdateGeofenceCollectionInput): types.UpdateGeofenceCollectionOutput, table
    updateKey: function(Client, types.UpdateKeyInput): types.UpdateKeyOutput, table
    updateMap: function(Client, types.UpdateMapInput): types.UpdateMapOutput, table
    updatePlaceIndex: function(Client, types.UpdatePlaceIndexInput): types.UpdatePlaceIndexOutput, table
    updateRouteCalculator: function(Client, types.UpdateRouteCalculatorInput): types.UpdateRouteCalculatorOutput, table
    updateTracker: function(Client, types.UpdateTrackerInput): types.UpdateTrackerOutput, table
    verifyDevicePosition: function(Client, types.VerifyDevicePositionInput): types.VerifyDevicePositionOutput, table
end

local record M
    new: function(table): Client
end

return M
