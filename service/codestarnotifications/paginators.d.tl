local record M
    pages_list_event_types: function(client: table, input: table): function(): table, table
    items_list_event_types: function(client: table, input: table): function(): any
    pages_list_notification_rules: function(client: table, input: table): function(): table, table
    items_list_notification_rules: function(client: table, input: table): function(): any
    pages_list_targets: function(client: table, input: table): function(): table, table
    items_list_targets: function(client: table, input: table): function(): any
end

return M
