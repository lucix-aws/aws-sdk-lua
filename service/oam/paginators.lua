local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listAttachedLinks.
function M.pages_list_attached_links(client, input)
    return paginator.pages(client, "listAttachedLinks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns an item iterator for listAttachedLinks.
function M.items_list_attached_links(client, input)
    return paginator.items(client, "listAttachedLinks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns a page iterator for listLinks.
function M.pages_list_links(client, input)
    return paginator.pages(client, "listLinks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns an item iterator for listLinks.
function M.items_list_links(client, input)
    return paginator.items(client, "listLinks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns a page iterator for listSinks.
function M.pages_list_sinks(client, input)
    return paginator.pages(client, "listSinks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns an item iterator for listSinks.
function M.items_list_sinks(client, input)
    return paginator.items(client, "listSinks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

return M
