local record M
    pages_get_findings: function(client: table, input: table): function(): table, table
    items_get_findings: function(client: table, input: table): function(): any
    pages_list_findings_metrics: function(client: table, input: table): function(): table, table
    items_list_findings_metrics: function(client: table, input: table): function(): any
    pages_list_scans: function(client: table, input: table): function(): table, table
    items_list_scans: function(client: table, input: table): function(): any
end

return M
