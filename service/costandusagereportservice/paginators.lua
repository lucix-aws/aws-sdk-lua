local paginator = require("paginator")

local M = {}

--- Returns a page iterator for describeReportDefinitions.
function M.pages_describe_report_definitions(client, input)
    return paginator.pages(client, "describeReportDefinitions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
