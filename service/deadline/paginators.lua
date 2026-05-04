local paginator = require("paginator")

local M = {}

--- Returns a page iterator for getSessionsStatisticsAggregation.
function M.pages_get_sessions_statistics_aggregation(client, input)
    return paginator.pages(client, "getSessionsStatisticsAggregation", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "statistics",
    })
end

--- Returns an item iterator for getSessionsStatisticsAggregation.
function M.items_get_sessions_statistics_aggregation(client, input)
    return paginator.items(client, "getSessionsStatisticsAggregation", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "statistics",
    })
end

--- Returns a page iterator for listAvailableMeteredProducts.
function M.pages_list_available_metered_products(client, input)
    return paginator.pages(client, "listAvailableMeteredProducts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "meteredProducts",
    })
end

--- Returns an item iterator for listAvailableMeteredProducts.
function M.items_list_available_metered_products(client, input)
    return paginator.items(client, "listAvailableMeteredProducts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "meteredProducts",
    })
end

--- Returns a page iterator for listBudgets.
function M.pages_list_budgets(client, input)
    return paginator.pages(client, "listBudgets", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "budgets",
    })
end

--- Returns an item iterator for listBudgets.
function M.items_list_budgets(client, input)
    return paginator.items(client, "listBudgets", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "budgets",
    })
end

--- Returns a page iterator for listFarmMembers.
function M.pages_list_farm_members(client, input)
    return paginator.pages(client, "listFarmMembers", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "members",
    })
end

--- Returns an item iterator for listFarmMembers.
function M.items_list_farm_members(client, input)
    return paginator.items(client, "listFarmMembers", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "members",
    })
end

--- Returns a page iterator for listFarms.
function M.pages_list_farms(client, input)
    return paginator.pages(client, "listFarms", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "farms",
    })
end

--- Returns an item iterator for listFarms.
function M.items_list_farms(client, input)
    return paginator.items(client, "listFarms", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "farms",
    })
end

--- Returns a page iterator for listFleetMembers.
function M.pages_list_fleet_members(client, input)
    return paginator.pages(client, "listFleetMembers", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "members",
    })
end

--- Returns an item iterator for listFleetMembers.
function M.items_list_fleet_members(client, input)
    return paginator.items(client, "listFleetMembers", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "members",
    })
end

--- Returns a page iterator for listFleets.
function M.pages_list_fleets(client, input)
    return paginator.pages(client, "listFleets", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "fleets",
    })
end

--- Returns an item iterator for listFleets.
function M.items_list_fleets(client, input)
    return paginator.items(client, "listFleets", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "fleets",
    })
end

--- Returns a page iterator for listJobMembers.
function M.pages_list_job_members(client, input)
    return paginator.pages(client, "listJobMembers", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "members",
    })
end

--- Returns an item iterator for listJobMembers.
function M.items_list_job_members(client, input)
    return paginator.items(client, "listJobMembers", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "members",
    })
end

--- Returns a page iterator for listJobParameterDefinitions.
function M.pages_list_job_parameter_definitions(client, input)
    return paginator.pages(client, "listJobParameterDefinitions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "jobParameterDefinitions",
    })
end

--- Returns an item iterator for listJobParameterDefinitions.
function M.items_list_job_parameter_definitions(client, input)
    return paginator.items(client, "listJobParameterDefinitions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "jobParameterDefinitions",
    })
end

--- Returns a page iterator for listJobs.
function M.pages_list_jobs(client, input)
    return paginator.pages(client, "listJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "jobs",
    })
end

--- Returns an item iterator for listJobs.
function M.items_list_jobs(client, input)
    return paginator.items(client, "listJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "jobs",
    })
end

--- Returns a page iterator for listLicenseEndpoints.
function M.pages_list_license_endpoints(client, input)
    return paginator.pages(client, "listLicenseEndpoints", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "licenseEndpoints",
    })
end

--- Returns an item iterator for listLicenseEndpoints.
function M.items_list_license_endpoints(client, input)
    return paginator.items(client, "listLicenseEndpoints", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "licenseEndpoints",
    })
end

--- Returns a page iterator for listLimits.
function M.pages_list_limits(client, input)
    return paginator.pages(client, "listLimits", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "limits",
    })
end

--- Returns an item iterator for listLimits.
function M.items_list_limits(client, input)
    return paginator.items(client, "listLimits", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "limits",
    })
end

--- Returns a page iterator for listMeteredProducts.
function M.pages_list_metered_products(client, input)
    return paginator.pages(client, "listMeteredProducts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "meteredProducts",
    })
end

--- Returns an item iterator for listMeteredProducts.
function M.items_list_metered_products(client, input)
    return paginator.items(client, "listMeteredProducts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "meteredProducts",
    })
end

--- Returns a page iterator for listMonitors.
function M.pages_list_monitors(client, input)
    return paginator.pages(client, "listMonitors", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "monitors",
    })
end

--- Returns an item iterator for listMonitors.
function M.items_list_monitors(client, input)
    return paginator.items(client, "listMonitors", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "monitors",
    })
end

--- Returns a page iterator for listQueueEnvironments.
function M.pages_list_queue_environments(client, input)
    return paginator.pages(client, "listQueueEnvironments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "environments",
    })
