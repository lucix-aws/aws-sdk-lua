local record M
    pages_list_rules: function(client: table, input: table): function(): table, table
    items_list_rules: function(client: table, input: table): function(): any
end

return M
