local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listApplications.
function M.pages_list_applications(client, input)
    return paginator.pages(client, "listApplications", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "applications",
    })
end

--- Returns an item iterator for listApplications.
function M.items_list_applications(client, input)
    return paginator.items(client, "listApplications", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "applications",
    })
end

--- Returns a page iterator for listAssociatedAttributeGroups.
function M.pages_list_associated_attribute_groups(client, input)
    return paginator.pages(client, "listAssociatedAttributeGroups", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "attributeGroups",
    })
end

--- Returns an item iterator for listAssociatedAttributeGroups.
function M.items_list_associated_attribute_groups(client, input)
    return paginator.items(client, "listAssociatedAttributeGroups", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "attributeGroups",
    })
end

--- Returns a page iterator for listAssociatedResources.
function M.pages_list_associated_resources(client, input)
    return paginator.pages(client, "listAssociatedResources", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "resources",
    })
end

--- Returns an item iterator for listAssociatedResources.
function M.items_list_associated_resources(client, input)
    return paginator.items(client, "listAssociatedResources", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "resources",
    })
end

--- Returns a page iterator for listAttributeGroups.
function M.pages_list_attribute_groups(client, input)
    return paginator.pages(client, "listAttributeGroups", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "attributeGroups",
    })
end

--- Returns an item iterator for listAttributeGroups.
function M.items_list_attribute_groups(client, input)
    return paginator.items(client, "listAttributeGroups", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "attributeGroups",
    })
end

--- Returns a page iterator for listAttributeGroupsForApplication.
function M.pages_list_attribute_groups_for_application(client, input)
    return paginator.pages(client, "listAttributeGroupsForApplication", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "attributeGroupsDetails",
    })
end

--- Returns an item iterator for listAttributeGroupsForApplication.
function M.items_list_attribute_groups_for_application(client, input)
    return paginator.items(client, "listAttributeGroupsForApplication", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "attributeGroupsDetails",
    })
end

return M
