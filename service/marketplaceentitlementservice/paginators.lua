local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for getEntitlements.
function M.pages_get_entitlements(client, input)
    return paginator.pages(client, "getEntitlements", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
