local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("location.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("location.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "LocationService"
    cfg.signing_name = "locationservice"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:associateTrackerConsumer(input, options)
    return self:invokeOperation(input, {
        name = "AssociateTrackerConsumer",
        input_schema = types.AssociateTrackerConsumerInput,
        output_schema = types.AssociateTrackerConsumerOutput,
        http_method = "POST",
        http_path = "/tracking/v0/trackers/{TrackerName}/consumers",
    }, options)
end

function Client:batchDeleteDevicePositionHistory(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteDevicePositionHistory",
        input_schema = types.BatchDeleteDevicePositionHistoryInput,
        output_schema = types.BatchDeleteDevicePositionHistoryOutput,
        http_method = "POST",
        http_path = "/tracking/v0/trackers/{TrackerName}/delete-positions",
    }, options)
end

function Client:batchDeleteGeofence(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteGeofence",
        input_schema = types.BatchDeleteGeofenceInput,
        output_schema = types.BatchDeleteGeofenceOutput,
        http_method = "POST",
        http_path = "/geofencing/v0/collections/{CollectionName}/delete-geofences",
    }, options)
end

function Client:batchEvaluateGeofences(input, options)
    return self:invokeOperation(input, {
        name = "BatchEvaluateGeofences",
        input_schema = types.BatchEvaluateGeofencesInput,
        output_schema = types.BatchEvaluateGeofencesOutput,
        http_method = "POST",
        http_path = "/geofencing/v0/collections/{CollectionName}/positions",
    }, options)
end

function Client:batchGetDevicePosition(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetDevicePosition",
        input_schema = types.BatchGetDevicePositionInput,
        output_schema = types.BatchGetDevicePositionOutput,
        http_method = "POST",
        http_path = "/tracking/v0/trackers/{TrackerName}/get-positions",
    }, options)
end

function Client:batchPutGeofence(input, options)
    return self:invokeOperation(input, {
        name = "BatchPutGeofence",
        input_schema = types.BatchPutGeofenceInput,
        output_schema = types.BatchPutGeofenceOutput,
        http_method = "POST",
        http_path = "/geofencing/v0/collections/{CollectionName}/put-geofences",
    }, options)
end

function Client:batchUpdateDevicePosition(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateDevicePosition",
        input_schema = types.BatchUpdateDevicePositionInput,
        output_schema = types.BatchUpdateDevicePositionOutput,
        http_method = "POST",
        http_path = "/tracking/v0/trackers/{TrackerName}/positions",
    }, options)
end

function Client:calculateRoute(input, options)
    return self:invokeOperation(input, {
        name = "CalculateRoute",
        input_schema = types.CalculateRouteInput,
        output_schema = types.CalculateRouteOutput,
        http_method = "POST",
        http_path = "/routes/v0/calculators/{CalculatorName}/calculate/route",
    }, options)
end

function Client:calculateRouteMatrix(input, options)
    return self:invokeOperation(input, {
        name = "CalculateRouteMatrix",
        input_schema = types.CalculateRouteMatrixInput,
        output_schema = types.CalculateRouteMatrixOutput,
        http_method = "POST",
        http_path = "/routes/v0/calculators/{CalculatorName}/calculate/route-matrix",
    }, options)
end

function Client:cancelJob(input, options)
    return self:invokeOperation(input, {
        name = "CancelJob",
        input_schema = types.CancelJobInput,
        output_schema = types.CancelJobOutput,
        http_method = "POST",
        http_path = "/metadata/v0/jobs/cancel-job",
    }, options)
end

function Client:createGeofenceCollection(input, options)
    return self:invokeOperation(input, {
        name = "CreateGeofenceCollection",
        input_schema = types.CreateGeofenceCollectionInput,
        output_schema = types.CreateGeofenceCollectionOutput,
        http_method = "POST",
        http_path = "/geofencing/v0/collections",
    }, options)
end