end

--- Returns an item iterator for listQueueEnvironments.
function M.items_list_queue_environments(client, input)
    return paginator.items(client, "listQueueEnvironments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "environments",
    })
end

--- Returns a page iterator for listQueueFleetAssociations.
function M.pages_list_queue_fleet_associations(client, input)
    return paginator.pages(client, "listQueueFleetAssociations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "queueFleetAssociations",
    })
end

--- Returns an item iterator for listQueueFleetAssociations.
function M.items_list_queue_fleet_associations(client, input)
    return paginator.items(client, "listQueueFleetAssociations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "queueFleetAssociations",
    })
end

--- Returns a page iterator for listQueueLimitAssociations.
function M.pages_list_queue_limit_associations(client, input)
    return paginator.pages(client, "listQueueLimitAssociations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "queueLimitAssociations",
    })
end

--- Returns an item iterator for listQueueLimitAssociations.
function M.items_list_queue_limit_associations(client, input)
    return paginator.items(client, "listQueueLimitAssociations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "queueLimitAssociations",
    })
end

--- Returns a page iterator for listQueueMembers.
function M.pages_list_queue_members(client, input)
    return paginator.pages(client, "listQueueMembers", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "members",
    })
end

--- Returns an item iterator for listQueueMembers.
function M.items_list_queue_members(client, input)
    return paginator.items(client, "listQueueMembers", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "members",
    })
end

--- Returns a page iterator for listQueues.
function M.pages_list_queues(client, input)
    return paginator.pages(client, "listQueues", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "queues",
    })
end

--- Returns an item iterator for listQueues.
function M.items_list_queues(client, input)
    return paginator.items(client, "listQueues", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "queues",
    })
end

--- Returns a page iterator for listSessionActions.
function M.pages_list_session_actions(client, input)
    return paginator.pages(client, "listSessionActions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "sessionActions",
    })
end

--- Returns an item iterator for listSessionActions.
function M.items_list_session_actions(client, input)
    return paginator.items(client, "listSessionActions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "sessionActions",
    })
end

--- Returns a page iterator for listSessions.
function M.pages_list_sessions(client, input)
    return paginator.pages(client, "listSessions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "sessions",
    })
end

--- Returns an item iterator for listSessions.
function M.items_list_sessions(client, input)
    return paginator.items(client, "listSessions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "sessions",
    })
end

--- Returns a page iterator for listSessionsForWorker.
function M.pages_list_sessions_for_worker(client, input)
    return paginator.pages(client, "listSessionsForWorker", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "sessions",
    })
end

--- Returns an item iterator for listSessionsForWorker.
function M.items_list_sessions_for_worker(client, input)
    return paginator.items(client, "listSessionsForWorker", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "sessions",
    })
end

--- Returns a page iterator for listStepConsumers.
function M.pages_list_step_consumers(client, input)
    return paginator.pages(client, "listStepConsumers", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "consumers",
    })
end

--- Returns an item iterator for listStepConsumers.
function M.items_list_step_consumers(client, input)
    return paginator.items(client, "listStepConsumers", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "consumers",
    })
end

--- Returns a page iterator for listStepDependencies.
function M.pages_list_step_dependencies(client, input)
    return paginator.pages(client, "listStepDependencies", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "dependencies",
    })
end

--- Returns an item iterator for listStepDependencies.
function M.items_list_step_dependencies(client, input)
    return paginator.items(client, "listStepDependencies", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "dependencies",
    })
end

--- Returns a page iterator for listSteps.
function M.pages_list_steps(client, input)
    return paginator.pages(client, "listSteps", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "steps",
    })
end

--- Returns an item iterator for listSteps.
function M.items_list_steps(client, input)
    return paginator.items(client, "listSteps", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "steps",
    })
end

--- Returns a page iterator for listStorageProfiles.
function M.pages_list_storage_profiles(client, input)
    return paginator.pages(client, "listStorageProfiles", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "storageProfiles",
    })
end

--- Returns an item iterator for listStorageProfiles.
function M.items_list_storage_profiles(client, input)
    return paginator.items(client, "listStorageProfiles", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "storageProfiles",
    })
end

--- Returns a page iterator for listStorageProfilesForQueue.
function M.pages_list_storage_profiles_for_queue(client, input)
    return paginator.pages(client, "listStorageProfilesForQueue", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "storageProfiles",
    })
end

--- Returns an item iterator for listStorageProfilesForQueue.
function M.items_list_storage_profiles_for_queue(client, input)
    return paginator.items(client, "listStorageProfilesForQueue", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "storageProfiles",
    })
end

--- Returns a page iterator for listTasks.
function M.pages_list_tasks(client, input)
    return paginator.pages(client, "listTasks", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "tasks",
    })
end

--- Returns an item iterator for listTasks.
function M.items_list_tasks(client, input)
    return paginator.items(client, "listTasks", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "tasks",
    })
end

--- Returns a page iterator for listWorkers.
function M.pages_list_workers(client, input)
    return paginator.pages(client, "listWorkers", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "workers",
    })
end

--- Returns an item iterator for listWorkers.
function M.items_list_workers(client, input)
    return paginator.items(client, "listWorkers", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "workers",
    })
end

return M
