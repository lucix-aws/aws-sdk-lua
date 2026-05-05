local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listSearchJobBackups.
function M.pages_list_search_job_backups(client, input)
    return paginator.pages(client, "listSearchJobBackups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Results",
    })
end

--- Returns an item iterator for listSearchJobBackups.
function M.items_list_search_job_backups(client, input)
    return paginator.items(client, "listSearchJobBackups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Results",
    })
end

--- Returns a page iterator for listSearchJobResults.
function M.pages_list_search_job_results(client, input)
    return paginator.pages(client, "listSearchJobResults", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Results",
    })
end

--- Returns an item iterator for listSearchJobResults.
function M.items_list_search_job_results(client, input)
    return paginator.items(client, "listSearchJobResults", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Results",
    })
end

--- Returns a page iterator for listSearchJobs.
function M.pages_list_search_jobs(client, input)
    return paginator.pages(client, "listSearchJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SearchJobs",
    })
end

--- Returns an item iterator for listSearchJobs.
function M.items_list_search_jobs(client, input)
    return paginator.items(client, "listSearchJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SearchJobs",
    })
end

--- Returns a page iterator for listSearchResultExportJobs.
function M.pages_list_search_result_export_jobs(client, input)
    return paginator.pages(client, "listSearchResultExportJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ExportJobs",
    })
end

--- Returns an item iterator for listSearchResultExportJobs.
function M.items_list_search_result_export_jobs(client, input)
    return paginator.items(client, "listSearchResultExportJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ExportJobs",
    })
end

return M
