local record M
    pages_describe_alarm_history: function(client: table, input: table): function(): table, table
    items_describe_alarm_history: function(client: table, input: table): function(): any
    pages_describe_alarms: function(client: table, input: table): function(): table, table
    pages_describe_anomaly_detectors: function(client: table, input: table): function(): table, table
    items_describe_anomaly_detectors: function(client: table, input: table): function(): any
    pages_describe_insight_rules: function(client: table, input: table): function(): table, table
    pages_get_metric_data: function(client: table, input: table): function(): table, table
    pages_list_alarm_mute_rules: function(client: table, input: table): function(): table, table
    items_list_alarm_mute_rules: function(client: table, input: table): function(): any
    pages_list_dashboards: function(client: table, input: table): function(): table, table
    items_list_dashboards: function(client: table, input: table): function(): any
    pages_list_managed_insight_rules: function(client: table, input: table): function(): table, table
    pages_list_metric_streams: function(client: table, input: table): function(): table, table
    pages_list_metrics: function(client: table, input: table): function(): table, table
end

return M
