local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listInvestigationGroups.
function M.pages_list_investigation_groups(client, input)
    return paginator.pages(client, "listInvestigationGroups", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "investigationGroups",
    })
end

--- Returns an item iterator for listInvestigationGroups.
function M.items_list_investigation_groups(client, input)
    return paginator.items(client, "listInvestigationGroups", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "investigationGroups",
    })
end

return M
