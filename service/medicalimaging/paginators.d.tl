local record M
    pages_list_d_i_c_o_m_import_jobs: function(client: table, input: table): function(): table, table
    items_list_d_i_c_o_m_import_jobs: function(client: table, input: table): function(): any
    pages_list_datastores: function(client: table, input: table): function(): table, table
    items_list_datastores: function(client: table, input: table): function(): any
    pages_list_image_set_versions: function(client: table, input: table): function(): table, table
    items_list_image_set_versions: function(client: table, input: table): function(): any
    pages_search_image_sets: function(client: table, input: table): function(): table, table
    items_search_image_sets: function(client: table, input: table): function(): any
end

return M
