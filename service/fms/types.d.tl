local record AssociateAdminAccountInput
    AdminAccount: string
end

local record AssociateAdminAccountOutput
end

local record AssociateThirdPartyFirewallInput
    ThirdPartyFirewall: string
end

local record AssociateThirdPartyFirewallOutput
    ThirdPartyFirewallStatus: string
end

local record BatchAssociateResourceInput
    ResourceSetIdentifier: string
    Items: {string}
end

local record BatchAssociateResourceOutput
    ResourceSetIdentifier: string
    FailedItems: {FailedItem}
end

local record BatchDisassociateResourceInput
    ResourceSetIdentifier: string
    Items: {string}
end

local record BatchDisassociateResourceOutput
    ResourceSetIdentifier: string
    FailedItems: {FailedItem}
end

local record DeleteAppsListInput
    ListId: string
end

local record DeleteAppsListOutput
end

local record DeleteNotificationChannelInput
end

local record DeleteNotificationChannelOutput
end

local record DeletePolicyInput
    PolicyId: string
    DeleteAllPolicyResources: boolean
end

local record DeletePolicyOutput
end

local record DeleteProtocolsListInput
    ListId: string
end

local record DeleteProtocolsListOutput
end

local record DeleteResourceSetInput
    Identifier: string
end

local record DeleteResourceSetOutput
end

local record DisassociateAdminAccountInput
end

local record DisassociateAdminAccountOutput
end

local record DisassociateThirdPartyFirewallInput
    ThirdPartyFirewall: string
end

local record DisassociateThirdPartyFirewallOutput
    ThirdPartyFirewallStatus: string
end

local record GetAdminAccountInput
end

local record GetAdminAccountOutput
    AdminAccount: string
    RoleStatus: string
end

local record GetAdminScopeInput
    AdminAccount: string
end

local record GetAdminScopeOutput
    AdminScope: AdminScope
    Status: string
end

local record GetAppsListInput
    ListId: string
    DefaultList: boolean
end

local record GetAppsListOutput
    AppsList: AppsListData
    AppsListArn: string
end

local record GetComplianceDetailInput
    PolicyId: string
    MemberAccount: string
end

local record GetComplianceDetailOutput
    PolicyComplianceDetail: PolicyComplianceDetail
end

local record GetNotificationChannelInput
end

local record GetNotificationChannelOutput
    SnsTopicArn: string
    SnsRoleName: string
end

local record GetPolicyInput
    PolicyId: string
end

local record GetPolicyOutput
    Policy: Policy
    PolicyArn: string
end

local record GetProtectionStatusInput
    PolicyId: string
    MemberAccountId: string
    StartTime: number
    EndTime: number
    NextToken: string
    MaxResults: number
end

local record GetProtectionStatusOutput
    AdminAccountId: string
    ServiceType: string
    Data: string
    NextToken: string
end

local record GetProtocolsListInput
    ListId: string
    DefaultList: boolean
end

local record GetProtocolsListOutput
    ProtocolsList: ProtocolsListData
    ProtocolsListArn: string
end

local record GetResourceSetInput
    Identifier: string
end

local record GetResourceSetOutput
    ResourceSet: ResourceSet
    ResourceSetArn: string
end

local record GetThirdPartyFirewallAssociationStatusInput
    ThirdPartyFirewall: string
end

local record GetThirdPartyFirewallAssociationStatusOutput
    ThirdPartyFirewallStatus: string
    MarketplaceOnboardingStatus: string
end

local record GetViolationDetailsInput
    PolicyId: string
    MemberAccount: string
    ResourceId: string
    ResourceType: string
end

local record GetViolationDetailsOutput
    ViolationDetail: ViolationDetail
end

local record ListAdminAccountsForOrganizationInput
    NextToken: string
    MaxResults: number
end

local record ListAdminAccountsForOrganizationOutput
    AdminAccounts: {AdminAccountSummary}
    NextToken: string
end

local record ListAdminsManagingAccountInput
    NextToken: string
    MaxResults: number
end

local record ListAdminsManagingAccountOutput
    AdminAccounts: {string}
    NextToken: string
end

local record ListAppsListsInput
    DefaultLists: boolean
    NextToken: string
    MaxResults: number
end

local record ListAppsListsOutput
    AppsLists: {AppsListDataSummary}
    NextToken: string
end

local record ListComplianceStatusInput
    PolicyId: string
    NextToken: string
    MaxResults: number
end

local record ListComplianceStatusOutput
    PolicyComplianceStatusList: {PolicyComplianceStatus}
    NextToken: string
end

local record ListDiscoveredResourcesInput
    MemberAccountIds: {string}
    ResourceType: string
    MaxResults: number
    NextToken: string
