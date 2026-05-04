local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("sagemakeredge.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("sagemakeredge.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonSageMakerEdge"
    cfg.signing_name = "amazonsagemakeredge"
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

function Client:getDeployments(input, options)
    return self:invokeOperation(input, {
        name = "GetDeployments",
        input_schema = types.GetDeploymentsInput,
        output_schema = types.GetDeploymentsOutput,
        http_method = "POST",
        http_path = "/GetDeployments",
    }, options)
end

function Client:getDeviceRegistration(input, options)
    return self:invokeOperation(input, {
        name = "GetDeviceRegistration",
        input_schema = types.GetDeviceRegistrationInput,
        output_schema = types.GetDeviceRegistrationOutput,
        http_method = "POST",
        http_path = "/GetDeviceRegistration",
    }, options)
end

function Client:sendHeartbeat(input, options)
    return self:invokeOperation(input, {
        name = "SendHeartbeat",
        input_schema = types.SendHeartbeatInput,
        output_schema = types.SendHeartbeatOutput,
        http_method = "POST",
        http_path = "/SendHeartbeat",
    }, options)
end

return M
