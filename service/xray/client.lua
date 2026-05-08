



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("xray.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("xray.schemas")
local traits = require("smithy.traits")
local types = require("xray.types")
local sdk_defaults = require("aws.sdk_defaults")












































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSXRay"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "xray", signing_region = c.region } }
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

function C:batchGetTraces(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetTraces, input, options)
end

function C:cancelTraceRetrieval(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelTraceRetrieval, input, options)
end

function C:createGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGroup, input, options)
end

function C:createSamplingRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSamplingRule, input, options)
end

function C:deleteGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGroup, input, options)
end

function C:deleteResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourcePolicy, input, options)
end

function C:deleteSamplingRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSamplingRule, input, options)
end

function C:getEncryptionConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEncryptionConfig, input, options)
end

function C:getGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGroup, input, options)
end

function C:getGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGroups, input, options)
end

function C:getIndexingRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIndexingRules, input, options)
end

function C:getInsight(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInsight, input, options)
end

function C:getInsightEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInsightEvents, input, options)
end

function C:getInsightImpactGraph(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInsightImpactGraph, input, options)
end

function C:getInsightSummaries(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInsightSummaries, input, options)
end

function C:getRetrievedTracesGraph(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRetrievedTracesGraph, input, options)
end

function C:getSamplingRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSamplingRules, input, options)
end

function C:getSamplingStatisticSummaries(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSamplingStatisticSummaries, input, options)
end

function C:getSamplingTargets(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSamplingTargets, input, options)
end

function C:getServiceGraph(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetServiceGraph, input, options)
end

function C:getTimeSeriesServiceStatistics(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTimeSeriesServiceStatistics, input, options)
end

function C:getTraceGraph(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTraceGraph, input, options)
end

function C:getTraceSegmentDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTraceSegmentDestination, input, options)
end

function C:getTraceSummaries(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTraceSummaries, input, options)
end

function C:listResourcePolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourcePolicies, input, options)
end

function C:listRetrievedTraces(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRetrievedTraces, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putEncryptionConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutEncryptionConfig, input, options)
end

function C:putResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutResourcePolicy, input, options)
end

function C:putTelemetryRecords(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutTelemetryRecords, input, options)
end

function C:putTraceSegments(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutTraceSegments, input, options)
end

function C:startTraceRetrieval(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartTraceRetrieval, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGroup, input, options)
end

function C:updateIndexingRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIndexingRule, input, options)
end

function C:updateSamplingRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSamplingRule, input, options)
end

function C:updateTraceSegmentDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTraceSegmentDestination, input, options)
end

return M
