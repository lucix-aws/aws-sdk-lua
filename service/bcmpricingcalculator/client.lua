



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("bcmpricingcalculator.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("bcmpricingcalculator.schemas")
local traits = require("smithy.traits")
local types = require("bcmpricingcalculator.types")
local sdk_defaults = require("aws.sdk_defaults")










































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSBCMPricingCalculator"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "bcm-pricing-calculator", signing_region = c.region } }
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

function C:batchCreateBillScenarioCommitmentModification(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchCreateBillScenarioCommitmentModification, input, options)
end

function C:batchCreateBillScenarioUsageModification(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchCreateBillScenarioUsageModification, input, options)
end

function C:batchCreateWorkloadEstimateUsage(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchCreateWorkloadEstimateUsage, input, options)
end

function C:batchDeleteBillScenarioCommitmentModification(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeleteBillScenarioCommitmentModification, input, options)
end

function C:batchDeleteBillScenarioUsageModification(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeleteBillScenarioUsageModification, input, options)
end

function C:batchDeleteWorkloadEstimateUsage(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeleteWorkloadEstimateUsage, input, options)
end

function C:batchUpdateBillScenarioCommitmentModification(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchUpdateBillScenarioCommitmentModification, input, options)
end

function C:batchUpdateBillScenarioUsageModification(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchUpdateBillScenarioUsageModification, input, options)
end

function C:batchUpdateWorkloadEstimateUsage(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchUpdateWorkloadEstimateUsage, input, options)
end

function C:createBillEstimate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBillEstimate, input, options)
end

function C:createBillScenario(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBillScenario, input, options)
end

function C:createWorkloadEstimate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWorkloadEstimate, input, options)
end

function C:deleteBillEstimate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBillEstimate, input, options)
end

function C:deleteBillScenario(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBillScenario, input, options)
end

function C:deleteWorkloadEstimate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWorkloadEstimate, input, options)
end

function C:getBillEstimate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBillEstimate, input, options)
end

function C:getBillScenario(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBillScenario, input, options)
end

function C:getPreferences(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPreferences, input, options)
end

function C:getWorkloadEstimate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWorkloadEstimate, input, options)
end

function C:listBillEstimateCommitments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBillEstimateCommitments, input, options)
end

function C:listBillEstimateInputCommitmentModifications(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBillEstimateInputCommitmentModifications, input, options)
end

function C:listBillEstimateInputUsageModifications(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBillEstimateInputUsageModifications, input, options)
end

function C:listBillEstimateLineItems(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBillEstimateLineItems, input, options)
end

function C:listBillEstimates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBillEstimates, input, options)
end

function C:listBillScenarioCommitmentModifications(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBillScenarioCommitmentModifications, input, options)
end

function C:listBillScenarios(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBillScenarios, input, options)
end

function C:listBillScenarioUsageModifications(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBillScenarioUsageModifications, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listWorkloadEstimates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkloadEstimates, input, options)
end

function C:listWorkloadEstimateUsage(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkloadEstimateUsage, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateBillEstimate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBillEstimate, input, options)
end

function C:updateBillScenario(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBillScenario, input, options)
end

function C:updatePreferences(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePreferences, input, options)
end

function C:updateWorkloadEstimate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWorkloadEstimate, input, options)
end

return M
