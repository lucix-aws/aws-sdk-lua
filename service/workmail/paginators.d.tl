local record M
    pages_list_aliases: function(client: table, input: table): function(): table, table
    pages_list_availability_configurations: function(client: table, input: table): function(): table, table
    items_list_availability_configurations: function(client: table, input: table): function(): any
    pages_list_group_members: function(client: table, input: table): function(): table, table
    pages_list_groups: function(client: table, input: table): function(): table, table
    pages_list_groups_for_entity: function(client: table, input: table): function(): table, table
    pages_list_impersonation_roles: function(client: table, input: table): function(): table, table
    pages_list_mail_domains: function(client: table, input: table): function(): table, table
    pages_list_mailbox_export_jobs: function(client: table, input: table): function(): table, table
    pages_list_mailbox_permissions: function(client: table, input: table): function(): table, table
    pages_list_mobile_device_access_overrides: function(client: table, input: table): function(): table, table
    pages_list_organizations: function(client: table, input: table): function(): table, table
    pages_list_personal_access_tokens: function(client: table, input: table): function(): table, table
    items_list_personal_access_tokens: function(client: table, input: table): function(): any
    pages_list_resource_delegates: function(client: table, input: table): function(): table, table
    pages_list_resources: function(client: table, input: table): function(): table, table
    pages_list_users: function(client: table, input: table): function(): table, table
end

return M
