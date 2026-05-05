local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for describeComputeEnvironments.
function M.pages_describe_compute_environments(client, input)
    return paginator.pages(client, "describeComputeEnvironments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "computeEnvironments",
    })
end

--- Returns an item iterator for describeComputeEnvironments.
function M.items_describe_compute_environments(client, input)
    return paginator.items(client, "describeComputeEnvironments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "computeEnvironments",
    })
end

--- Returns a page iterator for describeJobDefinitions.
function M.pages_describe_job_definitions(client, input)
    return paginator.pages(client, "describeJobDefinitions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "jobDefinitions",
    })
end

--- Returns an item iterator for describeJobDefinitions.
function M.items_describe_job_definitions(client, input)
    return paginator.items(client, "describeJobDefinitions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "jobDefinitions",
    })
end

--- Returns a page iterator for describeJobQueues.
function M.pages_describe_job_queues(client, input)
    return paginator.pages(client, "describeJobQueues", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "jobQueues",
    })
end

--- Returns an item iterator for describeJobQueues.
function M.items_describe_job_queues(client, input)
    return paginator.items(client, "describeJobQueues", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "jobQueues",
    })
end

--- Returns a page iterator for describeServiceEnvironments.
function M.pages_describe_service_environments(client, input)
    return paginator.pages(client, "describeServiceEnvironments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "serviceEnvironments",
    })
end

--- Returns an item iterator for describeServiceEnvironments.
function M.items_describe_service_environments(client, input)
    return paginator.items(client, "describeServiceEnvironments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "serviceEnvironments",
    })
end

--- Returns a page iterator for listConsumableResources.
function M.pages_list_consumable_resources(client, input)
    return paginator.pages(client, "listConsumableResources", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "consumableResources",
    })
end

--- Returns an item iterator for listConsumableResources.
function M.items_list_consumable_resources(client, input)
    return paginator.items(client, "listConsumableResources", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "consumableResources",
    })
end

--- Returns a page iterator for listJobs.
function M.pages_list_jobs(client, input)
    return paginator.pages(client, "listJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "jobSummaryList",
    })
end

--- Returns an item iterator for listJobs.
function M.items_list_jobs(client, input)
    return paginator.items(client, "listJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "jobSummaryList",
    })
end

--- Returns a page iterator for listJobsByConsumableResource.
function M.pages_list_jobs_by_consumable_resource(client, input)
    return paginator.pages(client, "listJobsByConsumableResource", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "jobs",
    })
end

--- Returns an item iterator for listJobsByConsumableResource.
function M.items_list_jobs_by_consumable_resource(client, input)
    return paginator.items(client, "listJobsByConsumableResource", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "jobs",
    })
end

--- Returns a page iterator for listQuotaShares.
function M.pages_list_quota_shares(client, input)
    return paginator.pages(client, "listQuotaShares", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "quotaShares",
    })
end

--- Returns an item iterator for listQuotaShares.
function M.items_list_quota_shares(client, input)
    return paginator.items(client, "listQuotaShares", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "quotaShares",
    })
end

--- Returns a page iterator for listSchedulingPolicies.
function M.pages_list_scheduling_policies(client, input)
    return paginator.pages(client, "listSchedulingPolicies", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "schedulingPolicies",
    })
end

--- Returns an item iterator for listSchedulingPolicies.
function M.items_list_scheduling_policies(client, input)
    return paginator.items(client, "listSchedulingPolicies", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "schedulingPolicies",
    })
end

--- Returns a page iterator for listServiceJobs.
function M.pages_list_service_jobs(client, input)
    return paginator.pages(client, "listServiceJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "jobSummaryList",
    })
end

--- Returns an item iterator for listServiceJobs.
function M.items_list_service_jobs(client, input)
    return paginator.items(client, "listServiceJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "jobSummaryList",
    })
end

return M
