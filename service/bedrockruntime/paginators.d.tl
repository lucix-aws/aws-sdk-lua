local record M
    pages_list_async_invokes: function(client: table, input: table): function(): table, table
    items_list_async_invokes: function(client: table, input: table): function(): any
end

return M
