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
    cfg.signing_name = "anyscalescalingplannerfrontendservice"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
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

function Client:createScalingPlan(input, options)
    return self:invokeOperation(input, {
        name = "CreateScalingPlan",
        input_schema = types.CreateScalingPlanInput,
        output_schema = types.CreateScalingPlanOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteScalingPlan(input, options)
    return self:invokeOperation(input, {
        name = "DeleteScalingPlan",
        input_schema = types.DeleteScalingPlanInput,
        output_schema = types.DeleteScalingPlanOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeScalingPlanResources(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScalingPlanResources",
        input_schema = types.DescribeScalingPlanResourcesInput,
        output_schema = types.DescribeScalingPlanResourcesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeScalingPlans(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScalingPlans",
        input_schema = types.DescribeScalingPlansInput,
        output_schema = types.DescribeScalingPlansOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getScalingPlanResourceForecastData(input, options)
    return self:invokeOperation(input, {
        name = "GetScalingPlanResourceForecastData",
        input_schema = types.GetScalingPlanResourceForecastDataInput,
        output_schema = types.GetScalingPlanResourceForecastDataOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateScalingPlan(input, options)
    return self:invokeOperation(input, {
        name = "UpdateScalingPlan",
        input_schema = types.UpdateScalingPlanInput,
        output_schema = types.UpdateScalingPlanOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
