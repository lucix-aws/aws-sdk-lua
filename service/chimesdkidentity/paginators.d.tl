local record M
    pages_list_app_instance_admins: function(client: table, input: table): function(): table, table
    pages_list_app_instance_bots: function(client: table, input: table): function(): table, table
    pages_list_app_instance_user_endpoints: function(client: table, input: table): function(): table, table
    pages_list_app_instance_users: function(client: table, input: table): function(): table, table
    pages_list_app_instances: function(client: table, input: table): function(): table, table
end

return M
