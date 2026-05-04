local record M
    pages_list_acts: function(client: table, input: table): function(): table, table
    items_list_acts: function(client: table, input: table): function(): any
    pages_list_sessions: function(client: table, input: table): function(): table, table
    items_list_sessions: function(client: table, input: table): function(): any
    pages_list_workflow_definitions: function(client: table, input: table): function(): table, table
    items_list_workflow_definitions: function(client: table, input: table): function(): any
    pages_list_workflow_runs: function(client: table, input: table): function(): table, table
    items_list_workflow_runs: function(client: table, input: table): function(): any
end

return M
