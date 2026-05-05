local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("autoscalingplans.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("autoscalingplans.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AnyScaleScalingPlannerFrontendService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "autoscaling-plans", signing_region = cfg.region } }
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

function Client:createScalingPlan(input, options)
    return self:invokeOperation(input, {
        name = "CreateScalingPlan",
        input_schema = types.CreateScalingPlanInput,
        output_schema = types.CreateScalingPlanOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteScalingPlan(input, options)
    return self:invokeOperation(input, {
        name = "DeleteScalingPlan",
        input_schema = types.DeleteScalingPlanInput,
        output_schema = types.DeleteScalingPlanOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeScalingPlanResources(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScalingPlanResources",
        input_schema = types.DescribeScalingPlanResourcesInput,
        output_schema = types.DescribeScalingPlanResourcesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeScalingPlans(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScalingPlans",
        input_schema = types.DescribeScalingPlansInput,
        output_schema = types.DescribeScalingPlansOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getScalingPlanResourceForecastData(input, options)
    return self:invokeOperation(input, {
        name = "GetScalingPlanResourceForecastData",
        input_schema = types.GetScalingPlanResourceForecastDataInput,
        output_schema = types.GetScalingPlanResourceForecastDataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateScalingPlan(input, options)
    return self:invokeOperation(input, {
        name = "UpdateScalingPlan",
        input_schema = types.UpdateScalingPlanInput,
        output_schema = types.UpdateScalingPlanOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
