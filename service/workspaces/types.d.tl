local record AcceptAccountLinkInvitationInput
    LinkId: string
    ClientToken: string
end

local record AcceptAccountLinkInvitationOutput
    AccountLink: AccountLink
end

local record AssociateConnectionAliasInput
    AliasId: string
    ResourceId: string
end

local record AssociateConnectionAliasOutput
    ConnectionIdentifier: string
end

local record AssociateIpGroupsInput
    DirectoryId: string
    GroupIds: {string}
end

local record AssociateIpGroupsOutput
end

local record AssociateWorkspaceApplicationInput
    WorkspaceId: string
    ApplicationId: string
end

local record AssociateWorkspaceApplicationOutput
    Association: WorkspaceResourceAssociation
end

local record AuthorizeIpRulesInput
    GroupId: string
    UserRules: {IpRuleItem}
end

local record AuthorizeIpRulesOutput
end

local record CopyWorkspaceImageInput
    Name: string
    Description: string
    SourceImageId: string
    SourceRegion: string
    Tags: {Tag}
end

local record CopyWorkspaceImageOutput
    ImageId: string
end

local record CreateAccountLinkInvitationInput
    TargetAccountId: string
    ClientToken: string
end

local record CreateAccountLinkInvitationOutput
    AccountLink: AccountLink
end

local record CreateConnectClientAddInInput
    ResourceId: string
    Name: string
    URL: string
end

local record CreateConnectClientAddInOutput
    AddInId: string
end

local record CreateConnectionAliasInput
    ConnectionString: string
    Tags: {Tag}
end

local record CreateConnectionAliasOutput
    AliasId: string
end

local record CreateIpGroupInput
    GroupName: string
    GroupDesc: string
    UserRules: {IpRuleItem}
    Tags: {Tag}
end

local record CreateIpGroupOutput
    GroupId: string
end

local record CreateStandbyWorkspacesInput
    PrimaryRegion: string
    StandbyWorkspaces: {StandbyWorkspace}
end

local record CreateStandbyWorkspacesOutput
    FailedStandbyRequests: {FailedCreateStandbyWorkspacesRequest}
    PendingStandbyRequests: {PendingCreateStandbyWorkspacesRequest}
end

local record CreateTagsInput
    ResourceId: string
    Tags: {Tag}
end

local record CreateTagsOutput
end

local record CreateUpdatedWorkspaceImageInput
    Name: string
    Description: string
    SourceImageId: string
    Tags: {Tag}
end

local record CreateUpdatedWorkspaceImageOutput
    ImageId: string
end

local record CreateWorkspaceBundleInput
    BundleName: string
    BundleDescription: string
    ImageId: string
    ComputeType: ComputeType
    UserStorage: UserStorage
    RootStorage: RootStorage
    Tags: {Tag}
end

local record CreateWorkspaceBundleOutput
    WorkspaceBundle: WorkspaceBundle
end

local record CreateWorkspaceImageInput
    Name: string
    Description: string
    WorkspaceId: string
    Tags: {Tag}
end

local record CreateWorkspaceImageOutput
    ImageId: string
    Name: string
    Description: string
    OperatingSystem: OperatingSystem
    State: string
    RequiredTenancy: string
    Created: number
    OwnerAccountId: string
end

local record CreateWorkspacesInput
    Workspaces: {WorkspaceRequest}
end

local record CreateWorkspacesOutput
    FailedRequests: {FailedCreateWorkspaceRequest}
    PendingRequests: {Workspace}
end

local record CreateWorkspacesPoolInput
    PoolName: string
    Description: string
    BundleId: string
    DirectoryId: string
    Capacity: Capacity
    Tags: {Tag}
    ApplicationSettings: ApplicationSettingsRequest
    TimeoutSettings: TimeoutSettings
    RunningMode: string
end

local record CreateWorkspacesPoolOutput
    WorkspacesPool: WorkspacesPool
end

local record DeleteAccountLinkInvitationInput
    LinkId: string
    ClientToken: string
end

local record DeleteAccountLinkInvitationOutput
    AccountLink: AccountLink
end

local record DeleteClientBrandingInput
    ResourceId: string
    Platforms: {string}
end

local record DeleteClientBrandingOutput
end

local record DeleteConnectClientAddInInput
    AddInId: string
    ResourceId: string
end

local record DeleteConnectClientAddInOutput
end

local record DeleteConnectionAliasInput
    AliasId: string
end

local record DeleteConnectionAliasOutput
end

local record DeleteIpGroupInput
    GroupId: string
end

local record DeleteIpGroupOutput
end

local record DeleteTagsInput
    ResourceId: string
    TagKeys: {string}
end

local record DeleteTagsOutput
end

local record DeleteWorkspaceBundleInput
    BundleId: string
end

local record DeleteWorkspaceBundleOutput
end

local record DeleteWorkspaceImageInput
    ImageId: string
end

local record DeleteWorkspaceImageOutput
end

local record DeployWorkspaceApplicationsInput
    WorkspaceId: string
    Force: boolean
end

local record DeployWorkspaceApplicationsOutput
    Deployment: WorkSpaceApplicationDeployment
