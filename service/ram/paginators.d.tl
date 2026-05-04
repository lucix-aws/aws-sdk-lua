local record M
    pages_get_resource_policies: function(client: table, input: table): function(): table, table
    pages_get_resource_share_associations: function(client: table, input: table): function(): table, table
    pages_get_resource_share_invitations: function(client: table, input: table): function(): table, table
    pages_get_resource_shares: function(client: table, input: table): function(): table, table
    pages_list_pending_invitation_resources: function(client: table, input: table): function(): table, table
    pages_list_permission_associations: function(client: table, input: table): function(): table, table
    pages_list_permission_versions: function(client: table, input: table): function(): table, table
    pages_list_permissions: function(client: table, input: table): function(): table, table
    pages_list_principals: function(client: table, input: table): function(): table, table
    pages_list_replace_permission_associations_work: function(client: table, input: table): function(): table, table
    pages_list_resource_share_permissions: function(client: table, input: table): function(): table, table
    pages_list_resource_types: function(client: table, input: table): function(): table, table
    pages_list_resources: function(client: table, input: table): function(): table, table
    pages_list_source_associations: function(client: table, input: table): function(): table, table
    items_list_source_associations: function(client: table, input: table): function(): any
end

return M
