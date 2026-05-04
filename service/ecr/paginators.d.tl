local record M
    pages_describe_image_scan_findings: function(client: table, input: table): function(): table, table
    pages_describe_images: function(client: table, input: table): function(): table, table
    items_describe_images: function(client: table, input: table): function(): any
    pages_describe_pull_through_cache_rules: function(client: table, input: table): function(): table, table
    items_describe_pull_through_cache_rules: function(client: table, input: table): function(): any
    pages_describe_repositories: function(client: table, input: table): function(): table, table
    items_describe_repositories: function(client: table, input: table): function(): any
    pages_describe_repository_creation_templates: function(client: table, input: table): function(): table, table
    items_describe_repository_creation_templates: function(client: table, input: table): function(): any
    pages_get_lifecycle_policy_preview: function(client: table, input: table): function(): table, table
    items_get_lifecycle_policy_preview: function(client: table, input: table): function(): any
    pages_list_images: function(client: table, input: table): function(): table, table
    items_list_images: function(client: table, input: table): function(): any
end

return M
