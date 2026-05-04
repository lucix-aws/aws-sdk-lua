local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("pcaconnectorscep.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("pcaconnectorscep.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "PcaConnectorScep"
    cfg.signing_name = "pca-connector-scep"
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

function Client:createChallenge(input, options)
    return self:invokeOperation(input, {
        name = "CreateChallenge",
        input_schema = types.CreateChallengeInput,
        output_schema = types.CreateChallengeOutput,
        http_method = "POST",
        http_path = "/challenges",
    }, options)
end

function Client:createConnector(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnector",
        input_schema = types.CreateConnectorInput,
        output_schema = types.CreateConnectorOutput,
        http_method = "POST",
        http_path = "/connectors",
    }, options)
end

function Client:deleteChallenge(input, options)
    return self:invokeOperation(input, {
        name = "DeleteChallenge",
        input_schema = types.DeleteChallengeInput,
        output_schema = types.DeleteChallengeOutput,
        http_method = "DELETE",
        http_path = "/challenges/{ChallengeArn}",
    }, options)
end

function Client:deleteConnector(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnector",
        input_schema = types.DeleteConnectorInput,
        output_schema = types.DeleteConnectorOutput,
        http_method = "DELETE",
        http_path = "/connectors/{ConnectorArn}",
    }, options)
end

function Client:getChallengeMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetChallengeMetadata",
        input_schema = types.GetChallengeMetadataInput,
        output_schema = types.GetChallengeMetadataOutput,
        http_method = "GET",
        http_path = "/challengeMetadata/{ChallengeArn}",
    }, options)
end

function Client:getChallengePassword(input, options)
    return self:invokeOperation(input, {
        name = "GetChallengePassword",
        input_schema = types.GetChallengePasswordInput,
        output_schema = types.GetChallengePasswordOutput,
        http_method = "GET",
        http_path = "/challengePasswords/{ChallengeArn}",
    }, options)
end

function Client:getConnector(input, options)
    return self:invokeOperation(input, {
        name = "GetConnector",
        input_schema = types.GetConnectorInput,
        output_schema = types.GetConnectorOutput,
        http_method = "GET",
        http_path = "/connectors/{ConnectorArn}",
    }, options)
end

function Client:listChallengeMetadata(input, options)
    return self:invokeOperation(input, {
        name = "ListChallengeMetadata",
        input_schema = types.ListChallengeMetadataInput,
        output_schema = types.ListChallengeMetadataOutput,
        http_method = "GET",
        http_path = "/challengeMetadata",
    }, options)
end

function Client:listConnectors(input, options)
    return self:invokeOperation(input, {
        name = "ListConnectors",
        input_schema = types.ListConnectorsInput,
        output_schema = types.ListConnectorsOutput,
        http_method = "GET",
        http_path = "/connectors",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

return M
