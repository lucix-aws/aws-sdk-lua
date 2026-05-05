local record AssociateAppBlockBuilderAppBlockInput
    AppBlockArn: string
    AppBlockBuilderName: string
end

local record AssociateAppBlockBuilderAppBlockOutput
    AppBlockBuilderAppBlockAssociation: AppBlockBuilderAppBlockAssociation
end

local record AssociateApplicationFleetInput
    FleetName: string
    ApplicationArn: string
end

local record AssociateApplicationFleetOutput
    ApplicationFleetAssociation: ApplicationFleetAssociation
end

local record AssociateApplicationToEntitlementInput
    StackName: string
    EntitlementName: string
    ApplicationIdentifier: string
end

local record AssociateApplicationToEntitlementOutput
end

local record AssociateFleetInput
    FleetName: string
    StackName: string
end

local record AssociateFleetOutput
end

local record AssociateSoftwareToImageBuilderInput
    ImageBuilderName: string
    SoftwareNames: {string}
end

local record AssociateSoftwareToImageBuilderOutput
end

local record BatchAssociateUserStackInput
    UserStackAssociations: {UserStackAssociation}
end

local record BatchAssociateUserStackOutput
    errors: {UserStackAssociationError}
end

local record BatchDisassociateUserStackInput
    UserStackAssociations: {UserStackAssociation}
end

local record BatchDisassociateUserStackOutput
    errors: {UserStackAssociationError}
end

local record CopyImageInput
    SourceImageName: string
    DestinationImageName: string
    DestinationRegion: string
    DestinationImageDescription: string
end

local record CopyImageOutput
    DestinationImageName: string
end

local record CreateAppBlockInput
    Name: string
    Description: string
    DisplayName: string
    SourceS3Location: S3Location
    SetupScriptDetails: ScriptDetails
    Tags: {string : string}
    PostSetupScriptDetails: ScriptDetails
    PackagingType: string
end

local record CreateAppBlockOutput
    AppBlock: AppBlock
end

local record CreateAppBlockBuilderInput
    Name: string
    Description: string
    DisplayName: string
    Tags: {string : string}
    Platform: string
    InstanceType: string
    VpcConfig: VpcConfig
    EnableDefaultInternetAccess: boolean
    IamRoleArn: string
    AccessEndpoints: {AccessEndpoint}
    DisableIMDSV1: boolean
end

local record CreateAppBlockBuilderOutput
    AppBlockBuilder: AppBlockBuilder
end

local record CreateAppBlockBuilderStreamingURLInput
    AppBlockBuilderName: string
    Validity: number
end

local record CreateAppBlockBuilderStreamingURLOutput
    StreamingURL: string
    Expires: number
end

local record CreateApplicationInput
    Name: string
    DisplayName: string
    Description: string
    IconS3Location: S3Location
    LaunchPath: string
    WorkingDirectory: string
    LaunchParameters: string
    Platforms: {string}
    InstanceFamilies: {string}
    AppBlockArn: string
    Tags: {string : string}
end

local record CreateApplicationOutput
    Application: Application
end

local record CreateDirectoryConfigInput
    DirectoryName: string
    OrganizationalUnitDistinguishedNames: {string}
    ServiceAccountCredentials: ServiceAccountCredentials
    CertificateBasedAuthProperties: CertificateBasedAuthProperties
end

local record CreateDirectoryConfigOutput
    DirectoryConfig: DirectoryConfig
end

local record CreateEntitlementInput
    Name: string
    StackName: string
    Description: string
    AppVisibility: string
    Attributes: {EntitlementAttribute}
end

local record CreateEntitlementOutput
    Entitlement: Entitlement
end

local record CreateExportImageTaskInput
    ImageName: string
    AmiName: string
    IamRoleArn: string
    TagSpecifications: {string : string}
    AmiDescription: string
end

local record CreateExportImageTaskOutput
    ExportImageTask: ExportImageTask
end

local record CreateFleetInput
    Name: string
    ImageName: string
    ImageArn: string
    InstanceType: string
    FleetType: string
    ComputeCapacity: ComputeCapacity
    VpcConfig: VpcConfig
    MaxUserDurationInSeconds: number
    DisconnectTimeoutInSeconds: number
    Description: string
    DisplayName: string
    EnableDefaultInternetAccess: boolean
    DomainJoinInfo: DomainJoinInfo
    Tags: {string : string}
    IdleDisconnectTimeoutInSeconds: number
    IamRoleArn: string
    StreamView: string
    Platform: string
    MaxConcurrentSessions: number
    UsbDeviceFilterStrings: {string}
    SessionScriptS3Location: S3Location
    MaxSessionsPerInstance: number
    RootVolumeConfig: VolumeConfig
    DisableIMDSV1: boolean
end

