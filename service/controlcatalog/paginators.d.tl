local record M
    pages_list_common_controls: function(client: table, input: table): function(): table, table
    items_list_common_controls: function(client: table, input: table): function(): any
    pages_list_control_mappings: function(client: table, input: table): function(): table, table
    items_list_control_mappings: function(client: table, input: table): function(): any
    pages_list_controls: function(client: table, input: table): function(): table, table
    items_list_controls: function(client: table, input: table): function(): any
    pages_list_domains: function(client: table, input: table): function(): table, table
    items_list_domains: function(client: table, input: table): function(): any
    pages_list_objectives: function(client: table, input: table): function(): table, table
    items_list_objectives: function(client: table, input: table): function(): any
end

return M
