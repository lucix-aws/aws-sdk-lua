local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listDatasourcePackages.
function M.pages_list_datasource_packages(client, input)
    return paginator.pages(client, "listDatasourcePackages", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listGraphs.
function M.pages_list_graphs(client, input)
    return paginator.pages(client, "listGraphs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listInvitations.
function M.pages_list_invitations(client, input)
    return paginator.pages(client, "listInvitations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listMembers.
function M.pages_list_members(client, input)
    return paginator.pages(client, "listMembers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listOrganizationAdminAccounts.
function M.pages_list_organization_admin_accounts(client, input)
    return paginator.pages(client, "listOrganizationAdminAccounts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