local record CreateFleetOutput
    Fleet: Fleet
end

local record CreateImageBuilderInput
    Name: string
    ImageName: string
    ImageArn: string
    InstanceType: string
    Description: string
    DisplayName: string
    VpcConfig: VpcConfig
    IamRoleArn: string
    EnableDefaultInternetAccess: boolean
    DomainJoinInfo: DomainJoinInfo
    AppstreamAgentVersion: string
    Tags: {string : string}
    AccessEndpoints: {AccessEndpoint}
    RootVolumeConfig: VolumeConfig
    SoftwaresToInstall: {string}
    SoftwaresToUninstall: {string}
    DisableIMDSV1: boolean
end

local record CreateImageBuilderOutput
    ImageBuilder: ImageBuilder
end

local record CreateImageBuilderStreamingURLInput
    Name: string
    Validity: number
end

local record CreateImageBuilderStreamingURLOutput
    StreamingURL: string
    Expires: number
end

local record CreateImportedImageInput
    Name: string
    SourceAmiId: string
    IamRoleArn: string
    Description: string
    DisplayName: string
    Tags: {string : string}
    RuntimeValidationConfig: RuntimeValidationConfig
    AgentSoftwareVersion: string
    AppCatalogConfig: {ApplicationConfig}
    DryRun: boolean
end

local record CreateImportedImageOutput
    Image: Image
end

local record CreateStackInput
    Name: string
    Description: string
    DisplayName: string
    StorageConnectors: {StorageConnector}
    RedirectURL: string
    FeedbackURL: string
    UserSettings: {UserSetting}
    ApplicationSettings: ApplicationSettings
    Tags: {string : string}
    AccessEndpoints: {AccessEndpoint}
    EmbedHostDomains: {string}
    StreamingExperienceSettings: StreamingExperienceSettings
    ContentRedirection: ContentRedirection
    AgentAccessConfig: AgentAccessConfig
end

local record CreateStackOutput
    Stack: Stack
end

local record CreateStreamingURLInput
    StackName: string
    FleetName: string
    UserId: string
    ApplicationId: string
    Validity: number
    SessionContext: string
end

local record CreateStreamingURLOutput
    StreamingURL: string
    Expires: number
end

local record CreateThemeForStackInput
    StackName: string
    FooterLinks: {ThemeFooterLink}
    TitleText: string
    ThemeStyling: string
    OrganizationLogoS3Location: S3Location
    FaviconS3Location: S3Location
end

local record CreateThemeForStackOutput
    Theme: Theme
end

local record CreateUpdatedImageInput
    existingImageName: string
    newImageName: string
    newImageDescription: string
    newImageDisplayName: string
    newImageTags: {string : string}
    dryRun: boolean
end

local record CreateUpdatedImageOutput
    image: Image
    canUpdateImage: boolean
end

local record CreateUsageReportSubscriptionInput
end

local record CreateUsageReportSubscriptionOutput
    S3BucketName: string
    Schedule: string
end

local record CreateUserInput
    UserName: string
    MessageAction: string
    FirstName: string
    LastName: string
    AuthenticationType: string
end

local record CreateUserOutput
end

local record DeleteAppBlockInput
    Name: string
end

local record DeleteAppBlockOutput
end

local record DeleteAppBlockBuilderInput
    Name: string
end

local record DeleteAppBlockBuilderOutput
end

local record DeleteApplicationInput
    Name: string
end

local record DeleteApplicationOutput
end

local record DeleteDirectoryConfigInput
    DirectoryName: string
end

local record DeleteDirectoryConfigOutput
end

local record DeleteEntitlementInput
    Name: string
    StackName: string
end

local record DeleteEntitlementOutput
end

local record DeleteFleetInput
    Name: string
end

local record DeleteFleetOutput
end

local record DeleteImageInput
    Name: string
end

local record DeleteImageOutput
    Image: Image
end

local record DeleteImageBuilderInput
    Name: string
end

local record DeleteImageBuilderOutput
    ImageBuilder: ImageBuilder
end

local record DeleteImagePermissionsInput
    Name: string
    SharedAccountId: string
end

local record DeleteImagePermissionsOutput
end

local record DeleteStackInput
    Name: string
end

local record DeleteStackOutput
end

local record DeleteThemeForStackInput
    StackName: string
end

local record DeleteThemeForStackOutput
end

local record DeleteUsageReportSubscriptionInput
end

local record DeleteUsageReportSubscriptionOutput
end

local record DeleteUserInput
    UserName: string
    AuthenticationType: string
end

local record DeleteUserOutput
end

local record DescribeAppBlockBuilderAppBlockAssociationsInput
    AppBlockArn: string
    AppBlockBuilderName: string
    MaxResults: number
    NextToken: string
end

