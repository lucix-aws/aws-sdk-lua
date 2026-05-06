local record AcceptDelegationRequestInput
    DelegationRequestId: string
end

local record AcceptDelegationRequestOutput
end

local record AddClientIDToOpenIDConnectProviderInput
    OpenIDConnectProviderArn: string
    ClientID: string
end

local record AddClientIDToOpenIDConnectProviderOutput
end

local record AddRoleToInstanceProfileInput
    InstanceProfileName: string
    RoleName: string
end

local record AddRoleToInstanceProfileOutput
end

local record AddUserToGroupInput
    GroupName: string
    UserName: string
end

local record AddUserToGroupOutput
end

local record AssociateDelegationRequestInput
    DelegationRequestId: string
end

local record AssociateDelegationRequestOutput
end

local record AttachGroupPolicyInput
    GroupName: string
    PolicyArn: string
end

local record AttachGroupPolicyOutput
end

local record AttachRolePolicyInput
    RoleName: string
    PolicyArn: string
end

local record AttachRolePolicyOutput
end

local record AttachUserPolicyInput
    UserName: string
    PolicyArn: string
end

local record AttachUserPolicyOutput
end

local record ChangePasswordInput
    OldPassword: string
    NewPassword: string
end

local record ChangePasswordOutput
end

local record CreateAccessKeyInput
    UserName: string
end

local record CreateAccessKeyOutput
    AccessKey: AccessKey
end

local record CreateAccountAliasInput
    AccountAlias: string
end

local record CreateAccountAliasOutput
end

local record CreateDelegationRequestInput
    OwnerAccountId: string
    Description: string
    Permissions: DelegationPermission
    RequestMessage: string
    RequestorWorkflowId: string
    RedirectUrl: string
    NotificationChannel: string
    SessionDuration: number
    OnlySendByOwner: boolean
end

local record CreateDelegationRequestOutput
    ConsoleDeepLink: string
    DelegationRequestId: string
end

local record CreateGroupInput
    Path: string
    GroupName: string
end

local record CreateGroupOutput
    Group: Group
end

local record CreateInstanceProfileInput
    InstanceProfileName: string
    Path: string
    Tags: {Tag}
end

local record CreateInstanceProfileOutput
    InstanceProfile: InstanceProfile
end

local record CreateLoginProfileInput
    UserName: string
    Password: string
    PasswordResetRequired: boolean
end

local record CreateLoginProfileOutput
    LoginProfile: LoginProfile
end

local record CreateOpenIDConnectProviderInput
    Url: string
    ClientIDList: {string}
    ThumbprintList: {string}
    Tags: {Tag}
end

local record CreateOpenIDConnectProviderOutput
    OpenIDConnectProviderArn: string
    Tags: {Tag}
end

local record CreatePolicyInput
    PolicyName: string
    Path: string
    PolicyDocument: string
    Description: string
    Tags: {Tag}
end

local record CreatePolicyOutput
    Policy: Policy
end

local record CreatePolicyVersionInput
    PolicyArn: string
    PolicyDocument: string
    SetAsDefault: boolean
end

local record CreatePolicyVersionOutput
    PolicyVersion: PolicyVersion
end

local record CreateRoleInput
    Path: string
    RoleName: string
    AssumeRolePolicyDocument: string
    Description: string
    MaxSessionDuration: number
    PermissionsBoundary: string
    Tags: {Tag}
end

local record CreateRoleOutput
    Role: Role
end

local record CreateSAMLProviderInput
    SAMLMetadataDocument: string
    Name: string
    Tags: {Tag}
    AssertionEncryptionMode: string
    AddPrivateKey: string
end

local record CreateSAMLProviderOutput
    SAMLProviderArn: string
    Tags: {Tag}
end

local record CreateServiceLinkedRoleInput
    AWSServiceName: string
    Description: string
    CustomSuffix: string
end

local record CreateServiceLinkedRoleOutput
    Role: Role
end

local record CreateServiceSpecificCredentialInput
    UserName: string
    ServiceName: string
    CredentialAgeDays: number
end

local record CreateServiceSpecificCredentialOutput
    ServiceSpecificCredential: ServiceSpecificCredential
end

local record CreateUserInput
    Path: string
    UserName: string
    PermissionsBoundary: string
    Tags: {Tag}
end

local record CreateUserOutput
    User: User
end

local record CreateVirtualMFADeviceInput
    Path: string
    VirtualMFADeviceName: string
    Tags: {Tag}
end

local record CreateVirtualMFADeviceOutput
    VirtualMFADevice: VirtualMFADevice
end

local record DeactivateMFADeviceInput
    UserName: string
    SerialNumber: string
end

local record DeactivateMFADeviceOutput
end

local record DeleteAccessKeyInput
    UserName: string
    AccessKeyId: string
end

local record DeleteAccessKeyOutput
end

local record DeleteAccountAliasInput
    AccountAlias: string
end

local record DeleteAccountAliasOutput
end

local record DeleteAccountPasswordPolicyInput
end

local record DeleteAccountPasswordPolicyOutput
end

local record DeleteGroupInput
    GroupName: string
end

local record DeleteGroupOutput
end

local record DeleteGroupPolicyInput
    GroupName: string
    PolicyName: string
end

local record DeleteGroupPolicyOutput
end

local record DeleteInstanceProfileInput
    InstanceProfileName: string
end

local record DeleteInstanceProfileOutput
end

local record DeleteLoginProfileInput
    UserName: string
end

local record DeleteLoginProfileOutput
end

local record DeleteOpenIDConnectProviderInput
    OpenIDConnectProviderArn: string
end

local record DeleteOpenIDConnectProviderOutput
end

local record DeletePolicyInput
    PolicyArn: string
end

local record DeletePolicyOutput
end

local record DeletePolicyVersionInput
    PolicyArn: string
    VersionId: string
end

local record DeletePolicyVersionOutput
end

local record DeleteRoleInput
    RoleName: string
end

local record DeleteRoleOutput
end

local record DeleteRolePermissionsBoundaryInput
    RoleName: string
end

local record DeleteRolePermissionsBoundaryOutput
end

local record DeleteRolePolicyInput
    RoleName: string
    PolicyName: string
end

local record DeleteRolePolicyOutput
end

local record DeleteSAMLProviderInput
    SAMLProviderArn: string
end

local record DeleteSAMLProviderOutput
end

local record DeleteServerCertificateInput
    ServerCertificateName: string
end

local record DeleteServerCertificateOutput
end

local record DeleteServiceLinkedRoleInput
    RoleName: string
end

local record DeleteServiceLinkedRoleOutput
    DeletionTaskId: string
end

local record DeleteServiceSpecificCredentialInput
    UserName: string
    ServiceSpecificCredentialId: string
end

local record DeleteServiceSpecificCredentialOutput
end

local record DeleteSigningCertificateInput
    UserName: string
    CertificateId: string
end

local record DeleteSigningCertificateOutput
end

local record DeleteSSHPublicKeyInput
    UserName: string
    SSHPublicKeyId: string
end

local record DeleteSSHPublicKeyOutput
end

local record DeleteUserInput
    UserName: string
end

local record DeleteUserOutput
end

local record DeleteUserPermissionsBoundaryInput
    UserName: string
end

local record DeleteUserPermissionsBoundaryOutput
end

local record DeleteUserPolicyInput
    UserName: string
    PolicyName: string
end

local record DeleteUserPolicyOutput
end

local record DeleteVirtualMFADeviceInput
    SerialNumber: string
end

local record DeleteVirtualMFADeviceOutput
end

local record DetachGroupPolicyInput
    GroupName: string
    PolicyArn: string
end

local record DetachGroupPolicyOutput
end

local record DetachRolePolicyInput
    RoleName: string
    PolicyArn: string
end

local record DetachRolePolicyOutput
end

local record DetachUserPolicyInput
    UserName: string
    PolicyArn: string
end

local record DetachUserPolicyOutput
end

local record DisableOrganizationsRootCredentialsManagementInput
end

local record DisableOrganizationsRootCredentialsManagementOutput
    OrganizationId: string
    EnabledFeatures: {string}
end

local record DisableOrganizationsRootSessionsInput
end

local record DisableOrganizationsRootSessionsOutput
    OrganizationId: string
    EnabledFeatures: {string}
end

local record DisableOutboundWebIdentityFederationInput
end

local record DisableOutboundWebIdentityFederationOutput
end

