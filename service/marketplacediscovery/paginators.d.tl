local record M
    pages_get_offer_terms: function(client: table, input: table): function(): table, table
    items_get_offer_terms: function(client: table, input: table): function(): any
    pages_list_fulfillment_options: function(client: table, input: table): function(): table, table
    items_list_fulfillment_options: function(client: table, input: table): function(): any
    pages_list_purchase_options: function(client: table, input: table): function(): table, table
    items_list_purchase_options: function(client: table, input: table): function(): any
    pages_search_facets: function(client: table, input: table): function(): table, table
    items_search_facets: function(client: table, input: table): function(): any
    pages_search_listings: function(client: table, input: table): function(): table, table
    items_search_listings: function(client: table, input: table): function(): any
end

return M
