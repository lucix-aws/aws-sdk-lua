local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("licensemanagerlinuxsubscriptions.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("licensemanagerlinuxsubscriptions.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "LicenseManagerLinuxSubscriptions"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "license-manager-linux-subscriptions", signing_region = cfg.region } }
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

function Client:deregisterSubscriptionProvider(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterSubscriptionProvider",
        input_schema = schemas.DeregisterSubscriptionProviderInput,
        output_schema = schemas.DeregisterSubscriptionProviderOutput,
        http_method = "POST",
        http_path = "/subscription/DeregisterSubscriptionProvider",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRegisteredSubscriptionProvider(input, options)
    return self:invokeOperation(input, {
        name = "GetRegisteredSubscriptionProvider",
        input_schema = schemas.GetRegisteredSubscriptionProviderInput,
        output_schema = schemas.GetRegisteredSubscriptionProviderOutput,
        http_method = "POST",
        http_path = "/subscription/GetRegisteredSubscriptionProvider",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getServiceSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceSettings",
        input_schema = schemas.GetServiceSettingsInput,
        output_schema = schemas.GetServiceSettingsOutput,
        http_method = "POST",
        http_path = "/subscription/GetServiceSettings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLinuxSubscriptionInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListLinuxSubscriptionInstances",
        input_schema = schemas.ListLinuxSubscriptionInstancesInput,
        output_schema = schemas.ListLinuxSubscriptionInstancesOutput,
        http_method = "POST",
        http_path = "/subscription/ListLinuxSubscriptionInstances",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLinuxSubscriptions(input, options)
    return self:invokeOperation(input, {
        name = "ListLinuxSubscriptions",
        input_schema = schemas.ListLinuxSubscriptionsInput,
        output_schema = schemas.ListLinuxSubscriptionsOutput,
        http_method = "POST",
        http_path = "/subscription/ListLinuxSubscriptions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRegisteredSubscriptionProviders(input, options)
    return self:invokeOperation(input, {
        name = "ListRegisteredSubscriptionProviders",
        input_schema = schemas.ListRegisteredSubscriptionProvidersInput,
        output_schema = schemas.ListRegisteredSubscriptionProvidersOutput,
        http_method = "POST",
        http_path = "/subscription/ListRegisteredSubscriptionProviders",
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
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerSubscriptionProvider(input, options)
    return self:invokeOperation(input, {
        name = "RegisterSubscriptionProvider",
        input_schema = schemas.RegisterSubscriptionProviderInput,
        output_schema = schemas.RegisterSubscriptionProviderOutput,
        http_method = "POST",
        http_path = "/subscription/RegisterSubscriptionProvider",
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
        http_path = "/tags/{resourceArn}",
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
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateServiceSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServiceSettings",
        input_schema = schemas.UpdateServiceSettingsInput,
        output_schema = schemas.UpdateServiceSettingsOutput,
        http_method = "POST",
        http_path = "/subscription/UpdateServiceSettings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
