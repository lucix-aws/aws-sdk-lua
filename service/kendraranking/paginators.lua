local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listRescoreExecutionPlans.
function M.pages_list_rescore_execution_plans(client, input)
    return paginator.pages(client, "listRescoreExecutionPlans", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
