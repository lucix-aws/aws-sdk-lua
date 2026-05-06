local record AddTagsToResourceInput
    ResourceType: string
    ResourceId: string
    Tags: {Tag}
end

local record AddTagsToResourceOutput
end

local record AssociateOpsItemRelatedItemInput
    OpsItemId: string
    AssociationType: string
    ResourceType: string
    ResourceUri: string
end

local record AssociateOpsItemRelatedItemOutput
    AssociationId: string
end

local record CancelCommandInput
    CommandId: string
    InstanceIds: {string}
end

local record CancelCommandOutput
end

local record CancelMaintenanceWindowExecutionInput
    WindowExecutionId: string
end

local record CancelMaintenanceWindowExecutionOutput
    WindowExecutionId: string
end

local record CreateActivationInput
    Description: string
    DefaultInstanceName: string
    IamRole: string
    RegistrationLimit: number
    ExpirationDate: number
    Tags: {Tag}
    RegistrationMetadata: {RegistrationMetadataItem}
end

local record CreateActivationOutput
    ActivationId: string
    ActivationCode: string
end

local record CreateAssociationInput
    Name: string
    DocumentVersion: string
    InstanceId: string
    Parameters: {string : {string}}
    Targets: {Target}
    ScheduleExpression: string
    OutputLocation: InstanceAssociationOutputLocation
    AssociationName: string
    AutomationTargetParameterName: string
    MaxErrors: string
    MaxConcurrency: string
    ComplianceSeverity: string
    SyncCompliance: string
    ApplyOnlyAtCronInterval: boolean
    CalendarNames: {string}
    TargetLocations: {TargetLocation}
    ScheduleOffset: number
    Duration: number
    TargetMaps: {{string : {string}}}
    Tags: {Tag}
    AlarmConfiguration: AlarmConfiguration
    AssociationDispatchAssumeRole: string
end

local record CreateAssociationOutput
    AssociationDescription: AssociationDescription
end

local record CreateAssociationBatchInput
    Entries: {CreateAssociationBatchRequestEntry}
    AssociationDispatchAssumeRole: string
end

local record CreateAssociationBatchOutput
    Successful: {AssociationDescription}
    Failed: {FailedCreateAssociation}
end

local record CreateDocumentInput
    Content: string
    Requires: {DocumentRequires}
    Attachments: {AttachmentsSource}
    Name: string
    DisplayName: string
    VersionName: string
    DocumentType: string
    DocumentFormat: string
    TargetType: string
    Tags: {Tag}
end

local record CreateDocumentOutput
    DocumentDescription: DocumentDescription
end

local record CreateMaintenanceWindowInput
    Name: string
    Description: string
    StartDate: string
    EndDate: string
    Schedule: string
    ScheduleTimezone: string
    ScheduleOffset: number
    Duration: number
    Cutoff: number
    AllowUnassociatedTargets: boolean
    ClientToken: string
    Tags: {Tag}
end

local record CreateMaintenanceWindowOutput
    WindowId: string
end

local record CreateOpsItemInput
    Description: string
    OpsItemType: string
    OperationalData: {string : OpsItemDataValue}
    Notifications: {OpsItemNotification}
    Priority: number
    RelatedOpsItems: {RelatedOpsItem}
    Source: string
    Title: string
    Tags: {Tag}
    Category: string
    Severity: string
    ActualStartTime: number
    ActualEndTime: number
    PlannedStartTime: number
    PlannedEndTime: number
    AccountId: string
end

local record CreateOpsItemOutput
    OpsItemId: string
    OpsItemArn: string
end

local record CreateOpsMetadataInput
    ResourceId: string
    Metadata: {string : MetadataValue}
    Tags: {Tag}
end

local record CreateOpsMetadataOutput
    OpsMetadataArn: string
end

local record CreatePatchBaselineInput
    OperatingSystem: string
    Name: string
    GlobalFilters: PatchFilterGroup
    ApprovalRules: PatchRuleGroup
    ApprovedPatches: {string}
    ApprovedPatchesComplianceLevel: string
    ApprovedPatchesEnableNonSecurity: boolean
    RejectedPatches: {string}
    RejectedPatchesAction: string
    Description: string
    Sources: {PatchSource}
    AvailableSecurityUpdatesComplianceStatus: string
    ClientToken: string
    Tags: {Tag}
end

local record CreatePatchBaselineOutput
    BaselineId: string
end

local record CreateResourceDataSyncInput
    SyncName: string
    S3Destination: ResourceDataSyncS3Destination
    SyncType: string
    SyncSource: ResourceDataSyncSource
end

local record CreateResourceDataSyncOutput
end

local record DeleteActivationInput
    ActivationId: string
end

local record DeleteActivationOutput
end

local record DeleteAssociationInput
    Name: string
    InstanceId: string
    AssociationId: string
end

local record DeleteAssociationOutput
end

local record DeleteDocumentInput
    Name: string
    DocumentVersion: string
    VersionName: string
    Force: boolean
end

local record DeleteDocumentOutput
end

local record DeleteInventoryInput
    TypeName: string
    SchemaDeleteOption: string
    DryRun: boolean
    ClientToken: string
end

local record DeleteInventoryOutput
    DeletionId: string
    TypeName: string
    DeletionSummary: InventoryDeletionSummary
end

local record DeleteMaintenanceWindowInput
    WindowId: string
end

local record DeleteMaintenanceWindowOutput
    WindowId: string
end

local record DeleteOpsItemInput
    OpsItemId: string
end

local record DeleteOpsItemOutput
end

local record DeleteOpsMetadataInput
    OpsMetadataArn: string
end

local record DeleteOpsMetadataOutput
end

local record DeleteParameterInput
    Name: string
end

local record DeleteParameterOutput
end

local record DeleteParametersInput
    Names: {string}
end

local record DeleteParametersOutput
    DeletedParameters: {string}
    InvalidParameters: {string}
end

local record DeletePatchBaselineInput
    BaselineId: string
end

local record DeletePatchBaselineOutput
    BaselineId: string
end

local record DeleteResourceDataSyncInput
    SyncName: string
    SyncType: string
end

local record DeleteResourceDataSyncOutput
end

local record DeleteResourcePolicyInput
    ResourceArn: string
    PolicyId: string
    PolicyHash: string
end

local record DeleteResourcePolicyOutput
end

local record DeregisterManagedInstanceInput
    InstanceId: string
end

local record DeregisterManagedInstanceOutput
end

local record DeregisterPatchBaselineForPatchGroupInput
    BaselineId: string
    PatchGroup: string
end

local record DeregisterPatchBaselineForPatchGroupOutput
    BaselineId: string
    PatchGroup: string
end

local record DeregisterTargetFromMaintenanceWindowInput
    WindowId: string
    WindowTargetId: string
    Safe: boolean
end

local record DeregisterTargetFromMaintenanceWindowOutput
    WindowId: string
    WindowTargetId: string
end

local record DeregisterTaskFromMaintenanceWindowInput
    WindowId: string
    WindowTaskId: string
end

local record DeregisterTaskFromMaintenanceWindowOutput
    WindowId: string
    WindowTaskId: string
end

local record DescribeActivationsInput
    Filters: {DescribeActivationsFilter}
    MaxResults: number
    NextToken: string
end

local record DescribeActivationsOutput
    ActivationList: {Activation}
    NextToken: string
end

local record DescribeAssociationInput
    Name: string
    InstanceId: string
    AssociationId: string
    AssociationVersion: string
end

local record DescribeAssociationOutput
    AssociationDescription: AssociationDescription
end

local record DescribeAssociationExecutionsInput
    AssociationId: string
    Filters: {AssociationExecutionFilter}
    MaxResults: number
    NextToken: string
end

local record DescribeAssociationExecutionsOutput
    AssociationExecutions: {AssociationExecution}
    NextToken: string
end

local record DescribeAssociationExecutionTargetsInput
    AssociationId: string
    ExecutionId: string
    Filters: {AssociationExecutionTargetsFilter}
    MaxResults: number
    NextToken: string
end

local record DescribeAssociationExecutionTargetsOutput
    AssociationExecutionTargets: {AssociationExecutionTarget}
    NextToken: string
end

local record DescribeAutomationExecutionsInput
    Filters: {AutomationExecutionFilter}
    MaxResults: number
    NextToken: string
end

local record DescribeAutomationExecutionsOutput
    AutomationExecutionMetadataList: {AutomationExecutionMetadata}
    NextToken: string
end

local record DescribeAutomationStepExecutionsInput
    AutomationExecutionId: string
    Filters: {StepExecutionFilter}
    NextToken: string
    MaxResults: number
    ReverseOrder: boolean
end

local record DescribeAutomationStepExecutionsOutput
    StepExecutions: {StepExecution}
    NextToken: string
end

local record DescribeAvailablePatchesInput
    Filters: {PatchOrchestratorFilter}
    MaxResults: number
    NextToken: string
end

local record DescribeAvailablePatchesOutput
    Patches: {Patch}
    NextToken: string
end

local record DescribeDocumentInput
    Name: string
    DocumentVersion: string
    VersionName: string
end

local record DescribeDocumentOutput
    Document: DocumentDescription
end

local record DescribeDocumentPermissionInput
    Name: string
    PermissionType: string
    MaxResults: number
    NextToken: string
end

local record DescribeDocumentPermissionOutput
    AccountIds: {string}
    AccountSharingInfoList: {AccountSharingInfo}
    NextToken: string
end

local record DescribeEffectiveInstanceAssociationsInput
    InstanceId: string
    MaxResults: number
    NextToken: string
end

local record DescribeEffectiveInstanceAssociationsOutput
    Associations: {InstanceAssociation}
    NextToken: string
end

local record DescribeEffectivePatchesForPatchBaselineInput
    BaselineId: string
    MaxResults: number
    NextToken: string
end

local record DescribeEffectivePatchesForPatchBaselineOutput
    EffectivePatches: {EffectivePatch}
    NextToken: string
end

local record DescribeInstanceAssociationsStatusInput
    InstanceId: string
    MaxResults: number
    NextToken: string
end

local record DescribeInstanceAssociationsStatusOutput
    InstanceAssociationStatusInfos: {InstanceAssociationStatusInfo}
    NextToken: string
end

local record DescribeInstanceInformationInput
    InstanceInformationFilterList: {InstanceInformationFilter}
    Filters: {InstanceInformationStringFilter}
    MaxResults: number
    NextToken: string
end

local record DescribeInstanceInformationOutput
    InstanceInformationList: {InstanceInformation}
    NextToken: string
end

local record DescribeInstancePatchesInput
    InstanceId: string
    Filters: {PatchOrchestratorFilter}
    NextToken: string
    MaxResults: number
end

local record DescribeInstancePatchesOutput
    Patches: {PatchComplianceData}
    NextToken: string
end

local record DescribeInstancePatchStatesInput
    InstanceIds: {string}
    NextToken: string
    MaxResults: number
end

local record DescribeInstancePatchStatesOutput
    InstancePatchStates: {InstancePatchState}
    NextToken: string
end

local record DescribeInstancePatchStatesForPatchGroupInput
    PatchGroup: string
    Filters: {InstancePatchStateFilter}
    NextToken: string
    MaxResults: number
end

local record DescribeInstancePatchStatesForPatchGroupOutput
    InstancePatchStates: {InstancePatchState}
    NextToken: string
end