local record DescribeAppBlockBuilderAppBlockAssociationsOutput
    AppBlockBuilderAppBlockAssociations: {AppBlockBuilderAppBlockAssociation}
    NextToken: string
end

local record DescribeAppBlockBuildersInput
    Names: {string}
    NextToken: string
    MaxResults: number
end

local record DescribeAppBlockBuildersOutput
    AppBlockBuilders: {AppBlockBuilder}
    NextToken: string
end

local record DescribeAppBlocksInput
    Arns: {string}
    NextToken: string
    MaxResults: number
end

local record DescribeAppBlocksOutput
    AppBlocks: {AppBlock}
    NextToken: string
end

local record DescribeApplicationFleetAssociationsInput
    FleetName: string
    ApplicationArn: string
    MaxResults: number
    NextToken: string
end

local record DescribeApplicationFleetAssociationsOutput
    ApplicationFleetAssociations: {ApplicationFleetAssociation}
    NextToken: string
end

local record DescribeApplicationsInput
    Arns: {string}
    NextToken: string
    MaxResults: number
end

local record DescribeApplicationsOutput
    Applications: {Application}
    NextToken: string
end

local record DescribeAppLicenseUsageInput
    BillingPeriod: string
    MaxResults: number
    NextToken: string
end

local record DescribeAppLicenseUsageOutput
    AppLicenseUsages: {AdminAppLicenseUsageRecord}
    NextToken: string
end

local record DescribeDirectoryConfigsInput
    DirectoryNames: {string}
    MaxResults: number
    NextToken: string
end

local record DescribeDirectoryConfigsOutput
    DirectoryConfigs: {DirectoryConfig}
    NextToken: string
end

local record DescribeEntitlementsInput
    Name: string
    StackName: string
    NextToken: string
    MaxResults: number
end

local record DescribeEntitlementsOutput
    Entitlements: {Entitlement}
    NextToken: string
end

local record DescribeFleetsInput
    Names: {string}
    NextToken: string
end

local record DescribeFleetsOutput
    Fleets: {Fleet}
    NextToken: string
end

local record DescribeImageBuildersInput
    Names: {string}
    MaxResults: number
    NextToken: string
end

local record DescribeImageBuildersOutput
    ImageBuilders: {ImageBuilder}
    NextToken: string
end

local record DescribeImagePermissionsInput
    Name: string
    MaxResults: number
    SharedAwsAccountIds: {string}
    NextToken: string
end

local record DescribeImagePermissionsOutput
    Name: string
    SharedImagePermissionsList: {SharedImagePermissions}
    NextToken: string
end

local record DescribeImagesInput
    Names: {string}
    Arns: {string}
    Type: string
    NextToken: string
    MaxResults: number
end

local record DescribeImagesOutput
    Images: {Image}
    NextToken: string
end

local record DescribeSessionsInput
    StackName: string
    FleetName: string
    UserId: string
    NextToken: string
    Limit: number
    AuthenticationType: string
    InstanceId: string
end

local record DescribeSessionsOutput
    Sessions: {Session}
    NextToken: string
end

local record DescribeSoftwareAssociationsInput
    AssociatedResource: string
    MaxResults: number
    NextToken: string
end

local record DescribeSoftwareAssociationsOutput
    AssociatedResource: string
    SoftwareAssociations: {SoftwareAssociations}
    NextToken: string
end

local record DescribeStacksInput
    Names: {string}
    NextToken: string
end

local record DescribeStacksOutput
    Stacks: {Stack}
    NextToken: string
end

local record DescribeThemeForStackInput
    StackName: string
end

local record DescribeThemeForStackOutput
    Theme: Theme
end

local record DescribeUsageReportSubscriptionsInput
    MaxResults: number
    NextToken: string
end

local record DescribeUsageReportSubscriptionsOutput
    UsageReportSubscriptions: {UsageReportSubscription}
    NextToken: string
end

local record DescribeUsersInput
    AuthenticationType: string
    MaxResults: number
    NextToken: string
end

local record DescribeUsersOutput
    Users: {User}
    NextToken: string
end

local record DescribeUserStackAssociationsInput
    StackName: string
    UserName: string
    AuthenticationType: string
    MaxResults: number
    NextToken: string
end

local record DescribeUserStackAssociationsOutput
    UserStackAssociations: {UserStackAssociation}
    NextToken: string
end

local record DisableUserInput
    UserName: string
    AuthenticationType: string
end

local record DisableUserOutput
end

local record DisassociateAppBlockBuilderAppBlockInput
    AppBlockArn: string
    AppBlockBuilderName: string
end

local record DisassociateAppBlockBuilderAppBlockOutput
end

local record DisassociateApplicationFleetInput
    FleetName: string
    ApplicationArn: string
end

local record DisassociateApplicationFleetOutput
end

