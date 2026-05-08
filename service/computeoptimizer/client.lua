



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("computeoptimizer.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("computeoptimizer.schemas")
local traits = require("smithy.traits")
local types = require("computeoptimizer.types")
local sdk_defaults = require("aws.sdk_defaults")


































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "ComputeOptimizerService"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.0", service_id = c.service_id }) end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "compute-optimizer", signing_region = c.region } }
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

function C:deleteRecommendationPreferences(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRecommendationPreferences, input, options)
end

function C:describeRecommendationExportJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRecommendationExportJobs, input, options)
end

function C:exportAutoScalingGroupRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExportAutoScalingGroupRecommendations, input, options)
end

function C:exportEBSVolumeRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExportEBSVolumeRecommendations, input, options)
end

function C:exportEC2InstanceRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExportEC2InstanceRecommendations, input, options)
end

function C:exportECSServiceRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExportECSServiceRecommendations, input, options)
end

function C:exportIdleRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExportIdleRecommendations, input, options)
end

function C:exportLambdaFunctionRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExportLambdaFunctionRecommendations, input, options)
end

function C:exportLicenseRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExportLicenseRecommendations, input, options)
end

function C:exportRDSDatabaseRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExportRDSDatabaseRecommendations, input, options)
end

function C:getAutoScalingGroupRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAutoScalingGroupRecommendations, input, options)
end

function C:getEBSVolumeRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEBSVolumeRecommendations, input, options)
end

function C:getEC2InstanceRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEC2InstanceRecommendations, input, options)
end

function C:getEC2RecommendationProjectedMetrics(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEC2RecommendationProjectedMetrics, input, options)
end

function C:getECSServiceRecommendationProjectedMetrics(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetECSServiceRecommendationProjectedMetrics, input, options)
end

function C:getECSServiceRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetECSServiceRecommendations, input, options)
end

function C:getEffectiveRecommendationPreferences(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEffectiveRecommendationPreferences, input, options)
end

function C:getEnrollmentStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEnrollmentStatus, input, options)
end

function C:getEnrollmentStatusesForOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEnrollmentStatusesForOrganization, input, options)
end

function C:getIdleRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIdleRecommendations, input, options)
end

function C:getLambdaFunctionRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLambdaFunctionRecommendations, input, options)
end

function C:getLicenseRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLicenseRecommendations, input, options)
end

function C:getRDSDatabaseRecommendationProjectedMetrics(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRDSDatabaseRecommendationProjectedMetrics, input, options)
end

function C:getRDSDatabaseRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRDSDatabaseRecommendations, input, options)
end

function C:getRecommendationPreferences(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRecommendationPreferences, input, options)
end

function C:getRecommendationSummaries(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRecommendationSummaries, input, options)
end

function C:putRecommendationPreferences(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutRecommendationPreferences, input, options)
end

function C:updateEnrollmentStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEnrollmentStatus, input, options)
end

return M
