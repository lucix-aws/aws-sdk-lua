local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listContainers.
function M.pages_list_containers(client, input)
    return paginator.pages(client, "listContainers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
