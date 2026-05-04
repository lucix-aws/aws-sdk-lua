local record M
    pages_list_applications: function(client: table, input: table): function(): table, table
    pages_list_components: function(client: table, input: table): function(): table, table
    pages_list_configuration_history: function(client: table, input: table): function(): table, table
    pages_list_log_pattern_sets: function(client: table, input: table): function(): table, table
    pages_list_log_patterns: function(client: table, input: table): function(): table, table
    pages_list_problems: function(client: table, input: table): function(): table, table
    pages_list_workloads: function(client: table, input: table): function(): table, table
end

return M
