local record M
    pages_list_adapter_versions: function(client: table, input: table): function(): table, table
    items_list_adapter_versions: function(client: table, input: table): function(): any
    pages_list_adapters: function(client: table, input: table): function(): table, table
    items_list_adapters: function(client: table, input: table): function(): any
end

return M
