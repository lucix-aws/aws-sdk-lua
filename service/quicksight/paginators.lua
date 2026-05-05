local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for describeFolderPermissions.
function M.pages_describe_folder_permissions(client, input)
    return paginator.pages(client, "describeFolderPermissions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Permissions",
    })
end

--- Returns an item iterator for describeFolderPermissions.
function M.items_describe_folder_permissions(client, input)
    return paginator.items(client, "describeFolderPermissions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Permissions",
    })
end

--- Returns a page iterator for describeFolderResolvedPermissions.
function M.pages_describe_folder_resolved_permissions(client, input)
    return paginator.pages(client, "describeFolderResolvedPermissions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Permissions",
    })
end

--- Returns an item iterator for describeFolderResolvedPermissions.
function M.items_describe_folder_resolved_permissions(client, input)
    return paginator.items(client, "describeFolderResolvedPermissions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Permissions",
    })
end

--- Returns a page iterator for listActionConnectors.
function M.pages_list_action_connectors(client, input)
    return paginator.pages(client, "listActionConnectors", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ActionConnectorSummaries",
    })
end

--- Returns an item iterator for listActionConnectors.
function M.items_list_action_connectors(client, input)
    return paginator.items(client, "listActionConnectors", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ActionConnectorSummaries",
    })
end

--- Returns a page iterator for listAnalyses.
function M.pages_list_analyses(client, input)
    return paginator.pages(client, "listAnalyses", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AnalysisSummaryList",
    })
end

--- Returns an item iterator for listAnalyses.
function M.items_list_analyses(client, input)
    return paginator.items(client, "listAnalyses", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AnalysisSummaryList",
    })
end

--- Returns a page iterator for listAssetBundleExportJobs.
function M.pages_list_asset_bundle_export_jobs(client, input)
    return paginator.pages(client, "listAssetBundleExportJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AssetBundleExportJobSummaryList",
    })
end

--- Returns an item iterator for listAssetBundleExportJobs.
function M.items_list_asset_bundle_export_jobs(client, input)
    return paginator.items(client, "listAssetBundleExportJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AssetBundleExportJobSummaryList",
    })
end

--- Returns a page iterator for listAssetBundleImportJobs.
function M.pages_list_asset_bundle_import_jobs(client, input)
    return paginator.pages(client, "listAssetBundleImportJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AssetBundleImportJobSummaryList",
    })
end

--- Returns an item iterator for listAssetBundleImportJobs.
function M.items_list_asset_bundle_import_jobs(client, input)
    return paginator.items(client, "listAssetBundleImportJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AssetBundleImportJobSummaryList",
    })
end

--- Returns a page iterator for listBrands.
function M.pages_list_brands(client, input)
    return paginator.pages(client, "listBrands", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Brands",
    })
end

--- Returns an item iterator for listBrands.
function M.items_list_brands(client, input)
    return paginator.items(client, "listBrands", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Brands",
    })
end

--- Returns a page iterator for listCustomPermissions.
function M.pages_list_custom_permissions(client, input)
    return paginator.pages(client, "listCustomPermissions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CustomPermissionsList",
    })
end

--- Returns an item iterator for listCustomPermissions.
function M.items_list_custom_permissions(client, input)
    return paginator.items(client, "listCustomPermissions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CustomPermissionsList",
    })
end

--- Returns a page iterator for listDashboardVersions.
function M.pages_list_dashboard_versions(client, input)
    return paginator.pages(client, "listDashboardVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DashboardVersionSummaryList",
    })
end

--- Returns an item iterator for listDashboardVersions.
function M.items_list_dashboard_versions(client, input)
    return paginator.items(client, "listDashboardVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DashboardVersionSummaryList",
    })
end

--- Returns a page iterator for listDashboards.
function M.pages_list_dashboards(client, input)
    return paginator.pages(client, "listDashboards", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DashboardSummaryList",
    })
end

--- Returns an item iterator for listDashboards.
function M.items_list_dashboards(client, input)
    return paginator.items(client, "listDashboards", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DashboardSummaryList",
    })
end

--- Returns a page iterator for listDataSets.
function M.pages_list_data_sets(client, input)
    return paginator.pages(client, "listDataSets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DataSetSummaries",
    })
end

--- Returns an item iterator for listDataSets.
function M.items_list_data_sets(client, input)
    return paginator.items(client, "listDataSets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DataSetSummaries",
    })
end

--- Returns a page iterator for listDataSources.
function M.pages_list_data_sources(client, input)
    return paginator.pages(client, "listDataSources", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DataSources",
    })
end

--- Returns an item iterator for listDataSources.
function M.items_list_data_sources(client, input)
    return paginator.items(client, "listDataSources", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DataSources",
    })
end

--- Returns a page iterator for listFlows.
function M.pages_list_flows(client, input)
    return paginator.pages(client, "listFlows", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "FlowSummaryList",
    })
end

