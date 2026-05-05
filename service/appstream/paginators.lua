local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for describeAppBlockBuilderAppBlockAssociations.
function M.pages_describe_app_block_builder_app_block_associations(client, input)
    return paginator.pages(client, "describeAppBlockBuilderAppBlockAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for describeAppBlockBuilders.
function M.pages_describe_app_block_builders(client, input)
    return paginator.pages(client, "describeAppBlockBuilders", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for describeImagePermissions.
function M.pages_describe_image_permissions(client, input)
    return paginator.pages(client, "describeImagePermissions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for describeImages.
function M.pages_describe_images(client, input)
    return paginator.pages(client, "describeImages", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
