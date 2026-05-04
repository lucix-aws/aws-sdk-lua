local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listAssets.
function M.pages_list_assets(client, input)
    return paginator.pages(client, "listAssets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Assets",
    })
end

--- Returns an item iterator for listAssets.
function M.items_list_assets(client, input)
    return paginator.items(client, "listAssets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Assets",
    })
end

--- Returns a page iterator for listPackagingConfigurations.
function M.pages_list_packaging_configurations(client, input)
    return paginator.pages(client, "listPackagingConfigurations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PackagingConfigurations",
    })
end

--- Returns an item iterator for listPackagingConfigurations.
function M.items_list_packaging_configurations(client, input)
    return paginator.items(client, "listPackagingConfigurations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PackagingConfigurations",
    })
end

--- Returns a page iterator for listPackagingGroups.
function M.pages_list_packaging_groups(client, input)
    return paginator.pages(client, "listPackagingGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PackagingGroups",
    })
end

--- Returns an item iterator for listPackagingGroups.
function M.items_list_packaging_groups(client, input)
    return paginator.items(client, "listPackagingGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PackagingGroups",
    })
end

return M