local record DescribeInstancePropertiesInput
    InstancePropertyFilterList: {InstancePropertyFilter}
    FiltersWithOperator: {InstancePropertyStringFilter}
    MaxResults: number
    NextToken: string
end

local record DescribeInstancePropertiesOutput
    InstanceProperties: {InstanceProperty}
    NextToken: string
end

local record DescribeInventoryDeletionsInput
    DeletionId: string
    NextToken: string
    MaxResults: number
end

local record DescribeInventoryDeletionsOutput
    InventoryDeletions: {InventoryDeletionStatusItem}
    NextToken: string
end

local record DescribeMaintenanceWindowExecutionsInput
    WindowId: string
    Filters: {MaintenanceWindowFilter}
    MaxResults: number
    NextToken: string
end

local record DescribeMaintenanceWindowExecutionsOutput
    WindowExecutions: {MaintenanceWindowExecution}
    NextToken: string
end

local record DescribeMaintenanceWindowExecutionTaskInvocationsInput
    WindowExecutionId: string
    TaskId: string
    Filters: {MaintenanceWindowFilter}
    MaxResults: number
    NextToken: string
end

local record DescribeMaintenanceWindowExecutionTaskInvocationsOutput
    WindowExecutionTaskInvocationIdentities: {MaintenanceWindowExecutionTaskInvocationIdentity}
    NextToken: string
end

local record DescribeMaintenanceWindowExecutionTasksInput
    WindowExecutionId: string
    Filters: {MaintenanceWindowFilter}
    MaxResults: number
    NextToken: string
end

local record DescribeMaintenanceWindowExecutionTasksOutput
    WindowExecutionTaskIdentities: {MaintenanceWindowExecutionTaskIdentity}
    NextToken: string
end

local record DescribeMaintenanceWindowsInput
    Filters: {MaintenanceWindowFilter}
    MaxResults: number
    NextToken: string
end

local record DescribeMaintenanceWindowsOutput
    WindowIdentities: {MaintenanceWindowIdentity}
    NextToken: string
end

local record DescribeMaintenanceWindowScheduleInput
    WindowId: string
    Targets: {Target}
    ResourceType: string
    Filters: {PatchOrchestratorFilter}
    MaxResults: number
    NextToken: string
end

local record DescribeMaintenanceWindowScheduleOutput
    ScheduledWindowExecutions: {ScheduledWindowExecution}
    NextToken: string
end

local record DescribeMaintenanceWindowsForTargetInput
    Targets: {Target}
    ResourceType: string
    MaxResults: number
    NextToken: string
end

local record DescribeMaintenanceWindowsForTargetOutput
    WindowIdentities: {MaintenanceWindowIdentityForTarget}
    NextToken: string
end

local record DescribeMaintenanceWindowTargetsInput
    WindowId: string
    Filters: {MaintenanceWindowFilter}
    MaxResults: number
    NextToken: string
end

local record DescribeMaintenanceWindowTargetsOutput
    Targets: {MaintenanceWindowTarget}
    NextToken: string
end

local record DescribeMaintenanceWindowTasksInput
    WindowId: string
    Filters: {MaintenanceWindowFilter}
    MaxResults: number
    NextToken: string
end

local record DescribeMaintenanceWindowTasksOutput
    Tasks: {MaintenanceWindowTask}
    NextToken: string
end

local record DescribeOpsItemsInput
    OpsItemFilters: {OpsItemFilter}
    MaxResults: number
    NextToken: string
end

local record DescribeOpsItemsOutput
    NextToken: string
    OpsItemSummaries: {OpsItemSummary}
end

local record DescribeParametersInput
    Filters: {ParametersFilter}
    ParameterFilters: {ParameterStringFilter}
    MaxResults: number
    NextToken: string
    Shared: boolean
end

local record DescribeParametersOutput
    Parameters: {ParameterMetadata}
    NextToken: string
end

local record DescribePatchBaselinesInput
    Filters: {PatchOrchestratorFilter}
    MaxResults: number
    NextToken: string
end

local record DescribePatchBaselinesOutput
    BaselineIdentities: {PatchBaselineIdentity}
    NextToken: string
end

local record DescribePatchGroupsInput
    MaxResults: number
    Filters: {PatchOrchestratorFilter}
    NextToken: string
end

local record DescribePatchGroupsOutput
    Mappings: {PatchGroupPatchBaselineMapping}
    NextToken: string
end

local record DescribePatchGroupStateInput
    PatchGroup: string
end

local record DescribePatchGroupStateOutput
    Instances: number
    InstancesWithInstalledPatches: number
    InstancesWithInstalledOtherPatches: number
    InstancesWithInstalledPendingRebootPatches: number
    InstancesWithInstalledRejectedPatches: number
    InstancesWithMissingPatches: number
    InstancesWithFailedPatches: number
    InstancesWithNotApplicablePatches: number
    InstancesWithUnreportedNotApplicablePatches: number
    InstancesWithCriticalNonCompliantPatches: number
    InstancesWithSecurityNonCompliantPatches: number
    InstancesWithOtherNonCompliantPatches: number
    InstancesWithAvailableSecurityUpdates: number
end

local record DescribePatchPropertiesInput
    OperatingSystem: string
    Property: string
    PatchSet: string
    MaxResults: number
    NextToken: string
end

local record DescribePatchPropertiesOutput
    Properties: {{string : string}}
    NextToken: string
end

local record DescribeSessionsInput
    State: string
    MaxResults: number
    NextToken: string
    Filters: {SessionFilter}
end

local record DescribeSessionsOutput
    Sessions: {Session}
    NextToken: string
end

local record DisassociateOpsItemRelatedItemInput
    OpsItemId: string
    AssociationId: string
end

local record DisassociateOpsItemRelatedItemOutput
end

local record GetAccessTokenInput
    AccessRequestId: string
end

local record GetAccessTokenOutput
    Credentials: Credentials
    AccessRequestStatus: string
end

local record GetAutomationExecutionInput
    AutomationExecutionId: string
end

local record GetAutomationExecutionOutput
    AutomationExecution: AutomationExecution
end

local record GetCalendarStateInput
    CalendarNames: {string}
    AtTime: string
end

local record GetCalendarStateOutput
    State: string
    AtTime: string
    NextTransitionTime: string
end

local record GetCommandInvocationInput
    CommandId: string
    InstanceId: string
    PluginName: string
end

local record GetCommandInvocationOutput
    CommandId: string
    InstanceId: string
    Comment: string
    DocumentName: string
    DocumentVersion: string
    PluginName: string
    ResponseCode: number
    ExecutionStartDateTime: string
    ExecutionElapsedTime: string
    ExecutionEndDateTime: string
    Status: string
    StatusDetails: string
    StandardOutputContent: string
    StandardOutputUrl: string
    StandardErrorContent: string
    StandardErrorUrl: string
    CloudWatchOutputConfig: CloudWatchOutputConfig
end

local record GetConnectionStatusInput
    Target: string
end

local record GetConnectionStatusOutput
    Target: string
    Status: string
end

local record GetDefaultPatchBaselineInput
    OperatingSystem: string
end

local record GetDefaultPatchBaselineOutput
    BaselineId: string
    OperatingSystem: string
end

local record GetDeployablePatchSnapshotForInstanceInput
    InstanceId: string
    SnapshotId: string
    BaselineOverride: BaselineOverride
    UseS3DualStackEndpoint: boolean
end

local record GetDeployablePatchSnapshotForInstanceOutput
    InstanceId: string
    SnapshotId: string
    SnapshotDownloadUrl: string
    Product: string
end

local record GetDocumentInput
    Name: string
    VersionName: string
    DocumentVersion: string
    DocumentFormat: string
end

local record GetDocumentOutput
    Name: string
    CreatedDate: number
    DisplayName: string
    VersionName: string
    DocumentVersion: string
    Status: string
    StatusInformation: string
    Content: string
    DocumentType: string
    DocumentFormat: string
    Requires: {DocumentRequires}
    AttachmentsContent: {AttachmentContent}
    ReviewStatus: string
end

local record GetExecutionPreviewInput
    ExecutionPreviewId: string
end

local record GetExecutionPreviewOutput
    ExecutionPreviewId: string
    EndedAt: number
    Status: string
    StatusMessage: string
    ExecutionPreview: ExecutionPreview
end

local record GetInventoryInput
    Filters: {InventoryFilter}
    Aggregators: {InventoryAggregator}
    ResultAttributes: {ResultAttribute}
    NextToken: string
    MaxResults: number
end

local record GetInventoryOutput
    Entities: {InventoryResultEntity}
    NextToken: string
end

local record GetInventorySchemaInput
    TypeName: string
    NextToken: string
    MaxResults: number
    Aggregator: boolean
    SubType: boolean
end

local record GetInventorySchemaOutput
    Schemas: {InventoryItemSchema}
    NextToken: string
end

local record GetMaintenanceWindowInput
    WindowId: string
end

local record GetMaintenanceWindowOutput
    WindowId: string
    Name: string
    Description: string
    StartDate: string
    EndDate: string
    Schedule: string
    ScheduleTimezone: string
    ScheduleOffset: number
    NextExecutionTime: string
    Duration: number
    Cutoff: number
    AllowUnassociatedTargets: boolean
    Enabled: boolean
    CreatedDate: number
    ModifiedDate: number
end

local record GetMaintenanceWindowExecutionInput
    WindowExecutionId: string
end

local record GetMaintenanceWindowExecutionOutput
    WindowExecutionId: string
    TaskIds: {string}
    Status: string
    StatusDetails: string
    StartTime: number
    EndTime: number
end

local record GetMaintenanceWindowExecutionTaskInput
    WindowExecutionId: string
    TaskId: string
end

local record GetMaintenanceWindowExecutionTaskOutput
    WindowExecutionId: string
    TaskExecutionId: string
    TaskArn: string
    ServiceRole: string
    Type: string
    TaskParameters: {{string : MaintenanceWindowTaskParameterValueExpression}}
    Priority: number
    MaxConcurrency: string
    MaxErrors: string
    Status: string
    StatusDetails: string
    StartTime: number
    EndTime: number
    AlarmConfiguration: AlarmConfiguration
    TriggeredAlarms: {AlarmStateInformation}
end

local record GetMaintenanceWindowExecutionTaskInvocationInput
    WindowExecutionId: string
    TaskId: string
    InvocationId: string
end

local record GetMaintenanceWindowExecutionTaskInvocationOutput
    WindowExecutionId: string
    TaskExecutionId: string
    InvocationId: string
    ExecutionId: string
    TaskType: string
    Parameters: string
    Status: string
    StatusDetails: string
    StartTime: number
    EndTime: number
    OwnerInformation: string
    WindowTargetId: string
end

local record GetMaintenanceWindowTaskInput
    WindowId: string
    WindowTaskId: string
end

local record GetMaintenanceWindowTaskOutput
    WindowId: string
    WindowTaskId: string
    Targets: {Target}
    TaskArn: string
    ServiceRoleArn: string
    TaskType: string
    TaskParameters: {string : MaintenanceWindowTaskParameterValueExpression}
    TaskInvocationParameters: MaintenanceWindowTaskInvocationParameters
    Priority: number
    MaxConcurrency: string
    MaxErrors: string
    LoggingInfo: LoggingInfo
    Name: string
    Description: string
    CutoffBehavior: string
    AlarmConfiguration: AlarmConfiguration
end

local record GetOpsItemInput
    OpsItemId: string
    OpsItemArn: string
end

local record GetOpsItemOutput
    OpsItem: OpsItem
