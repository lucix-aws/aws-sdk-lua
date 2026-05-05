local record ActivateOrganizationsAccessInput
end

local record ActivateOrganizationsAccessOutput
end

local record ActivateTypeInput
    Type: string
    PublicTypeArn: string
    PublisherId: string
    TypeName: string
    TypeNameAlias: string
    AutoUpdate: boolean
    LoggingConfig: LoggingConfig
    ExecutionRoleArn: string
    VersionBump: string
    MajorVersion: number
end

local record ActivateTypeOutput
    Arn: string
end

local record BatchDescribeTypeConfigurationsInput
    TypeConfigurationIdentifiers: {TypeConfigurationIdentifier}
end

local record BatchDescribeTypeConfigurationsOutput
    Errors: {BatchDescribeTypeConfigurationsError}
    UnprocessedTypeConfigurations: {TypeConfigurationIdentifier}
    TypeConfigurations: {TypeConfigurationDetails}
end

local record CancelUpdateStackInput
    StackName: string
    ClientRequestToken: string
end

local record CancelUpdateStackOutput
end

local record ContinueUpdateRollbackInput
    StackName: string
    RoleARN: string
    ResourcesToSkip: {string}
    ClientRequestToken: string
end

local record ContinueUpdateRollbackOutput
end

local record CreateChangeSetInput
    StackName: string
    TemplateBody: string
    TemplateURL: string
    UsePreviousTemplate: boolean
    Parameters: {Parameter}
    Capabilities: {string}
    ResourceTypes: {string}
    RoleARN: string
    RollbackConfiguration: RollbackConfiguration
    NotificationARNs: {string}
    Tags: {Tag}
    ChangeSetName: string
    ClientToken: string
    Description: string
    ChangeSetType: string
    ResourcesToImport: {ResourceToImport}
    IncludeNestedStacks: boolean
    OnStackFailure: string
    ImportExistingResources: boolean
    DeploymentMode: string
end

local record CreateChangeSetOutput
    Id: string
    StackId: string
end

local record CreateGeneratedTemplateInput
    Resources: {ResourceDefinition}
    GeneratedTemplateName: string
    StackName: string
    TemplateConfiguration: TemplateConfiguration
end

local record CreateGeneratedTemplateOutput
    GeneratedTemplateId: string
end

local record CreateStackInput
    StackName: string
    TemplateBody: string
    TemplateURL: string
    Parameters: {Parameter}
    DisableRollback: boolean
    RollbackConfiguration: RollbackConfiguration
    TimeoutInMinutes: number
    NotificationARNs: {string}
    Capabilities: {string}
    ResourceTypes: {string}
    RoleARN: string
    OnFailure: string
    StackPolicyBody: string
    StackPolicyURL: string
    Tags: {Tag}
    ClientRequestToken: string
    EnableTerminationProtection: boolean
    RetainExceptOnCreate: boolean
end

local record CreateStackOutput
    StackId: string
    OperationId: string
end

local record CreateStackInstancesInput
    StackSetName: string
    Accounts: {string}
    DeploymentTargets: DeploymentTargets
    Regions: {string}
    ParameterOverrides: {Parameter}
    OperationPreferences: StackSetOperationPreferences
    OperationId: string
    CallAs: string
end

local record CreateStackInstancesOutput
    OperationId: string
end

local record CreateStackRefactorInput
    Description: string
    EnableStackCreation: boolean
    ResourceMappings: {ResourceMapping}
    StackDefinitions: {StackDefinition}
end

local record CreateStackRefactorOutput
    StackRefactorId: string
end

local record CreateStackSetInput
    StackSetName: string
    Description: string
    TemplateBody: string
    TemplateURL: string
    StackId: string
    Parameters: {Parameter}
    Capabilities: {string}
    Tags: {Tag}
    AdministrationRoleARN: string
    ExecutionRoleName: string
    PermissionModel: string
    AutoDeployment: AutoDeployment
    CallAs: string
    ClientRequestToken: string
    ManagedExecution: ManagedExecution
end

local record CreateStackSetOutput
    StackSetId: string
end

local record DeactivateOrganizationsAccessInput
end

local record DeactivateOrganizationsAccessOutput
end

local record DeactivateTypeInput
    TypeName: string
    Type: string
    Arn: string
end

local record DeactivateTypeOutput
end

local record DeleteChangeSetInput
    ChangeSetName: string
    StackName: string
end

local record DeleteChangeSetOutput
end

local record DeleteGeneratedTemplateInput
    GeneratedTemplateName: string
end

local record DeleteGeneratedTemplateOutput
end

local record DeleteStackInput
    StackName: string
    RetainResources: {string}
    RoleARN: string
    ClientRequestToken: string
    DeletionMode: string
end

local record DeleteStackOutput
end

local record DeleteStackInstancesInput
    StackSetName: string
    Accounts: {string}
    DeploymentTargets: DeploymentTargets
    Regions: {string}
    OperationPreferences: StackSetOperationPreferences
    RetainStacks: boolean
    OperationId: string
    CallAs: string
end

local record DeleteStackInstancesOutput
    OperationId: string
end

local record DeleteStackSetInput
    StackSetName: string
    CallAs: string
end

local record DeleteStackSetOutput
end

local record DeregisterTypeInput
    Arn: string
    Type: string
    TypeName: string
    VersionId: string
end

local record DeregisterTypeOutput
end

local record DescribeAccountLimitsInput
    NextToken: string
end

local record DescribeAccountLimitsOutput
    AccountLimits: {AccountLimit}
    NextToken: string
end

local record DescribeChangeSetInput
    ChangeSetName: string
    StackName: string
    NextToken: string
    IncludePropertyValues: boolean
end

