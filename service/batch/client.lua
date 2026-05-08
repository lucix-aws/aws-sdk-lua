



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("batch.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("batch.schemas")
local traits = require("smithy.traits")
local types = require("batch.types")
local sdk_defaults = require("aws.sdk_defaults")



















































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSBatchV20160810"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "batch", signing_region = c.region } }
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

function C:cancelJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelJob, input, options)
end

function C:createComputeEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateComputeEnvironment, input, options)
end

function C:createConsumableResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConsumableResource, input, options)
end

function C:createJobQueue(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateJobQueue, input, options)
end

function C:createQuotaShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateQuotaShare, input, options)
end

function C:createSchedulingPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSchedulingPolicy, input, options)
end

function C:createServiceEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateServiceEnvironment, input, options)
end

function C:deleteComputeEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteComputeEnvironment, input, options)
end

function C:deleteConsumableResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConsumableResource, input, options)
end

function C:deleteJobQueue(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteJobQueue, input, options)
end

function C:deleteQuotaShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteQuotaShare, input, options)
end

function C:deleteSchedulingPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSchedulingPolicy, input, options)
end

function C:deleteServiceEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteServiceEnvironment, input, options)
end

function C:deregisterJobDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterJobDefinition, input, options)
end

function C:describeComputeEnvironments(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeComputeEnvironments, input, options)
end

function C:describeConsumableResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConsumableResource, input, options)
end

function C:describeJobDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeJobDefinitions, input, options)
end

function C:describeJobQueues(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeJobQueues, input, options)
end

function C:describeJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeJobs, input, options)
end

function C:describeQuotaShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeQuotaShare, input, options)
end

function C:describeSchedulingPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSchedulingPolicies, input, options)
end

function C:describeServiceEnvironments(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeServiceEnvironments, input, options)
end

function C:describeServiceJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeServiceJob, input, options)
end

function C:getJobQueueSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetJobQueueSnapshot, input, options)
end

function C:listConsumableResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConsumableResources, input, options)
end

function C:listJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListJobs, input, options)
end

function C:listJobsByConsumableResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListJobsByConsumableResource, input, options)
end

function C:listQuotaShares(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListQuotaShares, input, options)
end

function C:listSchedulingPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSchedulingPolicies, input, options)
end

function C:listServiceJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServiceJobs, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:registerJobDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterJobDefinition, input, options)
end

function C:submitJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.SubmitJob, input, options)
end

function C:submitServiceJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.SubmitServiceJob, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:terminateJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.TerminateJob, input, options)
end

function C:terminateServiceJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.TerminateServiceJob, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateComputeEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateComputeEnvironment, input, options)
end

function C:updateConsumableResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConsumableResource, input, options)
end

function C:updateJobQueue(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateJobQueue, input, options)
end

function C:updateQuotaShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateQuotaShare, input, options)
end

function C:updateSchedulingPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSchedulingPolicy, input, options)
end

function C:updateServiceEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateServiceEnvironment, input, options)
end

function C:updateServiceJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateServiceJob, input, options)
end

return M