end

local record GetOpsMetadataInput
    OpsMetadataArn: string
    MaxResults: number
    NextToken: string
end

local record GetOpsMetadataOutput
    ResourceId: string
    Metadata: {string : MetadataValue}
    NextToken: string
end

local record GetOpsSummaryInput
    SyncName: string
    Filters: {OpsFilter}
    Aggregators: {OpsAggregator}
    ResultAttributes: {OpsResultAttribute}
    NextToken: string
    MaxResults: number
end

local record GetOpsSummaryOutput
    Entities: {OpsEntity}
    NextToken: string
end

local record GetParameterInput
    Name: string
    WithDecryption: boolean
end

local record GetParameterOutput
    Parameter: Parameter
end

local record GetParameterHistoryInput
    Name: string
    WithDecryption: boolean
    MaxResults: number
    NextToken: string
end

local record GetParameterHistoryOutput
    Parameters: {ParameterHistory}
    NextToken: string
end

local record GetParametersInput
    Names: {string}
    WithDecryption: boolean
end

local record GetParametersOutput
    Parameters: {Parameter}
    InvalidParameters: {string}
end

local record GetParametersByPathInput
    Path: string
    Recursive: boolean
    ParameterFilters: {ParameterStringFilter}
    WithDecryption: boolean
    MaxResults: number
    NextToken: string
end

local record GetParametersByPathOutput
    Parameters: {Parameter}
    NextToken: string
end

local record GetPatchBaselineInput
    BaselineId: string
end

local record GetPatchBaselineOutput
    BaselineId: string
    Name: string
    OperatingSystem: string
    GlobalFilters: PatchFilterGroup
    ApprovalRules: PatchRuleGroup
    ApprovedPatches: {string}
    ApprovedPatchesComplianceLevel: string
    ApprovedPatchesEnableNonSecurity: boolean
    RejectedPatches: {string}
    RejectedPatchesAction: string
    PatchGroups: {string}
    CreatedDate: number
    ModifiedDate: number
    Description: string
    Sources: {PatchSource}
    AvailableSecurityUpdatesComplianceStatus: string
end

local record GetPatchBaselineForPatchGroupInput
    PatchGroup: string
    OperatingSystem: string
end

local record GetPatchBaselineForPatchGroupOutput
    BaselineId: string
    PatchGroup: string
    OperatingSystem: string
end

local record GetResourcePoliciesInput
    ResourceArn: string
    NextToken: string
    MaxResults: number
end

local record GetResourcePoliciesOutput
    NextToken: string
    Policies: {GetResourcePoliciesResponseEntry}
end

local record GetServiceSettingInput
    SettingId: string
end

local record GetServiceSettingOutput
    ServiceSetting: ServiceSetting
end

local record LabelParameterVersionInput
    Name: string
    ParameterVersion: number
    Labels: {string}
end

local record LabelParameterVersionOutput
    InvalidLabels: {string}
    ParameterVersion: number
end

local record ListAssociationsInput
    AssociationFilterList: {AssociationFilter}
    MaxResults: number
    NextToken: string
end

local record ListAssociationsOutput
    Associations: {Association}
    NextToken: string
end

local record ListAssociationVersionsInput
    AssociationId: string
    MaxResults: number
    NextToken: string
end

local record ListAssociationVersionsOutput
    AssociationVersions: {AssociationVersionInfo}
    NextToken: string
end

local record ListCommandInvocationsInput
    CommandId: string
    InstanceId: string
    MaxResults: number
    NextToken: string
    Filters: {CommandFilter}
    Details: boolean
end

local record ListCommandInvocationsOutput
    CommandInvocations: {CommandInvocation}
    NextToken: string
end

local record ListCommandsInput
    CommandId: string
    InstanceId: string
    MaxResults: number
    NextToken: string
    Filters: {CommandFilter}
end

local record ListCommandsOutput
    Commands: {Command}
    NextToken: string
end

local record ListComplianceItemsInput
    Filters: {ComplianceStringFilter}
    ResourceIds: {string}
    ResourceTypes: {string}
    NextToken: string
    MaxResults: number
end

local record ListComplianceItemsOutput
    ComplianceItems: {ComplianceItem}
    NextToken: string
end

local record ListComplianceSummariesInput
    Filters: {ComplianceStringFilter}
    NextToken: string
    MaxResults: number
end

local record ListComplianceSummariesOutput
    ComplianceSummaryItems: {ComplianceSummaryItem}
    NextToken: string
end

local record ListDocumentMetadataHistoryInput
    Name: string
    DocumentVersion: string
    Metadata: string
    NextToken: string
    MaxResults: number
end

local record ListDocumentMetadataHistoryOutput
    Name: string
    DocumentVersion: string
    Author: string
    Metadata: DocumentMetadataResponseInfo
    NextToken: string
end

local record ListDocumentsInput
    DocumentFilterList: {DocumentFilter}
    Filters: {DocumentKeyValuesFilter}
    MaxResults: number
    NextToken: string
end

local record ListDocumentsOutput
    DocumentIdentifiers: {DocumentIdentifier}
    NextToken: string
end

local record ListDocumentVersionsInput
    Name: string
    MaxResults: number
    NextToken: string
end

local record ListDocumentVersionsOutput
    DocumentVersions: {DocumentVersionInfo}
    NextToken: string
end

local record ListInventoryEntriesInput
    InstanceId: string
    TypeName: string
    Filters: {InventoryFilter}
    NextToken: string
    MaxResults: number
end

local record ListInventoryEntriesOutput
    TypeName: string
    InstanceId: string
    SchemaVersion: string
    CaptureTime: string
    Entries: {{string : string}}
    NextToken: string
end

local record ListNodesInput
    SyncName: string
    Filters: {NodeFilter}
    NextToken: string
    MaxResults: number
end

local record ListNodesOutput
    Nodes: {Node}
    NextToken: string
end

local record ListNodesSummaryInput
    SyncName: string
    Filters: {NodeFilter}
    Aggregators: {NodeAggregator}
    NextToken: string
    MaxResults: number
end

local record ListNodesSummaryOutput
    Summary: {{string : string}}
    NextToken: string
end

local record ListOpsItemEventsInput
    Filters: {OpsItemEventFilter}
    MaxResults: number
    NextToken: string
end

local record ListOpsItemEventsOutput
    NextToken: string
    Summaries: {OpsItemEventSummary}
end

local record ListOpsItemRelatedItemsInput
    OpsItemId: string
    Filters: {OpsItemRelatedItemsFilter}
    MaxResults: number
    NextToken: string
end

local record ListOpsItemRelatedItemsOutput
    NextToken: string
    Summaries: {OpsItemRelatedItemSummary}
end

local record ListOpsMetadataInput
    Filters: {OpsMetadataFilter}
    MaxResults: number
    NextToken: string
end

local record ListOpsMetadataOutput
    OpsMetadataList: {OpsMetadata}
    NextToken: string
end

local record ListResourceComplianceSummariesInput
    Filters: {ComplianceStringFilter}
    NextToken: string
    MaxResults: number
end

local record ListResourceComplianceSummariesOutput
    ResourceComplianceSummaryItems: {ResourceComplianceSummaryItem}
    NextToken: string
end

local record ListResourceDataSyncInput
    SyncType: string
    NextToken: string
    MaxResults: number
end

local record ListResourceDataSyncOutput
    ResourceDataSyncItems: {ResourceDataSyncItem}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceType: string
    ResourceId: string
end

local record ListTagsForResourceOutput
    TagList: {Tag}
end

local record ModifyDocumentPermissionInput
    Name: string
    PermissionType: string
    AccountIdsToAdd: {string}
    AccountIdsToRemove: {string}
    SharedDocumentVersion: string
end

local record ModifyDocumentPermissionOutput
end

local record PutComplianceItemsInput
    ResourceId: string
    ResourceType: string
    ComplianceType: string
    ExecutionSummary: ComplianceExecutionSummary
    Items: {ComplianceItemEntry}
    ItemContentHash: string
    UploadType: string
end

local record PutComplianceItemsOutput
end

local record PutInventoryInput
    InstanceId: string
    Items: {InventoryItem}
end

local record PutInventoryOutput
    Message: string
end

local record PutParameterInput
    Name: string
    Description: string
    Value: string
    Type: string
    KeyId: string
    Overwrite: boolean
    AllowedPattern: string
    Tags: {Tag}
    Tier: string
    Policies: string
    DataType: string
end

local record PutParameterOutput
    Version: number
    Tier: string
end

local record PutResourcePolicyInput
    ResourceArn: string
    Policy: string
    PolicyId: string
    PolicyHash: string
end

local record PutResourcePolicyOutput
    PolicyId: string
    PolicyHash: string
end

local record RegisterDefaultPatchBaselineInput
    BaselineId: string
end

local record RegisterDefaultPatchBaselineOutput
    BaselineId: string
end

local record RegisterPatchBaselineForPatchGroupInput
    BaselineId: string
    PatchGroup: string
end

local record RegisterPatchBaselineForPatchGroupOutput
    BaselineId: string
    PatchGroup: string
end

local record RegisterTargetWithMaintenanceWindowInput
    WindowId: string
    ResourceType: string
    Targets: {Target}
    OwnerInformation: string
    Name: string
    Description: string
    ClientToken: string
end

local record RegisterTargetWithMaintenanceWindowOutput
    WindowTargetId: string
end

local record RegisterTaskWithMaintenanceWindowInput
    WindowId: string
    Targets: {Target}
    TaskArn: string
    ServiceRoleArn: string
    TaskType: string
    TaskParameters: {string : MaintenanceWindowTaskParameterValueExpression}
    TaskInvocationParameters: MaintenanceWindowTaskInvocationParameters
    Priority: number
    MaxConcurrency: string
    MaxErrors: string
    LoggingInfo: LoggingInfo
    Name: string
    Description: string
    ClientToken: string
    CutoffBehavior: string
    AlarmConfiguration: AlarmConfiguration
end

local record RegisterTaskWithMaintenanceWindowOutput
    WindowTaskId: string
end

local record RemoveTagsFromResourceInput
    ResourceType: string
    ResourceId: string
    TagKeys: {string}
end

local record RemoveTagsFromResourceOutput
end

local record ResetServiceSettingInput
    SettingId: string
end

local record ResetServiceSettingOutput
    ServiceSetting: ServiceSetting
end

local record ResumeSessionInput
    SessionId: string
end

local record ResumeSessionOutput
    SessionId: string
    TokenValue: string
    StreamUrl: string
end

local record SendAutomationSignalInput
    AutomationExecutionId: string
    SignalType: string
    Payload: {string : {string}}
end

local record SendAutomationSignalOutput
end

local record SendCommandInput
    InstanceIds: {string}
    Targets: {Target}
    DocumentName: string
    DocumentVersion: string
    DocumentHash: string
    DocumentHashType: string
    TimeoutSeconds: number
    Comment: string
    Parameters: {string : {string}}
    OutputS3Region: string
    OutputS3BucketName: string
    OutputS3KeyPrefix: string
    MaxConcurrency: string
    MaxErrors: string
    ServiceRoleArn: string
    NotificationConfig: NotificationConfig
    CloudWatchOutputConfig: CloudWatchOutputConfig
    AlarmConfiguration: AlarmConfiguration
end

local record SendCommandOutput
    Command: Command
end

local record StartAccessRequestInput
    Reason: string
    Targets: {Target}
    Tags: {Tag}
