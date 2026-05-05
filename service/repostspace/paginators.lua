local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listChannels.
function M.pages_list_channels(client, input)
    return paginator.pages(client, "listChannels", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "channels",
    })
end

--- Returns an item iterator for listChannels.
function M.items_list_channels(client, input)
    return paginator.items(client, "listChannels", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "channels",
    })
end

--- Returns a page iterator for listSpaces.
function M.pages_list_spaces(client, input)
    return paginator.pages(client, "listSpaces", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "spaces",
    })
end

--- Returns an item iterator for listSpaces.
function M.items_list_spaces(client, input)
    return paginator.items(client, "listSpaces", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "spaces",
    })
end

return M
