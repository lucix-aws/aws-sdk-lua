local record M
    pages_describe_organization_resource_collection_health: function(client: table, input: table): function(): table, table
    pages_describe_resource_collection_health: function(client: table, input: table): function(): table, table
    pages_get_cost_estimation: function(client: table, input: table): function(): table, table
    pages_get_resource_collection: function(client: table, input: table): function(): table, table
    pages_list_anomalies_for_insight: function(client: table, input: table): function(): table, table
    pages_list_anomalous_log_groups: function(client: table, input: table): function(): table, table
    pages_list_events: function(client: table, input: table): function(): table, table
    items_list_events: function(client: table, input: table): function(): any
    pages_list_insights: function(client: table, input: table): function(): table, table
    pages_list_monitored_resources: function(client: table, input: table): function(): table, table
    pages_list_notification_channels: function(client: table, input: table): function(): table, table
    items_list_notification_channels: function(client: table, input: table): function(): any
    pages_list_organization_insights: function(client: table, input: table): function(): table, table
    pages_list_recommendations: function(client: table, input: table): function(): table, table
    items_list_recommendations: function(client: table, input: table): function(): any
    pages_search_insights: function(client: table, input: table): function(): table, table
    pages_search_organization_insights: function(client: table, input: table): function(): table, table
end

return M
