local record AddRegionInput
    InstanceArn: string
    RegionName: string
end

local record AddRegionOutput
    Status: string
end

local record AttachCustomerManagedPolicyReferenceToPermissionSetInput
    InstanceArn: string
    PermissionSetArn: string
    CustomerManagedPolicyReference: CustomerManagedPolicyReference
end

local record AttachCustomerManagedPolicyReferenceToPermissionSetOutput
end

local record AttachManagedPolicyToPermissionSetInput
    InstanceArn: string
    PermissionSetArn: string
    ManagedPolicyArn: string
end

local record AttachManagedPolicyToPermissionSetOutput
end

local record CreateAccountAssignmentInput
    InstanceArn: string
    TargetId: string
    TargetType: string
    PermissionSetArn: string
    PrincipalType: string
    PrincipalId: string
end

local record CreateAccountAssignmentOutput
    AccountAssignmentCreationStatus: AccountAssignmentOperationStatus
end

local record CreateApplicationInput
    InstanceArn: string
    ApplicationProviderArn: string
    Name: string
    Description: string
    PortalOptions: PortalOptions
    Tags: {Tag}
    Status: string
    ClientToken: string
end

local record CreateApplicationOutput
    ApplicationArn: string
    InstanceArn: string
    IdentityStoreArn: string
end

local record CreateApplicationAssignmentInput
    ApplicationArn: string
    PrincipalId: string
    PrincipalType: string
end

local record CreateApplicationAssignmentOutput
end

local record CreateInstanceInput
    Name: string
    ClientToken: string
    Tags: {Tag}
end

local record CreateInstanceOutput
    InstanceArn: string
end

local record CreateInstanceAccessControlAttributeConfigurationInput
    InstanceArn: string
    InstanceAccessControlAttributeConfiguration: InstanceAccessControlAttributeConfiguration
end

local record CreateInstanceAccessControlAttributeConfigurationOutput
end

local record CreatePermissionSetInput
    Name: string
    Description: string
    InstanceArn: string
    SessionDuration: string
    RelayState: string
    Tags: {Tag}
end

local record CreatePermissionSetOutput
    PermissionSet: PermissionSet
end

local record CreateTrustedTokenIssuerInput
    InstanceArn: string
    Name: string
    TrustedTokenIssuerType: string
    TrustedTokenIssuerConfiguration: TrustedTokenIssuerConfiguration
    ClientToken: string
    Tags: {Tag}
end

local record CreateTrustedTokenIssuerOutput
    TrustedTokenIssuerArn: string
end

local record DeleteAccountAssignmentInput
    InstanceArn: string
    TargetId: string
    TargetType: string
    PermissionSetArn: string
    PrincipalType: string
    PrincipalId: string
end

local record DeleteAccountAssignmentOutput
    AccountAssignmentDeletionStatus: AccountAssignmentOperationStatus
end

local record DeleteApplicationInput
    ApplicationArn: string
end

local record DeleteApplicationOutput
end

local record DeleteApplicationAccessScopeInput
    ApplicationArn: string
    Scope: string
end

local record DeleteApplicationAccessScopeOutput
end

local record DeleteApplicationAssignmentInput
    ApplicationArn: string
    PrincipalId: string
    PrincipalType: string
end

local record DeleteApplicationAssignmentOutput
end

local record DeleteApplicationAuthenticationMethodInput
    ApplicationArn: string
    AuthenticationMethodType: string
end

local record DeleteApplicationAuthenticationMethodOutput
end

local record DeleteApplicationGrantInput
    ApplicationArn: string
    GrantType: string
end

local record DeleteApplicationGrantOutput
end

local record DeleteInlinePolicyFromPermissionSetInput
    InstanceArn: string
    PermissionSetArn: string
end

local record DeleteInlinePolicyFromPermissionSetOutput
end

local record DeleteInstanceInput
    InstanceArn: string
end

local record DeleteInstanceOutput
end

local record DeleteInstanceAccessControlAttributeConfigurationInput
    InstanceArn: string
end

local record DeleteInstanceAccessControlAttributeConfigurationOutput
end

local record DeletePermissionsBoundaryFromPermissionSetInput
    InstanceArn: string
    PermissionSetArn: string