--- Returns an item iterator for listFlows.
function M.items_list_flows(client, input)
    return paginator.items(client, "listFlows", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "FlowSummaryList",
    })
end

--- Returns a page iterator for listFolderMembers.
function M.pages_list_folder_members(client, input)
    return paginator.pages(client, "listFolderMembers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "FolderMemberList",
    })
end

--- Returns an item iterator for listFolderMembers.
function M.items_list_folder_members(client, input)
    return paginator.items(client, "listFolderMembers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "FolderMemberList",
    })
end

--- Returns a page iterator for listFolders.
function M.pages_list_folders(client, input)
    return paginator.pages(client, "listFolders", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "FolderSummaryList",
    })
end

--- Returns an item iterator for listFolders.
function M.items_list_folders(client, input)
    return paginator.items(client, "listFolders", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "FolderSummaryList",
    })
end

--- Returns a page iterator for listFoldersForResource.
function M.pages_list_folders_for_resource(client, input)
    return paginator.pages(client, "listFoldersForResource", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Folders",
    })
end

--- Returns an item iterator for listFoldersForResource.
function M.items_list_folders_for_resource(client, input)
    return paginator.items(client, "listFoldersForResource", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Folders",
    })
end

--- Returns a page iterator for listGroupMemberships.
function M.pages_list_group_memberships(client, input)
    return paginator.pages(client, "listGroupMemberships", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "GroupMemberList",
    })
end

--- Returns an item iterator for listGroupMemberships.
function M.items_list_group_memberships(client, input)
    return paginator.items(client, "listGroupMemberships", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "GroupMemberList",
    })
end

--- Returns a page iterator for listGroups.
function M.pages_list_groups(client, input)
    return paginator.pages(client, "listGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "GroupList",
    })
end

--- Returns an item iterator for listGroups.
function M.items_list_groups(client, input)
    return paginator.items(client, "listGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "GroupList",
    })
end

--- Returns a page iterator for listIAMPolicyAssignments.
function M.pages_list_i_a_m_policy_assignments(client, input)
    return paginator.pages(client, "listIAMPolicyAssignments", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "IAMPolicyAssignments",
    })
end

--- Returns an item iterator for listIAMPolicyAssignments.
function M.items_list_i_a_m_policy_assignments(client, input)
    return paginator.items(client, "listIAMPolicyAssignments", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "IAMPolicyAssignments",
    })
end

--- Returns a page iterator for listIAMPolicyAssignmentsForUser.
function M.pages_list_i_a_m_policy_assignments_for_user(client, input)
    return paginator.pages(client, "listIAMPolicyAssignmentsForUser", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ActiveAssignments",
    })
end

--- Returns an item iterator for listIAMPolicyAssignmentsForUser.
function M.items_list_i_a_m_policy_assignments_for_user(client, input)
    return paginator.items(client, "listIAMPolicyAssignmentsForUser", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ActiveAssignments",
    })
end

--- Returns a page iterator for listIngestions.
function M.pages_list_ingestions(client, input)
    return paginator.pages(client, "listIngestions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Ingestions",
    })
end

--- Returns an item iterator for listIngestions.
function M.items_list_ingestions(client, input)
    return paginator.items(client, "listIngestions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Ingestions",
    })
end

--- Returns a page iterator for listNamespaces.
function M.pages_list_namespaces(client, input)
    return paginator.pages(client, "listNamespaces", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Namespaces",
    })
end

--- Returns an item iterator for listNamespaces.
function M.items_list_namespaces(client, input)
    return paginator.items(client, "listNamespaces", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Namespaces",
    })
end

--- Returns a page iterator for listRoleMemberships.
function M.pages_list_role_memberships(client, input)
    return paginator.pages(client, "listRoleMemberships", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "MembersList",
    })
end

--- Returns an item iterator for listRoleMemberships.
function M.items_list_role_memberships(client, input)
    return paginator.items(client, "listRoleMemberships", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "MembersList",
    })
end

--- Returns a page iterator for listTemplateAliases.
function M.pages_list_template_aliases(client, input)
    return paginator.pages(client, "listTemplateAliases", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TemplateAliasList",
    })
end

--- Returns an item iterator for listTemplateAliases.
function M.items_list_template_aliases(client, input)
    return paginator.items(client, "listTemplateAliases", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TemplateAliasList",
    })
end

--- Returns a page iterator for listTemplateVersions.
function M.pages_list_template_versions(client, input)
    return paginator.pages(client, "listTemplateVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TemplateVersionSummaryList",
    })
end

--- Returns an item iterator for listTemplateVersions.
function M.items_list_template_versions(client, input)
    return paginator.items(client, "listTemplateVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TemplateVersionSummaryList",
    })
end

--- Returns a page iterator for listTemplates.
function M.pages_list_templates(client, input)
    return paginator.pages(client, "listTemplates", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TemplateSummaryList",
    })
end

