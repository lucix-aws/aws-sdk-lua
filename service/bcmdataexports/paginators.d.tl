local record M
    pages_list_executions: function(client: table, input: table): function(): table, table
    items_list_executions: function(client: table, input: table): function(): any
    pages_list_exports: function(client: table, input: table): function(): table, table
    items_list_exports: function(client: table, input: table): function(): any
    pages_list_tables: function(client: table, input: table): function(): table, table
    items_list_tables: function(client: table, input: table): function(): any
end

return M
