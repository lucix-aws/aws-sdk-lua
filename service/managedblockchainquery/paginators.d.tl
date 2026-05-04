local record M
    pages_list_asset_contracts: function(client: table, input: table): function(): table, table
    items_list_asset_contracts: function(client: table, input: table): function(): any
    pages_list_filtered_transaction_events: function(client: table, input: table): function(): table, table
    items_list_filtered_transaction_events: function(client: table, input: table): function(): any
    pages_list_token_balances: function(client: table, input: table): function(): table, table
    items_list_token_balances: function(client: table, input: table): function(): any
    pages_list_transaction_events: function(client: table, input: table): function(): table, table
    items_list_transaction_events: function(client: table, input: table): function(): any
    pages_list_transactions: function(client: table, input: table): function(): table, table
    items_list_transactions: function(client: table, input: table): function(): any
end

return M
