



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("rum.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("rum.schemas")
local traits = require("smithy.traits")
local types = require("rum.types")
local sdk_defaults = require("aws.sdk_defaults")


























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "RUM"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "rum", signing_region = c.region } }
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

function C:batchCreateRumMetricDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchCreateRumMetricDefinitions, input, options)
end

function C:batchDeleteRumMetricDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeleteRumMetricDefinitions, input, options)
end

function C:batchGetRumMetricDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetRumMetricDefinitions, input, options)
end

function C:createAppMonitor(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAppMonitor, input, options)
end

function C:deleteAppMonitor(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAppMonitor, input, options)
end

function C:deleteResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourcePolicy, input, options)
end

function C:deleteRumMetricsDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRumMetricsDestination, input, options)
end

function C:getAppMonitor(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAppMonitor, input, options)
end

function C:getAppMonitorData(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAppMonitorData, input, options)
end

function C:getResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourcePolicy, input, options)
end

function C:listAppMonitors(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAppMonitors, input, options)
end

function C:listRumMetricsDestinations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRumMetricsDestinations, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutResourcePolicy, input, options)
end

function C:putRumEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutRumEvents, input, options)
end

function C:putRumMetricsDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutRumMetricsDestination, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAppMonitor(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAppMonitor, input, options)
end

function C:updateRumMetricDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRumMetricDefinition, input, options)
end

return M
