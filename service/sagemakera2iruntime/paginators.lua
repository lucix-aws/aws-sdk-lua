local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listHumanLoops.
function M.pages_list_human_loops(client, input)
    return paginator.pages(client, "listHumanLoops", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "HumanLoopSummaries",
    })
end

--- Returns an item iterator for listHumanLoops.
function M.items_list_human_loops(client, input)
    return paginator.items(client, "listHumanLoops", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "HumanLoopSummaries",
    })
end

return M
