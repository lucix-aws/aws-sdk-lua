local paginator = require("paginator")

local M = {}

--- Returns a page iterator for getAccountAuthorizationDetails.
function M.pages_get_account_authorization_details(client, input)
    return paginator.pages(client, "getAccountAuthorizationDetails", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

--- Returns a page iterator for getGroup.
function M.pages_get_group(client, input)
    return paginator.pages(client, "getGroup", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Users",
    })
end

--- Returns an item iterator for getGroup.
function M.items_get_group(client, input)
    return paginator.items(client, "getGroup", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Users",
    })
end

--- Returns a page iterator for listAccessKeys.
function M.pages_list_access_keys(client, input)
    return paginator.pages(client, "listAccessKeys", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "AccessKeyMetadata",
    })
end

--- Returns an item iterator for listAccessKeys.
function M.items_list_access_keys(client, input)
    return paginator.items(client, "listAccessKeys", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "AccessKeyMetadata",
    })
end

--- Returns a page iterator for listAccountAliases.
function M.pages_list_account_aliases(client, input)
    return paginator.pages(client, "listAccountAliases", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "AccountAliases",
    })
end

--- Returns an item iterator for listAccountAliases.
function M.items_list_account_aliases(client, input)
    return paginator.items(client, "listAccountAliases", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "AccountAliases",
    })
end

--- Returns a page iterator for listAttachedGroupPolicies.
function M.pages_list_attached_group_policies(client, input)
    return paginator.pages(client, "listAttachedGroupPolicies", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "AttachedPolicies",
    })
end

--- Returns an item iterator for listAttachedGroupPolicies.
function M.items_list_attached_group_policies(client, input)
    return paginator.items(client, "listAttachedGroupPolicies", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "AttachedPolicies",
    })
end

--- Returns a page iterator for listAttachedRolePolicies.
function M.pages_list_attached_role_policies(client, input)
    return paginator.pages(client, "listAttachedRolePolicies", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "AttachedPolicies",
    })
end

--- Returns an item iterator for listAttachedRolePolicies.
function M.items_list_attached_role_policies(client, input)
    return paginator.items(client, "listAttachedRolePolicies", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "AttachedPolicies",
    })
end

--- Returns a page iterator for listAttachedUserPolicies.
function M.pages_list_attached_user_policies(client, input)
    return paginator.pages(client, "listAttachedUserPolicies", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "AttachedPolicies",
    })
end

--- Returns an item iterator for listAttachedUserPolicies.
function M.items_list_attached_user_policies(client, input)
    return paginator.items(client, "listAttachedUserPolicies", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "AttachedPolicies",
    })
end

--- Returns a page iterator for listEntitiesForPolicy.
function M.pages_list_entities_for_policy(client, input)
    return paginator.pages(client, "listEntitiesForPolicy", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

--- Returns a page iterator for listGroupPolicies.
function M.pages_list_group_policies(client, input)
    return paginator.pages(client, "listGroupPolicies", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "PolicyNames",
    })
end

--- Returns an item iterator for listGroupPolicies.
function M.items_list_group_policies(client, input)
    return paginator.items(client, "listGroupPolicies", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "PolicyNames",
    })
end

--- Returns a page iterator for listGroups.
function M.pages_list_groups(client, input)
    return paginator.pages(client, "listGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Groups",
    })
end

--- Returns an item iterator for listGroups.
function M.items_list_groups(client, input)
    return paginator.items(client, "listGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Groups",
    })
end

--- Returns a page iterator for listGroupsForUser.
function M.pages_list_groups_for_user(client, input)
    return paginator.pages(client, "listGroupsForUser", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Groups",
    })
end

--- Returns an item iterator for listGroupsForUser.
function M.items_list_groups_for_user(client, input)
    return paginator.items(client, "listGroupsForUser", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Groups",
    })
end

--- Returns a page iterator for listInstanceProfileTags.
function M.pages_list_instance_profile_tags(client, input)
    return paginator.pages(client, "listInstanceProfileTags", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Tags",
    })
end

--- Returns an item iterator for listInstanceProfileTags.
function M.items_list_instance_profile_tags(client, input)
    return paginator.items(client, "listInstanceProfileTags", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Tags",
    })