end

local record DeregisterWorkspaceDirectoryInput
    DirectoryId: string
end

local record DeregisterWorkspaceDirectoryOutput
end

local record DescribeAccountInput
end

local record DescribeAccountOutput
    DedicatedTenancySupport: string
    DedicatedTenancyManagementCidrRange: string
    DedicatedTenancyAccountType: string
    Message: string
end

local record DescribeAccountModificationsInput
    NextToken: string
end

local record DescribeAccountModificationsOutput
    AccountModifications: {AccountModification}
    NextToken: string
end

local record DescribeApplicationAssociationsInput
    MaxResults: number
    NextToken: string
    ApplicationId: string
    AssociatedResourceTypes: {string}
end

local record DescribeApplicationAssociationsOutput
    Associations: {ApplicationResourceAssociation}
    NextToken: string
end

local record DescribeApplicationsInput
    ApplicationIds: {string}
    ComputeTypeNames: {string}
    LicenseType: string
    OperatingSystemNames: {string}
    Owner: string
    MaxResults: number
    NextToken: string
end

local record DescribeApplicationsOutput
    Applications: {WorkSpaceApplication}
    NextToken: string
end

local record DescribeBundleAssociationsInput
    BundleId: string
    AssociatedResourceTypes: {string}
end

local record DescribeBundleAssociationsOutput
    Associations: {BundleResourceAssociation}
end

local record DescribeClientBrandingInput
    ResourceId: string
end

local record DescribeClientBrandingOutput
    DeviceTypeWindows: DefaultClientBrandingAttributes
    DeviceTypeOsx: DefaultClientBrandingAttributes
    DeviceTypeAndroid: DefaultClientBrandingAttributes
    DeviceTypeIos: IosClientBrandingAttributes
    DeviceTypeLinux: DefaultClientBrandingAttributes
    DeviceTypeWeb: DefaultClientBrandingAttributes
end

local record DescribeClientPropertiesInput
    ResourceIds: {string}
end

local record DescribeClientPropertiesOutput
    ClientPropertiesList: {ClientPropertiesResult}
end

local record DescribeConnectClientAddInsInput
    ResourceId: string
    NextToken: string
    MaxResults: number
end

local record DescribeConnectClientAddInsOutput
    AddIns: {ConnectClientAddIn}
    NextToken: string
end

local record DescribeConnectionAliasesInput
    AliasIds: {string}
    ResourceId: string
    Limit: number
    NextToken: string
end

local record DescribeConnectionAliasesOutput
    ConnectionAliases: {ConnectionAlias}
    NextToken: string
end

local record DescribeConnectionAliasPermissionsInput
    AliasId: string
    NextToken: string
    MaxResults: number
end

local record DescribeConnectionAliasPermissionsOutput
    AliasId: string
    ConnectionAliasPermissions: {ConnectionAliasPermission}
    NextToken: string
end

local record DescribeCustomWorkspaceImageImportInput
    ImageId: string
end

local record DescribeCustomWorkspaceImageImportOutput
    ImageId: string
    InfrastructureConfigurationArn: string
    State: string
    StateMessage: string
    ProgressPercentage: number
    Created: number
    LastUpdatedTime: number
    ImageSource: ImageSourceIdentifier
    ImageBuilderInstanceId: string
    ErrorDetails: {CustomWorkspaceImageImportErrorDetails}
end

local record DescribeImageAssociationsInput
    ImageId: string
    AssociatedResourceTypes: {string}
end

local record DescribeImageAssociationsOutput
    Associations: {ImageResourceAssociation}
end

local record DescribeIpGroupsInput
    GroupIds: {string}
    NextToken: string
    MaxResults: number
end

local record DescribeIpGroupsOutput
    Result: {WorkspacesIpGroup}
    NextToken: string
end

local record DescribeTagsInput
    ResourceId: string
end

local record DescribeTagsOutput
    TagList: {Tag}
end

local record DescribeWorkspaceAssociationsInput
    WorkspaceId: string
    AssociatedResourceTypes: {string}
end

local record DescribeWorkspaceAssociationsOutput
    Associations: {WorkspaceResourceAssociation}
end

local record DescribeWorkspaceBundlesInput
    BundleIds: {string}
    Owner: string
    NextToken: string
end

local record DescribeWorkspaceBundlesOutput
    Bundles: {WorkspaceBundle}
    NextToken: string
end

local record DescribeWorkspaceDirectoriesInput
    DirectoryIds: {string}
    WorkspaceDirectoryNames: {string}
    Limit: number
    NextToken: string
    Filters: {DescribeWorkspaceDirectoriesFilter}
end

local record DescribeWorkspaceDirectoriesOutput
    Directories: {WorkspaceDirectory}
    NextToken: string
end

local record DescribeWorkspaceImagePermissionsInput
    ImageId: string
    NextToken: string
    MaxResults: number
end

local record DescribeWorkspaceImagePermissionsOutput
    ImageId: string
    ImagePermissions: {ImagePermission}
    NextToken: string
end

local record DescribeWorkspaceImagesInput
    ImageIds: {string}
    ImageType: string
    NextToken: string
    MaxResults: number