end

local record ListDiscoveredResourcesOutput
    Items: {DiscoveredResource}
    NextToken: string
end

local record ListMemberAccountsInput
    NextToken: string
    MaxResults: number
end

local record ListMemberAccountsOutput
    MemberAccounts: {string}
    NextToken: string
end

local record ListPoliciesInput
    NextToken: string
    MaxResults: number
end

local record ListPoliciesOutput
    PolicyList: {PolicySummary}
    NextToken: string
end

local record ListProtocolsListsInput
    DefaultLists: boolean
    NextToken: string
    MaxResults: number
end

local record ListProtocolsListsOutput
    ProtocolsLists: {ProtocolsListDataSummary}
    NextToken: string
end

local record ListResourceSetResourcesInput
    Identifier: string
    MaxResults: number
    NextToken: string
end

local record ListResourceSetResourcesOutput
    Items: {Resource}
    NextToken: string
end

local record ListResourceSetsInput
    NextToken: string
    MaxResults: number
end

local record ListResourceSetsOutput
    ResourceSets: {ResourceSetSummary}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    TagList: {Tag}
end

local record ListThirdPartyFirewallFirewallPoliciesInput
    ThirdPartyFirewall: string
    NextToken: string
    MaxResults: number
end

local record ListThirdPartyFirewallFirewallPoliciesOutput
    ThirdPartyFirewallFirewallPolicies: {ThirdPartyFirewallFirewallPolicy}
    NextToken: string
end

local record PutAdminAccountInput
    AdminAccount: string
    AdminScope: AdminScope
end

local record PutAdminAccountOutput
end

local record PutAppsListInput
    AppsList: AppsListData
    TagList: {Tag}
end

local record PutAppsListOutput
    AppsList: AppsListData
    AppsListArn: string
end

local record PutNotificationChannelInput
    SnsTopicArn: string
    SnsRoleName: string
end

local record PutNotificationChannelOutput
end

local record PutPolicyInput
    Policy: Policy
    TagList: {Tag}
end

local record PutPolicyOutput
    Policy: Policy
    PolicyArn: string
end

local record PutProtocolsListInput
    ProtocolsList: ProtocolsListData
    TagList: {Tag}
end

local record PutProtocolsListOutput
    ProtocolsList: ProtocolsListData
    ProtocolsListArn: string
end

local record PutResourceSetInput
    ResourceSet: ResourceSet
    TagList: {Tag}
end

local record PutResourceSetOutput
    ResourceSet: ResourceSet
    ResourceSetArn: string
end

local record TagResourceInput
    ResourceArn: string
    TagList: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record InternalErrorException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record InvalidTypeException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record InvalidTypeException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local type AccountRoleStatus = "READY" | "CREATING" | "PENDING_DELETION" | "DELETING" | "DELETED"

local type MarketplaceSubscriptionOnboardingStatus = "NO_SUBSCRIPTION" | "NOT_COMPLETE" | "COMPLETE"

local type ThirdPartyFirewallAssociationStatus = "ONBOARDING" | "ONBOARD_COMPLETE" | "OFFBOARDING" | "OFFBOARD_COMPLETE" | "NOT_EXIST"

local type OrganizationStatus = "ONBOARDING" | "ONBOARDING_COMPLETE" | "OFFBOARDING" | "OFFBOARDING_COMPLETE"

local type ThirdPartyFirewall = "PALO_ALTO_NETWORKS_CLOUD_NGFW" | "FORTIGATE_CLOUD_NATIVE_FIREWALL"

local type SecurityServiceType = "WAF" | "WAFV2" | "SHIELD_ADVANCED" | "SECURITY_GROUPS_COMMON" | "SECURITY_GROUPS_CONTENT_AUDIT" | "SECURITY_GROUPS_USAGE_AUDIT" | "NETWORK_FIREWALL" | "DNS_FIREWALL" | "THIRD_PARTY_FIREWALL" | "IMPORT_NETWORK_FIREWALL" | "NETWORK_ACL_COMMON"

