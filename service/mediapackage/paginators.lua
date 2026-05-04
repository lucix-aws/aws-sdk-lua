local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listChannels.
function M.pages_list_channels(client, input)
    return paginator.pages(client, "listChannels", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Channels",
    })
end

--- Returns an item iterator for listChannels.
function M.items_list_channels(client, input)
    return paginator.items(client, "listChannels", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Channels",
    })
end

--- Returns a page iterator for listHarvestJobs.
function M.pages_list_harvest_jobs(client, input)
    return paginator.pages(client, "listHarvestJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "HarvestJobs",
    })
end

--- Returns an item iterator for listHarvestJobs.
function M.items_list_harvest_jobs(client, input)
    return paginator.items(client, "listHarvestJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "HarvestJobs",
    })
end

--- Returns a page iterator for listOriginEndpoints.
function M.pages_list_origin_endpoints(client, input)
    return paginator.pages(client, "listOriginEndpoints", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "OriginEndpoints",
    })
end

--- Returns an item iterator for listOriginEndpoints.
function M.items_list_origin_endpoints(client, input)
    return paginator.items(client, "listOriginEndpoints", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "OriginEndpoints",
    })
end

return M