local record DescribeChangeSetOutput
    ChangeSetName: string
    ChangeSetId: string
    StackId: string
    StackName: string
    Description: string
    Parameters: {Parameter}
    CreationTime: number
    ExecutionStatus: string
    Status: string
    StatusReason: string
    StackDriftStatus: string
    NotificationARNs: {string}
    RollbackConfiguration: RollbackConfiguration
    Capabilities: {string}
    Tags: {Tag}
    Changes: {Change}
    NextToken: string
    IncludeNestedStacks: boolean
    ParentChangeSetId: string
    RootChangeSetId: string
    OnStackFailure: string
    ImportExistingResources: boolean
    DeploymentMode: string
end

local record DescribeChangeSetHooksInput
    ChangeSetName: string
    StackName: string
    NextToken: string
    LogicalResourceId: string
end

local record DescribeChangeSetHooksOutput
    ChangeSetId: string
    ChangeSetName: string
    Hooks: {ChangeSetHook}
    Status: string
    NextToken: string
    StackId: string
    StackName: string
end

local record DescribeEventsInput
    StackName: string
    ChangeSetName: string
    OperationId: string
    Filters: EventFilter
    NextToken: string
end

local record DescribeEventsOutput
    OperationEvents: {OperationEvent}
    NextToken: string
end

local record DescribeGeneratedTemplateInput
    GeneratedTemplateName: string
end

local record DescribeGeneratedTemplateOutput
    GeneratedTemplateId: string
    GeneratedTemplateName: string
    Resources: {ResourceDetail}
    Status: string
    StatusReason: string
    CreationTime: number
    LastUpdatedTime: number
    Progress: TemplateProgress
    StackId: string
    TemplateConfiguration: TemplateConfiguration
    TotalWarnings: number
end

local record DescribeOrganizationsAccessInput
    CallAs: string
end

local record DescribeOrganizationsAccessOutput
    Status: string
end

local record DescribePublisherInput
    PublisherId: string
end

local record DescribePublisherOutput
    PublisherId: string
    PublisherStatus: string
    IdentityProvider: string
    PublisherProfile: string
end

local record DescribeResourceScanInput
    ResourceScanId: string
end

local record DescribeResourceScanOutput
    ResourceScanId: string
    Status: string
    StatusReason: string
    StartTime: number
    EndTime: number
    PercentageCompleted: number
    ResourceTypes: {string}
    ResourcesScanned: number
    ResourcesRead: number
    ScanFilters: {ScanFilter}
end

local record DescribeStackDriftDetectionStatusInput
    StackDriftDetectionId: string
end

local record DescribeStackDriftDetectionStatusOutput
    StackId: string
    StackDriftDetectionId: string
    StackDriftStatus: string
    DetectionStatus: string
    DetectionStatusReason: string
    DriftedStackResourceCount: number
    Timestamp: number
end

local record DescribeStackEventsInput
    StackName: string
    NextToken: string
end

local record DescribeStackEventsOutput
    StackEvents: {StackEvent}
    NextToken: string
end

local record DescribeStackInstanceInput
    StackSetName: string
    StackInstanceAccount: string
    StackInstanceRegion: string
    CallAs: string
end

local record DescribeStackInstanceOutput
    StackInstance: StackInstance
end

local record DescribeStackRefactorInput
    StackRefactorId: string
end

local record DescribeStackRefactorOutput
    Description: string
    StackRefactorId: string
    StackIds: {string}
    ExecutionStatus: string
    ExecutionStatusReason: string
    Status: string
    StatusReason: string
end

local record DescribeStackResourceInput
    StackName: string
    LogicalResourceId: string
end

local record DescribeStackResourceOutput
    StackResourceDetail: StackResourceDetail
end

local record DescribeStackResourceDriftsInput
    StackName: string
    StackResourceDriftStatusFilters: {string}
    NextToken: string
    MaxResults: number
end

local record DescribeStackResourceDriftsOutput
    StackResourceDrifts: {StackResourceDrift}
    NextToken: string
end

local record DescribeStackResourcesInput
    StackName: string
    LogicalResourceId: string
    PhysicalResourceId: string
end

local record DescribeStackResourcesOutput
    StackResources: {StackResource}
end

local record DescribeStacksInput
    StackName: string
    NextToken: string
end

local record DescribeStacksOutput
    Stacks: {Stack}
    NextToken: string
end

local record DescribeStackSetInput
    StackSetName: string
    CallAs: string
end

local record DescribeStackSetOutput
    StackSet: StackSet
end

local record DescribeStackSetOperationInput
    StackSetName: string
    OperationId: string
    CallAs: string
end

local record DescribeStackSetOperationOutput
    StackSetOperation: StackSetOperation
end

local record DescribeTypeInput
    Type: string
    TypeName: string
    Arn: string
    VersionId: string
    PublisherId: string
    PublicVersionNumber: string
end

local record DescribeTypeOutput
    Arn: string
    Type: string
    TypeName: string
    DefaultVersionId: string
    IsDefaultVersion: boolean
    TypeTestsStatus: string
    TypeTestsStatusDescription: string
    Description: string
    Schema: string
    ProvisioningType: string
    DeprecatedStatus: string
    LoggingConfig: LoggingConfig
    RequiredActivatedTypes: {RequiredActivatedType}
    ExecutionRoleArn: string
    Visibility: string
    SourceUrl: string
    DocumentationUrl: string
    LastUpdated: number
    TimeCreated: number
    ConfigurationSchema: string
    PublisherId: string
    OriginalTypeName: string
    OriginalTypeArn: string
    PublicVersionNumber: string
    LatestPublicVersion: string
    IsActivated: boolean
    AutoUpdate: boolean
end

local record DescribeTypeRegistrationInput
    RegistrationToken: string
end

local record DescribeTypeRegistrationOutput
    ProgressStatus: string
    Description: string
    TypeArn: string
    TypeVersionArn: string
end

local record DetectStackDriftInput
    StackName: string
    LogicalResourceIds: {string}
end

local record DetectStackDriftOutput
    StackDriftDetectionId: string
end

local record DetectStackResourceDriftInput
    StackName: string
    LogicalResourceId: string
