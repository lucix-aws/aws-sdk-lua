local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listAccountAssignmentCreationStatus.
function M.pages_list_account_assignment_creation_status(client, input)
    return paginator.pages(client, "listAccountAssignmentCreationStatus", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AccountAssignmentsCreationStatus",
    })
end

--- Returns an item iterator for listAccountAssignmentCreationStatus.
function M.items_list_account_assignment_creation_status(client, input)
    return paginator.items(client, "listAccountAssignmentCreationStatus", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AccountAssignmentsCreationStatus",
    })
end

--- Returns a page iterator for listAccountAssignmentDeletionStatus.
function M.pages_list_account_assignment_deletion_status(client, input)
    return paginator.pages(client, "listAccountAssignmentDeletionStatus", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AccountAssignmentsDeletionStatus",
    })
end

--- Returns an item iterator for listAccountAssignmentDeletionStatus.
function M.items_list_account_assignment_deletion_status(client, input)
    return paginator.items(client, "listAccountAssignmentDeletionStatus", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AccountAssignmentsDeletionStatus",
    })
end

--- Returns a page iterator for listAccountAssignments.
function M.pages_list_account_assignments(client, input)
    return paginator.pages(client, "listAccountAssignments", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AccountAssignments",
    })
end

--- Returns an item iterator for listAccountAssignments.
function M.items_list_account_assignments(client, input)
    return paginator.items(client, "listAccountAssignments", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AccountAssignments",
    })
end

--- Returns a page iterator for listAccountAssignmentsForPrincipal.
function M.pages_list_account_assignments_for_principal(client, input)
    return paginator.pages(client, "listAccountAssignmentsForPrincipal", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AccountAssignments",
    })
end

--- Returns an item iterator for listAccountAssignmentsForPrincipal.
function M.items_list_account_assignments_for_principal(client, input)
    return paginator.items(client, "listAccountAssignmentsForPrincipal", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AccountAssignments",
    })
end

--- Returns a page iterator for listAccountsForProvisionedPermissionSet.
function M.pages_list_accounts_for_provisioned_permission_set(client, input)
    return paginator.pages(client, "listAccountsForProvisionedPermissionSet", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AccountIds",
    })
end

--- Returns an item iterator for listAccountsForProvisionedPermissionSet.
function M.items_list_accounts_for_provisioned_permission_set(client, input)
    return paginator.items(client, "listAccountsForProvisionedPermissionSet", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AccountIds",
    })
end

--- Returns a page iterator for listApplicationAccessScopes.
function M.pages_list_application_access_scopes(client, input)
    return paginator.pages(client, "listApplicationAccessScopes", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Scopes",
    })
end

--- Returns an item iterator for listApplicationAccessScopes.
function M.items_list_application_access_scopes(client, input)
    return paginator.items(client, "listApplicationAccessScopes", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Scopes",
    })
end

--- Returns a page iterator for listApplicationAssignments.
function M.pages_list_application_assignments(client, input)
    return paginator.pages(client, "listApplicationAssignments", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ApplicationAssignments",
    })
end

--- Returns an item iterator for listApplicationAssignments.
function M.items_list_application_assignments(client, input)
    return paginator.items(client, "listApplicationAssignments", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ApplicationAssignments",
    })
end

--- Returns a page iterator for listApplicationAssignmentsForPrincipal.
function M.pages_list_application_assignments_for_principal(client, input)
    return paginator.pages(client, "listApplicationAssignmentsForPrincipal", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ApplicationAssignments",
    })
end

--- Returns an item iterator for listApplicationAssignmentsForPrincipal.
function M.items_list_application_assignments_for_principal(client, input)
    return paginator.items(client, "listApplicationAssignmentsForPrincipal", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ApplicationAssignments",
    })
end

--- Returns a page iterator for listApplicationAuthenticationMethods.
function M.pages_list_application_authentication_methods(client, input)
    return paginator.pages(client, "listApplicationAuthenticationMethods", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AuthenticationMethods",
    })
end

--- Returns an item iterator for listApplicationAuthenticationMethods.
function M.items_list_application_authentication_methods(client, input)
    return paginator.items(client, "listApplicationAuthenticationMethods", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AuthenticationMethods",
    })
end

--- Returns a page iterator for listApplicationGrants.
function M.pages_list_application_grants(client, input)
    return paginator.pages(client, "listApplicationGrants", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Grants",
    })
end