end

local record DeletePermissionsBoundaryFromPermissionSetOutput
end

local record DeletePermissionSetInput
    InstanceArn: string
    PermissionSetArn: string
end

local record DeletePermissionSetOutput
end

local record DeleteTrustedTokenIssuerInput
    TrustedTokenIssuerArn: string
end

local record DeleteTrustedTokenIssuerOutput
end

local record DescribeAccountAssignmentCreationStatusInput
    InstanceArn: string
    AccountAssignmentCreationRequestId: string
end

local record DescribeAccountAssignmentCreationStatusOutput
    AccountAssignmentCreationStatus: AccountAssignmentOperationStatus
end

local record DescribeAccountAssignmentDeletionStatusInput
    InstanceArn: string
    AccountAssignmentDeletionRequestId: string
end

local record DescribeAccountAssignmentDeletionStatusOutput
    AccountAssignmentDeletionStatus: AccountAssignmentOperationStatus
end

local record DescribeApplicationInput
    ApplicationArn: string
end

local record DescribeApplicationOutput
    ApplicationArn: string
    ApplicationProviderArn: string
    Name: string
    ApplicationAccount: string
    InstanceArn: string
    IdentityStoreArn: string
    Status: string
    PortalOptions: PortalOptions
    Description: string
    CreatedDate: number
    CreatedFrom: string
end

local record DescribeApplicationAssignmentInput
    ApplicationArn: string
    PrincipalId: string
    PrincipalType: string
end

local record DescribeApplicationAssignmentOutput
    PrincipalType: string
    PrincipalId: string
    ApplicationArn: string
end

local record DescribeApplicationProviderInput
    ApplicationProviderArn: string
end

local record DescribeApplicationProviderOutput
    ApplicationProviderArn: string
    FederationProtocol: string
    DisplayData: DisplayData
    ResourceServerConfig: ResourceServerConfig
end

local record DescribeInstanceInput
    InstanceArn: string
end

local record DescribeInstanceOutput
    InstanceArn: string
    IdentityStoreId: string
    OwnerAccountId: string
    Name: string
    CreatedDate: number
    Status: string
    StatusReason: string
    EncryptionConfigurationDetails: EncryptionConfigurationDetails
end

local record DescribeInstanceAccessControlAttributeConfigurationInput
    InstanceArn: string
end

local record DescribeInstanceAccessControlAttributeConfigurationOutput
    Status: string
    StatusReason: string
    InstanceAccessControlAttributeConfiguration: InstanceAccessControlAttributeConfiguration
end

local record DescribePermissionSetInput
    InstanceArn: string
    PermissionSetArn: string
end

local record DescribePermissionSetOutput
    PermissionSet: PermissionSet
end

local record DescribePermissionSetProvisioningStatusInput
    InstanceArn: string
    ProvisionPermissionSetRequestId: string
end

local record DescribePermissionSetProvisioningStatusOutput
    PermissionSetProvisioningStatus: PermissionSetProvisioningStatus
end

local record DescribeRegionInput
    InstanceArn: string
    RegionName: string
end

local record DescribeRegionOutput
    RegionName: string
    Status: string
    AddedDate: number
    IsPrimaryRegion: boolean
end

local record DescribeTrustedTokenIssuerInput
    TrustedTokenIssuerArn: string
end

local record DescribeTrustedTokenIssuerOutput
    TrustedTokenIssuerArn: string
    Name: string
    TrustedTokenIssuerType: string
    TrustedTokenIssuerConfiguration: TrustedTokenIssuerConfiguration
end

local record DetachCustomerManagedPolicyReferenceFromPermissionSetInput
    InstanceArn: string
    PermissionSetArn: string
    CustomerManagedPolicyReference: CustomerManagedPolicyReference
end

local record DetachCustomerManagedPolicyReferenceFromPermissionSetOutput
end

local record DetachManagedPolicyFromPermissionSetInput
    InstanceArn: string
    PermissionSetArn: string
    ManagedPolicyArn: string
end

local record DetachManagedPolicyFromPermissionSetOutput
end

local record GetApplicationAccessScopeInput
    ApplicationArn: string
    Scope: string
