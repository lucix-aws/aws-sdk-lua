local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("rbin.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("rbin.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonRecycleBin"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "rbin", signing_region = cfg.region } }
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

function Client:createRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateRule",
        input_schema = schemas.CreateRuleInput,
        output_schema = schemas.CreateRuleOutput,
        http_method = "POST",
        http_path = "/rules",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRule",
        input_schema = schemas.DeleteRuleInput,
        output_schema = schemas.DeleteRuleOutput,
        http_method = "DELETE",
        http_path = "/rules/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRule(input, options)
    return self:invokeOperation(input, {
        name = "GetRule",
        input_schema = schemas.GetRuleInput,
        output_schema = schemas.GetRuleOutput,
        http_method = "GET",
        http_path = "/rules/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRules(input, options)
    return self:invokeOperation(input, {
        name = "ListRules",
        input_schema = schemas.ListRulesInput,
        output_schema = schemas.ListRulesOutput,
        http_method = "POST",
        http_path = "/list-rules",
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

function Client:lockRule(input, options)
    return self:invokeOperation(input, {
        name = "LockRule",
        input_schema = schemas.LockRuleInput,
        output_schema = schemas.LockRuleOutput,
        http_method = "PATCH",
        http_path = "/rules/{Identifier}/lock",
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

function Client:unlockRule(input, options)
    return self:invokeOperation(input, {
        name = "UnlockRule",
        input_schema = schemas.UnlockRuleInput,
        output_schema = schemas.UnlockRuleOutput,
        http_method = "PATCH",
        http_path = "/rules/{Identifier}/unlock",
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

function Client:updateRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRule",
        input_schema = schemas.UpdateRuleInput,
        output_schema = schemas.UpdateRuleOutput,
        http_method = "PATCH",
        http_path = "/rules/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