local record DisassociateApplicationFromEntitlementInput
    StackName: string
    EntitlementName: string
    ApplicationIdentifier: string
end

local record DisassociateApplicationFromEntitlementOutput
end

local record DisassociateFleetInput
    FleetName: string
    StackName: string
end

local record DisassociateFleetOutput
end

local record DisassociateSoftwareFromImageBuilderInput
    ImageBuilderName: string
    SoftwareNames: {string}
end

local record DisassociateSoftwareFromImageBuilderOutput
end

local record DrainSessionInstanceInput
    SessionId: string
end

local record DrainSessionInstanceOutput
end

local record EnableUserInput
    UserName: string
    AuthenticationType: string
end

local record EnableUserOutput
end

local record ExpireSessionInput
    SessionId: string
end

local record ExpireSessionOutput
end

local record GetExportImageTaskInput
    TaskId: string
end

local record GetExportImageTaskOutput
    ExportImageTask: ExportImageTask
end

local record ListAssociatedFleetsInput
    StackName: string
    NextToken: string
end

local record ListAssociatedFleetsOutput
    Names: {string}
    NextToken: string
end

local record ListAssociatedStacksInput
    FleetName: string
    NextToken: string
end

local record ListAssociatedStacksOutput
    Names: {string}
    NextToken: string
end

local record ListEntitledApplicationsInput
    StackName: string
    EntitlementName: string
    NextToken: string
    MaxResults: number
end

local record ListEntitledApplicationsOutput
    EntitledApplications: {EntitledApplication}
    NextToken: string
end

local record ListExportImageTasksInput
    Filters: {Filter}
    MaxResults: number
    NextToken: string
end

local record ListExportImageTasksOutput
    ExportImageTasks: {ExportImageTask}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
end

local record StartAppBlockBuilderInput
    Name: string
end

local record StartAppBlockBuilderOutput
    AppBlockBuilder: AppBlockBuilder
end

local record StartFleetInput
    Name: string
end

local record StartFleetOutput
end

local record StartImageBuilderInput
    Name: string
    AppstreamAgentVersion: string
end

local record StartImageBuilderOutput
    ImageBuilder: ImageBuilder
end

local record StartSoftwareDeploymentToImageBuilderInput
    ImageBuilderName: string
    RetryFailedDeployments: boolean
end

local record StartSoftwareDeploymentToImageBuilderOutput
end

local record StopAppBlockBuilderInput
    Name: string
end

local record StopAppBlockBuilderOutput
    AppBlockBuilder: AppBlockBuilder
end

local record StopFleetInput
    Name: string
end

local record StopFleetOutput
end

local record StopImageBuilderInput
    Name: string
end

local record StopImageBuilderOutput
    ImageBuilder: ImageBuilder
end

local record TagResourceInput
    ResourceArn: string
    Tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateAppBlockBuilderInput
    Name: string
    Description: string
    DisplayName: string
    Platform: string
    InstanceType: string
    VpcConfig: VpcConfig
    EnableDefaultInternetAccess: boolean
    IamRoleArn: string
    AccessEndpoints: {AccessEndpoint}
    AttributesToDelete: {string}
    DisableIMDSV1: boolean
end

local record UpdateAppBlockBuilderOutput
    AppBlockBuilder: AppBlockBuilder
end

local record UpdateApplicationInput
    Name: string
    DisplayName: string
    Description: string
    IconS3Location: S3Location
    LaunchPath: string
    WorkingDirectory: string
    LaunchParameters: string
    AppBlockArn: string
    AttributesToDelete: {string}
end

local record UpdateApplicationOutput
    Application: Application
end

local record UpdateDirectoryConfigInput
    DirectoryName: string
    OrganizationalUnitDistinguishedNames: {string}
    ServiceAccountCredentials: ServiceAccountCredentials
    CertificateBasedAuthProperties: CertificateBasedAuthProperties
end

local record UpdateDirectoryConfigOutput
    DirectoryConfig: DirectoryConfig
end

local record UpdateEntitlementInput
    Name: string
    StackName: string
    Description: string
    AppVisibility: string
    Attributes: {EntitlementAttribute}
end

local record UpdateEntitlementOutput
    Entitlement: Entitlement
end

local record UpdateFleetInput
    ImageName: string
    ImageArn: string
    Name: string
    InstanceType: string
    ComputeCapacity: ComputeCapacity
    VpcConfig: VpcConfig
    MaxUserDurationInSeconds: number
    DisconnectTimeoutInSeconds: number
    DeleteVpcConfig: boolean
    Description: string
    DisplayName: string
    EnableDefaultInternetAccess: boolean
    DomainJoinInfo: DomainJoinInfo
    IdleDisconnectTimeoutInSeconds: number
    AttributesToDelete: {string}
    IamRoleArn: string
    StreamView: string
    Platform: string
    MaxConcurrentSessions: number
    UsbDeviceFilterStrings: {string}
    SessionScriptS3Location: S3Location
    MaxSessionsPerInstance: number
    RootVolumeConfig: VolumeConfig
    DisableIMDSV1: boolean
