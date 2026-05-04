local record AbortEnvironmentUpdateInput
    EnvironmentId: string
    EnvironmentName: string
end

local record AbortEnvironmentUpdateOutput
end

local record ApplyEnvironmentManagedActionInput
    EnvironmentName: string
    EnvironmentId: string
    ActionId: string
end

local record ApplyEnvironmentManagedActionOutput
    ActionId: string
    ActionDescription: string
    ActionType: string
    Status: string
end

local record AssociateEnvironmentOperationsRoleInput
    EnvironmentName: string
    OperationsRole: string
end

local record AssociateEnvironmentOperationsRoleOutput
end

local record CheckDNSAvailabilityInput
    CNAMEPrefix: string
end

local record CheckDNSAvailabilityOutput
    Available: boolean
    FullyQualifiedCNAME: string
end

local record ComposeEnvironmentsInput
    ApplicationName: string
    GroupName: string
    VersionLabels: {string}
end

local record ComposeEnvironmentsOutput
    Environments: {EnvironmentDescription}
    NextToken: string
end

local record CreateApplicationInput
    ApplicationName: string
    Description: string
    ResourceLifecycleConfig: ApplicationResourceLifecycleConfig
    Tags: {Tag}
end

local record CreateApplicationOutput
    Application: ApplicationDescription
end

local record CreateApplicationVersionInput
    ApplicationName: string
    VersionLabel: string
    Description: string
    SourceBuildInformation: SourceBuildInformation
    SourceBundle: S3Location
    BuildConfiguration: BuildConfiguration
    AutoCreateApplication: boolean
    Process: boolean
    Tags: {Tag}
end

local record CreateApplicationVersionOutput
    ApplicationVersion: ApplicationVersionDescription
end

local record CreateConfigurationTemplateInput
    ApplicationName: string
    TemplateName: string
    SolutionStackName: string
    PlatformArn: string
    SourceConfiguration: SourceConfiguration
    EnvironmentId: string
    Description: string
    OptionSettings: {ConfigurationOptionSetting}
    Tags: {Tag}
end

local record CreateConfigurationTemplateOutput
    SolutionStackName: string
    PlatformArn: string
    ApplicationName: string
    TemplateName: string
    Description: string
    EnvironmentName: string
    DeploymentStatus: string
    DateCreated: number
    DateUpdated: number
    OptionSettings: {ConfigurationOptionSetting}
end

local record CreateEnvironmentInput
    ApplicationName: string
    EnvironmentName: string
    GroupName: string
    Description: string
    CNAMEPrefix: string
    Tier: EnvironmentTier
    Tags: {Tag}
    VersionLabel: string
    TemplateName: string
    SolutionStackName: string
    PlatformArn: string
    OptionSettings: {ConfigurationOptionSetting}
    OptionsToRemove: {OptionSpecification}
    OperationsRole: string
end

local record CreateEnvironmentOutput
    EnvironmentName: string
    EnvironmentId: string
    ApplicationName: string
    VersionLabel: string
    SolutionStackName: string
    PlatformArn: string
    TemplateName: string
    Description: string
    EndpointURL: string
    CNAME: string
    DateCreated: number
    DateUpdated: number
    Status: string
    AbortableOperationInProgress: boolean
    Health: string
    HealthStatus: string
    Resources: EnvironmentResourcesDescription
    Tier: EnvironmentTier
    EnvironmentLinks: {EnvironmentLink}
    EnvironmentArn: string
    OperationsRole: string
end

local record CreatePlatformVersionInput
    PlatformName: string
    PlatformVersion: string
    PlatformDefinitionBundle: S3Location
    EnvironmentName: string
    OptionSettings: {ConfigurationOptionSetting}
    Tags: {Tag}
end

local record CreatePlatformVersionOutput
    PlatformSummary: PlatformSummary
    Builder: Builder
end

local record CreateStorageLocationInput
end

local record CreateStorageLocationOutput
    S3Bucket: string
end

local record DeleteApplicationInput
    ApplicationName: string
    TerminateEnvByForce: boolean
end

local record DeleteApplicationOutput
end

local record DeleteApplicationVersionInput
    ApplicationName: string
    VersionLabel: string
    DeleteSourceBundle: boolean