end

local record DescribeWorkspaceImagesOutput
    Images: {WorkspaceImage}
    NextToken: string
end

local record DescribeWorkspacesInput
    WorkspaceIds: {string}
    DirectoryId: string
    UserName: string
    BundleId: string
    Limit: number
    NextToken: string
    WorkspaceName: string
end

local record DescribeWorkspacesOutput
    Workspaces: {Workspace}
    NextToken: string
end

local record DescribeWorkspacesConnectionStatusInput
    WorkspaceIds: {string}
    NextToken: string
end

local record DescribeWorkspacesConnectionStatusOutput
    WorkspacesConnectionStatus: {WorkspaceConnectionStatus}
    NextToken: string
end

local record DescribeWorkspaceSnapshotsInput
    WorkspaceId: string
end

local record DescribeWorkspaceSnapshotsOutput
    RebuildSnapshots: {Snapshot}
    RestoreSnapshots: {Snapshot}
end

local record DescribeWorkspacesPoolsInput
    PoolIds: {string}
    Filters: {DescribeWorkspacesPoolsFilter}
    Limit: number
    NextToken: string
end

local record DescribeWorkspacesPoolsOutput
    WorkspacesPools: {WorkspacesPool}
    NextToken: string
end

local record DescribeWorkspacesPoolSessionsInput
    PoolId: string
    UserId: string
    Limit: number
    NextToken: string
end

local record DescribeWorkspacesPoolSessionsOutput
    Sessions: {WorkspacesPoolSession}
    NextToken: string
end

local record DisassociateConnectionAliasInput
    AliasId: string
end

local record DisassociateConnectionAliasOutput
end

local record DisassociateIpGroupsInput
    DirectoryId: string
    GroupIds: {string}
end

local record DisassociateIpGroupsOutput
end

local record DisassociateWorkspaceApplicationInput
    WorkspaceId: string
    ApplicationId: string
end

local record DisassociateWorkspaceApplicationOutput
    Association: WorkspaceResourceAssociation
end

local record GetAccountLinkInput
    LinkId: string
    LinkedAccountId: string
end

local record GetAccountLinkOutput
    AccountLink: AccountLink
end

local record ImportClientBrandingInput
    ResourceId: string
    DeviceTypeWindows: DefaultImportClientBrandingAttributes
    DeviceTypeOsx: DefaultImportClientBrandingAttributes
    DeviceTypeAndroid: DefaultImportClientBrandingAttributes
    DeviceTypeIos: IosImportClientBrandingAttributes
    DeviceTypeLinux: DefaultImportClientBrandingAttributes
    DeviceTypeWeb: DefaultImportClientBrandingAttributes
end

local record ImportClientBrandingOutput
    DeviceTypeWindows: DefaultClientBrandingAttributes
    DeviceTypeOsx: DefaultClientBrandingAttributes
    DeviceTypeAndroid: DefaultClientBrandingAttributes
    DeviceTypeIos: IosClientBrandingAttributes
    DeviceTypeLinux: DefaultClientBrandingAttributes
    DeviceTypeWeb: DefaultClientBrandingAttributes
end

local record ImportCustomWorkspaceImageInput
    ImageName: string
    ImageDescription: string
    ComputeType: string
    Protocol: string
    ImageSource: ImageSourceIdentifier
    InfrastructureConfigurationArn: string
    Platform: string
    OsVersion: string
    Tags: {Tag}
end

local record ImportCustomWorkspaceImageOutput
    ImageId: string
    State: string
end

local record ImportWorkspaceImageInput
    Ec2ImageId: string
    IngestionProcess: string
    ImageName: string
    ImageDescription: string
    Tags: {Tag}
    Applications: {string}
end

local record ImportWorkspaceImageOutput
    ImageId: string
end

local record ListAccountLinksInput
    LinkStatusFilter: {string}
    NextToken: string
    MaxResults: number
end

local record ListAccountLinksOutput
    AccountLinks: {AccountLink}
    NextToken: string
end

local record ListAvailableManagementCidrRangesInput
    ManagementCidrRangeConstraint: string
    MaxResults: number
    NextToken: string
end

local record ListAvailableManagementCidrRangesOutput
    ManagementCidrRanges: {string}
    NextToken: string
end

local record MigrateWorkspaceInput
    SourceWorkspaceId: string
    BundleId: string
end

local record MigrateWorkspaceOutput
    SourceWorkspaceId: string
    TargetWorkspaceId: string
end

local record ModifyAccountInput
    DedicatedTenancySupport: string
    DedicatedTenancyManagementCidrRange: string
end

local record ModifyAccountOutput
    Message: string
end

local record ModifyCertificateBasedAuthPropertiesInput
    ResourceId: string
    CertificateBasedAuthProperties: CertificateBasedAuthProperties
    PropertiesToDelete: {string}
end

local record ModifyCertificateBasedAuthPropertiesOutput
end

local record ModifyClientPropertiesInput
    ResourceId: string
    ClientProperties: ClientProperties
end

local record ModifyClientPropertiesOutput
end

local record ModifyEndpointEncryptionModeInput
    DirectoryId: string
    EndpointEncryptionMode: string