end

local record UpdateFleetOutput
    Fleet: Fleet
end

local record UpdateImagePermissionsInput
    Name: string
    SharedAccountId: string
    ImagePermissions: ImagePermissions
end

local record UpdateImagePermissionsOutput
end

local record UpdateStackInput
    DisplayName: string
    Description: string
    Name: string
    StorageConnectors: {StorageConnector}
    DeleteStorageConnectors: boolean
    RedirectURL: string
    FeedbackURL: string
    AttributesToDelete: {string}
    UserSettings: {UserSetting}
    ApplicationSettings: ApplicationSettings
    AccessEndpoints: {AccessEndpoint}
    EmbedHostDomains: {string}
    StreamingExperienceSettings: StreamingExperienceSettings
    ContentRedirection: ContentRedirection
    AgentAccessConfig: AgentAccessConfigForUpdate
end

local record UpdateStackOutput
    Stack: Stack
end

local record UpdateThemeForStackInput
    StackName: string
    FooterLinks: {ThemeFooterLink}
    TitleText: string
    ThemeStyling: string
    OrganizationLogoS3Location: S3Location
    FaviconS3Location: S3Location
    State: string
    AttributesToDelete: {string}
end

local record UpdateThemeForStackOutput
    Theme: Theme
end

local record ConcurrentModificationException
    Message: string
end

local record InvalidParameterCombinationException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InvalidParameterCombinationException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record EntitlementNotFoundException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record IncompatibleImageException
    Message: string
end

local record InvalidAccountStatusException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record IncompatibleImageException
    Message: string
end

local record InvalidParameterCombinationException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParameterCombinationException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record InvalidParameterCombinationException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record IncompatibleImageException
    Message: string
end

local record InvalidAccountStatusException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record ResourceNotAvailableException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InvalidAccountStatusException
    Message: string
end

local record InvalidParameterCombinationException
    Message: string
end

local record InvalidRoleException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record RequestLimitExceededException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record ResourceNotAvailableException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidAccountStatusException
    Message: string
end

local record InvalidRoleException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record EntitlementAlreadyExistsException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InvalidAccountStatusException
    Message: string
end

local record InvalidRoleException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotAvailableException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record IncompatibleImageException
    Message: string
end

local record InvalidAccountStatusException
    Message: string
end

local record InvalidParameterCombinationException
    Message: string
end

local record InvalidRoleException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record RequestLimitExceededException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record ResourceNotAvailableException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record IncompatibleImageException
    Message: string
end

local record InvalidAccountStatusException
    Message: string
end

local record InvalidParameterCombinationException
    Message: string
end

local record InvalidRoleException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record RequestLimitExceededException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record ResourceNotAvailableException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record DryRunOperationException
    Message: string
end

local record IncompatibleImageException
    Message: string
end

local record InvalidAccountStatusException
    Message: string
end

local record InvalidRoleException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InvalidAccountStatusException
    Message: string
end

local record InvalidParameterCombinationException
    Message: string
end

local record InvalidRoleException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParameterCombinationException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotAvailableException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InvalidAccountStatusException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record IncompatibleImageException
    Message: string
end

local record InvalidAccountStatusException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidAccountStatusException
    Message: string
end

local record InvalidRoleException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record InvalidAccountStatusException
    Message: string
end

local record InvalidParameterCombinationException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntitlementNotFoundException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceNotAvailableException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidAccountStatusException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParameterCombinationException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParameterCombinationException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParameterCombinationException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record EntitlementNotFoundException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParameterCombinationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParameterCombinationException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidAccountStatusException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParameterCombinationException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidParameterCombinationException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InvalidParameterCombinationException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InvalidParameterCombinationException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record EntitlementNotFoundException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InvalidParameterCombinationException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidAccountStatusException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record EntitlementNotFoundException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InvalidAccountStatusException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record RequestLimitExceededException
    Message: string
end

local record ResourceNotAvailableException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InvalidAccountStatusException
    Message: string
end

local record InvalidRoleException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record RequestLimitExceededException
    Message: string
end

local record ResourceNotAvailableException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record IncompatibleImageException
    Message: string
end

local record InvalidAccountStatusException
    Message: string
end

local record ResourceNotAvailableException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidAccountStatusException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InvalidAccountStatusException
    Message: string
end

local record InvalidParameterCombinationException
    Message: string
end

local record InvalidRoleException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record RequestLimitExceededException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotAvailableException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record IncompatibleImageException
    Message: string
