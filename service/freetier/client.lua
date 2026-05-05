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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "freetier", signing_region = cfg.region } }
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

function Client:getAccountActivity(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountActivity",
        input_schema = types.GetAccountActivityInput,
        output_schema = types.GetAccountActivityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAccountPlanState(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountPlanState",
        input_schema = types.GetAccountPlanStateInput,
        output_schema = types.GetAccountPlanStateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFreeTierUsage(input, options)
    return self:invokeOperation(input, {
        name = "GetFreeTierUsage",
        input_schema = types.GetFreeTierUsageInput,
        output_schema = types.GetFreeTierUsageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAccountActivities(input, options)
    return self:invokeOperation(input, {
        name = "ListAccountActivities",
        input_schema = types.ListAccountActivitiesInput,
        output_schema = types.ListAccountActivitiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:upgradeAccountPlan(input, options)
    return self:invokeOperation(input, {
        name = "UpgradeAccountPlan",
        input_schema = types.UpgradeAccountPlanInput,
        output_schema = types.UpgradeAccountPlanOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
