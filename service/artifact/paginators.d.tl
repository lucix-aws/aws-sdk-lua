local record M
    pages_list_customer_agreements: function(client: table, input: table): function(): table, table
    items_list_customer_agreements: function(client: table, input: table): function(): any
    pages_list_report_versions: function(client: table, input: table): function(): table, table
    items_list_report_versions: function(client: table, input: table): function(): any
    pages_list_reports: function(client: table, input: table): function(): table, table
    items_list_reports: function(client: table, input: table): function(): any
end

return M
