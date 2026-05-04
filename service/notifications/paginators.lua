local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listChannels.
function M.pages_list_channels(client, input)
    return paginator.pages(client, "listChannels", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "channels",
    })
end

--- Returns an item iterator for listChannels.
function M.items_list_channels(client, input)
    return paginator.items(client, "listChannels", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "channels",
    })
end

--- Returns a page iterator for listEventRules.
function M.pages_list_event_rules(client, input)
    return paginator.pages(client, "listEventRules", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "eventRules",
    })
end

--- Returns an item iterator for listEventRules.
function M.items_list_event_rules(client, input)
    return paginator.items(client, "listEventRules", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "eventRules",
    })
end

--- Returns a page iterator for listManagedNotificationChannelAssociations.
function M.pages_list_managed_notification_channel_associations(client, input)
    return paginator.pages(client, "listManagedNotificationChannelAssociations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "channelAssociations",
    })
end

--- Returns an item iterator for listManagedNotificationChannelAssociations.
function M.items_list_managed_notification_channel_associations(client, input)
    return paginator.items(client, "listManagedNotificationChannelAssociations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "channelAssociations",
    })
end

--- Returns a page iterator for listManagedNotificationChildEvents.
function M.pages_list_managed_notification_child_events(client, input)
    return paginator.pages(client, "listManagedNotificationChildEvents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "managedNotificationChildEvents",
    })
end

--- Returns an item iterator for listManagedNotificationChildEvents.
function M.items_list_managed_notification_child_events(client, input)
    return paginator.items(client, "listManagedNotificationChildEvents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "managedNotificationChildEvents",
    })
end

--- Returns a page iterator for listManagedNotificationConfigurations.
function M.pages_list_managed_notification_configurations(client, input)
    return paginator.pages(client, "listManagedNotificationConfigurations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "managedNotificationConfigurations",
    })
end

--- Returns an item iterator for listManagedNotificationConfigurations.
function M.items_list_managed_notification_configurations(client, input)
    return paginator.items(client, "listManagedNotificationConfigurations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "managedNotificationConfigurations",
    })
end

--- Returns a page iterator for listManagedNotificationEvents.
function M.pages_list_managed_notification_events(client, input)
    return paginator.pages(client, "listManagedNotificationEvents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "managedNotificationEvents",
    })
end

--- Returns an item iterator for listManagedNotificationEvents.
function M.items_list_managed_notification_events(client, input)
    return paginator.items(client, "listManagedNotificationEvents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "managedNotificationEvents",
    })
end

--- Returns a page iterator for listMemberAccounts.
function M.pages_list_member_accounts(client, input)
    return paginator.pages(client, "listMemberAccounts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "memberAccounts",
    })
end

--- Returns an item iterator for listMemberAccounts.
function M.items_list_member_accounts(client, input)
    return paginator.items(client, "listMemberAccounts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "memberAccounts",
    })
end

--- Returns a page iterator for listNotificationConfigurations.
function M.pages_list_notification_configurations(client, input)
    return paginator.pages(client, "listNotificationConfigurations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "notificationConfigurations",
    })
end

--- Returns an item iterator for listNotificationConfigurations.
function M.items_list_notification_configurations(client, input)
    return paginator.items(client, "listNotificationConfigurations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "notificationConfigurations",
    })
end

--- Returns a page iterator for listNotificationEvents.
function M.pages_list_notification_events(client, input)
    return paginator.pages(client, "listNotificationEvents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "notificationEvents",
    })
end

--- Returns an item iterator for listNotificationEvents.
function M.items_list_notification_events(client, input)
    return paginator.items(client, "listNotificationEvents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "notificationEvents",
    })
end

--- Returns a page iterator for listNotificationHubs.
function M.pages_list_notification_hubs(client, input)
    return paginator.pages(client, "listNotificationHubs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "notificationHubs",
    })
end

--- Returns an item iterator for listNotificationHubs.
function M.items_list_notification_hubs(client, input)
    return paginator.items(client, "listNotificationHubs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "notificationHubs",
    })
end

--- Returns a page iterator for listOrganizationalUnits.
function M.pages_list_organizational_units(client, input)
    return paginator.pages(client, "listOrganizationalUnits", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "organizationalUnits",
    })
end

--- Returns an item iterator for listOrganizationalUnits.
function M.items_list_organizational_units(client, input)
    return paginator.items(client, "listOrganizationalUnits", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "organizationalUnits",
    })
end

return M
