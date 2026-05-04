local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("freetier.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("freetier.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSFreeTierService"
    cfg.signing_name = "awsfreetierservice"
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

function Client:getAccountActivity(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountActivity",
        input_schema = types.GetAccountActivityInput,
        output_schema = types.GetAccountActivityOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getAccountPlanState(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountPlanState",
        input_schema = types.GetAccountPlanStateInput,
        output_schema = types.GetAccountPlanStateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getFreeTierUsage(input, options)
    return self:invokeOperation(input, {
        name = "GetFreeTierUsage",
        input_schema = types.GetFreeTierUsageInput,
        output_schema = types.GetFreeTierUsageOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAccountActivities(input, options)
    return self:invokeOperation(input, {
        name = "ListAccountActivities",
        input_schema = types.ListAccountActivitiesInput,
        output_schema = types.ListAccountActivitiesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:upgradeAccountPlan(input, options)
    return self:invokeOperation(input, {
        name = "UpgradeAccountPlan",
        input_schema = types.UpgradeAccountPlanInput,
        output_schema = types.UpgradeAccountPlanOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
