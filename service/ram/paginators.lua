local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for getResourcePolicies.
function M.pages_get_resource_policies(client, input)
    return paginator.pages(client, "getResourcePolicies", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for getResourceShareAssociations.
function M.pages_get_resource_share_associations(client, input)
    return paginator.pages(client, "getResourceShareAssociations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for getResourceShareInvitations.
function M.pages_get_resource_share_invitations(client, input)
    return paginator.pages(client, "getResourceShareInvitations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for getResourceShares.
function M.pages_get_resource_shares(client, input)
    return paginator.pages(client, "getResourceShares", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listPendingInvitationResources.
function M.pages_list_pending_invitation_resources(client, input)
    return paginator.pages(client, "listPendingInvitationResources", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listPermissionAssociations.
function M.pages_list_permission_associations(client, input)
    return paginator.pages(client, "listPermissionAssociations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listPermissionVersions.
function M.pages_list_permission_versions(client, input)
    return paginator.pages(client, "listPermissionVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listPermissions.
function M.pages_list_permissions(client, input)
    return paginator.pages(client, "listPermissions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listPrincipals.
function M.pages_list_principals(client, input)
    return paginator.pages(client, "listPrincipals", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listReplacePermissionAssociationsWork.
function M.pages_list_replace_permission_associations_work(client, input)
    return paginator.pages(client, "listReplacePermissionAssociationsWork", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listResourceSharePermissions.
function M.pages_list_resource_share_permissions(client, input)
    return paginator.pages(client, "listResourceSharePermissions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listResourceTypes.
function M.pages_list_resource_types(client, input)
    return paginator.pages(client, "listResourceTypes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listResources.
function M.pages_list_resources(client, input)
    return paginator.pages(client, "listResources", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listSourceAssociations.
function M.pages_list_source_associations(client, input)
    return paginator.pages(client, "listSourceAssociations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "sourceAssociations",
    })
end

--- Returns an item iterator for listSourceAssociations.
function M.items_list_source_associations(client, input)
    return paginator.items(client, "listSourceAssociations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "sourceAssociations",
    })
end

return M
