local record M
    pages_describe_table: function(client: table, input: table): function(): table, table
    items_describe_table: function(client: table, input: table): function(): any
    pages_get_statement_result: function(client: table, input: table): function(): table, table
    items_get_statement_result: function(client: table, input: table): function(): any
    pages_get_statement_result_v2: function(client: table, input: table): function(): table, table
    items_get_statement_result_v2: function(client: table, input: table): function(): any
    pages_list_databases: function(client: table, input: table): function(): table, table
    items_list_databases: function(client: table, input: table): function(): any
    pages_list_schemas: function(client: table, input: table): function(): table, table
    items_list_schemas: function(client: table, input: table): function(): any
    pages_list_statements: function(client: table, input: table): function(): table, table
    items_list_statements: function(client: table, input: table): function(): any
    pages_list_tables: function(client: table, input: table): function(): table, table
    items_list_tables: function(client: table, input: table): function(): any
end

return M
