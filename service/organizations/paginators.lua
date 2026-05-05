local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listAWSServiceAccessForOrganization.
function M.pages_list_a_w_s_service_access_for_organization(client, input)
    return paginator.pages(client, "listAWSServiceAccessForOrganization", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listAccounts.
function M.pages_list_accounts(client, input)
    return paginator.pages(client, "listAccounts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listAccountsForParent.
function M.pages_list_accounts_for_parent(client, input)
    return paginator.pages(client, "listAccountsForParent", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listAccountsWithInvalidEffectivePolicy.
function M.pages_list_accounts_with_invalid_effective_policy(client, input)
    return paginator.pages(client, "listAccountsWithInvalidEffectivePolicy", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Accounts",
    })
end

--- Returns an item iterator for listAccountsWithInvalidEffectivePolicy.
function M.items_list_accounts_with_invalid_effective_policy(client, input)
    return paginator.items(client, "listAccountsWithInvalidEffectivePolicy", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Accounts",
    })
end

--- Returns a page iterator for listChildren.
function M.pages_list_children(client, input)
    return paginator.pages(client, "listChildren", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listCreateAccountStatus.
function M.pages_list_create_account_status(client, input)
    return paginator.pages(client, "listCreateAccountStatus", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listDelegatedAdministrators.
function M.pages_list_delegated_administrators(client, input)
    return paginator.pages(client, "listDelegatedAdministrators", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DelegatedAdministrators",
    })
end

--- Returns an item iterator for listDelegatedAdministrators.
function M.items_list_delegated_administrators(client, input)
    return paginator.items(client, "listDelegatedAdministrators", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DelegatedAdministrators",
    })
end

--- Returns a page iterator for listDelegatedServicesForAccount.
function M.pages_list_delegated_services_for_account(client, input)
    return paginator.pages(client, "listDelegatedServicesForAccount", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DelegatedServices",
    })
end

--- Returns an item iterator for listDelegatedServicesForAccount.
function M.items_list_delegated_services_for_account(client, input)
    return paginator.items(client, "listDelegatedServicesForAccount", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DelegatedServices",
    })
end

--- Returns a page iterator for listEffectivePolicyValidationErrors.
function M.pages_list_effective_policy_validation_errors(client, input)
    return paginator.pages(client, "listEffectivePolicyValidationErrors", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "EffectivePolicyValidationErrors",
    })
end

--- Returns an item iterator for listEffectivePolicyValidationErrors.
function M.items_list_effective_policy_validation_errors(client, input)
    return paginator.items(client, "listEffectivePolicyValidationErrors", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "EffectivePolicyValidationErrors",
    })
end

--- Returns a page iterator for listHandshakesForAccount.
function M.pages_list_handshakes_for_account(client, input)
    return paginator.pages(client, "listHandshakesForAccount", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listHandshakesForOrganization.
function M.pages_list_handshakes_for_organization(client, input)
    return paginator.pages(client, "listHandshakesForOrganization", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listOrganizationalUnitsForParent.
function M.pages_list_organizational_units_for_parent(client, input)
    return paginator.pages(client, "listOrganizationalUnitsForParent", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listParents.
function M.pages_list_parents(client, input)
    return paginator.pages(client, "listParents", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listPolicies.
function M.pages_list_policies(client, input)
    return paginator.pages(client, "listPolicies", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listPoliciesForTarget.
function M.pages_list_policies_for_target(client, input)
    return paginator.pages(client, "listPoliciesForTarget", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listRoots.
function M.pages_list_roots(client, input)
    return paginator.pages(client, "listRoots", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listTagsForResource.
function M.pages_list_tags_for_resource(client, input)
    return paginator.pages(client, "listTagsForResource", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Tags",
    })
end

--- Returns an item iterator for listTagsForResource.
function M.items_list_tags_for_resource(client, input)
    return paginator.items(client, "listTagsForResource", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Tags",
    })
end

--- Returns a page iterator for listTargetsForPolicy.
function M.pages_list_targets_for_policy(client, input)
    return paginator.pages(client, "listTargetsForPolicy", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
