local paginator = require("paginator")

local M = {}

--- Returns a page iterator for getCellReadinessSummary.
function M.pages_get_cell_readiness_summary(client, input)
    return paginator.pages(client, "getCellReadinessSummary", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ReadinessChecks",
    })
end

--- Returns an item iterator for getCellReadinessSummary.
function M.items_get_cell_readiness_summary(client, input)
    return paginator.items(client, "getCellReadinessSummary", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ReadinessChecks",
    })
end

--- Returns a page iterator for getReadinessCheckResourceStatus.
function M.pages_get_readiness_check_resource_status(client, input)
    return paginator.pages(client, "getReadinessCheckResourceStatus", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Rules",
    })
end

--- Returns an item iterator for getReadinessCheckResourceStatus.
function M.items_get_readiness_check_resource_status(client, input)
    return paginator.items(client, "getReadinessCheckResourceStatus", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Rules",
    })
end

--- Returns a page iterator for getReadinessCheckStatus.
function M.pages_get_readiness_check_status(client, input)
    return paginator.pages(client, "getReadinessCheckStatus", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Resources",
    })
end

--- Returns an item iterator for getReadinessCheckStatus.
function M.items_get_readiness_check_status(client, input)
    return paginator.items(client, "getReadinessCheckStatus", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Resources",
    })
end

--- Returns a page iterator for getRecoveryGroupReadinessSummary.
function M.pages_get_recovery_group_readiness_summary(client, input)
    return paginator.pages(client, "getRecoveryGroupReadinessSummary", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ReadinessChecks",
    })
end

--- Returns an item iterator for getRecoveryGroupReadinessSummary.
function M.items_get_recovery_group_readiness_summary(client, input)
    return paginator.items(client, "getRecoveryGroupReadinessSummary", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ReadinessChecks",
    })
end

--- Returns a page iterator for listCells.
function M.pages_list_cells(client, input)
    return paginator.pages(client, "listCells", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Cells",
    })
end

--- Returns an item iterator for listCells.
function M.items_list_cells(client, input)
    return paginator.items(client, "listCells", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Cells",
    })
end

--- Returns a page iterator for listCrossAccountAuthorizations.
function M.pages_list_cross_account_authorizations(client, input)
    return paginator.pages(client, "listCrossAccountAuthorizations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CrossAccountAuthorizations",
    })
end

--- Returns an item iterator for listCrossAccountAuthorizations.
function M.items_list_cross_account_authorizations(client, input)
    return paginator.items(client, "listCrossAccountAuthorizations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CrossAccountAuthorizations",
    })
end

--- Returns a page iterator for listReadinessChecks.
function M.pages_list_readiness_checks(client, input)
    return paginator.pages(client, "listReadinessChecks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ReadinessChecks",
    })
end

--- Returns an item iterator for listReadinessChecks.
function M.items_list_readiness_checks(client, input)
    return paginator.items(client, "listReadinessChecks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ReadinessChecks",
    })
end

--- Returns a page iterator for listRecoveryGroups.
function M.pages_list_recovery_groups(client, input)
    return paginator.pages(client, "listRecoveryGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RecoveryGroups",
    })
end

--- Returns an item iterator for listRecoveryGroups.
function M.items_list_recovery_groups(client, input)
    return paginator.items(client, "listRecoveryGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RecoveryGroups",
    })
end

--- Returns a page iterator for listResourceSets.
function M.pages_list_resource_sets(client, input)
    return paginator.pages(client, "listResourceSets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ResourceSets",
    })
end

--- Returns an item iterator for listResourceSets.
function M.items_list_resource_sets(client, input)
    return paginator.items(client, "listResourceSets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ResourceSets",
    })
end

--- Returns a page iterator for listRules.
function M.pages_list_rules(client, input)
    return paginator.pages(client, "listRules", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Rules",
    })
end

--- Returns an item iterator for listRules.
function M.items_list_rules(client, input)
    return paginator.items(client, "listRules", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Rules",
    })
end

return M