end

--- Returns a page iterator for listInstanceProfiles.
function M.pages_list_instance_profiles(client, input)
    return paginator.pages(client, "listInstanceProfiles", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "InstanceProfiles",
    })
end

--- Returns an item iterator for listInstanceProfiles.
function M.items_list_instance_profiles(client, input)
    return paginator.items(client, "listInstanceProfiles", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "InstanceProfiles",
    })
end

--- Returns a page iterator for listInstanceProfilesForRole.
function M.pages_list_instance_profiles_for_role(client, input)
    return paginator.pages(client, "listInstanceProfilesForRole", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "InstanceProfiles",
    })
end

--- Returns an item iterator for listInstanceProfilesForRole.
function M.items_list_instance_profiles_for_role(client, input)
    return paginator.items(client, "listInstanceProfilesForRole", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "InstanceProfiles",
    })
end

--- Returns a page iterator for listMFADeviceTags.
function M.pages_list_m_f_a_device_tags(client, input)
    return paginator.pages(client, "listMFADeviceTags", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Tags",
    })
end

--- Returns an item iterator for listMFADeviceTags.
function M.items_list_m_f_a_device_tags(client, input)
    return paginator.items(client, "listMFADeviceTags", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Tags",
    })
end

--- Returns a page iterator for listMFADevices.
function M.pages_list_m_f_a_devices(client, input)
    return paginator.pages(client, "listMFADevices", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "MFADevices",
    })
end

--- Returns an item iterator for listMFADevices.
function M.items_list_m_f_a_devices(client, input)
    return paginator.items(client, "listMFADevices", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "MFADevices",
    })
end

--- Returns a page iterator for listOpenIDConnectProviderTags.
function M.pages_list_open_i_d_connect_provider_tags(client, input)
    return paginator.pages(client, "listOpenIDConnectProviderTags", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Tags",
    })
end

--- Returns an item iterator for listOpenIDConnectProviderTags.
function M.items_list_open_i_d_connect_provider_tags(client, input)
    return paginator.items(client, "listOpenIDConnectProviderTags", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Tags",
    })
end

--- Returns a page iterator for listPolicies.
function M.pages_list_policies(client, input)
    return paginator.pages(client, "listPolicies", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Policies",
    })
end

--- Returns an item iterator for listPolicies.
function M.items_list_policies(client, input)
    return paginator.items(client, "listPolicies", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Policies",
    })
end

--- Returns a page iterator for listPolicyTags.
function M.pages_list_policy_tags(client, input)
    return paginator.pages(client, "listPolicyTags", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Tags",
    })
end

--- Returns an item iterator for listPolicyTags.
function M.items_list_policy_tags(client, input)
    return paginator.items(client, "listPolicyTags", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Tags",
    })
end

--- Returns a page iterator for listPolicyVersions.
function M.pages_list_policy_versions(client, input)
    return paginator.pages(client, "listPolicyVersions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Versions",
    })
end

--- Returns an item iterator for listPolicyVersions.
function M.items_list_policy_versions(client, input)
    return paginator.items(client, "listPolicyVersions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Versions",
    })
end

--- Returns a page iterator for listRolePolicies.
function M.pages_list_role_policies(client, input)
    return paginator.pages(client, "listRolePolicies", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "PolicyNames",
    })
end

--- Returns an item iterator for listRolePolicies.
function M.items_list_role_policies(client, input)
    return paginator.items(client, "listRolePolicies", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "PolicyNames",
    })
end

--- Returns a page iterator for listRoleTags.
function M.pages_list_role_tags(client, input)
    return paginator.pages(client, "listRoleTags", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Tags",
    })
end

--- Returns an item iterator for listRoleTags.
function M.items_list_role_tags(client, input)
    return paginator.items(client, "listRoleTags", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Tags",
    })
end

--- Returns a page iterator for listRoles.
function M.pages_list_roles(client, input)
    return paginator.pages(client, "listRoles", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Roles",
    })
end

--- Returns an item iterator for listRoles.
function M.items_list_roles(client, input)
    return paginator.items(client, "listRoles", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Roles",
    })
end

