local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("codestarnotifications.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("codestarnotifications.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "CodeStarNotifications_20191015"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "codestar-notifications", signing_region = cfg.region } }
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

function Client:createNotificationRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateNotificationRule",
        input_schema = types.CreateNotificationRuleInput,
        output_schema = types.CreateNotificationRuleOutput,
        http_method = "POST",
        http_path = "/createNotificationRule",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNotificationRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNotificationRule",
        input_schema = types.DeleteNotificationRuleInput,
        output_schema = types.DeleteNotificationRuleOutput,
        http_method = "POST",
        http_path = "/deleteNotificationRule",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTarget(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTarget",
        input_schema = types.DeleteTargetInput,
        output_schema = types.DeleteTargetOutput,
        http_method = "POST",
        http_path = "/deleteTarget",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeNotificationRule(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNotificationRule",
        input_schema = types.DescribeNotificationRuleInput,
        output_schema = types.DescribeNotificationRuleOutput,
        http_method = "POST",
        http_path = "/describeNotificationRule",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEventTypes(input, options)
    return self:invokeOperation(input, {
        name = "ListEventTypes",
        input_schema = types.ListEventTypesInput,
        output_schema = types.ListEventTypesOutput,
        http_method = "POST",
        http_path = "/listEventTypes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNotificationRules(input, options)
    return self:invokeOperation(input, {
        name = "ListNotificationRules",
        input_schema = types.ListNotificationRulesInput,
        output_schema = types.ListNotificationRulesOutput,
        http_method = "POST",
        http_path = "/listNotificationRules",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/listTagsForResource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTargets(input, options)
    return self:invokeOperation(input, {
        name = "ListTargets",
        input_schema = types.ListTargetsInput,
        output_schema = types.ListTargetsOutput,
        http_method = "POST",
        http_path = "/listTargets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:subscribe(input, options)
    return self:invokeOperation(input, {
        name = "Subscribe",
        input_schema = types.SubscribeInput,
        output_schema = types.SubscribeOutput,
        http_method = "POST",
        http_path = "/subscribe",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tagResource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:unsubscribe(input, options)
    return self:invokeOperation(input, {
        name = "Unsubscribe",
        input_schema = types.UnsubscribeInput,
        output_schema = types.UnsubscribeOutput,
        http_method = "POST",
        http_path = "/unsubscribe",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/untagResource/{Arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateNotificationRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNotificationRule",
        input_schema = types.UpdateNotificationRuleInput,
        output_schema = types.UpdateNotificationRuleOutput,
        http_method = "POST",
        http_path = "/updateNotificationRule",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