function Client:createKey(input, options)
    return self:invokeOperation(input, {
        name = "CreateKey",
        input_schema = types.CreateKeyInput,
        output_schema = types.CreateKeyOutput,
        http_method = "POST",
        http_path = "/metadata/v0/keys",
    }, options)
end

function Client:createMap(input, options)
    return self:invokeOperation(input, {
        name = "CreateMap",
        input_schema = types.CreateMapInput,
        output_schema = types.CreateMapOutput,
        http_method = "POST",
        http_path = "/maps/v0/maps",
    }, options)
end

function Client:createPlaceIndex(input, options)
    return self:invokeOperation(input, {
        name = "CreatePlaceIndex",
        input_schema = types.CreatePlaceIndexInput,
        output_schema = types.CreatePlaceIndexOutput,
        http_method = "POST",
        http_path = "/places/v0/indexes",
    }, options)
end

function Client:createRouteCalculator(input, options)
    return self:invokeOperation(input, {
        name = "CreateRouteCalculator",
        input_schema = types.CreateRouteCalculatorInput,
        output_schema = types.CreateRouteCalculatorOutput,
        http_method = "POST",
        http_path = "/routes/v0/calculators",
    }, options)
end

function Client:createTracker(input, options)
    return self:invokeOperation(input, {
        name = "CreateTracker",
        input_schema = types.CreateTrackerInput,
        output_schema = types.CreateTrackerOutput,
        http_method = "POST",
        http_path = "/tracking/v0/trackers",
    }, options)
end

function Client:deleteGeofenceCollection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGeofenceCollection",
        input_schema = types.DeleteGeofenceCollectionInput,
        output_schema = types.DeleteGeofenceCollectionOutput,
        http_method = "DELETE",
        http_path = "/geofencing/v0/collections/{CollectionName}",
    }, options)
end

function Client:deleteKey(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKey",
        input_schema = types.DeleteKeyInput,
        output_schema = types.DeleteKeyOutput,
        http_method = "DELETE",
        http_path = "/metadata/v0/keys/{KeyName}",
    }, options)
end

function Client:deleteMap(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMap",
        input_schema = types.DeleteMapInput,
        output_schema = types.DeleteMapOutput,
        http_method = "DELETE",
        http_path = "/maps/v0/maps/{MapName}",
    }, options)
end

function Client:deletePlaceIndex(input, options)
    return self:invokeOperation(input, {
        name = "DeletePlaceIndex",
        input_schema = types.DeletePlaceIndexInput,
        output_schema = types.DeletePlaceIndexOutput,
        http_method = "DELETE",
        http_path = "/places/v0/indexes/{IndexName}",
    }, options)
end

function Client:deleteRouteCalculator(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRouteCalculator",
        input_schema = types.DeleteRouteCalculatorInput,
        output_schema = types.DeleteRouteCalculatorOutput,
        http_method = "DELETE",
        http_path = "/routes/v0/calculators/{CalculatorName}",
    }, options)
end

function Client:deleteTracker(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTracker",
        input_schema = types.DeleteTrackerInput,
        output_schema = types.DeleteTrackerOutput,
        http_method = "DELETE",
        http_path = "/tracking/v0/trackers/{TrackerName}",
    }, options)
end

function Client:describeGeofenceCollection(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGeofenceCollection",
        input_schema = types.DescribeGeofenceCollectionInput,
        output_schema = types.DescribeGeofenceCollectionOutput,
        http_method = "GET",
        http_path = "/geofencing/v0/collections/{CollectionName}",
    }, options)
end

function Client:describeKey(input, options)
    return self:invokeOperation(input, {
        name = "DescribeKey",
        input_schema = types.DescribeKeyInput,
        output_schema = types.DescribeKeyOutput,
        http_method = "GET",
        http_path = "/metadata/v0/keys/{KeyName}",
    }, options)
end

function Client:describeMap(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMap",
        input_schema = types.DescribeMapInput,
        output_schema = types.DescribeMapOutput,
        http_method = "GET",
        http_path = "/maps/v0/maps/{MapName}",
    }, options)
