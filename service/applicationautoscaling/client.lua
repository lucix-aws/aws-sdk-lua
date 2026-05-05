local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("applicationautoscaling.endpoint_rules")
local schemas = require("applicationautoscaling.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AnyScaleFrontendService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "application-autoscaling", signing_region = cfg.region } }
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

function Client:deleteScalingPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteScalingPolicy",
        input_schema = schemas.DeleteScalingPolicyInput,
        output_schema = schemas.DeleteScalingPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteScheduledAction(input, options)
    return self:invokeOperation(input, {
        name = "DeleteScheduledAction",
        input_schema = schemas.DeleteScheduledActionInput,
        output_schema = schemas.DeleteScheduledActionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterScalableTarget(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterScalableTarget",
        input_schema = schemas.DeregisterScalableTargetInput,
        output_schema = schemas.DeregisterScalableTargetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeScalableTargets(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScalableTargets",
        input_schema = schemas.DescribeScalableTargetsInput,
        output_schema = schemas.DescribeScalableTargetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeScalingActivities(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScalingActivities",
        input_schema = schemas.DescribeScalingActivitiesInput,
        output_schema = schemas.DescribeScalingActivitiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeScalingPolicies(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScalingPolicies",
        input_schema = schemas.DescribeScalingPoliciesInput,
        output_schema = schemas.DescribeScalingPoliciesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeScheduledActions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScheduledActions",
        input_schema = schemas.DescribeScheduledActionsInput,
        output_schema = schemas.DescribeScheduledActionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPredictiveScalingForecast(input, options)
    return self:invokeOperation(input, {
        name = "GetPredictiveScalingForecast",
        input_schema = schemas.GetPredictiveScalingForecastInput,
        output_schema = schemas.GetPredictiveScalingForecastOutput,
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

function Client:putScalingPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutScalingPolicy",
        input_schema = schemas.PutScalingPolicyInput,
        output_schema = schemas.PutScalingPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putScheduledAction(input, options)
    return self:invokeOperation(input, {
        name = "PutScheduledAction",
        input_schema = schemas.PutScheduledActionInput,
        output_schema = schemas.PutScheduledActionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerScalableTarget(input, options)
    return self:invokeOperation(input, {
        name = "RegisterScalableTarget",
        input_schema = schemas.RegisterScalableTargetInput,
        output_schema = schemas.RegisterScalableTargetOutput,
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

return M