end

local record DetectStackResourceDriftOutput
    StackResourceDrift: StackResourceDrift
end

local record DetectStackSetDriftInput
    StackSetName: string
    OperationPreferences: StackSetOperationPreferences
    OperationId: string
    CallAs: string
end

local record DetectStackSetDriftOutput
    OperationId: string
end

local record EstimateTemplateCostInput
    TemplateBody: string
    TemplateURL: string
    Parameters: {Parameter}
end

local record EstimateTemplateCostOutput
    Url: string
end

local record ExecuteChangeSetInput
    ChangeSetName: string
    StackName: string
    ClientRequestToken: string
    DisableRollback: boolean
    RetainExceptOnCreate: boolean
end

local record ExecuteChangeSetOutput
end

local record ExecuteStackRefactorInput
    StackRefactorId: string
end

local record ExecuteStackRefactorOutput
end

local record GetGeneratedTemplateInput
    Format: string
    GeneratedTemplateName: string
end

local record GetGeneratedTemplateOutput
    Status: string
    TemplateBody: string
end

local record GetHookResultInput
    HookResultId: string
end

local record GetHookResultOutput
    HookResultId: string
    InvocationPoint: string
    FailureMode: string
    TypeName: string
    OriginalTypeName: string
    TypeVersionId: string
    TypeConfigurationVersionId: string
    TypeArn: string
    Status: string
    HookStatusReason: string
    InvokedAt: number
    Target: HookTarget
    Annotations: {Annotation}
end

local record GetStackPolicyInput
    StackName: string
end

local record GetStackPolicyOutput
    StackPolicyBody: string
end

local record GetTemplateInput
    StackName: string
    ChangeSetName: string
    TemplateStage: string
end

local record GetTemplateOutput
    TemplateBody: string
    StagesAvailable: {string}
end

local record GetTemplateSummaryInput
    TemplateBody: string
    TemplateURL: string
    StackName: string
    StackSetName: string
    CallAs: string
    TemplateSummaryConfig: TemplateSummaryConfig
end

local record GetTemplateSummaryOutput
    Parameters: {ParameterDeclaration}
    Description: string
    Capabilities: {string}
    CapabilitiesReason: string
    ResourceTypes: {string}
    Version: string
    Metadata: string
    DeclaredTransforms: {string}
    ResourceIdentifierSummaries: {ResourceIdentifierSummary}
    Warnings: Warnings
end

local record ImportStacksToStackSetInput
    StackSetName: string
    StackIds: {string}
    StackIdsUrl: string
    OrganizationalUnitIds: {string}
    OperationPreferences: StackSetOperationPreferences
    OperationId: string
    CallAs: string
end

local record ImportStacksToStackSetOutput
    OperationId: string
end

local record ListChangeSetsInput
    StackName: string
    NextToken: string
end

local record ListChangeSetsOutput
    Summaries: {ChangeSetSummary}
    NextToken: string
end

local record ListExportsInput
    NextToken: string
end

local record ListExportsOutput
    Exports: {Export}
    NextToken: string
end

local record ListGeneratedTemplatesInput
    NextToken: string
    MaxResults: number
end

local record ListGeneratedTemplatesOutput
    Summaries: {TemplateSummary}
    NextToken: string
end

local record ListHookResultsInput
    TargetType: string
    TargetId: string
    TypeArn: string
    Status: string
    NextToken: string
end

local record ListHookResultsOutput
    TargetType: string
    TargetId: string
    HookResults: {HookResultSummary}
    NextToken: string
end

local record ListImportsInput
    ExportName: string
    NextToken: string
end

local record ListImportsOutput
    Imports: {string}
    NextToken: string
end

local record ListResourceScanRelatedResourcesInput
    ResourceScanId: string
    Resources: {ScannedResourceIdentifier}
    NextToken: string
    MaxResults: number
end

local record ListResourceScanRelatedResourcesOutput
    RelatedResources: {ScannedResource}
    NextToken: string
end

local record ListResourceScanResourcesInput
    ResourceScanId: string
    ResourceIdentifier: string
    ResourceTypePrefix: string
    TagKey: string
    TagValue: string
    NextToken: string
    MaxResults: number
end

local record ListResourceScanResourcesOutput
    Resources: {ScannedResource}
    NextToken: string
end

local record ListResourceScansInput
    NextToken: string
    MaxResults: number
    ScanTypeFilter: string
end

local record ListResourceScansOutput
    ResourceScanSummaries: {ResourceScanSummary}
    NextToken: string
end

local record ListStackInstanceResourceDriftsInput
    StackSetName: string
    NextToken: string
    MaxResults: number
    StackInstanceResourceDriftStatuses: {string}
    StackInstanceAccount: string
    StackInstanceRegion: string
    OperationId: string
    CallAs: string
end

local record ListStackInstanceResourceDriftsOutput
    Summaries: {StackInstanceResourceDriftsSummary}
    NextToken: string
end

local record ListStackInstancesInput
    StackSetName: string
    NextToken: string
    MaxResults: number
    Filters: {StackInstanceFilter}
    StackInstanceAccount: string
    StackInstanceRegion: string
    CallAs: string
end

local record ListStackInstancesOutput
    Summaries: {StackInstanceSummary}
    NextToken: string
end

local record ListStackRefactorActionsInput
    StackRefactorId: string
    NextToken: string
    MaxResults: number
end

local record ListStackRefactorActionsOutput
    StackRefactorActions: {StackRefactorAction}
    NextToken: string
end

local record ListStackRefactorsInput
    ExecutionStatusFilter: {string}
    NextToken: string
    MaxResults: number
end

local record ListStackRefactorsOutput
    StackRefactorSummaries: {StackRefactorSummary}
    NextToken: string
end

local record ListStackResourcesInput
    StackName: string
    NextToken: string
end

local record ListStackResourcesOutput
    StackResourceSummaries: {StackResourceSummary}
    NextToken: string
