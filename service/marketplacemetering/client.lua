local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("marketplacemetering.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("marketplacemetering.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSMPMeteringService"
    cfg.signing_name = "aws-marketplace"
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

function Client:batchMeterUsage(input, options)
    return self:invokeOperation(input, {
        name = "BatchMeterUsage",
        input_schema = types.BatchMeterUsageInput,
        output_schema = types.BatchMeterUsageOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:meterUsage(input, options)
    return self:invokeOperation(input, {
        name = "MeterUsage",
        input_schema = types.MeterUsageInput,
        output_schema = types.MeterUsageOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:registerUsage(input, options)
    return self:invokeOperation(input, {
        name = "RegisterUsage",
        input_schema = types.RegisterUsageInput,
        output_schema = types.RegisterUsageOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:resolveCustomer(input, options)
    return self:invokeOperation(input, {
        name = "ResolveCustomer",
        input_schema = types.ResolveCustomerInput,
        output_schema = types.ResolveCustomerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
