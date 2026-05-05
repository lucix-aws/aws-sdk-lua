local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("elementalinference.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("elementalinference.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ElementalInference"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "elemental-inference", signing_region = cfg.region } }
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

function Client:associateFeed(input, options)
    return self:invokeOperation(input, {
        name = "AssociateFeed",
        input_schema = schemas.AssociateFeedInput,
        output_schema = schemas.AssociateFeedOutput,
        http_method = "POST",
        http_path = "/v1/feed/{id}/associate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFeed(input, options)
    return self:invokeOperation(input, {
        name = "CreateFeed",
        input_schema = schemas.CreateFeedInput,
        output_schema = schemas.CreateFeedOutput,
        http_method = "POST",
        http_path = "/v1/feed",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFeed(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFeed",
        input_schema = schemas.DeleteFeedInput,
        output_schema = schemas.DeleteFeedOutput,
        http_method = "DELETE",
        http_path = "/v1/feed/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateFeed(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateFeed",
        input_schema = schemas.DisassociateFeedInput,
        output_schema = schemas.DisassociateFeedOutput,
        http_method = "POST",
        http_path = "/v1/feed/{id}/disassociate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFeed(input, options)
    return self:invokeOperation(input, {
        name = "GetFeed",
        input_schema = schemas.GetFeedInput,
        output_schema = schemas.GetFeedOutput,
        http_method = "GET",
        http_path = "/v1/feed/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFeeds(input, options)
    return self:invokeOperation(input, {
        name = "ListFeeds",
        input_schema = schemas.ListFeedsInput,
        output_schema = schemas.ListFeedsOutput,
        http_method = "GET",
        http_path = "/v1/feeds",
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
        http_path = "/v1/tags/{resourceArn}",
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
        http_path = "/v1/tags/{resourceArn}",
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
        http_path = "/v1/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFeed(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFeed",
        input_schema = schemas.UpdateFeedInput,
        output_schema = schemas.UpdateFeedOutput,
        http_method = "PUT",
        http_path = "/v1/feed/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
