



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("arcregionswitch.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("arcregionswitch.schemas")
local traits = require("smithy.traits")
local types = require("arcregionswitch.types")
local sdk_defaults = require("aws.sdk_defaults")



























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "ArcRegionSwitch"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "arc-region-switch", signing_region = c.region } }
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

function C:approvePlanExecutionStep(input, options)
   return self:invokeOperation(schemas.Service, schemas.ApprovePlanExecutionStep, input, options)
end

function C:cancelPlanExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelPlanExecution, input, options)
end

function C:createPlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePlan, input, options)
end

function C:deletePlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePlan, input, options)
end

function C:getPlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPlan, input, options)
end

function C:getPlanEvaluationStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPlanEvaluationStatus, input, options)
end

function C:getPlanExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPlanExecution, input, options)
end

function C:getPlanInRegion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPlanInRegion, input, options)
end

function C:listPlanExecutionEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPlanExecutionEvents, input, options)
end

function C:listPlanExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPlanExecutions, input, options)
end

function C:listPlans(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPlans, input, options)
end

function C:listPlansInRegion(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPlansInRegion, input, options)
end

function C:listRoute53HealthChecks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRoute53HealthChecks, input, options)
end

function C:listRoute53HealthChecksInRegion(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRoute53HealthChecksInRegion, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:startPlanExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartPlanExecution, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updatePlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePlan, input, options)
end

function C:updatePlanExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePlanExecution, input, options)
end

function C:updatePlanExecutionStep(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePlanExecutionStep, input, options)
end

return M
