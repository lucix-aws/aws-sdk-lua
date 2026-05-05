local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listApplications.
function M.pages_list_applications(client, input)
    return paginator.pages(client, "listApplications", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "applications",
    })
end

--- Returns an item iterator for listApplications.
function M.items_list_applications(client, input)
    return paginator.items(client, "listApplications", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "applications",
    })
end

--- Returns a page iterator for listJobRunAttempts.
function M.pages_list_job_run_attempts(client, input)
    return paginator.pages(client, "listJobRunAttempts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "jobRunAttempts",
    })
end

--- Returns an item iterator for listJobRunAttempts.
function M.items_list_job_run_attempts(client, input)
    return paginator.items(client, "listJobRunAttempts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "jobRunAttempts",
    })
end

--- Returns a page iterator for listJobRuns.
function M.pages_list_job_runs(client, input)
    return paginator.pages(client, "listJobRuns", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "jobRuns",
    })
end

--- Returns an item iterator for listJobRuns.
function M.items_list_job_runs(client, input)
    return paginator.items(client, "listJobRuns", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "jobRuns",
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

return M
