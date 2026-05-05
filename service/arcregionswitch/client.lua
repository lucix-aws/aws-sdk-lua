local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("arcregionswitch.endpoint_rules")
local schemas = require("arcregionswitch.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ArcRegionSwitch"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.0", service_id = cfg.service_id })
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "arc-region-switch", signing_region = cfg.region } }
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

function Client:approvePlanExecutionStep(input, options)
    return self:invokeOperation(input, {
        name = "ApprovePlanExecutionStep",
        input_schema = schemas.ApprovePlanExecutionStepInput,
        output_schema = schemas.ApprovePlanExecutionStepOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelPlanExecution(input, options)
    return self:invokeOperation(input, {
        name = "CancelPlanExecution",
        input_schema = schemas.CancelPlanExecutionInput,
        output_schema = schemas.CancelPlanExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPlan(input, options)
    return self:invokeOperation(input, {
        name = "CreatePlan",
        input_schema = schemas.CreatePlanInput,
        output_schema = schemas.CreatePlanOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePlan(input, options)
    return self:invokeOperation(input, {
        name = "DeletePlan",
        input_schema = schemas.DeletePlanInput,
        output_schema = schemas.DeletePlanOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPlan(input, options)
    return self:invokeOperation(input, {
        name = "GetPlan",
        input_schema = schemas.GetPlanInput,
        output_schema = schemas.GetPlanOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPlanEvaluationStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetPlanEvaluationStatus",
        input_schema = schemas.GetPlanEvaluationStatusInput,
        output_schema = schemas.GetPlanEvaluationStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPlanExecution(input, options)
    return self:invokeOperation(input, {
        name = "GetPlanExecution",
        input_schema = schemas.GetPlanExecutionInput,
        output_schema = schemas.GetPlanExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPlanInRegion(input, options)
    return self:invokeOperation(input, {
        name = "GetPlanInRegion",
        input_schema = schemas.GetPlanInRegionInput,
        output_schema = schemas.GetPlanInRegionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPlanExecutionEvents(input, options)
    return self:invokeOperation(input, {
        name = "ListPlanExecutionEvents",
        input_schema = schemas.ListPlanExecutionEventsInput,
        output_schema = schemas.ListPlanExecutionEventsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPlanExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListPlanExecutions",
        input_schema = schemas.ListPlanExecutionsInput,
        output_schema = schemas.ListPlanExecutionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPlans(input, options)
    return self:invokeOperation(input, {
        name = "ListPlans",
        input_schema = schemas.ListPlansInput,
        output_schema = schemas.ListPlansOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPlansInRegion(input, options)
    return self:invokeOperation(input, {
        name = "ListPlansInRegion",
        input_schema = schemas.ListPlansInRegionInput,
        output_schema = schemas.ListPlansInRegionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRoute53HealthChecks(input, options)
    return self:invokeOperation(input, {
        name = "ListRoute53HealthChecks",
        input_schema = schemas.ListRoute53HealthChecksInput,
        output_schema = schemas.ListRoute53HealthChecksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRoute53HealthChecksInRegion(input, options)
    return self:invokeOperation(input, {
        name = "ListRoute53HealthChecksInRegion",
        input_schema = schemas.ListRoute53HealthChecksInRegionInput,
        output_schema = schemas.ListRoute53HealthChecksInRegionOutput,
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

function Client:startPlanExecution(input, options)
    return self:invokeOperation(input, {
        name = "StartPlanExecution",
        input_schema = schemas.StartPlanExecutionInput,
        output_schema = schemas.StartPlanExecutionOutput,
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

function Client:updatePlan(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePlan",
        input_schema = schemas.UpdatePlanInput,
        output_schema = schemas.UpdatePlanOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePlanExecution(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePlanExecution",
        input_schema = schemas.UpdatePlanExecutionInput,
        output_schema = schemas.UpdatePlanExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePlanExecutionStep(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePlanExecutionStep",
        input_schema = schemas.UpdatePlanExecutionStepInput,
        output_schema = schemas.UpdatePlanExecutionStepOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