end

local record GetApplicationAccessScopeOutput
    Scope: string
    AuthorizedTargets: {string}
end

local record GetApplicationAssignmentConfigurationInput
    ApplicationArn: string
end

local record GetApplicationAssignmentConfigurationOutput
    AssignmentRequired: boolean
end

local record GetApplicationAuthenticationMethodInput
    ApplicationArn: string
    AuthenticationMethodType: string
end

local record GetApplicationAuthenticationMethodOutput
    AuthenticationMethod: AuthenticationMethod
end

local record GetApplicationGrantInput
    ApplicationArn: string
    GrantType: string
end

local record GetApplicationGrantOutput
    Grant: Grant
end

local record GetApplicationSessionConfigurationInput
    ApplicationArn: string
end

local record GetApplicationSessionConfigurationOutput
    UserBackgroundSessionApplicationStatus: string
end

local record GetInlinePolicyForPermissionSetInput
    InstanceArn: string
    PermissionSetArn: string
end

local record GetInlinePolicyForPermissionSetOutput
    InlinePolicy: string
end

local record GetPermissionsBoundaryForPermissionSetInput
    InstanceArn: string
    PermissionSetArn: string
end

local record GetPermissionsBoundaryForPermissionSetOutput
    PermissionsBoundary: PermissionsBoundary
end

local record ListAccountAssignmentCreationStatusInput
    InstanceArn: string
    MaxResults: number
    NextToken: string
    Filter: OperationStatusFilter
end

local record ListAccountAssignmentCreationStatusOutput
    AccountAssignmentsCreationStatus: {AccountAssignmentOperationStatusMetadata}
    NextToken: string
end

local record ListAccountAssignmentDeletionStatusInput
    InstanceArn: string
    MaxResults: number
    NextToken: string
    Filter: OperationStatusFilter
end

local record ListAccountAssignmentDeletionStatusOutput
    AccountAssignmentsDeletionStatus: {AccountAssignmentOperationStatusMetadata}
    NextToken: string
end

local record ListAccountAssignmentsInput
    InstanceArn: string
    AccountId: string
    PermissionSetArn: string
    MaxResults: number
    NextToken: string
end

local record ListAccountAssignmentsOutput
    AccountAssignments: {AccountAssignment}
    NextToken: string
end

local record ListAccountAssignmentsForPrincipalInput
    InstanceArn: string
    PrincipalId: string
    PrincipalType: string
    Filter: ListAccountAssignmentsFilter
    NextToken: string
    MaxResults: number
end

local record ListAccountAssignmentsForPrincipalOutput
    AccountAssignments: {AccountAssignmentForPrincipal}
    NextToken: string
end

local record ListAccountsForProvisionedPermissionSetInput
    InstanceArn: string
    PermissionSetArn: string
    ProvisioningStatus: string
    MaxResults: number
    NextToken: string
end

local record ListAccountsForProvisionedPermissionSetOutput
    AccountIds: {string}
    NextToken: string
end

local record ListApplicationAccessScopesInput
    ApplicationArn: string
    MaxResults: number
    NextToken: string
end

local record ListApplicationAccessScopesOutput
    Scopes: {ScopeDetails}
    NextToken: string
end

local record ListApplicationAssignmentsInput
    ApplicationArn: string
    MaxResults: number
    NextToken: string
end

local record ListApplicationAssignmentsOutput
    ApplicationAssignments: {ApplicationAssignment}
    NextToken: string
end

local record ListApplicationAssignmentsForPrincipalInput
    InstanceArn: string
    PrincipalId: string
    PrincipalType: string
    Filter: ListApplicationAssignmentsFilter
    NextToken: string
    MaxResults: number
end

local record ListApplicationAssignmentsForPrincipalOutput
    ApplicationAssignments: {ApplicationAssignmentForPrincipal}
    NextToken: string
end

local record ListApplicationAuthenticationMethodsInput
    ApplicationArn: string
    NextToken: string
end

local record ListApplicationAuthenticationMethodsOutput
    AuthenticationMethods: {AuthenticationMethodItem}
    NextToken: string
end

