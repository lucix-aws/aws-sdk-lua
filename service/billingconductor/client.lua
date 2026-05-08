



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("billingconductor.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("billingconductor.schemas")
local traits = require("smithy.traits")
local types = require("billingconductor.types")
local sdk_defaults = require("aws.sdk_defaults")






































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSBillingConductor"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "billingconductor", signing_region = c.region } }
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

function C:associatePricingRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociatePricingRules, input, options)
end

function C:batchAssociateResourcesToCustomLineItem(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchAssociateResourcesToCustomLineItem, input, options)
end

function C:batchDisassociateResourcesFromCustomLineItem(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDisassociateResourcesFromCustomLineItem, input, options)
end

function C:createBillingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBillingGroup, input, options)
end

function C:createCustomLineItem(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCustomLineItem, input, options)
end

function C:createPricingPlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePricingPlan, input, options)
end

function C:createPricingRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePricingRule, input, options)
end

function C:deleteBillingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBillingGroup, input, options)
end

function C:deleteCustomLineItem(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCustomLineItem, input, options)
end

function C:deletePricingPlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePricingPlan, input, options)
end

function C:deletePricingRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePricingRule, input, options)
end

function C:disassociateAccounts(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateAccounts, input, options)
end

function C:disassociatePricingRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociatePricingRules, input, options)
end

function C:getBillingGroupCostReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBillingGroupCostReport, input, options)
end

function C:listAccountAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccountAssociations, input, options)
end

function C:listBillingGroupCostReports(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBillingGroupCostReports, input, options)
end

function C:listBillingGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBillingGroups, input, options)
end

function C:listCustomLineItems(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCustomLineItems, input, options)
end

function C:listCustomLineItemVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCustomLineItemVersions, input, options)
end

function C:listPricingPlans(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPricingPlans, input, options)
end

function C:listPricingPlansAssociatedWithPricingRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPricingPlansAssociatedWithPricingRule, input, options)
end

function C:listPricingRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPricingRules, input, options)
end

function C:listPricingRulesAssociatedToPricingPlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPricingRulesAssociatedToPricingPlan, input, options)
end

function C:listResourcesAssociatedToCustomLineItem(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourcesAssociatedToCustomLineItem, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateBillingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBillingGroup, input, options)
end

function C:updateCustomLineItem(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCustomLineItem, input, options)
end

function C:updatePricingPlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePricingPlan, input, options)
end

function C:updatePricingRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePricingRule, input, options)
end

return M
