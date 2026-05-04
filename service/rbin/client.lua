local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("rbin.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("rbin.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonRecycleBin"
    cfg.signing_name = "rbin"
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

function Client:createRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateRule",
        input_schema = types.CreateRuleInput,
        output_schema = types.CreateRuleOutput,
        http_method = "POST",
        http_path = "/rules",
    }, options)
end

function Client:deleteRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRule",
        input_schema = types.DeleteRuleInput,
        output_schema = types.DeleteRuleOutput,
        http_method = "DELETE",
        http_path = "/rules/{Identifier}",
    }, options)
end

function Client:getRule(input, options)
    return self:invokeOperation(input, {
        name = "GetRule",
        input_schema = types.GetRuleInput,
        output_schema = types.GetRuleOutput,
        http_method = "GET",
        http_path = "/rules/{Identifier}",
    }, options)
end

function Client:listRules(input, options)
    return self:invokeOperation(input, {
        name = "ListRules",
        input_schema = types.ListRulesInput,
        output_schema = types.ListRulesOutput,
        http_method = "POST",
        http_path = "/list-rules",
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

function Client:lockRule(input, options)
    return self:invokeOperation(input, {
        name = "LockRule",
        input_schema = types.LockRuleInput,
        output_schema = types.LockRuleOutput,
        http_method = "PATCH",
        http_path = "/rules/{Identifier}/lock",
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

function Client:unlockRule(input, options)
    return self:invokeOperation(input, {
        name = "UnlockRule",
        input_schema = types.UnlockRuleInput,
        output_schema = types.UnlockRuleOutput,
        http_method = "PATCH",
        http_path = "/rules/{Identifier}/unlock",
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

function Client:updateRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRule",
        input_schema = types.UpdateRuleInput,
        output_schema = types.UpdateRuleOutput,
        http_method = "PATCH",
        http_path = "/rules/{Identifier}",
    }, options)
end

return M
