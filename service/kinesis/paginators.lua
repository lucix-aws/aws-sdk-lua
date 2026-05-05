local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listStreamConsumers.
function M.pages_list_stream_consumers(client, input)
    return paginator.pages(client, "listStreamConsumers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listStreams.
function M.pages_list_streams(client, input)
    return paginator.pages(client, "listStreams", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
