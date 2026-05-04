local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listRetainedMessages.
function M.pages_list_retained_messages(client, input)
    return paginator.pages(client, "listRetainedMessages", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "retainedTopics",
    })
end

--- Returns an item iterator for listRetainedMessages.
function M.items_list_retained_messages(client, input)
    return paginator.items(client, "listRetainedMessages", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "retainedTopics",
    })
end

return M
