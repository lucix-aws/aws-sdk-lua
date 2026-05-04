local paginator = require("paginator")

local M = {}

--- Returns a page iterator for describeHomeRegionControls.
function M.pages_describe_home_region_controls(client, input)
    return paginator.pages(client, "describeHomeRegionControls", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
