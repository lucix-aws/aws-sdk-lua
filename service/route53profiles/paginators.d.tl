local record M
    pages_list_profile_associations: function(client: table, input: table): function(): table, table
    items_list_profile_associations: function(client: table, input: table): function(): any
    pages_list_profile_resource_associations: function(client: table, input: table): function(): table, table
    items_list_profile_resource_associations: function(client: table, input: table): function(): any
    pages_list_profiles: function(client: table, input: table): function(): table, table
    items_list_profiles: function(client: table, input: table): function(): any
end

return M
