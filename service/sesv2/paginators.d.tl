local record M
    pages_get_dedicated_ips: function(client: table, input: table): function(): table, table
    pages_list_configuration_sets: function(client: table, input: table): function(): table, table
    pages_list_contact_lists: function(client: table, input: table): function(): table, table
    pages_list_contacts: function(client: table, input: table): function(): table, table
    pages_list_custom_verification_email_templates: function(client: table, input: table): function(): table, table
    pages_list_dedicated_ip_pools: function(client: table, input: table): function(): table, table
    pages_list_deliverability_test_reports: function(client: table, input: table): function(): table, table
    pages_list_domain_deliverability_campaigns: function(client: table, input: table): function(): table, table
    pages_list_email_identities: function(client: table, input: table): function(): table, table
    pages_list_email_templates: function(client: table, input: table): function(): table, table
    pages_list_export_jobs: function(client: table, input: table): function(): table, table
    pages_list_import_jobs: function(client: table, input: table): function(): table, table
    pages_list_multi_region_endpoints: function(client: table, input: table): function(): table, table
    items_list_multi_region_endpoints: function(client: table, input: table): function(): any
    pages_list_recommendations: function(client: table, input: table): function(): table, table
    pages_list_reputation_entities: function(client: table, input: table): function(): table, table
    items_list_reputation_entities: function(client: table, input: table): function(): any
    pages_list_resource_tenants: function(client: table, input: table): function(): table, table
    items_list_resource_tenants: function(client: table, input: table): function(): any
    pages_list_suppressed_destinations: function(client: table, input: table): function(): table, table
    pages_list_tenant_resources: function(client: table, input: table): function(): table, table
    items_list_tenant_resources: function(client: table, input: table): function(): any
    pages_list_tenants: function(client: table, input: table): function(): table, table
    items_list_tenants: function(client: table, input: table): function(): any
end

return M
