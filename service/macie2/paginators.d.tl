local record M
    pages_describe_buckets: function(client: table, input: table): function(): table, table
    items_describe_buckets: function(client: table, input: table): function(): any
    pages_get_usage_statistics: function(client: table, input: table): function(): table, table
    items_get_usage_statistics: function(client: table, input: table): function(): any
    pages_list_allow_lists: function(client: table, input: table): function(): table, table
    items_list_allow_lists: function(client: table, input: table): function(): any
    pages_list_automated_discovery_accounts: function(client: table, input: table): function(): table, table
    items_list_automated_discovery_accounts: function(client: table, input: table): function(): any
    pages_list_classification_jobs: function(client: table, input: table): function(): table, table
    items_list_classification_jobs: function(client: table, input: table): function(): any
    pages_list_classification_scopes: function(client: table, input: table): function(): table, table
    items_list_classification_scopes: function(client: table, input: table): function(): any
    pages_list_custom_data_identifiers: function(client: table, input: table): function(): table, table
    items_list_custom_data_identifiers: function(client: table, input: table): function(): any
    pages_list_findings: function(client: table, input: table): function(): table, table
    items_list_findings: function(client: table, input: table): function(): any
    pages_list_findings_filters: function(client: table, input: table): function(): table, table
    items_list_findings_filters: function(client: table, input: table): function(): any
    pages_list_invitations: function(client: table, input: table): function(): table, table
    items_list_invitations: function(client: table, input: table): function(): any
    pages_list_managed_data_identifiers: function(client: table, input: table): function(): table, table
    items_list_managed_data_identifiers: function(client: table, input: table): function(): any
    pages_list_members: function(client: table, input: table): function(): table, table
    items_list_members: function(client: table, input: table): function(): any
    pages_list_organization_admin_accounts: function(client: table, input: table): function(): table, table
    items_list_organization_admin_accounts: function(client: table, input: table): function(): any
    pages_list_resource_profile_artifacts: function(client: table, input: table): function(): table, table
    items_list_resource_profile_artifacts: function(client: table, input: table): function(): any
    pages_list_resource_profile_detections: function(client: table, input: table): function(): table, table
    items_list_resource_profile_detections: function(client: table, input: table): function(): any
    pages_list_sensitivity_inspection_templates: function(client: table, input: table): function(): table, table
    items_list_sensitivity_inspection_templates: function(client: table, input: table): function(): any
    pages_search_resources: function(client: table, input: table): function(): table, table
    items_search_resources: function(client: table, input: table): function(): any
end

return M
