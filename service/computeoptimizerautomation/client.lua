



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("computeoptimizerautomation.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("computeoptimizerautomation.schemas")
local traits = require("smithy.traits")
local types = require("computeoptimizerautomation.types")
local sdk_defaults = require("aws.sdk_defaults")





























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "ComputeOptimizerAutomationService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "aco-automation", signing_region = c.region } }
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

function C:associateAccounts(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateAccounts, input, options)
end

function C:createAutomationRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAutomationRule, input, options)
end

function C:deleteAutomationRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAutomationRule, input, options)
end

function C:disassociateAccounts(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateAccounts, input, options)
end

function C:getAutomationEvent(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAutomationEvent, input, options)
end

function C:getAutomationRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAutomationRule, input, options)
end

function C:getEnrollmentConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEnrollmentConfiguration, input, options)
end

function C:listAccounts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccounts, input, options)
end

function C:listAutomationEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAutomationEvents, input, options)
end

function C:listAutomationEventSteps(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAutomationEventSteps, input, options)
end

function C:listAutomationEventSummaries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAutomationEventSummaries, input, options)
end

function C:listAutomationRulePreview(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAutomationRulePreview, input, options)
end

function C:listAutomationRulePreviewSummaries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAutomationRulePreviewSummaries, input, options)
end

function C:listAutomationRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAutomationRules, input, options)
end

function C:listRecommendedActions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRecommendedActions, input, options)
end

function C:listRecommendedActionSummaries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRecommendedActionSummaries, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:rollbackAutomationEvent(input, options)
   return self:invokeOperation(schemas.Service, schemas.RollbackAutomationEvent, input, options)
end

function C:startAutomationEvent(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartAutomationEvent, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAutomationRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAutomationRule, input, options)
end

function C:updateEnrollmentConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEnrollmentConfiguration, input, options)
end

return M
