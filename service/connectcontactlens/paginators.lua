local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listRealtimeContactAnalysisSegments.
function M.pages_list_realtime_contact_analysis_segments(client, input)
    return paginator.pages(client, "listRealtimeContactAnalysisSegments", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
