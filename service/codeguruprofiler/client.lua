



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("codeguruprofiler.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("codeguruprofiler.schemas")
local traits = require("smithy.traits")
local types = require("codeguruprofiler.types")
local sdk_defaults = require("aws.sdk_defaults")





























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "CodeGuruProfiler"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "codeguru-profiler", signing_region = c.region } }
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

function C:addNotificationChannels(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddNotificationChannels, input, options)
end

function C:batchGetFrameMetricData(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetFrameMetricData, input, options)
end

function C:configureAgent(input, options)
   return self:invokeOperation(schemas.Service, schemas.ConfigureAgent, input, options)
end

function C:createProfilingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProfilingGroup, input, options)
end

function C:deleteProfilingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProfilingGroup, input, options)
end

function C:describeProfilingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeProfilingGroup, input, options)
end

function C:getFindingsReportAccountSummary(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFindingsReportAccountSummary, input, options)
end

function C:getNotificationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetNotificationConfiguration, input, options)
end

function C:getPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPolicy, input, options)
end

function C:getProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetProfile, input, options)
end

function C:getRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRecommendations, input, options)
end

function C:listFindingsReports(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFindingsReports, input, options)
end

function C:listProfileTimes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProfileTimes, input, options)
end

function C:listProfilingGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProfilingGroups, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:postAgentProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.PostAgentProfile, input, options)
end

function C:putPermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutPermission, input, options)
end

function C:removeNotificationChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveNotificationChannel, input, options)
end

function C:removePermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemovePermission, input, options)
end

function C:submitFeedback(input, options)
   return self:invokeOperation(schemas.Service, schemas.SubmitFeedback, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateProfilingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProfilingGroup, input, options)
end

return M
