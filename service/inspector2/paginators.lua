local paginator = require("paginator")

local M = {}

--- Returns a page iterator for getCisScanResultDetails.
function M.pages_get_cis_scan_result_details(client, input)
    return paginator.pages(client, "getCisScanResultDetails", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "scanResultDetails",
    })
end

--- Returns an item iterator for getCisScanResultDetails.
function M.items_get_cis_scan_result_details(client, input)
    return paginator.items(client, "getCisScanResultDetails", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "scanResultDetails",
    })
end

--- Returns a page iterator for getClustersForImage.
function M.pages_get_clusters_for_image(client, input)
    return paginator.pages(client, "getClustersForImage", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "cluster",
    })
end

--- Returns an item iterator for getClustersForImage.
function M.items_get_clusters_for_image(client, input)
    return paginator.items(client, "getClustersForImage", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "cluster",
    })
end

--- Returns a page iterator for listAccountPermissions.
function M.pages_list_account_permissions(client, input)
    return paginator.pages(client, "listAccountPermissions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "permissions",
    })
end

--- Returns an item iterator for listAccountPermissions.
function M.items_list_account_permissions(client, input)
    return paginator.items(client, "listAccountPermissions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "permissions",
    })
end

--- Returns a page iterator for listCisScanConfigurations.
function M.pages_list_cis_scan_configurations(client, input)
    return paginator.pages(client, "listCisScanConfigurations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "scanConfigurations",
    })
end

--- Returns an item iterator for listCisScanConfigurations.
function M.items_list_cis_scan_configurations(client, input)
    return paginator.items(client, "listCisScanConfigurations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "scanConfigurations",
    })
end

--- Returns a page iterator for listCisScanResultsAggregatedByChecks.
function M.pages_list_cis_scan_results_aggregated_by_checks(client, input)
    return paginator.pages(client, "listCisScanResultsAggregatedByChecks", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "checkAggregations",
    })
end

--- Returns an item iterator for listCisScanResultsAggregatedByChecks.
function M.items_list_cis_scan_results_aggregated_by_checks(client, input)
    return paginator.items(client, "listCisScanResultsAggregatedByChecks", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "checkAggregations",
    })
end

--- Returns a page iterator for listCisScanResultsAggregatedByTargetResource.
function M.pages_list_cis_scan_results_aggregated_by_target_resource(client, input)
    return paginator.pages(client, "listCisScanResultsAggregatedByTargetResource", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "targetResourceAggregations",
    })
end

--- Returns an item iterator for listCisScanResultsAggregatedByTargetResource.
function M.items_list_cis_scan_results_aggregated_by_target_resource(client, input)
    return paginator.items(client, "listCisScanResultsAggregatedByTargetResource", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "targetResourceAggregations",
    })
end

--- Returns a page iterator for listCisScans.
function M.pages_list_cis_scans(client, input)
    return paginator.pages(client, "listCisScans", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "scans",
    })
end

--- Returns an item iterator for listCisScans.
function M.items_list_cis_scans(client, input)
    return paginator.items(client, "listCisScans", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "scans",
    })
end

--- Returns a page iterator for listCoverage.
function M.pages_list_coverage(client, input)
    return paginator.pages(client, "listCoverage", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "coveredResources",
    })
end

--- Returns an item iterator for listCoverage.
function M.items_list_coverage(client, input)
    return paginator.items(client, "listCoverage", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "coveredResources",
    })
end

--- Returns a page iterator for listCoverageStatistics.
function M.pages_list_coverage_statistics(client, input)
    return paginator.pages(client, "listCoverageStatistics", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "countsByGroup",
    })
end

--- Returns an item iterator for listCoverageStatistics.
function M.items_list_coverage_statistics(client, input)
    return paginator.items(client, "listCoverageStatistics", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "countsByGroup",
    })
end

--- Returns a page iterator for listDelegatedAdminAccounts.
function M.pages_list_delegated_admin_accounts(client, input)
    return paginator.pages(client, "listDelegatedAdminAccounts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "delegatedAdminAccounts",
    })
end

--- Returns an item iterator for listDelegatedAdminAccounts.
function M.items_list_delegated_admin_accounts(client, input)
    return paginator.items(client, "listDelegatedAdminAccounts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "delegatedAdminAccounts",
    })
end

--- Returns a page iterator for listFilters.
function M.pages_list_filters(client, input)
    return paginator.pages(client, "listFilters", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "filters",
    })
end

--- Returns an item iterator for listFilters.
function M.items_list_filters(client, input)
    return paginator.items(client, "listFilters", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "filters",
    })
end

--- Returns a page iterator for listFindingAggregations.
function M.pages_list_finding_aggregations(client, input)
    return paginator.pages(client, "listFindingAggregations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "responses",
    })
end

--- Returns an item iterator for listFindingAggregations.
function M.items_list_finding_aggregations(client, input)
    return paginator.items(client, "listFindingAggregations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "responses",
    })
end

--- Returns a page iterator for listFindings.
function M.pages_list_findings(client, input)
    return paginator.pages(client, "listFindings", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "findings",
    })
end

--- Returns an item iterator for listFindings.
function M.items_list_findings(client, input)
    return paginator.items(client, "listFindings", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "findings",
    })
end

--- Returns a page iterator for listMembers.
function M.pages_list_members(client, input)
    return paginator.pages(client, "listMembers", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "members",
    })
end

--- Returns an item iterator for listMembers.
function M.items_list_members(client, input)
    return paginator.items(client, "listMembers", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "members",
    })
end

--- Returns a page iterator for listUsageTotals.
function M.pages_list_usage_totals(client, input)
    return paginator.pages(client, "listUsageTotals", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "totals",
    })
end

--- Returns an item iterator for listUsageTotals.
function M.items_list_usage_totals(client, input)
    return paginator.items(client, "listUsageTotals", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "totals",
    })
end

--- Returns a page iterator for searchVulnerabilities.
function M.pages_search_vulnerabilities(client, input)
    return paginator.pages(client, "searchVulnerabilities", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "vulnerabilities",
    })
end

--- Returns an item iterator for searchVulnerabilities.
function M.items_search_vulnerabilities(client, input)
    return paginator.items(client, "searchVulnerabilities", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "vulnerabilities",
    })
end

return M
