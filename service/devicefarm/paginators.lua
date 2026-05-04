local paginator = require("paginator")

local M = {}

--- Returns a page iterator for getOfferingStatus.
function M.pages_get_offering_status(client, input)
    return paginator.pages(client, "getOfferingStatus", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listArtifacts.
function M.pages_list_artifacts(client, input)
    return paginator.pages(client, "listArtifacts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "artifacts",
    })
end

--- Returns an item iterator for listArtifacts.
function M.items_list_artifacts(client, input)
    return paginator.items(client, "listArtifacts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "artifacts",
    })
end

--- Returns a page iterator for listDevicePools.
function M.pages_list_device_pools(client, input)
    return paginator.pages(client, "listDevicePools", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "devicePools",
    })
end

--- Returns an item iterator for listDevicePools.
function M.items_list_device_pools(client, input)
    return paginator.items(client, "listDevicePools", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "devicePools",
    })
end

--- Returns a page iterator for listDevices.
function M.pages_list_devices(client, input)
    return paginator.pages(client, "listDevices", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "devices",
    })
end

--- Returns an item iterator for listDevices.
function M.items_list_devices(client, input)
    return paginator.items(client, "listDevices", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "devices",
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

--- Returns a page iterator for listOfferingTransactions.
function M.pages_list_offering_transactions(client, input)
    return paginator.pages(client, "listOfferingTransactions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "offeringTransactions",
    })
end

--- Returns an item iterator for listOfferingTransactions.
function M.items_list_offering_transactions(client, input)
    return paginator.items(client, "listOfferingTransactions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "offeringTransactions",
    })
end

--- Returns a page iterator for listOfferings.
function M.pages_list_offerings(client, input)
    return paginator.pages(client, "listOfferings", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "offerings",
    })
end

--- Returns an item iterator for listOfferings.
function M.items_list_offerings(client, input)
    return paginator.items(client, "listOfferings", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "offerings",
    })
end

--- Returns a page iterator for listProjects.
function M.pages_list_projects(client, input)
    return paginator.pages(client, "listProjects", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "projects",
    })
end

--- Returns an item iterator for listProjects.
function M.items_list_projects(client, input)
    return paginator.items(client, "listProjects", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "projects",
    })
end

--- Returns a page iterator for listRuns.
function M.pages_list_runs(client, input)
    return paginator.pages(client, "listRuns", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "runs",
    })
end

--- Returns an item iterator for listRuns.
function M.items_list_runs(client, input)
    return paginator.items(client, "listRuns", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "runs",
    })
end

--- Returns a page iterator for listSamples.
function M.pages_list_samples(client, input)
    return paginator.pages(client, "listSamples", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "samples",
    })
end

--- Returns an item iterator for listSamples.
function M.items_list_samples(client, input)
    return paginator.items(client, "listSamples", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "samples",
    })
end

--- Returns a page iterator for listSuites.
function M.pages_list_suites(client, input)
    return paginator.pages(client, "listSuites", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "suites",
    })
end

--- Returns an item iterator for listSuites.
function M.items_list_suites(client, input)
    return paginator.items(client, "listSuites", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "suites",
    })
end

--- Returns a page iterator for listTestGridProjects.
function M.pages_list_test_grid_projects(client, input)
    return paginator.pages(client, "listTestGridProjects", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listTestGridSessionActions.
function M.pages_list_test_grid_session_actions(client, input)
    return paginator.pages(client, "listTestGridSessionActions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listTestGridSessionArtifacts.
function M.pages_list_test_grid_session_artifacts(client, input)
    return paginator.pages(client, "listTestGridSessionArtifacts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listTestGridSessions.
function M.pages_list_test_grid_sessions(client, input)
    return paginator.pages(client, "listTestGridSessions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listTests.
function M.pages_list_tests(client, input)
    return paginator.pages(client, "listTests", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "tests",
    })
end

--- Returns an item iterator for listTests.
function M.items_list_tests(client, input)
    return paginator.items(client, "listTests", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "tests",
    })
end

--- Returns a page iterator for listUniqueProblems.
function M.pages_list_unique_problems(client, input)
    return paginator.pages(client, "listUniqueProblems", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "uniqueProblems",
    })
end

--- Returns an item iterator for listUniqueProblems.
function M.items_list_unique_problems(client, input)
    return paginator.items(client, "listUniqueProblems", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "uniqueProblems",
    })
end

--- Returns a page iterator for listUploads.
function M.pages_list_uploads(client, input)
    return paginator.pages(client, "listUploads", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "uploads",
    })
end

--- Returns an item iterator for listUploads.
function M.items_list_uploads(client, input)
    return paginator.items(client, "listUploads", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "uploads",
    })
end

return M