local record ListApplicationGrantsInput
    ApplicationArn: string
    NextToken: string
end

local record ListApplicationGrantsOutput
    Grants: {GrantItem}
    NextToken: string
end

local record ListApplicationProvidersInput
    MaxResults: number
    NextToken: string
end

local record ListApplicationProvidersOutput
    ApplicationProviders: {ApplicationProvider}
    NextToken: string
end

local record ListApplicationsInput
    InstanceArn: string
    MaxResults: number
    NextToken: string
    Filter: ListApplicationsFilter
end

local record ListApplicationsOutput
    Applications: {Application}
    NextToken: string
end

local record ListCustomerManagedPolicyReferencesInPermissionSetInput
    InstanceArn: string
    PermissionSetArn: string
    MaxResults: number
    NextToken: string
end

local record ListCustomerManagedPolicyReferencesInPermissionSetOutput
    CustomerManagedPolicyReferences: {CustomerManagedPolicyReference}
    NextToken: string
end

local record ListInstancesInput
    MaxResults: number
    NextToken: string
end

local record ListInstancesOutput
    Instances: {InstanceMetadata}
    NextToken: string
end

local record ListManagedPoliciesInPermissionSetInput
    InstanceArn: string
    PermissionSetArn: string
    MaxResults: number
    NextToken: string
end

local record ListManagedPoliciesInPermissionSetOutput
    AttachedManagedPolicies: {AttachedManagedPolicy}
    NextToken: string
end

local record ListPermissionSetProvisioningStatusInput
    InstanceArn: string
    MaxResults: number
    NextToken: string
    Filter: OperationStatusFilter
end

local record ListPermissionSetProvisioningStatusOutput
    PermissionSetsProvisioningStatus: {PermissionSetProvisioningStatusMetadata}
    NextToken: string
end

local record ListPermissionSetsInput
    InstanceArn: string
    NextToken: string
    MaxResults: number
end

local record ListPermissionSetsOutput
    PermissionSets: {string}
    NextToken: string
end

local record ListPermissionSetsProvisionedToAccountInput
    InstanceArn: string
    AccountId: string
    ProvisioningStatus: string
    MaxResults: number
    NextToken: string
end

local record ListPermissionSetsProvisionedToAccountOutput
    NextToken: string
    PermissionSets: {string}
end

local record ListRegionsInput
    InstanceArn: string
    MaxResults: number
    NextToken: string
end

local record ListRegionsOutput
    Regions: {RegionMetadata}
    NextToken: string
end

local record ListTagsForResourceInput
    InstanceArn: string
    ResourceArn: string
    NextToken: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
    NextToken: string
end

local record ListTrustedTokenIssuersInput
    InstanceArn: string
    MaxResults: number
    NextToken: string
end

local record ListTrustedTokenIssuersOutput
    TrustedTokenIssuers: {TrustedTokenIssuerMetadata}
    NextToken: string
end

local record ProvisionPermissionSetInput
    InstanceArn: string
    PermissionSetArn: string
    TargetId: string
    TargetType: string
end

local record ProvisionPermissionSetOutput
    PermissionSetProvisioningStatus: PermissionSetProvisioningStatus
end

local record PutApplicationAccessScopeInput
    Scope: string
    AuthorizedTargets: {string}
    ApplicationArn: string
end

local record PutApplicationAccessScopeOutput
end

local record PutApplicationAssignmentConfigurationInput
    ApplicationArn: string
    AssignmentRequired: boolean
end

local record PutApplicationAssignmentConfigurationOutput
end

local record PutApplicationAuthenticationMethodInput
    ApplicationArn: string
    AuthenticationMethodType: string
    AuthenticationMethod: AuthenticationMethod
end

local record PutApplicationAuthenticationMethodOutput
end

local record PutApplicationGrantInput
    ApplicationArn: string
    GrantType: string
    Grant: Grant
end

local record PutApplicationGrantOutput
end

local record PutApplicationSessionConfigurationInput
    ApplicationArn: string
    UserBackgroundSessionApplicationStatus: string
end

local record PutApplicationSessionConfigurationOutput
end

local record PutInlinePolicyToPermissionSetInput
    InstanceArn: string
    PermissionSetArn: string
    InlinePolicy: string