local record EnableMFADeviceInput
    UserName: string
    SerialNumber: string
    AuthenticationCode1: string
    AuthenticationCode2: string
end

local record EnableMFADeviceOutput
end

local record EnableOrganizationsRootCredentialsManagementInput
end

local record EnableOrganizationsRootCredentialsManagementOutput
    OrganizationId: string
    EnabledFeatures: {string}
end

local record EnableOrganizationsRootSessionsInput
end

local record EnableOrganizationsRootSessionsOutput
    OrganizationId: string
    EnabledFeatures: {string}
end

local record EnableOutboundWebIdentityFederationInput
end

local record EnableOutboundWebIdentityFederationOutput
    IssuerIdentifier: string
end

local record GenerateCredentialReportInput
end

local record GenerateCredentialReportOutput
    State: string
    Description: string
end

local record GenerateOrganizationsAccessReportInput
    EntityPath: string
    OrganizationsPolicyId: string
end

local record GenerateOrganizationsAccessReportOutput
    JobId: string
end

local record GenerateServiceLastAccessedDetailsInput
    Arn: string
    Granularity: string
end

local record GenerateServiceLastAccessedDetailsOutput
    JobId: string
end

local record GetAccessKeyLastUsedInput
    AccessKeyId: string
end

local record GetAccessKeyLastUsedOutput
    UserName: string
    AccessKeyLastUsed: AccessKeyLastUsed
end

local record GetAccountAuthorizationDetailsInput
    Filter: {string}
    MaxItems: number
    Marker: string
end

local record GetAccountAuthorizationDetailsOutput
    UserDetailList: {UserDetail}
    GroupDetailList: {GroupDetail}
    RoleDetailList: {RoleDetail}
    Policies: {ManagedPolicyDetail}
    IsTruncated: boolean
    Marker: string
end

local record GetAccountPasswordPolicyInput
end

local record GetAccountPasswordPolicyOutput
    PasswordPolicy: PasswordPolicy
end

local record GetAccountSummaryInput
end

local record GetAccountSummaryOutput
    SummaryMap: {string : number}
end

local record GetContextKeysForCustomPolicyInput
    PolicyInputList: {string}
end

local record GetContextKeysForCustomPolicyOutput
    ContextKeyNames: {string}
end

local record GetContextKeysForPrincipalPolicyInput
    PolicySourceArn: string
    PolicyInputList: {string}
end

local record GetContextKeysForPrincipalPolicyOutput
    ContextKeyNames: {string}
end

local record GetCredentialReportInput
end

local record GetCredentialReportOutput
    Content: string
    ReportFormat: string
    GeneratedTime: number
end

local record GetDelegationRequestInput
    DelegationRequestId: string
    DelegationPermissionCheck: boolean
end

local record GetDelegationRequestOutput
    DelegationRequest: DelegationRequest
    PermissionCheckStatus: string
    PermissionCheckResult: string
end

local record GetGroupInput
    GroupName: string
    Marker: string
    MaxItems: number
end

local record GetGroupOutput
    Group: Group
    Users: {User}
    IsTruncated: boolean
    Marker: string
end

local record GetGroupPolicyInput
    GroupName: string
    PolicyName: string
end

local record GetGroupPolicyOutput
    GroupName: string
    PolicyName: string
    PolicyDocument: string
end

local record GetHumanReadableSummaryInput
    EntityArn: string
    Locale: string
end

local record GetHumanReadableSummaryOutput
    SummaryContent: string
    Locale: string
    SummaryState: string
end

local record GetInstanceProfileInput
    InstanceProfileName: string
end

local record GetInstanceProfileOutput
    InstanceProfile: InstanceProfile
end

local record GetLoginProfileInput
    UserName: string
end

local record GetLoginProfileOutput
    LoginProfile: LoginProfile
end

local record GetMFADeviceInput
    SerialNumber: string
    UserName: string
end

local record GetMFADeviceOutput
    UserName: string
    SerialNumber: string
    EnableDate: number
    Certifications: {string : string}
end

local record GetOpenIDConnectProviderInput
    OpenIDConnectProviderArn: string
end

local record GetOpenIDConnectProviderOutput
    Url: string
    ClientIDList: {string}
    ThumbprintList: {string}
    CreateDate: number
    Tags: {Tag}
end

local record GetOrganizationsAccessReportInput
    JobId: string
    MaxItems: number
    Marker: string
    SortKey: string
end

local record GetOrganizationsAccessReportOutput
    JobStatus: string
    JobCreationDate: number
    JobCompletionDate: number
    NumberOfServicesAccessible: number
    NumberOfServicesNotAccessed: number
    AccessDetails: {AccessDetail}
    IsTruncated: boolean
    Marker: string
    ErrorDetails: ErrorDetails
end

local record GetOutboundWebIdentityFederationInfoInput
end

local record GetOutboundWebIdentityFederationInfoOutput
    IssuerIdentifier: string
    JwtVendingEnabled: boolean
end

local record GetPolicyInput
    PolicyArn: string
end

local record GetPolicyOutput
    Policy: Policy
end

local record GetPolicyVersionInput
    PolicyArn: string
    VersionId: string
end

local record GetPolicyVersionOutput
    PolicyVersion: PolicyVersion
end

local record GetRoleInput
    RoleName: string
end

local record GetRoleOutput
    Role: Role
end

local record GetRolePolicyInput
    RoleName: string
    PolicyName: string
end

local record GetRolePolicyOutput
    RoleName: string
    PolicyName: string
    PolicyDocument: string
end

local record GetSAMLProviderInput
    SAMLProviderArn: string
end

local record GetSAMLProviderOutput
    SAMLProviderUUID: string
    SAMLMetadataDocument: string
    CreateDate: number
    ValidUntil: number
    Tags: {Tag}
    AssertionEncryptionMode: string
    PrivateKeyList: {SAMLPrivateKey}
end

local record GetServerCertificateInput
    ServerCertificateName: string
end

local record GetServerCertificateOutput
    ServerCertificate: ServerCertificate
end

local record GetServiceLastAccessedDetailsInput
    JobId: string
    MaxItems: number
    Marker: string
end

local record GetServiceLastAccessedDetailsOutput
    JobStatus: string
    JobType: string
    JobCreationDate: number
    ServicesLastAccessed: {ServiceLastAccessed}
    JobCompletionDate: number
    IsTruncated: boolean
    Marker: string
    Error: ErrorDetails
end

local record GetServiceLastAccessedDetailsWithEntitiesInput
    JobId: string
    ServiceNamespace: string
    MaxItems: number
    Marker: string
end

local record GetServiceLastAccessedDetailsWithEntitiesOutput
    JobStatus: string
    JobCreationDate: number
    JobCompletionDate: number
    EntityDetailsList: {EntityDetails}
    IsTruncated: boolean
    Marker: string
    Error: ErrorDetails
end

local record GetServiceLinkedRoleDeletionStatusInput
    DeletionTaskId: string
end

local record GetServiceLinkedRoleDeletionStatusOutput
    Status: string
    Reason: DeletionTaskFailureReasonType
end

local record GetSSHPublicKeyInput
    UserName: string
    SSHPublicKeyId: string
    Encoding: string
end

local record GetSSHPublicKeyOutput
    SSHPublicKey: SSHPublicKey
end

local record GetUserInput
    UserName: string
end

local record GetUserOutput
    User: User
end

local record GetUserPolicyInput
    UserName: string
    PolicyName: string
end

local record GetUserPolicyOutput
    UserName: string
    PolicyName: string
    PolicyDocument: string
end

local record ListAccessKeysInput
    UserName: string
    Marker: string
    MaxItems: number
end

local record ListAccessKeysOutput
    AccessKeyMetadata: {AccessKeyMetadata}
    IsTruncated: boolean
    Marker: string
end

local record ListAccountAliasesInput
    Marker: string
    MaxItems: number
end

local record ListAccountAliasesOutput
    AccountAliases: {string}
    IsTruncated: boolean
    Marker: string
end

local record ListAttachedGroupPoliciesInput
    GroupName: string
    PathPrefix: string
    Marker: string
    MaxItems: number
end

local record ListAttachedGroupPoliciesOutput
    AttachedPolicies: {AttachedPolicy}
    IsTruncated: boolean
    Marker: string
end

local record ListAttachedRolePoliciesInput
    RoleName: string
    PathPrefix: string
    Marker: string
    MaxItems: number
end

