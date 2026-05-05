local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listAliases.
function M.pages_list_aliases(client, input)
    return paginator.pages(client, "listAliases", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listAvailabilityConfigurations.
function M.pages_list_availability_configurations(client, input)
    return paginator.pages(client, "listAvailabilityConfigurations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AvailabilityConfigurations",
    })
end

--- Returns an item iterator for listAvailabilityConfigurations.
function M.items_list_availability_configurations(client, input)
    return paginator.items(client, "listAvailabilityConfigurations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AvailabilityConfigurations",
    })
end

--- Returns a page iterator for listGroupMembers.
function M.pages_list_group_members(client, input)
    return paginator.pages(client, "listGroupMembers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listGroups.
function M.pages_list_groups(client, input)
    return paginator.pages(client, "listGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listGroupsForEntity.
function M.pages_list_groups_for_entity(client, input)
    return paginator.pages(client, "listGroupsForEntity", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listImpersonationRoles.
function M.pages_list_impersonation_roles(client, input)
    return paginator.pages(client, "listImpersonationRoles", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listMailDomains.
function M.pages_list_mail_domains(client, input)
    return paginator.pages(client, "listMailDomains", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listMailboxExportJobs.
function M.pages_list_mailbox_export_jobs(client, input)
    return paginator.pages(client, "listMailboxExportJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listMailboxPermissions.
function M.pages_list_mailbox_permissions(client, input)
    return paginator.pages(client, "listMailboxPermissions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listMobileDeviceAccessOverrides.
function M.pages_list_mobile_device_access_overrides(client, input)
    return paginator.pages(client, "listMobileDeviceAccessOverrides", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listOrganizations.
function M.pages_list_organizations(client, input)
    return paginator.pages(client, "listOrganizations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listPersonalAccessTokens.
function M.pages_list_personal_access_tokens(client, input)
    return paginator.pages(client, "listPersonalAccessTokens", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PersonalAccessTokenSummaries",
    })
end

--- Returns an item iterator for listPersonalAccessTokens.
function M.items_list_personal_access_tokens(client, input)
    return paginator.items(client, "listPersonalAccessTokens", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PersonalAccessTokenSummaries",
    })
end

--- Returns a page iterator for listResourceDelegates.
function M.pages_list_resource_delegates(client, input)
    return paginator.pages(client, "listResourceDelegates", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listResources.
function M.pages_list_resources(client, input)
    return paginator.pages(client, "listResources", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listUsers.
function M.pages_list_users(client, input)
    return paginator.pages(client, "listUsers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
