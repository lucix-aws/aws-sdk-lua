local record M
    pages_describe_aggregate_compliance_by_config_rules: function(client: table, input: table): function(): table, table
    pages_describe_aggregate_compliance_by_conformance_packs: function(client: table, input: table): function(): table, table
    items_describe_aggregate_compliance_by_conformance_packs: function(client: table, input: table): function(): any
    pages_describe_aggregation_authorizations: function(client: table, input: table): function(): table, table
    items_describe_aggregation_authorizations: function(client: table, input: table): function(): any
    pages_describe_compliance_by_config_rule: function(client: table, input: table): function(): table, table
    items_describe_compliance_by_config_rule: function(client: table, input: table): function(): any
    pages_describe_compliance_by_resource: function(client: table, input: table): function(): table, table
    items_describe_compliance_by_resource: function(client: table, input: table): function(): any
    pages_describe_config_rule_evaluation_status: function(client: table, input: table): function(): table, table
    items_describe_config_rule_evaluation_status: function(client: table, input: table): function(): any
    pages_describe_config_rules: function(client: table, input: table): function(): table, table
    items_describe_config_rules: function(client: table, input: table): function(): any
    pages_describe_configuration_aggregator_sources_status: function(client: table, input: table): function(): table, table
    items_describe_configuration_aggregator_sources_status: function(client: table, input: table): function(): any
    pages_describe_configuration_aggregators: function(client: table, input: table): function(): table, table
    items_describe_configuration_aggregators: function(client: table, input: table): function(): any
    pages_describe_conformance_pack_compliance: function(client: table, input: table): function(): table, table
    items_describe_conformance_pack_compliance: function(client: table, input: table): function(): any
    pages_describe_conformance_pack_status: function(client: table, input: table): function(): table, table
    items_describe_conformance_pack_status: function(client: table, input: table): function(): any
    pages_describe_conformance_packs: function(client: table, input: table): function(): table, table
    items_describe_conformance_packs: function(client: table, input: table): function(): any
    pages_describe_organization_config_rule_statuses: function(client: table, input: table): function(): table, table
    items_describe_organization_config_rule_statuses: function(client: table, input: table): function(): any
    pages_describe_organization_config_rules: function(client: table, input: table): function(): table, table
    items_describe_organization_config_rules: function(client: table, input: table): function(): any
    pages_describe_organization_conformance_pack_statuses: function(client: table, input: table): function(): table, table
    items_describe_organization_conformance_pack_statuses: function(client: table, input: table): function(): any
    pages_describe_organization_conformance_packs: function(client: table, input: table): function(): table, table
    items_describe_organization_conformance_packs: function(client: table, input: table): function(): any
    pages_describe_pending_aggregation_requests: function(client: table, input: table): function(): table, table
    items_describe_pending_aggregation_requests: function(client: table, input: table): function(): any
    pages_describe_remediation_exceptions: function(client: table, input: table): function(): table, table
    pages_describe_remediation_execution_status: function(client: table, input: table): function(): table, table
    items_describe_remediation_execution_status: function(client: table, input: table): function(): any
    pages_describe_retention_configurations: function(client: table, input: table): function(): table, table
    items_describe_retention_configurations: function(client: table, input: table): function(): any
    pages_get_aggregate_compliance_details_by_config_rule: function(client: table, input: table): function(): table, table
    items_get_aggregate_compliance_details_by_config_rule: function(client: table, input: table): function(): any
    pages_get_aggregate_config_rule_compliance_summary: function(client: table, input: table): function(): table, table
    pages_get_aggregate_conformance_pack_compliance_summary: function(client: table, input: table): function(): table, table
    pages_get_aggregate_discovered_resource_counts: function(client: table, input: table): function(): table, table
    pages_get_compliance_details_by_config_rule: function(client: table, input: table): function(): table, table
    items_get_compliance_details_by_config_rule: function(client: table, input: table): function(): any
    pages_get_compliance_details_by_resource: function(client: table, input: table): function(): table, table
    items_get_compliance_details_by_resource: function(client: table, input: table): function(): any
    pages_get_conformance_pack_compliance_details: function(client: table, input: table): function(): table, table
    pages_get_conformance_pack_compliance_summary: function(client: table, input: table): function(): table, table
    items_get_conformance_pack_compliance_summary: function(client: table, input: table): function(): any
    pages_get_discovered_resource_counts: function(client: table, input: table): function(): table, table
    pages_get_organization_config_rule_detailed_status: function(client: table, input: table): function(): table, table
    items_get_organization_config_rule_detailed_status: function(client: table, input: table): function(): any
    pages_get_organization_conformance_pack_detailed_status: function(client: table, input: table): function(): table, table
    items_get_organization_conformance_pack_detailed_status: function(client: table, input: table): function(): any
    pages_get_resource_config_history: function(client: table, input: table): function(): table, table
    items_get_resource_config_history: function(client: table, input: table): function(): any
    pages_list_aggregate_discovered_resources: function(client: table, input: table): function(): table, table
    items_list_aggregate_discovered_resources: function(client: table, input: table): function(): any
    pages_list_configuration_recorders: function(client: table, input: table): function(): table, table
    items_list_configuration_recorders: function(client: table, input: table): function(): any
    pages_list_conformance_pack_compliance_scores: function(client: table, input: table): function(): table, table
    pages_list_discovered_resources: function(client: table, input: table): function(): table, table
    items_list_discovered_resources: function(client: table, input: table): function(): any
    pages_list_resource_evaluations: function(client: table, input: table): function(): table, table
    items_list_resource_evaluations: function(client: table, input: table): function(): any
    pages_list_stored_queries: function(client: table, input: table): function(): table, table
    pages_list_tags_for_resource: function(client: table, input: table): function(): table, table
    items_list_tags_for_resource: function(client: table, input: table): function(): any
    pages_select_aggregate_resource_config: function(client: table, input: table): function(): table, table
    items_select_aggregate_resource_config: function(client: table, input: table): function(): any
    pages_select_resource_config: function(client: table, input: table): function(): table, table
    items_select_resource_config: function(client: table, input: table): function(): any
end

return M
