local record M
    pages_list_channel_bans: function(client: table, input: table): function(): table, table
    pages_list_channel_flows: function(client: table, input: table): function(): table, table
    pages_list_channel_memberships: function(client: table, input: table): function(): table, table
    pages_list_channel_memberships_for_app_instance_user: function(client: table, input: table): function(): table, table
    pages_list_channel_messages: function(client: table, input: table): function(): table, table
    pages_list_channel_moderators: function(client: table, input: table): function(): table, table
    pages_list_channels: function(client: table, input: table): function(): table, table
    pages_list_channels_associated_with_channel_flow: function(client: table, input: table): function(): table, table
    pages_list_channels_moderated_by_app_instance_user: function(client: table, input: table): function(): table, table
    pages_list_sub_channels: function(client: table, input: table): function(): table, table
    pages_search_channels: function(client: table, input: table): function(): table, table
end

return M