end

local record StartAccessRequestOutput
    AccessRequestId: string
end

local record StartAssociationsOnceInput
    AssociationIds: {string}
end

local record StartAssociationsOnceOutput
end

local record StartAutomationExecutionInput
    DocumentName: string
    DocumentVersion: string
    Parameters: {string : {string}}
    ClientToken: string
    Mode: string
    TargetParameterName: string
    Targets: {Target}
    TargetMaps: {{string : {string}}}
    MaxConcurrency: string
    MaxErrors: string
    TargetLocations: {TargetLocation}
    Tags: {Tag}
    AlarmConfiguration: AlarmConfiguration
    TargetLocationsURL: string
end

local record StartAutomationExecutionOutput
    AutomationExecutionId: string
end

local record StartChangeRequestExecutionInput
    ScheduledTime: number
    DocumentName: string
    DocumentVersion: string
    Parameters: {string : {string}}
    ChangeRequestName: string
    ClientToken: string
    AutoApprove: boolean
    Runbooks: {Runbook}
    Tags: {Tag}
    ScheduledEndTime: number
    ChangeDetails: string
end

local record StartChangeRequestExecutionOutput
    AutomationExecutionId: string
end

local record StartExecutionPreviewInput
    DocumentName: string
    DocumentVersion: string
    ExecutionInputs: ExecutionInputs
end

local record StartExecutionPreviewOutput
    ExecutionPreviewId: string
end

local record StartSessionInput
    Target: string
    DocumentName: string
    Reason: string
    Parameters: {string : {string}}
end

local record StartSessionOutput
    SessionId: string
    TokenValue: string
    StreamUrl: string
end

local record StopAutomationExecutionInput
    AutomationExecutionId: string
    Type: string
end

local record StopAutomationExecutionOutput
end

local record TerminateSessionInput
    SessionId: string
end

local record TerminateSessionOutput
    SessionId: string
end

local record UnlabelParameterVersionInput
    Name: string
    ParameterVersion: number
    Labels: {string}
end

local record UnlabelParameterVersionOutput
    RemovedLabels: {string}
    InvalidLabels: {string}
end

local record UpdateAssociationInput
    AssociationId: string
    Parameters: {string : {string}}
    DocumentVersion: string
    ScheduleExpression: string
    OutputLocation: InstanceAssociationOutputLocation
    Name: string
    Targets: {Target}
    AssociationName: string
    AssociationVersion: string
    AutomationTargetParameterName: string
    MaxErrors: string
    MaxConcurrency: string
    ComplianceSeverity: string
    SyncCompliance: string
    ApplyOnlyAtCronInterval: boolean
    CalendarNames: {string}
    TargetLocations: {TargetLocation}
    ScheduleOffset: number
    Duration: number
    TargetMaps: {{string : {string}}}
    AlarmConfiguration: AlarmConfiguration
    AssociationDispatchAssumeRole: string
end

local record UpdateAssociationOutput
    AssociationDescription: AssociationDescription
end

local record UpdateAssociationStatusInput
    Name: string
    InstanceId: string
    AssociationStatus: AssociationStatus
end

local record UpdateAssociationStatusOutput
    AssociationDescription: AssociationDescription
end

local record UpdateDocumentInput
    Content: string
    Attachments: {AttachmentsSource}
    Name: string
    DisplayName: string
    VersionName: string
    DocumentVersion: string
    DocumentFormat: string
    TargetType: string
end

local record UpdateDocumentOutput
    DocumentDescription: DocumentDescription
end

local record UpdateDocumentDefaultVersionInput
    Name: string
    DocumentVersion: string
end

local record UpdateDocumentDefaultVersionOutput
    Description: DocumentDefaultVersionDescription
end

local record UpdateDocumentMetadataInput
    Name: string
    DocumentVersion: string
    DocumentReviews: DocumentReviews
end

local record UpdateDocumentMetadataOutput
end

local record UpdateMaintenanceWindowInput
    WindowId: string
    Name: string
    Description: string
    StartDate: string
    EndDate: string
    Schedule: string
    ScheduleTimezone: string
    ScheduleOffset: number
    Duration: number
    Cutoff: number
    AllowUnassociatedTargets: boolean
    Enabled: boolean
    Replace: boolean
end

local record UpdateMaintenanceWindowOutput
    WindowId: string
    Name: string
    Description: string
    StartDate: string
    EndDate: string
    Schedule: string
    ScheduleTimezone: string
    ScheduleOffset: number
    Duration: number
    Cutoff: number
    AllowUnassociatedTargets: boolean
    Enabled: boolean
end

local record UpdateMaintenanceWindowTargetInput
    WindowId: string
    WindowTargetId: string
    Targets: {Target}
    OwnerInformation: string
    Name: string
    Description: string
    Replace: boolean
end

local record UpdateMaintenanceWindowTargetOutput
    WindowId: string
    WindowTargetId: string
    Targets: {Target}
    OwnerInformation: string
    Name: string
    Description: string
end

local record UpdateMaintenanceWindowTaskInput
    WindowId: string
    WindowTaskId: string
    Targets: {Target}
    TaskArn: string
    ServiceRoleArn: string
    TaskParameters: {string : MaintenanceWindowTaskParameterValueExpression}
    TaskInvocationParameters: MaintenanceWindowTaskInvocationParameters
    Priority: number
    MaxConcurrency: string
    MaxErrors: string
    LoggingInfo: LoggingInfo
    Name: string
    Description: string
    Replace: boolean
    CutoffBehavior: string
    AlarmConfiguration: AlarmConfiguration
end

local record UpdateMaintenanceWindowTaskOutput
    WindowId: string
    WindowTaskId: string
    Targets: {Target}
    TaskArn: string
    ServiceRoleArn: string
    TaskParameters: {string : MaintenanceWindowTaskParameterValueExpression}
    TaskInvocationParameters: MaintenanceWindowTaskInvocationParameters
    Priority: number
    MaxConcurrency: string
    MaxErrors: string
    LoggingInfo: LoggingInfo
    Name: string
    Description: string
    CutoffBehavior: string
    AlarmConfiguration: AlarmConfiguration
end

local record UpdateManagedInstanceRoleInput
    InstanceId: string
    IamRole: string
end

local record UpdateManagedInstanceRoleOutput
end

local record UpdateOpsItemInput
    Description: string
    OperationalData: {string : OpsItemDataValue}
    OperationalDataToDelete: {string}
    Notifications: {OpsItemNotification}
    Priority: number
    RelatedOpsItems: {RelatedOpsItem}
    Status: string
    OpsItemId: string
    Title: string
    Category: string
    Severity: string
    ActualStartTime: number
    ActualEndTime: number
    PlannedStartTime: number
    PlannedEndTime: number
    OpsItemArn: string
end

local record UpdateOpsItemOutput
end

local record UpdateOpsMetadataInput
    OpsMetadataArn: string
    MetadataToUpdate: {string : MetadataValue}
    KeysToDelete: {string}
end

local record UpdateOpsMetadataOutput
    OpsMetadataArn: string
end

local record UpdatePatchBaselineInput
    BaselineId: string
    Name: string
    GlobalFilters: PatchFilterGroup
    ApprovalRules: PatchRuleGroup
    ApprovedPatches: {string}
    ApprovedPatchesComplianceLevel: string
    ApprovedPatchesEnableNonSecurity: boolean
    RejectedPatches: {string}
    RejectedPatchesAction: string
    Description: string
    Sources: {PatchSource}
    AvailableSecurityUpdatesComplianceStatus: string
    Replace: boolean
end

local record UpdatePatchBaselineOutput
    BaselineId: string
    Name: string
    OperatingSystem: string
    GlobalFilters: PatchFilterGroup
    ApprovalRules: PatchRuleGroup
    ApprovedPatches: {string}
    ApprovedPatchesComplianceLevel: string
    ApprovedPatchesEnableNonSecurity: boolean
    RejectedPatches: {string}
    RejectedPatchesAction: string
    CreatedDate: number
    ModifiedDate: number
    Description: string
    Sources: {PatchSource}
    AvailableSecurityUpdatesComplianceStatus: string
end

local record UpdateResourceDataSyncInput
    SyncName: string
    SyncType: string
    SyncSource: ResourceDataSyncSource
end

local record UpdateResourceDataSyncOutput
end

local record UpdateServiceSettingInput
    SettingId: string
    SettingValue: string
end

local record UpdateServiceSettingOutput
end

local record InternalServerError
    Message: string
end

local record InvalidResourceId
end

local record InvalidResourceType
end

local record TooManyTagsError
end

local record TooManyUpdates
    Message: string
end

local record InternalServerError
    Message: string
end

local record OpsItemConflictException
    Message: string
end

local record OpsItemInvalidParameterException
    ParameterNames: {string}
    Message: string
end

local record OpsItemLimitExceededException
    ResourceTypes: {string}
    Limit: number
    LimitType: string
    Message: string
end

local record OpsItemNotFoundException
    Message: string
end

local record OpsItemRelatedItemAlreadyExistsException
    Message: string
    ResourceUri: string
    OpsItemId: string
end

local record DuplicateInstanceId
end

local record InternalServerError
    Message: string
end

local record InvalidCommandId
end

local record InvalidInstanceId
    Message: string
end

local record DoesNotExistException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidParameters
    Message: string
end

local record AssociationAlreadyExists
end

local record AssociationLimitExceeded
end

local record InternalServerError
    Message: string
end

local record InvalidDocument
    Message: string
end

local record InvalidDocumentVersion
    Message: string
end

local record InvalidInstanceId
    Message: string
end

local record InvalidOutputLocation
end

local record InvalidParameters
    Message: string
end

local record InvalidSchedule
    Message: string
end

local record InvalidTag
    Message: string
end

local record InvalidTarget
    Message: string
end

local record InvalidTargetMaps
    Message: string
end

local record UnsupportedPlatformType
    Message: string
end

local record AssociationLimitExceeded
end

local record DuplicateInstanceId
end

local record InternalServerError
    Message: string
end

local record InvalidDocument
    Message: string
end

local record InvalidDocumentVersion
    Message: string
end

local record InvalidInstanceId
    Message: string
end

local record InvalidOutputLocation
end

local record InvalidParameters
    Message: string
end

local record InvalidSchedule
    Message: string
end

local record InvalidTarget
    Message: string
end

local record InvalidTargetMaps
    Message: string
end

local record UnsupportedPlatformType
    Message: string
end

local record DocumentAlreadyExists
    Message: string
end

local record DocumentLimitExceeded
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidDocumentContent
    Message: string
end

local record InvalidDocumentSchemaVersion
    Message: string
end

local record MaxDocumentSizeExceeded
    Message: string
end

local record NoLongerSupportedException
    Message: string
end

local record TooManyUpdates
    Message: string
end

local record IdempotentParameterMismatch
    Message: string
end

local record InternalServerError
    Message: string
end

local record ResourceLimitExceededException
    Message: string
end

local record InternalServerError
    Message: string
end

local record OpsItemAccessDeniedException
    Message: string
end

local record OpsItemAlreadyExistsException
    Message: string
    OpsItemId: string
end

local record OpsItemInvalidParameterException
    ParameterNames: {string}
    Message: string
end

local record OpsItemLimitExceededException
    ResourceTypes: {string}
    Limit: number
    LimitType: string
    Message: string
end

local record InternalServerError
    Message: string
end

local record OpsMetadataAlreadyExistsException
    message: string
end

