local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("codepipeline.endpoint_rules")
local schemas = require("codepipeline.schemas")
local sdk_defaults = require("sdk_defaults")

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
        input_schema = schemas.AcknowledgeJobInput,
        output_schema = schemas.AcknowledgeJobOutput,
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
        input_schema = schemas.AcknowledgeThirdPartyJobInput,
        output_schema = schemas.AcknowledgeThirdPartyJobOutput,
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
        input_schema = schemas.CreateCustomActionTypeInput,
        output_schema = schemas.CreateCustomActionTypeOutput,
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
        input_schema = schemas.CreatePipelineInput,
        output_schema = schemas.CreatePipelineOutput,
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
        input_schema = schemas.DeleteCustomActionTypeInput,
        output_schema = schemas.DeleteCustomActionTypeOutput,
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
        input_schema = schemas.DeletePipelineInput,
        output_schema = schemas.DeletePipelineOutput,
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
        input_schema = schemas.DeleteWebhookInput,
        output_schema = schemas.DeleteWebhookOutput,
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
        input_schema = schemas.DeregisterWebhookWithThirdPartyInput,
        output_schema = schemas.DeregisterWebhookWithThirdPartyOutput,
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
        input_schema = schemas.DisableStageTransitionInput,
        output_schema = schemas.DisableStageTransitionOutput,
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
        input_schema = schemas.EnableStageTransitionInput,
        output_schema = schemas.EnableStageTransitionOutput,
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
        input_schema = schemas.GetActionTypeInput,
        output_schema = schemas.GetActionTypeOutput,
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
        input_schema = schemas.GetJobDetailsInput,
        output_schema = schemas.GetJobDetailsOutput,
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
        input_schema = schemas.GetPipelineInput,
        output_schema = schemas.GetPipelineOutput,
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
        input_schema = schemas.GetPipelineExecutionInput,
        output_schema = schemas.GetPipelineExecutionOutput,
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
        input_schema = schemas.GetPipelineStateInput,
        output_schema = schemas.GetPipelineStateOutput,
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
        input_schema = schemas.GetThirdPartyJobDetailsInput,
        output_schema = schemas.GetThirdPartyJobDetailsOutput,
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
        input_schema = schemas.ListActionExecutionsInput,
        output_schema = schemas.ListActionExecutionsOutput,
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
        input_schema = schemas.ListActionTypesInput,
        output_schema = schemas.ListActionTypesOutput,
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
        input_schema = schemas.ListDeployActionExecutionTargetsInput,
        output_schema = schemas.ListDeployActionExecutionTargetsOutput,
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
        input_schema = schemas.ListPipelineExecutionsInput,
        output_schema = schemas.ListPipelineExecutionsOutput,
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
        input_schema = schemas.ListPipelinesInput,
        output_schema = schemas.ListPipelinesOutput,
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
        input_schema = schemas.ListRuleExecutionsInput,
        output_schema = schemas.ListRuleExecutionsOutput,
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
        input_schema = schemas.ListRuleTypesInput,
        output_schema = schemas.ListRuleTypesOutput,
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
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
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
        input_schema = schemas.ListWebhooksInput,
        output_schema = schemas.ListWebhooksOutput,
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
        input_schema = schemas.OverrideStageConditionInput,
        output_schema = schemas.OverrideStageConditionOutput,
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
        input_schema = schemas.PollForJobsInput,
        output_schema = schemas.PollForJobsOutput,
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
        input_schema = schemas.PollForThirdPartyJobsInput,
        output_schema = schemas.PollForThirdPartyJobsOutput,
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
        input_schema = schemas.PutActionRevisionInput,
        output_schema = schemas.PutActionRevisionOutput,
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
        input_schema = schemas.PutApprovalResultInput,
        output_schema = schemas.PutApprovalResultOutput,
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
        input_schema = schemas.PutJobFailureResultInput,
        output_schema = schemas.PutJobFailureResultOutput,
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
        input_schema = schemas.PutJobSuccessResultInput,
        output_schema = schemas.PutJobSuccessResultOutput,
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
        input_schema = schemas.PutThirdPartyJobFailureResultInput,
        output_schema = schemas.PutThirdPartyJobFailureResultOutput,
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
        input_schema = schemas.PutThirdPartyJobSuccessResultInput,
        output_schema = schemas.PutThirdPartyJobSuccessResultOutput,
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
        input_schema = schemas.PutWebhookInput,
        output_schema = schemas.PutWebhookOutput,
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
        input_schema = schemas.RegisterWebhookWithThirdPartyInput,
        output_schema = schemas.RegisterWebhookWithThirdPartyOutput,
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
        input_schema = schemas.RetryStageExecutionInput,
        output_schema = schemas.RetryStageExecutionOutput,
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
        input_schema = schemas.RollbackStageInput,
        output_schema = schemas.RollbackStageOutput,
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
        input_schema = schemas.StartPipelineExecutionInput,
        output_schema = schemas.StartPipelineExecutionOutput,
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
        input_schema = schemas.StopPipelineExecutionInput,
        output_schema = schemas.StopPipelineExecutionOutput,
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
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
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
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
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
        input_schema = schemas.UpdateActionTypeInput,
        output_schema = schemas.UpdateActionTypeOutput,
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
        input_schema = schemas.UpdatePipelineInput,
        output_schema = schemas.UpdatePipelineOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
