local paginator = require("paginator")

local M = {}

--- Returns a page iterator for searchDevices.
function M.pages_search_devices(client, input)
    return paginator.pages(client, "searchDevices", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "devices",
    })
end

--- Returns an item iterator for searchDevices.
function M.items_search_devices(client, input)
    return paginator.items(client, "searchDevices", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "devices",
    })
end

--- Returns a page iterator for searchJobs.
function M.pages_search_jobs(client, input)
    return paginator.pages(client, "searchJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "jobs",
    })
end

--- Returns an item iterator for searchJobs.
function M.items_search_jobs(client, input)
    return paginator.items(client, "searchJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "jobs",
    })
end

--- Returns a page iterator for searchQuantumTasks.
function M.pages_search_quantum_tasks(client, input)
    return paginator.pages(client, "searchQuantumTasks", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "quantumTasks",
    })
end

--- Returns an item iterator for searchQuantumTasks.
function M.items_search_quantum_tasks(client, input)
    return paginator.items(client, "searchQuantumTasks", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "quantumTasks",
    })
end

--- Returns a page iterator for searchSpendingLimits.
function M.pages_search_spending_limits(client, input)
    return paginator.pages(client, "searchSpendingLimits", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "spendingLimits",
    })
end

--- Returns an item iterator for searchSpendingLimits.
function M.items_search_spending_limits(client, input)
    return paginator.items(client, "searchSpendingLimits", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "spendingLimits",
    })
end

return M