end

function Client:describePlaceIndex(input, options)
    return self:invokeOperation(input, {
        name = "DescribePlaceIndex",
        input_schema = types.DescribePlaceIndexInput,
        output_schema = types.DescribePlaceIndexOutput,
        http_method = "GET",
        http_path = "/places/v0/indexes/{IndexName}",
    }, options)
end

function Client:describeRouteCalculator(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRouteCalculator",
        input_schema = types.DescribeRouteCalculatorInput,
        output_schema = types.DescribeRouteCalculatorOutput,
        http_method = "GET",
        http_path = "/routes/v0/calculators/{CalculatorName}",
    }, options)
end

function Client:describeTracker(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTracker",
        input_schema = types.DescribeTrackerInput,
        output_schema = types.DescribeTrackerOutput,
        http_method = "GET",
        http_path = "/tracking/v0/trackers/{TrackerName}",
    }, options)
end

function Client:disassociateTrackerConsumer(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateTrackerConsumer",
        input_schema = types.DisassociateTrackerConsumerInput,
        output_schema = types.DisassociateTrackerConsumerOutput,
        http_method = "DELETE",
        http_path = "/tracking/v0/trackers/{TrackerName}/consumers/{ConsumerArn}",
    }, options)
end

function Client:forecastGeofenceEvents(input, options)
    return self:invokeOperation(input, {
        name = "ForecastGeofenceEvents",
        input_schema = types.ForecastGeofenceEventsInput,
        output_schema = types.ForecastGeofenceEventsOutput,
        http_method = "POST",
        http_path = "/geofencing/v0/collections/{CollectionName}/forecast-geofence-events",
    }, options)
end

function Client:getDevicePosition(input, options)
    return self:invokeOperation(input, {
        name = "GetDevicePosition",
        input_schema = types.GetDevicePositionInput,
        output_schema = types.GetDevicePositionOutput,
        http_method = "GET",
        http_path = "/tracking/v0/trackers/{TrackerName}/devices/{DeviceId}/positions/latest",
    }, options)
end

function Client:getDevicePositionHistory(input, options)
    return self:invokeOperation(input, {
        name = "GetDevicePositionHistory",
        input_schema = types.GetDevicePositionHistoryInput,
        output_schema = types.GetDevicePositionHistoryOutput,
        http_method = "POST",
        http_path = "/tracking/v0/trackers/{TrackerName}/devices/{DeviceId}/list-positions",
    }, options)
end

function Client:getGeofence(input, options)
    return self:invokeOperation(input, {
        name = "GetGeofence",
        input_schema = types.GetGeofenceInput,
        output_schema = types.GetGeofenceOutput,
        http_method = "GET",
        http_path = "/geofencing/v0/collections/{CollectionName}/geofences/{GeofenceId}",
    }, options)
end

function Client:getJob(input, options)
    return self:invokeOperation(input, {
        name = "GetJob",
        input_schema = types.GetJobInput,
        output_schema = types.GetJobOutput,
        http_method = "GET",
        http_path = "/metadata/v0/jobs/{JobId}",
    }, options)
end

function Client:getMapGlyphs(input, options)
    return self:invokeOperation(input, {
        name = "GetMapGlyphs",
        input_schema = types.GetMapGlyphsInput,
        output_schema = types.GetMapGlyphsOutput,
        http_method = "GET",
        http_path = "/maps/v0/maps/{MapName}/glyphs/{FontStack}/{FontUnicodeRange}",
    }, options)
end

function Client:getMapSprites(input, options)
    return self:invokeOperation(input, {
        name = "GetMapSprites",
        input_schema = types.GetMapSpritesInput,
        output_schema = types.GetMapSpritesOutput,
        http_method = "GET",
        http_path = "/maps/v0/maps/{MapName}/sprites/{FileName}",
    }, options)
end

