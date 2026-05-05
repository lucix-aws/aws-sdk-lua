local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listRegions.
function M.pages_list_regions(client, input)
    return paginator.pages(client, "listRegions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Regions",
    })
end

--- Returns an item iterator for listRegions.
function M.items_list_regions(client, input)
    return paginator.items(client, "listRegions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Regions",
    })
end

return M