end

local record ListStacksInput
    NextToken: string
    StackStatusFilter: {string}
end

local record ListStacksOutput
    StackSummaries: {StackSummary}
    NextToken: string
end

local record ListStackSetAutoDeploymentTargetsInput
    StackSetName: string
    NextToken: string
    MaxResults: number
    CallAs: string
end

local record ListStackSetAutoDeploymentTargetsOutput
    Summaries: {StackSetAutoDeploymentTargetSummary}
    NextToken: string
end

local record ListStackSetOperationResultsInput
    StackSetName: string
    OperationId: string
    NextToken: string
    MaxResults: number
    CallAs: string
    Filters: {OperationResultFilter}
end

local record ListStackSetOperationResultsOutput
    Summaries: {StackSetOperationResultSummary}
    NextToken: string
end

local record ListStackSetOperationsInput
    StackSetName: string
    NextToken: string
    MaxResults: number
    CallAs: string
end

local record ListStackSetOperationsOutput
    Summaries: {StackSetOperationSummary}
    NextToken: string
end

local record ListStackSetsInput
    NextToken: string
    MaxResults: number
    Status: string
    CallAs: string
end

local record ListStackSetsOutput
    Summaries: {StackSetSummary}
    NextToken: string
end

local record ListTypeRegistrationsInput
    Type: string
    TypeName: string
    TypeArn: string
    RegistrationStatusFilter: string
    MaxResults: number
    NextToken: string
end

local record ListTypeRegistrationsOutput
    RegistrationTokenList: {string}
    NextToken: string
end

local record ListTypesInput
    Visibility: string
    ProvisioningType: string
    DeprecatedStatus: string
    Type: string
    Filters: TypeFilters
    MaxResults: number
    NextToken: string
end

local record ListTypesOutput
    TypeSummaries: {TypeSummary}
    NextToken: string
end

local record ListTypeVersionsInput
    Type: string
    TypeName: string
    Arn: string
    MaxResults: number
    NextToken: string
    DeprecatedStatus: string
    PublisherId: string
end

local record ListTypeVersionsOutput
    TypeVersionSummaries: {TypeVersionSummary}
    NextToken: string
end

local record PublishTypeInput
    Type: string
    Arn: string
    TypeName: string
    PublicVersionNumber: string
end

local record PublishTypeOutput
    PublicTypeArn: string
end

local record RecordHandlerProgressInput
    BearerToken: string
    OperationStatus: string
    CurrentOperationStatus: string
    StatusMessage: string
    ErrorCode: string
    ResourceModel: string
    ClientRequestToken: string
end

local record RecordHandlerProgressOutput
end

local record RegisterPublisherInput
    AcceptTermsAndConditions: boolean
    ConnectionArn: string
end

local record RegisterPublisherOutput
    PublisherId: string
end

local record RegisterTypeInput
    Type: string
    TypeName: string
    SchemaHandlerPackage: string
    LoggingConfig: LoggingConfig
    ExecutionRoleArn: string
    ClientRequestToken: string
end

local record RegisterTypeOutput
    RegistrationToken: string
end

local record RollbackStackInput
    StackName: string
    RoleARN: string
    ClientRequestToken: string
    RetainExceptOnCreate: boolean
end

local record RollbackStackOutput
    StackId: string
    OperationId: string
end

local record SetStackPolicyInput
    StackName: string
    StackPolicyBody: string
    StackPolicyURL: string
end

local record SetStackPolicyOutput
end

local record SetTypeConfigurationInput
    TypeArn: string
    Configuration: string
    ConfigurationAlias: string
    TypeName: string
    Type: string
end

local record SetTypeConfigurationOutput
    ConfigurationArn: string
end

local record SetTypeDefaultVersionInput
    Arn: string
    Type: string
    TypeName: string
    VersionId: string
end

local record SetTypeDefaultVersionOutput
end

local record SignalResourceInput
    StackName: string
    LogicalResourceId: string
    UniqueId: string
    Status: string
end

local record SignalResourceOutput
end

local record StartResourceScanInput
    ClientRequestToken: string
    ScanFilters: {ScanFilter}
end

local record StartResourceScanOutput
    ResourceScanId: string
end

local record StopStackSetOperationInput
    StackSetName: string
    OperationId: string
    CallAs: string
end

local record StopStackSetOperationOutput
end

local record TestTypeInput
    Arn: string
    Type: string
    TypeName: string
    VersionId: string
    LogDeliveryBucket: string
end

local record TestTypeOutput
    TypeVersionArn: string
end

local record UpdateGeneratedTemplateInput
    GeneratedTemplateName: string
    NewGeneratedTemplateName: string
    AddResources: {ResourceDefinition}
    RemoveResources: {string}
    RefreshAllResources: boolean
    TemplateConfiguration: TemplateConfiguration
end

local record UpdateGeneratedTemplateOutput
    GeneratedTemplateId: string
end

local record UpdateStackInput
    StackName: string
    TemplateBody: string
    TemplateURL: string
    UsePreviousTemplate: boolean
    StackPolicyDuringUpdateBody: string
    StackPolicyDuringUpdateURL: string
    Parameters: {Parameter}
    Capabilities: {string}
    ResourceTypes: {string}
    RoleARN: string
    RollbackConfiguration: RollbackConfiguration
    StackPolicyBody: string
    StackPolicyURL: string
    NotificationARNs: {string}
    Tags: {Tag}
    DisableRollback: boolean
    ClientRequestToken: string
    RetainExceptOnCreate: boolean
end

local record UpdateStackOutput
    StackId: string
    OperationId: string
end

local record UpdateStackInstancesInput
    StackSetName: string
    Accounts: {string}
    DeploymentTargets: DeploymentTargets
    Regions: {string}
    ParameterOverrides: {Parameter}
    OperationPreferences: StackSetOperationPreferences
    OperationId: string
    CallAs: string
end

