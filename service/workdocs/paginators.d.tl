local record M
    pages_describe_activities: function(client: table, input: table): function(): table, table
    items_describe_activities: function(client: table, input: table): function(): any
    pages_describe_comments: function(client: table, input: table): function(): table, table
    items_describe_comments: function(client: table, input: table): function(): any
    pages_describe_document_versions: function(client: table, input: table): function(): table, table
    items_describe_document_versions: function(client: table, input: table): function(): any
    pages_describe_folder_contents: function(client: table, input: table): function(): table, table
    pages_describe_groups: function(client: table, input: table): function(): table, table
    items_describe_groups: function(client: table, input: table): function(): any
    pages_describe_notification_subscriptions: function(client: table, input: table): function(): table, table
    items_describe_notification_subscriptions: function(client: table, input: table): function(): any
    pages_describe_resource_permissions: function(client: table, input: table): function(): table, table
    items_describe_resource_permissions: function(client: table, input: table): function(): any
    pages_describe_root_folders: function(client: table, input: table): function(): table, table
    items_describe_root_folders: function(client: table, input: table): function(): any
    pages_describe_users: function(client: table, input: table): function(): table, table
    items_describe_users: function(client: table, input: table): function(): any
    pages_search_resources: function(client: table, input: table): function(): table, table
    items_search_resources: function(client: table, input: table): function(): any
end

return M