local record ListAttachedRolePoliciesOutput
    AttachedPolicies: {AttachedPolicy}
    IsTruncated: boolean
    Marker: string
end

local record ListAttachedUserPoliciesInput
    UserName: string
    PathPrefix: string
    Marker: string
    MaxItems: number
end

local record ListAttachedUserPoliciesOutput
    AttachedPolicies: {AttachedPolicy}
    IsTruncated: boolean
    Marker: string
end

local record ListDelegationRequestsInput
    OwnerId: string
    Marker: string
    MaxItems: number
end

local record ListDelegationRequestsOutput
    DelegationRequests: {DelegationRequest}
    Marker: string
    isTruncated: boolean
end

local record ListEntitiesForPolicyInput
    PolicyArn: string
    EntityFilter: string
    PathPrefix: string
    PolicyUsageFilter: string
    Marker: string
    MaxItems: number
end

local record ListEntitiesForPolicyOutput
    PolicyGroups: {PolicyGroup}
    PolicyUsers: {PolicyUser}
    PolicyRoles: {PolicyRole}
    IsTruncated: boolean
    Marker: string
end

local record ListGroupPoliciesInput
    GroupName: string
    Marker: string
    MaxItems: number
end

local record ListGroupPoliciesOutput
    PolicyNames: {string}
    IsTruncated: boolean
    Marker: string
end

local record ListGroupsInput
    PathPrefix: string
    Marker: string
    MaxItems: number
end

local record ListGroupsOutput
    Groups: {Group}
    IsTruncated: boolean
    Marker: string
end

local record ListGroupsForUserInput
    UserName: string
    Marker: string
    MaxItems: number
end

local record ListGroupsForUserOutput
    Groups: {Group}
    IsTruncated: boolean
    Marker: string
end

local record ListInstanceProfilesInput
    PathPrefix: string
    Marker: string
    MaxItems: number
end

local record ListInstanceProfilesOutput
    InstanceProfiles: {InstanceProfile}
    IsTruncated: boolean
    Marker: string
end

local record ListInstanceProfilesForRoleInput
    RoleName: string
    Marker: string
    MaxItems: number
end

local record ListInstanceProfilesForRoleOutput
    InstanceProfiles: {InstanceProfile}
    IsTruncated: boolean
    Marker: string
end

local record ListInstanceProfileTagsInput
    InstanceProfileName: string
    Marker: string
    MaxItems: number
end

local record ListInstanceProfileTagsOutput
    Tags: {Tag}
    IsTruncated: boolean
    Marker: string
end

local record ListMFADevicesInput
    UserName: string
    Marker: string
    MaxItems: number
end

local record ListMFADevicesOutput
    MFADevices: {MFADevice}
    IsTruncated: boolean
    Marker: string
end

local record ListMFADeviceTagsInput
    SerialNumber: string
    Marker: string
    MaxItems: number
end

local record ListMFADeviceTagsOutput
    Tags: {Tag}
    IsTruncated: boolean
    Marker: string
end

local record ListOpenIDConnectProvidersInput
end

local record ListOpenIDConnectProvidersOutput
    OpenIDConnectProviderList: {OpenIDConnectProviderListEntry}
end

local record ListOpenIDConnectProviderTagsInput
    OpenIDConnectProviderArn: string
    Marker: string
    MaxItems: number
end

local record ListOpenIDConnectProviderTagsOutput
    Tags: {Tag}
    IsTruncated: boolean
    Marker: string
end

local record ListOrganizationsFeaturesInput
end

local record ListOrganizationsFeaturesOutput
    OrganizationId: string
    EnabledFeatures: {string}
end

local record ListPoliciesInput
    Scope: string
    OnlyAttached: boolean
    PathPrefix: string
    PolicyUsageFilter: string
    Marker: string
    MaxItems: number
end

local record ListPoliciesOutput
    Policies: {Policy}
    IsTruncated: boolean
    Marker: string
end

local record ListPoliciesGrantingServiceAccessInput
    Marker: string
    Arn: string
    ServiceNamespaces: {string}
end

local record ListPoliciesGrantingServiceAccessOutput
    PoliciesGrantingServiceAccess: {ListPoliciesGrantingServiceAccessEntry}
    IsTruncated: boolean
    Marker: string
end

local record ListPolicyTagsInput
    PolicyArn: string
    Marker: string
    MaxItems: number
end

local record ListPolicyTagsOutput
    Tags: {Tag}
    IsTruncated: boolean
    Marker: string
end

local record ListPolicyVersionsInput
    PolicyArn: string
    Marker: string
    MaxItems: number
end

local record ListPolicyVersionsOutput
    Versions: {PolicyVersion}
    IsTruncated: boolean
    Marker: string
end

local record ListRolePoliciesInput
    RoleName: string
    Marker: string
    MaxItems: number
end

local record ListRolePoliciesOutput
    PolicyNames: {string}
    IsTruncated: boolean
    Marker: string
end

local record ListRolesInput
    PathPrefix: string
    Marker: string
    MaxItems: number
end

local record ListRolesOutput
    Roles: {Role}
    IsTruncated: boolean
    Marker: string
end

local record ListRoleTagsInput
    RoleName: string
    Marker: string
    MaxItems: number
end

local record ListRoleTagsOutput
    Tags: {Tag}
    IsTruncated: boolean
    Marker: string
end

local record ListSAMLProvidersInput
end

local record ListSAMLProvidersOutput
    SAMLProviderList: {SAMLProviderListEntry}
end

local record ListSAMLProviderTagsInput
    SAMLProviderArn: string
    Marker: string
    MaxItems: number
end

local record ListSAMLProviderTagsOutput
    Tags: {Tag}
    IsTruncated: boolean
    Marker: string
end

local record ListServerCertificatesInput
    PathPrefix: string
    Marker: string
    MaxItems: number
end

local record ListServerCertificatesOutput
    ServerCertificateMetadataList: {ServerCertificateMetadata}
    IsTruncated: boolean
    Marker: string
end

local record ListServerCertificateTagsInput
    ServerCertificateName: string
    Marker: string
    MaxItems: number
end

local record ListServerCertificateTagsOutput
    Tags: {Tag}
    IsTruncated: boolean
    Marker: string
end

local record ListServiceSpecificCredentialsInput
    UserName: string
    ServiceName: string
    AllUsers: boolean
    Marker: string
    MaxItems: number
end

local record ListServiceSpecificCredentialsOutput
    ServiceSpecificCredentials: {ServiceSpecificCredentialMetadata}
    Marker: string
    IsTruncated: boolean
end

local record ListSigningCertificatesInput
    UserName: string
    Marker: string
    MaxItems: number
end

local record ListSigningCertificatesOutput
    Certificates: {SigningCertificate}
    IsTruncated: boolean
    Marker: string
end

local record ListSSHPublicKeysInput
    UserName: string
    Marker: string
    MaxItems: number
end

local record ListSSHPublicKeysOutput
    SSHPublicKeys: {SSHPublicKeyMetadata}
    IsTruncated: boolean
    Marker: string
end

local record ListUserPoliciesInput
    UserName: string
    Marker: string
    MaxItems: number
end

local record ListUserPoliciesOutput
    PolicyNames: {string}
    IsTruncated: boolean
    Marker: string
end

local record ListUsersInput
    PathPrefix: string
    Marker: string
    MaxItems: number
end

local record ListUsersOutput
    Users: {User}
    IsTruncated: boolean
    Marker: string
end

local record ListUserTagsInput
    UserName: string
    Marker: string
    MaxItems: number
end

local record ListUserTagsOutput
    Tags: {Tag}
    IsTruncated: boolean
    Marker: string
end

local record ListVirtualMFADevicesInput
    AssignmentStatus: string
    Marker: string
    MaxItems: number
end

local record ListVirtualMFADevicesOutput
    VirtualMFADevices: {VirtualMFADevice}
    IsTruncated: boolean
    Marker: string
end

local record PutGroupPolicyInput
    GroupName: string
    PolicyName: string
    PolicyDocument: string
end

local record PutGroupPolicyOutput
end

local record PutRolePermissionsBoundaryInput
    RoleName: string
    PermissionsBoundary: string
end

local record PutRolePermissionsBoundaryOutput
end

local record PutRolePolicyInput
    RoleName: string
    PolicyName: string
    PolicyDocument: string
end

local record PutRolePolicyOutput
end

local record PutUserPermissionsBoundaryInput
    UserName: string
    PermissionsBoundary: string
