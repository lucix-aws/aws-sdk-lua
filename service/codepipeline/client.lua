



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("codepipeline.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("codepipeline.schemas")
local traits = require("smithy.traits")
local types = require("codepipeline.types")
local sdk_defaults = require("aws.sdk_defaults")


















































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "CodePipeline_20150709"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "codepipeline", signing_region = c.region } }
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

function C:acknowledgeJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcknowledgeJob, input, options)
end

function C:acknowledgeThirdPartyJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcknowledgeThirdPartyJob, input, options)
end

function C:createCustomActionType(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCustomActionType, input, options)
end

function C:createPipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePipeline, input, options)
end

function C:deleteCustomActionType(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCustomActionType, input, options)
end

function C:deletePipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePipeline, input, options)
end

function C:deleteWebhook(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWebhook, input, options)
end

function C:deregisterWebhookWithThirdParty(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterWebhookWithThirdParty, input, options)
end

function C:disableStageTransition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableStageTransition, input, options)
end

function C:enableStageTransition(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableStageTransition, input, options)
end

function C:getActionType(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetActionType, input, options)
end

function C:getJobDetails(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetJobDetails, input, options)
end

function C:getPipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPipeline, input, options)
end

function C:getPipelineExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPipelineExecution, input, options)
end

function C:getPipelineState(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPipelineState, input, options)
end

function C:getThirdPartyJobDetails(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetThirdPartyJobDetails, input, options)
end

function C:listActionExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListActionExecutions, input, options)
end

function C:listActionTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListActionTypes, input, options)
end

function C:listDeployActionExecutionTargets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDeployActionExecutionTargets, input, options)
end

function C:listPipelineExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPipelineExecutions, input, options)
end

function C:listPipelines(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPipelines, input, options)
end

function C:listRuleExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRuleExecutions, input, options)
end

function C:listRuleTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRuleTypes, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listWebhooks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWebhooks, input, options)
end

function C:overrideStageCondition(input, options)
   return self:invokeOperation(schemas.Service, schemas.OverrideStageCondition, input, options)
end

function C:pollForJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.PollForJobs, input, options)
end

function C:pollForThirdPartyJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.PollForThirdPartyJobs, input, options)
end

function C:putActionRevision(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutActionRevision, input, options)
end

function C:putApprovalResult(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutApprovalResult, input, options)
end

function C:putJobFailureResult(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutJobFailureResult, input, options)
end

function C:putJobSuccessResult(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutJobSuccessResult, input, options)
end

function C:putThirdPartyJobFailureResult(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutThirdPartyJobFailureResult, input, options)
end

function C:putThirdPartyJobSuccessResult(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutThirdPartyJobSuccessResult, input, options)
end

function C:putWebhook(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutWebhook, input, options)
end

function C:registerWebhookWithThirdParty(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterWebhookWithThirdParty, input, options)
end

function C:retryStageExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.RetryStageExecution, input, options)
end

function C:rollbackStage(input, options)
   return self:invokeOperation(schemas.Service, schemas.RollbackStage, input, options)
end

function C:startPipelineExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartPipelineExecution, input, options)
end

function C:stopPipelineExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopPipelineExecution, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateActionType(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateActionType, input, options)
end

function C:updatePipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePipeline, input, options)
end

return M
