local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listApprovalTeams.
function M.pages_list_approval_teams(client, input)
    return paginator.pages(client, "listApprovalTeams", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ApprovalTeams",
    })
end

--- Returns an item iterator for listApprovalTeams.
function M.items_list_approval_teams(client, input)
    return paginator.items(client, "listApprovalTeams", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ApprovalTeams",
    })
end

--- Returns a page iterator for listIdentitySources.
function M.pages_list_identity_sources(client, input)
    return paginator.pages(client, "listIdentitySources", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "IdentitySources",
    })
end

--- Returns an item iterator for listIdentitySources.
function M.items_list_identity_sources(client, input)
    return paginator.items(client, "listIdentitySources", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "IdentitySources",
    })
end

--- Returns a page iterator for listPolicies.
function M.pages_list_policies(client, input)
    return paginator.pages(client, "listPolicies", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Policies",
    })
end

--- Returns an item iterator for listPolicies.
function M.items_list_policies(client, input)
    return paginator.items(client, "listPolicies", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Policies",
    })
end

--- Returns a page iterator for listPolicyVersions.
function M.pages_list_policy_versions(client, input)
    return paginator.pages(client, "listPolicyVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PolicyVersions",
    })
end

--- Returns an item iterator for listPolicyVersions.
function M.items_list_policy_versions(client, input)
    return paginator.items(client, "listPolicyVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PolicyVersions",
    })
end

--- Returns a page iterator for listResourcePolicies.
function M.pages_list_resource_policies(client, input)
    return paginator.pages(client, "listResourcePolicies", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ResourcePolicies",
    })
end

--- Returns an item iterator for listResourcePolicies.
function M.items_list_resource_policies(client, input)
    return paginator.items(client, "listResourcePolicies", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ResourcePolicies",
    })
end

--- Returns a page iterator for listSessions.
function M.pages_list_sessions(client, input)
    return paginator.pages(client, "listSessions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Sessions",
    })
end

--- Returns an item iterator for listSessions.
function M.items_list_sessions(client, input)
    return paginator.items(client, "listSessions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Sessions",
    })
end

return M
