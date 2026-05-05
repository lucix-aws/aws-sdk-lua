local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listDeploymentEvents.
function M.pages_list_deployment_events(client, input)
    return paginator.pages(client, "listDeploymentEvents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "deploymentEvents",
    })
end

--- Returns an item iterator for listDeploymentEvents.
function M.items_list_deployment_events(client, input)
    return paginator.items(client, "listDeploymentEvents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "deploymentEvents",
    })
end

--- Returns a page iterator for listDeploymentPatternVersions.
function M.pages_list_deployment_pattern_versions(client, input)
    return paginator.pages(client, "listDeploymentPatternVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "deploymentPatternVersions",
    })
end

--- Returns an item iterator for listDeploymentPatternVersions.
function M.items_list_deployment_pattern_versions(client, input)
    return paginator.items(client, "listDeploymentPatternVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "deploymentPatternVersions",
    })
end

--- Returns a page iterator for listDeployments.
function M.pages_list_deployments(client, input)
    return paginator.pages(client, "listDeployments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "deployments",
    })
end

--- Returns an item iterator for listDeployments.
function M.items_list_deployments(client, input)
    return paginator.items(client, "listDeployments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "deployments",
    })
end

--- Returns a page iterator for listWorkloadDeploymentPatterns.
function M.pages_list_workload_deployment_patterns(client, input)
    return paginator.pages(client, "listWorkloadDeploymentPatterns", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "workloadDeploymentPatterns",
    })
end

--- Returns an item iterator for listWorkloadDeploymentPatterns.
function M.items_list_workload_deployment_patterns(client, input)
    return paginator.items(client, "listWorkloadDeploymentPatterns", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "workloadDeploymentPatterns",
    })
end

--- Returns a page iterator for listWorkloads.
function M.pages_list_workloads(client, input)
    return paginator.pages(client, "listWorkloads", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "workloads",
    })
end

--- Returns an item iterator for listWorkloads.
function M.items_list_workloads(client, input)
    return paginator.items(client, "listWorkloads", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "workloads",
    })
end

return M
