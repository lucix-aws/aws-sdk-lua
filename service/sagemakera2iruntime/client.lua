local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("sagemakera2iruntime.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("sagemakera2iruntime.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonSageMakerA2IRuntime"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "sagemaker", signing_region = cfg.region } }
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

function Client:deleteHumanLoop(input, options)
    return self:invokeOperation(input, {
        name = "DeleteHumanLoop",
        input_schema = types.DeleteHumanLoopInput,
        output_schema = types.DeleteHumanLoopOutput,
        http_method = "DELETE",
        http_path = "/human-loops/{HumanLoopName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeHumanLoop(input, options)
    return self:invokeOperation(input, {
        name = "DescribeHumanLoop",
        input_schema = types.DescribeHumanLoopInput,
        output_schema = types.DescribeHumanLoopOutput,
        http_method = "GET",
        http_path = "/human-loops/{HumanLoopName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listHumanLoops(input, options)
    return self:invokeOperation(input, {
        name = "ListHumanLoops",
        input_schema = types.ListHumanLoopsInput,
        output_schema = types.ListHumanLoopsOutput,
        http_method = "GET",
        http_path = "/human-loops",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startHumanLoop(input, options)
    return self:invokeOperation(input, {
        name = "StartHumanLoop",
        input_schema = types.StartHumanLoopInput,
        output_schema = types.StartHumanLoopOutput,
        http_method = "POST",
        http_path = "/human-loops",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopHumanLoop(input, options)
    return self:invokeOperation(input, {
        name = "StopHumanLoop",
        input_schema = types.StopHumanLoopInput,
        output_schema = types.StopHumanLoopOutput,
        http_method = "POST",
        http_path = "/human-loops/stop",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
