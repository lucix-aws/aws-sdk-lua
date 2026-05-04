local record M
    pages_get_findings_report_account_summary: function(client: table, input: table): function(): table, table
    pages_list_findings_reports: function(client: table, input: table): function(): table, table
    pages_list_profile_times: function(client: table, input: table): function(): table, table
    items_list_profile_times: function(client: table, input: table): function(): any
    pages_list_profiling_groups: function(client: table, input: table): function(): table, table
end

return M
