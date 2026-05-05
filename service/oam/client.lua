local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("oam.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("oam.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "oamservice"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "oam", signing_region = cfg.region } }
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

function Client:createLink(input, options)
    return self:invokeOperation(input, {
        name = "CreateLink",
        input_schema = schemas.CreateLinkInput,
        output_schema = schemas.CreateLinkOutput,
        http_method = "POST",
        http_path = "/CreateLink",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSink(input, options)
    return self:invokeOperation(input, {
        name = "CreateSink",
        input_schema = schemas.CreateSinkInput,
        output_schema = schemas.CreateSinkOutput,
        http_method = "POST",
        http_path = "/CreateSink",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLink(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLink",
        input_schema = schemas.DeleteLinkInput,
        output_schema = schemas.DeleteLinkOutput,
        http_method = "POST",
        http_path = "/DeleteLink",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSink(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSink",
        input_schema = schemas.DeleteSinkInput,
        output_schema = schemas.DeleteSinkOutput,
        http_method = "POST",
        http_path = "/DeleteSink",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLink(input, options)
    return self:invokeOperation(input, {
        name = "GetLink",
        input_schema = schemas.GetLinkInput,
        output_schema = schemas.GetLinkOutput,
        http_method = "POST",
        http_path = "/GetLink",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSink(input, options)
    return self:invokeOperation(input, {
        name = "GetSink",
        input_schema = schemas.GetSinkInput,
        output_schema = schemas.GetSinkOutput,
        http_method = "POST",
        http_path = "/GetSink",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSinkPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetSinkPolicy",
        input_schema = schemas.GetSinkPolicyInput,
        output_schema = schemas.GetSinkPolicyOutput,
        http_method = "POST",
        http_path = "/GetSinkPolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAttachedLinks(input, options)
    return self:invokeOperation(input, {
        name = "ListAttachedLinks",
        input_schema = schemas.ListAttachedLinksInput,
        output_schema = schemas.ListAttachedLinksOutput,
        http_method = "POST",
        http_path = "/ListAttachedLinks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLinks(input, options)
    return self:invokeOperation(input, {
        name = "ListLinks",
        input_schema = schemas.ListLinksInput,
        output_schema = schemas.ListLinksOutput,
        http_method = "POST",
        http_path = "/ListLinks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSinks(input, options)
    return self:invokeOperation(input, {
        name = "ListSinks",
        input_schema = schemas.ListSinksInput,
        output_schema = schemas.ListSinksOutput,
        http_method = "POST",
        http_path = "/ListSinks",
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

function Client:putSinkPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutSinkPolicy",
        input_schema = schemas.PutSinkPolicyInput,
        output_schema = schemas.PutSinkPolicyOutput,
        http_method = "POST",
        http_path = "/PutSinkPolicy",
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
        http_method = "PUT",
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

function Client:updateLink(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLink",
        input_schema = schemas.UpdateLinkInput,
        output_schema = schemas.UpdateLinkOutput,
        http_method = "POST",
        http_path = "/UpdateLink",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
