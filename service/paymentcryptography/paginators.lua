local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listAliases.
function M.pages_list_aliases(client, input)
    return paginator.pages(client, "listAliases", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Aliases",
    })
end

--- Returns an item iterator for listAliases.
function M.items_list_aliases(client, input)
    return paginator.items(client, "listAliases", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Aliases",
    })
end

--- Returns a page iterator for listKeys.
function M.pages_list_keys(client, input)
    return paginator.pages(client, "listKeys", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Keys",
    })
end

--- Returns an item iterator for listKeys.
function M.items_list_keys(client, input)
    return paginator.items(client, "listKeys", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Keys",
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

return M
