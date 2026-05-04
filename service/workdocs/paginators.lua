local paginator = require("paginator")

local M = {}

--- Returns a page iterator for describeActivities.
function M.pages_describe_activities(client, input)
    return paginator.pages(client, "describeActivities", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "UserActivities",
    })
end

--- Returns an item iterator for describeActivities.
function M.items_describe_activities(client, input)
    return paginator.items(client, "describeActivities", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "UserActivities",
    })
end

--- Returns a page iterator for describeComments.
function M.pages_describe_comments(client, input)
    return paginator.pages(client, "describeComments", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Comments",
    })
end

--- Returns an item iterator for describeComments.
function M.items_describe_comments(client, input)
    return paginator.items(client, "describeComments", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Comments",
    })
end

--- Returns a page iterator for describeDocumentVersions.
function M.pages_describe_document_versions(client, input)
    return paginator.pages(client, "describeDocumentVersions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DocumentVersions",
    })
end

--- Returns an item iterator for describeDocumentVersions.
function M.items_describe_document_versions(client, input)
    return paginator.items(client, "describeDocumentVersions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DocumentVersions",
    })
end

--- Returns a page iterator for describeFolderContents.
function M.pages_describe_folder_contents(client, input)
    return paginator.pages(client, "describeFolderContents", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

--- Returns a page iterator for describeGroups.
function M.pages_describe_groups(client, input)
    return paginator.pages(client, "describeGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Groups",
    })
end

--- Returns an item iterator for describeGroups.
function M.items_describe_groups(client, input)
    return paginator.items(client, "describeGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Groups",
    })
end

--- Returns a page iterator for describeNotificationSubscriptions.
function M.pages_describe_notification_subscriptions(client, input)
    return paginator.pages(client, "describeNotificationSubscriptions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Subscriptions",
    })
end

--- Returns an item iterator for describeNotificationSubscriptions.
function M.items_describe_notification_subscriptions(client, input)
    return paginator.items(client, "describeNotificationSubscriptions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Subscriptions",
    })
end

--- Returns a page iterator for describeResourcePermissions.
function M.pages_describe_resource_permissions(client, input)
    return paginator.pages(client, "describeResourcePermissions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Principals",
    })
end

--- Returns an item iterator for describeResourcePermissions.
function M.items_describe_resource_permissions(client, input)
    return paginator.items(client, "describeResourcePermissions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Principals",
    })
end

--- Returns a page iterator for describeRootFolders.
function M.pages_describe_root_folders(client, input)
    return paginator.pages(client, "describeRootFolders", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Folders",
    })
end

--- Returns an item iterator for describeRootFolders.
function M.items_describe_root_folders(client, input)
    return paginator.items(client, "describeRootFolders", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Folders",
    })
end

--- Returns a page iterator for describeUsers.
function M.pages_describe_users(client, input)
    return paginator.pages(client, "describeUsers", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Users",
    })
end

--- Returns an item iterator for describeUsers.
function M.items_describe_users(client, input)
    return paginator.items(client, "describeUsers", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Users",
    })
end

--- Returns a page iterator for searchResources.
function M.pages_search_resources(client, input)
    return paginator.pages(client, "searchResources", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Items",
    })
end

--- Returns an item iterator for searchResources.
function M.items_search_resources(client, input)
    return paginator.items(client, "searchResources", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Items",
    })
end

return M