end

local record PutUserPermissionsBoundaryOutput
end

local record PutUserPolicyInput
    UserName: string
    PolicyName: string
    PolicyDocument: string
end

local record PutUserPolicyOutput
end

local record RejectDelegationRequestInput
    DelegationRequestId: string
    Notes: string
end

local record RejectDelegationRequestOutput
end

local record RemoveClientIDFromOpenIDConnectProviderInput
    OpenIDConnectProviderArn: string
    ClientID: string
end

local record RemoveClientIDFromOpenIDConnectProviderOutput
end

local record RemoveRoleFromInstanceProfileInput
    InstanceProfileName: string
    RoleName: string
end

local record RemoveRoleFromInstanceProfileOutput
end

local record RemoveUserFromGroupInput
    GroupName: string
    UserName: string
end

local record RemoveUserFromGroupOutput
end

local record ResetServiceSpecificCredentialInput
    UserName: string
    ServiceSpecificCredentialId: string
end

local record ResetServiceSpecificCredentialOutput
    ServiceSpecificCredential: ServiceSpecificCredential
end

local record ResyncMFADeviceInput
    UserName: string
    SerialNumber: string
    AuthenticationCode1: string
    AuthenticationCode2: string
end

local record ResyncMFADeviceOutput
end

local record SendDelegationTokenInput
    DelegationRequestId: string
end

local record SendDelegationTokenOutput
end

local record SetDefaultPolicyVersionInput
    PolicyArn: string
    VersionId: string
end

local record SetDefaultPolicyVersionOutput
end

local record SetSecurityTokenServicePreferencesInput
    GlobalEndpointTokenVersion: string
end

local record SetSecurityTokenServicePreferencesOutput
end

local record SimulateCustomPolicyInput
    PolicyInputList: {string}
    PermissionsBoundaryPolicyInputList: {string}
    ActionNames: {string}
    ResourceArns: {string}
    ResourcePolicy: string
    ResourceOwner: string
    CallerArn: string
    ContextEntries: {ContextEntry}
    ResourceHandlingOption: string
    MaxItems: number
    Marker: string
end

local record SimulateCustomPolicyOutput
    EvaluationResults: {EvaluationResult}
    IsTruncated: boolean
    Marker: string
end

local record SimulatePrincipalPolicyInput
    PolicySourceArn: string
    PolicyInputList: {string}
    PermissionsBoundaryPolicyInputList: {string}
    ActionNames: {string}
    ResourceArns: {string}
    ResourcePolicy: string
    ResourceOwner: string
    CallerArn: string
    ContextEntries: {ContextEntry}
    ResourceHandlingOption: string
    MaxItems: number
    Marker: string
end

local record SimulatePrincipalPolicyOutput
    EvaluationResults: {EvaluationResult}
    IsTruncated: boolean
    Marker: string
end

local record TagInstanceProfileInput
    InstanceProfileName: string
    Tags: {Tag}
end

local record TagInstanceProfileOutput
end

local record TagMFADeviceInput
    SerialNumber: string
    Tags: {Tag}
end

local record TagMFADeviceOutput
end

local record TagOpenIDConnectProviderInput
    OpenIDConnectProviderArn: string
    Tags: {Tag}
end

local record TagOpenIDConnectProviderOutput
end

local record TagPolicyInput
    PolicyArn: string
    Tags: {Tag}
end

local record TagPolicyOutput
end

local record TagRoleInput
    RoleName: string
    Tags: {Tag}
end

local record TagRoleOutput
end

local record TagSAMLProviderInput
    SAMLProviderArn: string
    Tags: {Tag}
end

local record TagSAMLProviderOutput
end

local record TagServerCertificateInput
    ServerCertificateName: string
    Tags: {Tag}
end

local record TagServerCertificateOutput
end

local record TagUserInput
    UserName: string
    Tags: {Tag}
end

local record TagUserOutput
end

local record UntagInstanceProfileInput
    InstanceProfileName: string
    TagKeys: {string}
end

local record UntagInstanceProfileOutput
end

local record UntagMFADeviceInput
    SerialNumber: string
    TagKeys: {string}
end

local record UntagMFADeviceOutput
end

local record UntagOpenIDConnectProviderInput
    OpenIDConnectProviderArn: string
    TagKeys: {string}
end

local record UntagOpenIDConnectProviderOutput
end

local record UntagPolicyInput
    PolicyArn: string
    TagKeys: {string}
end

local record UntagPolicyOutput
end

local record UntagRoleInput
    RoleName: string
    TagKeys: {string}
end

local record UntagRoleOutput
end

local record UntagSAMLProviderInput
    SAMLProviderArn: string
    TagKeys: {string}
end

local record UntagSAMLProviderOutput
end

local record UntagServerCertificateInput
    ServerCertificateName: string
    TagKeys: {string}
end

local record UntagServerCertificateOutput
end

local record UntagUserInput
    UserName: string
    TagKeys: {string}
end

local record UntagUserOutput
end

local record UpdateAccessKeyInput
    UserName: string
    AccessKeyId: string
    Status: string
end

local record UpdateAccessKeyOutput
end

local record UpdateAccountPasswordPolicyInput
    MinimumPasswordLength: number
    RequireSymbols: boolean
    RequireNumbers: boolean
    RequireUppercaseCharacters: boolean
    RequireLowercaseCharacters: boolean
    AllowUsersToChangePassword: boolean
    MaxPasswordAge: number
    PasswordReusePrevention: number
    HardExpiry: boolean
end

local record UpdateAccountPasswordPolicyOutput
end

local record UpdateAssumeRolePolicyInput
    RoleName: string
    PolicyDocument: string
end

local record UpdateAssumeRolePolicyOutput
end

local record UpdateDelegationRequestInput
    DelegationRequestId: string
    Notes: string
end

local record UpdateDelegationRequestOutput
end

local record UpdateGroupInput
    GroupName: string
    NewPath: string
    NewGroupName: string
end

local record UpdateGroupOutput
end

local record UpdateLoginProfileInput
    UserName: string
    Password: string
    PasswordResetRequired: boolean
end

local record UpdateLoginProfileOutput
end

local record UpdateOpenIDConnectProviderThumbprintInput
    OpenIDConnectProviderArn: string
    ThumbprintList: {string}
end

local record UpdateOpenIDConnectProviderThumbprintOutput
end

local record UpdateRoleInput
    RoleName: string
    Description: string
    MaxSessionDuration: number
end

local record UpdateRoleOutput
end

local record UpdateRoleDescriptionInput
    RoleName: string
    Description: string
end

local record UpdateRoleDescriptionOutput
    Role: Role
end

local record UpdateSAMLProviderInput
    SAMLMetadataDocument: string
    SAMLProviderArn: string
    AssertionEncryptionMode: string
    AddPrivateKey: string
    RemovePrivateKey: string
end

local record UpdateSAMLProviderOutput
    SAMLProviderArn: string
end

local record UpdateServerCertificateInput
    ServerCertificateName: string
    NewPath: string
    NewServerCertificateName: string
end

local record UpdateServerCertificateOutput
end

local record UpdateServiceSpecificCredentialInput
    UserName: string
    ServiceSpecificCredentialId: string
    Status: string
end

local record UpdateServiceSpecificCredentialOutput
end

local record UpdateSigningCertificateInput
    UserName: string
    CertificateId: string
    Status: string
end

local record UpdateSigningCertificateOutput
end

local record UpdateSSHPublicKeyInput
    UserName: string
    SSHPublicKeyId: string
    Status: string
end

local record UpdateSSHPublicKeyOutput
end

local record UpdateUserInput
    UserName: string
    NewPath: string
    NewUserName: string
end

local record UpdateUserOutput
end

local record UploadServerCertificateInput
    Path: string
    ServerCertificateName: string
    CertificateBody: string
    PrivateKey: string
    CertificateChain: string
    Tags: {Tag}
end

local record UploadServerCertificateOutput
    ServerCertificateMetadata: ServerCertificateMetadata
    Tags: {Tag}
end

local record UploadSigningCertificateInput
    UserName: string
    CertificateBody: string
end

local record UploadSigningCertificateOutput
    Certificate: SigningCertificate
end

local record UploadSSHPublicKeyInput
    UserName: string
    SSHPublicKeyBody: string
end

local record UploadSSHPublicKeyOutput
    SSHPublicKey: SSHPublicKey
end