function Client:getMapStyleDescriptor(input, options)
    return self:invokeOperation(input, {
        name = "GetMapStyleDescriptor",
        input_schema = types.GetMapStyleDescriptorInput,
        output_schema = types.GetMapStyleDescriptorOutput,
        http_method = "GET",
        http_path = "/maps/v0/maps/{MapName}/style-descriptor",
    }, options)
end

function Client:getMapTile(input, options)
    return self:invokeOperation(input, {
        name = "GetMapTile",
        input_schema = types.GetMapTileInput,
        output_schema = types.GetMapTileOutput,
        http_method = "GET",
        http_path = "/maps/v0/maps/{MapName}/tiles/{Z}/{X}/{Y}",
    }, options)
end

function Client:getPlace(input, options)
    return self:invokeOperation(input, {
        name = "GetPlace",
        input_schema = types.GetPlaceInput,
        output_schema = types.GetPlaceOutput,
        http_method = "GET",
        http_path = "/places/v0/indexes/{IndexName}/places/{PlaceId}",
    }, options)
end

function Client:listDevicePositions(input, options)
    return self:invokeOperation(input, {
        name = "ListDevicePositions",
        input_schema = types.ListDevicePositionsInput,
        output_schema = types.ListDevicePositionsOutput,
        http_method = "POST",
        http_path = "/tracking/v0/trackers/{TrackerName}/list-positions",
    }, options)
end

function Client:listGeofenceCollections(input, options)
    return self:invokeOperation(input, {
        name = "ListGeofenceCollections",
        input_schema = types.ListGeofenceCollectionsInput,
        output_schema = types.ListGeofenceCollectionsOutput,
        http_method = "POST",
        http_path = "/geofencing/v0/list-collections",
    }, options)
end

function Client:listGeofences(input, options)
    return self:invokeOperation(input, {
        name = "ListGeofences",
        input_schema = types.ListGeofencesInput,
        output_schema = types.ListGeofencesOutput,
        http_method = "POST",
        http_path = "/geofencing/v0/collections/{CollectionName}/list-geofences",
    }, options)
end

function Client:listJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListJobs",
        input_schema = types.ListJobsInput,
        output_schema = types.ListJobsOutput,
        http_method = "POST",
        http_path = "/metadata/v0/jobs/list-jobs",
    }, options)
end

function Client:listKeys(input, options)
    return self:invokeOperation(input, {
        name = "ListKeys",
        input_schema = types.ListKeysInput,
        output_schema = types.ListKeysOutput,
        http_method = "POST",
        http_path = "/metadata/v0/list-keys",
    }, options)
end

function Client:listMaps(input, options)
    return self:invokeOperation(input, {
        name = "ListMaps",
        input_schema = types.ListMapsInput,
        output_schema = types.ListMapsOutput,
        http_method = "POST",
        http_path = "/maps/v0/list-maps",
    }, options)
end

function Client:listPlaceIndexes(input, options)
    return self:invokeOperation(input, {
        name = "ListPlaceIndexes",
        input_schema = types.ListPlaceIndexesInput,
        output_schema = types.ListPlaceIndexesOutput,
        http_method = "POST",
        http_path = "/places/v0/list-indexes",
    }, options)
end

