local paginator = require("paginator")

local M = {}

--- Returns a page iterator for describeImageTags.
function M.pages_describe_image_tags(client, input)
    return paginator.pages(client, "describeImageTags", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "imageTagDetails",
    })
end

--- Returns an item iterator for describeImageTags.
function M.items_describe_image_tags(client, input)
    return paginator.items(client, "describeImageTags", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "imageTagDetails",
    })
end

--- Returns a page iterator for describeImages.
function M.pages_describe_images(client, input)
    return paginator.pages(client, "describeImages", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "imageDetails",
    })
end

--- Returns an item iterator for describeImages.
function M.items_describe_images(client, input)
    return paginator.items(client, "describeImages", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "imageDetails",
    })
end

--- Returns a page iterator for describeRegistries.
function M.pages_describe_registries(client, input)
    return paginator.pages(client, "describeRegistries", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "registries",
    })
end

--- Returns an item iterator for describeRegistries.
function M.items_describe_registries(client, input)
    return paginator.items(client, "describeRegistries", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "registries",
    })
end

--- Returns a page iterator for describeRepositories.
function M.pages_describe_repositories(client, input)
    return paginator.pages(client, "describeRepositories", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "repositories",
    })
end

--- Returns an item iterator for describeRepositories.
function M.items_describe_repositories(client, input)
    return paginator.items(client, "describeRepositories", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "repositories",
    })
end

return M
