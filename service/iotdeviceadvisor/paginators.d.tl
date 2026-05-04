local record M
    pages_list_suite_definitions: function(client: table, input: table): function(): table, table
    pages_list_suite_runs: function(client: table, input: table): function(): table, table
end

return M
