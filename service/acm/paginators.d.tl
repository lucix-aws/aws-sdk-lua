local record M
    pages_list_certificates: function(client: table, input: table): function(): table, table
    items_list_certificates: function(client: table, input: table): function(): any
    pages_search_certificates: function(client: table, input: table): function(): table, table
    items_search_certificates: function(client: table, input: table): function(): any
end

return M