function Client:listRouteCalculators(input, options)
    return self:invokeOperation(input, {
        name = "ListRouteCalculators",
        input_schema = types.ListRouteCalculatorsInput,
        output_schema = types.ListRouteCalculatorsOutput,
        http_method = "POST",
        http_path = "/routes/v0/list-calculators",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:listTrackerConsumers(input, options)
    return self:invokeOperation(input, {
        name = "ListTrackerConsumers",
        input_schema = types.ListTrackerConsumersInput,
        output_schema = types.ListTrackerConsumersOutput,
        http_method = "POST",
        http_path = "/tracking/v0/trackers/{TrackerName}/list-consumers",
    }, options)
end

function Client:listTrackers(input, options)
    return self:invokeOperation(input, {
        name = "ListTrackers",
        input_schema = types.ListTrackersInput,
        output_schema = types.ListTrackersOutput,
        http_method = "POST",
        http_path = "/tracking/v0/list-trackers",
    }, options)
end

function Client:putGeofence(input, options)
    return self:invokeOperation(input, {
        name = "PutGeofence",
        input_schema = types.PutGeofenceInput,
        output_schema = types.PutGeofenceOutput,
        http_method = "PUT",
        http_path = "/geofencing/v0/collections/{CollectionName}/geofences/{GeofenceId}",
    }, options)
end

function Client:searchPlaceIndexForPosition(input, options)
    return self:invokeOperation(input, {
        name = "SearchPlaceIndexForPosition",
        input_schema = types.SearchPlaceIndexForPositionInput,
        output_schema = types.SearchPlaceIndexForPositionOutput,
        http_method = "POST",
        http_path = "/places/v0/indexes/{IndexName}/search/position",
    }, options)
end

function Client:searchPlaceIndexForSuggestions(input, options)
    return self:invokeOperation(input, {
        name = "SearchPlaceIndexForSuggestions",
        input_schema = types.SearchPlaceIndexForSuggestionsInput,
        output_schema = types.SearchPlaceIndexForSuggestionsOutput,
        http_method = "POST",
        http_path = "/places/v0/indexes/{IndexName}/search/suggestions",
    }, options)
end

function Client:searchPlaceIndexForText(input, options)
    return self:invokeOperation(input, {
        name = "SearchPlaceIndexForText",
        input_schema = types.SearchPlaceIndexForTextInput,
        output_schema = types.SearchPlaceIndexForTextOutput,
        http_method = "POST",
        http_path = "/places/v0/indexes/{IndexName}/search/text",
    }, options)
end

function Client:startJob(input, options)
    return self:invokeOperation(input, {
        name = "StartJob",
        input_schema = types.StartJobInput,
        output_schema = types.StartJobOutput,
        http_method = "POST",
        http_path = "/metadata/v0/jobs",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:updateGeofenceCollection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGeofenceCollection",
        input_schema = types.UpdateGeofenceCollectionInput,
        output_schema = types.UpdateGeofenceCollectionOutput,
        http_method = "PATCH",
        http_path = "/geofencing/v0/collections/{CollectionName}",
    }, options)
end

function Client:updateKey(input, options)
    return self:invokeOperation(input, {
        name = "UpdateKey",
        input_schema = types.UpdateKeyInput,
        output_schema = types.UpdateKeyOutput,
        http_method = "PATCH",
        http_path = "/metadata/v0/keys/{KeyName}",
    }, options)
end

function Client:updateMap(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMap",
        input_schema = types.UpdateMapInput,
        output_schema = types.UpdateMapOutput,
        http_method = "PATCH",
        http_path = "/maps/v0/maps/{MapName}",
    }, options)
end

function Client:updatePlaceIndex(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePlaceIndex",
        input_schema = types.UpdatePlaceIndexInput,
        output_schema = types.UpdatePlaceIndexOutput,
        http_method = "PATCH",
        http_path = "/places/v0/indexes/{IndexName}",
    }, options)
end

function Client:updateRouteCalculator(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRouteCalculator",
        input_schema = types.UpdateRouteCalculatorInput,
        output_schema = types.UpdateRouteCalculatorOutput,
        http_method = "PATCH",
        http_path = "/routes/v0/calculators/{CalculatorName}",
    }, options)
end

function Client:updateTracker(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTracker",
        input_schema = types.UpdateTrackerInput,
        output_schema = types.UpdateTrackerOutput,
        http_method = "PATCH",
        http_path = "/tracking/v0/trackers/{TrackerName}",
    }, options)
end

function Client:verifyDevicePosition(input, options)
    return self:invokeOperation(input, {
        name = "VerifyDevicePosition",
        input_schema = types.VerifyDevicePositionInput,
        output_schema = types.VerifyDevicePositionOutput,
        http_method = "POST",
        http_path = "/tracking/v0/trackers/{TrackerName}/positions/verify",
    }, options)
end

return M
