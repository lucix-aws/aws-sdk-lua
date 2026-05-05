local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listBillEstimateCommitments.
function M.pages_list_bill_estimate_commitments(client, input)
    return paginator.pages(client, "listBillEstimateCommitments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listBillEstimateCommitments.
function M.items_list_bill_estimate_commitments(client, input)
    return paginator.items(client, "listBillEstimateCommitments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listBillEstimateInputCommitmentModifications.
function M.pages_list_bill_estimate_input_commitment_modifications(client, input)
    return paginator.pages(client, "listBillEstimateInputCommitmentModifications", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listBillEstimateInputCommitmentModifications.
function M.items_list_bill_estimate_input_commitment_modifications(client, input)
    return paginator.items(client, "listBillEstimateInputCommitmentModifications", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listBillEstimateInputUsageModifications.
function M.pages_list_bill_estimate_input_usage_modifications(client, input)
    return paginator.pages(client, "listBillEstimateInputUsageModifications", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listBillEstimateInputUsageModifications.
function M.items_list_bill_estimate_input_usage_modifications(client, input)
    return paginator.items(client, "listBillEstimateInputUsageModifications", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listBillEstimateLineItems.
function M.pages_list_bill_estimate_line_items(client, input)
    return paginator.pages(client, "listBillEstimateLineItems", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listBillEstimateLineItems.
function M.items_list_bill_estimate_line_items(client, input)
    return paginator.items(client, "listBillEstimateLineItems", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listBillEstimates.
function M.pages_list_bill_estimates(client, input)
    return paginator.pages(client, "listBillEstimates", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listBillEstimates.
function M.items_list_bill_estimates(client, input)
    return paginator.items(client, "listBillEstimates", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listBillScenarioCommitmentModifications.
function M.pages_list_bill_scenario_commitment_modifications(client, input)
    return paginator.pages(client, "listBillScenarioCommitmentModifications", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listBillScenarioCommitmentModifications.
function M.items_list_bill_scenario_commitment_modifications(client, input)
    return paginator.items(client, "listBillScenarioCommitmentModifications", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listBillScenarioUsageModifications.
function M.pages_list_bill_scenario_usage_modifications(client, input)
    return paginator.pages(client, "listBillScenarioUsageModifications", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listBillScenarioUsageModifications.
function M.items_list_bill_scenario_usage_modifications(client, input)
    return paginator.items(client, "listBillScenarioUsageModifications", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listBillScenarios.
function M.pages_list_bill_scenarios(client, input)
    return paginator.pages(client, "listBillScenarios", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listBillScenarios.
function M.items_list_bill_scenarios(client, input)
    return paginator.items(client, "listBillScenarios", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listWorkloadEstimateUsage.
function M.pages_list_workload_estimate_usage(client, input)
    return paginator.pages(client, "listWorkloadEstimateUsage", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listWorkloadEstimateUsage.
function M.items_list_workload_estimate_usage(client, input)
    return paginator.items(client, "listWorkloadEstimateUsage", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listWorkloadEstimates.
function M.pages_list_workload_estimates(client, input)
    return paginator.pages(client, "listWorkloadEstimates", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listWorkloadEstimates.
function M.items_list_workload_estimates(client, input)
    return paginator.items(client, "listWorkloadEstimates", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

return M