local record UpdateStackInstancesOutput
    OperationId: string
end

local record UpdateStackSetInput
    StackSetName: string
    Description: string
    TemplateBody: string
    TemplateURL: string
    UsePreviousTemplate: boolean
    Parameters: {Parameter}
    Capabilities: {string}
    Tags: {Tag}
    OperationPreferences: StackSetOperationPreferences
    AdministrationRoleARN: string
    ExecutionRoleName: string
    DeploymentTargets: DeploymentTargets
    PermissionModel: string
    AutoDeployment: AutoDeployment
    OperationId: string
    Accounts: {string}
    Regions: {string}
    CallAs: string
    ManagedExecution: ManagedExecution
end

local record UpdateStackSetOutput
    OperationId: string
end

local record UpdateTerminationProtectionInput
    EnableTerminationProtection: boolean
    StackName: string
end

local record UpdateTerminationProtectionOutput
    StackId: string
end

local record ValidateTemplateInput
    TemplateBody: string
    TemplateURL: string
end

local record ValidateTemplateOutput
    Parameters: {TemplateParameter}
    Description: string
    Capabilities: {string}
    CapabilitiesReason: string
    DeclaredTransforms: {string}
end

local record InvalidOperationException
    Message: string
end

local record OperationNotFoundException
    Message: string
end

local record CFNRegistryException
    Message: string
end

local record TypeNotFoundException
    Message: string
end

local record CFNRegistryException
    Message: string
end

local record TypeConfigurationNotFoundException
    Message: string
end

local record TokenAlreadyExistsException
    Message: string
end

local record TokenAlreadyExistsException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record InsufficientCapabilitiesException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record ConcurrentResourcesLimitExceededException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record InsufficientCapabilitiesException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record TokenAlreadyExistsException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record OperationIdAlreadyExistsException
    Message: string
end

local record OperationInProgressException
    Message: string
end

local record StackSetNotFoundException
    Message: string
end

local record StaleRequestException
    Message: string
end

local record CreatedButModifiedException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NameAlreadyExistsException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record OperationNotFoundException
    Message: string
end

local record CFNRegistryException
    Message: string
end

local record TypeNotFoundException
    Message: string
end

local record InvalidChangeSetStatusException
    Message: string
end

local record ConcurrentResourcesLimitExceededException
    Message: string
end

local record GeneratedTemplateNotFoundException
    Message: string
end

local record TokenAlreadyExistsException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record OperationIdAlreadyExistsException
    Message: string
end

local record OperationInProgressException
    Message: string
end

local record StackSetNotFoundException
    Message: string
end

local record StaleRequestException
    Message: string
end

local record OperationInProgressException
    Message: string
end

local record StackSetNotEmptyException
    Message: string
end

local record CFNRegistryException
    Message: string
end

local record TypeNotFoundException
    Message: string
end

local record ChangeSetNotFoundException
    Message: string
end

local record ChangeSetNotFoundException
    Message: string
end

local record GeneratedTemplateNotFoundException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record OperationNotFoundException
    Message: string
end

local record CFNRegistryException
    Message: string
end

local record ResourceScanNotFoundException
    Message: string
end

local record StackInstanceNotFoundException
    Message: string
end

local record StackSetNotFoundException
    Message: string
end

local record StackRefactorNotFoundException
    Message: string
end

local record StackSetNotFoundException
    Message: string
end

local record OperationNotFoundException
    Message: string
end

local record StackSetNotFoundException
    Message: string
end

local record CFNRegistryException
    Message: string
end

local record TypeNotFoundException
    Message: string
end

local record CFNRegistryException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record OperationInProgressException
    Message: string
end

local record StackSetNotFoundException
    Message: string
end

local record ChangeSetNotFoundException
    Message: string
end

local record InsufficientCapabilitiesException
    Message: string
end

local record InvalidChangeSetStatusException
    Message: string
end

local record TokenAlreadyExistsException
    Message: string
end

local record GeneratedTemplateNotFoundException
    Message: string
end

local record HookResultNotFoundException
    Message: string
end

local record ChangeSetNotFoundException
    Message: string
end

local record StackSetNotFoundException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record OperationIdAlreadyExistsException
    Message: string
end

local record OperationInProgressException
    Message: string
end

local record StackNotFoundException
    Message: string
end

local record StackSetNotFoundException
    Message: string
end

local record StaleRequestException
    Message: string
end

local record HookResultNotFoundException
    Message: string
end

local record ResourceScanInProgressException
    Message: string
end

local record ResourceScanNotFoundException
    Message: string
end

local record ResourceScanInProgressException
    Message: string
end

local record ResourceScanNotFoundException
    Message: string
end

local record OperationNotFoundException
    Message: string
end

local record StackInstanceNotFoundException
    Message: string
end

local record StackSetNotFoundException
    Message: string
end

local record StackSetNotFoundException
    Message: string
end

local record StackSetNotFoundException
    Message: string
end

local record OperationNotFoundException
    Message: string
end

local record StackSetNotFoundException
    Message: string
end

local record StackSetNotFoundException
    Message: string
end

local record CFNRegistryException
    Message: string
end

local record CFNRegistryException
    Message: string
end

local record CFNRegistryException
    Message: string
end

local record CFNRegistryException
    Message: string
end

local record TypeNotFoundException
    Message: string
end

local record InvalidStateTransitionException
    Message: string
end

local record OperationStatusCheckFailedException
    Message: string
end

local record CFNRegistryException
    Message: string
end

local record CFNRegistryException
    Message: string
end

local record TokenAlreadyExistsException
    Message: string
end

local record CFNRegistryException
    Message: string
end

local record TypeNotFoundException
    Message: string
end

local record CFNRegistryException
    Message: string
end

local record TypeNotFoundException
    Message: string
end

local record ResourceScanInProgressException
    Message: string
end

local record ResourceScanLimitExceededException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record OperationNotFoundException
    Message: string
end

local record StackSetNotFoundException
    Message: string
