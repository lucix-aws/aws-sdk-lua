local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("oam.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("oam.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "oamservice"
    cfg.signing_name = "oam"
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

function Client:createLink(input, options)
    return self:invokeOperation(input, {
        name = "CreateLink",
        input_schema = types.CreateLinkInput,
        output_schema = types.CreateLinkOutput,
        http_method = "POST",
        http_path = "/CreateLink",
    }, options)
end

function Client:createSink(input, options)
    return self:invokeOperation(input, {
        name = "CreateSink",
        input_schema = types.CreateSinkInput,
        output_schema = types.CreateSinkOutput,
        http_method = "POST",
        http_path = "/CreateSink",
    }, options)
end

function Client:deleteLink(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLink",
        input_schema = types.DeleteLinkInput,
        output_schema = types.DeleteLinkOutput,
        http_method = "POST",
        http_path = "/DeleteLink",
    }, options)
end

function Client:deleteSink(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSink",
        input_schema = types.DeleteSinkInput,
        output_schema = types.DeleteSinkOutput,
        http_method = "POST",
        http_path = "/DeleteSink",
    }, options)
end

function Client:getLink(input, options)
    return self:invokeOperation(input, {
        name = "GetLink",
        input_schema = types.GetLinkInput,
        output_schema = types.GetLinkOutput,
        http_method = "POST",
        http_path = "/GetLink",
    }, options)
end

function Client:getSink(input, options)
    return self:invokeOperation(input, {
        name = "GetSink",
        input_schema = types.GetSinkInput,
        output_schema = types.GetSinkOutput,
        http_method = "POST",
        http_path = "/GetSink",
    }, options)
end

function Client:getSinkPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetSinkPolicy",
        input_schema = types.GetSinkPolicyInput,
        output_schema = types.GetSinkPolicyOutput,
        http_method = "POST",
        http_path = "/GetSinkPolicy",
    }, options)
end

function Client:listAttachedLinks(input, options)
    return self:invokeOperation(input, {
        name = "ListAttachedLinks",
        input_schema = types.ListAttachedLinksInput,
        output_schema = types.ListAttachedLinksOutput,
        http_method = "POST",
        http_path = "/ListAttachedLinks",
    }, options)
end

function Client:listLinks(input, options)
    return self:invokeOperation(input, {
        name = "ListLinks",
        input_schema = types.ListLinksInput,
        output_schema = types.ListLinksOutput,
        http_method = "POST",
        http_path = "/ListLinks",
    }, options)
end

function Client:listSinks(input, options)
    return self:invokeOperation(input, {
        name = "ListSinks",
        input_schema = types.ListSinksInput,
        output_schema = types.ListSinksOutput,
        http_method = "POST",
        http_path = "/ListSinks",
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

function Client:putSinkPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutSinkPolicy",
        input_schema = types.PutSinkPolicyInput,
        output_schema = types.PutSinkPolicyOutput,
        http_method = "POST",
        http_path = "/PutSinkPolicy",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "PUT",
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

function Client:updateLink(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLink",
        input_schema = types.UpdateLinkInput,
        output_schema = types.UpdateLinkOutput,
        http_method = "POST",
        http_path = "/UpdateLink",
    }, options)
end

return M
