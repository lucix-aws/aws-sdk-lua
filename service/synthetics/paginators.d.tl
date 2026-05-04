local record M
    pages_describe_canaries: function(client: table, input: table): function(): table, table
    pages_describe_canaries_last_run: function(client: table, input: table): function(): table, table
    pages_describe_runtime_versions: function(client: table, input: table): function(): table, table
    pages_get_canary_runs: function(client: table, input: table): function(): table, table
    pages_list_associated_groups: function(client: table, input: table): function(): table, table
    pages_list_group_resources: function(client: table, input: table): function(): table, table
    pages_list_groups: function(client: table, input: table): function(): table, table
end

return M
