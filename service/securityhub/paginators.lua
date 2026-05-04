local paginator = require("paginator")

local M = {}

--- Returns a page iterator for describeActionTargets.
function M.pages_describe_action_targets(client, input)
    return paginator.pages(client, "describeActionTargets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ActionTargets",
    })
end

--- Returns an item iterator for describeActionTargets.
function M.items_describe_action_targets(client, input)
    return paginator.items(client, "describeActionTargets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ActionTargets",
    })
end

--- Returns a page iterator for describeProducts.
function M.pages_describe_products(client, input)
    return paginator.pages(client, "describeProducts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Products",
    })
end

--- Returns an item iterator for describeProducts.
function M.items_describe_products(client, input)
    return paginator.items(client, "describeProducts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Products",
    })
end

--- Returns a page iterator for describeProductsV2.
function M.pages_describe_products_v2(client, input)
    return paginator.pages(client, "describeProductsV2", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ProductsV2",
    })
end

--- Returns an item iterator for describeProductsV2.
function M.items_describe_products_v2(client, input)
    return paginator.items(client, "describeProductsV2", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ProductsV2",
    })
end

--- Returns a page iterator for describeStandards.
function M.pages_describe_standards(client, input)
    return paginator.pages(client, "describeStandards", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Standards",
    })
end

--- Returns an item iterator for describeStandards.
function M.items_describe_standards(client, input)
    return paginator.items(client, "describeStandards", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Standards",
    })
end

--- Returns a page iterator for describeStandardsControls.
function M.pages_describe_standards_controls(client, input)
    return paginator.pages(client, "describeStandardsControls", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Controls",
    })
end

--- Returns an item iterator for describeStandardsControls.
function M.items_describe_standards_controls(client, input)
    return paginator.items(client, "describeStandardsControls", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Controls",
    })
end

--- Returns a page iterator for getEnabledStandards.
function M.pages_get_enabled_standards(client, input)
    return paginator.pages(client, "getEnabledStandards", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "StandardsSubscriptions",
    })
end

--- Returns an item iterator for getEnabledStandards.
function M.items_get_enabled_standards(client, input)
    return paginator.items(client, "getEnabledStandards", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "StandardsSubscriptions",
    })
end

--- Returns a page iterator for getFindingHistory.
function M.pages_get_finding_history(client, input)
    return paginator.pages(client, "getFindingHistory", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Records",
    })
end

--- Returns an item iterator for getFindingHistory.
function M.items_get_finding_history(client, input)
    return paginator.items(client, "getFindingHistory", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Records",
    })
end

--- Returns a page iterator for getFindings.
function M.pages_get_findings(client, input)
    return paginator.pages(client, "getFindings", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Findings",
    })
end

--- Returns an item iterator for getFindings.
function M.items_get_findings(client, input)
    return paginator.items(client, "getFindings", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Findings",
    })
end

--- Returns a page iterator for getFindingsTrendsV2.
function M.pages_get_findings_trends_v2(client, input)
    return paginator.pages(client, "getFindingsTrendsV2", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TrendsMetrics",
    })
end

--- Returns an item iterator for getFindingsTrendsV2.
function M.items_get_findings_trends_v2(client, input)
    return paginator.items(client, "getFindingsTrendsV2", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TrendsMetrics",
    })
end

--- Returns a page iterator for getFindingsV2.
function M.pages_get_findings_v2(client, input)
    return paginator.pages(client, "getFindingsV2", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Findings",
    })
end

--- Returns an item iterator for getFindingsV2.
function M.items_get_findings_v2(client, input)
    return paginator.items(client, "getFindingsV2", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Findings",
    })
end

--- Returns a page iterator for getInsights.
function M.pages_get_insights(client, input)
    return paginator.pages(client, "getInsights", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Insights",
    })
end

--- Returns an item iterator for getInsights.
function M.items_get_insights(client, input)
    return paginator.items(client, "getInsights", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Insights",
    })
end

--- Returns a page iterator for getResourcesTrendsV2.
function M.pages_get_resources_trends_v2(client, input)
    return paginator.pages(client, "getResourcesTrendsV2", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TrendsMetrics",
    })
end

--- Returns an item iterator for getResourcesTrendsV2.
function M.items_get_resources_trends_v2(client, input)
    return paginator.items(client, "getResourcesTrendsV2", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TrendsMetrics",
    })
end