local record ConcurrentModificationException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record EntityAlreadyExistsException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record UnmodifiableEntityException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record PolicyNotAttachableException
    message: string
end

local record ServiceFailureException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record PolicyNotAttachableException
    message: string
end

local record ServiceFailureException
    message: string
end

local record UnmodifiableEntityException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record PolicyNotAttachableException
    message: string
end

local record ServiceFailureException
    message: string
end

local record EntityTemporarilyUnmodifiableException
    message: string
end

local record InvalidUserTypeException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record PasswordPolicyViolationException
    message: string
end

local record ServiceFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record EntityAlreadyExistsException
    message: string
end

local record LimitExceededException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record EntityAlreadyExistsException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record ServiceFailureException
    message: string
end

local record EntityAlreadyExistsException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record EntityAlreadyExistsException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record ServiceFailureException
    message: string
end

local record EntityAlreadyExistsException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record PasswordPolicyViolationException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record EntityAlreadyExistsException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record OpenIdIdpCommunicationErrorException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record EntityAlreadyExistsException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record MalformedPolicyDocumentException
    message: string
end

local record ServiceFailureException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record MalformedPolicyDocumentException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record EntityAlreadyExistsException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record MalformedPolicyDocumentException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record EntityAlreadyExistsException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record ServiceFailureException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceNotSupportedException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record EntityAlreadyExistsException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record EntityAlreadyExistsException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record EntityTemporarilyUnmodifiableException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record DeleteConflictException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record DeleteConflictException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record EntityTemporarilyUnmodifiableException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record DeleteConflictException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record DeleteConflictException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record DeleteConflictException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record UnmodifiableEntityException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record UnmodifiableEntityException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record UnmodifiableEntityException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record DeleteConflictException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record DeleteConflictException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record DeleteConflictException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record UnmodifiableEntityException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record AccountNotManagementOrDelegatedAdministratorException
    Message: string
end

local record OrganizationNotFoundException
    Message: string
end

local record OrganizationNotInAllFeaturesModeException
    Message: string
end

local record ServiceAccessNotEnabledException
    Message: string
end

local record AccountNotManagementOrDelegatedAdministratorException
    Message: string
end

local record OrganizationNotFoundException
    Message: string
end

local record OrganizationNotInAllFeaturesModeException
    Message: string
end

local record ServiceAccessNotEnabledException
    Message: string
end

local record FeatureDisabledException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record EntityAlreadyExistsException
    message: string
end

local record EntityTemporarilyUnmodifiableException
    message: string
end

local record InvalidAuthenticationCodeException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record AccountNotManagementOrDelegatedAdministratorException
    Message: string
end

local record CallerIsNotManagementAccountException
    Message: string
end

local record OrganizationNotFoundException
    Message: string
end

local record OrganizationNotInAllFeaturesModeException
    Message: string
end

local record ServiceAccessNotEnabledException
    Message: string
end

local record AccountNotManagementOrDelegatedAdministratorException
    Message: string
end

local record CallerIsNotManagementAccountException
    Message: string
end

local record OrganizationNotFoundException
    Message: string
end

local record OrganizationNotInAllFeaturesModeException
    Message: string
end

local record ServiceAccessNotEnabledException
    Message: string
end

local record FeatureEnabledException
    message: string
end

local record LimitExceededException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ReportGenerationLimitExceededException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ServiceFailureException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record CredentialReportExpiredException
    message: string
end

local record CredentialReportNotPresentException
    message: string
end

local record CredentialReportNotReadyException
    message: string
end

local record ServiceFailureException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record FeatureDisabledException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record UnrecognizedPublicKeyEncodingException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ServiceFailureException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ServiceFailureException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ServiceFailureException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ServiceFailureException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record AccountNotManagementOrDelegatedAdministratorException
    Message: string
end

local record OrganizationNotFoundException
    Message: string
end

local record OrganizationNotInAllFeaturesModeException
    Message: string
end

local record ServiceAccessNotEnabledException
    Message: string
end

local record ServiceFailureException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ServiceFailureException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ServiceFailureException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ServiceFailureException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceNotSupportedException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ServiceFailureException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record MalformedPolicyDocumentException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record PolicyNotAttachableException
    message: string
end

local record ServiceFailureException
    message: string
end

local record UnmodifiableEntityException
    message: string
end

local record LimitExceededException
    message: string
end

local record MalformedPolicyDocumentException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record UnmodifiableEntityException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record PolicyNotAttachableException
    message: string
end

local record ServiceFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record MalformedPolicyDocumentException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record UnmodifiableEntityException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidAuthenticationCodeException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ServiceFailureException
    message: string
end

local record InvalidInputException
    message: string
end

local record PolicyEvaluationException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record PolicyEvaluationException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record MalformedPolicyDocumentException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record MalformedPolicyDocumentException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record UnmodifiableEntityException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record EntityAlreadyExistsException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record EntityTemporarilyUnmodifiableException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record PasswordPolicyViolationException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record UnmodifiableEntityException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record UnmodifiableEntityException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record EntityAlreadyExistsException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record InvalidInputException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record EntityAlreadyExistsException
    message: string
end

local record EntityTemporarilyUnmodifiableException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record EntityAlreadyExistsException
    message: string
end

local record InvalidInputException
    message: string
end

local record KeyPairMismatchException
    message: string
end

local record LimitExceededException
    message: string
end

local record MalformedCertificateException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record DuplicateCertificateException
    message: string
end

local record EntityAlreadyExistsException
    message: string
end

local record InvalidCertificateException
    message: string
end

local record LimitExceededException
    message: string
end

local record MalformedCertificateException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record ServiceFailureException
    message: string
end

local record DuplicateSSHPublicKeyException
    message: string
end

local record InvalidPublicKeyException
    message: string
end

local record LimitExceededException
    message: string
end

local record NoSuchEntityException
    message: string
end

local record UnrecognizedPublicKeyEncodingException
    message: string
end

local type policyScopeType = "All" | "AWS" | "Local"

local type globalEndpointTokenVersion = "v1Token" | "v2Token"

local type ReportStateType = "STARTED" | "INPROGRESS" | "COMPLETE"

local type DeletionTaskStatusType = "SUCCEEDED" | "IN_PROGRESS" | "FAILED" | "NOT_STARTED"

local type PolicyUsageType = "PermissionsPolicy" | "PermissionsBoundary"

local type summaryStateType = "AVAILABLE" | "NOT_AVAILABLE" | "NOT_SUPPORTED" | "FAILED"

local type AccessAdvisorUsageGranularityType = "SERVICE_LEVEL" | "ACTION_LEVEL"

local type statusType = "Active" | "Inactive" | "Expired"

local type permissionCheckStatusType = "COMPLETE" | "IN_PROGRESS" | "FAILED"

local type assertionEncryptionModeType = "Required" | "Allowed"

local type sortKeyType = "SERVICE_NAMESPACE_ASCENDING" | "SERVICE_NAMESPACE_DESCENDING" | "LAST_AUTHENTICATED_TIME_ASCENDING" | "LAST_AUTHENTICATED_TIME_DESCENDING"

local type assignmentStatusType = "Assigned" | "Unassigned" | "Any"

local type EntityType = "User" | "Role" | "Group" | "LocalManagedPolicy" | "AWSManagedPolicy"

local type ReportFormatType = "text/csv"

local type jobStatusType = "IN_PROGRESS" | "COMPLETED" | "FAILED"

local type encodingType = "SSH" | "PEM"

local type permissionCheckResultType = "ALLOWED" | "DENIED" | "UNSURE"