end

local record CFNRegistryException
    Message: string
end

local record TypeNotFoundException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record GeneratedTemplateNotFoundException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record InsufficientCapabilitiesException
    Message: string
end

local record TokenAlreadyExistsException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record OperationIdAlreadyExistsException
    Message: string
end

local record OperationInProgressException
    Message: string
end

local record StackInstanceNotFoundException
    Message: string
end

local record StackSetNotFoundException
    Message: string
end

local record StaleRequestException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record OperationIdAlreadyExistsException
    Message: string
end

local record OperationInProgressException
    Message: string
end

local record StackInstanceNotFoundException
    Message: string
end

local record StackSetNotFoundException
    Message: string
end

local record StaleRequestException
    Message: string
end

local type StackSetStatus = "ACTIVE" | "DELETED"

local type DeprecatedStatus = "LIVE" | "DEPRECATED"

local type IdentityProvider = "AWS_Marketplace" | "GitHub" | "Bitbucket"

local type OperationStatus = "PENDING" | "IN_PROGRESS" | "SUCCESS" | "FAILED"

local type ChangeSetStatus = "CREATE_PENDING" | "CREATE_IN_PROGRESS" | "CREATE_COMPLETE" | "DELETE_PENDING" | "DELETE_IN_PROGRESS" | "DELETE_COMPLETE" | "DELETE_FAILED" | "FAILED"

local type OnStackFailure = "DO_NOTHING" | "ROLLBACK" | "DELETE"

local type PermissionModels = "SERVICE_MANAGED" | "SELF_MANAGED"

local type ExecutionStatus = "UNAVAILABLE" | "AVAILABLE" | "EXECUTE_IN_PROGRESS" | "EXECUTE_COMPLETE" | "EXECUTE_FAILED" | "OBSOLETE"

local type OnFailure = "DO_NOTHING" | "ROLLBACK" | "DELETE"

local type TypeTestsStatus = "PASSED" | "FAILED" | "IN_PROGRESS" | "NOT_TESTED"

local type DeletionMode = "STANDARD" | "FORCE_DELETE_STACK"

local type VersionBump = "MAJOR" | "MINOR"

local type Visibility = "PUBLIC" | "PRIVATE"

local type GeneratedTemplateStatus = "CREATE_PENDING" | "UPDATE_PENDING" | "DELETE_PENDING" | "CREATE_IN_PROGRESS" | "UPDATE_IN_PROGRESS" | "DELETE_IN_PROGRESS" | "FAILED" | "COMPLETE"

local type HookFailureMode = "FAIL" | "WARN"

local type DeploymentMode = "REVERT_DRIFT"

local type ChangeSetType = "CREATE" | "UPDATE" | "IMPORT"

local type TemplateStage = "Original" | "Processed"

local type ResourceScanStatus = "IN_PROGRESS" | "FAILED" | "COMPLETE" | "EXPIRED"

local type OrganizationStatus = "ENABLED" | "DISABLED" | "DISABLED_PERMANENTLY"

local type HookInvocationPoint = "PRE_PROVISION"

local type HandlerErrorCode = "NotUpdatable" | "InvalidRequest" | "AccessDenied" | "InvalidCredentials" | "AlreadyExists" | "NotFound" | "ResourceConflict" | "Throttling" | "ServiceLimitExceeded" | "NotStabilized" | "GeneralServiceException" | "ServiceInternalError" | "NetworkFailure" | "InternalFailure" | "InvalidTypeConfiguration" | "HandlerInternalFailure" | "NonCompliant" | "Unknown" | "UnsupportedTarget"

local type ListHookResultsTargetType = "CHANGE_SET" | "STACK" | "RESOURCE" | "CLOUD_CONTROL"

local type ProvisioningType = "NON_PROVISIONABLE" | "IMMUTABLE" | "FULLY_MUTABLE"

local type RegistryType = "RESOURCE" | "MODULE" | "HOOK"

local type StackRefactorExecutionStatus = "UNAVAILABLE" | "AVAILABLE" | "OBSOLETE" | "EXECUTE_IN_PROGRESS" | "EXECUTE_COMPLETE" | "EXECUTE_FAILED" | "ROLLBACK_IN_PROGRESS" | "ROLLBACK_COMPLETE" | "ROLLBACK_FAILED"

local type TemplateFormat = "JSON" | "YAML"

local type RegistrationStatus = "COMPLETE" | "IN_PROGRESS" | "FAILED"

local type ScanType = "FULL" | "PARTIAL"

local type HookStatus = "HOOK_IN_PROGRESS" | "HOOK_COMPLETE_SUCCEEDED" | "HOOK_COMPLETE_FAILED" | "HOOK_FAILED"

local type StackDriftStatus = "DRIFTED" | "IN_SYNC" | "UNKNOWN" | "NOT_CHECKED"

local type ThirdPartyType = "RESOURCE" | "MODULE" | "HOOK"

local type ResourceSignalStatus = "SUCCESS" | "FAILURE"

local type StackRefactorStatus = "CREATE_IN_PROGRESS" | "CREATE_COMPLETE" | "CREATE_FAILED" | "DELETE_IN_PROGRESS" | "DELETE_COMPLETE" | "DELETE_FAILED"

local type PublisherStatus = "VERIFIED" | "UNVERIFIED"

local type ChangeSetHooksStatus = "PLANNING" | "PLANNED" | "UNAVAILABLE"

local type StackDriftDetectionStatus = "DETECTION_IN_PROGRESS" | "DETECTION_FAILED" | "DETECTION_COMPLETE"

local type CallAs = "SELF" | "DELEGATED_ADMIN"

