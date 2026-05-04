local record M
    pages_list_configuration_managers: function(client: table, input: table): function(): table, table
    items_list_configuration_managers: function(client: table, input: table): function(): any
    pages_list_configurations: function(client: table, input: table): function(): table, table
    items_list_configurations: function(client: table, input: table): function(): any
end

return M