end

local record PutInlinePolicyToPermissionSetOutput
end

local record PutPermissionsBoundaryToPermissionSetInput
    InstanceArn: string
    PermissionSetArn: string
    PermissionsBoundary: PermissionsBoundary
end

local record PutPermissionsBoundaryToPermissionSetOutput
end

local record RemoveRegionInput
    InstanceArn: string
    RegionName: string
end

local record RemoveRegionOutput
    Status: string
end

local record TagResourceInput
    InstanceArn: string
    ResourceArn: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    InstanceArn: string
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateApplicationInput
    ApplicationArn: string
    Name: string
    Description: string
    Status: string
    PortalOptions: UpdateApplicationPortalOptions
end

local record UpdateApplicationOutput
end

local record UpdateInstanceInput
    Name: string
    InstanceArn: string
    EncryptionConfiguration: EncryptionConfiguration
end

local record UpdateInstanceOutput
end

local record UpdateInstanceAccessControlAttributeConfigurationInput
    InstanceArn: string
    InstanceAccessControlAttributeConfiguration: InstanceAccessControlAttributeConfiguration
end

local record UpdateInstanceAccessControlAttributeConfigurationOutput
end

local record UpdatePermissionSetInput
    InstanceArn: string
    PermissionSetArn: string
    Description: string
    SessionDuration: string
    RelayState: string
end

local record UpdatePermissionSetOutput
end

local record UpdateTrustedTokenIssuerInput
    TrustedTokenIssuerArn: string
    Name: string
    TrustedTokenIssuerConfiguration: TrustedTokenIssuerUpdateConfiguration
end

local record UpdateTrustedTokenIssuerOutput
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local type InstanceStatus = "CREATE_IN_PROGRESS" | "CREATE_FAILED" | "DELETE_IN_PROGRESS" | "ACTIVE"

local type ProvisioningStatus = "LATEST_PERMISSION_SET_PROVISIONED" | "LATEST_PERMISSION_SET_NOT_PROVISIONED"

local type ApplicationStatus = "ENABLED" | "DISABLED"

local type UserBackgroundSessionApplicationStatus = "ENABLED" | "DISABLED"

local type AuthenticationMethodType = "IAM"

local type RegionStatus = "ACTIVE" | "ADDING" | "REMOVING"

local type ProvisionTargetType = "AWS_ACCOUNT" | "ALL_PROVISIONED_ACCOUNTS"

local type TrustedTokenIssuerType = "OIDC_JWT"

local type GrantType = "authorization_code" | "refresh_token" | "urn:ietf:params:oauth:grant-type:jwt-bearer" | "urn:ietf:params:oauth:grant-type:token-exchange"

local type PrincipalType = "USER" | "GROUP"

local type FederationProtocol = "SAML" | "OAUTH"

local type InstanceAccessControlAttributeConfigurationStatus = "ENABLED" | "CREATION_IN_PROGRESS" | "CREATION_FAILED"

local type TargetType = "AWS_ACCOUNT"

