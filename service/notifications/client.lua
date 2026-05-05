local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("notifications.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("notifications.schemas")
local sdk_defaults = require("sdk_defaults")

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
        input_schema = schemas.AssociateChannelInput,
        output_schema = schemas.AssociateChannelOutput,
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
        input_schema = schemas.AssociateManagedNotificationAccountContactInput,
        output_schema = schemas.AssociateManagedNotificationAccountContactOutput,
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
        input_schema = schemas.AssociateManagedNotificationAdditionalChannelInput,
        output_schema = schemas.AssociateManagedNotificationAdditionalChannelOutput,
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
        input_schema = schemas.AssociateOrganizationalUnitInput,
        output_schema = schemas.AssociateOrganizationalUnitOutput,
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
        input_schema = schemas.CreateEventRuleInput,
        output_schema = schemas.CreateEventRuleOutput,
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
        input_schema = schemas.CreateNotificationConfigurationInput,
        output_schema = schemas.CreateNotificationConfigurationOutput,
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
        input_schema = schemas.DeleteEventRuleInput,
        output_schema = schemas.DeleteEventRuleOutput,
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
        input_schema = schemas.DeleteNotificationConfigurationInput,
        output_schema = schemas.DeleteNotificationConfigurationOutput,
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
        input_schema = schemas.DeregisterNotificationHubInput,
        output_schema = schemas.DeregisterNotificationHubOutput,
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
        input_schema = schemas.DisableNotificationsAccessForOrganizationInput,
        output_schema = schemas.DisableNotificationsAccessForOrganizationOutput,
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
        input_schema = schemas.DisassociateChannelInput,
        output_schema = schemas.DisassociateChannelOutput,
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
        input_schema = schemas.DisassociateManagedNotificationAccountContactInput,
        output_schema = schemas.DisassociateManagedNotificationAccountContactOutput,
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
        input_schema = schemas.DisassociateManagedNotificationAdditionalChannelInput,
        output_schema = schemas.DisassociateManagedNotificationAdditionalChannelOutput,
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
        input_schema = schemas.DisassociateOrganizationalUnitInput,
        output_schema = schemas.DisassociateOrganizationalUnitOutput,
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
        input_schema = schemas.EnableNotificationsAccessForOrganizationInput,
        output_schema = schemas.EnableNotificationsAccessForOrganizationOutput,
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
        input_schema = schemas.GetEventRuleInput,
        output_schema = schemas.GetEventRuleOutput,
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
        input_schema = schemas.GetManagedNotificationChildEventInput,
        output_schema = schemas.GetManagedNotificationChildEventOutput,
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
        input_schema = schemas.GetManagedNotificationConfigurationInput,
        output_schema = schemas.GetManagedNotificationConfigurationOutput,
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
        input_schema = schemas.GetManagedNotificationEventInput,
        output_schema = schemas.GetManagedNotificationEventOutput,
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
        input_schema = schemas.GetNotificationConfigurationInput,
        output_schema = schemas.GetNotificationConfigurationOutput,
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
        input_schema = schemas.GetNotificationEventInput,
        output_schema = schemas.GetNotificationEventOutput,
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
        input_schema = schemas.GetNotificationsAccessForOrganizationInput,
        output_schema = schemas.GetNotificationsAccessForOrganizationOutput,
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
        input_schema = schemas.ListChannelsInput,
        output_schema = schemas.ListChannelsOutput,
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
        input_schema = schemas.ListEventRulesInput,
        output_schema = schemas.ListEventRulesOutput,
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
        input_schema = schemas.ListManagedNotificationChannelAssociationsInput,
        output_schema = schemas.ListManagedNotificationChannelAssociationsOutput,
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
        input_schema = schemas.ListManagedNotificationChildEventsInput,
        output_schema = schemas.ListManagedNotificationChildEventsOutput,
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
        input_schema = schemas.ListManagedNotificationConfigurationsInput,
        output_schema = schemas.ListManagedNotificationConfigurationsOutput,
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
        input_schema = schemas.ListManagedNotificationEventsInput,
        output_schema = schemas.ListManagedNotificationEventsOutput,
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
        input_schema = schemas.ListMemberAccountsInput,
        output_schema = schemas.ListMemberAccountsOutput,
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
        input_schema = schemas.ListNotificationConfigurationsInput,
        output_schema = schemas.ListNotificationConfigurationsOutput,
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
        input_schema = schemas.ListNotificationEventsInput,
        output_schema = schemas.ListNotificationEventsOutput,
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
        input_schema = schemas.ListNotificationHubsInput,
        output_schema = schemas.ListNotificationHubsOutput,
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
        input_schema = schemas.ListOrganizationalUnitsInput,
        output_schema = schemas.ListOrganizationalUnitsOutput,
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
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
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
        input_schema = schemas.RegisterNotificationHubInput,
        output_schema = schemas.RegisterNotificationHubOutput,
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
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
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
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
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
        input_schema = schemas.UpdateEventRuleInput,
        output_schema = schemas.UpdateEventRuleOutput,
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
        input_schema = schemas.UpdateNotificationConfigurationInput,
        output_schema = schemas.UpdateNotificationConfigurationOutput,
        http_method = "PUT",
        http_path = "/notification-configurations/{arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
