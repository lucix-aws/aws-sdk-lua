local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("notifications.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("notifications.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Notifications"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "notifications", signing_region = cfg.region } }
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

function Client:associateChannel(input, options)
    return self:invokeOperation(input, {
        name = "AssociateChannel",
        input_schema = types.AssociateChannelInput,
        output_schema = types.AssociateChannelOutput,
        http_method = "POST",
        http_path = "/channels/associate/{arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateManagedNotificationAccountContact(input, options)
    return self:invokeOperation(input, {
        name = "AssociateManagedNotificationAccountContact",
        input_schema = types.AssociateManagedNotificationAccountContactInput,
        output_schema = types.AssociateManagedNotificationAccountContactOutput,
        http_method = "PUT",
        http_path = "/contacts/associate-managed-notification/{contactIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateManagedNotificationAdditionalChannel(input, options)
    return self:invokeOperation(input, {
        name = "AssociateManagedNotificationAdditionalChannel",
        input_schema = types.AssociateManagedNotificationAdditionalChannelInput,
        output_schema = types.AssociateManagedNotificationAdditionalChannelOutput,
        http_method = "PUT",
        http_path = "/channels/associate-managed-notification/{channelArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateOrganizationalUnit(input, options)
    return self:invokeOperation(input, {
        name = "AssociateOrganizationalUnit",
        input_schema = types.AssociateOrganizationalUnitInput,
        output_schema = types.AssociateOrganizationalUnitOutput,
        http_method = "POST",
        http_path = "/organizational-units/associate/{organizationalUnitId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEventRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateEventRule",
        input_schema = types.CreateEventRuleInput,
        output_schema = types.CreateEventRuleOutput,
        http_method = "POST",
        http_path = "/event-rules",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createNotificationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateNotificationConfiguration",
        input_schema = types.CreateNotificationConfigurationInput,
        output_schema = types.CreateNotificationConfigurationOutput,
        http_method = "POST",
        http_path = "/notification-configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEventRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEventRule",
        input_schema = types.DeleteEventRuleInput,
        output_schema = types.DeleteEventRuleOutput,
        http_method = "DELETE",
        http_path = "/event-rules/{arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNotificationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNotificationConfiguration",
        input_schema = types.DeleteNotificationConfigurationInput,
        output_schema = types.DeleteNotificationConfigurationOutput,
        http_method = "DELETE",
        http_path = "/notification-configurations/{arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterNotificationHub(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterNotificationHub",
        input_schema = types.DeregisterNotificationHubInput,
        output_schema = types.DeregisterNotificationHubOutput,
        http_method = "DELETE",
        http_path = "/notification-hubs/{notificationHubRegion}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableNotificationsAccessForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "DisableNotificationsAccessForOrganization",
        input_schema = types.DisableNotificationsAccessForOrganizationInput,
        output_schema = types.DisableNotificationsAccessForOrganizationOutput,
        http_method = "DELETE",
        http_path = "/organization/access",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateChannel(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateChannel",
        input_schema = types.DisassociateChannelInput,
        output_schema = types.DisassociateChannelOutput,
        http_method = "POST",
        http_path = "/channels/disassociate/{arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateManagedNotificationAccountContact(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateManagedNotificationAccountContact",
        input_schema = types.DisassociateManagedNotificationAccountContactInput,
        output_schema = types.DisassociateManagedNotificationAccountContactOutput,
        http_method = "PUT",
        http_path = "/contacts/disassociate-managed-notification/{contactIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateManagedNotificationAdditionalChannel(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateManagedNotificationAdditionalChannel",
        input_schema = types.DisassociateManagedNotificationAdditionalChannelInput,
        output_schema = types.DisassociateManagedNotificationAdditionalChannelOutput,
        http_method = "PUT",
        http_path = "/channels/disassociate-managed-notification/{channelArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateOrganizationalUnit(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateOrganizationalUnit",
        input_schema = types.DisassociateOrganizationalUnitInput,
        output_schema = types.DisassociateOrganizationalUnitOutput,
        http_method = "POST",
        http_path = "/organizational-units/disassociate/{organizationalUnitId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableNotificationsAccessForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "EnableNotificationsAccessForOrganization",
        input_schema = types.EnableNotificationsAccessForOrganizationInput,
        output_schema = types.EnableNotificationsAccessForOrganizationOutput,
        http_method = "POST",
        http_path = "/organization/access",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEventRule(input, options)
    return self:invokeOperation(input, {
        name = "GetEventRule",
        input_schema = types.GetEventRuleInput,
        output_schema = types.GetEventRuleOutput,
        http_method = "GET",
        http_path = "/event-rules/{arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getManagedNotificationChildEvent(input, options)
    return self:invokeOperation(input, {
        name = "GetManagedNotificationChildEvent",
        input_schema = types.GetManagedNotificationChildEventInput,
        output_schema = types.GetManagedNotificationChildEventOutput,
        http_method = "GET",
        http_path = "/managed-notification-child-events/{arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getManagedNotificationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetManagedNotificationConfiguration",
        input_schema = types.GetManagedNotificationConfigurationInput,
        output_schema = types.GetManagedNotificationConfigurationOutput,
        http_method = "GET",
        http_path = "/managed-notification-configurations/{arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getManagedNotificationEvent(input, options)
    return self:invokeOperation(input, {
        name = "GetManagedNotificationEvent",
        input_schema = types.GetManagedNotificationEventInput,
        output_schema = types.GetManagedNotificationEventOutput,
        http_method = "GET",
        http_path = "/managed-notification-events/{arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getNotificationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetNotificationConfiguration",
        input_schema = types.GetNotificationConfigurationInput,
        output_schema = types.GetNotificationConfigurationOutput,
        http_method = "GET",
        http_path = "/notification-configurations/{arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getNotificationEvent(input, options)
    return self:invokeOperation(input, {
        name = "GetNotificationEvent",
        input_schema = types.GetNotificationEventInput,
        output_schema = types.GetNotificationEventOutput,
        http_method = "GET",
        http_path = "/notification-events/{arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getNotificationsAccessForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "GetNotificationsAccessForOrganization",
        input_schema = types.GetNotificationsAccessForOrganizationInput,
        output_schema = types.GetNotificationsAccessForOrganizationOutput,
        http_method = "GET",
        http_path = "/organization/access",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listChannels(input, options)
    return self:invokeOperation(input, {
        name = "ListChannels",
        input_schema = types.ListChannelsInput,
        output_schema = types.ListChannelsOutput,
        http_method = "GET",
        http_path = "/channels",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEventRules(input, options)
    return self:invokeOperation(input, {
        name = "ListEventRules",
        input_schema = types.ListEventRulesInput,
        output_schema = types.ListEventRulesOutput,
        http_method = "GET",
        http_path = "/event-rules",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listManagedNotificationChannelAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListManagedNotificationChannelAssociations",
        input_schema = types.ListManagedNotificationChannelAssociationsInput,
        output_schema = types.ListManagedNotificationChannelAssociationsOutput,
        http_method = "GET",
        http_path = "/channels/list-managed-notification-channel-associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listManagedNotificationChildEvents(input, options)
    return self:invokeOperation(input, {
        name = "ListManagedNotificationChildEvents",
        input_schema = types.ListManagedNotificationChildEventsInput,
        output_schema = types.ListManagedNotificationChildEventsOutput,
        http_method = "GET",
        http_path = "/list-managed-notification-child-events/{aggregateManagedNotificationEventArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listManagedNotificationConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListManagedNotificationConfigurations",
        input_schema = types.ListManagedNotificationConfigurationsInput,
        output_schema = types.ListManagedNotificationConfigurationsOutput,
        http_method = "GET",
        http_path = "/managed-notification-configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listManagedNotificationEvents(input, options)
    return self:invokeOperation(input, {
        name = "ListManagedNotificationEvents",
        input_schema = types.ListManagedNotificationEventsInput,
        output_schema = types.ListManagedNotificationEventsOutput,
        http_method = "GET",
        http_path = "/managed-notification-events",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMemberAccounts(input, options)
    return self:invokeOperation(input, {
        name = "ListMemberAccounts",
        input_schema = types.ListMemberAccountsInput,
        output_schema = types.ListMemberAccountsOutput,
        http_method = "GET",
        http_path = "/list-member-accounts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNotificationConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListNotificationConfigurations",
        input_schema = types.ListNotificationConfigurationsInput,
        output_schema = types.ListNotificationConfigurationsOutput,
        http_method = "GET",
        http_path = "/notification-configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNotificationEvents(input, options)
    return self:invokeOperation(input, {
        name = "ListNotificationEvents",
        input_schema = types.ListNotificationEventsInput,
        output_schema = types.ListNotificationEventsOutput,
        http_method = "GET",
        http_path = "/notification-events",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNotificationHubs(input, options)
    return self:invokeOperation(input, {
        name = "ListNotificationHubs",
        input_schema = types.ListNotificationHubsInput,
        output_schema = types.ListNotificationHubsOutput,
        http_method = "GET",
        http_path = "/notification-hubs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOrganizationalUnits(input, options)
    return self:invokeOperation(input, {
        name = "ListOrganizationalUnits",
        input_schema = types.ListOrganizationalUnitsInput,
        output_schema = types.ListOrganizationalUnitsOutput,
        http_method = "GET",
        http_path = "/organizational-units",
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
        http_method = "GET",
        http_path = "/tags/{arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerNotificationHub(input, options)
    return self:invokeOperation(input, {
        name = "RegisterNotificationHub",
        input_schema = types.RegisterNotificationHubInput,
        output_schema = types.RegisterNotificationHubOutput,
        http_method = "POST",
        http_path = "/notification-hubs",
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
        http_path = "/tags/{arn}",
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
        http_method = "DELETE",
        http_path = "/tags/{arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEventRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEventRule",
        input_schema = types.UpdateEventRuleInput,
        output_schema = types.UpdateEventRuleOutput,
        http_method = "PUT",
        http_path = "/event-rules/{arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateNotificationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNotificationConfiguration",
        input_schema = types.UpdateNotificationConfigurationInput,
        output_schema = types.UpdateNotificationConfigurationOutput,
        http_method = "PUT",
        http_path = "/notification-configurations/{arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
