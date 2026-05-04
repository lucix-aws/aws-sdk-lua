local record M
    pages_list_allowed_repositories_for_group: function(client: table, input: table): function(): table, table
    items_list_allowed_repositories_for_group: function(client: table, input: table): function(): any
    pages_list_associated_packages: function(client: table, input: table): function(): table, table
    items_list_associated_packages: function(client: table, input: table): function(): any
    pages_list_domains: function(client: table, input: table): function(): table, table
    items_list_domains: function(client: table, input: table): function(): any
    pages_list_package_groups: function(client: table, input: table): function(): table, table
    items_list_package_groups: function(client: table, input: table): function(): any
    pages_list_package_version_assets: function(client: table, input: table): function(): table, table
    items_list_package_version_assets: function(client: table, input: table): function(): any
    pages_list_package_versions: function(client: table, input: table): function(): table, table
    items_list_package_versions: function(client: table, input: table): function(): any
    pages_list_packages: function(client: table, input: table): function(): table, table
    items_list_packages: function(client: table, input: table): function(): any
    pages_list_repositories: function(client: table, input: table): function(): table, table
    items_list_repositories: function(client: table, input: table): function(): any
    pages_list_repositories_in_domain: function(client: table, input: table): function(): table, table
    items_list_repositories_in_domain: function(client: table, input: table): function(): any
    pages_list_sub_package_groups: function(client: table, input: table): function(): table, table
    items_list_sub_package_groups: function(client: table, input: table): function(): any
end

return M
