local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("codepipeline.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("codepipeline.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "CodePipeline_20150709"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    if not cfg.auth_scheme_resolver then
        cfg.auth_scheme_resolver = function(operation)
            local options = {}
            for _, scheme_id in ipairs(operation.effective_auth_schemes) do
                if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "codepipeline", signing_region = cfg.region } }
                else
                    options[#options + 1] = { scheme_id = scheme_id }
                end
            end
            return options
        end
    end
    defaults.resolve_auth_schemes(cfg)
    defaults.resolve_identity_resolvers(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:acknowledgeJob(input, options)
    return self:invokeOperation(input, {
        name = "AcknowledgeJob",
        input_schema = types.AcknowledgeJobInput,
        output_schema = types.AcknowledgeJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:acknowledgeThirdPartyJob(input, options)
    return self:invokeOperation(input, {
        name = "AcknowledgeThirdPartyJob",
        input_schema = types.AcknowledgeThirdPartyJobInput,
        output_schema = types.AcknowledgeThirdPartyJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCustomActionType(input, options)
    return self:invokeOperation(input, {
        name = "CreateCustomActionType",
        input_schema = types.CreateCustomActionTypeInput,
        output_schema = types.CreateCustomActionTypeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPipeline(input, options)
    return self:invokeOperation(input, {
        name = "CreatePipeline",
        input_schema = types.CreatePipelineInput,
        output_schema = types.CreatePipelineOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCustomActionType(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCustomActionType",
        input_schema = types.DeleteCustomActionTypeInput,
        output_schema = types.DeleteCustomActionTypeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePipeline(input, options)
    return self:invokeOperation(input, {
        name = "DeletePipeline",
        input_schema = types.DeletePipelineInput,
        output_schema = types.DeletePipelineOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWebhook(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWebhook",
        input_schema = types.DeleteWebhookInput,
        output_schema = types.DeleteWebhookOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterWebhookWithThirdParty(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterWebhookWithThirdParty",
        input_schema = types.DeregisterWebhookWithThirdPartyInput,
        output_schema = types.DeregisterWebhookWithThirdPartyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableStageTransition(input, options)
    return self:invokeOperation(input, {
        name = "DisableStageTransition",
        input_schema = types.DisableStageTransitionInput,
        output_schema = types.DisableStageTransitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableStageTransition(input, options)
    return self:invokeOperation(input, {
        name = "EnableStageTransition",
        input_schema = types.EnableStageTransitionInput,
        output_schema = types.EnableStageTransitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getActionType(input, options)
    return self:invokeOperation(input, {
        name = "GetActionType",
        input_schema = types.GetActionTypeInput,
        output_schema = types.GetActionTypeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getJobDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetJobDetails",
        input_schema = types.GetJobDetailsInput,
        output_schema = types.GetJobDetailsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPipeline(input, options)
    return self:invokeOperation(input, {
        name = "GetPipeline",
        input_schema = types.GetPipelineInput,
        output_schema = types.GetPipelineOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPipelineExecution(input, options)
    return self:invokeOperation(input, {
        name = "GetPipelineExecution",
        input_schema = types.GetPipelineExecutionInput,
        output_schema = types.GetPipelineExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPipelineState(input, options)
    return self:invokeOperation(input, {
        name = "GetPipelineState",
        input_schema = types.GetPipelineStateInput,
        output_schema = types.GetPipelineStateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getThirdPartyJobDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetThirdPartyJobDetails",
        input_schema = types.GetThirdPartyJobDetailsInput,
        output_schema = types.GetThirdPartyJobDetailsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listActionExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListActionExecutions",
        input_schema = types.ListActionExecutionsInput,
        output_schema = types.ListActionExecutionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listActionTypes(input, options)
    return self:invokeOperation(input, {
        name = "ListActionTypes",
        input_schema = types.ListActionTypesInput,
        output_schema = types.ListActionTypesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDeployActionExecutionTargets(input, options)
    return self:invokeOperation(input, {
        name = "ListDeployActionExecutionTargets",
        input_schema = types.ListDeployActionExecutionTargetsInput,
        output_schema = types.ListDeployActionExecutionTargetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPipelineExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListPipelineExecutions",
        input_schema = types.ListPipelineExecutionsInput,
        output_schema = types.ListPipelineExecutionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPipelines(input, options)
    return self:invokeOperation(input, {
        name = "ListPipelines",
        input_schema = types.ListPipelinesInput,
        output_schema = types.ListPipelinesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRuleExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListRuleExecutions",
        input_schema = types.ListRuleExecutionsInput,
        output_schema = types.ListRuleExecutionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRuleTypes(input, options)
    return self:invokeOperation(input, {
        name = "ListRuleTypes",
        input_schema = types.ListRuleTypesInput,
        output_schema = types.ListRuleTypesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWebhooks(input, options)
    return self:invokeOperation(input, {
        name = "ListWebhooks",
        input_schema = types.ListWebhooksInput,
        output_schema = types.ListWebhooksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:overrideStageCondition(input, options)
    return self:invokeOperation(input, {
        name = "OverrideStageCondition",
        input_schema = types.OverrideStageConditionInput,
        output_schema = types.OverrideStageConditionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:pollForJobs(input, options)
    return self:invokeOperation(input, {
        name = "PollForJobs",
        input_schema = types.PollForJobsInput,
        output_schema = types.PollForJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:pollForThirdPartyJobs(input, options)
    return self:invokeOperation(input, {
        name = "PollForThirdPartyJobs",
        input_schema = types.PollForThirdPartyJobsInput,
        output_schema = types.PollForThirdPartyJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putActionRevision(input, options)
    return self:invokeOperation(input, {
        name = "PutActionRevision",
        input_schema = types.PutActionRevisionInput,
        output_schema = types.PutActionRevisionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putApprovalResult(input, options)
    return self:invokeOperation(input, {
        name = "PutApprovalResult",
        input_schema = types.PutApprovalResultInput,
        output_schema = types.PutApprovalResultOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putJobFailureResult(input, options)
    return self:invokeOperation(input, {
        name = "PutJobFailureResult",
        input_schema = types.PutJobFailureResultInput,
        output_schema = types.PutJobFailureResultOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putJobSuccessResult(input, options)
    return self:invokeOperation(input, {
        name = "PutJobSuccessResult",
        input_schema = types.PutJobSuccessResultInput,
        output_schema = types.PutJobSuccessResultOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putThirdPartyJobFailureResult(input, options)
    return self:invokeOperation(input, {
        name = "PutThirdPartyJobFailureResult",
        input_schema = types.PutThirdPartyJobFailureResultInput,
        output_schema = types.PutThirdPartyJobFailureResultOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putThirdPartyJobSuccessResult(input, options)
    return self:invokeOperation(input, {
        name = "PutThirdPartyJobSuccessResult",
        input_schema = types.PutThirdPartyJobSuccessResultInput,
        output_schema = types.PutThirdPartyJobSuccessResultOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putWebhook(input, options)
    return self:invokeOperation(input, {
        name = "PutWebhook",
        input_schema = types.PutWebhookInput,
        output_schema = types.PutWebhookOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerWebhookWithThirdParty(input, options)
    return self:invokeOperation(input, {
        name = "RegisterWebhookWithThirdParty",
        input_schema = types.RegisterWebhookWithThirdPartyInput,
        output_schema = types.RegisterWebhookWithThirdPartyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:retryStageExecution(input, options)
    return self:invokeOperation(input, {
        name = "RetryStageExecution",
        input_schema = types.RetryStageExecutionInput,
        output_schema = types.RetryStageExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rollbackStage(input, options)
    return self:invokeOperation(input, {
        name = "RollbackStage",
        input_schema = types.RollbackStageInput,
        output_schema = types.RollbackStageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startPipelineExecution(input, options)
    return self:invokeOperation(input, {
        name = "StartPipelineExecution",
        input_schema = types.StartPipelineExecutionInput,
        output_schema = types.StartPipelineExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopPipelineExecution(input, options)
    return self:invokeOperation(input, {
        name = "StopPipelineExecution",
        input_schema = types.StopPipelineExecutionInput,
        output_schema = types.StopPipelineExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateActionType(input, options)
    return self:invokeOperation(input, {
        name = "UpdateActionType",
        input_schema = types.UpdateActionTypeInput,
        output_schema = types.UpdateActionTypeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePipeline(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePipeline",
        input_schema = types.UpdatePipelineInput,
        output_schema = types.UpdatePipelineOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
