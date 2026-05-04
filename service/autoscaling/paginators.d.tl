local record M
    pages_describe_auto_scaling_groups: function(client: table, input: table): function(): table, table
    items_describe_auto_scaling_groups: function(client: table, input: table): function(): any
    pages_describe_auto_scaling_instances: function(client: table, input: table): function(): table, table
    items_describe_auto_scaling_instances: function(client: table, input: table): function(): any
    pages_describe_instance_refreshes: function(client: table, input: table): function(): table, table
    pages_describe_launch_configurations: function(client: table, input: table): function(): table, table
    items_describe_launch_configurations: function(client: table, input: table): function(): any
    pages_describe_load_balancer_target_groups: function(client: table, input: table): function(): table, table
    pages_describe_load_balancers: function(client: table, input: table): function(): table, table
    pages_describe_notification_configurations: function(client: table, input: table): function(): table, table
    items_describe_notification_configurations: function(client: table, input: table): function(): any
    pages_describe_policies: function(client: table, input: table): function(): table, table
    items_describe_policies: function(client: table, input: table): function(): any
    pages_describe_scaling_activities: function(client: table, input: table): function(): table, table
    items_describe_scaling_activities: function(client: table, input: table): function(): any
    pages_describe_scheduled_actions: function(client: table, input: table): function(): table, table
    items_describe_scheduled_actions: function(client: table, input: table): function(): any
    pages_describe_tags: function(client: table, input: table): function(): table, table
    items_describe_tags: function(client: table, input: table): function(): any
    pages_describe_traffic_sources: function(client: table, input: table): function(): table, table
    pages_describe_warm_pool: function(client: table, input: table): function(): table, table
    items_describe_warm_pool: function(client: table, input: table): function(): any
end

return M
