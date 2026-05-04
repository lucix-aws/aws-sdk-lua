local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("sagemakermetrics.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("sagemakermetrics.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "SageMakerMetricsService"
    cfg.signing_name = "sagemakermetricsservice"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
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

function Client:batchGetMetrics(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetMetrics",
        input_schema = types.BatchGetMetricsInput,
        output_schema = types.BatchGetMetricsOutput,
        http_method = "POST",
        http_path = "/BatchGetMetrics",
    }, options)
end

function Client:batchPutMetrics(input, options)
    return self:invokeOperation(input, {
        name = "BatchPutMetrics",
        input_schema = types.BatchPutMetricsInput,
        output_schema = types.BatchPutMetricsOutput,
        http_method = "PUT",
        http_path = "/BatchPutMetrics",
    }, options)
end

return M
