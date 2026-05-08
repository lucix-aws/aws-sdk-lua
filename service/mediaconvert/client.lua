



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("mediaconvert.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("mediaconvert.schemas")
local traits = require("smithy.traits")
local types = require("mediaconvert.types")
local sdk_defaults = require("aws.sdk_defaults")








































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "MediaConvert"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "mediaconvert", signing_region = c.region } }
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

function C:associateCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateCertificate, input, options)
end

function C:cancelJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelJob, input, options)
end

function C:createJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateJob, input, options)
end

function C:createJobTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateJobTemplate, input, options)
end

function C:createPreset(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePreset, input, options)
end

function C:createQueue(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateQueue, input, options)
end

function C:createResourceShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateResourceShare, input, options)
end

function C:deleteJobTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteJobTemplate, input, options)
end

function C:deletePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePolicy, input, options)
end

function C:deletePreset(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePreset, input, options)
end

function C:deleteQueue(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteQueue, input, options)
end

function C:describeEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEndpoints, input, options)
end

function C:disassociateCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateCertificate, input, options)
end

function C:getJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetJob, input, options)
end

function C:getJobsQueryResults(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetJobsQueryResults, input, options)
end

function C:getJobTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetJobTemplate, input, options)
end

function C:getPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPolicy, input, options)
end

function C:getPreset(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPreset, input, options)
end

function C:getQueue(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetQueue, input, options)
end

function C:listJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListJobs, input, options)
end

function C:listJobTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListJobTemplates, input, options)
end

function C:listPresets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPresets, input, options)
end

function C:listQueues(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListQueues, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVersions, input, options)
end

function C:probe(input, options)
   return self:invokeOperation(schemas.Service, schemas.Probe, input, options)
end

function C:putPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutPolicy, input, options)
end

function C:searchJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchJobs, input, options)
end

function C:startJobsQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartJobsQuery, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateJobTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateJobTemplate, input, options)
end

function C:updatePreset(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePreset, input, options)
end

function C:updateQueue(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateQueue, input, options)
end

return M
