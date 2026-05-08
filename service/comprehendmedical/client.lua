



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("comprehendmedical.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("comprehendmedical.schemas")
local traits = require("smithy.traits")
local types = require("comprehendmedical.types")
local sdk_defaults = require("aws.sdk_defaults")
































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "ComprehendMedical_20181030"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.1", service_id = c.service_id }) end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "comprehendmedical", signing_region = c.region } }
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

function C:describeEntitiesDetectionV2Job(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEntitiesDetectionV2Job, input, options)
end

function C:describeICD10CMInferenceJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeICD10CMInferenceJob, input, options)
end

function C:describePHIDetectionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePHIDetectionJob, input, options)
end

function C:describeRxNormInferenceJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRxNormInferenceJob, input, options)
end

function C:describeSNOMEDCTInferenceJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSNOMEDCTInferenceJob, input, options)
end

function C:detectEntities(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetectEntities, input, options)
end

function C:detectEntitiesV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetectEntitiesV2, input, options)
end

function C:detectPHI(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetectPHI, input, options)
end

function C:inferICD10CM(input, options)
   return self:invokeOperation(schemas.Service, schemas.InferICD10CM, input, options)
end

function C:inferRxNorm(input, options)
   return self:invokeOperation(schemas.Service, schemas.InferRxNorm, input, options)
end

function C:inferSNOMEDCT(input, options)
   return self:invokeOperation(schemas.Service, schemas.InferSNOMEDCT, input, options)
end

function C:listEntitiesDetectionV2Jobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEntitiesDetectionV2Jobs, input, options)
end

function C:listICD10CMInferenceJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListICD10CMInferenceJobs, input, options)
end

function C:listPHIDetectionJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPHIDetectionJobs, input, options)
end

function C:listRxNormInferenceJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRxNormInferenceJobs, input, options)
end

function C:listSNOMEDCTInferenceJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSNOMEDCTInferenceJobs, input, options)
end

function C:startEntitiesDetectionV2Job(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartEntitiesDetectionV2Job, input, options)
end

function C:startICD10CMInferenceJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartICD10CMInferenceJob, input, options)
end

function C:startPHIDetectionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartPHIDetectionJob, input, options)
end

function C:startRxNormInferenceJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartRxNormInferenceJob, input, options)
end

function C:startSNOMEDCTInferenceJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartSNOMEDCTInferenceJob, input, options)
end

function C:stopEntitiesDetectionV2Job(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopEntitiesDetectionV2Job, input, options)
end

function C:stopICD10CMInferenceJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopICD10CMInferenceJob, input, options)
end

function C:stopPHIDetectionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopPHIDetectionJob, input, options)
end

function C:stopRxNormInferenceJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopRxNormInferenceJob, input, options)
end

function C:stopSNOMEDCTInferenceJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopSNOMEDCTInferenceJob, input, options)
end

return M
