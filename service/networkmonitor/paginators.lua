local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listMonitors.
function M.pages_list_monitors(client, input)
    return paginator.pages(client, "listMonitors", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "monitors",
    })
end

--- Returns an item iterator for listMonitors.
function M.items_list_monitors(client, input)
    return paginator.items(client, "listMonitors", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "monitors",
    })
end

return M
