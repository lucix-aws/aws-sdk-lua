local record M
    pages_describe_affected_accounts_for_organization: function(client: table, input: table): function(): table, table
    items_describe_affected_accounts_for_organization: function(client: table, input: table): function(): any
    pages_describe_affected_entities: function(client: table, input: table): function(): table, table
    items_describe_affected_entities: function(client: table, input: table): function(): any
    pages_describe_affected_entities_for_organization: function(client: table, input: table): function(): table, table
    items_describe_affected_entities_for_organization: function(client: table, input: table): function(): any
    pages_describe_event_aggregates: function(client: table, input: table): function(): table, table
    items_describe_event_aggregates: function(client: table, input: table): function(): any
    pages_describe_event_types: function(client: table, input: table): function(): table, table
    items_describe_event_types: function(client: table, input: table): function(): any
    pages_describe_events: function(client: table, input: table): function(): table, table
    items_describe_events: function(client: table, input: table): function(): any
    pages_describe_events_for_organization: function(client: table, input: table): function(): table, table
    items_describe_events_for_organization: function(client: table, input: table): function(): any
end

return M
