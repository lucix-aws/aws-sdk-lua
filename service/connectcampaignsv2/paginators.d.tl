local record M
    pages_list_campaigns: function(client: table, input: table): function(): table, table
    items_list_campaigns: function(client: table, input: table): function(): any
    pages_list_connect_instance_integrations: function(client: table, input: table): function(): table, table
    items_list_connect_instance_integrations: function(client: table, input: table): function(): any
end

return M
