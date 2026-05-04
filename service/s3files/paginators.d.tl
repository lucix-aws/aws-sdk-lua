local record M
    pages_list_access_points: function(client: table, input: table): function(): table, table
    items_list_access_points: function(client: table, input: table): function(): any
    pages_list_file_systems: function(client: table, input: table): function(): table, table
    items_list_file_systems: function(client: table, input: table): function(): any
    pages_list_mount_targets: function(client: table, input: table): function(): table, table
    items_list_mount_targets: function(client: table, input: table): function(): any
    pages_list_tags_for_resource: function(client: table, input: table): function(): table, table
    items_list_tags_for_resource: function(client: table, input: table): function(): any
end

return M
