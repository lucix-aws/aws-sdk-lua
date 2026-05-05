local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listFeeds.
function M.pages_list_feeds(client, input)
    return paginator.pages(client, "listFeeds", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "feeds",
    })
end

--- Returns an item iterator for listFeeds.
function M.items_list_feeds(client, input)
    return paginator.items(client, "listFeeds", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "feeds",
    })
end

return M
