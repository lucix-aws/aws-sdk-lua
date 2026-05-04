local record M
    pages_list_domains: function(client: table, input: table): function(): table, table
    items_list_domains: function(client: table, input: table): function(): any
    pages_list_subscriptions: function(client: table, input: table): function(): table, table
    items_list_subscriptions: function(client: table, input: table): function(): any
end

return M
