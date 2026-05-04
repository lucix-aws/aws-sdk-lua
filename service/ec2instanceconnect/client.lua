local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("ec2instanceconnect.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("ec2instanceconnect.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSEC2InstanceConnectService"
    cfg.signing_name = "awsec2instanceconnectservice"
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

function Client:sendSerialConsoleSSHPublicKey(input, options)
    return self:invokeOperation(input, {
        name = "SendSerialConsoleSSHPublicKey",
        input_schema = types.SendSerialConsoleSSHPublicKeyInput,
        output_schema = types.SendSerialConsoleSSHPublicKeyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:sendSSHPublicKey(input, options)
    return self:invokeOperation(input, {
        name = "SendSSHPublicKey",
        input_schema = types.SendSSHPublicKeyInput,
        output_schema = types.SendSSHPublicKeyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
