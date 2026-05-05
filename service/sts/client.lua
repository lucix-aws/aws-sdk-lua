local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("sts.endpoint_rules")
local query_protocol = require("smithy.protocol.query")
local schemas = require("sts.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSSecurityTokenServiceV20110615"
    if not cfg.protocol then
        cfg.protocol = query_protocol.new("awsQuery")
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "sts", signing_region = cfg.region } }
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

function Client:assumeRole(input, options)
    return self:invokeOperation(input, {
        name = "AssumeRole",
        input_schema = schemas.AssumeRoleInput,
        output_schema = schemas.AssumeRoleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "aws.auth#sigv4a",
        },
    }, options)
end

function Client:assumeRoleWithSAML(input, options)
    return self:invokeOperation(input, {
        name = "AssumeRoleWithSAML",
        input_schema = schemas.AssumeRoleWithSAMLInput,
        output_schema = schemas.AssumeRoleWithSAMLOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
        },
    }, options)
end

function Client:assumeRoleWithWebIdentity(input, options)
    return self:invokeOperation(input, {
        name = "AssumeRoleWithWebIdentity",
        input_schema = schemas.AssumeRoleWithWebIdentityInput,
        output_schema = schemas.AssumeRoleWithWebIdentityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
        },
    }, options)
end

function Client:assumeRoot(input, options)
    return self:invokeOperation(input, {
        name = "AssumeRoot",
        input_schema = schemas.AssumeRootInput,
        output_schema = schemas.AssumeRootOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "aws.auth#sigv4a",
        },
    }, options)
end

function Client:decodeAuthorizationMessage(input, options)
    return self:invokeOperation(input, {
        name = "DecodeAuthorizationMessage",
        input_schema = schemas.DecodeAuthorizationMessageInput,
        output_schema = schemas.DecodeAuthorizationMessageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "aws.auth#sigv4a",
        },
    }, options)
end

function Client:getAccessKeyInfo(input, options)
    return self:invokeOperation(input, {
        name = "GetAccessKeyInfo",
        input_schema = schemas.GetAccessKeyInfoInput,
        output_schema = schemas.GetAccessKeyInfoOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "aws.auth#sigv4a",
        },
    }, options)
end

function Client:getCallerIdentity(input, options)
    return self:invokeOperation(input, {
        name = "GetCallerIdentity",
        input_schema = schemas.GetCallerIdentityInput,
        output_schema = schemas.GetCallerIdentityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "aws.auth#sigv4a",
        },
    }, options)
end

function Client:getDelegatedAccessToken(input, options)
    return self:invokeOperation(input, {
        name = "GetDelegatedAccessToken",
        input_schema = schemas.GetDelegatedAccessTokenInput,
        output_schema = schemas.GetDelegatedAccessTokenOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "aws.auth#sigv4a",
        },
    }, options)
end

function Client:getFederationToken(input, options)
    return self:invokeOperation(input, {
        name = "GetFederationToken",
        input_schema = schemas.GetFederationTokenInput,
        output_schema = schemas.GetFederationTokenOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "aws.auth#sigv4a",
        },
    }, options)
end

function Client:getSessionToken(input, options)
    return self:invokeOperation(input, {
        name = "GetSessionToken",
        input_schema = schemas.GetSessionTokenInput,
        output_schema = schemas.GetSessionTokenOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "aws.auth#sigv4a",
        },
    }, options)
end

function Client:getWebIdentityToken(input, options)
    return self:invokeOperation(input, {
        name = "GetWebIdentityToken",
        input_schema = schemas.GetWebIdentityTokenInput,
        output_schema = schemas.GetWebIdentityTokenOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
            "aws.auth#sigv4a",
        },
    }, options)
end

return M
