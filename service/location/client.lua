



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("location.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("location.schemas")
local traits = require("smithy.traits")
local types = require("location.types")
local sdk_defaults = require("aws.sdk_defaults")






































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "LocationService"
   if not c.protocol then c.protocol = restjson_protocol.new() end
   if not c.endpoint_provider then
      c.endpoint_provider = function(params)
         return endpoint.resolve(endpoint_rules, params)
      end
   end
   if not c.auth_scheme_resolver then
      c.auth_scheme_resolver = function(_service, operation)
         local auth_trait = operation:trait(traits.AUTH) or _service:trait(traits.AUTH)
         local options = {}
         for _, scheme in ipairs(auth_trait or {}) do
            local scheme_id = scheme.scheme_id or scheme
            if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "geo", signing_region = c.region } }
            else
               options[#options + 1] = { scheme_id = scheme_id }
            end
         end
         return options
      end
   end
   defaults.resolve_auth_schemes(c)
   defaults.resolve_identity_resolvers(c)
   defaults.resolve_http_client(c)
   defaults.resolve_retry_strategy(c)
   sdk_defaults.resolve_identity_resolver(c)
   local self = setmetatable(base_client.new(c), Client_mt)
   return self
end

function C:associateTrackerConsumer(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateTrackerConsumer, input, options)
end

function C:batchDeleteDevicePositionHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeleteDevicePositionHistory, input, options)
end

function C:batchDeleteGeofence(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeleteGeofence, input, options)
end

function C:batchEvaluateGeofences(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchEvaluateGeofences, input, options)
end

function C:batchGetDevicePosition(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetDevicePosition, input, options)
end

function C:batchPutGeofence(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchPutGeofence, input, options)
end

function C:batchUpdateDevicePosition(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchUpdateDevicePosition, input, options)
end

function C:calculateRoute(input, options)
   return self:invokeOperation(schemas.Service, schemas.CalculateRoute, input, options)
end

function C:calculateRouteMatrix(input, options)
   return self:invokeOperation(schemas.Service, schemas.CalculateRouteMatrix, input, options)
end

function C:cancelJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelJob, input, options)
end

function C:createGeofenceCollection(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGeofenceCollection, input, options)
end

function C:createKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateKey, input, options)
end

function C:createMap(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMap, input, options)
end

function C:createPlaceIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePlaceIndex, input, options)
end

function C:createRouteCalculator(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRouteCalculator, input, options)
end

function C:createTracker(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTracker, input, options)
end

function C:deleteGeofenceCollection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGeofenceCollection, input, options)
end

function C:deleteKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteKey, input, options)
end

function C:deleteMap(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMap, input, options)
end

function C:deletePlaceIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePlaceIndex, input, options)
end

function C:deleteRouteCalculator(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRouteCalculator, input, options)
end

function C:deleteTracker(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTracker, input, options)
end

function C:describeGeofenceCollection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeGeofenceCollection, input, options)
end

function C:describeKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeKey, input, options)
end

function C:describeMap(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMap, input, options)
end

function C:describePlaceIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePlaceIndex, input, options)
end

function C:describeRouteCalculator(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRouteCalculator, input, options)
end

function C:describeTracker(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTracker, input, options)
end

function C:disassociateTrackerConsumer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateTrackerConsumer, input, options)
end

function C:forecastGeofenceEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ForecastGeofenceEvents, input, options)
end

function C:getDevicePosition(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDevicePosition, input, options)
end

function C:getDevicePositionHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDevicePositionHistory, input, options)
end

function C:getGeofence(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGeofence, input, options)
end

function C:getJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetJob, input, options)
end

function C:getMapGlyphs(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMapGlyphs, input, options)
end

function C:getMapSprites(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMapSprites, input, options)
end

function C:getMapStyleDescriptor(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMapStyleDescriptor, input, options)
end

function C:getMapTile(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMapTile, input, options)
end

function C:getPlace(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPlace, input, options)
end

function C:listDevicePositions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDevicePositions, input, options)
end

function C:listGeofenceCollections(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGeofenceCollections, input, options)
end

function C:listGeofences(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGeofences, input, options)
end

function C:listJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListJobs, input, options)
end

function C:listKeys(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListKeys, input, options)
end

function C:listMaps(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMaps, input, options)
end

function C:listPlaceIndexes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPlaceIndexes, input, options)
end

function C:listRouteCalculators(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRouteCalculators, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTrackerConsumers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTrackerConsumers, input, options)
end

function C:listTrackers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTrackers, input, options)
end

function C:putGeofence(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutGeofence, input, options)
end

function C:searchPlaceIndexForPosition(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchPlaceIndexForPosition, input, options)
end

function C:searchPlaceIndexForSuggestions(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchPlaceIndexForSuggestions, input, options)
end

function C:searchPlaceIndexForText(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchPlaceIndexForText, input, options)
end

function C:startJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartJob, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateGeofenceCollection(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGeofenceCollection, input, options)
end

function C:updateKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateKey, input, options)
end

function C:updateMap(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMap, input, options)
end

function C:updatePlaceIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePlaceIndex, input, options)
end

function C:updateRouteCalculator(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRouteCalculator, input, options)
end

function C:updateTracker(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTracker, input, options)
end

function C:verifyDevicePosition(input, options)
   return self:invokeOperation(schemas.Service, schemas.VerifyDevicePosition, input, options)
end

return M
