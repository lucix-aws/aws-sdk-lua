local record M
    pages_describe_scalable_targets: function(client: table, input: table): function(): table, table
    items_describe_scalable_targets: function(client: table, input: table): function(): any
    pages_describe_scaling_activities: function(client: table, input: table): function(): table, table
    items_describe_scaling_activities: function(client: table, input: table): function(): any
    pages_describe_scaling_policies: function(client: table, input: table): function(): table, table
    items_describe_scaling_policies: function(client: table, input: table): function(): any
    pages_describe_scheduled_actions: function(client: table, input: table): function(): table, table
    items_describe_scheduled_actions: function(client: table, input: table): function(): any
end

return M
