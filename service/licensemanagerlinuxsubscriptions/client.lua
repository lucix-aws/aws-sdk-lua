local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("licensemanagerlinuxsubscriptions.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("licensemanagerlinuxsubscriptions.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "LicenseManagerLinuxSubscriptions"
    cfg.signing_name = "license-manager-linux-subscriptions"
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

function Client:deregisterSubscriptionProvider(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterSubscriptionProvider",
        input_schema = types.DeregisterSubscriptionProviderInput,
        output_schema = types.DeregisterSubscriptionProviderOutput,
        http_method = "POST",
        http_path = "/subscription/DeregisterSubscriptionProvider",
    }, options)
end

function Client:getRegisteredSubscriptionProvider(input, options)
    return self:invokeOperation(input, {
        name = "GetRegisteredSubscriptionProvider",
        input_schema = types.GetRegisteredSubscriptionProviderInput,
        output_schema = types.GetRegisteredSubscriptionProviderOutput,
        http_method = "POST",
        http_path = "/subscription/GetRegisteredSubscriptionProvider",
    }, options)
end

function Client:getServiceSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceSettings",
        input_schema = types.GetServiceSettingsInput,
        output_schema = types.GetServiceSettingsOutput,
        http_method = "POST",
        http_path = "/subscription/GetServiceSettings",
    }, options)
end

function Client:listLinuxSubscriptionInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListLinuxSubscriptionInstances",
        input_schema = types.ListLinuxSubscriptionInstancesInput,
        output_schema = types.ListLinuxSubscriptionInstancesOutput,
        http_method = "POST",
        http_path = "/subscription/ListLinuxSubscriptionInstances",
    }, options)
end

function Client:listLinuxSubscriptions(input, options)
    return self:invokeOperation(input, {
        name = "ListLinuxSubscriptions",
        input_schema = types.ListLinuxSubscriptionsInput,
        output_schema = types.ListLinuxSubscriptionsOutput,
        http_method = "POST",
        http_path = "/subscription/ListLinuxSubscriptions",
    }, options)
end

function Client:listRegisteredSubscriptionProviders(input, options)
    return self:invokeOperation(input, {
        name = "ListRegisteredSubscriptionProviders",
        input_schema = types.ListRegisteredSubscriptionProvidersInput,
        output_schema = types.ListRegisteredSubscriptionProvidersOutput,
        http_method = "POST",
        http_path = "/subscription/ListRegisteredSubscriptionProviders",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:registerSubscriptionProvider(input, options)
    return self:invokeOperation(input, {
        name = "RegisterSubscriptionProvider",
        input_schema = types.RegisterSubscriptionProviderInput,
        output_schema = types.RegisterSubscriptionProviderOutput,
        http_method = "POST",
        http_path = "/subscription/RegisterSubscriptionProvider",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "PUT",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:updateServiceSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServiceSettings",
        input_schema = types.UpdateServiceSettingsInput,
        output_schema = types.UpdateServiceSettingsOutput,
        http_method = "POST",
        http_path = "/subscription/UpdateServiceSettings",
    }, options)
end

return M
