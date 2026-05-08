



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("observabilityadmin.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("observabilityadmin.schemas")
local traits = require("smithy.traits")
local types = require("observabilityadmin.types")
local sdk_defaults = require("aws.sdk_defaults")














































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "ObservabilityAdmin"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "observabilityadmin", signing_region = c.region } }
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

function C:createCentralizationRuleForOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCentralizationRuleForOrganization, input, options)
end

function C:createS3TableIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateS3TableIntegration, input, options)
end

function C:createTelemetryPipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTelemetryPipeline, input, options)
end

function C:createTelemetryRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTelemetryRule, input, options)
end

function C:createTelemetryRuleForOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTelemetryRuleForOrganization, input, options)
end

function C:deleteCentralizationRuleForOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCentralizationRuleForOrganization, input, options)
end

function C:deleteS3TableIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteS3TableIntegration, input, options)
end

function C:deleteTelemetryPipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTelemetryPipeline, input, options)
end

function C:deleteTelemetryRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTelemetryRule, input, options)
end

function C:deleteTelemetryRuleForOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTelemetryRuleForOrganization, input, options)
end

function C:getCentralizationRuleForOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCentralizationRuleForOrganization, input, options)
end

function C:getS3TableIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetS3TableIntegration, input, options)
end

function C:getTelemetryEnrichmentStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTelemetryEnrichmentStatus, input, options)
end

function C:getTelemetryEvaluationStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTelemetryEvaluationStatus, input, options)
end

function C:getTelemetryEvaluationStatusForOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTelemetryEvaluationStatusForOrganization, input, options)
end

function C:getTelemetryPipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTelemetryPipeline, input, options)
end

function C:getTelemetryRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTelemetryRule, input, options)
end

function C:getTelemetryRuleForOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTelemetryRuleForOrganization, input, options)
end

function C:listCentralizationRulesForOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCentralizationRulesForOrganization, input, options)
end

function C:listResourceTelemetry(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourceTelemetry, input, options)
end

function C:listResourceTelemetryForOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourceTelemetryForOrganization, input, options)
end

function C:listS3TableIntegrations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListS3TableIntegrations, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTelemetryPipelines(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTelemetryPipelines, input, options)
end

function C:listTelemetryRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTelemetryRules, input, options)
end

function C:listTelemetryRulesForOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTelemetryRulesForOrganization, input, options)
end

function C:startTelemetryEnrichment(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartTelemetryEnrichment, input, options)
end

function C:startTelemetryEvaluation(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartTelemetryEvaluation, input, options)
end

function C:startTelemetryEvaluationForOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartTelemetryEvaluationForOrganization, input, options)
end

function C:stopTelemetryEnrichment(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopTelemetryEnrichment, input, options)
end

function C:stopTelemetryEvaluation(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopTelemetryEvaluation, input, options)
end

function C:stopTelemetryEvaluationForOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopTelemetryEvaluationForOrganization, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:testTelemetryPipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.TestTelemetryPipeline, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateCentralizationRuleForOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCentralizationRuleForOrganization, input, options)
end

function C:updateTelemetryPipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTelemetryPipeline, input, options)
end

function C:updateTelemetryRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTelemetryRule, input, options)
end

function C:updateTelemetryRuleForOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTelemetryRuleForOrganization, input, options)
end

function C:validateTelemetryPipelineConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.ValidateTelemetryPipelineConfiguration, input, options)
end

return M
