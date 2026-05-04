local record M
    pages_list_accounts: function(client: table, input: table): function(): table, table
    pages_list_bots: function(client: table, input: table): function(): table, table
    pages_list_phone_number_orders: function(client: table, input: table): function(): table, table
    pages_list_phone_numbers: function(client: table, input: table): function(): table, table
    pages_list_room_memberships: function(client: table, input: table): function(): table, table
    pages_list_rooms: function(client: table, input: table): function(): table, table
    pages_list_users: function(client: table, input: table): function(): table, table
    pages_search_available_phone_numbers: function(client: table, input: table): function(): table, table
end

return M