local record OpsMetadataInvalidArgumentException
    message: string
end

local record OpsMetadataLimitExceededException
    message: string
end

local record OpsMetadataTooManyUpdatesException
    message: string
end

local record IdempotentParameterMismatch
    Message: string
end

local record InternalServerError
    Message: string
end

local record ResourceLimitExceededException
    Message: string
end

local record InternalServerError
    Message: string
end

local record ResourceDataSyncAlreadyExistsException
    SyncName: string
end

local record ResourceDataSyncCountExceededException
    Message: string
end

local record ResourceDataSyncInvalidConfigurationException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidActivation
    Message: string
end

local record InvalidActivationId
    Message: string
end

local record TooManyUpdates
    Message: string
end

local record AssociationDoesNotExist
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidDocument
    Message: string
end

local record InvalidInstanceId
    Message: string
end

local record TooManyUpdates
    Message: string
end

local record AssociatedInstances
end

local record InternalServerError
    Message: string
end

local record InvalidDocument
    Message: string
end

local record InvalidDocumentOperation
    Message: string
end

local record TooManyUpdates
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidDeleteInventoryParametersException
    Message: string
end

local record InvalidInventoryRequestException
    Message: string
end

local record InvalidOptionException
    Message: string
end

local record InvalidTypeNameException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InternalServerError
    Message: string
end

local record OpsItemInvalidParameterException
    ParameterNames: {string}
    Message: string
end

local record InternalServerError
    Message: string
end

local record OpsMetadataInvalidArgumentException
    message: string
end

local record OpsMetadataNotFoundException
    message: string
end

local record InternalServerError
    Message: string
end

local record ParameterNotFound
    message: string
end

local record InternalServerError
    Message: string
end

local record InternalServerError
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record InternalServerError
    Message: string
end

local record ResourceDataSyncInvalidConfigurationException
    Message: string
end

local record ResourceDataSyncNotFoundException
    SyncName: string
    SyncType: string
    Message: string
end

local record InternalServerError
    Message: string
end

local record MalformedResourcePolicyDocumentException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourcePolicyConflictException
    Message: string
end

local record ResourcePolicyInvalidParameterException
    ParameterNames: {string}
    Message: string
end

local record ResourcePolicyNotFoundException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidInstanceId
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidResourceId
end

local record DoesNotExistException
    Message: string
end

local record InternalServerError
    Message: string
end

local record TargetInUseException
    Message: string
end

local record DoesNotExistException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidFilter
    Message: string
end

local record InvalidNextToken
    Message: string
end

local record AssociationDoesNotExist
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidAssociationVersion
    Message: string
end

local record InvalidDocument
    Message: string
end

local record InvalidInstanceId
    Message: string
end

local record AssociationDoesNotExist
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidNextToken
    Message: string
end

local record AssociationDoesNotExist
    Message: string
end

local record AssociationExecutionDoesNotExist
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidNextToken
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidFilterKey
end

local record InvalidFilterValue
    Message: string
end

local record InvalidNextToken
    Message: string
end

local record AutomationExecutionNotFoundException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidFilterKey
end

local record InvalidFilterValue
    Message: string
end

local record InvalidNextToken
    Message: string
end

local record InternalServerError
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidDocument
    Message: string
end

local record InvalidDocumentVersion
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidDocument
    Message: string
end

local record InvalidDocumentOperation
    Message: string
end

local record InvalidNextToken
    Message: string
end

local record InvalidPermissionType
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidInstanceId
    Message: string
end

local record InvalidNextToken
    Message: string
end

local record DoesNotExistException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidResourceId
end

local record UnsupportedOperatingSystem
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidInstanceId
    Message: string
end

local record InvalidNextToken
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidFilterKey
end

local record InvalidInstanceId
    Message: string
end

local record InvalidInstanceInformationFilterValue
    message: string
end

local record InvalidNextToken
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidFilter
    Message: string
end

local record InvalidInstanceId
    Message: string
end

local record InvalidNextToken
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidNextToken
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidFilter
    Message: string
end

local record InvalidNextToken
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidActivationId
    Message: string
end

local record InvalidDocument
    Message: string
end

local record InvalidFilterKey
end

local record InvalidInstanceId
    Message: string
end

local record InvalidInstancePropertyFilterValue
    message: string
end

local record InvalidNextToken
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidDeletionIdException
    Message: string
end

local record InvalidNextToken
    Message: string
end

local record InternalServerError
    Message: string
end

local record DoesNotExistException
    Message: string
end

local record InternalServerError
    Message: string
end

local record DoesNotExistException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InternalServerError
    Message: string
end

local record DoesNotExistException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InternalServerError
    Message: string
end

local record DoesNotExistException
    Message: string
end

local record InternalServerError
    Message: string
end

local record DoesNotExistException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InternalServerError
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidFilterKey
end

local record InvalidFilterOption
    message: string
end

local record InvalidFilterValue
    Message: string
end

local record InvalidNextToken
    Message: string
end

local record InternalServerError
    Message: string
end

local record InternalServerError
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidNextToken
    Message: string
end

local record InternalServerError
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidFilterKey
end

local record InvalidNextToken
    Message: string
end

local record InternalServerError
    Message: string
end

local record OpsItemConflictException
    Message: string
end

local record OpsItemInvalidParameterException
    ParameterNames: {string}
    Message: string
end

local record OpsItemNotFoundException
    Message: string
end

local record OpsItemRelatedItemAssociationNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerError
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
end

local record ValidationException
    Message: string
    ReasonCode: string
end

local record AutomationExecutionNotFoundException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidDocument
    Message: string
end

local record InvalidDocumentType
    Message: string
end

local record UnsupportedCalendarException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidCommandId
end

local record InvalidInstanceId
    Message: string
end

local record InvalidPluginName
end

local record InvocationDoesNotExist
end

local record InternalServerError
    Message: string
end

local record InternalServerError
    Message: string
end

local record InternalServerError
    Message: string
end

local record UnsupportedFeatureRequiredException
    Message: string
end

local record UnsupportedOperatingSystem
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidDocument
    Message: string
end

local record InvalidDocumentVersion
    Message: string
end

local record InternalServerError
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidAggregatorException
    Message: string
end

local record InvalidFilter
    Message: string
end

local record InvalidInventoryGroupException
    Message: string
end

local record InvalidNextToken
    Message: string
end

local record InvalidResultAttributeException
    Message: string
end

local record InvalidTypeNameException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidNextToken
    Message: string
end

local record InvalidTypeNameException
    Message: string
end

local record DoesNotExistException
    Message: string
end

local record InternalServerError
    Message: string
end

local record DoesNotExistException
    Message: string
end

local record InternalServerError
    Message: string
end

local record DoesNotExistException
    Message: string
end

local record InternalServerError
    Message: string
end

local record DoesNotExistException
    Message: string
end

local record InternalServerError
    Message: string
end

local record DoesNotExistException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InternalServerError
    Message: string
end

local record OpsItemAccessDeniedException
    Message: string
end

local record OpsItemNotFoundException
    Message: string
end

local record InternalServerError
    Message: string
end

local record OpsMetadataInvalidArgumentException
    message: string
end

local record OpsMetadataNotFoundException
    message: string
end

local record InternalServerError
    Message: string
end

local record InvalidAggregatorException
    Message: string
end

local record InvalidFilter
    Message: string
end

local record InvalidNextToken
    Message: string
end

local record InvalidTypeNameException
    Message: string
end

local record ResourceDataSyncNotFoundException
    SyncName: string
    SyncType: string
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidKeyId
    message: string
end

local record ParameterNotFound
    message: string
end

local record ParameterVersionNotFound
    message: string
end

local record InternalServerError
    Message: string
end

local record InvalidKeyId
    message: string
end

local record InvalidNextToken
    Message: string
end

local record ParameterNotFound
    message: string
end

local record InternalServerError
    Message: string
end

local record InvalidKeyId
    message: string
end

local record InternalServerError
    Message: string
end

local record InvalidFilterKey
end

local record InvalidFilterOption
    message: string
end

local record InvalidFilterValue
    Message: string
end

local record InvalidKeyId
    message: string
end

local record InvalidNextToken
    Message: string
end

local record DoesNotExistException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidResourceId
end

local record InternalServerError
    Message: string
end

local record InternalServerError
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourcePolicyInvalidParameterException
    ParameterNames: {string}
    Message: string
end

local record InternalServerError
    Message: string
end

local record ServiceSettingNotFound
    Message: string
end

local record InternalServerError
    Message: string
end

local record ParameterNotFound
    message: string
end

local record ParameterVersionLabelLimitExceeded
    message: string
end

local record ParameterVersionNotFound
    message: string
end

local record TooManyUpdates
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidNextToken
    Message: string
end

local record AssociationDoesNotExist
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidNextToken
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidCommandId
end

local record InvalidFilterKey
end

local record InvalidInstanceId
    Message: string
end

local record InvalidNextToken
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidCommandId
end

local record InvalidFilterKey
end

local record InvalidInstanceId
    Message: string
end

local record InvalidNextToken
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidFilter
    Message: string
end

local record InvalidNextToken
    Message: string
end

local record InvalidResourceId
end

local record InvalidResourceType
end

local record InternalServerError
    Message: string
end

local record InvalidFilter
    Message: string
end

local record InvalidNextToken
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidDocument
    Message: string
end

local record InvalidDocumentVersion
    Message: string
end

local record InvalidNextToken
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidFilterKey
end

local record InvalidNextToken
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidDocument
    Message: string
end

local record InvalidNextToken
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidFilter
    Message: string
end

local record InvalidInstanceId
    Message: string
end

local record InvalidNextToken
    Message: string
end

local record InvalidTypeNameException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidFilter
    Message: string
end

local record InvalidNextToken
    Message: string
end

local record ResourceDataSyncNotFoundException
    SyncName: string
    SyncType: string
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidAggregatorException
    Message: string
end

local record InvalidFilter
    Message: string
end

local record InvalidNextToken
    Message: string
end

local record ResourceDataSyncNotFoundException
    SyncName: string
    SyncType: string
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record InternalServerError
    Message: string
end

local record OpsItemInvalidParameterException
    ParameterNames: {string}
    Message: string
end

local record OpsItemLimitExceededException
    ResourceTypes: {string}
    Limit: number
    LimitType: string
    Message: string
end

local record OpsItemNotFoundException
    Message: string
end

local record InternalServerError
    Message: string
end

local record OpsItemInvalidParameterException
    ParameterNames: {string}
    Message: string
end

local record InternalServerError
    Message: string
end

local record OpsMetadataInvalidArgumentException
    message: string
end

local record InternalServerError
    Message: string
end

local record InvalidFilter
    Message: string
end

local record InvalidNextToken
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidNextToken
    Message: string
end

local record ResourceDataSyncInvalidConfigurationException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidResourceId
end

local record InvalidResourceType
end

local record DocumentLimitExceeded
    Message: string
end

local record DocumentPermissionLimit
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidDocument
    Message: string
end

local record InvalidPermissionType
    Message: string
end

local record ComplianceTypeCountLimitExceededException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidItemContentException
    TypeName: string
    Message: string
end

local record InvalidResourceId
end

local record InvalidResourceType
end

local record ItemSizeLimitExceededException
    TypeName: string
    Message: string
end

local record TotalSizeLimitExceededException
    Message: string
end

local record CustomSchemaCountLimitExceededException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidInstanceId
    Message: string
end

local record InvalidInventoryItemContextException
    Message: string
