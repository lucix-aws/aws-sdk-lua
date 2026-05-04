local paginator = require("paginator")

local M = {}

--- Returns a page iterator for describeImageScanFindings.
function M.pages_describe_image_scan_findings(client, input)
    return paginator.pages(client, "describeImageScanFindings", input, {
        input_token = "nextToken",
        output_token = "nextToken",
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

--- Returns a page iterator for describePullThroughCacheRules.
function M.pages_describe_pull_through_cache_rules(client, input)
    return paginator.pages(client, "describePullThroughCacheRules", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "pullThroughCacheRules",
    })
end

--- Returns an item iterator for describePullThroughCacheRules.
function M.items_describe_pull_through_cache_rules(client, input)
    return paginator.items(client, "describePullThroughCacheRules", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "pullThroughCacheRules",
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

--- Returns a page iterator for describeRepositoryCreationTemplates.
function M.pages_describe_repository_creation_templates(client, input)
    return paginator.pages(client, "describeRepositoryCreationTemplates", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "repositoryCreationTemplates",
    })
end

--- Returns an item iterator for describeRepositoryCreationTemplates.
function M.items_describe_repository_creation_templates(client, input)
    return paginator.items(client, "describeRepositoryCreationTemplates", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "repositoryCreationTemplates",
    })
end

--- Returns a page iterator for getLifecyclePolicyPreview.
function M.pages_get_lifecycle_policy_preview(client, input)
    return paginator.pages(client, "getLifecyclePolicyPreview", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "previewResults",
    })
end

--- Returns an item iterator for getLifecyclePolicyPreview.
function M.items_get_lifecycle_policy_preview(client, input)
    return paginator.items(client, "getLifecyclePolicyPreview", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "previewResults",
    })
end

--- Returns a page iterator for listImages.
function M.pages_list_images(client, input)
    return paginator.pages(client, "listImages", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "imageIds",
    })
end

--- Returns an item iterator for listImages.
function M.items_list_images(client, input)
    return paginator.items(client, "listImages", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "imageIds",
    })
end

return M
