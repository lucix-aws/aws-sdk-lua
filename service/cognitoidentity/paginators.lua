local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listIdentityPools.
function M.pages_list_identity_pools(client, input)
    return paginator.pages(client, "listIdentityPools", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "IdentityPools",
    })
end

--- Returns an item iterator for listIdentityPools.
function M.items_list_identity_pools(client, input)
    return paginator.items(client, "listIdentityPools", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "IdentityPools",
    })
end

return M