end

local record InvalidRoleException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntitlementNotFoundException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record IncompatibleImageException
    Message: string
end

local record InvalidAccountStatusException
    Message: string
end

local record InvalidParameterCombinationException
    Message: string
end

local record InvalidRoleException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record RequestLimitExceededException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotAvailableException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotAvailableException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record IncompatibleImageException
    Message: string
end

local record InvalidAccountStatusException
    Message: string
end

local record InvalidParameterCombinationException
    Message: string
end

local record InvalidRoleException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InvalidAccountStatusException
    Message: string
end

local record InvalidParameterCombinationException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local type AppBlockBuilderPlatformType = "WINDOWS_SERVER_2019"

local type ThemeStyling = "LIGHT_BLUE" | "BLUE" | "PINK" | "RED"

local type PlatformType = "WINDOWS" | "WINDOWS_SERVER_2016" | "WINDOWS_SERVER_2019" | "WINDOWS_SERVER_2022" | "WINDOWS_SERVER_2025" | "AMAZON_LINUX2" | "RHEL8" | "ROCKY_LINUX8" | "UBUNTU_PRO_2404"

local type AppVisibility = "ALL" | "ASSOCIATED"

local type UsageReportSchedule = "DAILY"

local type AuthenticationType = "API" | "SAML" | "USERPOOL" | "AWS_AD"

local type AgentSoftwareVersion = "CURRENT_LATEST" | "ALWAYS_LATEST"

local type ThemeState = "ENABLED" | "DISABLED"

local type FleetType = "ALWAYS_ON" | "ON_DEMAND" | "ELASTIC"

local type PackagingType = "CUSTOM" | "APPSTREAM2"

local type StreamView = "APP" | "DESKTOP"

local type VisibilityType = "PUBLIC" | "PRIVATE" | "SHARED"

local type MessageAction = "SUPPRESS" | "RESEND"

