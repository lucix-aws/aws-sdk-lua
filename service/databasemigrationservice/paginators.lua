local paginator = require("paginator")

local M = {}

--- Returns a page iterator for describeApplicableIndividualAssessments.
function M.pages_describe_applicable_individual_assessments(client, input)
    return paginator.pages(client, "describeApplicableIndividualAssessments", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

--- Returns a page iterator for describeCertificates.
function M.pages_describe_certificates(client, input)
    return paginator.pages(client, "describeCertificates", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

--- Returns a page iterator for describeConnections.
function M.pages_describe_connections(client, input)
    return paginator.pages(client, "describeConnections", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

--- Returns a page iterator for describeDataMigrations.
function M.pages_describe_data_migrations(client, input)
    return paginator.pages(client, "describeDataMigrations", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DataMigrations",
    })
end

--- Returns an item iterator for describeDataMigrations.
function M.items_describe_data_migrations(client, input)
    return paginator.items(client, "describeDataMigrations", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DataMigrations",
    })
end

--- Returns a page iterator for describeDataProviders.
function M.pages_describe_data_providers(client, input)
    return paginator.pages(client, "describeDataProviders", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

--- Returns a page iterator for describeEndpointSettings.
function M.pages_describe_endpoint_settings(client, input)
    return paginator.pages(client, "describeEndpointSettings", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

--- Returns a page iterator for describeEndpointTypes.
function M.pages_describe_endpoint_types(client, input)
    return paginator.pages(client, "describeEndpointTypes", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

--- Returns a page iterator for describeEndpoints.
function M.pages_describe_endpoints(client, input)
    return paginator.pages(client, "describeEndpoints", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

--- Returns a page iterator for describeEngineVersions.
function M.pages_describe_engine_versions(client, input)
    return paginator.pages(client, "describeEngineVersions", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

--- Returns a page iterator for describeEventSubscriptions.
function M.pages_describe_event_subscriptions(client, input)
    return paginator.pages(client, "describeEventSubscriptions", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

--- Returns a page iterator for describeEvents.
function M.pages_describe_events(client, input)
    return paginator.pages(client, "describeEvents", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

--- Returns a page iterator for describeExtensionPackAssociations.
function M.pages_describe_extension_pack_associations(client, input)
    return paginator.pages(client, "describeExtensionPackAssociations", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

--- Returns a page iterator for describeFleetAdvisorCollectors.
function M.pages_describe_fleet_advisor_collectors(client, input)
    return paginator.pages(client, "describeFleetAdvisorCollectors", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for describeFleetAdvisorDatabases.
function M.pages_describe_fleet_advisor_databases(client, input)
    return paginator.pages(client, "describeFleetAdvisorDatabases", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for describeFleetAdvisorLsaAnalysis.
function M.pages_describe_fleet_advisor_lsa_analysis(client, input)
    return paginator.pages(client, "describeFleetAdvisorLsaAnalysis", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for describeFleetAdvisorSchemaObjectSummary.
function M.pages_describe_fleet_advisor_schema_object_summary(client, input)
    return paginator.pages(client, "describeFleetAdvisorSchemaObjectSummary", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for describeFleetAdvisorSchemas.
function M.pages_describe_fleet_advisor_schemas(client, input)
    return paginator.pages(client, "describeFleetAdvisorSchemas", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for describeInstanceProfiles.
function M.pages_describe_instance_profiles(client, input)
    return paginator.pages(client, "describeInstanceProfiles", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

--- Returns a page iterator for describeMetadataModelAssessments.
function M.pages_describe_metadata_model_assessments(client, input)
    return paginator.pages(client, "describeMetadataModelAssessments", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

--- Returns a page iterator for describeMetadataModelChildren.
function M.pages_describe_metadata_model_children(client, input)
    return paginator.pages(client, "describeMetadataModelChildren", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "MetadataModelChildren",
    })
end

--- Returns an item iterator for describeMetadataModelChildren.
function M.items_describe_metadata_model_children(client, input)
    return paginator.items(client, "describeMetadataModelChildren", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "MetadataModelChildren",
    })
end

--- Returns a page iterator for describeMetadataModelConversions.
function M.pages_describe_metadata_model_conversions(client, input)
    return paginator.pages(client, "describeMetadataModelConversions", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

--- Returns a page iterator for describeMetadataModelCreations.
function M.pages_describe_metadata_model_creations(client, input)
    return paginator.pages(client, "describeMetadataModelCreations", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Requests",
    })
end

--- Returns an item iterator for describeMetadataModelCreations.
function M.items_describe_metadata_model_creations(client, input)
    return paginator.items(client, "describeMetadataModelCreations", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Requests",
    })
end

--- Returns a page iterator for describeMetadataModelExportsAsScript.
function M.pages_describe_metadata_model_exports_as_script(client, input)
    return paginator.pages(client, "describeMetadataModelExportsAsScript", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

--- Returns a page iterator for describeMetadataModelExportsToTarget.
function M.pages_describe_metadata_model_exports_to_target(client, input)
    return paginator.pages(client, "describeMetadataModelExportsToTarget", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

--- Returns a page iterator for describeMetadataModelImports.
function M.pages_describe_metadata_model_imports(client, input)
    return paginator.pages(client, "describeMetadataModelImports", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

--- Returns a page iterator for describeMigrationProjects.
function M.pages_describe_migration_projects(client, input)
    return paginator.pages(client, "describeMigrationProjects", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

--- Returns a page iterator for describeOrderableReplicationInstances.
function M.pages_describe_orderable_replication_instances(client, input)
    return paginator.pages(client, "describeOrderableReplicationInstances", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

--- Returns a page iterator for describePendingMaintenanceActions.
function M.pages_describe_pending_maintenance_actions(client, input)
    return paginator.pages(client, "describePendingMaintenanceActions", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

--- Returns a page iterator for describeRecommendationLimitations.
function M.pages_describe_recommendation_limitations(client, input)
    return paginator.pages(client, "describeRecommendationLimitations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for describeRecommendations.
function M.pages_describe_recommendations(client, input)
    return paginator.pages(client, "describeRecommendations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for describeReplicationConfigs.
function M.pages_describe_replication_configs(client, input)
    return paginator.pages(client, "describeReplicationConfigs", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

--- Returns a page iterator for describeReplicationInstanceTaskLogs.
function M.pages_describe_replication_instance_task_logs(client, input)
    return paginator.pages(client, "describeReplicationInstanceTaskLogs", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

--- Returns a page iterator for describeReplicationInstances.
function M.pages_describe_replication_instances(client, input)
    return paginator.pages(client, "describeReplicationInstances", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

--- Returns a page iterator for describeReplicationSubnetGroups.
function M.pages_describe_replication_subnet_groups(client, input)
    return paginator.pages(client, "describeReplicationSubnetGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

--- Returns a page iterator for describeReplicationTableStatistics.
function M.pages_describe_replication_table_statistics(client, input)
    return paginator.pages(client, "describeReplicationTableStatistics", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

--- Returns a page iterator for describeReplicationTaskAssessmentResults.
function M.pages_describe_replication_task_assessment_results(client, input)
    return paginator.pages(client, "describeReplicationTaskAssessmentResults", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

--- Returns a page iterator for describeReplicationTaskAssessmentRuns.
function M.pages_describe_replication_task_assessment_runs(client, input)
    return paginator.pages(client, "describeReplicationTaskAssessmentRuns", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

--- Returns a page iterator for describeReplicationTaskIndividualAssessments.
function M.pages_describe_replication_task_individual_assessments(client, input)
    return paginator.pages(client, "describeReplicationTaskIndividualAssessments", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

--- Returns a page iterator for describeReplicationTasks.
function M.pages_describe_replication_tasks(client, input)
    return paginator.pages(client, "describeReplicationTasks", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

--- Returns a page iterator for describeReplications.
function M.pages_describe_replications(client, input)
    return paginator.pages(client, "describeReplications", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

--- Returns a page iterator for describeSchemas.
function M.pages_describe_schemas(client, input)
    return paginator.pages(client, "describeSchemas", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

--- Returns a page iterator for describeTableStatistics.
function M.pages_describe_table_statistics(client, input)
    return paginator.pages(client, "describeTableStatistics", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

return M
