local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("partnercentralchannel.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("partnercentralchannel.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "PartnerCentralChannel"
    cfg.signing_name = "partnercentral-channel"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.0", service_id = cfg.service_id })
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

function Client:acceptChannelHandshake(input, options)
    return self:invokeOperation(input, {
        name = "AcceptChannelHandshake",
        input_schema = types.AcceptChannelHandshakeInput,
        output_schema = types.AcceptChannelHandshakeOutput,
        http_method = "POST",
        http_path = "/AcceptChannelHandshake",
    }, options)
end

function Client:cancelChannelHandshake(input, options)
    return self:invokeOperation(input, {
        name = "CancelChannelHandshake",
        input_schema = types.CancelChannelHandshakeInput,
        output_schema = types.CancelChannelHandshakeOutput,
        http_method = "POST",
        http_path = "/CancelChannelHandshake",
    }, options)
end

function Client:createChannelHandshake(input, options)
    return self:invokeOperation(input, {
        name = "CreateChannelHandshake",
        input_schema = types.CreateChannelHandshakeInput,
        output_schema = types.CreateChannelHandshakeOutput,
        http_method = "POST",
        http_path = "/CreateChannelHandshake",
    }, options)
end

function Client:createProgramManagementAccount(input, options)
    return self:invokeOperation(input, {
        name = "CreateProgramManagementAccount",
        input_schema = types.CreateProgramManagementAccountInput,
        output_schema = types.CreateProgramManagementAccountOutput,
        http_method = "POST",
        http_path = "/CreateProgramManagementAccount",
    }, options)
end

function Client:createRelationship(input, options)
    return self:invokeOperation(input, {
        name = "CreateRelationship",
        input_schema = types.CreateRelationshipInput,
        output_schema = types.CreateRelationshipOutput,
        http_method = "POST",
        http_path = "/CreateRelationship",
    }, options)
end

function Client:deleteProgramManagementAccount(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProgramManagementAccount",
        input_schema = types.DeleteProgramManagementAccountInput,
        output_schema = types.DeleteProgramManagementAccountOutput,
        http_method = "POST",
        http_path = "/DeleteProgramManagementAccount",
    }, options)
end

function Client:deleteRelationship(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRelationship",
        input_schema = types.DeleteRelationshipInput,
        output_schema = types.DeleteRelationshipOutput,
        http_method = "POST",
        http_path = "/DeleteRelationship",
    }, options)
end

function Client:getRelationship(input, options)
    return self:invokeOperation(input, {
        name = "GetRelationship",
        input_schema = types.GetRelationshipInput,
        output_schema = types.GetRelationshipOutput,
        http_method = "POST",
        http_path = "/GetRelationship",
    }, options)
end

function Client:listChannelHandshakes(input, options)
    return self:invokeOperation(input, {
        name = "ListChannelHandshakes",
        input_schema = types.ListChannelHandshakesInput,
        output_schema = types.ListChannelHandshakesOutput,
        http_method = "POST",
        http_path = "/ListChannelHandshakes",
    }, options)
end

function Client:listProgramManagementAccounts(input, options)
    return self:invokeOperation(input, {
        name = "ListProgramManagementAccounts",
        input_schema = types.ListProgramManagementAccountsInput,
        output_schema = types.ListProgramManagementAccountsOutput,
        http_method = "POST",
        http_path = "/ListProgramManagementAccounts",
    }, options)
end

function Client:listRelationships(input, options)
    return self:invokeOperation(input, {
        name = "ListRelationships",
        input_schema = types.ListRelationshipsInput,
        output_schema = types.ListRelationshipsOutput,
        http_method = "POST",
        http_path = "/ListRelationships",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/ListTagsForResource",
    }, options)
end

function Client:rejectChannelHandshake(input, options)
    return self:invokeOperation(input, {
        name = "RejectChannelHandshake",
        input_schema = types.RejectChannelHandshakeInput,
        output_schema = types.RejectChannelHandshakeOutput,
        http_method = "POST",
        http_path = "/RejectChannelHandshake",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/TagResource",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/UntagResource",
    }, options)
end

function Client:updateProgramManagementAccount(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProgramManagementAccount",
        input_schema = types.UpdateProgramManagementAccountInput,
        output_schema = types.UpdateProgramManagementAccountOutput,
        http_method = "POST",
        http_path = "/UpdateProgramManagementAccount",
    }, options)
end

function Client:updateRelationship(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRelationship",
        input_schema = types.UpdateRelationshipInput,
        output_schema = types.UpdateRelationshipOutput,
        http_method = "POST",
        http_path = "/UpdateRelationship",
    }, options)
end

return M