end

local record InvalidItemContentException
    TypeName: string
    Message: string
end

local record InvalidTypeNameException
    Message: string
end

local record ItemContentMismatchException
    TypeName: string
    Message: string
end

local record ItemSizeLimitExceededException
    TypeName: string
    Message: string
end

local record SubTypeCountLimitExceededException
    Message: string
end

local record TotalSizeLimitExceededException
    Message: string
end

local record UnsupportedInventoryItemContextException
    TypeName: string
    Message: string
end

local record UnsupportedInventorySchemaVersionException
    Message: string
end

local record HierarchyLevelLimitExceededException
    message: string
end

local record HierarchyTypeMismatchException
    message: string
end

local record IncompatiblePolicyException
    message: string
end

local record InternalServerError
    Message: string
end

local record InvalidAllowedPatternException
    message: string
end

local record InvalidKeyId
    message: string
end

local record InvalidPolicyAttributeException
    message: string
end

local record InvalidPolicyTypeException
    message: string
end

local record ParameterAlreadyExists
    message: string
end

local record ParameterLimitExceeded
    message: string
end

local record ParameterMaxVersionLimitExceeded
    message: string
end

local record ParameterPatternMismatchException
    message: string
end

local record PoliciesLimitExceededException
    message: string
end

local record TooManyUpdates
    Message: string
end

local record UnsupportedParameterType
    message: string
end

local record InternalServerError
    Message: string
end

local record MalformedResourcePolicyDocumentException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourcePolicyConflictException
    Message: string
end

local record ResourcePolicyInvalidParameterException
    ParameterNames: {string}
    Message: string
end

local record ResourcePolicyLimitExceededException
    Limit: number
    LimitType: string
    Message: string
end

local record ResourcePolicyNotFoundException
    Message: string
end

local record DoesNotExistException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidResourceId
end

local record AlreadyExistsException
    Message: string
end

local record DoesNotExistException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidResourceId
end

local record ResourceLimitExceededException
    Message: string
end

local record DoesNotExistException
    Message: string
end

local record IdempotentParameterMismatch
    Message: string
end

local record InternalServerError
    Message: string
end

local record ResourceLimitExceededException
    Message: string
end

local record DoesNotExistException
    Message: string
end

local record FeatureNotAvailableException
    Message: string
end

local record IdempotentParameterMismatch
    Message: string
end

local record InternalServerError
    Message: string
end

local record ResourceLimitExceededException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidResourceId
end

local record InvalidResourceType
end

local record TooManyUpdates
    Message: string
end

local record InternalServerError
    Message: string
end

local record ServiceSettingNotFound
    Message: string
end

local record TooManyUpdates
    Message: string
end

local record DoesNotExistException
    Message: string
end

local record InternalServerError
    Message: string
end

local record AutomationExecutionNotFoundException
    Message: string
end

local record AutomationStepNotFoundException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidAutomationSignalException
    Message: string
end

local record DuplicateInstanceId
end

local record InternalServerError
    Message: string
end

local record InvalidDocument
    Message: string
end

local record InvalidDocumentVersion
    Message: string
end

local record InvalidInstanceId
    Message: string
end

local record InvalidNotificationConfig
    Message: string
end

local record InvalidOutputFolder
end

local record InvalidParameters
    Message: string
end

local record InvalidRole
    Message: string
end

local record MaxDocumentSizeExceeded
    Message: string
end

local record UnsupportedPlatformType
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerError
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    QuotaCode: string
    ServiceCode: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
end

local record ValidationException
    Message: string
    ReasonCode: string
end

local record AssociationDoesNotExist
    Message: string
end

local record InvalidAssociation
    Message: string
end

local record AutomationDefinitionNotFoundException
    Message: string
end

local record AutomationDefinitionVersionNotFoundException
    Message: string
end

local record AutomationExecutionLimitExceededException
    Message: string
end

local record IdempotentParameterMismatch
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidAutomationExecutionParametersException
    Message: string
end

local record InvalidTarget
    Message: string
end

local record AutomationDefinitionNotApprovedException
    Message: string
end

local record AutomationDefinitionNotFoundException
    Message: string
end

local record AutomationDefinitionVersionNotFoundException
    Message: string
end

local record AutomationExecutionLimitExceededException
    Message: string
end

local record IdempotentParameterMismatch
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidAutomationExecutionParametersException
    Message: string
end

local record NoLongerSupportedException
    Message: string
end

local record InternalServerError
    Message: string
end

local record ValidationException
    Message: string
    ReasonCode: string
end

local record InternalServerError
    Message: string
end

local record InvalidDocument
    Message: string
end

local record TargetNotConnected
    Message: string
end

local record AutomationExecutionNotFoundException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidAutomationStatusUpdateException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InternalServerError
    Message: string
end

local record ParameterNotFound
    message: string
end

local record ParameterVersionNotFound
    message: string
end

local record TooManyUpdates
    Message: string
end

local record AssociationDoesNotExist
    Message: string
end

local record AssociationVersionLimitExceeded
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidAssociationVersion
    Message: string
end

local record InvalidDocument
    Message: string
end

local record InvalidDocumentVersion
    Message: string
end

local record InvalidOutputLocation
end

local record InvalidParameters
    Message: string
end

local record InvalidSchedule
    Message: string
end

local record InvalidTarget
    Message: string
end

local record InvalidTargetMaps
    Message: string
end

local record InvalidUpdate
    Message: string
end

local record TooManyUpdates
    Message: string
end

local record AssociationDoesNotExist
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidDocument
    Message: string
end

local record InvalidInstanceId
    Message: string
end

local record StatusUnchanged
end

local record TooManyUpdates
    Message: string
end

local record DocumentVersionLimitExceeded
    Message: string
end

local record DuplicateDocumentContent
    Message: string
end

local record DuplicateDocumentVersionName
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidDocument
    Message: string
end

local record InvalidDocumentContent
    Message: string
end

local record InvalidDocumentOperation
    Message: string
end

local record InvalidDocumentSchemaVersion
    Message: string
end

local record InvalidDocumentVersion
    Message: string
end

local record MaxDocumentSizeExceeded
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidDocument
    Message: string
end

local record InvalidDocumentSchemaVersion
    Message: string
end

local record InvalidDocumentVersion
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidDocument
    Message: string
end

local record InvalidDocumentOperation
    Message: string
end

local record InvalidDocumentVersion
    Message: string
end

local record TooManyUpdates
    Message: string
end

local record DoesNotExistException
    Message: string
end

local record InternalServerError
    Message: string
end

local record DoesNotExistException
    Message: string
end

local record InternalServerError
    Message: string
end

local record DoesNotExistException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidInstanceId
    Message: string
end

local record InternalServerError
    Message: string
end

local record OpsItemAccessDeniedException
    Message: string
end

local record OpsItemAlreadyExistsException
    Message: string
    OpsItemId: string
end

local record OpsItemConflictException
    Message: string
end

local record OpsItemInvalidParameterException
    ParameterNames: {string}
    Message: string
end

local record OpsItemLimitExceededException
    ResourceTypes: {string}
    Limit: number
    LimitType: string
    Message: string
end

local record OpsItemNotFoundException
    Message: string
end

local record InternalServerError
    Message: string
end

local record OpsMetadataInvalidArgumentException
    message: string
end

local record OpsMetadataKeyLimitExceededException
    message: string
end

local record OpsMetadataNotFoundException
    message: string
end

local record OpsMetadataTooManyUpdatesException
    message: string
end

local record DoesNotExistException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InternalServerError
    Message: string
end

local record ResourceDataSyncConflictException
    Message: string
end

local record ResourceDataSyncInvalidConfigurationException
    Message: string
end

local record ResourceDataSyncNotFoundException
    SyncName: string
    SyncType: string
    Message: string
end

local record InternalServerError
    Message: string
end

local record ServiceSettingNotFound
    Message: string
end

local record TooManyUpdates
    Message: string
end

local type OperatingSystem = "WINDOWS" | "AMAZON_LINUX" | "AMAZON_LINUX_2" | "AMAZON_LINUX_2022" | "UBUNTU" | "REDHAT_ENTERPRISE_LINUX" | "SUSE" | "CENTOS" | "ORACLE_LINUX" | "DEBIAN" | "MACOS" | "RASPBIAN" | "ROCKY_LINUX" | "ALMA_LINUX" | "AMAZON_LINUX_2023"

local type ConnectionStatus = "connected" | "notconnected"

local type StopType = "Complete" | "Cancel"

local type PatchProperty = "PRODUCT" | "PRODUCT_FAMILY" | "CLASSIFICATION" | "MSRC_SEVERITY" | "PRIORITY" | "SEVERITY"

local type CommandInvocationStatus = "Pending" | "InProgress" | "Delayed" | "Success" | "Cancelled" | "TimedOut" | "Failed" | "Cancelling"

local type PatchComplianceStatus = "COMPLIANT" | "NON_COMPLIANT"

local type ReviewStatus = "APPROVED" | "NOT_REVIEWED" | "PENDING" | "REJECTED"

local type PatchComplianceLevel = "CRITICAL" | "HIGH" | "MEDIUM" | "LOW" | "INFORMATIONAL" | "UNSPECIFIED"

local type OpsItemStatus = "Open" | "InProgress" | "Resolved" | "Pending" | "TimedOut" | "Cancelling" | "Cancelled" | "Failed" | "CompletedWithSuccess" | "CompletedWithFailure" | "Scheduled" | "RunbookInProgress" | "PendingChangeCalendarOverride" | "ChangeCalendarOverrideApproved" | "ChangeCalendarOverrideRejected" | "PendingApproval" | "Approved" | "Revoked" | "Rejected" | "Closed"

local type CalendarState = "OPEN" | "CLOSED"

local type ParameterType = "String" | "StringList" | "SecureString"

local type MaintenanceWindowTaskCutoffBehavior = "CONTINUE_TASK" | "CANCEL_TASK"

local type PatchAction = "ALLOW_AS_DEPENDENCY" | "BLOCK"

local type MaintenanceWindowResourceType = "INSTANCE" | "RESOURCE_GROUP"

local type ResourceTypeForTagging = "Document" | "ManagedInstance" | "MaintenanceWindow" | "Parameter" | "PatchBaseline" | "OpsItem" | "OpsMetadata" | "Automation" | "Association"

local type DocumentPermissionType = "Share"

local type MaintenanceWindowTaskType = "RUN_COMMAND" | "AUTOMATION" | "STEP_FUNCTIONS" | "LAMBDA"

local type InventorySchemaDeleteOption = "DisableSchema" | "DeleteSchema"

local type SignalType = "Approve" | "Reject" | "StartStep" | "StopStep" | "Resume" | "Revoke"

local type DocumentType = "Command" | "Policy" | "Automation" | "Session" | "Package" | "ApplicationConfiguration" | "ApplicationConfigurationSchema" | "DeploymentStrategy" | "ChangeCalendar" | "Automation.ChangeTemplate" | "ProblemAnalysis" | "ProblemAnalysisTemplate" | "CloudFormation" | "ConformancePackTemplate" | "QuickSetup" | "ManualApprovalPolicy" | "AutoApprovalPolicy"

local type ExecutionMode = "Auto" | "Interactive"

local type ParameterTier = "Standard" | "Advanced" | "Intelligent-Tiering"

local type DocumentMetadataEnum = "DocumentReviews"

local type PatchSet = "OS" | "APPLICATION"

