local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("iotsecuretunneling.endpoint_rules")
local schemas = require("iotsecuretunneling.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "IoTSecuredTunneling"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "IoTSecuredTunneling", signing_region = cfg.region } }
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

function Client:closeTunnel(input, options)
    return self:invokeOperation(input, {
        name = "CloseTunnel",
        input_schema = schemas.CloseTunnelInput,
        output_schema = schemas.CloseTunnelOutput,
        http_method = "DELETE",
        http_path = "/tunnels/{tunnelId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTunnel(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTunnel",
        input_schema = schemas.DescribeTunnelInput,
        output_schema = schemas.DescribeTunnelOutput,
        http_method = "GET",
        http_path = "/tunnels/{tunnelId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTunnels(input, options)
    return self:invokeOperation(input, {
        name = "ListTunnels",
        input_schema = schemas.ListTunnelsInput,
        output_schema = schemas.ListTunnelsOutput,
        http_method = "GET",
        http_path = "/tunnels",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:openTunnel(input, options)
    return self:invokeOperation(input, {
        name = "OpenTunnel",
        input_schema = schemas.OpenTunnelInput,
        output_schema = schemas.OpenTunnelOutput,
        http_method = "POST",
        http_path = "/tunnels",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rotateTunnelAccessToken(input, options)
    return self:invokeOperation(input, {
        name = "RotateTunnelAccessToken",
        input_schema = schemas.RotateTunnelAccessTokenInput,
        output_schema = schemas.RotateTunnelAccessTokenOutput,
        http_method = "POST",
        http_path = "/tunnel/{tunnelId}/rotate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
        http_method = "POST",
        http_path = "/untag",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