end

local record ModifyEndpointEncryptionModeOutput
end

local record ModifySamlPropertiesInput
    ResourceId: string
    SamlProperties: SamlProperties
    PropertiesToDelete: {string}
end

local record ModifySamlPropertiesOutput
end

local record ModifySelfservicePermissionsInput
    ResourceId: string
    SelfservicePermissions: SelfservicePermissions
end

local record ModifySelfservicePermissionsOutput
end

local record ModifyStreamingPropertiesInput
    ResourceId: string
    StreamingProperties: StreamingProperties
end

local record ModifyStreamingPropertiesOutput
end

local record ModifyWorkspaceAccessPropertiesInput
    ResourceId: string
    WorkspaceAccessProperties: WorkspaceAccessProperties
end

local record ModifyWorkspaceAccessPropertiesOutput
end

local record ModifyWorkspaceCreationPropertiesInput
    ResourceId: string
    WorkspaceCreationProperties: WorkspaceCreationProperties
end

local record ModifyWorkspaceCreationPropertiesOutput
end

local record ModifyWorkspacePropertiesInput
    WorkspaceId: string
    WorkspaceProperties: WorkspaceProperties
    DataReplication: string
end

local record ModifyWorkspacePropertiesOutput
end

local record ModifyWorkspaceStateInput
    WorkspaceId: string
    WorkspaceState: string
end

local record ModifyWorkspaceStateOutput
end

local record RebootWorkspacesInput
    RebootWorkspaceRequests: {RebootRequest}
end

local record RebootWorkspacesOutput
    FailedRequests: {FailedWorkspaceChangeRequest}
end

local record RebuildWorkspacesInput
    RebuildWorkspaceRequests: {RebuildRequest}
end

local record RebuildWorkspacesOutput
    FailedRequests: {FailedWorkspaceChangeRequest}
end

local record RegisterWorkspaceDirectoryInput
    DirectoryId: string
    SubnetIds: {string}
    EnableSelfService: boolean
    Tenancy: string
    Tags: {Tag}
    WorkspaceDirectoryName: string
    WorkspaceDirectoryDescription: string
    UserIdentityType: string
    IdcInstanceArn: string
    MicrosoftEntraConfig: MicrosoftEntraConfig
    WorkspaceType: string
    ActiveDirectoryConfig: ActiveDirectoryConfig
end

local record RegisterWorkspaceDirectoryOutput
    DirectoryId: string
    State: string
end

local record RejectAccountLinkInvitationInput
    LinkId: string
    ClientToken: string
end

local record RejectAccountLinkInvitationOutput
    AccountLink: AccountLink
end

local record RestoreWorkspaceInput
    WorkspaceId: string
end

local record RestoreWorkspaceOutput
end

local record RevokeIpRulesInput
    GroupId: string
    UserRules: {string}
end

local record RevokeIpRulesOutput
end

local record StartWorkspacesInput
    StartWorkspaceRequests: {StartRequest}
end

local record StartWorkspacesOutput
    FailedRequests: {FailedWorkspaceChangeRequest}
end

local record StartWorkspacesPoolInput
    PoolId: string
end

local record StartWorkspacesPoolOutput
end

local record StopWorkspacesInput
    StopWorkspaceRequests: {StopRequest}
end

local record StopWorkspacesOutput
    FailedRequests: {FailedWorkspaceChangeRequest}
end

local record StopWorkspacesPoolInput
    PoolId: string
end

local record StopWorkspacesPoolOutput
end

local record TerminateWorkspacesInput
    TerminateWorkspaceRequests: {TerminateRequest}
end

local record TerminateWorkspacesOutput
    FailedRequests: {FailedWorkspaceChangeRequest}
end

local record TerminateWorkspacesPoolInput
    PoolId: string
end

local record TerminateWorkspacesPoolOutput
end

local record TerminateWorkspacesPoolSessionInput
    SessionId: string
end

local record TerminateWorkspacesPoolSessionOutput
end

local record UpdateConnectClientAddInInput
    AddInId: string
    ResourceId: string
    Name: string
    URL: string
end

local record UpdateConnectClientAddInOutput
end

local record UpdateConnectionAliasPermissionInput
    AliasId: string
    ConnectionAliasPermission: ConnectionAliasPermission
end

local record UpdateConnectionAliasPermissionOutput
end

local record UpdateRulesOfIpGroupInput
    GroupId: string
    UserRules: {IpRuleItem}
end

local record UpdateRulesOfIpGroupOutput
end

local record UpdateWorkspaceBundleInput
    BundleId: string
    ImageId: string
end

local record UpdateWorkspaceBundleOutput
end

local record UpdateWorkspaceImagePermissionInput
    ImageId: string
    AllowCopyImage: boolean
    SharedAccountId: string
end

local record UpdateWorkspaceImagePermissionOutput
end

local record UpdateWorkspacesPoolInput
    PoolId: string
    Description: string
    BundleId: string
    DirectoryId: string
    Capacity: Capacity
    ApplicationSettings: ApplicationSettingsRequest
    TimeoutSettings: TimeoutSettings
    RunningMode: string
