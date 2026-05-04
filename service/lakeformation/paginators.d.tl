local record M
    pages_get_effective_permissions_for_path: function(client: table, input: table): function(): table, table
    pages_get_table_objects: function(client: table, input: table): function(): table, table
    pages_get_work_units: function(client: table, input: table): function(): table, table
    items_get_work_units: function(client: table, input: table): function(): any
    pages_list_data_cells_filter: function(client: table, input: table): function(): table, table
    items_list_data_cells_filter: function(client: table, input: table): function(): any
    pages_list_l_f_tag_expressions: function(client: table, input: table): function(): table, table
    items_list_l_f_tag_expressions: function(client: table, input: table): function(): any
    pages_list_l_f_tags: function(client: table, input: table): function(): table, table
    items_list_l_f_tags: function(client: table, input: table): function(): any
    pages_list_lake_formation_opt_ins: function(client: table, input: table): function(): table, table
    pages_list_permissions: function(client: table, input: table): function(): table, table
    pages_list_resources: function(client: table, input: table): function(): table, table
    pages_list_table_storage_optimizers: function(client: table, input: table): function(): table, table
    pages_list_transactions: function(client: table, input: table): function(): table, table
    pages_search_databases_by_l_f_tags: function(client: table, input: table): function(): table, table
    items_search_databases_by_l_f_tags: function(client: table, input: table): function(): any
    pages_search_tables_by_l_f_tags: function(client: table, input: table): function(): table, table
    items_search_tables_by_l_f_tags: function(client: table, input: table): function(): any
end

return M
