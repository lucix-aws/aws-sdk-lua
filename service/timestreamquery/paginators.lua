local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listScheduledQueries.
function M.pages_list_scheduled_queries(client, input)
    return paginator.pages(client, "listScheduledQueries", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ScheduledQueries",
    })
end

--- Returns an item iterator for listScheduledQueries.
function M.items_list_scheduled_queries(client, input)
    return paginator.items(client, "listScheduledQueries", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ScheduledQueries",
    })
end

--- Returns a page iterator for listTagsForResource.
function M.pages_list_tags_for_resource(client, input)
    return paginator.pages(client, "listTagsForResource", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Tags",
    })
end

--- Returns an item iterator for listTagsForResource.
function M.items_list_tags_for_resource(client, input)
    return paginator.items(client, "listTagsForResource", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Tags",
    })
end

--- Returns a page iterator for query.
function M.pages_query(client, input)
    return paginator.pages(client, "query", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Rows",
    })
end

--- Returns an item iterator for query.
function M.items_query(client, input)
    return paginator.items(client, "query", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Rows",
    })
end

return M