end

local record UpdateWorkspacesPoolOutput
    WorkspacesPool: WorkspacesPool
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record InvalidResourceStateException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceAssociatedException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record InvalidResourceStateException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceLimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record ApplicationNotSupportedException
end

local record ComputeNotCompatibleException
end

local record IncompatibleApplicationsException
end

local record InvalidParameterValuesException
    message: string
end

local record OperatingSystemNotCompatibleException
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceInUseException
    message: string
    ResourceId: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record InvalidResourceStateException
    message: string
end

local record ResourceLimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceLimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record ResourceUnavailableException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceCreationFailedException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record InvalidResourceStateException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceLimitExceededException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceCreationFailedException
    message: string
end

local record ResourceLimitExceededException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceLimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record InvalidParameterValuesException
    message: string
end

local record ResourceLimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record InvalidResourceStateException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceLimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceLimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record ResourceUnavailableException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record InvalidResourceStateException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceLimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record InvalidParameterValuesException
    message: string
end

local record ResourceLimitExceededException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceLimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record InvalidResourceStateException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceAssociatedException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record ResourceAssociatedException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record InvalidParameterValuesException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record ResourceAssociatedException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidResourceStateException
    message: string
end

local record ResourceAssociatedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record IncompatibleApplicationsException
end

local record InvalidParameterValuesException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceInUseException
    message: string
    ResourceId: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record InvalidResourceStateException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record InvalidParameterValuesException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record ResourceUnavailableException
    message: string
    ResourceId: string
end

local record InvalidParameterValuesException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record InvalidResourceStateException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record InvalidResourceStateException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceInUseException
    message: string
    ResourceId: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record ResourceLimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceLimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceLimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record OperationInProgressException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record ResourceUnavailableException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record InvalidResourceStateException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record ResourceUnavailableException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record InvalidResourceStateException
    message: string
end

local record OperationInProgressException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record ResourceUnavailableException
    message: string
    ResourceId: string
end

local record UnsupportedWorkspaceConfigurationException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record InvalidResourceStateException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record InvalidResourceStateException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceLimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record UnsupportedNetworkConfigurationException
    message: string
end

local record WorkspacesDefaultRoleNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record InvalidResourceStateException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record InvalidResourceStateException
    message: string
end

local record OperationInProgressException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceLimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record InvalidResourceStateException
    message: string
end

local record OperationInProgressException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record InvalidResourceStateException
    message: string
end

local record OperationInProgressException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record OperationInProgressException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record InvalidResourceStateException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceAssociatedException
    message: string
end

local record ResourceLimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record InvalidResourceStateException
    message: string
end

local record ResourceLimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record ResourceUnavailableException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local record ResourceUnavailableException
    message: string
    ResourceId: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterValuesException
    message: string
end

local record InvalidResourceStateException
    message: string
end

local record OperationInProgressException
    message: string
end

local record OperationNotSupportedException
    message: string
    reason: string
end

local record ResourceLimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
    ResourceId: string
end

local type WorkspaceDirectoryState = "REGISTERING" | "REGISTERED" | "DEREGISTERING" | "DEREGISTERED" | "ERROR"

local type WorkspaceImageRequiredTenancy = "DEFAULT" | "DEDICATED"

local type Platform = "WINDOWS"

local type CustomWorkspaceImageImportState = "PENDING" | "IN_PROGRESS" | "PROCESSING_SOURCE_IMAGE" | "IMAGE_TESTING_START" | "UPDATING_OPERATING_SYSTEM" | "IMAGE_COMPATIBILITY_CHECKING" | "IMAGE_TESTING_GENERALIZATION" | "CREATING_TEST_INSTANCE" | "INSTALLING_COMPONENTS" | "GENERALIZING" | "VALIDATING" | "PUBLISHING" | "COMPLETED" | "ERROR"

local type ImageComputeType = "BASE" | "GRAPHICS_G4DN" | "GRAPHICS_G6"

local type WorkSpaceApplicationLicenseType = "LICENSED" | "UNLICENSED"

local type UserIdentityType = "CUSTOMER_MANAGED" | "AWS_DIRECTORY_SERVICE" | "AWS_IAM_IDENTITY_CENTER"

local type DedicatedTenancySupportResultEnum = "ENABLED" | "DISABLED"

local type DedicatedTenancySupportEnum = "ENABLED"

local type DedicatedTenancyAccountType = "SOURCE_ACCOUNT" | "TARGET_ACCOUNT"

local type CustomImageProtocol = "PCOIP" | "DCV" | "BYOP"

local type EndpointEncryptionMode = "STANDARD_TLS" | "FIPS_VALIDATED"

local type TargetWorkspaceState = "AVAILABLE" | "ADMIN_MAINTENANCE"

local type DataReplication = "NO_REPLICATION" | "PRIMARY_AS_SOURCE"

local type PoolsRunningMode = "AUTO_STOP" | "ALWAYS_ON"

local type WorkspaceImageState = "AVAILABLE" | "PENDING" | "ERROR"

local type WorkspaceType = "PERSONAL" | "POOLS"

