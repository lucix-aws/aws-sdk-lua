local record M
    pages_list_access_grants: function(client: table, input: table): function(): table, table
    pages_list_access_grants_instances: function(client: table, input: table): function(): table, table
    pages_list_access_grants_locations: function(client: table, input: table): function(): table, table
    pages_list_access_points: function(client: table, input: table): function(): table, table
    pages_list_access_points_for_directory_buckets: function(client: table, input: table): function(): table, table
    items_list_access_points_for_directory_buckets: function(client: table, input: table): function(): any
    pages_list_access_points_for_object_lambda: function(client: table, input: table): function(): table, table
    items_list_access_points_for_object_lambda: function(client: table, input: table): function(): any
    pages_list_caller_access_grants: function(client: table, input: table): function(): table, table
    items_list_caller_access_grants: function(client: table, input: table): function(): any
    pages_list_jobs: function(client: table, input: table): function(): table, table
    pages_list_multi_region_access_points: function(client: table, input: table): function(): table, table
    pages_list_regional_buckets: function(client: table, input: table): function(): table, table
    pages_list_storage_lens_configurations: function(client: table, input: table): function(): table, table
    pages_list_storage_lens_groups: function(client: table, input: table): function(): table, table
end

return M
