local record M
    pages_list_addon_instances: function(client: table, input: table): function(): table, table
    items_list_addon_instances: function(client: table, input: table): function(): any
    pages_list_addon_subscriptions: function(client: table, input: table): function(): table, table
    items_list_addon_subscriptions: function(client: table, input: table): function(): any
    pages_list_address_list_import_jobs: function(client: table, input: table): function(): table, table
    items_list_address_list_import_jobs: function(client: table, input: table): function(): any
    pages_list_address_lists: function(client: table, input: table): function(): table, table
    items_list_address_lists: function(client: table, input: table): function(): any
    pages_list_archive_exports: function(client: table, input: table): function(): table, table
    items_list_archive_exports: function(client: table, input: table): function(): any
    pages_list_archive_searches: function(client: table, input: table): function(): table, table
    items_list_archive_searches: function(client: table, input: table): function(): any
    pages_list_archives: function(client: table, input: table): function(): table, table
    items_list_archives: function(client: table, input: table): function(): any
    pages_list_ingress_points: function(client: table, input: table): function(): table, table
    items_list_ingress_points: function(client: table, input: table): function(): any
    pages_list_members_of_address_list: function(client: table, input: table): function(): table, table
    items_list_members_of_address_list: function(client: table, input: table): function(): any
    pages_list_relays: function(client: table, input: table): function(): table, table
    items_list_relays: function(client: table, input: table): function(): any
    pages_list_rule_sets: function(client: table, input: table): function(): table, table
    items_list_rule_sets: function(client: table, input: table): function(): any
    pages_list_traffic_policies: function(client: table, input: table): function(): table, table
    items_list_traffic_policies: function(client: table, input: table): function(): any
end

return M