local type OSVersion = "Windows_10" | "Windows_11"

local type WorkspaceImageIngestionProcess = "BYOL_REGULAR" | "BYOL_GRAPHICS" | "BYOL_GRAPHICSPRO" | "BYOL_GRAPHICS_G4DN" | "BYOL_REGULAR_WSP" | "BYOL_GRAPHICS_G4DN_WSP" | "BYOL_REGULAR_BYOP" | "BYOL_GRAPHICS_G4DN_BYOP"

local type Tenancy = "DEDICATED" | "SHARED"

local type ImageType = "OWNED" | "SHARED"

local record M
    AcceptAccountLinkInvitationInput: AcceptAccountLinkInvitationInput
    AcceptAccountLinkInvitationOutput: AcceptAccountLinkInvitationOutput
    AssociateConnectionAliasInput: AssociateConnectionAliasInput
    AssociateConnectionAliasOutput: AssociateConnectionAliasOutput
    AssociateIpGroupsInput: AssociateIpGroupsInput
    AssociateIpGroupsOutput: AssociateIpGroupsOutput
    AssociateWorkspaceApplicationInput: AssociateWorkspaceApplicationInput
    AssociateWorkspaceApplicationOutput: AssociateWorkspaceApplicationOutput
    AuthorizeIpRulesInput: AuthorizeIpRulesInput
    AuthorizeIpRulesOutput: AuthorizeIpRulesOutput
    CopyWorkspaceImageInput: CopyWorkspaceImageInput
    CopyWorkspaceImageOutput: CopyWorkspaceImageOutput
    CreateAccountLinkInvitationInput: CreateAccountLinkInvitationInput
    CreateAccountLinkInvitationOutput: CreateAccountLinkInvitationOutput
    CreateConnectClientAddInInput: CreateConnectClientAddInInput
    CreateConnectClientAddInOutput: CreateConnectClientAddInOutput
    CreateConnectionAliasInput: CreateConnectionAliasInput
    CreateConnectionAliasOutput: CreateConnectionAliasOutput
    CreateIpGroupInput: CreateIpGroupInput
    CreateIpGroupOutput: CreateIpGroupOutput
    CreateStandbyWorkspacesInput: CreateStandbyWorkspacesInput
    CreateStandbyWorkspacesOutput: CreateStandbyWorkspacesOutput
    CreateTagsInput: CreateTagsInput
    CreateTagsOutput: CreateTagsOutput
    CreateUpdatedWorkspaceImageInput: CreateUpdatedWorkspaceImageInput
    CreateUpdatedWorkspaceImageOutput: CreateUpdatedWorkspaceImageOutput
    CreateWorkspaceBundleInput: CreateWorkspaceBundleInput
    CreateWorkspaceBundleOutput: CreateWorkspaceBundleOutput
    CreateWorkspaceImageInput: CreateWorkspaceImageInput
    CreateWorkspaceImageOutput: CreateWorkspaceImageOutput
    CreateWorkspacesInput: CreateWorkspacesInput
    CreateWorkspacesOutput: CreateWorkspacesOutput
    CreateWorkspacesPoolInput: CreateWorkspacesPoolInput
    CreateWorkspacesPoolOutput: CreateWorkspacesPoolOutput
    DeleteAccountLinkInvitationInput: DeleteAccountLinkInvitationInput
    DeleteAccountLinkInvitationOutput: DeleteAccountLinkInvitationOutput
    DeleteClientBrandingInput: DeleteClientBrandingInput
    DeleteClientBrandingOutput: DeleteClientBrandingOutput
    DeleteConnectClientAddInInput: DeleteConnectClientAddInInput
    DeleteConnectClientAddInOutput: DeleteConnectClientAddInOutput
    DeleteConnectionAliasInput: DeleteConnectionAliasInput
    DeleteConnectionAliasOutput: DeleteConnectionAliasOutput
    DeleteIpGroupInput: DeleteIpGroupInput
    DeleteIpGroupOutput: DeleteIpGroupOutput
    DeleteTagsInput: DeleteTagsInput
    DeleteTagsOutput: DeleteTagsOutput
    DeleteWorkspaceBundleInput: DeleteWorkspaceBundleInput
    DeleteWorkspaceBundleOutput: DeleteWorkspaceBundleOutput
    DeleteWorkspaceImageInput: DeleteWorkspaceImageInput
    DeleteWorkspaceImageOutput: DeleteWorkspaceImageOutput
    DeployWorkspaceApplicationsInput: DeployWorkspaceApplicationsInput
    DeployWorkspaceApplicationsOutput: DeployWorkspaceApplicationsOutput
    DeregisterWorkspaceDirectoryInput: DeregisterWorkspaceDirectoryInput
    DeregisterWorkspaceDirectoryOutput: DeregisterWorkspaceDirectoryOutput
    DescribeAccountInput: DescribeAccountInput
    DescribeAccountOutput: DescribeAccountOutput
    DescribeAccountModificationsInput: DescribeAccountModificationsInput
    DescribeAccountModificationsOutput: DescribeAccountModificationsOutput
    DescribeApplicationAssociationsInput: DescribeApplicationAssociationsInput
    DescribeApplicationAssociationsOutput: DescribeApplicationAssociationsOutput
    DescribeApplicationsInput: DescribeApplicationsInput
    DescribeApplicationsOutput: DescribeApplicationsOutput
    DescribeBundleAssociationsInput: DescribeBundleAssociationsInput
    DescribeBundleAssociationsOutput: DescribeBundleAssociationsOutput
    DescribeClientBrandingInput: DescribeClientBrandingInput
    DescribeClientBrandingOutput: DescribeClientBrandingOutput
    DescribeClientPropertiesInput: DescribeClientPropertiesInput
    DescribeClientPropertiesOutput: DescribeClientPropertiesOutput
    DescribeConnectClientAddInsInput: DescribeConnectClientAddInsInput
    DescribeConnectClientAddInsOutput: DescribeConnectClientAddInsOutput
    DescribeConnectionAliasesInput: DescribeConnectionAliasesInput
    DescribeConnectionAliasesOutput: DescribeConnectionAliasesOutput
    DescribeConnectionAliasPermissionsInput: DescribeConnectionAliasPermissionsInput
    DescribeConnectionAliasPermissionsOutput: DescribeConnectionAliasPermissionsOutput
    DescribeCustomWorkspaceImageImportInput: DescribeCustomWorkspaceImageImportInput
    DescribeCustomWorkspaceImageImportOutput: DescribeCustomWorkspaceImageImportOutput
    DescribeImageAssociationsInput: DescribeImageAssociationsInput
    DescribeImageAssociationsOutput: DescribeImageAssociationsOutput
    DescribeIpGroupsInput: DescribeIpGroupsInput
    DescribeIpGroupsOutput: DescribeIpGroupsOutput
    DescribeTagsInput: DescribeTagsInput
    DescribeTagsOutput: DescribeTagsOutput
    DescribeWorkspaceAssociationsInput: DescribeWorkspaceAssociationsInput
    DescribeWorkspaceAssociationsOutput: DescribeWorkspaceAssociationsOutput
    DescribeWorkspaceBundlesInput: DescribeWorkspaceBundlesInput
    DescribeWorkspaceBundlesOutput: DescribeWorkspaceBundlesOutput
    DescribeWorkspaceDirectoriesInput: DescribeWorkspaceDirectoriesInput
    DescribeWorkspaceDirectoriesOutput: DescribeWorkspaceDirectoriesOutput
    DescribeWorkspaceImagePermissionsInput: DescribeWorkspaceImagePermissionsInput
    DescribeWorkspaceImagePermissionsOutput: DescribeWorkspaceImagePermissionsOutput
    DescribeWorkspaceImagesInput: DescribeWorkspaceImagesInput
    DescribeWorkspaceImagesOutput: DescribeWorkspaceImagesOutput
    DescribeWorkspacesInput: DescribeWorkspacesInput
    DescribeWorkspacesOutput: DescribeWorkspacesOutput
    DescribeWorkspacesConnectionStatusInput: DescribeWorkspacesConnectionStatusInput
    DescribeWorkspacesConnectionStatusOutput: DescribeWorkspacesConnectionStatusOutput
    DescribeWorkspaceSnapshotsInput: DescribeWorkspaceSnapshotsInput
    DescribeWorkspaceSnapshotsOutput: DescribeWorkspaceSnapshotsOutput
    DescribeWorkspacesPoolsInput: DescribeWorkspacesPoolsInput
    DescribeWorkspacesPoolsOutput: DescribeWorkspacesPoolsOutput
    DescribeWorkspacesPoolSessionsInput: DescribeWorkspacesPoolSessionsInput
    DescribeWorkspacesPoolSessionsOutput: DescribeWorkspacesPoolSessionsOutput
    DisassociateConnectionAliasInput: DisassociateConnectionAliasInput
    DisassociateConnectionAliasOutput: DisassociateConnectionAliasOutput
    DisassociateIpGroupsInput: DisassociateIpGroupsInput
    DisassociateIpGroupsOutput: DisassociateIpGroupsOutput
    DisassociateWorkspaceApplicationInput: DisassociateWorkspaceApplicationInput
    DisassociateWorkspaceApplicationOutput: DisassociateWorkspaceApplicationOutput
    GetAccountLinkInput: GetAccountLinkInput
    GetAccountLinkOutput: GetAccountLinkOutput
    ImportClientBrandingInput: ImportClientBrandingInput
    ImportClientBrandingOutput: ImportClientBrandingOutput
    ImportCustomWorkspaceImageInput: ImportCustomWorkspaceImageInput
    ImportCustomWorkspaceImageOutput: ImportCustomWorkspaceImageOutput
    ImportWorkspaceImageInput: ImportWorkspaceImageInput
    ImportWorkspaceImageOutput: ImportWorkspaceImageOutput
    ListAccountLinksInput: ListAccountLinksInput
    ListAccountLinksOutput: ListAccountLinksOutput
    ListAvailableManagementCidrRangesInput: ListAvailableManagementCidrRangesInput
    ListAvailableManagementCidrRangesOutput: ListAvailableManagementCidrRangesOutput
    MigrateWorkspaceInput: MigrateWorkspaceInput
    MigrateWorkspaceOutput: MigrateWorkspaceOutput
    ModifyAccountInput: ModifyAccountInput
    ModifyAccountOutput: ModifyAccountOutput
    ModifyCertificateBasedAuthPropertiesInput: ModifyCertificateBasedAuthPropertiesInput
    ModifyCertificateBasedAuthPropertiesOutput: ModifyCertificateBasedAuthPropertiesOutput
    ModifyClientPropertiesInput: ModifyClientPropertiesInput
    ModifyClientPropertiesOutput: ModifyClientPropertiesOutput
    ModifyEndpointEncryptionModeInput: ModifyEndpointEncryptionModeInput
    ModifyEndpointEncryptionModeOutput: ModifyEndpointEncryptionModeOutput
    ModifySamlPropertiesInput: ModifySamlPropertiesInput
    ModifySamlPropertiesOutput: ModifySamlPropertiesOutput
    ModifySelfservicePermissionsInput: ModifySelfservicePermissionsInput
    ModifySelfservicePermissionsOutput: ModifySelfservicePermissionsOutput
    ModifyStreamingPropertiesInput: ModifyStreamingPropertiesInput
    ModifyStreamingPropertiesOutput: ModifyStreamingPropertiesOutput
    ModifyWorkspaceAccessPropertiesInput: ModifyWorkspaceAccessPropertiesInput
    ModifyWorkspaceAccessPropertiesOutput: ModifyWorkspaceAccessPropertiesOutput
    ModifyWorkspaceCreationPropertiesInput: ModifyWorkspaceCreationPropertiesInput
    ModifyWorkspaceCreationPropertiesOutput: ModifyWorkspaceCreationPropertiesOutput
    ModifyWorkspacePropertiesInput: ModifyWorkspacePropertiesInput
    ModifyWorkspacePropertiesOutput: ModifyWorkspacePropertiesOutput
    ModifyWorkspaceStateInput: ModifyWorkspaceStateInput
    ModifyWorkspaceStateOutput: ModifyWorkspaceStateOutput
    RebootWorkspacesInput: RebootWorkspacesInput
    RebootWorkspacesOutput: RebootWorkspacesOutput
    RebuildWorkspacesInput: RebuildWorkspacesInput
    RebuildWorkspacesOutput: RebuildWorkspacesOutput
    RegisterWorkspaceDirectoryInput: RegisterWorkspaceDirectoryInput
    RegisterWorkspaceDirectoryOutput: RegisterWorkspaceDirectoryOutput
    RejectAccountLinkInvitationInput: RejectAccountLinkInvitationInput
    RejectAccountLinkInvitationOutput: RejectAccountLinkInvitationOutput
    RestoreWorkspaceInput: RestoreWorkspaceInput
    RestoreWorkspaceOutput: RestoreWorkspaceOutput
    RevokeIpRulesInput: RevokeIpRulesInput
    RevokeIpRulesOutput: RevokeIpRulesOutput
    StartWorkspacesInput: StartWorkspacesInput
    StartWorkspacesOutput: StartWorkspacesOutput
    StartWorkspacesPoolInput: StartWorkspacesPoolInput
    StartWorkspacesPoolOutput: StartWorkspacesPoolOutput
    StopWorkspacesInput: StopWorkspacesInput
    StopWorkspacesOutput: StopWorkspacesOutput
    StopWorkspacesPoolInput: StopWorkspacesPoolInput
    StopWorkspacesPoolOutput: StopWorkspacesPoolOutput
    TerminateWorkspacesInput: TerminateWorkspacesInput
    TerminateWorkspacesOutput: TerminateWorkspacesOutput
    TerminateWorkspacesPoolInput: TerminateWorkspacesPoolInput
    TerminateWorkspacesPoolOutput: TerminateWorkspacesPoolOutput
    TerminateWorkspacesPoolSessionInput: TerminateWorkspacesPoolSessionInput
    TerminateWorkspacesPoolSessionOutput: TerminateWorkspacesPoolSessionOutput
    UpdateConnectClientAddInInput: UpdateConnectClientAddInInput
    UpdateConnectClientAddInOutput: UpdateConnectClientAddInOutput
    UpdateConnectionAliasPermissionInput: UpdateConnectionAliasPermissionInput
    UpdateConnectionAliasPermissionOutput: UpdateConnectionAliasPermissionOutput
    UpdateRulesOfIpGroupInput: UpdateRulesOfIpGroupInput
    UpdateRulesOfIpGroupOutput: UpdateRulesOfIpGroupOutput
    UpdateWorkspaceBundleInput: UpdateWorkspaceBundleInput
    UpdateWorkspaceBundleOutput: UpdateWorkspaceBundleOutput
    UpdateWorkspaceImagePermissionInput: UpdateWorkspaceImagePermissionInput
    UpdateWorkspaceImagePermissionOutput: UpdateWorkspaceImagePermissionOutput
    UpdateWorkspacesPoolInput: UpdateWorkspacesPoolInput
    UpdateWorkspacesPoolOutput: UpdateWorkspacesPoolOutput
end

return M
