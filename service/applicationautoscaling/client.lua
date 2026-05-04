local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("applicationautoscaling.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("applicationautoscaling.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AnyScaleFrontendService"
    cfg.signing_name = "application-autoscaling"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
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

function Client:deleteScalingPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteScalingPolicy",
        input_schema = types.DeleteScalingPolicyInput,
        output_schema = types.DeleteScalingPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteScheduledAction(input, options)
    return self:invokeOperation(input, {
        name = "DeleteScheduledAction",
        input_schema = types.DeleteScheduledActionInput,
        output_schema = types.DeleteScheduledActionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deregisterScalableTarget(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterScalableTarget",
        input_schema = types.DeregisterScalableTargetInput,
        output_schema = types.DeregisterScalableTargetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeScalableTargets(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScalableTargets",
        input_schema = types.DescribeScalableTargetsInput,
        output_schema = types.DescribeScalableTargetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeScalingActivities(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScalingActivities",
        input_schema = types.DescribeScalingActivitiesInput,
        output_schema = types.DescribeScalingActivitiesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeScalingPolicies(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScalingPolicies",
        input_schema = types.DescribeScalingPoliciesInput,
        output_schema = types.DescribeScalingPoliciesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeScheduledActions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScheduledActions",
        input_schema = types.DescribeScheduledActionsInput,
        output_schema = types.DescribeScheduledActionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getPredictiveScalingForecast(input, options)
    return self:invokeOperation(input, {
        name = "GetPredictiveScalingForecast",
        input_schema = types.GetPredictiveScalingForecastInput,
        output_schema = types.GetPredictiveScalingForecastOutput,
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

function Client:putScalingPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutScalingPolicy",
        input_schema = types.PutScalingPolicyInput,
        output_schema = types.PutScalingPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putScheduledAction(input, options)
    return self:invokeOperation(input, {
        name = "PutScheduledAction",
        input_schema = types.PutScheduledActionInput,
        output_schema = types.PutScheduledActionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:registerScalableTarget(input, options)
    return self:invokeOperation(input, {
        name = "RegisterScalableTarget",
        input_schema = types.RegisterScalableTargetInput,
        output_schema = types.RegisterScalableTargetOutput,
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

return M
