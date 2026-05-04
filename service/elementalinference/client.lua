local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("elementalinference.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("elementalinference.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ElementalInference"
    cfg.signing_name = "elementalinference"
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

function Client:associateFeed(input, options)
    return self:invokeOperation(input, {
        name = "AssociateFeed",
        input_schema = types.AssociateFeedInput,
        output_schema = types.AssociateFeedOutput,
        http_method = "POST",
        http_path = "/v1/feed/{id}/associate",
    }, options)
end

function Client:createFeed(input, options)
    return self:invokeOperation(input, {
        name = "CreateFeed",
        input_schema = types.CreateFeedInput,
        output_schema = types.CreateFeedOutput,
        http_method = "POST",
        http_path = "/v1/feed",
    }, options)
end

function Client:deleteFeed(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFeed",
        input_schema = types.DeleteFeedInput,
        output_schema = types.DeleteFeedOutput,
        http_method = "DELETE",
        http_path = "/v1/feed/{id}",
    }, options)
end

function Client:disassociateFeed(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateFeed",
        input_schema = types.DisassociateFeedInput,
        output_schema = types.DisassociateFeedOutput,
        http_method = "POST",
        http_path = "/v1/feed/{id}/disassociate",
    }, options)
end

function Client:getFeed(input, options)
    return self:invokeOperation(input, {
        name = "GetFeed",
        input_schema = types.GetFeedInput,
        output_schema = types.GetFeedOutput,
        http_method = "GET",
        http_path = "/v1/feed/{id}",
    }, options)
end

function Client:listFeeds(input, options)
    return self:invokeOperation(input, {
        name = "ListFeeds",
        input_schema = types.ListFeedsInput,
        output_schema = types.ListFeedsOutput,
        http_method = "GET",
        http_path = "/v1/feeds",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/v1/tags/{resourceArn}",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/v1/tags/{resourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/v1/tags/{resourceArn}",
    }, options)
end

function Client:updateFeed(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFeed",
        input_schema = types.UpdateFeedInput,
        output_schema = types.UpdateFeedOutput,
        http_method = "PUT",
        http_path = "/v1/feed/{id}",
    }, options)
end

return M
