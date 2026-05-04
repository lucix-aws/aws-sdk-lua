local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listCapabilities.
function M.pages_list_capabilities(client, input)
    return paginator.pages(client, "listCapabilities", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "capabilities",
    })
end

--- Returns an item iterator for listCapabilities.
function M.items_list_capabilities(client, input)
    return paginator.items(client, "listCapabilities", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "capabilities",
    })
end

--- Returns a page iterator for listPartnerships.
function M.pages_list_partnerships(client, input)
    return paginator.pages(client, "listPartnerships", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "partnerships",
    })
end

--- Returns an item iterator for listPartnerships.
function M.items_list_partnerships(client, input)
    return paginator.items(client, "listPartnerships", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "partnerships",
    })
end

--- Returns a page iterator for listProfiles.
function M.pages_list_profiles(client, input)
    return paginator.pages(client, "listProfiles", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "profiles",
    })
end

--- Returns an item iterator for listProfiles.
function M.items_list_profiles(client, input)
    return paginator.items(client, "listProfiles", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "profiles",
    })
end

--- Returns a page iterator for listTransformers.
function M.pages_list_transformers(client, input)
    return paginator.pages(client, "listTransformers", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "transformers",
    })
end

--- Returns an item iterator for listTransformers.
function M.items_list_transformers(client, input)
    return paginator.items(client, "listTransformers", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "transformers",
    })
end

return M
