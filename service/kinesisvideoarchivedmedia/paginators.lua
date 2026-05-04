local paginator = require("paginator")

local M = {}

--- Returns a page iterator for getImages.
function M.pages_get_images(client, input)
    return paginator.pages(client, "getImages", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Images",
    })
end

--- Returns an item iterator for getImages.
function M.items_get_images(client, input)
    return paginator.items(client, "getImages", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Images",
    })
end

--- Returns a page iterator for listFragments.
function M.pages_list_fragments(client, input)
    return paginator.pages(client, "listFragments", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Fragments",
    })
end

--- Returns an item iterator for listFragments.
function M.items_list_fragments(client, input)
    return paginator.items(client, "listFragments", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Fragments",
    })
end

return M
