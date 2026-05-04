local paginator = require("paginator")

local M = {}

--- Returns a page iterator for getTranscript.
function M.pages_get_transcript(client, input)
    return paginator.pages(client, "getTranscript", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
