local record M
    pages_describe_load_balancers: function(client: table, input: table): function(): table, table
    items_describe_load_balancers: function(client: table, input: table): function(): any
end

return M
