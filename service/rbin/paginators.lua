local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listRules.
function M.pages_list_rules(client, input)
    return paginator.pages(client, "listRules", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Rules",
    })
end

--- Returns an item iterator for listRules.
function M.items_list_rules(client, input)
    return paginator.items(client, "listRules", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Rules",
    })
end

return M
