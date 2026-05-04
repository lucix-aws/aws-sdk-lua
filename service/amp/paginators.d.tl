local record M
    pages_list_anomaly_detectors: function(client: table, input: table): function(): table, table
    items_list_anomaly_detectors: function(client: table, input: table): function(): any
    pages_list_rule_groups_namespaces: function(client: table, input: table): function(): table, table
    items_list_rule_groups_namespaces: function(client: table, input: table): function(): any
    pages_list_scrapers: function(client: table, input: table): function(): table, table
    items_list_scrapers: function(client: table, input: table): function(): any
    pages_list_workspaces: function(client: table, input: table): function(): table, table
    items_list_workspaces: function(client: table, input: table): function(): any
end

return M