local record M
    AssociateAdminAccountInput: AssociateAdminAccountInput
    AssociateAdminAccountOutput: AssociateAdminAccountOutput
    AssociateThirdPartyFirewallInput: AssociateThirdPartyFirewallInput
    AssociateThirdPartyFirewallOutput: AssociateThirdPartyFirewallOutput
    BatchAssociateResourceInput: BatchAssociateResourceInput
    BatchAssociateResourceOutput: BatchAssociateResourceOutput
    BatchDisassociateResourceInput: BatchDisassociateResourceInput
    BatchDisassociateResourceOutput: BatchDisassociateResourceOutput
    DeleteAppsListInput: DeleteAppsListInput
    DeleteAppsListOutput: DeleteAppsListOutput
    DeleteNotificationChannelInput: DeleteNotificationChannelInput
    DeleteNotificationChannelOutput: DeleteNotificationChannelOutput
    DeletePolicyInput: DeletePolicyInput
    DeletePolicyOutput: DeletePolicyOutput
    DeleteProtocolsListInput: DeleteProtocolsListInput
    DeleteProtocolsListOutput: DeleteProtocolsListOutput
    DeleteResourceSetInput: DeleteResourceSetInput
    DeleteResourceSetOutput: DeleteResourceSetOutput
    DisassociateAdminAccountInput: DisassociateAdminAccountInput
    DisassociateAdminAccountOutput: DisassociateAdminAccountOutput
    DisassociateThirdPartyFirewallInput: DisassociateThirdPartyFirewallInput
    DisassociateThirdPartyFirewallOutput: DisassociateThirdPartyFirewallOutput
    GetAdminAccountInput: GetAdminAccountInput
    GetAdminAccountOutput: GetAdminAccountOutput
    GetAdminScopeInput: GetAdminScopeInput
    GetAdminScopeOutput: GetAdminScopeOutput
    GetAppsListInput: GetAppsListInput
    GetAppsListOutput: GetAppsListOutput
    GetComplianceDetailInput: GetComplianceDetailInput
    GetComplianceDetailOutput: GetComplianceDetailOutput
    GetNotificationChannelInput: GetNotificationChannelInput
    GetNotificationChannelOutput: GetNotificationChannelOutput
    GetPolicyInput: GetPolicyInput
    GetPolicyOutput: GetPolicyOutput
    GetProtectionStatusInput: GetProtectionStatusInput
    GetProtectionStatusOutput: GetProtectionStatusOutput
    GetProtocolsListInput: GetProtocolsListInput
    GetProtocolsListOutput: GetProtocolsListOutput
    GetResourceSetInput: GetResourceSetInput
    GetResourceSetOutput: GetResourceSetOutput
    GetThirdPartyFirewallAssociationStatusInput: GetThirdPartyFirewallAssociationStatusInput
    GetThirdPartyFirewallAssociationStatusOutput: GetThirdPartyFirewallAssociationStatusOutput
    GetViolationDetailsInput: GetViolationDetailsInput
    GetViolationDetailsOutput: GetViolationDetailsOutput
    ListAdminAccountsForOrganizationInput: ListAdminAccountsForOrganizationInput
    ListAdminAccountsForOrganizationOutput: ListAdminAccountsForOrganizationOutput
    ListAdminsManagingAccountInput: ListAdminsManagingAccountInput
    ListAdminsManagingAccountOutput: ListAdminsManagingAccountOutput
    ListAppsListsInput: ListAppsListsInput
    ListAppsListsOutput: ListAppsListsOutput
    ListComplianceStatusInput: ListComplianceStatusInput
    ListComplianceStatusOutput: ListComplianceStatusOutput
    ListDiscoveredResourcesInput: ListDiscoveredResourcesInput
    ListDiscoveredResourcesOutput: ListDiscoveredResourcesOutput
    ListMemberAccountsInput: ListMemberAccountsInput
    ListMemberAccountsOutput: ListMemberAccountsOutput
    ListPoliciesInput: ListPoliciesInput
    ListPoliciesOutput: ListPoliciesOutput
    ListProtocolsListsInput: ListProtocolsListsInput
    ListProtocolsListsOutput: ListProtocolsListsOutput
    ListResourceSetResourcesInput: ListResourceSetResourcesInput
    ListResourceSetResourcesOutput: ListResourceSetResourcesOutput
    ListResourceSetsInput: ListResourceSetsInput
    ListResourceSetsOutput: ListResourceSetsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListThirdPartyFirewallFirewallPoliciesInput: ListThirdPartyFirewallFirewallPoliciesInput
    ListThirdPartyFirewallFirewallPoliciesOutput: ListThirdPartyFirewallFirewallPoliciesOutput
    PutAdminAccountInput: PutAdminAccountInput
    PutAdminAccountOutput: PutAdminAccountOutput
    PutAppsListInput: PutAppsListInput
    PutAppsListOutput: PutAppsListOutput
    PutNotificationChannelInput: PutNotificationChannelInput
    PutNotificationChannelOutput: PutNotificationChannelOutput
    PutPolicyInput: PutPolicyInput
    PutPolicyOutput: PutPolicyOutput
    PutProtocolsListInput: PutProtocolsListInput
    PutProtocolsListOutput: PutProtocolsListOutput
    PutResourceSetInput: PutResourceSetInput
    PutResourceSetOutput: PutResourceSetOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
end

return M