end

local record DeleteApplicationVersionOutput
end

local record DeleteConfigurationTemplateInput
    ApplicationName: string
    TemplateName: string
end

local record DeleteConfigurationTemplateOutput
end

local record DeleteEnvironmentConfigurationInput
    ApplicationName: string
    EnvironmentName: string
end

local record DeleteEnvironmentConfigurationOutput
end

local record DeletePlatformVersionInput
    PlatformArn: string
end

local record DeletePlatformVersionOutput
    PlatformSummary: PlatformSummary
end

local record DescribeAccountAttributesInput
end

local record DescribeAccountAttributesOutput
    ResourceQuotas: ResourceQuotas
end

local record DescribeApplicationsInput
    ApplicationNames: {string}
end

local record DescribeApplicationsOutput
    Applications: {ApplicationDescription}
end

local record DescribeApplicationVersionsInput
    ApplicationName: string
    VersionLabels: {string}
    MaxRecords: number
    NextToken: string
end

local record DescribeApplicationVersionsOutput
    ApplicationVersions: {ApplicationVersionDescription}
    NextToken: string
end

local record DescribeConfigurationOptionsInput
    ApplicationName: string
    TemplateName: string
    EnvironmentName: string
    SolutionStackName: string
    PlatformArn: string
    Options: {OptionSpecification}
end

local record DescribeConfigurationOptionsOutput
    SolutionStackName: string
    PlatformArn: string
    Options: {ConfigurationOptionDescription}
end

local record DescribeConfigurationSettingsInput
    ApplicationName: string
    TemplateName: string
    EnvironmentName: string
end

local record DescribeConfigurationSettingsOutput
    ConfigurationSettings: {ConfigurationSettingsDescription}
end

local record DescribeEnvironmentHealthInput
    EnvironmentName: string
    EnvironmentId: string
    AttributeNames: {string}
end

local record DescribeEnvironmentHealthOutput
    EnvironmentName: string
    HealthStatus: string
    Status: string
    Color: string
    Causes: {string}
    ApplicationMetrics: ApplicationMetrics
    InstancesHealth: InstanceHealthSummary
    RefreshedAt: number
end

local record DescribeEnvironmentManagedActionHistoryInput
    EnvironmentId: string
    EnvironmentName: string
    NextToken: string
    MaxItems: number
end

local record DescribeEnvironmentManagedActionHistoryOutput
    ManagedActionHistoryItems: {ManagedActionHistoryItem}
    NextToken: string
end

local record DescribeEnvironmentManagedActionsInput
    EnvironmentName: string
    EnvironmentId: string
    Status: string
end

local record DescribeEnvironmentManagedActionsOutput
    ManagedActions: {ManagedAction}
end

local record DescribeEnvironmentResourcesInput
    EnvironmentId: string
    EnvironmentName: string
end

local record DescribeEnvironmentResourcesOutput
    EnvironmentResources: EnvironmentResourceDescription
end

local record DescribeEnvironmentsInput
    ApplicationName: string
    VersionLabel: string
    EnvironmentIds: {string}
    EnvironmentNames: {string}
    IncludeDeleted: boolean
    IncludedDeletedBackTo: number
    MaxRecords: number
    NextToken: string
end

local record DescribeEnvironmentsOutput
    Environments: {EnvironmentDescription}
    NextToken: string
end

local record DescribeEventsInput
    ApplicationName: string
    VersionLabel: string
    TemplateName: string
    EnvironmentId: string
    EnvironmentName: string
    PlatformArn: string
    RequestId: string
    Severity: string
    StartTime: number
    EndTime: number
    MaxRecords: number
    NextToken: string
end

local record DescribeEventsOutput
    Events: {EventDescription}
    NextToken: string
end

local record DescribeInstancesHealthInput
    EnvironmentName: string
    EnvironmentId: string
    AttributeNames: {string}
    NextToken: string
end

local record DescribeInstancesHealthOutput
    InstanceHealthList: {SingleInstanceHealth}
    RefreshedAt: number
    NextToken: string
end

local record DescribePlatformVersionInput
    PlatformArn: string
end

local record DescribePlatformVersionOutput
    PlatformDescription: PlatformDescription
end

