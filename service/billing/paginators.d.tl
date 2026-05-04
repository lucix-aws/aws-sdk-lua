local record M
    pages_list_billing_views: function(client: table, input: table): function(): table, table
    items_list_billing_views: function(client: table, input: table): function(): any
    pages_list_source_views_for_billing_view: function(client: table, input: table): function(): table, table
    items_list_source_views_for_billing_view: function(client: table, input: table): function(): any
end

return M