--- Returns a page iterator for listSAMLProviderTags.
function M.pages_list_s_a_m_l_provider_tags(client, input)
    return paginator.pages(client, "listSAMLProviderTags", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Tags",
    })
end

--- Returns an item iterator for listSAMLProviderTags.
function M.items_list_s_a_m_l_provider_tags(client, input)
    return paginator.items(client, "listSAMLProviderTags", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Tags",
    })
end

--- Returns a page iterator for listSSHPublicKeys.
function M.pages_list_s_s_h_public_keys(client, input)
    return paginator.pages(client, "listSSHPublicKeys", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "SSHPublicKeys",
    })
end

--- Returns an item iterator for listSSHPublicKeys.
function M.items_list_s_s_h_public_keys(client, input)
    return paginator.items(client, "listSSHPublicKeys", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "SSHPublicKeys",
    })
end

--- Returns a page iterator for listServerCertificateTags.
function M.pages_list_server_certificate_tags(client, input)
    return paginator.pages(client, "listServerCertificateTags", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Tags",
    })
end

--- Returns an item iterator for listServerCertificateTags.
function M.items_list_server_certificate_tags(client, input)
    return paginator.items(client, "listServerCertificateTags", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Tags",
    })
end

--- Returns a page iterator for listServerCertificates.
function M.pages_list_server_certificates(client, input)
    return paginator.pages(client, "listServerCertificates", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ServerCertificateMetadataList",
    })
end

--- Returns an item iterator for listServerCertificates.
function M.items_list_server_certificates(client, input)
    return paginator.items(client, "listServerCertificates", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ServerCertificateMetadataList",
    })
end

--- Returns a page iterator for listSigningCertificates.
function M.pages_list_signing_certificates(client, input)
    return paginator.pages(client, "listSigningCertificates", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Certificates",
    })
end

--- Returns an item iterator for listSigningCertificates.
function M.items_list_signing_certificates(client, input)
    return paginator.items(client, "listSigningCertificates", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Certificates",
    })
end

--- Returns a page iterator for listUserPolicies.
function M.pages_list_user_policies(client, input)
    return paginator.pages(client, "listUserPolicies", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "PolicyNames",
    })
end

--- Returns an item iterator for listUserPolicies.
function M.items_list_user_policies(client, input)
    return paginator.items(client, "listUserPolicies", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "PolicyNames",
    })
end

--- Returns a page iterator for listUserTags.
function M.pages_list_user_tags(client, input)
    return paginator.pages(client, "listUserTags", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Tags",
    })
end

--- Returns an item iterator for listUserTags.
function M.items_list_user_tags(client, input)
    return paginator.items(client, "listUserTags", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Tags",
    })
end

--- Returns a page iterator for listUsers.
function M.pages_list_users(client, input)
    return paginator.pages(client, "listUsers", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Users",
    })
end

--- Returns an item iterator for listUsers.
function M.items_list_users(client, input)
    return paginator.items(client, "listUsers", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Users",
    })
end

--- Returns a page iterator for listVirtualMFADevices.
function M.pages_list_virtual_m_f_a_devices(client, input)
    return paginator.pages(client, "listVirtualMFADevices", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "VirtualMFADevices",
    })
end

--- Returns an item iterator for listVirtualMFADevices.
function M.items_list_virtual_m_f_a_devices(client, input)
    return paginator.items(client, "listVirtualMFADevices", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "VirtualMFADevices",
    })
end

--- Returns a page iterator for simulateCustomPolicy.
function M.pages_simulate_custom_policy(client, input)
    return paginator.pages(client, "simulateCustomPolicy", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "EvaluationResults",
    })
end

--- Returns an item iterator for simulateCustomPolicy.
function M.items_simulate_custom_policy(client, input)
    return paginator.items(client, "simulateCustomPolicy", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "EvaluationResults",
    })
end

--- Returns a page iterator for simulatePrincipalPolicy.
function M.pages_simulate_principal_policy(client, input)
    return paginator.pages(client, "simulatePrincipalPolicy", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "EvaluationResults",
    })
end

--- Returns an item iterator for simulatePrincipalPolicy.
function M.items_simulate_principal_policy(client, input)
    return paginator.items(client, "simulatePrincipalPolicy", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "EvaluationResults",
    })
end

return M
