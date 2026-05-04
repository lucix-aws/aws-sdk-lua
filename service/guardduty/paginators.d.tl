local record M
    pages_describe_malware_scans: function(client: table, input: table): function(): table, table
    items_describe_malware_scans: function(client: table, input: table): function(): any
    pages_describe_organization_configuration: function(client: table, input: table): function(): table, table
    pages_get_usage_statistics: function(client: table, input: table): function(): table, table
    pages_list_coverage: function(client: table, input: table): function(): table, table
    items_list_coverage: function(client: table, input: table): function(): any
    pages_list_detectors: function(client: table, input: table): function(): table, table
    items_list_detectors: function(client: table, input: table): function(): any
    pages_list_filters: function(client: table, input: table): function(): table, table
    items_list_filters: function(client: table, input: table): function(): any
    pages_list_findings: function(client: table, input: table): function(): table, table
    items_list_findings: function(client: table, input: table): function(): any
    pages_list_i_p_sets: function(client: table, input: table): function(): table, table
    items_list_i_p_sets: function(client: table, input: table): function(): any
    pages_list_invitations: function(client: table, input: table): function(): table, table
    items_list_invitations: function(client: table, input: table): function(): any
    pages_list_malware_scans: function(client: table, input: table): function(): table, table
    items_list_malware_scans: function(client: table, input: table): function(): any
    pages_list_members: function(client: table, input: table): function(): table, table
    items_list_members: function(client: table, input: table): function(): any
    pages_list_organization_admin_accounts: function(client: table, input: table): function(): table, table
    items_list_organization_admin_accounts: function(client: table, input: table): function(): any
    pages_list_publishing_destinations: function(client: table, input: table): function(): table, table
    pages_list_threat_entity_sets: function(client: table, input: table): function(): table, table
    items_list_threat_entity_sets: function(client: table, input: table): function(): any
    pages_list_threat_intel_sets: function(client: table, input: table): function(): table, table
    items_list_threat_intel_sets: function(client: table, input: table): function(): any
    pages_list_trusted_entity_sets: function(client: table, input: table): function(): table, table
    items_list_trusted_entity_sets: function(client: table, input: table): function(): any
end

return M
