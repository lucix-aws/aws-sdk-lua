local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("kinesisvideowebrtcstorage.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("kinesisvideowebrtcstorage.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSAcuityRoutingServiceLambda"
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

function Client:joinStorageSession(input, options)
    return self:invokeOperation(input, {
        name = "JoinStorageSession",
        input_schema = schemas.JoinStorageSessionInput,
        output_schema = schemas.JoinStorageSessionOutput,
        http_method = "POST",
        http_path = "/joinStorageSession",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:joinStorageSessionAsViewer(input, options)
    return self:invokeOperation(input, {
        name = "JoinStorageSessionAsViewer",
        input_schema = schemas.JoinStorageSessionAsViewerInput,
        output_schema = schemas.JoinStorageSessionAsViewerOutput,
        http_method = "POST",
        http_path = "/joinStorageSessionAsViewer",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
