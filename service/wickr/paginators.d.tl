local record M
    pages_list_blocked_guest_users: function(client: table, input: table): function(): table, table
    items_list_blocked_guest_users: function(client: table, input: table): function(): any
    pages_list_bots: function(client: table, input: table): function(): table, table
    items_list_bots: function(client: table, input: table): function(): any
    pages_list_devices_for_user: function(client: table, input: table): function(): table, table
    items_list_devices_for_user: function(client: table, input: table): function(): any
    pages_list_guest_users: function(client: table, input: table): function(): table, table
    items_list_guest_users: function(client: table, input: table): function(): any
    pages_list_networks: function(client: table, input: table): function(): table, table
    items_list_networks: function(client: table, input: table): function(): any
    pages_list_security_group_users: function(client: table, input: table): function(): table, table
    items_list_security_group_users: function(client: table, input: table): function(): any
    pages_list_security_groups: function(client: table, input: table): function(): table, table
    items_list_security_groups: function(client: table, input: table): function(): any
    pages_list_users: function(client: table, input: table): function(): table, table
    items_list_users: function(client: table, input: table): function(): any
end

return M
