local record M
    pages_describe_backups: function(client: table, input: table): function(): table, table
    pages_describe_data_repository_associations: function(client: table, input: table): function(): table, table
    pages_describe_data_repository_tasks: function(client: table, input: table): function(): table, table
    pages_describe_file_caches: function(client: table, input: table): function(): table, table
    pages_describe_file_system_aliases: function(client: table, input: table): function(): table, table
    pages_describe_file_systems: function(client: table, input: table): function(): table, table
    pages_describe_s3_access_point_attachments: function(client: table, input: table): function(): table, table
    items_describe_s3_access_point_attachments: function(client: table, input: table): function(): any
    pages_describe_snapshots: function(client: table, input: table): function(): table, table
    items_describe_snapshots: function(client: table, input: table): function(): any
    pages_describe_storage_virtual_machines: function(client: table, input: table): function(): table, table
    items_describe_storage_virtual_machines: function(client: table, input: table): function(): any
    pages_describe_volumes: function(client: table, input: table): function(): table, table
    items_describe_volumes: function(client: table, input: table): function(): any
    pages_list_tags_for_resource: function(client: table, input: table): function(): table, table
end

return M
