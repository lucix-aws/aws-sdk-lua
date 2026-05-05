local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listAccountPools.
function M.pages_list_account_pools(client, input)
    return paginator.pages(client, "listAccountPools", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listAccountPools.
function M.items_list_account_pools(client, input)
    return paginator.items(client, "listAccountPools", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listAccountsInAccountPool.
function M.pages_list_accounts_in_account_pool(client, input)
    return paginator.pages(client, "listAccountsInAccountPool", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listAccountsInAccountPool.
function M.items_list_accounts_in_account_pool(client, input)
    return paginator.items(client, "listAccountsInAccountPool", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listAssetFilters.
function M.pages_list_asset_filters(client, input)
    return paginator.pages(client, "listAssetFilters", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listAssetFilters.
function M.items_list_asset_filters(client, input)
    return paginator.items(client, "listAssetFilters", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listAssetRevisions.
function M.pages_list_asset_revisions(client, input)
    return paginator.pages(client, "listAssetRevisions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listAssetRevisions.
function M.items_list_asset_revisions(client, input)
    return paginator.items(client, "listAssetRevisions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listConnections.
function M.pages_list_connections(client, input)
    return paginator.pages(client, "listConnections", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listConnections.
function M.items_list_connections(client, input)
    return paginator.items(client, "listConnections", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listDataProductRevisions.
function M.pages_list_data_product_revisions(client, input)
    return paginator.pages(client, "listDataProductRevisions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listDataProductRevisions.
function M.items_list_data_product_revisions(client, input)
    return paginator.items(client, "listDataProductRevisions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listDataSourceRunActivities.
function M.pages_list_data_source_run_activities(client, input)
    return paginator.pages(client, "listDataSourceRunActivities", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listDataSourceRunActivities.
function M.items_list_data_source_run_activities(client, input)
    return paginator.items(client, "listDataSourceRunActivities", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listDataSourceRuns.
function M.pages_list_data_source_runs(client, input)
    return paginator.pages(client, "listDataSourceRuns", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listDataSourceRuns.
function M.items_list_data_source_runs(client, input)
    return paginator.items(client, "listDataSourceRuns", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listDataSources.
function M.pages_list_data_sources(client, input)
    return paginator.pages(client, "listDataSources", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listDataSources.
function M.items_list_data_sources(client, input)
    return paginator.items(client, "listDataSources", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listDomainUnitsForParent.
function M.pages_list_domain_units_for_parent(client, input)
    return paginator.pages(client, "listDomainUnitsForParent", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listDomainUnitsForParent.
function M.items_list_domain_units_for_parent(client, input)
    return paginator.items(client, "listDomainUnitsForParent", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listDomains.
function M.pages_list_domains(client, input)
    return paginator.pages(client, "listDomains", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listDomains.
function M.items_list_domains(client, input)
    return paginator.items(client, "listDomains", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listEntityOwners.
function M.pages_list_entity_owners(client, input)
    return paginator.pages(client, "listEntityOwners", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "owners",
    })
end

--- Returns an item iterator for listEntityOwners.
function M.items_list_entity_owners(client, input)
    return paginator.items(client, "listEntityOwners", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "owners",
    })
end

--- Returns a page iterator for listEnvironmentActions.
function M.pages_list_environment_actions(client, input)
    return paginator.pages(client, "listEnvironmentActions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listEnvironmentActions.
function M.items_list_environment_actions(client, input)
    return paginator.items(client, "listEnvironmentActions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listEnvironmentBlueprintConfigurations.
function M.pages_list_environment_blueprint_configurations(client, input)
    return paginator.pages(client, "listEnvironmentBlueprintConfigurations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listEnvironmentBlueprintConfigurations.
function M.items_list_environment_blueprint_configurations(client, input)
    return paginator.items(client, "listEnvironmentBlueprintConfigurations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listEnvironmentBlueprints.
function M.pages_list_environment_blueprints(client, input)
    return paginator.pages(client, "listEnvironmentBlueprints", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listEnvironmentBlueprints.
function M.items_list_environment_blueprints(client, input)
    return paginator.items(client, "listEnvironmentBlueprints", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listEnvironmentProfiles.
function M.pages_list_environment_profiles(client, input)
    return paginator.pages(client, "listEnvironmentProfiles", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listEnvironmentProfiles.
function M.items_list_environment_profiles(client, input)
    return paginator.items(client, "listEnvironmentProfiles", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listEnvironments.
function M.pages_list_environments(client, input)
    return paginator.pages(client, "listEnvironments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listEnvironments.
function M.items_list_environments(client, input)
    return paginator.items(client, "listEnvironments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listJobRuns.
function M.pages_list_job_runs(client, input)
    return paginator.pages(client, "listJobRuns", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listJobRuns.
function M.items_list_job_runs(client, input)
    return paginator.items(client, "listJobRuns", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listLineageEvents.
function M.pages_list_lineage_events(client, input)
    return paginator.pages(client, "listLineageEvents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listLineageEvents.
function M.items_list_lineage_events(client, input)
    return paginator.items(client, "listLineageEvents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listLineageNodeHistory.
function M.pages_list_lineage_node_history(client, input)
    return paginator.pages(client, "listLineageNodeHistory", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "nodes",
    })
end

--- Returns an item iterator for listLineageNodeHistory.
function M.items_list_lineage_node_history(client, input)
    return paginator.items(client, "listLineageNodeHistory", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "nodes",
    })
end

--- Returns a page iterator for listMetadataGenerationRuns.
function M.pages_list_metadata_generation_runs(client, input)
    return paginator.pages(client, "listMetadataGenerationRuns", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listMetadataGenerationRuns.
function M.items_list_metadata_generation_runs(client, input)
    return paginator.items(client, "listMetadataGenerationRuns", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listNotebookRuns.
function M.pages_list_notebook_runs(client, input)
    return paginator.pages(client, "listNotebookRuns", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listNotebookRuns.
function M.items_list_notebook_runs(client, input)
    return paginator.items(client, "listNotebookRuns", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listNotifications.
function M.pages_list_notifications(client, input)
    return paginator.pages(client, "listNotifications", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "notifications",
    })
end

--- Returns an item iterator for listNotifications.
function M.items_list_notifications(client, input)
    return paginator.items(client, "listNotifications", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "notifications",
    })
end

--- Returns a page iterator for listPolicyGrants.
function M.pages_list_policy_grants(client, input)
    return paginator.pages(client, "listPolicyGrants", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "grantList",
    })
end

--- Returns an item iterator for listPolicyGrants.
function M.items_list_policy_grants(client, input)
    return paginator.items(client, "listPolicyGrants", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "grantList",
    })
end

--- Returns a page iterator for listProjectMemberships.
function M.pages_list_project_memberships(client, input)
    return paginator.pages(client, "listProjectMemberships", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "members",
    })
end

--- Returns an item iterator for listProjectMemberships.
function M.items_list_project_memberships(client, input)
    return paginator.items(client, "listProjectMemberships", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "members",
    })
end

--- Returns a page iterator for listProjectProfiles.
function M.pages_list_project_profiles(client, input)
    return paginator.pages(client, "listProjectProfiles", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listProjectProfiles.
function M.items_list_project_profiles(client, input)
    return paginator.items(client, "listProjectProfiles", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listProjects.
function M.pages_list_projects(client, input)
    return paginator.pages(client, "listProjects", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listProjects.
function M.items_list_projects(client, input)
    return paginator.items(client, "listProjects", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listRules.
function M.pages_list_rules(client, input)
    return paginator.pages(client, "listRules", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listRules.
function M.items_list_rules(client, input)
    return paginator.items(client, "listRules", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listSubscriptionGrants.
function M.pages_list_subscription_grants(client, input)
    return paginator.pages(client, "listSubscriptionGrants", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listSubscriptionGrants.
function M.items_list_subscription_grants(client, input)
    return paginator.items(client, "listSubscriptionGrants", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listSubscriptionRequests.
function M.pages_list_subscription_requests(client, input)
    return paginator.pages(client, "listSubscriptionRequests", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listSubscriptionRequests.
function M.items_list_subscription_requests(client, input)
    return paginator.items(client, "listSubscriptionRequests", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listSubscriptionTargets.
function M.pages_list_subscription_targets(client, input)
    return paginator.pages(client, "listSubscriptionTargets", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listSubscriptionTargets.
function M.items_list_subscription_targets(client, input)
    return paginator.items(client, "listSubscriptionTargets", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listSubscriptions.
function M.pages_list_subscriptions(client, input)
    return paginator.pages(client, "listSubscriptions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listSubscriptions.
function M.items_list_subscriptions(client, input)
    return paginator.items(client, "listSubscriptions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listTimeSeriesDataPoints.
function M.pages_list_time_series_data_points(client, input)
    return paginator.pages(client, "listTimeSeriesDataPoints", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listTimeSeriesDataPoints.
function M.items_list_time_series_data_points(client, input)
    return paginator.items(client, "listTimeSeriesDataPoints", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for queryGraph.
function M.pages_query_graph(client, input)
    return paginator.pages(client, "queryGraph", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for queryGraph.
function M.items_query_graph(client, input)
    return paginator.items(client, "queryGraph", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for search.
function M.pages_search(client, input)
    return paginator.pages(client, "search", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for search.
function M.items_search(client, input)
    return paginator.items(client, "search", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for searchGroupProfiles.
function M.pages_search_group_profiles(client, input)
    return paginator.pages(client, "searchGroupProfiles", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for searchGroupProfiles.
function M.items_search_group_profiles(client, input)
    return paginator.items(client, "searchGroupProfiles", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for searchListings.
function M.pages_search_listings(client, input)
    return paginator.pages(client, "searchListings", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for searchListings.
function M.items_search_listings(client, input)
    return paginator.items(client, "searchListings", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for searchTypes.
function M.pages_search_types(client, input)
    return paginator.pages(client, "searchTypes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for searchTypes.
function M.items_search_types(client, input)
    return paginator.items(client, "searchTypes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for searchUserProfiles.
function M.pages_search_user_profiles(client, input)
    return paginator.pages(client, "searchUserProfiles", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for searchUserProfiles.
function M.items_search_user_profiles(client, input)
    return paginator.items(client, "searchUserProfiles", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

return M
