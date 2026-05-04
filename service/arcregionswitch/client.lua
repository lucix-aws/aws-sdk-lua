local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("arcregionswitch.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("arcregionswitch.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ArcRegionSwitch"
    cfg.signing_name = "arcregionswitch"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.0")
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:approvePlanExecutionStep(input, options)
    return self:invokeOperation(input, {
        name = "ApprovePlanExecutionStep",
        input_schema = types.ApprovePlanExecutionStepInput,
        output_schema = types.ApprovePlanExecutionStepOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:cancelPlanExecution(input, options)
    return self:invokeOperation(input, {
        name = "CancelPlanExecution",
        input_schema = types.CancelPlanExecutionInput,
        output_schema = types.CancelPlanExecutionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createPlan(input, options)
    return self:invokeOperation(input, {
        name = "CreatePlan",
        input_schema = types.CreatePlanInput,
        output_schema = types.CreatePlanOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deletePlan(input, options)
    return self:invokeOperation(input, {
        name = "DeletePlan",
        input_schema = types.DeletePlanInput,
        output_schema = types.DeletePlanOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getPlan(input, options)
    return self:invokeOperation(input, {
        name = "GetPlan",
        input_schema = types.GetPlanInput,
        output_schema = types.GetPlanOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getPlanEvaluationStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetPlanEvaluationStatus",
        input_schema = types.GetPlanEvaluationStatusInput,
        output_schema = types.GetPlanEvaluationStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getPlanExecution(input, options)
    return self:invokeOperation(input, {
        name = "GetPlanExecution",
        input_schema = types.GetPlanExecutionInput,
        output_schema = types.GetPlanExecutionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getPlanInRegion(input, options)
    return self:invokeOperation(input, {
        name = "GetPlanInRegion",
        input_schema = types.GetPlanInRegionInput,
        output_schema = types.GetPlanInRegionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listPlanExecutionEvents(input, options)
    return self:invokeOperation(input, {
        name = "ListPlanExecutionEvents",
        input_schema = types.ListPlanExecutionEventsInput,
        output_schema = types.ListPlanExecutionEventsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listPlanExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListPlanExecutions",
        input_schema = types.ListPlanExecutionsInput,
        output_schema = types.ListPlanExecutionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listPlans(input, options)
    return self:invokeOperation(input, {
        name = "ListPlans",
        input_schema = types.ListPlansInput,
        output_schema = types.ListPlansOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listPlansInRegion(input, options)
    return self:invokeOperation(input, {
        name = "ListPlansInRegion",
        input_schema = types.ListPlansInRegionInput,
        output_schema = types.ListPlansInRegionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listRoute53HealthChecks(input, options)
    return self:invokeOperation(input, {
        name = "ListRoute53HealthChecks",
        input_schema = types.ListRoute53HealthChecksInput,
        output_schema = types.ListRoute53HealthChecksOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listRoute53HealthChecksInRegion(input, options)
    return self:invokeOperation(input, {
        name = "ListRoute53HealthChecksInRegion",
        input_schema = types.ListRoute53HealthChecksInRegionInput,
        output_schema = types.ListRoute53HealthChecksInRegionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startPlanExecution(input, options)
    return self:invokeOperation(input, {
        name = "StartPlanExecution",
        input_schema = types.StartPlanExecutionInput,
        output_schema = types.StartPlanExecutionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updatePlan(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePlan",
        input_schema = types.UpdatePlanInput,
        output_schema = types.UpdatePlanOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updatePlanExecution(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePlanExecution",
        input_schema = types.UpdatePlanExecutionInput,
        output_schema = types.UpdatePlanExecutionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updatePlanExecutionStep(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePlanExecutionStep",
        input_schema = types.UpdatePlanExecutionStepInput,
        output_schema = types.UpdatePlanExecutionStepOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