local record M
    ActivateOrganizationsAccessInput: ActivateOrganizationsAccessInput
    ActivateOrganizationsAccessOutput: ActivateOrganizationsAccessOutput
    ActivateTypeInput: ActivateTypeInput
    ActivateTypeOutput: ActivateTypeOutput
    BatchDescribeTypeConfigurationsInput: BatchDescribeTypeConfigurationsInput
    BatchDescribeTypeConfigurationsOutput: BatchDescribeTypeConfigurationsOutput
    CancelUpdateStackInput: CancelUpdateStackInput
    CancelUpdateStackOutput: CancelUpdateStackOutput
    ContinueUpdateRollbackInput: ContinueUpdateRollbackInput
    ContinueUpdateRollbackOutput: ContinueUpdateRollbackOutput
    CreateChangeSetInput: CreateChangeSetInput
    CreateChangeSetOutput: CreateChangeSetOutput
    CreateGeneratedTemplateInput: CreateGeneratedTemplateInput
    CreateGeneratedTemplateOutput: CreateGeneratedTemplateOutput
    CreateStackInput: CreateStackInput
    CreateStackOutput: CreateStackOutput
    CreateStackInstancesInput: CreateStackInstancesInput
    CreateStackInstancesOutput: CreateStackInstancesOutput
    CreateStackRefactorInput: CreateStackRefactorInput
    CreateStackRefactorOutput: CreateStackRefactorOutput
    CreateStackSetInput: CreateStackSetInput
    CreateStackSetOutput: CreateStackSetOutput
    DeactivateOrganizationsAccessInput: DeactivateOrganizationsAccessInput
    DeactivateOrganizationsAccessOutput: DeactivateOrganizationsAccessOutput
    DeactivateTypeInput: DeactivateTypeInput
    DeactivateTypeOutput: DeactivateTypeOutput
    DeleteChangeSetInput: DeleteChangeSetInput
    DeleteChangeSetOutput: DeleteChangeSetOutput
    DeleteGeneratedTemplateInput: DeleteGeneratedTemplateInput
    DeleteGeneratedTemplateOutput: DeleteGeneratedTemplateOutput
    DeleteStackInput: DeleteStackInput
    DeleteStackOutput: DeleteStackOutput
    DeleteStackInstancesInput: DeleteStackInstancesInput
    DeleteStackInstancesOutput: DeleteStackInstancesOutput
    DeleteStackSetInput: DeleteStackSetInput
    DeleteStackSetOutput: DeleteStackSetOutput
    DeregisterTypeInput: DeregisterTypeInput
    DeregisterTypeOutput: DeregisterTypeOutput
    DescribeAccountLimitsInput: DescribeAccountLimitsInput
    DescribeAccountLimitsOutput: DescribeAccountLimitsOutput
    DescribeChangeSetInput: DescribeChangeSetInput
    DescribeChangeSetOutput: DescribeChangeSetOutput
    DescribeChangeSetHooksInput: DescribeChangeSetHooksInput
    DescribeChangeSetHooksOutput: DescribeChangeSetHooksOutput
    DescribeEventsInput: DescribeEventsInput
    DescribeEventsOutput: DescribeEventsOutput
    DescribeGeneratedTemplateInput: DescribeGeneratedTemplateInput
    DescribeGeneratedTemplateOutput: DescribeGeneratedTemplateOutput
    DescribeOrganizationsAccessInput: DescribeOrganizationsAccessInput
    DescribeOrganizationsAccessOutput: DescribeOrganizationsAccessOutput
    DescribePublisherInput: DescribePublisherInput
    DescribePublisherOutput: DescribePublisherOutput
    DescribeResourceScanInput: DescribeResourceScanInput
    DescribeResourceScanOutput: DescribeResourceScanOutput
    DescribeStackDriftDetectionStatusInput: DescribeStackDriftDetectionStatusInput
    DescribeStackDriftDetectionStatusOutput: DescribeStackDriftDetectionStatusOutput
    DescribeStackEventsInput: DescribeStackEventsInput
    DescribeStackEventsOutput: DescribeStackEventsOutput
    DescribeStackInstanceInput: DescribeStackInstanceInput
    DescribeStackInstanceOutput: DescribeStackInstanceOutput
    DescribeStackRefactorInput: DescribeStackRefactorInput
    DescribeStackRefactorOutput: DescribeStackRefactorOutput
    DescribeStackResourceInput: DescribeStackResourceInput
    DescribeStackResourceOutput: DescribeStackResourceOutput
    DescribeStackResourceDriftsInput: DescribeStackResourceDriftsInput
    DescribeStackResourceDriftsOutput: DescribeStackResourceDriftsOutput
    DescribeStackResourcesInput: DescribeStackResourcesInput
    DescribeStackResourcesOutput: DescribeStackResourcesOutput
    DescribeStacksInput: DescribeStacksInput
    DescribeStacksOutput: DescribeStacksOutput
    DescribeStackSetInput: DescribeStackSetInput
    DescribeStackSetOutput: DescribeStackSetOutput
    DescribeStackSetOperationInput: DescribeStackSetOperationInput
    DescribeStackSetOperationOutput: DescribeStackSetOperationOutput
    DescribeTypeInput: DescribeTypeInput
    DescribeTypeOutput: DescribeTypeOutput
    DescribeTypeRegistrationInput: DescribeTypeRegistrationInput
    DescribeTypeRegistrationOutput: DescribeTypeRegistrationOutput
    DetectStackDriftInput: DetectStackDriftInput
    DetectStackDriftOutput: DetectStackDriftOutput
    DetectStackResourceDriftInput: DetectStackResourceDriftInput
    DetectStackResourceDriftOutput: DetectStackResourceDriftOutput
    DetectStackSetDriftInput: DetectStackSetDriftInput
    DetectStackSetDriftOutput: DetectStackSetDriftOutput
    EstimateTemplateCostInput: EstimateTemplateCostInput
    EstimateTemplateCostOutput: EstimateTemplateCostOutput
    ExecuteChangeSetInput: ExecuteChangeSetInput
    ExecuteChangeSetOutput: ExecuteChangeSetOutput
    ExecuteStackRefactorInput: ExecuteStackRefactorInput
    ExecuteStackRefactorOutput: ExecuteStackRefactorOutput
    GetGeneratedTemplateInput: GetGeneratedTemplateInput
    GetGeneratedTemplateOutput: GetGeneratedTemplateOutput
    GetHookResultInput: GetHookResultInput
    GetHookResultOutput: GetHookResultOutput
    GetStackPolicyInput: GetStackPolicyInput
    GetStackPolicyOutput: GetStackPolicyOutput
    GetTemplateInput: GetTemplateInput
    GetTemplateOutput: GetTemplateOutput
    GetTemplateSummaryInput: GetTemplateSummaryInput
    GetTemplateSummaryOutput: GetTemplateSummaryOutput
    ImportStacksToStackSetInput: ImportStacksToStackSetInput
    ImportStacksToStackSetOutput: ImportStacksToStackSetOutput
    ListChangeSetsInput: ListChangeSetsInput
    ListChangeSetsOutput: ListChangeSetsOutput
    ListExportsInput: ListExportsInput
    ListExportsOutput: ListExportsOutput
    ListGeneratedTemplatesInput: ListGeneratedTemplatesInput
    ListGeneratedTemplatesOutput: ListGeneratedTemplatesOutput
    ListHookResultsInput: ListHookResultsInput
    ListHookResultsOutput: ListHookResultsOutput
    ListImportsInput: ListImportsInput
    ListImportsOutput: ListImportsOutput
    ListResourceScanRelatedResourcesInput: ListResourceScanRelatedResourcesInput
    ListResourceScanRelatedResourcesOutput: ListResourceScanRelatedResourcesOutput
    ListResourceScanResourcesInput: ListResourceScanResourcesInput
    ListResourceScanResourcesOutput: ListResourceScanResourcesOutput
    ListResourceScansInput: ListResourceScansInput
    ListResourceScansOutput: ListResourceScansOutput
    ListStackInstanceResourceDriftsInput: ListStackInstanceResourceDriftsInput
    ListStackInstanceResourceDriftsOutput: ListStackInstanceResourceDriftsOutput
    ListStackInstancesInput: ListStackInstancesInput
    ListStackInstancesOutput: ListStackInstancesOutput
    ListStackRefactorActionsInput: ListStackRefactorActionsInput
    ListStackRefactorActionsOutput: ListStackRefactorActionsOutput
    ListStackRefactorsInput: ListStackRefactorsInput
    ListStackRefactorsOutput: ListStackRefactorsOutput
    ListStackResourcesInput: ListStackResourcesInput
    ListStackResourcesOutput: ListStackResourcesOutput
    ListStacksInput: ListStacksInput
    ListStacksOutput: ListStacksOutput
    ListStackSetAutoDeploymentTargetsInput: ListStackSetAutoDeploymentTargetsInput
    ListStackSetAutoDeploymentTargetsOutput: ListStackSetAutoDeploymentTargetsOutput
    ListStackSetOperationResultsInput: ListStackSetOperationResultsInput
    ListStackSetOperationResultsOutput: ListStackSetOperationResultsOutput
    ListStackSetOperationsInput: ListStackSetOperationsInput
    ListStackSetOperationsOutput: ListStackSetOperationsOutput
    ListStackSetsInput: ListStackSetsInput
    ListStackSetsOutput: ListStackSetsOutput
    ListTypeRegistrationsInput: ListTypeRegistrationsInput
    ListTypeRegistrationsOutput: ListTypeRegistrationsOutput
    ListTypesInput: ListTypesInput
    ListTypesOutput: ListTypesOutput
    ListTypeVersionsInput: ListTypeVersionsInput
    ListTypeVersionsOutput: ListTypeVersionsOutput
    PublishTypeInput: PublishTypeInput
    PublishTypeOutput: PublishTypeOutput
    RecordHandlerProgressInput: RecordHandlerProgressInput
    RecordHandlerProgressOutput: RecordHandlerProgressOutput
    RegisterPublisherInput: RegisterPublisherInput
    RegisterPublisherOutput: RegisterPublisherOutput
    RegisterTypeInput: RegisterTypeInput
    RegisterTypeOutput: RegisterTypeOutput
    RollbackStackInput: RollbackStackInput
    RollbackStackOutput: RollbackStackOutput
    SetStackPolicyInput: SetStackPolicyInput
    SetStackPolicyOutput: SetStackPolicyOutput
    SetTypeConfigurationInput: SetTypeConfigurationInput
    SetTypeConfigurationOutput: SetTypeConfigurationOutput
    SetTypeDefaultVersionInput: SetTypeDefaultVersionInput
    SetTypeDefaultVersionOutput: SetTypeDefaultVersionOutput
    SignalResourceInput: SignalResourceInput
    SignalResourceOutput: SignalResourceOutput
    StartResourceScanInput: StartResourceScanInput
    StartResourceScanOutput: StartResourceScanOutput
    StopStackSetOperationInput: StopStackSetOperationInput
    StopStackSetOperationOutput: StopStackSetOperationOutput
    TestTypeInput: TestTypeInput
    TestTypeOutput: TestTypeOutput
    UpdateGeneratedTemplateInput: UpdateGeneratedTemplateInput
    UpdateGeneratedTemplateOutput: UpdateGeneratedTemplateOutput
    UpdateStackInput: UpdateStackInput
    UpdateStackOutput: UpdateStackOutput
    UpdateStackInstancesInput: UpdateStackInstancesInput
    UpdateStackInstancesOutput: UpdateStackInstancesOutput
    UpdateStackSetInput: UpdateStackSetInput
    UpdateStackSetOutput: UpdateStackSetOutput
    UpdateTerminationProtectionInput: UpdateTerminationProtectionInput
    UpdateTerminationProtectionOutput: UpdateTerminationProtectionOutput
    ValidateTemplateInput: ValidateTemplateInput
    ValidateTemplateOutput: ValidateTemplateOutput
end

return M