local record M
    AcceptDelegationRequestInput: AcceptDelegationRequestInput
    AcceptDelegationRequestOutput: AcceptDelegationRequestOutput
    AddClientIDToOpenIDConnectProviderInput: AddClientIDToOpenIDConnectProviderInput
    AddClientIDToOpenIDConnectProviderOutput: AddClientIDToOpenIDConnectProviderOutput
    AddRoleToInstanceProfileInput: AddRoleToInstanceProfileInput
    AddRoleToInstanceProfileOutput: AddRoleToInstanceProfileOutput
    AddUserToGroupInput: AddUserToGroupInput
    AddUserToGroupOutput: AddUserToGroupOutput
    AssociateDelegationRequestInput: AssociateDelegationRequestInput
    AssociateDelegationRequestOutput: AssociateDelegationRequestOutput
    AttachGroupPolicyInput: AttachGroupPolicyInput
    AttachGroupPolicyOutput: AttachGroupPolicyOutput
    AttachRolePolicyInput: AttachRolePolicyInput
    AttachRolePolicyOutput: AttachRolePolicyOutput
    AttachUserPolicyInput: AttachUserPolicyInput
    AttachUserPolicyOutput: AttachUserPolicyOutput
    ChangePasswordInput: ChangePasswordInput
    ChangePasswordOutput: ChangePasswordOutput
    CreateAccessKeyInput: CreateAccessKeyInput
    CreateAccessKeyOutput: CreateAccessKeyOutput
    CreateAccountAliasInput: CreateAccountAliasInput
    CreateAccountAliasOutput: CreateAccountAliasOutput
    CreateDelegationRequestInput: CreateDelegationRequestInput
    CreateDelegationRequestOutput: CreateDelegationRequestOutput
    CreateGroupInput: CreateGroupInput
    CreateGroupOutput: CreateGroupOutput
    CreateInstanceProfileInput: CreateInstanceProfileInput
    CreateInstanceProfileOutput: CreateInstanceProfileOutput
    CreateLoginProfileInput: CreateLoginProfileInput
    CreateLoginProfileOutput: CreateLoginProfileOutput
    CreateOpenIDConnectProviderInput: CreateOpenIDConnectProviderInput
    CreateOpenIDConnectProviderOutput: CreateOpenIDConnectProviderOutput
    CreatePolicyInput: CreatePolicyInput
    CreatePolicyOutput: CreatePolicyOutput
    CreatePolicyVersionInput: CreatePolicyVersionInput
    CreatePolicyVersionOutput: CreatePolicyVersionOutput
    CreateRoleInput: CreateRoleInput
    CreateRoleOutput: CreateRoleOutput
    CreateSAMLProviderInput: CreateSAMLProviderInput
    CreateSAMLProviderOutput: CreateSAMLProviderOutput
    CreateServiceLinkedRoleInput: CreateServiceLinkedRoleInput
    CreateServiceLinkedRoleOutput: CreateServiceLinkedRoleOutput
    CreateServiceSpecificCredentialInput: CreateServiceSpecificCredentialInput
    CreateServiceSpecificCredentialOutput: CreateServiceSpecificCredentialOutput
    CreateUserInput: CreateUserInput
    CreateUserOutput: CreateUserOutput
    CreateVirtualMFADeviceInput: CreateVirtualMFADeviceInput
    CreateVirtualMFADeviceOutput: CreateVirtualMFADeviceOutput
    DeactivateMFADeviceInput: DeactivateMFADeviceInput
    DeactivateMFADeviceOutput: DeactivateMFADeviceOutput
    DeleteAccessKeyInput: DeleteAccessKeyInput
    DeleteAccessKeyOutput: DeleteAccessKeyOutput
    DeleteAccountAliasInput: DeleteAccountAliasInput
    DeleteAccountAliasOutput: DeleteAccountAliasOutput
    DeleteAccountPasswordPolicyInput: DeleteAccountPasswordPolicyInput
    DeleteAccountPasswordPolicyOutput: DeleteAccountPasswordPolicyOutput
    DeleteGroupInput: DeleteGroupInput
    DeleteGroupOutput: DeleteGroupOutput
    DeleteGroupPolicyInput: DeleteGroupPolicyInput
    DeleteGroupPolicyOutput: DeleteGroupPolicyOutput
    DeleteInstanceProfileInput: DeleteInstanceProfileInput
    DeleteInstanceProfileOutput: DeleteInstanceProfileOutput
    DeleteLoginProfileInput: DeleteLoginProfileInput
    DeleteLoginProfileOutput: DeleteLoginProfileOutput
    DeleteOpenIDConnectProviderInput: DeleteOpenIDConnectProviderInput
    DeleteOpenIDConnectProviderOutput: DeleteOpenIDConnectProviderOutput
    DeletePolicyInput: DeletePolicyInput
    DeletePolicyOutput: DeletePolicyOutput
    DeletePolicyVersionInput: DeletePolicyVersionInput
    DeletePolicyVersionOutput: DeletePolicyVersionOutput
    DeleteRoleInput: DeleteRoleInput
    DeleteRoleOutput: DeleteRoleOutput
    DeleteRolePermissionsBoundaryInput: DeleteRolePermissionsBoundaryInput
    DeleteRolePermissionsBoundaryOutput: DeleteRolePermissionsBoundaryOutput
    DeleteRolePolicyInput: DeleteRolePolicyInput
    DeleteRolePolicyOutput: DeleteRolePolicyOutput
    DeleteSAMLProviderInput: DeleteSAMLProviderInput
    DeleteSAMLProviderOutput: DeleteSAMLProviderOutput
    DeleteServerCertificateInput: DeleteServerCertificateInput
    DeleteServerCertificateOutput: DeleteServerCertificateOutput
    DeleteServiceLinkedRoleInput: DeleteServiceLinkedRoleInput
    DeleteServiceLinkedRoleOutput: DeleteServiceLinkedRoleOutput
    DeleteServiceSpecificCredentialInput: DeleteServiceSpecificCredentialInput
    DeleteServiceSpecificCredentialOutput: DeleteServiceSpecificCredentialOutput
    DeleteSigningCertificateInput: DeleteSigningCertificateInput
    DeleteSigningCertificateOutput: DeleteSigningCertificateOutput
    DeleteSSHPublicKeyInput: DeleteSSHPublicKeyInput
    DeleteSSHPublicKeyOutput: DeleteSSHPublicKeyOutput
    DeleteUserInput: DeleteUserInput
    DeleteUserOutput: DeleteUserOutput
    DeleteUserPermissionsBoundaryInput: DeleteUserPermissionsBoundaryInput
    DeleteUserPermissionsBoundaryOutput: DeleteUserPermissionsBoundaryOutput
    DeleteUserPolicyInput: DeleteUserPolicyInput
    DeleteUserPolicyOutput: DeleteUserPolicyOutput
    DeleteVirtualMFADeviceInput: DeleteVirtualMFADeviceInput
    DeleteVirtualMFADeviceOutput: DeleteVirtualMFADeviceOutput
    DetachGroupPolicyInput: DetachGroupPolicyInput
    DetachGroupPolicyOutput: DetachGroupPolicyOutput
    DetachRolePolicyInput: DetachRolePolicyInput
    DetachRolePolicyOutput: DetachRolePolicyOutput
    DetachUserPolicyInput: DetachUserPolicyInput
    DetachUserPolicyOutput: DetachUserPolicyOutput
    DisableOrganizationsRootCredentialsManagementInput: DisableOrganizationsRootCredentialsManagementInput
    DisableOrganizationsRootCredentialsManagementOutput: DisableOrganizationsRootCredentialsManagementOutput
    DisableOrganizationsRootSessionsInput: DisableOrganizationsRootSessionsInput
    DisableOrganizationsRootSessionsOutput: DisableOrganizationsRootSessionsOutput
    DisableOutboundWebIdentityFederationInput: DisableOutboundWebIdentityFederationInput
    DisableOutboundWebIdentityFederationOutput: DisableOutboundWebIdentityFederationOutput
    EnableMFADeviceInput: EnableMFADeviceInput
    EnableMFADeviceOutput: EnableMFADeviceOutput
    EnableOrganizationsRootCredentialsManagementInput: EnableOrganizationsRootCredentialsManagementInput
    EnableOrganizationsRootCredentialsManagementOutput: EnableOrganizationsRootCredentialsManagementOutput
    EnableOrganizationsRootSessionsInput: EnableOrganizationsRootSessionsInput
    EnableOrganizationsRootSessionsOutput: EnableOrganizationsRootSessionsOutput
    EnableOutboundWebIdentityFederationInput: EnableOutboundWebIdentityFederationInput
    EnableOutboundWebIdentityFederationOutput: EnableOutboundWebIdentityFederationOutput
    GenerateCredentialReportInput: GenerateCredentialReportInput
    GenerateCredentialReportOutput: GenerateCredentialReportOutput
    GenerateOrganizationsAccessReportInput: GenerateOrganizationsAccessReportInput
    GenerateOrganizationsAccessReportOutput: GenerateOrganizationsAccessReportOutput
    GenerateServiceLastAccessedDetailsInput: GenerateServiceLastAccessedDetailsInput
    GenerateServiceLastAccessedDetailsOutput: GenerateServiceLastAccessedDetailsOutput
    GetAccessKeyLastUsedInput: GetAccessKeyLastUsedInput
    GetAccessKeyLastUsedOutput: GetAccessKeyLastUsedOutput
    GetAccountAuthorizationDetailsInput: GetAccountAuthorizationDetailsInput
    GetAccountAuthorizationDetailsOutput: GetAccountAuthorizationDetailsOutput
    GetAccountPasswordPolicyInput: GetAccountPasswordPolicyInput
    GetAccountPasswordPolicyOutput: GetAccountPasswordPolicyOutput
    GetAccountSummaryInput: GetAccountSummaryInput
    GetAccountSummaryOutput: GetAccountSummaryOutput
    GetContextKeysForCustomPolicyInput: GetContextKeysForCustomPolicyInput
    GetContextKeysForCustomPolicyOutput: GetContextKeysForCustomPolicyOutput
    GetContextKeysForPrincipalPolicyInput: GetContextKeysForPrincipalPolicyInput
    GetContextKeysForPrincipalPolicyOutput: GetContextKeysForPrincipalPolicyOutput
    GetCredentialReportInput: GetCredentialReportInput
    GetCredentialReportOutput: GetCredentialReportOutput
    GetDelegationRequestInput: GetDelegationRequestInput
    GetDelegationRequestOutput: GetDelegationRequestOutput
    GetGroupInput: GetGroupInput
    GetGroupOutput: GetGroupOutput
    GetGroupPolicyInput: GetGroupPolicyInput
    GetGroupPolicyOutput: GetGroupPolicyOutput
    GetHumanReadableSummaryInput: GetHumanReadableSummaryInput
    GetHumanReadableSummaryOutput: GetHumanReadableSummaryOutput
    GetInstanceProfileInput: GetInstanceProfileInput
    GetInstanceProfileOutput: GetInstanceProfileOutput
    GetLoginProfileInput: GetLoginProfileInput
    GetLoginProfileOutput: GetLoginProfileOutput
    GetMFADeviceInput: GetMFADeviceInput
    GetMFADeviceOutput: GetMFADeviceOutput
    GetOpenIDConnectProviderInput: GetOpenIDConnectProviderInput
    GetOpenIDConnectProviderOutput: GetOpenIDConnectProviderOutput
    GetOrganizationsAccessReportInput: GetOrganizationsAccessReportInput
    GetOrganizationsAccessReportOutput: GetOrganizationsAccessReportOutput
    GetOutboundWebIdentityFederationInfoInput: GetOutboundWebIdentityFederationInfoInput
    GetOutboundWebIdentityFederationInfoOutput: GetOutboundWebIdentityFederationInfoOutput
    GetPolicyInput: GetPolicyInput
    GetPolicyOutput: GetPolicyOutput
    GetPolicyVersionInput: GetPolicyVersionInput
    GetPolicyVersionOutput: GetPolicyVersionOutput
    GetRoleInput: GetRoleInput
    GetRoleOutput: GetRoleOutput
    GetRolePolicyInput: GetRolePolicyInput
    GetRolePolicyOutput: GetRolePolicyOutput
    GetSAMLProviderInput: GetSAMLProviderInput
    GetSAMLProviderOutput: GetSAMLProviderOutput
    GetServerCertificateInput: GetServerCertificateInput
    GetServerCertificateOutput: GetServerCertificateOutput
    GetServiceLastAccessedDetailsInput: GetServiceLastAccessedDetailsInput
    GetServiceLastAccessedDetailsOutput: GetServiceLastAccessedDetailsOutput
    GetServiceLastAccessedDetailsWithEntitiesInput: GetServiceLastAccessedDetailsWithEntitiesInput
    GetServiceLastAccessedDetailsWithEntitiesOutput: GetServiceLastAccessedDetailsWithEntitiesOutput
    GetServiceLinkedRoleDeletionStatusInput: GetServiceLinkedRoleDeletionStatusInput
    GetServiceLinkedRoleDeletionStatusOutput: GetServiceLinkedRoleDeletionStatusOutput
    GetSSHPublicKeyInput: GetSSHPublicKeyInput
    GetSSHPublicKeyOutput: GetSSHPublicKeyOutput
    GetUserInput: GetUserInput
    GetUserOutput: GetUserOutput
    GetUserPolicyInput: GetUserPolicyInput
    GetUserPolicyOutput: GetUserPolicyOutput
    ListAccessKeysInput: ListAccessKeysInput
    ListAccessKeysOutput: ListAccessKeysOutput
    ListAccountAliasesInput: ListAccountAliasesInput
    ListAccountAliasesOutput: ListAccountAliasesOutput
    ListAttachedGroupPoliciesInput: ListAttachedGroupPoliciesInput
    ListAttachedGroupPoliciesOutput: ListAttachedGroupPoliciesOutput
    ListAttachedRolePoliciesInput: ListAttachedRolePoliciesInput
    ListAttachedRolePoliciesOutput: ListAttachedRolePoliciesOutput
    ListAttachedUserPoliciesInput: ListAttachedUserPoliciesInput
    ListAttachedUserPoliciesOutput: ListAttachedUserPoliciesOutput
    ListDelegationRequestsInput: ListDelegationRequestsInput
    ListDelegationRequestsOutput: ListDelegationRequestsOutput
    ListEntitiesForPolicyInput: ListEntitiesForPolicyInput
    ListEntitiesForPolicyOutput: ListEntitiesForPolicyOutput
    ListGroupPoliciesInput: ListGroupPoliciesInput
    ListGroupPoliciesOutput: ListGroupPoliciesOutput
    ListGroupsInput: ListGroupsInput
    ListGroupsOutput: ListGroupsOutput
    ListGroupsForUserInput: ListGroupsForUserInput
    ListGroupsForUserOutput: ListGroupsForUserOutput
    ListInstanceProfilesInput: ListInstanceProfilesInput
    ListInstanceProfilesOutput: ListInstanceProfilesOutput
    ListInstanceProfilesForRoleInput: ListInstanceProfilesForRoleInput
    ListInstanceProfilesForRoleOutput: ListInstanceProfilesForRoleOutput
    ListInstanceProfileTagsInput: ListInstanceProfileTagsInput
    ListInstanceProfileTagsOutput: ListInstanceProfileTagsOutput
    ListMFADevicesInput: ListMFADevicesInput
    ListMFADevicesOutput: ListMFADevicesOutput
    ListMFADeviceTagsInput: ListMFADeviceTagsInput
    ListMFADeviceTagsOutput: ListMFADeviceTagsOutput
    ListOpenIDConnectProvidersInput: ListOpenIDConnectProvidersInput
    ListOpenIDConnectProvidersOutput: ListOpenIDConnectProvidersOutput
    ListOpenIDConnectProviderTagsInput: ListOpenIDConnectProviderTagsInput
    ListOpenIDConnectProviderTagsOutput: ListOpenIDConnectProviderTagsOutput
    ListOrganizationsFeaturesInput: ListOrganizationsFeaturesInput
    ListOrganizationsFeaturesOutput: ListOrganizationsFeaturesOutput
    ListPoliciesInput: ListPoliciesInput
    ListPoliciesOutput: ListPoliciesOutput
    ListPoliciesGrantingServiceAccessInput: ListPoliciesGrantingServiceAccessInput
    ListPoliciesGrantingServiceAccessOutput: ListPoliciesGrantingServiceAccessOutput
    ListPolicyTagsInput: ListPolicyTagsInput
    ListPolicyTagsOutput: ListPolicyTagsOutput
    ListPolicyVersionsInput: ListPolicyVersionsInput
    ListPolicyVersionsOutput: ListPolicyVersionsOutput
    ListRolePoliciesInput: ListRolePoliciesInput
    ListRolePoliciesOutput: ListRolePoliciesOutput
    ListRolesInput: ListRolesInput
    ListRolesOutput: ListRolesOutput
    ListRoleTagsInput: ListRoleTagsInput
    ListRoleTagsOutput: ListRoleTagsOutput
    ListSAMLProvidersInput: ListSAMLProvidersInput
    ListSAMLProvidersOutput: ListSAMLProvidersOutput
    ListSAMLProviderTagsInput: ListSAMLProviderTagsInput
    ListSAMLProviderTagsOutput: ListSAMLProviderTagsOutput
    ListServerCertificatesInput: ListServerCertificatesInput
    ListServerCertificatesOutput: ListServerCertificatesOutput
    ListServerCertificateTagsInput: ListServerCertificateTagsInput
    ListServerCertificateTagsOutput: ListServerCertificateTagsOutput
    ListServiceSpecificCredentialsInput: ListServiceSpecificCredentialsInput
    ListServiceSpecificCredentialsOutput: ListServiceSpecificCredentialsOutput
    ListSigningCertificatesInput: ListSigningCertificatesInput
    ListSigningCertificatesOutput: ListSigningCertificatesOutput
    ListSSHPublicKeysInput: ListSSHPublicKeysInput
    ListSSHPublicKeysOutput: ListSSHPublicKeysOutput
    ListUserPoliciesInput: ListUserPoliciesInput
    ListUserPoliciesOutput: ListUserPoliciesOutput
    ListUsersInput: ListUsersInput
    ListUsersOutput: ListUsersOutput
    ListUserTagsInput: ListUserTagsInput
    ListUserTagsOutput: ListUserTagsOutput
    ListVirtualMFADevicesInput: ListVirtualMFADevicesInput
    ListVirtualMFADevicesOutput: ListVirtualMFADevicesOutput
    PutGroupPolicyInput: PutGroupPolicyInput
    PutGroupPolicyOutput: PutGroupPolicyOutput
    PutRolePermissionsBoundaryInput: PutRolePermissionsBoundaryInput
    PutRolePermissionsBoundaryOutput: PutRolePermissionsBoundaryOutput
    PutRolePolicyInput: PutRolePolicyInput
    PutRolePolicyOutput: PutRolePolicyOutput
    PutUserPermissionsBoundaryInput: PutUserPermissionsBoundaryInput
    PutUserPermissionsBoundaryOutput: PutUserPermissionsBoundaryOutput
    PutUserPolicyInput: PutUserPolicyInput
    PutUserPolicyOutput: PutUserPolicyOutput
    RejectDelegationRequestInput: RejectDelegationRequestInput
    RejectDelegationRequestOutput: RejectDelegationRequestOutput
    RemoveClientIDFromOpenIDConnectProviderInput: RemoveClientIDFromOpenIDConnectProviderInput
    RemoveClientIDFromOpenIDConnectProviderOutput: RemoveClientIDFromOpenIDConnectProviderOutput
    RemoveRoleFromInstanceProfileInput: RemoveRoleFromInstanceProfileInput
    RemoveRoleFromInstanceProfileOutput: RemoveRoleFromInstanceProfileOutput
    RemoveUserFromGroupInput: RemoveUserFromGroupInput
    RemoveUserFromGroupOutput: RemoveUserFromGroupOutput
    ResetServiceSpecificCredentialInput: ResetServiceSpecificCredentialInput
    ResetServiceSpecificCredentialOutput: ResetServiceSpecificCredentialOutput
    ResyncMFADeviceInput: ResyncMFADeviceInput
    ResyncMFADeviceOutput: ResyncMFADeviceOutput
    SendDelegationTokenInput: SendDelegationTokenInput
    SendDelegationTokenOutput: SendDelegationTokenOutput
    SetDefaultPolicyVersionInput: SetDefaultPolicyVersionInput
    SetDefaultPolicyVersionOutput: SetDefaultPolicyVersionOutput
    SetSecurityTokenServicePreferencesInput: SetSecurityTokenServicePreferencesInput
    SetSecurityTokenServicePreferencesOutput: SetSecurityTokenServicePreferencesOutput
    SimulateCustomPolicyInput: SimulateCustomPolicyInput
    SimulateCustomPolicyOutput: SimulateCustomPolicyOutput
    SimulatePrincipalPolicyInput: SimulatePrincipalPolicyInput
    SimulatePrincipalPolicyOutput: SimulatePrincipalPolicyOutput
    TagInstanceProfileInput: TagInstanceProfileInput
    TagInstanceProfileOutput: TagInstanceProfileOutput
    TagMFADeviceInput: TagMFADeviceInput
    TagMFADeviceOutput: TagMFADeviceOutput
    TagOpenIDConnectProviderInput: TagOpenIDConnectProviderInput
    TagOpenIDConnectProviderOutput: TagOpenIDConnectProviderOutput
    TagPolicyInput: TagPolicyInput
    TagPolicyOutput: TagPolicyOutput
    TagRoleInput: TagRoleInput
    TagRoleOutput: TagRoleOutput
    TagSAMLProviderInput: TagSAMLProviderInput
    TagSAMLProviderOutput: TagSAMLProviderOutput
    TagServerCertificateInput: TagServerCertificateInput
    TagServerCertificateOutput: TagServerCertificateOutput
    TagUserInput: TagUserInput
    TagUserOutput: TagUserOutput
    UntagInstanceProfileInput: UntagInstanceProfileInput
    UntagInstanceProfileOutput: UntagInstanceProfileOutput
    UntagMFADeviceInput: UntagMFADeviceInput
    UntagMFADeviceOutput: UntagMFADeviceOutput
    UntagOpenIDConnectProviderInput: UntagOpenIDConnectProviderInput
    UntagOpenIDConnectProviderOutput: UntagOpenIDConnectProviderOutput
    UntagPolicyInput: UntagPolicyInput
    UntagPolicyOutput: UntagPolicyOutput
    UntagRoleInput: UntagRoleInput
    UntagRoleOutput: UntagRoleOutput
    UntagSAMLProviderInput: UntagSAMLProviderInput
    UntagSAMLProviderOutput: UntagSAMLProviderOutput
    UntagServerCertificateInput: UntagServerCertificateInput
    UntagServerCertificateOutput: UntagServerCertificateOutput
    UntagUserInput: UntagUserInput
    UntagUserOutput: UntagUserOutput
    UpdateAccessKeyInput: UpdateAccessKeyInput
    UpdateAccessKeyOutput: UpdateAccessKeyOutput
    UpdateAccountPasswordPolicyInput: UpdateAccountPasswordPolicyInput
    UpdateAccountPasswordPolicyOutput: UpdateAccountPasswordPolicyOutput
    UpdateAssumeRolePolicyInput: UpdateAssumeRolePolicyInput
    UpdateAssumeRolePolicyOutput: UpdateAssumeRolePolicyOutput
    UpdateDelegationRequestInput: UpdateDelegationRequestInput
    UpdateDelegationRequestOutput: UpdateDelegationRequestOutput
    UpdateGroupInput: UpdateGroupInput
    UpdateGroupOutput: UpdateGroupOutput
    UpdateLoginProfileInput: UpdateLoginProfileInput
    UpdateLoginProfileOutput: UpdateLoginProfileOutput
    UpdateOpenIDConnectProviderThumbprintInput: UpdateOpenIDConnectProviderThumbprintInput
    UpdateOpenIDConnectProviderThumbprintOutput: UpdateOpenIDConnectProviderThumbprintOutput
    UpdateRoleInput: UpdateRoleInput
    UpdateRoleOutput: UpdateRoleOutput
    UpdateRoleDescriptionInput: UpdateRoleDescriptionInput
    UpdateRoleDescriptionOutput: UpdateRoleDescriptionOutput
    UpdateSAMLProviderInput: UpdateSAMLProviderInput
    UpdateSAMLProviderOutput: UpdateSAMLProviderOutput
    UpdateServerCertificateInput: UpdateServerCertificateInput
    UpdateServerCertificateOutput: UpdateServerCertificateOutput
    UpdateServiceSpecificCredentialInput: UpdateServiceSpecificCredentialInput
    UpdateServiceSpecificCredentialOutput: UpdateServiceSpecificCredentialOutput
    UpdateSigningCertificateInput: UpdateSigningCertificateInput
    UpdateSigningCertificateOutput: UpdateSigningCertificateOutput
    UpdateSSHPublicKeyInput: UpdateSSHPublicKeyInput
    UpdateSSHPublicKeyOutput: UpdateSSHPublicKeyOutput
    UpdateUserInput: UpdateUserInput
    UpdateUserOutput: UpdateUserOutput
    UploadServerCertificateInput: UploadServerCertificateInput
    UploadServerCertificateOutput: UploadServerCertificateOutput
    UploadSigningCertificateInput: UploadSigningCertificateInput
    UploadSigningCertificateOutput: UploadSigningCertificateOutput
    UploadSSHPublicKeyInput: UploadSSHPublicKeyInput
    UploadSSHPublicKeyOutput: UploadSSHPublicKeyOutput
end

return M
