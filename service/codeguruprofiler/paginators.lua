local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for getFindingsReportAccountSummary.
function M.pages_get_findings_report_account_summary(client, input)
    return paginator.pages(client, "getFindingsReportAccountSummary", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listFindingsReports.
function M.pages_list_findings_reports(client, input)
    return paginator.pages(client, "listFindingsReports", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listProfileTimes.
function M.pages_list_profile_times(client, input)
    return paginator.pages(client, "listProfileTimes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "profileTimes",
    })
end

--- Returns an item iterator for listProfileTimes.
function M.items_list_profile_times(client, input)
    return paginator.items(client, "listProfileTimes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "profileTimes",
    })
end

--- Returns a page iterator for listProfilingGroups.
function M.pages_list_profiling_groups(client, input)
    return paginator.pages(client, "listProfilingGroups", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

return M
