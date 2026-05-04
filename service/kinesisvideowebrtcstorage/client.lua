local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("kinesisvideowebrtcstorage.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("kinesisvideowebrtcstorage.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSAcuityRoutingServiceLambda"
    cfg.signing_name = "awsacuityroutingservicelambda"
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

function Client:joinStorageSession(input, options)
    return self:invokeOperation(input, {
        name = "JoinStorageSession",
        input_schema = types.JoinStorageSessionInput,
        output_schema = types.JoinStorageSessionOutput,
        http_method = "POST",
        http_path = "/joinStorageSession",
    }, options)
end

function Client:joinStorageSessionAsViewer(input, options)
    return self:invokeOperation(input, {
        name = "JoinStorageSessionAsViewer",
        input_schema = types.JoinStorageSessionAsViewerInput,
        output_schema = types.JoinStorageSessionAsViewerOutput,
        http_method = "POST",
        http_path = "/joinStorageSessionAsViewer",
    }, options)
end

return M
