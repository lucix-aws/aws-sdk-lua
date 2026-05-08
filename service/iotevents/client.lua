



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("iotevents.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("iotevents.schemas")
local traits = require("smithy.traits")
local types = require("iotevents.types")
local sdk_defaults = require("aws.sdk_defaults")
































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "IotColumboService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "iotevents", signing_region = c.region } }
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

function C:createAlarmModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAlarmModel, input, options)
end

function C:createDetectorModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDetectorModel, input, options)
end

function C:createInput(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateInput, input, options)
end

function C:deleteAlarmModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAlarmModel, input, options)
end

function C:deleteDetectorModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDetectorModel, input, options)
end

function C:deleteInput(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteInput, input, options)
end

function C:describeAlarmModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAlarmModel, input, options)
end

function C:describeDetectorModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDetectorModel, input, options)
end

function C:describeDetectorModelAnalysis(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDetectorModelAnalysis, input, options)
end

function C:describeInput(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInput, input, options)
end

function C:describeLoggingOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLoggingOptions, input, options)
end

function C:getDetectorModelAnalysisResults(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDetectorModelAnalysisResults, input, options)
end

function C:listAlarmModels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAlarmModels, input, options)
end

function C:listAlarmModelVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAlarmModelVersions, input, options)
end

function C:listDetectorModels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDetectorModels, input, options)
end

function C:listDetectorModelVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDetectorModelVersions, input, options)
end

function C:listInputRoutings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInputRoutings, input, options)
end

function C:listInputs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInputs, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putLoggingOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutLoggingOptions, input, options)
end

function C:startDetectorModelAnalysis(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDetectorModelAnalysis, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAlarmModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAlarmModel, input, options)
end

function C:updateDetectorModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDetectorModel, input, options)
end

function C:updateInput(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateInput, input, options)
end

return M
