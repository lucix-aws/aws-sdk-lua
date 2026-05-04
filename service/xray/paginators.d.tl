local record M
    pages_batch_get_traces: function(client: table, input: table): function(): table, table
    items_batch_get_traces: function(client: table, input: table): function(): any
    pages_get_groups: function(client: table, input: table): function(): table, table
    items_get_groups: function(client: table, input: table): function(): any
    pages_get_insight_events: function(client: table, input: table): function(): table, table
    pages_get_insight_summaries: function(client: table, input: table): function(): table, table
    pages_get_sampling_rules: function(client: table, input: table): function(): table, table
    items_get_sampling_rules: function(client: table, input: table): function(): any
    pages_get_sampling_statistic_summaries: function(client: table, input: table): function(): table, table
    items_get_sampling_statistic_summaries: function(client: table, input: table): function(): any
    pages_get_service_graph: function(client: table, input: table): function(): table, table
    items_get_service_graph: function(client: table, input: table): function(): any
    pages_get_time_series_service_statistics: function(client: table, input: table): function(): table, table
    items_get_time_series_service_statistics: function(client: table, input: table): function(): any
    pages_get_trace_graph: function(client: table, input: table): function(): table, table
    items_get_trace_graph: function(client: table, input: table): function(): any
    pages_get_trace_summaries: function(client: table, input: table): function(): table, table
    items_get_trace_summaries: function(client: table, input: table): function(): any
    pages_list_resource_policies: function(client: table, input: table): function(): table, table
    items_list_resource_policies: function(client: table, input: table): function(): any
    pages_list_tags_for_resource: function(client: table, input: table): function(): table, table
    items_list_tags_for_resource: function(client: table, input: table): function(): any
end

return M