--- Returns an item iterator for listApplicationGrants.
function M.items_list_application_grants(client, input)
    return paginator.items(client, "listApplicationGrants", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Grants",
    })
end

--- Returns a page iterator for listApplicationProviders.
function M.pages_list_application_providers(client, input)
    return paginator.pages(client, "listApplicationProviders", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ApplicationProviders",
    })
end

--- Returns an item iterator for listApplicationProviders.
function M.items_list_application_providers(client, input)
    return paginator.items(client, "listApplicationProviders", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ApplicationProviders",
    })
end

--- Returns a page iterator for listApplications.
function M.pages_list_applications(client, input)
    return paginator.pages(client, "listApplications", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Applications",
    })
end

--- Returns an item iterator for listApplications.
function M.items_list_applications(client, input)
    return paginator.items(client, "listApplications", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Applications",
    })
end

--- Returns a page iterator for listCustomerManagedPolicyReferencesInPermissionSet.
function M.pages_list_customer_managed_policy_references_in_permission_set(client, input)
    return paginator.pages(client, "listCustomerManagedPolicyReferencesInPermissionSet", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CustomerManagedPolicyReferences",
    })
end

--- Returns an item iterator for listCustomerManagedPolicyReferencesInPermissionSet.
function M.items_list_customer_managed_policy_references_in_permission_set(client, input)
    return paginator.items(client, "listCustomerManagedPolicyReferencesInPermissionSet", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CustomerManagedPolicyReferences",
    })
end

--- Returns a page iterator for listInstances.
function M.pages_list_instances(client, input)
    return paginator.pages(client, "listInstances", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Instances",
    })
end

--- Returns an item iterator for listInstances.
function M.items_list_instances(client, input)
    return paginator.items(client, "listInstances", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Instances",
    })
end

--- Returns a page iterator for listManagedPoliciesInPermissionSet.
function M.pages_list_managed_policies_in_permission_set(client, input)
    return paginator.pages(client, "listManagedPoliciesInPermissionSet", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AttachedManagedPolicies",
    })
end

--- Returns an item iterator for listManagedPoliciesInPermissionSet.
function M.items_list_managed_policies_in_permission_set(client, input)
    return paginator.items(client, "listManagedPoliciesInPermissionSet", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AttachedManagedPolicies",
    })
end

--- Returns a page iterator for listPermissionSetProvisioningStatus.
function M.pages_list_permission_set_provisioning_status(client, input)
    return paginator.pages(client, "listPermissionSetProvisioningStatus", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PermissionSetsProvisioningStatus",
    })
end

--- Returns an item iterator for listPermissionSetProvisioningStatus.
function M.items_list_permission_set_provisioning_status(client, input)
    return paginator.items(client, "listPermissionSetProvisioningStatus", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PermissionSetsProvisioningStatus",
    })
end

--- Returns a page iterator for listPermissionSets.
function M.pages_list_permission_sets(client, input)
    return paginator.pages(client, "listPermissionSets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PermissionSets",
    })
end

--- Returns an item iterator for listPermissionSets.
function M.items_list_permission_sets(client, input)
    return paginator.items(client, "listPermissionSets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PermissionSets",
    })
end

--- Returns a page iterator for listPermissionSetsProvisionedToAccount.
function M.pages_list_permission_sets_provisioned_to_account(client, input)
    return paginator.pages(client, "listPermissionSetsProvisionedToAccount", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PermissionSets",
    })
end

--- Returns an item iterator for listPermissionSetsProvisionedToAccount.
function M.items_list_permission_sets_provisioned_to_account(client, input)
    return paginator.items(client, "listPermissionSetsProvisionedToAccount", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PermissionSets",
    })
end

--- Returns a page iterator for listRegions.
function M.pages_list_regions(client, input)
    return paginator.pages(client, "listRegions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Regions",
    })
end

--- Returns an item iterator for listRegions.
function M.items_list_regions(client, input)
    return paginator.items(client, "listRegions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Regions",
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

--- Returns a page iterator for listTrustedTokenIssuers.
function M.pages_list_trusted_token_issuers(client, input)
    return paginator.pages(client, "listTrustedTokenIssuers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TrustedTokenIssuers",
    })
end

--- Returns an item iterator for listTrustedTokenIssuers.
function M.items_list_trusted_token_issuers(client, input)
    return paginator.items(client, "listTrustedTokenIssuers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TrustedTokenIssuers",
    })
end

return M
