local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listClusters.
function M.pages_list_clusters(client, input)
    return paginator.pages(client, "listClusters", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "clusters",
    })
end

--- Returns an item iterator for listClusters.
function M.items_list_clusters(client, input)
    return paginator.items(client, "listClusters", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "clusters",
    })
end

return M
