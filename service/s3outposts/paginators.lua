local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listEndpoints.
function M.pages_list_endpoints(client, input)
    return paginator.pages(client, "listEndpoints", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Endpoints",
    })
end

--- Returns an item iterator for listEndpoints.
function M.items_list_endpoints(client, input)
    return paginator.items(client, "listEndpoints", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Endpoints",
    })
end

--- Returns a page iterator for listOutpostsWithS3.
function M.pages_list_outposts_with_s3(client, input)
    return paginator.pages(client, "listOutpostsWithS3", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Outposts",
    })
end

--- Returns an item iterator for listOutpostsWithS3.
function M.items_list_outposts_with_s3(client, input)
    return paginator.items(client, "listOutpostsWithS3", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Outposts",
    })
end

--- Returns a page iterator for listSharedEndpoints.
function M.pages_list_shared_endpoints(client, input)
    return paginator.pages(client, "listSharedEndpoints", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Endpoints",
    })
end

--- Returns an item iterator for listSharedEndpoints.
function M.items_list_shared_endpoints(client, input)
    return paginator.items(client, "listSharedEndpoints", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Endpoints",
    })
end

return M
