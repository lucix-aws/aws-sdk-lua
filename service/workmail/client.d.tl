local types = require("workmail.types")

local record Client
    associateDelegateToResource: function(Client, types.AssociateDelegateToResourceInput): types.AssociateDelegateToResourceOutput, table
    associateMemberToGroup: function(Client, types.AssociateMemberToGroupInput): types.AssociateMemberToGroupOutput, table
    assumeImpersonationRole: function(Client, types.AssumeImpersonationRoleInput): types.AssumeImpersonationRoleOutput, table
    cancelMailboxExportJob: function(Client, types.CancelMailboxExportJobInput): types.CancelMailboxExportJobOutput, table
    createAlias: function(Client, types.CreateAliasInput): types.CreateAliasOutput, table
    createAvailabilityConfiguration: function(Client, types.CreateAvailabilityConfigurationInput): types.CreateAvailabilityConfigurationOutput, table
    createGroup: function(Client, types.CreateGroupInput): types.CreateGroupOutput, table
    createIdentityCenterApplication: function(Client, types.CreateIdentityCenterApplicationInput): types.CreateIdentityCenterApplicationOutput, table
    createImpersonationRole: function(Client, types.CreateImpersonationRoleInput): types.CreateImpersonationRoleOutput, table
    createMobileDeviceAccessRule: function(Client, types.CreateMobileDeviceAccessRuleInput): types.CreateMobileDeviceAccessRuleOutput, table
    createOrganization: function(Client, types.CreateOrganizationInput): types.CreateOrganizationOutput, table
    createResource: function(Client, types.CreateResourceInput): types.CreateResourceOutput, table
    createUser: function(Client, types.CreateUserInput): types.CreateUserOutput, table
    deleteAccessControlRule: function(Client, types.DeleteAccessControlRuleInput): types.DeleteAccessControlRuleOutput, table
    deleteAlias: function(Client, types.DeleteAliasInput): types.DeleteAliasOutput, table
    deleteAvailabilityConfiguration: function(Client, types.DeleteAvailabilityConfigurationInput): types.DeleteAvailabilityConfigurationOutput, table
    deleteEmailMonitoringConfiguration: function(Client, types.DeleteEmailMonitoringConfigurationInput): types.DeleteEmailMonitoringConfigurationOutput, table
    deleteGroup: function(Client, types.DeleteGroupInput): types.DeleteGroupOutput, table
    deleteIdentityCenterApplication: function(Client, types.DeleteIdentityCenterApplicationInput): types.DeleteIdentityCenterApplicationOutput, table
    deleteIdentityProviderConfiguration: function(Client, types.DeleteIdentityProviderConfigurationInput): types.DeleteIdentityProviderConfigurationOutput, table
    deleteImpersonationRole: function(Client, types.DeleteImpersonationRoleInput): types.DeleteImpersonationRoleOutput, table
    deleteMailboxPermissions: function(Client, types.DeleteMailboxPermissionsInput): types.DeleteMailboxPermissionsOutput, table
    deleteMobileDeviceAccessOverride: function(Client, types.DeleteMobileDeviceAccessOverrideInput): types.DeleteMobileDeviceAccessOverrideOutput, table
    deleteMobileDeviceAccessRule: function(Client, types.DeleteMobileDeviceAccessRuleInput): types.DeleteMobileDeviceAccessRuleOutput, table
    deleteOrganization: function(Client, types.DeleteOrganizationInput): types.DeleteOrganizationOutput, table
    deletePersonalAccessToken: function(Client, types.DeletePersonalAccessTokenInput): types.DeletePersonalAccessTokenOutput, table
    deleteResource: function(Client, types.DeleteResourceInput): types.DeleteResourceOutput, table
    deleteRetentionPolicy: function(Client, types.DeleteRetentionPolicyInput): types.DeleteRetentionPolicyOutput, table
    deleteUser: function(Client, types.DeleteUserInput): types.DeleteUserOutput, table
    deregisterFromWorkMail: function(Client, types.DeregisterFromWorkMailInput): types.DeregisterFromWorkMailOutput, table
    deregisterMailDomain: function(Client, types.DeregisterMailDomainInput): types.DeregisterMailDomainOutput, table
    describeEmailMonitoringConfiguration: function(Client, types.DescribeEmailMonitoringConfigurationInput): types.DescribeEmailMonitoringConfigurationOutput, table
    describeEntity: function(Client, types.DescribeEntityInput): types.DescribeEntityOutput, table
    describeGroup: function(Client, types.DescribeGroupInput): types.DescribeGroupOutput, table
    describeIdentityProviderConfiguration: function(Client, types.DescribeIdentityProviderConfigurationInput): types.DescribeIdentityProviderConfigurationOutput, table
    describeInboundDmarcSettings: function(Client, types.DescribeInboundDmarcSettingsInput): types.DescribeInboundDmarcSettingsOutput, table
    describeMailboxExportJob: function(Client, types.DescribeMailboxExportJobInput): types.DescribeMailboxExportJobOutput, table
    describeOrganization: function(Client, types.DescribeOrganizationInput): types.DescribeOrganizationOutput, table
    describeResource: function(Client, types.DescribeResourceInput): types.DescribeResourceOutput, table
    describeUser: function(Client, types.DescribeUserInput): types.DescribeUserOutput, table
    disassociateDelegateFromResource: function(Client, types.DisassociateDelegateFromResourceInput): types.DisassociateDelegateFromResourceOutput, table
    disassociateMemberFromGroup: function(Client, types.DisassociateMemberFromGroupInput): types.DisassociateMemberFromGroupOutput, table
    getAccessControlEffect: function(Client, types.GetAccessControlEffectInput): types.GetAccessControlEffectOutput, table
    getDefaultRetentionPolicy: function(Client, types.GetDefaultRetentionPolicyInput): types.GetDefaultRetentionPolicyOutput, table
    getImpersonationRole: function(Client, types.GetImpersonationRoleInput): types.GetImpersonationRoleOutput, table
    getImpersonationRoleEffect: function(Client, types.GetImpersonationRoleEffectInput): types.GetImpersonationRoleEffectOutput, table
    getMailboxDetails: function(Client, types.GetMailboxDetailsInput): types.GetMailboxDetailsOutput, table
    getMailDomain: function(Client, types.GetMailDomainInput): types.GetMailDomainOutput, table
    getMobileDeviceAccessEffect: function(Client, types.GetMobileDeviceAccessEffectInput): types.GetMobileDeviceAccessEffectOutput, table
    getMobileDeviceAccessOverride: function(Client, types.GetMobileDeviceAccessOverrideInput): types.GetMobileDeviceAccessOverrideOutput, table
    getPersonalAccessTokenMetadata: function(Client, types.GetPersonalAccessTokenMetadataInput): types.GetPersonalAccessTokenMetadataOutput, table
    listAccessControlRules: function(Client, types.ListAccessControlRulesInput): types.ListAccessControlRulesOutput, table
    listAliases: function(Client, types.ListAliasesInput): types.ListAliasesOutput, table
    listAvailabilityConfigurations: function(Client, types.ListAvailabilityConfigurationsInput): types.ListAvailabilityConfigurationsOutput, table
    listGroupMembers: function(Client, types.ListGroupMembersInput): types.ListGroupMembersOutput, table
    listGroups: function(Client, types.ListGroupsInput): types.ListGroupsOutput, table
    listGroupsForEntity: function(Client, types.ListGroupsForEntityInput): types.ListGroupsForEntityOutput, table
    listImpersonationRoles: function(Client, types.ListImpersonationRolesInput): types.ListImpersonationRolesOutput, table
    listMailboxExportJobs: function(Client, types.ListMailboxExportJobsInput): types.ListMailboxExportJobsOutput, table
    listMailboxPermissions: function(Client, types.ListMailboxPermissionsInput): types.ListMailboxPermissionsOutput, table
    listMailDomains: function(Client, types.ListMailDomainsInput): types.ListMailDomainsOutput, table
    listMobileDeviceAccessOverrides: function(Client, types.ListMobileDeviceAccessOverridesInput): types.ListMobileDeviceAccessOverridesOutput, table
    listMobileDeviceAccessRules: function(Client, types.ListMobileDeviceAccessRulesInput): types.ListMobileDeviceAccessRulesOutput, table
    listOrganizations: function(Client, types.ListOrganizationsInput): types.ListOrganizationsOutput, table
    listPersonalAccessTokens: function(Client, types.ListPersonalAccessTokensInput): types.ListPersonalAccessTokensOutput, table
    listResourceDelegates: function(Client, types.ListResourceDelegatesInput): types.ListResourceDelegatesOutput, table
    listResources: function(Client, types.ListResourcesInput): types.ListResourcesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listUsers: function(Client, types.ListUsersInput): types.ListUsersOutput, table
    putAccessControlRule: function(Client, types.PutAccessControlRuleInput): types.PutAccessControlRuleOutput, table
    putEmailMonitoringConfiguration: function(Client, types.PutEmailMonitoringConfigurationInput): types.PutEmailMonitoringConfigurationOutput, table
    putIdentityProviderConfiguration: function(Client, types.PutIdentityProviderConfigurationInput): types.PutIdentityProviderConfigurationOutput, table
    putInboundDmarcSettings: function(Client, types.PutInboundDmarcSettingsInput): types.PutInboundDmarcSettingsOutput, table
    putMailboxPermissions: function(Client, types.PutMailboxPermissionsInput): types.PutMailboxPermissionsOutput, table
    putMobileDeviceAccessOverride: function(Client, types.PutMobileDeviceAccessOverrideInput): types.PutMobileDeviceAccessOverrideOutput, table
    putRetentionPolicy: function(Client, types.PutRetentionPolicyInput): types.PutRetentionPolicyOutput, table
    registerMailDomain: function(Client, types.RegisterMailDomainInput): types.RegisterMailDomainOutput, table
    registerToWorkMail: function(Client, types.RegisterToWorkMailInput): types.RegisterToWorkMailOutput, table
    resetPassword: function(Client, types.ResetPasswordInput): types.ResetPasswordOutput, table
    startMailboxExportJob: function(Client, types.StartMailboxExportJobInput): types.StartMailboxExportJobOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    testAvailabilityConfiguration: function(Client, types.TestAvailabilityConfigurationInput): types.TestAvailabilityConfigurationOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateAvailabilityConfiguration: function(Client, types.UpdateAvailabilityConfigurationInput): types.UpdateAvailabilityConfigurationOutput, table
    updateDefaultMailDomain: function(Client, types.UpdateDefaultMailDomainInput): types.UpdateDefaultMailDomainOutput, table
    updateGroup: function(Client, types.UpdateGroupInput): types.UpdateGroupOutput, table
    updateImpersonationRole: function(Client, types.UpdateImpersonationRoleInput): types.UpdateImpersonationRoleOutput, table
    updateMailboxQuota: function(Client, types.UpdateMailboxQuotaInput): types.UpdateMailboxQuotaOutput, table
    updateMobileDeviceAccessRule: function(Client, types.UpdateMobileDeviceAccessRuleInput): types.UpdateMobileDeviceAccessRuleOutput, table
    updatePrimaryEmailAddress: function(Client, types.UpdatePrimaryEmailAddressInput): types.UpdatePrimaryEmailAddressOutput, table
    updateResource: function(Client, types.UpdateResourceInput): types.UpdateResourceOutput, table
    updateUser: function(Client, types.UpdateUserInput): types.UpdateUserOutput, table
end

local record M
    new: function(table): Client
end

return M