local record DisassociateEnvironmentOperationsRoleInput
    EnvironmentName: string
end

local record DisassociateEnvironmentOperationsRoleOutput
end

local record ListAvailableSolutionStacksInput
end

local record ListAvailableSolutionStacksOutput
    SolutionStacks: {string}
    SolutionStackDetails: {SolutionStackDescription}
end

local record ListPlatformBranchesInput
    Filters: {SearchFilter}
    MaxRecords: number
    NextToken: string
end

local record ListPlatformBranchesOutput
    PlatformBranchSummaryList: {PlatformBranchSummary}
    NextToken: string
end

local record ListPlatformVersionsInput
    Filters: {PlatformFilter}
    MaxRecords: number
    NextToken: string
end

local record ListPlatformVersionsOutput
    PlatformSummaryList: {PlatformSummary}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    ResourceArn: string
    ResourceTags: {Tag}
end

local record RebuildEnvironmentInput
    EnvironmentId: string
    EnvironmentName: string
end

local record RebuildEnvironmentOutput
end

local record RequestEnvironmentInfoInput
    EnvironmentId: string
    EnvironmentName: string
    InfoType: string
end

local record RequestEnvironmentInfoOutput
end

local record RestartAppServerInput
    EnvironmentId: string
    EnvironmentName: string
end

local record RestartAppServerOutput
end

local record RetrieveEnvironmentInfoInput
    EnvironmentId: string
    EnvironmentName: string
    InfoType: string
end

local record RetrieveEnvironmentInfoOutput
    EnvironmentInfo: {EnvironmentInfoDescription}
end

local record SwapEnvironmentCNAMEsInput
    SourceEnvironmentId: string
    SourceEnvironmentName: string
    DestinationEnvironmentId: string
    DestinationEnvironmentName: string
end

local record SwapEnvironmentCNAMEsOutput
end

local record TerminateEnvironmentInput
    EnvironmentId: string
    EnvironmentName: string
    TerminateResources: boolean
    ForceTerminate: boolean
end

local record TerminateEnvironmentOutput
    EnvironmentName: string
    EnvironmentId: string
    ApplicationName: string
    VersionLabel: string
    SolutionStackName: string
    PlatformArn: string
    TemplateName: string
    Description: string
    EndpointURL: string
    CNAME: string
    DateCreated: number
    DateUpdated: number
    Status: string
    AbortableOperationInProgress: boolean
    Health: string
    HealthStatus: string
    Resources: EnvironmentResourcesDescription
    Tier: EnvironmentTier
    EnvironmentLinks: {EnvironmentLink}
    EnvironmentArn: string
    OperationsRole: string
end

local record UpdateApplicationInput
    ApplicationName: string
    Description: string
end

local record UpdateApplicationOutput
    Application: ApplicationDescription
end

local record UpdateApplicationResourceLifecycleInput
    ApplicationName: string
    ResourceLifecycleConfig: ApplicationResourceLifecycleConfig
end

local record UpdateApplicationResourceLifecycleOutput
    ApplicationName: string
    ResourceLifecycleConfig: ApplicationResourceLifecycleConfig
end

local record UpdateApplicationVersionInput
    ApplicationName: string
    VersionLabel: string
    Description: string
end

local record UpdateApplicationVersionOutput
    ApplicationVersion: ApplicationVersionDescription
end

local record UpdateConfigurationTemplateInput
    ApplicationName: string
    TemplateName: string
    Description: string
    OptionSettings: {ConfigurationOptionSetting}
    OptionsToRemove: {OptionSpecification}
end

local record UpdateConfigurationTemplateOutput
    SolutionStackName: string
    PlatformArn: string
    ApplicationName: string
    TemplateName: string
    Description: string
    EnvironmentName: string
    DeploymentStatus: string
    DateCreated: number
    DateUpdated: number
    OptionSettings: {ConfigurationOptionSetting}
end

local record UpdateEnvironmentInput
    ApplicationName: string
    EnvironmentId: string
    EnvironmentName: string
    GroupName: string
    Description: string
    Tier: EnvironmentTier
    VersionLabel: string
    TemplateName: string
    SolutionStackName: string
    PlatformArn: string
    OptionSettings: {ConfigurationOptionSetting}
    OptionsToRemove: {OptionSpecification}
