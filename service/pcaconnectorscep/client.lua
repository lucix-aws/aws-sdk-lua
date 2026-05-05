local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("pcaconnectorscep.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("pcaconnectorscep.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "PcaConnectorScep"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "pca-connector-scep", signing_region = cfg.region } }
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

function Client:createChallenge(input, options)
    return self:invokeOperation(input, {
        name = "CreateChallenge",
        input_schema = schemas.CreateChallengeInput,
        output_schema = schemas.CreateChallengeOutput,
        http_method = "POST",
        http_path = "/challenges",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConnector(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnector",
        input_schema = schemas.CreateConnectorInput,
        output_schema = schemas.CreateConnectorOutput,
        http_method = "POST",
        http_path = "/connectors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteChallenge(input, options)
    return self:invokeOperation(input, {
        name = "DeleteChallenge",
        input_schema = schemas.DeleteChallengeInput,
        output_schema = schemas.DeleteChallengeOutput,
        http_method = "DELETE",
        http_path = "/challenges/{ChallengeArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConnector(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnector",
        input_schema = schemas.DeleteConnectorInput,
        output_schema = schemas.DeleteConnectorOutput,
        http_method = "DELETE",
        http_path = "/connectors/{ConnectorArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getChallengeMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetChallengeMetadata",
        input_schema = schemas.GetChallengeMetadataInput,
        output_schema = schemas.GetChallengeMetadataOutput,
        http_method = "GET",
        http_path = "/challengeMetadata/{ChallengeArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getChallengePassword(input, options)
    return self:invokeOperation(input, {
        name = "GetChallengePassword",
        input_schema = schemas.GetChallengePasswordInput,
        output_schema = schemas.GetChallengePasswordOutput,
        http_method = "GET",
        http_path = "/challengePasswords/{ChallengeArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConnector(input, options)
    return self:invokeOperation(input, {
        name = "GetConnector",
        input_schema = schemas.GetConnectorInput,
        output_schema = schemas.GetConnectorOutput,
        http_method = "GET",
        http_path = "/connectors/{ConnectorArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listChallengeMetadata(input, options)
    return self:invokeOperation(input, {
        name = "ListChallengeMetadata",
        input_schema = schemas.ListChallengeMetadataInput,
        output_schema = schemas.ListChallengeMetadataOutput,
        http_method = "GET",
        http_path = "/challengeMetadata",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConnectors(input, options)
    return self:invokeOperation(input, {
        name = "ListConnectors",
        input_schema = schemas.ListConnectorsInput,
        output_schema = schemas.ListConnectorsOutput,
        http_method = "GET",
        http_path = "/connectors",
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
        http_path = "/tags/{ResourceArn}",
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
        http_path = "/tags/{ResourceArn}",
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
        http_method = "DELETE",
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