local record M
    AddRegionInput: AddRegionInput
    AddRegionOutput: AddRegionOutput
    AttachCustomerManagedPolicyReferenceToPermissionSetInput: AttachCustomerManagedPolicyReferenceToPermissionSetInput
    AttachCustomerManagedPolicyReferenceToPermissionSetOutput: AttachCustomerManagedPolicyReferenceToPermissionSetOutput
    AttachManagedPolicyToPermissionSetInput: AttachManagedPolicyToPermissionSetInput
    AttachManagedPolicyToPermissionSetOutput: AttachManagedPolicyToPermissionSetOutput
    CreateAccountAssignmentInput: CreateAccountAssignmentInput
    CreateAccountAssignmentOutput: CreateAccountAssignmentOutput
    CreateApplicationInput: CreateApplicationInput
    CreateApplicationOutput: CreateApplicationOutput
    CreateApplicationAssignmentInput: CreateApplicationAssignmentInput
    CreateApplicationAssignmentOutput: CreateApplicationAssignmentOutput
    CreateInstanceInput: CreateInstanceInput
    CreateInstanceOutput: CreateInstanceOutput
    CreateInstanceAccessControlAttributeConfigurationInput: CreateInstanceAccessControlAttributeConfigurationInput
    CreateInstanceAccessControlAttributeConfigurationOutput: CreateInstanceAccessControlAttributeConfigurationOutput
    CreatePermissionSetInput: CreatePermissionSetInput
    CreatePermissionSetOutput: CreatePermissionSetOutput
    CreateTrustedTokenIssuerInput: CreateTrustedTokenIssuerInput
    CreateTrustedTokenIssuerOutput: CreateTrustedTokenIssuerOutput
    DeleteAccountAssignmentInput: DeleteAccountAssignmentInput
    DeleteAccountAssignmentOutput: DeleteAccountAssignmentOutput
    DeleteApplicationInput: DeleteApplicationInput
    DeleteApplicationOutput: DeleteApplicationOutput
    DeleteApplicationAccessScopeInput: DeleteApplicationAccessScopeInput
    DeleteApplicationAccessScopeOutput: DeleteApplicationAccessScopeOutput
    DeleteApplicationAssignmentInput: DeleteApplicationAssignmentInput
    DeleteApplicationAssignmentOutput: DeleteApplicationAssignmentOutput
    DeleteApplicationAuthenticationMethodInput: DeleteApplicationAuthenticationMethodInput
    DeleteApplicationAuthenticationMethodOutput: DeleteApplicationAuthenticationMethodOutput
    DeleteApplicationGrantInput: DeleteApplicationGrantInput
    DeleteApplicationGrantOutput: DeleteApplicationGrantOutput
    DeleteInlinePolicyFromPermissionSetInput: DeleteInlinePolicyFromPermissionSetInput
    DeleteInlinePolicyFromPermissionSetOutput: DeleteInlinePolicyFromPermissionSetOutput
    DeleteInstanceInput: DeleteInstanceInput
    DeleteInstanceOutput: DeleteInstanceOutput
    DeleteInstanceAccessControlAttributeConfigurationInput: DeleteInstanceAccessControlAttributeConfigurationInput
    DeleteInstanceAccessControlAttributeConfigurationOutput: DeleteInstanceAccessControlAttributeConfigurationOutput
    DeletePermissionsBoundaryFromPermissionSetInput: DeletePermissionsBoundaryFromPermissionSetInput
    DeletePermissionsBoundaryFromPermissionSetOutput: DeletePermissionsBoundaryFromPermissionSetOutput
    DeletePermissionSetInput: DeletePermissionSetInput
    DeletePermissionSetOutput: DeletePermissionSetOutput
    DeleteTrustedTokenIssuerInput: DeleteTrustedTokenIssuerInput
    DeleteTrustedTokenIssuerOutput: DeleteTrustedTokenIssuerOutput
    DescribeAccountAssignmentCreationStatusInput: DescribeAccountAssignmentCreationStatusInput
    DescribeAccountAssignmentCreationStatusOutput: DescribeAccountAssignmentCreationStatusOutput
    DescribeAccountAssignmentDeletionStatusInput: DescribeAccountAssignmentDeletionStatusInput
    DescribeAccountAssignmentDeletionStatusOutput: DescribeAccountAssignmentDeletionStatusOutput
    DescribeApplicationInput: DescribeApplicationInput
    DescribeApplicationOutput: DescribeApplicationOutput
    DescribeApplicationAssignmentInput: DescribeApplicationAssignmentInput
    DescribeApplicationAssignmentOutput: DescribeApplicationAssignmentOutput
    DescribeApplicationProviderInput: DescribeApplicationProviderInput
    DescribeApplicationProviderOutput: DescribeApplicationProviderOutput
    DescribeInstanceInput: DescribeInstanceInput
    DescribeInstanceOutput: DescribeInstanceOutput
    DescribeInstanceAccessControlAttributeConfigurationInput: DescribeInstanceAccessControlAttributeConfigurationInput
    DescribeInstanceAccessControlAttributeConfigurationOutput: DescribeInstanceAccessControlAttributeConfigurationOutput
    DescribePermissionSetInput: DescribePermissionSetInput
    DescribePermissionSetOutput: DescribePermissionSetOutput
    DescribePermissionSetProvisioningStatusInput: DescribePermissionSetProvisioningStatusInput
    DescribePermissionSetProvisioningStatusOutput: DescribePermissionSetProvisioningStatusOutput
    DescribeRegionInput: DescribeRegionInput
    DescribeRegionOutput: DescribeRegionOutput
    DescribeTrustedTokenIssuerInput: DescribeTrustedTokenIssuerInput
    DescribeTrustedTokenIssuerOutput: DescribeTrustedTokenIssuerOutput
    DetachCustomerManagedPolicyReferenceFromPermissionSetInput: DetachCustomerManagedPolicyReferenceFromPermissionSetInput
    DetachCustomerManagedPolicyReferenceFromPermissionSetOutput: DetachCustomerManagedPolicyReferenceFromPermissionSetOutput
    DetachManagedPolicyFromPermissionSetInput: DetachManagedPolicyFromPermissionSetInput
    DetachManagedPolicyFromPermissionSetOutput: DetachManagedPolicyFromPermissionSetOutput
    GetApplicationAccessScopeInput: GetApplicationAccessScopeInput
    GetApplicationAccessScopeOutput: GetApplicationAccessScopeOutput
    GetApplicationAssignmentConfigurationInput: GetApplicationAssignmentConfigurationInput
    GetApplicationAssignmentConfigurationOutput: GetApplicationAssignmentConfigurationOutput
    GetApplicationAuthenticationMethodInput: GetApplicationAuthenticationMethodInput
    GetApplicationAuthenticationMethodOutput: GetApplicationAuthenticationMethodOutput
    GetApplicationGrantInput: GetApplicationGrantInput
    GetApplicationGrantOutput: GetApplicationGrantOutput
    GetApplicationSessionConfigurationInput: GetApplicationSessionConfigurationInput
    GetApplicationSessionConfigurationOutput: GetApplicationSessionConfigurationOutput
    GetInlinePolicyForPermissionSetInput: GetInlinePolicyForPermissionSetInput
    GetInlinePolicyForPermissionSetOutput: GetInlinePolicyForPermissionSetOutput
    GetPermissionsBoundaryForPermissionSetInput: GetPermissionsBoundaryForPermissionSetInput
    GetPermissionsBoundaryForPermissionSetOutput: GetPermissionsBoundaryForPermissionSetOutput
    ListAccountAssignmentCreationStatusInput: ListAccountAssignmentCreationStatusInput
    ListAccountAssignmentCreationStatusOutput: ListAccountAssignmentCreationStatusOutput
    ListAccountAssignmentDeletionStatusInput: ListAccountAssignmentDeletionStatusInput
    ListAccountAssignmentDeletionStatusOutput: ListAccountAssignmentDeletionStatusOutput
    ListAccountAssignmentsInput: ListAccountAssignmentsInput
    ListAccountAssignmentsOutput: ListAccountAssignmentsOutput
    ListAccountAssignmentsForPrincipalInput: ListAccountAssignmentsForPrincipalInput
    ListAccountAssignmentsForPrincipalOutput: ListAccountAssignmentsForPrincipalOutput
    ListAccountsForProvisionedPermissionSetInput: ListAccountsForProvisionedPermissionSetInput
    ListAccountsForProvisionedPermissionSetOutput: ListAccountsForProvisionedPermissionSetOutput
    ListApplicationAccessScopesInput: ListApplicationAccessScopesInput
    ListApplicationAccessScopesOutput: ListApplicationAccessScopesOutput
    ListApplicationAssignmentsInput: ListApplicationAssignmentsInput
    ListApplicationAssignmentsOutput: ListApplicationAssignmentsOutput
    ListApplicationAssignmentsForPrincipalInput: ListApplicationAssignmentsForPrincipalInput
    ListApplicationAssignmentsForPrincipalOutput: ListApplicationAssignmentsForPrincipalOutput
    ListApplicationAuthenticationMethodsInput: ListApplicationAuthenticationMethodsInput
    ListApplicationAuthenticationMethodsOutput: ListApplicationAuthenticationMethodsOutput
    ListApplicationGrantsInput: ListApplicationGrantsInput
    ListApplicationGrantsOutput: ListApplicationGrantsOutput
    ListApplicationProvidersInput: ListApplicationProvidersInput
    ListApplicationProvidersOutput: ListApplicationProvidersOutput
    ListApplicationsInput: ListApplicationsInput
    ListApplicationsOutput: ListApplicationsOutput
    ListCustomerManagedPolicyReferencesInPermissionSetInput: ListCustomerManagedPolicyReferencesInPermissionSetInput
    ListCustomerManagedPolicyReferencesInPermissionSetOutput: ListCustomerManagedPolicyReferencesInPermissionSetOutput
    ListInstancesInput: ListInstancesInput
    ListInstancesOutput: ListInstancesOutput
    ListManagedPoliciesInPermissionSetInput: ListManagedPoliciesInPermissionSetInput
    ListManagedPoliciesInPermissionSetOutput: ListManagedPoliciesInPermissionSetOutput
    ListPermissionSetProvisioningStatusInput: ListPermissionSetProvisioningStatusInput
    ListPermissionSetProvisioningStatusOutput: ListPermissionSetProvisioningStatusOutput
    ListPermissionSetsInput: ListPermissionSetsInput
    ListPermissionSetsOutput: ListPermissionSetsOutput
    ListPermissionSetsProvisionedToAccountInput: ListPermissionSetsProvisionedToAccountInput
    ListPermissionSetsProvisionedToAccountOutput: ListPermissionSetsProvisionedToAccountOutput
    ListRegionsInput: ListRegionsInput
    ListRegionsOutput: ListRegionsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTrustedTokenIssuersInput: ListTrustedTokenIssuersInput
    ListTrustedTokenIssuersOutput: ListTrustedTokenIssuersOutput
    ProvisionPermissionSetInput: ProvisionPermissionSetInput
    ProvisionPermissionSetOutput: ProvisionPermissionSetOutput
    PutApplicationAccessScopeInput: PutApplicationAccessScopeInput
    PutApplicationAccessScopeOutput: PutApplicationAccessScopeOutput
    PutApplicationAssignmentConfigurationInput: PutApplicationAssignmentConfigurationInput
    PutApplicationAssignmentConfigurationOutput: PutApplicationAssignmentConfigurationOutput
    PutApplicationAuthenticationMethodInput: PutApplicationAuthenticationMethodInput
    PutApplicationAuthenticationMethodOutput: PutApplicationAuthenticationMethodOutput
    PutApplicationGrantInput: PutApplicationGrantInput
    PutApplicationGrantOutput: PutApplicationGrantOutput
    PutApplicationSessionConfigurationInput: PutApplicationSessionConfigurationInput
    PutApplicationSessionConfigurationOutput: PutApplicationSessionConfigurationOutput
    PutInlinePolicyToPermissionSetInput: PutInlinePolicyToPermissionSetInput
    PutInlinePolicyToPermissionSetOutput: PutInlinePolicyToPermissionSetOutput
    PutPermissionsBoundaryToPermissionSetInput: PutPermissionsBoundaryToPermissionSetInput
    PutPermissionsBoundaryToPermissionSetOutput: PutPermissionsBoundaryToPermissionSetOutput
    RemoveRegionInput: RemoveRegionInput
    RemoveRegionOutput: RemoveRegionOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateApplicationInput: UpdateApplicationInput
    UpdateApplicationOutput: UpdateApplicationOutput
    UpdateInstanceInput: UpdateInstanceInput
    UpdateInstanceOutput: UpdateInstanceOutput
    UpdateInstanceAccessControlAttributeConfigurationInput: UpdateInstanceAccessControlAttributeConfigurationInput
    UpdateInstanceAccessControlAttributeConfigurationOutput: UpdateInstanceAccessControlAttributeConfigurationOutput
    UpdatePermissionSetInput: UpdatePermissionSetInput
    UpdatePermissionSetOutput: UpdatePermissionSetOutput
    UpdateTrustedTokenIssuerInput: UpdateTrustedTokenIssuerInput
    UpdateTrustedTokenIssuerOutput: UpdateTrustedTokenIssuerOutput
end

return M