local record M
    AssociateAppBlockBuilderAppBlockInput: AssociateAppBlockBuilderAppBlockInput
    AssociateAppBlockBuilderAppBlockOutput: AssociateAppBlockBuilderAppBlockOutput
    AssociateApplicationFleetInput: AssociateApplicationFleetInput
    AssociateApplicationFleetOutput: AssociateApplicationFleetOutput
    AssociateApplicationToEntitlementInput: AssociateApplicationToEntitlementInput
    AssociateApplicationToEntitlementOutput: AssociateApplicationToEntitlementOutput
    AssociateFleetInput: AssociateFleetInput
    AssociateFleetOutput: AssociateFleetOutput
    AssociateSoftwareToImageBuilderInput: AssociateSoftwareToImageBuilderInput
    AssociateSoftwareToImageBuilderOutput: AssociateSoftwareToImageBuilderOutput
    BatchAssociateUserStackInput: BatchAssociateUserStackInput
    BatchAssociateUserStackOutput: BatchAssociateUserStackOutput
    BatchDisassociateUserStackInput: BatchDisassociateUserStackInput
    BatchDisassociateUserStackOutput: BatchDisassociateUserStackOutput
    CopyImageInput: CopyImageInput
    CopyImageOutput: CopyImageOutput
    CreateAppBlockInput: CreateAppBlockInput
    CreateAppBlockOutput: CreateAppBlockOutput
    CreateAppBlockBuilderInput: CreateAppBlockBuilderInput
    CreateAppBlockBuilderOutput: CreateAppBlockBuilderOutput
    CreateAppBlockBuilderStreamingURLInput: CreateAppBlockBuilderStreamingURLInput
    CreateAppBlockBuilderStreamingURLOutput: CreateAppBlockBuilderStreamingURLOutput
    CreateApplicationInput: CreateApplicationInput
    CreateApplicationOutput: CreateApplicationOutput
    CreateDirectoryConfigInput: CreateDirectoryConfigInput
    CreateDirectoryConfigOutput: CreateDirectoryConfigOutput
    CreateEntitlementInput: CreateEntitlementInput
    CreateEntitlementOutput: CreateEntitlementOutput
    CreateExportImageTaskInput: CreateExportImageTaskInput
    CreateExportImageTaskOutput: CreateExportImageTaskOutput
    CreateFleetInput: CreateFleetInput
    CreateFleetOutput: CreateFleetOutput
    CreateImageBuilderInput: CreateImageBuilderInput
    CreateImageBuilderOutput: CreateImageBuilderOutput
    CreateImageBuilderStreamingURLInput: CreateImageBuilderStreamingURLInput
    CreateImageBuilderStreamingURLOutput: CreateImageBuilderStreamingURLOutput
    CreateImportedImageInput: CreateImportedImageInput
    CreateImportedImageOutput: CreateImportedImageOutput
    CreateStackInput: CreateStackInput
    CreateStackOutput: CreateStackOutput
    CreateStreamingURLInput: CreateStreamingURLInput
    CreateStreamingURLOutput: CreateStreamingURLOutput
    CreateThemeForStackInput: CreateThemeForStackInput
    CreateThemeForStackOutput: CreateThemeForStackOutput
    CreateUpdatedImageInput: CreateUpdatedImageInput
    CreateUpdatedImageOutput: CreateUpdatedImageOutput
    CreateUsageReportSubscriptionInput: CreateUsageReportSubscriptionInput
    CreateUsageReportSubscriptionOutput: CreateUsageReportSubscriptionOutput
    CreateUserInput: CreateUserInput
    CreateUserOutput: CreateUserOutput
    DeleteAppBlockInput: DeleteAppBlockInput
    DeleteAppBlockOutput: DeleteAppBlockOutput
    DeleteAppBlockBuilderInput: DeleteAppBlockBuilderInput
    DeleteAppBlockBuilderOutput: DeleteAppBlockBuilderOutput
    DeleteApplicationInput: DeleteApplicationInput
    DeleteApplicationOutput: DeleteApplicationOutput
    DeleteDirectoryConfigInput: DeleteDirectoryConfigInput
    DeleteDirectoryConfigOutput: DeleteDirectoryConfigOutput
    DeleteEntitlementInput: DeleteEntitlementInput
    DeleteEntitlementOutput: DeleteEntitlementOutput
    DeleteFleetInput: DeleteFleetInput
    DeleteFleetOutput: DeleteFleetOutput
    DeleteImageInput: DeleteImageInput
    DeleteImageOutput: DeleteImageOutput
    DeleteImageBuilderInput: DeleteImageBuilderInput
    DeleteImageBuilderOutput: DeleteImageBuilderOutput
    DeleteImagePermissionsInput: DeleteImagePermissionsInput
    DeleteImagePermissionsOutput: DeleteImagePermissionsOutput
    DeleteStackInput: DeleteStackInput
    DeleteStackOutput: DeleteStackOutput
    DeleteThemeForStackInput: DeleteThemeForStackInput
    DeleteThemeForStackOutput: DeleteThemeForStackOutput
    DeleteUsageReportSubscriptionInput: DeleteUsageReportSubscriptionInput
    DeleteUsageReportSubscriptionOutput: DeleteUsageReportSubscriptionOutput
    DeleteUserInput: DeleteUserInput
    DeleteUserOutput: DeleteUserOutput
    DescribeAppBlockBuilderAppBlockAssociationsInput: DescribeAppBlockBuilderAppBlockAssociationsInput
    DescribeAppBlockBuilderAppBlockAssociationsOutput: DescribeAppBlockBuilderAppBlockAssociationsOutput
    DescribeAppBlockBuildersInput: DescribeAppBlockBuildersInput
    DescribeAppBlockBuildersOutput: DescribeAppBlockBuildersOutput
    DescribeAppBlocksInput: DescribeAppBlocksInput
    DescribeAppBlocksOutput: DescribeAppBlocksOutput
    DescribeApplicationFleetAssociationsInput: DescribeApplicationFleetAssociationsInput
    DescribeApplicationFleetAssociationsOutput: DescribeApplicationFleetAssociationsOutput
    DescribeApplicationsInput: DescribeApplicationsInput
    DescribeApplicationsOutput: DescribeApplicationsOutput
    DescribeAppLicenseUsageInput: DescribeAppLicenseUsageInput
    DescribeAppLicenseUsageOutput: DescribeAppLicenseUsageOutput
    DescribeDirectoryConfigsInput: DescribeDirectoryConfigsInput
    DescribeDirectoryConfigsOutput: DescribeDirectoryConfigsOutput
    DescribeEntitlementsInput: DescribeEntitlementsInput
    DescribeEntitlementsOutput: DescribeEntitlementsOutput
    DescribeFleetsInput: DescribeFleetsInput
    DescribeFleetsOutput: DescribeFleetsOutput
    DescribeImageBuildersInput: DescribeImageBuildersInput
    DescribeImageBuildersOutput: DescribeImageBuildersOutput
    DescribeImagePermissionsInput: DescribeImagePermissionsInput
    DescribeImagePermissionsOutput: DescribeImagePermissionsOutput
    DescribeImagesInput: DescribeImagesInput
    DescribeImagesOutput: DescribeImagesOutput
    DescribeSessionsInput: DescribeSessionsInput
    DescribeSessionsOutput: DescribeSessionsOutput
    DescribeSoftwareAssociationsInput: DescribeSoftwareAssociationsInput
    DescribeSoftwareAssociationsOutput: DescribeSoftwareAssociationsOutput
    DescribeStacksInput: DescribeStacksInput
    DescribeStacksOutput: DescribeStacksOutput
    DescribeThemeForStackInput: DescribeThemeForStackInput
    DescribeThemeForStackOutput: DescribeThemeForStackOutput
    DescribeUsageReportSubscriptionsInput: DescribeUsageReportSubscriptionsInput
    DescribeUsageReportSubscriptionsOutput: DescribeUsageReportSubscriptionsOutput
    DescribeUsersInput: DescribeUsersInput
    DescribeUsersOutput: DescribeUsersOutput
    DescribeUserStackAssociationsInput: DescribeUserStackAssociationsInput
    DescribeUserStackAssociationsOutput: DescribeUserStackAssociationsOutput
    DisableUserInput: DisableUserInput
    DisableUserOutput: DisableUserOutput
    DisassociateAppBlockBuilderAppBlockInput: DisassociateAppBlockBuilderAppBlockInput
    DisassociateAppBlockBuilderAppBlockOutput: DisassociateAppBlockBuilderAppBlockOutput
    DisassociateApplicationFleetInput: DisassociateApplicationFleetInput
    DisassociateApplicationFleetOutput: DisassociateApplicationFleetOutput
    DisassociateApplicationFromEntitlementInput: DisassociateApplicationFromEntitlementInput
    DisassociateApplicationFromEntitlementOutput: DisassociateApplicationFromEntitlementOutput
    DisassociateFleetInput: DisassociateFleetInput
    DisassociateFleetOutput: DisassociateFleetOutput
    DisassociateSoftwareFromImageBuilderInput: DisassociateSoftwareFromImageBuilderInput
    DisassociateSoftwareFromImageBuilderOutput: DisassociateSoftwareFromImageBuilderOutput
    DrainSessionInstanceInput: DrainSessionInstanceInput
    DrainSessionInstanceOutput: DrainSessionInstanceOutput
    EnableUserInput: EnableUserInput
    EnableUserOutput: EnableUserOutput
    ExpireSessionInput: ExpireSessionInput
    ExpireSessionOutput: ExpireSessionOutput
    GetExportImageTaskInput: GetExportImageTaskInput
    GetExportImageTaskOutput: GetExportImageTaskOutput
    ListAssociatedFleetsInput: ListAssociatedFleetsInput
    ListAssociatedFleetsOutput: ListAssociatedFleetsOutput
    ListAssociatedStacksInput: ListAssociatedStacksInput
    ListAssociatedStacksOutput: ListAssociatedStacksOutput
    ListEntitledApplicationsInput: ListEntitledApplicationsInput
    ListEntitledApplicationsOutput: ListEntitledApplicationsOutput
    ListExportImageTasksInput: ListExportImageTasksInput
    ListExportImageTasksOutput: ListExportImageTasksOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    StartAppBlockBuilderInput: StartAppBlockBuilderInput
    StartAppBlockBuilderOutput: StartAppBlockBuilderOutput
    StartFleetInput: StartFleetInput
    StartFleetOutput: StartFleetOutput
    StartImageBuilderInput: StartImageBuilderInput
    StartImageBuilderOutput: StartImageBuilderOutput
    StartSoftwareDeploymentToImageBuilderInput: StartSoftwareDeploymentToImageBuilderInput
    StartSoftwareDeploymentToImageBuilderOutput: StartSoftwareDeploymentToImageBuilderOutput
    StopAppBlockBuilderInput: StopAppBlockBuilderInput
    StopAppBlockBuilderOutput: StopAppBlockBuilderOutput
    StopFleetInput: StopFleetInput
    StopFleetOutput: StopFleetOutput
    StopImageBuilderInput: StopImageBuilderInput
    StopImageBuilderOutput: StopImageBuilderOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAppBlockBuilderInput: UpdateAppBlockBuilderInput
    UpdateAppBlockBuilderOutput: UpdateAppBlockBuilderOutput
    UpdateApplicationInput: UpdateApplicationInput
    UpdateApplicationOutput: UpdateApplicationOutput
    UpdateDirectoryConfigInput: UpdateDirectoryConfigInput
    UpdateDirectoryConfigOutput: UpdateDirectoryConfigOutput
    UpdateEntitlementInput: UpdateEntitlementInput
    UpdateEntitlementOutput: UpdateEntitlementOutput
    UpdateFleetInput: UpdateFleetInput
    UpdateFleetOutput: UpdateFleetOutput
    UpdateImagePermissionsInput: UpdateImagePermissionsInput
    UpdateImagePermissionsOutput: UpdateImagePermissionsOutput
    UpdateStackInput: UpdateStackInput
    UpdateStackOutput: UpdateStackOutput
    UpdateThemeForStackInput: UpdateThemeForStackInput
    UpdateThemeForStackOutput: UpdateThemeForStackOutput
end

return M