local type ExecutionPreviewStatus = "Pending" | "InProgress" | "Success" | "Failed"

local type AssociationComplianceSeverity = "CRITICAL" | "HIGH" | "MEDIUM" | "LOW" | "UNSPECIFIED"

local type AssociationSyncCompliance = "AUTO" | "MANUAL"

local type AccessRequestStatus = "Approved" | "Rejected" | "Revoked" | "Expired" | "Pending"

local type SessionState = "Active" | "History"

local type ComplianceUploadType = "COMPLETE" | "PARTIAL"

local type MaintenanceWindowExecutionStatus = "PENDING" | "IN_PROGRESS" | "SUCCESS" | "FAILED" | "TIMED_OUT" | "CANCELLING" | "CANCELLED" | "SKIPPED_OVERLAPPING"

local type DocumentHashType = "Sha256" | "Sha1"

local type DocumentFormat = "YAML" | "JSON" | "TEXT"

local type DocumentStatus = "Creating" | "Active" | "Updating" | "Deleting" | "Failed"

local record M
    AddTagsToResourceInput: AddTagsToResourceInput
    AddTagsToResourceOutput: AddTagsToResourceOutput
    AssociateOpsItemRelatedItemInput: AssociateOpsItemRelatedItemInput
    AssociateOpsItemRelatedItemOutput: AssociateOpsItemRelatedItemOutput
    CancelCommandInput: CancelCommandInput
    CancelCommandOutput: CancelCommandOutput
    CancelMaintenanceWindowExecutionInput: CancelMaintenanceWindowExecutionInput
    CancelMaintenanceWindowExecutionOutput: CancelMaintenanceWindowExecutionOutput
    CreateActivationInput: CreateActivationInput
    CreateActivationOutput: CreateActivationOutput
    CreateAssociationInput: CreateAssociationInput
    CreateAssociationOutput: CreateAssociationOutput
    CreateAssociationBatchInput: CreateAssociationBatchInput
    CreateAssociationBatchOutput: CreateAssociationBatchOutput
    CreateDocumentInput: CreateDocumentInput
    CreateDocumentOutput: CreateDocumentOutput
    CreateMaintenanceWindowInput: CreateMaintenanceWindowInput
    CreateMaintenanceWindowOutput: CreateMaintenanceWindowOutput
    CreateOpsItemInput: CreateOpsItemInput
    CreateOpsItemOutput: CreateOpsItemOutput
    CreateOpsMetadataInput: CreateOpsMetadataInput
    CreateOpsMetadataOutput: CreateOpsMetadataOutput
    CreatePatchBaselineInput: CreatePatchBaselineInput
    CreatePatchBaselineOutput: CreatePatchBaselineOutput
    CreateResourceDataSyncInput: CreateResourceDataSyncInput
    CreateResourceDataSyncOutput: CreateResourceDataSyncOutput
    DeleteActivationInput: DeleteActivationInput
    DeleteActivationOutput: DeleteActivationOutput
    DeleteAssociationInput: DeleteAssociationInput
    DeleteAssociationOutput: DeleteAssociationOutput
    DeleteDocumentInput: DeleteDocumentInput
    DeleteDocumentOutput: DeleteDocumentOutput
    DeleteInventoryInput: DeleteInventoryInput
    DeleteInventoryOutput: DeleteInventoryOutput
    DeleteMaintenanceWindowInput: DeleteMaintenanceWindowInput
    DeleteMaintenanceWindowOutput: DeleteMaintenanceWindowOutput
    DeleteOpsItemInput: DeleteOpsItemInput
    DeleteOpsItemOutput: DeleteOpsItemOutput
    DeleteOpsMetadataInput: DeleteOpsMetadataInput
    DeleteOpsMetadataOutput: DeleteOpsMetadataOutput
    DeleteParameterInput: DeleteParameterInput
    DeleteParameterOutput: DeleteParameterOutput
    DeleteParametersInput: DeleteParametersInput
    DeleteParametersOutput: DeleteParametersOutput
    DeletePatchBaselineInput: DeletePatchBaselineInput
    DeletePatchBaselineOutput: DeletePatchBaselineOutput
    DeleteResourceDataSyncInput: DeleteResourceDataSyncInput
    DeleteResourceDataSyncOutput: DeleteResourceDataSyncOutput
    DeleteResourcePolicyInput: DeleteResourcePolicyInput
    DeleteResourcePolicyOutput: DeleteResourcePolicyOutput
    DeregisterManagedInstanceInput: DeregisterManagedInstanceInput
    DeregisterManagedInstanceOutput: DeregisterManagedInstanceOutput
    DeregisterPatchBaselineForPatchGroupInput: DeregisterPatchBaselineForPatchGroupInput
    DeregisterPatchBaselineForPatchGroupOutput: DeregisterPatchBaselineForPatchGroupOutput
    DeregisterTargetFromMaintenanceWindowInput: DeregisterTargetFromMaintenanceWindowInput
    DeregisterTargetFromMaintenanceWindowOutput: DeregisterTargetFromMaintenanceWindowOutput
    DeregisterTaskFromMaintenanceWindowInput: DeregisterTaskFromMaintenanceWindowInput
    DeregisterTaskFromMaintenanceWindowOutput: DeregisterTaskFromMaintenanceWindowOutput
    DescribeActivationsInput: DescribeActivationsInput
    DescribeActivationsOutput: DescribeActivationsOutput
    DescribeAssociationInput: DescribeAssociationInput
    DescribeAssociationOutput: DescribeAssociationOutput
    DescribeAssociationExecutionsInput: DescribeAssociationExecutionsInput
    DescribeAssociationExecutionsOutput: DescribeAssociationExecutionsOutput
    DescribeAssociationExecutionTargetsInput: DescribeAssociationExecutionTargetsInput
    DescribeAssociationExecutionTargetsOutput: DescribeAssociationExecutionTargetsOutput
    DescribeAutomationExecutionsInput: DescribeAutomationExecutionsInput
    DescribeAutomationExecutionsOutput: DescribeAutomationExecutionsOutput
    DescribeAutomationStepExecutionsInput: DescribeAutomationStepExecutionsInput
    DescribeAutomationStepExecutionsOutput: DescribeAutomationStepExecutionsOutput
    DescribeAvailablePatchesInput: DescribeAvailablePatchesInput
    DescribeAvailablePatchesOutput: DescribeAvailablePatchesOutput
    DescribeDocumentInput: DescribeDocumentInput
    DescribeDocumentOutput: DescribeDocumentOutput
    DescribeDocumentPermissionInput: DescribeDocumentPermissionInput
    DescribeDocumentPermissionOutput: DescribeDocumentPermissionOutput
    DescribeEffectiveInstanceAssociationsInput: DescribeEffectiveInstanceAssociationsInput
    DescribeEffectiveInstanceAssociationsOutput: DescribeEffectiveInstanceAssociationsOutput
    DescribeEffectivePatchesForPatchBaselineInput: DescribeEffectivePatchesForPatchBaselineInput
    DescribeEffectivePatchesForPatchBaselineOutput: DescribeEffectivePatchesForPatchBaselineOutput
    DescribeInstanceAssociationsStatusInput: DescribeInstanceAssociationsStatusInput
    DescribeInstanceAssociationsStatusOutput: DescribeInstanceAssociationsStatusOutput
    DescribeInstanceInformationInput: DescribeInstanceInformationInput
    DescribeInstanceInformationOutput: DescribeInstanceInformationOutput
    DescribeInstancePatchesInput: DescribeInstancePatchesInput
    DescribeInstancePatchesOutput: DescribeInstancePatchesOutput
    DescribeInstancePatchStatesInput: DescribeInstancePatchStatesInput
    DescribeInstancePatchStatesOutput: DescribeInstancePatchStatesOutput
    DescribeInstancePatchStatesForPatchGroupInput: DescribeInstancePatchStatesForPatchGroupInput
    DescribeInstancePatchStatesForPatchGroupOutput: DescribeInstancePatchStatesForPatchGroupOutput
    DescribeInstancePropertiesInput: DescribeInstancePropertiesInput
    DescribeInstancePropertiesOutput: DescribeInstancePropertiesOutput
    DescribeInventoryDeletionsInput: DescribeInventoryDeletionsInput
    DescribeInventoryDeletionsOutput: DescribeInventoryDeletionsOutput
    DescribeMaintenanceWindowExecutionsInput: DescribeMaintenanceWindowExecutionsInput
    DescribeMaintenanceWindowExecutionsOutput: DescribeMaintenanceWindowExecutionsOutput
    DescribeMaintenanceWindowExecutionTaskInvocationsInput: DescribeMaintenanceWindowExecutionTaskInvocationsInput
    DescribeMaintenanceWindowExecutionTaskInvocationsOutput: DescribeMaintenanceWindowExecutionTaskInvocationsOutput
    DescribeMaintenanceWindowExecutionTasksInput: DescribeMaintenanceWindowExecutionTasksInput
    DescribeMaintenanceWindowExecutionTasksOutput: DescribeMaintenanceWindowExecutionTasksOutput
    DescribeMaintenanceWindowsInput: DescribeMaintenanceWindowsInput
    DescribeMaintenanceWindowsOutput: DescribeMaintenanceWindowsOutput
    DescribeMaintenanceWindowScheduleInput: DescribeMaintenanceWindowScheduleInput
    DescribeMaintenanceWindowScheduleOutput: DescribeMaintenanceWindowScheduleOutput
    DescribeMaintenanceWindowsForTargetInput: DescribeMaintenanceWindowsForTargetInput
    DescribeMaintenanceWindowsForTargetOutput: DescribeMaintenanceWindowsForTargetOutput
    DescribeMaintenanceWindowTargetsInput: DescribeMaintenanceWindowTargetsInput
    DescribeMaintenanceWindowTargetsOutput: DescribeMaintenanceWindowTargetsOutput
    DescribeMaintenanceWindowTasksInput: DescribeMaintenanceWindowTasksInput
    DescribeMaintenanceWindowTasksOutput: DescribeMaintenanceWindowTasksOutput
    DescribeOpsItemsInput: DescribeOpsItemsInput
    DescribeOpsItemsOutput: DescribeOpsItemsOutput
    DescribeParametersInput: DescribeParametersInput
    DescribeParametersOutput: DescribeParametersOutput
    DescribePatchBaselinesInput: DescribePatchBaselinesInput
    DescribePatchBaselinesOutput: DescribePatchBaselinesOutput
    DescribePatchGroupsInput: DescribePatchGroupsInput
    DescribePatchGroupsOutput: DescribePatchGroupsOutput
    DescribePatchGroupStateInput: DescribePatchGroupStateInput
    DescribePatchGroupStateOutput: DescribePatchGroupStateOutput
    DescribePatchPropertiesInput: DescribePatchPropertiesInput
    DescribePatchPropertiesOutput: DescribePatchPropertiesOutput
    DescribeSessionsInput: DescribeSessionsInput
    DescribeSessionsOutput: DescribeSessionsOutput
    DisassociateOpsItemRelatedItemInput: DisassociateOpsItemRelatedItemInput
    DisassociateOpsItemRelatedItemOutput: DisassociateOpsItemRelatedItemOutput
    GetAccessTokenInput: GetAccessTokenInput
    GetAccessTokenOutput: GetAccessTokenOutput
    GetAutomationExecutionInput: GetAutomationExecutionInput
    GetAutomationExecutionOutput: GetAutomationExecutionOutput
    GetCalendarStateInput: GetCalendarStateInput
    GetCalendarStateOutput: GetCalendarStateOutput
    GetCommandInvocationInput: GetCommandInvocationInput
    GetCommandInvocationOutput: GetCommandInvocationOutput
    GetConnectionStatusInput: GetConnectionStatusInput
    GetConnectionStatusOutput: GetConnectionStatusOutput
    GetDefaultPatchBaselineInput: GetDefaultPatchBaselineInput
    GetDefaultPatchBaselineOutput: GetDefaultPatchBaselineOutput
    GetDeployablePatchSnapshotForInstanceInput: GetDeployablePatchSnapshotForInstanceInput
    GetDeployablePatchSnapshotForInstanceOutput: GetDeployablePatchSnapshotForInstanceOutput
    GetDocumentInput: GetDocumentInput
    GetDocumentOutput: GetDocumentOutput
    GetExecutionPreviewInput: GetExecutionPreviewInput
    GetExecutionPreviewOutput: GetExecutionPreviewOutput
    GetInventoryInput: GetInventoryInput
    GetInventoryOutput: GetInventoryOutput
    GetInventorySchemaInput: GetInventorySchemaInput
    GetInventorySchemaOutput: GetInventorySchemaOutput
    GetMaintenanceWindowInput: GetMaintenanceWindowInput
    GetMaintenanceWindowOutput: GetMaintenanceWindowOutput
    GetMaintenanceWindowExecutionInput: GetMaintenanceWindowExecutionInput
    GetMaintenanceWindowExecutionOutput: GetMaintenanceWindowExecutionOutput
    GetMaintenanceWindowExecutionTaskInput: GetMaintenanceWindowExecutionTaskInput
    GetMaintenanceWindowExecutionTaskOutput: GetMaintenanceWindowExecutionTaskOutput
    GetMaintenanceWindowExecutionTaskInvocationInput: GetMaintenanceWindowExecutionTaskInvocationInput
    GetMaintenanceWindowExecutionTaskInvocationOutput: GetMaintenanceWindowExecutionTaskInvocationOutput
    GetMaintenanceWindowTaskInput: GetMaintenanceWindowTaskInput
    GetMaintenanceWindowTaskOutput: GetMaintenanceWindowTaskOutput
    GetOpsItemInput: GetOpsItemInput
    GetOpsItemOutput: GetOpsItemOutput
    GetOpsMetadataInput: GetOpsMetadataInput
    GetOpsMetadataOutput: GetOpsMetadataOutput
    GetOpsSummaryInput: GetOpsSummaryInput
    GetOpsSummaryOutput: GetOpsSummaryOutput
    GetParameterInput: GetParameterInput
    GetParameterOutput: GetParameterOutput
    GetParameterHistoryInput: GetParameterHistoryInput
    GetParameterHistoryOutput: GetParameterHistoryOutput
    GetParametersInput: GetParametersInput
    GetParametersOutput: GetParametersOutput
    GetParametersByPathInput: GetParametersByPathInput
    GetParametersByPathOutput: GetParametersByPathOutput
    GetPatchBaselineInput: GetPatchBaselineInput
    GetPatchBaselineOutput: GetPatchBaselineOutput
    GetPatchBaselineForPatchGroupInput: GetPatchBaselineForPatchGroupInput
    GetPatchBaselineForPatchGroupOutput: GetPatchBaselineForPatchGroupOutput
    GetResourcePoliciesInput: GetResourcePoliciesInput
    GetResourcePoliciesOutput: GetResourcePoliciesOutput
    GetServiceSettingInput: GetServiceSettingInput
    GetServiceSettingOutput: GetServiceSettingOutput
    LabelParameterVersionInput: LabelParameterVersionInput
    LabelParameterVersionOutput: LabelParameterVersionOutput
    ListAssociationsInput: ListAssociationsInput
    ListAssociationsOutput: ListAssociationsOutput
    ListAssociationVersionsInput: ListAssociationVersionsInput
    ListAssociationVersionsOutput: ListAssociationVersionsOutput
    ListCommandInvocationsInput: ListCommandInvocationsInput
    ListCommandInvocationsOutput: ListCommandInvocationsOutput
    ListCommandsInput: ListCommandsInput
    ListCommandsOutput: ListCommandsOutput
    ListComplianceItemsInput: ListComplianceItemsInput
    ListComplianceItemsOutput: ListComplianceItemsOutput
    ListComplianceSummariesInput: ListComplianceSummariesInput
    ListComplianceSummariesOutput: ListComplianceSummariesOutput
    ListDocumentMetadataHistoryInput: ListDocumentMetadataHistoryInput
    ListDocumentMetadataHistoryOutput: ListDocumentMetadataHistoryOutput
    ListDocumentsInput: ListDocumentsInput
    ListDocumentsOutput: ListDocumentsOutput
    ListDocumentVersionsInput: ListDocumentVersionsInput
    ListDocumentVersionsOutput: ListDocumentVersionsOutput
    ListInventoryEntriesInput: ListInventoryEntriesInput
    ListInventoryEntriesOutput: ListInventoryEntriesOutput
    ListNodesInput: ListNodesInput
    ListNodesOutput: ListNodesOutput
    ListNodesSummaryInput: ListNodesSummaryInput
    ListNodesSummaryOutput: ListNodesSummaryOutput
    ListOpsItemEventsInput: ListOpsItemEventsInput
    ListOpsItemEventsOutput: ListOpsItemEventsOutput
    ListOpsItemRelatedItemsInput: ListOpsItemRelatedItemsInput
    ListOpsItemRelatedItemsOutput: ListOpsItemRelatedItemsOutput
    ListOpsMetadataInput: ListOpsMetadataInput
    ListOpsMetadataOutput: ListOpsMetadataOutput
    ListResourceComplianceSummariesInput: ListResourceComplianceSummariesInput
    ListResourceComplianceSummariesOutput: ListResourceComplianceSummariesOutput
    ListResourceDataSyncInput: ListResourceDataSyncInput
    ListResourceDataSyncOutput: ListResourceDataSyncOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ModifyDocumentPermissionInput: ModifyDocumentPermissionInput
    ModifyDocumentPermissionOutput: ModifyDocumentPermissionOutput
    PutComplianceItemsInput: PutComplianceItemsInput
    PutComplianceItemsOutput: PutComplianceItemsOutput
    PutInventoryInput: PutInventoryInput
    PutInventoryOutput: PutInventoryOutput
    PutParameterInput: PutParameterInput
    PutParameterOutput: PutParameterOutput
    PutResourcePolicyInput: PutResourcePolicyInput
    PutResourcePolicyOutput: PutResourcePolicyOutput
    RegisterDefaultPatchBaselineInput: RegisterDefaultPatchBaselineInput
    RegisterDefaultPatchBaselineOutput: RegisterDefaultPatchBaselineOutput
    RegisterPatchBaselineForPatchGroupInput: RegisterPatchBaselineForPatchGroupInput
    RegisterPatchBaselineForPatchGroupOutput: RegisterPatchBaselineForPatchGroupOutput
    RegisterTargetWithMaintenanceWindowInput: RegisterTargetWithMaintenanceWindowInput
    RegisterTargetWithMaintenanceWindowOutput: RegisterTargetWithMaintenanceWindowOutput
    RegisterTaskWithMaintenanceWindowInput: RegisterTaskWithMaintenanceWindowInput
    RegisterTaskWithMaintenanceWindowOutput: RegisterTaskWithMaintenanceWindowOutput
    RemoveTagsFromResourceInput: RemoveTagsFromResourceInput
    RemoveTagsFromResourceOutput: RemoveTagsFromResourceOutput
    ResetServiceSettingInput: ResetServiceSettingInput
    ResetServiceSettingOutput: ResetServiceSettingOutput
    ResumeSessionInput: ResumeSessionInput
    ResumeSessionOutput: ResumeSessionOutput
    SendAutomationSignalInput: SendAutomationSignalInput
    SendAutomationSignalOutput: SendAutomationSignalOutput
    SendCommandInput: SendCommandInput
    SendCommandOutput: SendCommandOutput
    StartAccessRequestInput: StartAccessRequestInput
    StartAccessRequestOutput: StartAccessRequestOutput
    StartAssociationsOnceInput: StartAssociationsOnceInput
    StartAssociationsOnceOutput: StartAssociationsOnceOutput
    StartAutomationExecutionInput: StartAutomationExecutionInput
    StartAutomationExecutionOutput: StartAutomationExecutionOutput
    StartChangeRequestExecutionInput: StartChangeRequestExecutionInput
    StartChangeRequestExecutionOutput: StartChangeRequestExecutionOutput
    StartExecutionPreviewInput: StartExecutionPreviewInput
    StartExecutionPreviewOutput: StartExecutionPreviewOutput
    StartSessionInput: StartSessionInput
    StartSessionOutput: StartSessionOutput
    StopAutomationExecutionInput: StopAutomationExecutionInput
    StopAutomationExecutionOutput: StopAutomationExecutionOutput
    TerminateSessionInput: TerminateSessionInput
    TerminateSessionOutput: TerminateSessionOutput
    UnlabelParameterVersionInput: UnlabelParameterVersionInput
    UnlabelParameterVersionOutput: UnlabelParameterVersionOutput
    UpdateAssociationInput: UpdateAssociationInput
    UpdateAssociationOutput: UpdateAssociationOutput
    UpdateAssociationStatusInput: UpdateAssociationStatusInput
    UpdateAssociationStatusOutput: UpdateAssociationStatusOutput
    UpdateDocumentInput: UpdateDocumentInput
    UpdateDocumentOutput: UpdateDocumentOutput
    UpdateDocumentDefaultVersionInput: UpdateDocumentDefaultVersionInput
    UpdateDocumentDefaultVersionOutput: UpdateDocumentDefaultVersionOutput
    UpdateDocumentMetadataInput: UpdateDocumentMetadataInput
    UpdateDocumentMetadataOutput: UpdateDocumentMetadataOutput
    UpdateMaintenanceWindowInput: UpdateMaintenanceWindowInput
    UpdateMaintenanceWindowOutput: UpdateMaintenanceWindowOutput
    UpdateMaintenanceWindowTargetInput: UpdateMaintenanceWindowTargetInput
    UpdateMaintenanceWindowTargetOutput: UpdateMaintenanceWindowTargetOutput
    UpdateMaintenanceWindowTaskInput: UpdateMaintenanceWindowTaskInput
    UpdateMaintenanceWindowTaskOutput: UpdateMaintenanceWindowTaskOutput
    UpdateManagedInstanceRoleInput: UpdateManagedInstanceRoleInput
    UpdateManagedInstanceRoleOutput: UpdateManagedInstanceRoleOutput
    UpdateOpsItemInput: UpdateOpsItemInput
    UpdateOpsItemOutput: UpdateOpsItemOutput
    UpdateOpsMetadataInput: UpdateOpsMetadataInput
    UpdateOpsMetadataOutput: UpdateOpsMetadataOutput
    UpdatePatchBaselineInput: UpdatePatchBaselineInput
    UpdatePatchBaselineOutput: UpdatePatchBaselineOutput
    UpdateResourceDataSyncInput: UpdateResourceDataSyncInput
    UpdateResourceDataSyncOutput: UpdateResourceDataSyncOutput
    UpdateServiceSettingInput: UpdateServiceSettingInput
    UpdateServiceSettingOutput: UpdateServiceSettingOutput
end

return M
