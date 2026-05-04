local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("kinesisvideosignaling.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("kinesisvideosignaling.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSAcuitySignalingService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "kinesisvideo", signing_region = cfg.region } }
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

function Client:getIceServerConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetIceServerConfig",
        input_schema = types.GetIceServerConfigInput,
        output_schema = types.GetIceServerConfigOutput,
        http_method = "POST",
        http_path = "/v1/get-ice-server-config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendAlexaOfferToMaster(input, options)
    return self:invokeOperation(input, {
        name = "SendAlexaOfferToMaster",
        input_schema = types.SendAlexaOfferToMasterInput,
        output_schema = types.SendAlexaOfferToMasterOutput,
        http_method = "POST",
        http_path = "/v1/send-alexa-offer-to-master",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
