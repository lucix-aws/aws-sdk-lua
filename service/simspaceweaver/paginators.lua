local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listApps.
function M.pages_list_apps(client, input)
    return paginator.pages(client, "listApps", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listSimulations.
function M.pages_list_simulations(client, input)
    return paginator.pages(client, "listSimulations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
