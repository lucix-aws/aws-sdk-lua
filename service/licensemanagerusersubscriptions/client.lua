local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("licensemanagerusersubscriptions.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("licensemanagerusersubscriptions.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "LicenseManagerUserSubscriptions"
    cfg.signing_name = "licensemanagerusersubscriptions"
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

function Client:associateUser(input, options)
    return self:invokeOperation(input, {
        name = "AssociateUser",
        input_schema = types.AssociateUserInput,
        output_schema = types.AssociateUserOutput,
        http_method = "POST",
        http_path = "/user/AssociateUser",
    }, options)
end

function Client:createLicenseServerEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateLicenseServerEndpoint",
        input_schema = types.CreateLicenseServerEndpointInput,
        output_schema = types.CreateLicenseServerEndpointOutput,
        http_method = "POST",
        http_path = "/license-server/CreateLicenseServerEndpoint",
    }, options)
end

function Client:deleteLicenseServerEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLicenseServerEndpoint",
        input_schema = types.DeleteLicenseServerEndpointInput,
        output_schema = types.DeleteLicenseServerEndpointOutput,
        http_method = "POST",
        http_path = "/license-server/DeleteLicenseServerEndpoint",
    }, options)
end

function Client:deregisterIdentityProvider(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterIdentityProvider",
        input_schema = types.DeregisterIdentityProviderInput,
        output_schema = types.DeregisterIdentityProviderOutput,
        http_method = "POST",
        http_path = "/identity-provider/DeregisterIdentityProvider",
    }, options)
end

function Client:disassociateUser(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateUser",
        input_schema = types.DisassociateUserInput,
        output_schema = types.DisassociateUserOutput,
        http_method = "POST",
        http_path = "/user/DisassociateUser",
    }, options)
end

function Client:listIdentityProviders(input, options)
    return self:invokeOperation(input, {
        name = "ListIdentityProviders",
        input_schema = types.ListIdentityProvidersInput,
        output_schema = types.ListIdentityProvidersOutput,
        http_method = "POST",
        http_path = "/identity-provider/ListIdentityProviders",
    }, options)
end

function Client:listInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListInstances",
        input_schema = types.ListInstancesInput,
        output_schema = types.ListInstancesOutput,
        http_method = "POST",
        http_path = "/instance/ListInstances",
    }, options)
end

function Client:listLicenseServerEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "ListLicenseServerEndpoints",
        input_schema = types.ListLicenseServerEndpointsInput,
        output_schema = types.ListLicenseServerEndpointsOutput,
        http_method = "POST",
        http_path = "/license-server/ListLicenseServerEndpoints",
    }, options)
end

function Client:listProductSubscriptions(input, options)
    return self:invokeOperation(input, {
        name = "ListProductSubscriptions",
        input_schema = types.ListProductSubscriptionsInput,
        output_schema = types.ListProductSubscriptionsOutput,
        http_method = "POST",
        http_path = "/user/ListProductSubscriptions",
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

function Client:listUserAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListUserAssociations",
        input_schema = types.ListUserAssociationsInput,
        output_schema = types.ListUserAssociationsOutput,
        http_method = "POST",
        http_path = "/user/ListUserAssociations",
    }, options)
end

function Client:registerIdentityProvider(input, options)
    return self:invokeOperation(input, {
        name = "RegisterIdentityProvider",
        input_schema = types.RegisterIdentityProviderInput,
        output_schema = types.RegisterIdentityProviderOutput,
        http_method = "POST",
        http_path = "/identity-provider/RegisterIdentityProvider",
    }, options)
end

function Client:startProductSubscription(input, options)
    return self:invokeOperation(input, {
        name = "StartProductSubscription",
        input_schema = types.StartProductSubscriptionInput,
        output_schema = types.StartProductSubscriptionOutput,
        http_method = "POST",
        http_path = "/user/StartProductSubscription",
    }, options)
end

function Client:stopProductSubscription(input, options)
    return self:invokeOperation(input, {
        name = "StopProductSubscription",
        input_schema = types.StopProductSubscriptionInput,
        output_schema = types.StopProductSubscriptionOutput,
        http_method = "POST",
        http_path = "/user/StopProductSubscription",
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

function Client:updateIdentityProviderSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIdentityProviderSettings",
        input_schema = types.UpdateIdentityProviderSettingsInput,
        output_schema = types.UpdateIdentityProviderSettingsOutput,
        http_method = "POST",
        http_path = "/identity-provider/UpdateIdentityProviderSettings",
    }, options)
end

return M
