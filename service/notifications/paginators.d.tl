local record M
    pages_list_channels: function(client: table, input: table): function(): table, table
    items_list_channels: function(client: table, input: table): function(): any
    pages_list_event_rules: function(client: table, input: table): function(): table, table
    items_list_event_rules: function(client: table, input: table): function(): any
    pages_list_managed_notification_channel_associations: function(client: table, input: table): function(): table, table
    items_list_managed_notification_channel_associations: function(client: table, input: table): function(): any
    pages_list_managed_notification_child_events: function(client: table, input: table): function(): table, table
    items_list_managed_notification_child_events: function(client: table, input: table): function(): any
    pages_list_managed_notification_configurations: function(client: table, input: table): function(): table, table
    items_list_managed_notification_configurations: function(client: table, input: table): function(): any
    pages_list_managed_notification_events: function(client: table, input: table): function(): table, table
    items_list_managed_notification_events: function(client: table, input: table): function(): any
    pages_list_member_accounts: function(client: table, input: table): function(): table, table
    items_list_member_accounts: function(client: table, input: table): function(): any
    pages_list_notification_configurations: function(client: table, input: table): function(): table, table
    items_list_notification_configurations: function(client: table, input: table): function(): any
    pages_list_notification_events: function(client: table, input: table): function(): table, table
    items_list_notification_events: function(client: table, input: table): function(): any
    pages_list_notification_hubs: function(client: table, input: table): function(): table, table
    items_list_notification_hubs: function(client: table, input: table): function(): any
    pages_list_organizational_units: function(client: table, input: table): function(): table, table
    items_list_organizational_units: function(client: table, input: table): function(): any
end

return M