--- Returns a page iterator for getResourcesV2.
function M.pages_get_resources_v2(client, input)
    return paginator.pages(client, "getResourcesV2", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Resources",
    })
end

--- Returns an item iterator for getResourcesV2.
function M.items_get_resources_v2(client, input)
    return paginator.items(client, "getResourcesV2", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Resources",
    })
end

--- Returns a page iterator for listAggregatorsV2.
function M.pages_list_aggregators_v2(client, input)
    return paginator.pages(client, "listAggregatorsV2", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AggregatorsV2",
    })
end

--- Returns an item iterator for listAggregatorsV2.
function M.items_list_aggregators_v2(client, input)
    return paginator.items(client, "listAggregatorsV2", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AggregatorsV2",
    })
end

--- Returns a page iterator for listConfigurationPolicies.
function M.pages_list_configuration_policies(client, input)
    return paginator.pages(client, "listConfigurationPolicies", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ConfigurationPolicySummaries",
    })
end

--- Returns an item iterator for listConfigurationPolicies.
function M.items_list_configuration_policies(client, input)
    return paginator.items(client, "listConfigurationPolicies", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ConfigurationPolicySummaries",
    })
end

--- Returns a page iterator for listConfigurationPolicyAssociations.
function M.pages_list_configuration_policy_associations(client, input)
    return paginator.pages(client, "listConfigurationPolicyAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ConfigurationPolicyAssociationSummaries",
    })
end

--- Returns an item iterator for listConfigurationPolicyAssociations.
function M.items_list_configuration_policy_associations(client, input)
    return paginator.items(client, "listConfigurationPolicyAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ConfigurationPolicyAssociationSummaries",
    })
end

--- Returns a page iterator for listEnabledProductsForImport.
function M.pages_list_enabled_products_for_import(client, input)
    return paginator.pages(client, "listEnabledProductsForImport", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ProductSubscriptions",
    })
end

--- Returns an item iterator for listEnabledProductsForImport.
function M.items_list_enabled_products_for_import(client, input)
    return paginator.items(client, "listEnabledProductsForImport", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ProductSubscriptions",
    })
end

--- Returns a page iterator for listFindingAggregators.
function M.pages_list_finding_aggregators(client, input)
    return paginator.pages(client, "listFindingAggregators", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "FindingAggregators",
    })
end

--- Returns an item iterator for listFindingAggregators.
function M.items_list_finding_aggregators(client, input)
    return paginator.items(client, "listFindingAggregators", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "FindingAggregators",
    })
end

--- Returns a page iterator for listInvitations.
function M.pages_list_invitations(client, input)
    return paginator.pages(client, "listInvitations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Invitations",
    })
end

--- Returns an item iterator for listInvitations.
function M.items_list_invitations(client, input)
    return paginator.items(client, "listInvitations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Invitations",
    })
end

--- Returns a page iterator for listMembers.
function M.pages_list_members(client, input)
    return paginator.pages(client, "listMembers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Members",
    })
end

--- Returns an item iterator for listMembers.
function M.items_list_members(client, input)
    return paginator.items(client, "listMembers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Members",
    })
end

--- Returns a page iterator for listOrganizationAdminAccounts.
function M.pages_list_organization_admin_accounts(client, input)
    return paginator.pages(client, "listOrganizationAdminAccounts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AdminAccounts",
    })
end

--- Returns an item iterator for listOrganizationAdminAccounts.
function M.items_list_organization_admin_accounts(client, input)
    return paginator.items(client, "listOrganizationAdminAccounts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AdminAccounts",
    })
end

--- Returns a page iterator for listSecurityControlDefinitions.
function M.pages_list_security_control_definitions(client, input)
    return paginator.pages(client, "listSecurityControlDefinitions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SecurityControlDefinitions",
    })
end

--- Returns an item iterator for listSecurityControlDefinitions.
function M.items_list_security_control_definitions(client, input)
    return paginator.items(client, "listSecurityControlDefinitions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SecurityControlDefinitions",
    })
end

--- Returns a page iterator for listStandardsControlAssociations.
function M.pages_list_standards_control_associations(client, input)
    return paginator.pages(client, "listStandardsControlAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "StandardsControlAssociationSummaries",
    })
end

--- Returns an item iterator for listStandardsControlAssociations.
function M.items_list_standards_control_associations(client, input)
    return paginator.items(client, "listStandardsControlAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "StandardsControlAssociationSummaries",
    })
end

return M
