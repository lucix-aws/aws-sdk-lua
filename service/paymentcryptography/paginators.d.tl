local record M
    pages_list_aliases: function(client: table, input: table): function(): table, table
    items_list_aliases: function(client: table, input: table): function(): any
    pages_list_keys: function(client: table, input: table): function(): table, table
    items_list_keys: function(client: table, input: table): function(): any
    pages_list_tags_for_resource: function(client: table, input: table): function(): table, table
    items_list_tags_for_resource: function(client: table, input: table): function(): any
end

return M