end

local record UpdateEnvironmentOutput
    EnvironmentName: string
    EnvironmentId: string
    ApplicationName: string
    VersionLabel: string
    SolutionStackName: string
    PlatformArn: string
    TemplateName: string
    Description: string
    EndpointURL: string
    CNAME: string
    DateCreated: number
    DateUpdated: number
    Status: string
    AbortableOperationInProgress: boolean
    Health: string
    HealthStatus: string
    Resources: EnvironmentResourcesDescription
    Tier: EnvironmentTier
    EnvironmentLinks: {EnvironmentLink}
    EnvironmentArn: string
    OperationsRole: string
end

local record UpdateTagsForResourceInput
    ResourceArn: string
    TagsToAdd: {Tag}
    TagsToRemove: {string}
end

local record UpdateTagsForResourceOutput
end

local record ValidateConfigurationSettingsInput
    ApplicationName: string
    TemplateName: string
    EnvironmentName: string
    OptionSettings: {ConfigurationOptionSetting}
end

local record ValidateConfigurationSettingsOutput
    Messages: {ValidationMessage}
end

local record InsufficientPrivilegesException
    message: string
end

local record ElasticBeanstalkServiceException
    message: string
end

local record ManagedActionInvalidStateException
    message: string
end

local record InsufficientPrivilegesException
    message: string
end

local record InsufficientPrivilegesException
    message: string
end

local record TooManyEnvironmentsException
    message: string
end

local record TooManyApplicationsException
    message: string
end

local record CodeBuildNotInServiceRegionException
    message: string
end

local record InsufficientPrivilegesException
    message: string
end

local record S3LocationNotInServiceRegionException
    message: string
end

local record TooManyApplicationsException
    message: string
end

local record TooManyApplicationVersionsException
    message: string
end

local record InsufficientPrivilegesException
    message: string
end

local record TooManyBucketsException
    message: string
end

local record TooManyConfigurationTemplatesException
    message: string
end

local record InsufficientPrivilegesException
    message: string
end

local record TooManyEnvironmentsException
    message: string
end

local record ElasticBeanstalkServiceException
    message: string
end

local record InsufficientPrivilegesException
    message: string
end

local record TooManyPlatformsException
    message: string
end

local record InsufficientPrivilegesException
    message: string
end

local record S3SubscriptionRequiredException
    message: string
end

local record TooManyBucketsException
    message: string
end

local record OperationInProgressException
    message: string
end

local record InsufficientPrivilegesException
    message: string
end

local record OperationInProgressException
    message: string
end

local record S3LocationNotInServiceRegionException
    message: string
end

local record SourceBundleDeletionException
    message: string
end

local record OperationInProgressException
    message: string
end

local record ElasticBeanstalkServiceException
    message: string
end

local record InsufficientPrivilegesException
    message: string
end

local record OperationInProgressException
    message: string
end

local record PlatformVersionStillReferencedException
    message: string
end

local record InsufficientPrivilegesException
    message: string
end

local record TooManyBucketsException
    message: string
end

local record TooManyBucketsException
    message: string
end

local record ElasticBeanstalkServiceException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ElasticBeanstalkServiceException
    message: string
end

local record ElasticBeanstalkServiceException
    message: string
end

local record InsufficientPrivilegesException
    message: string
end

local record ElasticBeanstalkServiceException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ElasticBeanstalkServiceException
    message: string
end

local record InsufficientPrivilegesException
    message: string
end

local record InsufficientPrivilegesException
    message: string
end

local record ElasticBeanstalkServiceException
    message: string
end

local record InsufficientPrivilegesException
    message: string
end

local record InsufficientPrivilegesException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ResourceTypeNotSupportedException
    message: string
end

local record InsufficientPrivilegesException
    message: string
end

local record InsufficientPrivilegesException
    message: string
end

local record InsufficientPrivilegesException
    message: string
end

local record InsufficientPrivilegesException
    message: string
end

local record TooManyBucketsException
    message: string
end

local record InsufficientPrivilegesException
    message: string
end

local record TooManyBucketsException
    message: string
end

local record InsufficientPrivilegesException
    message: string
end

local record OperationInProgressException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ResourceTypeNotSupportedException
    message: string
