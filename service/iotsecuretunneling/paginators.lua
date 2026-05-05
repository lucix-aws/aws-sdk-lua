local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listTunnels.
function M.pages_list_tunnels(client, input)
    return paginator.pages(client, "listTunnels", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

return M