--- Returns an item iterator for listTemplates.
function M.items_list_templates(client, input)
    return paginator.items(client, "listTemplates", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TemplateSummaryList",
    })
end

--- Returns a page iterator for listThemeVersions.
function M.pages_list_theme_versions(client, input)
    return paginator.pages(client, "listThemeVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ThemeVersionSummaryList",
    })
end

--- Returns an item iterator for listThemeVersions.
function M.items_list_theme_versions(client, input)
    return paginator.items(client, "listThemeVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ThemeVersionSummaryList",
    })
end

--- Returns a page iterator for listThemes.
function M.pages_list_themes(client, input)
    return paginator.pages(client, "listThemes", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ThemeSummaryList",
    })
end

--- Returns an item iterator for listThemes.
function M.items_list_themes(client, input)
    return paginator.items(client, "listThemes", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ThemeSummaryList",
    })
end

--- Returns a page iterator for listTopics.
function M.pages_list_topics(client, input)
    return paginator.pages(client, "listTopics", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listUserGroups.
function M.pages_list_user_groups(client, input)
    return paginator.pages(client, "listUserGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "GroupList",
    })
end

--- Returns an item iterator for listUserGroups.
function M.items_list_user_groups(client, input)
    return paginator.items(client, "listUserGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "GroupList",
    })
end

--- Returns a page iterator for listUsers.
function M.pages_list_users(client, input)
    return paginator.pages(client, "listUsers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "UserList",
    })
end

--- Returns an item iterator for listUsers.
function M.items_list_users(client, input)
    return paginator.items(client, "listUsers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "UserList",
    })
end

--- Returns a page iterator for listVPCConnections.
function M.pages_list_v_p_c_connections(client, input)
    return paginator.pages(client, "listVPCConnections", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for searchActionConnectors.
function M.pages_search_action_connectors(client, input)
    return paginator.pages(client, "searchActionConnectors", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ActionConnectorSummaries",
    })
end

--- Returns an item iterator for searchActionConnectors.
function M.items_search_action_connectors(client, input)
    return paginator.items(client, "searchActionConnectors", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ActionConnectorSummaries",
    })
end

--- Returns a page iterator for searchAnalyses.
function M.pages_search_analyses(client, input)
    return paginator.pages(client, "searchAnalyses", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AnalysisSummaryList",
    })
end

--- Returns an item iterator for searchAnalyses.
function M.items_search_analyses(client, input)
    return paginator.items(client, "searchAnalyses", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AnalysisSummaryList",
    })
end

--- Returns a page iterator for searchDashboards.
function M.pages_search_dashboards(client, input)
    return paginator.pages(client, "searchDashboards", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DashboardSummaryList",
    })
end

--- Returns an item iterator for searchDashboards.
function M.items_search_dashboards(client, input)
    return paginator.items(client, "searchDashboards", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DashboardSummaryList",
    })
end

--- Returns a page iterator for searchDataSets.
function M.pages_search_data_sets(client, input)
    return paginator.pages(client, "searchDataSets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DataSetSummaries",
    })
end

--- Returns an item iterator for searchDataSets.
function M.items_search_data_sets(client, input)
    return paginator.items(client, "searchDataSets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DataSetSummaries",
    })
end

--- Returns a page iterator for searchDataSources.
function M.pages_search_data_sources(client, input)
    return paginator.pages(client, "searchDataSources", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DataSourceSummaries",
    })
end

--- Returns an item iterator for searchDataSources.
function M.items_search_data_sources(client, input)
    return paginator.items(client, "searchDataSources", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DataSourceSummaries",
    })
end

--- Returns a page iterator for searchFlows.
function M.pages_search_flows(client, input)
    return paginator.pages(client, "searchFlows", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "FlowSummaryList",
    })
end

--- Returns an item iterator for searchFlows.
function M.items_search_flows(client, input)
    return paginator.items(client, "searchFlows", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "FlowSummaryList",
    })
end

--- Returns a page iterator for searchFolders.
function M.pages_search_folders(client, input)
    return paginator.pages(client, "searchFolders", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "FolderSummaryList",
    })
end

--- Returns an item iterator for searchFolders.
function M.items_search_folders(client, input)
    return paginator.items(client, "searchFolders", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "FolderSummaryList",
    })
end

--- Returns a page iterator for searchGroups.
function M.pages_search_groups(client, input)
    return paginator.pages(client, "searchGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "GroupList",
    })
end

--- Returns an item iterator for searchGroups.
function M.items_search_groups(client, input)
    return paginator.items(client, "searchGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "GroupList",
    })
end

--- Returns a page iterator for searchTopics.
function M.pages_search_topics(client, input)
    return paginator.pages(client, "searchTopics", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TopicSummaryList",
    })
end

--- Returns an item iterator for searchTopics.
function M.items_search_topics(client, input)
    return paginator.items(client, "searchTopics", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TopicSummaryList",
    })
end

return M