end

local record TooManyTagsException
    message: string
end

local record InsufficientPrivilegesException
    message: string
end

local record TooManyBucketsException
    message: string
end

local type EventSeverity = "TRACE" | "DEBUG" | "INFO" | "WARN" | "ERROR" | "FATAL"

local type EnvironmentHealth = "Green" | "Yellow" | "Red" | "Grey"

local type EnvironmentStatus = "Aborting" | "Launching" | "Updating" | "LinkingFrom" | "LinkingTo" | "Ready" | "Terminating" | "Terminated"

local type ActionType = "InstanceRefresh" | "PlatformUpdate" | "Unknown"

local type EnvironmentHealthStatus = "NoData" | "Unknown" | "Pending" | "Ok" | "Info" | "Warning" | "Degraded" | "Severe" | "Suspended"

local type EnvironmentInfoType = "tail" | "bundle" | "analyze"

local type ConfigurationDeploymentStatus = "deployed" | "pending" | "failed"

local type ActionStatus = "Scheduled" | "Pending" | "Running" | "Unknown"

local record M
    AbortEnvironmentUpdateInput: AbortEnvironmentUpdateInput
    AbortEnvironmentUpdateOutput: AbortEnvironmentUpdateOutput
    ApplyEnvironmentManagedActionInput: ApplyEnvironmentManagedActionInput
    ApplyEnvironmentManagedActionOutput: ApplyEnvironmentManagedActionOutput
    AssociateEnvironmentOperationsRoleInput: AssociateEnvironmentOperationsRoleInput
    AssociateEnvironmentOperationsRoleOutput: AssociateEnvironmentOperationsRoleOutput
    CheckDNSAvailabilityInput: CheckDNSAvailabilityInput
    CheckDNSAvailabilityOutput: CheckDNSAvailabilityOutput
    ComposeEnvironmentsInput: ComposeEnvironmentsInput
    ComposeEnvironmentsOutput: ComposeEnvironmentsOutput
    CreateApplicationInput: CreateApplicationInput
    CreateApplicationOutput: CreateApplicationOutput
    CreateApplicationVersionInput: CreateApplicationVersionInput
    CreateApplicationVersionOutput: CreateApplicationVersionOutput
    CreateConfigurationTemplateInput: CreateConfigurationTemplateInput
    CreateConfigurationTemplateOutput: CreateConfigurationTemplateOutput
    CreateEnvironmentInput: CreateEnvironmentInput
    CreateEnvironmentOutput: CreateEnvironmentOutput
    CreatePlatformVersionInput: CreatePlatformVersionInput
    CreatePlatformVersionOutput: CreatePlatformVersionOutput
    CreateStorageLocationInput: CreateStorageLocationInput
    CreateStorageLocationOutput: CreateStorageLocationOutput
    DeleteApplicationInput: DeleteApplicationInput
    DeleteApplicationOutput: DeleteApplicationOutput
    DeleteApplicationVersionInput: DeleteApplicationVersionInput
    DeleteApplicationVersionOutput: DeleteApplicationVersionOutput
    DeleteConfigurationTemplateInput: DeleteConfigurationTemplateInput
    DeleteConfigurationTemplateOutput: DeleteConfigurationTemplateOutput
    DeleteEnvironmentConfigurationInput: DeleteEnvironmentConfigurationInput
    DeleteEnvironmentConfigurationOutput: DeleteEnvironmentConfigurationOutput
    DeletePlatformVersionInput: DeletePlatformVersionInput
    DeletePlatformVersionOutput: DeletePlatformVersionOutput
    DescribeAccountAttributesInput: DescribeAccountAttributesInput
    DescribeAccountAttributesOutput: DescribeAccountAttributesOutput
    DescribeApplicationsInput: DescribeApplicationsInput
    DescribeApplicationsOutput: DescribeApplicationsOutput
    DescribeApplicationVersionsInput: DescribeApplicationVersionsInput
    DescribeApplicationVersionsOutput: DescribeApplicationVersionsOutput
    DescribeConfigurationOptionsInput: DescribeConfigurationOptionsInput
    DescribeConfigurationOptionsOutput: DescribeConfigurationOptionsOutput
    DescribeConfigurationSettingsInput: DescribeConfigurationSettingsInput
    DescribeConfigurationSettingsOutput: DescribeConfigurationSettingsOutput
    DescribeEnvironmentHealthInput: DescribeEnvironmentHealthInput
    DescribeEnvironmentHealthOutput: DescribeEnvironmentHealthOutput
    DescribeEnvironmentManagedActionHistoryInput: DescribeEnvironmentManagedActionHistoryInput
    DescribeEnvironmentManagedActionHistoryOutput: DescribeEnvironmentManagedActionHistoryOutput
    DescribeEnvironmentManagedActionsInput: DescribeEnvironmentManagedActionsInput
    DescribeEnvironmentManagedActionsOutput: DescribeEnvironmentManagedActionsOutput
    DescribeEnvironmentResourcesInput: DescribeEnvironmentResourcesInput
    DescribeEnvironmentResourcesOutput: DescribeEnvironmentResourcesOutput
    DescribeEnvironmentsInput: DescribeEnvironmentsInput
    DescribeEnvironmentsOutput: DescribeEnvironmentsOutput
    DescribeEventsInput: DescribeEventsInput
    DescribeEventsOutput: DescribeEventsOutput
    DescribeInstancesHealthInput: DescribeInstancesHealthInput
    DescribeInstancesHealthOutput: DescribeInstancesHealthOutput
    DescribePlatformVersionInput: DescribePlatformVersionInput
    DescribePlatformVersionOutput: DescribePlatformVersionOutput
    DisassociateEnvironmentOperationsRoleInput: DisassociateEnvironmentOperationsRoleInput
    DisassociateEnvironmentOperationsRoleOutput: DisassociateEnvironmentOperationsRoleOutput
    ListAvailableSolutionStacksInput: ListAvailableSolutionStacksInput
    ListAvailableSolutionStacksOutput: ListAvailableSolutionStacksOutput
    ListPlatformBranchesInput: ListPlatformBranchesInput
    ListPlatformBranchesOutput: ListPlatformBranchesOutput
    ListPlatformVersionsInput: ListPlatformVersionsInput
    ListPlatformVersionsOutput: ListPlatformVersionsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    RebuildEnvironmentInput: RebuildEnvironmentInput
    RebuildEnvironmentOutput: RebuildEnvironmentOutput
    RequestEnvironmentInfoInput: RequestEnvironmentInfoInput
    RequestEnvironmentInfoOutput: RequestEnvironmentInfoOutput
    RestartAppServerInput: RestartAppServerInput
    RestartAppServerOutput: RestartAppServerOutput
    RetrieveEnvironmentInfoInput: RetrieveEnvironmentInfoInput
    RetrieveEnvironmentInfoOutput: RetrieveEnvironmentInfoOutput
    SwapEnvironmentCNAMEsInput: SwapEnvironmentCNAMEsInput
    SwapEnvironmentCNAMEsOutput: SwapEnvironmentCNAMEsOutput
    TerminateEnvironmentInput: TerminateEnvironmentInput
    TerminateEnvironmentOutput: TerminateEnvironmentOutput
    UpdateApplicationInput: UpdateApplicationInput
    UpdateApplicationOutput: UpdateApplicationOutput
    UpdateApplicationResourceLifecycleInput: UpdateApplicationResourceLifecycleInput
    UpdateApplicationResourceLifecycleOutput: UpdateApplicationResourceLifecycleOutput
    UpdateApplicationVersionInput: UpdateApplicationVersionInput
    UpdateApplicationVersionOutput: UpdateApplicationVersionOutput
    UpdateConfigurationTemplateInput: UpdateConfigurationTemplateInput
    UpdateConfigurationTemplateOutput: UpdateConfigurationTemplateOutput
    UpdateEnvironmentInput: UpdateEnvironmentInput
    UpdateEnvironmentOutput: UpdateEnvironmentOutput
    UpdateTagsForResourceInput: UpdateTagsForResourceInput
    UpdateTagsForResourceOutput: UpdateTagsForResourceOutput
    ValidateConfigurationSettingsInput: ValidateConfigurationSettingsInput
    ValidateConfigurationSettingsOutput: ValidateConfigurationSettingsOutput
end

return M
