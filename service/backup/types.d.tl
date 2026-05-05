local record AssociateBackupVaultMpaApprovalTeamInput
    BackupVaultName: string
    MpaApprovalTeamArn: string
    RequesterComment: string
end

local record AssociateBackupVaultMpaApprovalTeamOutput
end

local record CancelLegalHoldInput
    LegalHoldId: string
    CancelDescription: string
    RetainRecordInDays: number
end

local record CancelLegalHoldOutput
end

local record CreateBackupPlanInput
    BackupPlan: BackupPlanInput
    BackupPlanTags: {string : string}
    CreatorRequestId: string
end

local record CreateBackupPlanOutput
    BackupPlanId: string
    BackupPlanArn: string
    CreationDate: number
    VersionId: string
    AdvancedBackupSettings: {AdvancedBackupSetting}
end

local record CreateBackupSelectionInput
    BackupPlanId: string
    BackupSelection: BackupSelection
    CreatorRequestId: string
end

local record CreateBackupSelectionOutput
    SelectionId: string
    BackupPlanId: string
    CreationDate: number
end

local record CreateBackupVaultInput
    BackupVaultName: string
    BackupVaultTags: {string : string}
    EncryptionKeyArn: string
    CreatorRequestId: string
end

local record CreateBackupVaultOutput
    BackupVaultName: string
    BackupVaultArn: string
    CreationDate: number
end

local record CreateFrameworkInput
    FrameworkName: string
    FrameworkDescription: string
    FrameworkControls: {FrameworkControl}
    IdempotencyToken: string
    FrameworkTags: {string : string}
end

local record CreateFrameworkOutput
    FrameworkName: string
    FrameworkArn: string
end

local record CreateLegalHoldInput
    Title: string
    Description: string
    IdempotencyToken: string
    RecoveryPointSelection: RecoveryPointSelection
    Tags: {string : string}
end

local record CreateLegalHoldOutput
    Title: string
    Status: string
    Description: string
    LegalHoldId: string
    LegalHoldArn: string
    CreationDate: number
    RecoveryPointSelection: RecoveryPointSelection
end

local record CreateLogicallyAirGappedBackupVaultInput
    BackupVaultName: string
    BackupVaultTags: {string : string}
    CreatorRequestId: string
    MinRetentionDays: number
    MaxRetentionDays: number
    EncryptionKeyArn: string
end

local record CreateLogicallyAirGappedBackupVaultOutput
    BackupVaultName: string
    BackupVaultArn: string
    CreationDate: number
    VaultState: string
end

local record CreateReportPlanInput
    ReportPlanName: string
    ReportPlanDescription: string
    ReportDeliveryChannel: ReportDeliveryChannel
    ReportSetting: ReportSetting
    ReportPlanTags: {string : string}
    IdempotencyToken: string
end

local record CreateReportPlanOutput
    ReportPlanName: string
    ReportPlanArn: string
    CreationTime: number
end

local record CreateRestoreAccessBackupVaultInput
    SourceBackupVaultArn: string
    BackupVaultName: string
    BackupVaultTags: {string : string}
    CreatorRequestId: string
    RequesterComment: string
end

local record CreateRestoreAccessBackupVaultOutput
    RestoreAccessBackupVaultArn: string
    VaultState: string
    RestoreAccessBackupVaultName: string
    CreationDate: number
end

local record CreateRestoreTestingPlanInput
    CreatorRequestId: string
    RestoreTestingPlan: RestoreTestingPlanForCreate
    Tags: {string : string}
end

local record CreateRestoreTestingPlanOutput
    CreationTime: number
    RestoreTestingPlanArn: string
    RestoreTestingPlanName: string
end

local record CreateRestoreTestingSelectionInput
    CreatorRequestId: string
    RestoreTestingPlanName: string
    RestoreTestingSelection: RestoreTestingSelectionForCreate
end

local record CreateRestoreTestingSelectionOutput
    CreationTime: number
    RestoreTestingPlanArn: string
    RestoreTestingPlanName: string
    RestoreTestingSelectionName: string
end

local record CreateTieringConfigurationInput
    TieringConfiguration: TieringConfigurationInputForCreate
    TieringConfigurationTags: {string : string}
    CreatorRequestId: string
end

local record CreateTieringConfigurationOutput
    TieringConfigurationArn: string
    TieringConfigurationName: string
    CreationTime: number
end

local record DeleteBackupPlanInput
    BackupPlanId: string
end

local record DeleteBackupPlanOutput
    BackupPlanId: string
    BackupPlanArn: string
    DeletionDate: number
    VersionId: string
end

local record DeleteBackupSelectionInput
    BackupPlanId: string
    SelectionId: string
end

local record DeleteBackupSelectionOutput
end

local record DeleteBackupVaultInput
    BackupVaultName: string
end

local record DeleteBackupVaultOutput
end

local record DeleteBackupVaultAccessPolicyInput
    BackupVaultName: string
end

local record DeleteBackupVaultAccessPolicyOutput
end

local record DeleteBackupVaultLockConfigurationInput
    BackupVaultName: string
end

local record DeleteBackupVaultLockConfigurationOutput
end

local record DeleteBackupVaultNotificationsInput
    BackupVaultName: string
end

local record DeleteBackupVaultNotificationsOutput
end

local record DeleteFrameworkInput
    FrameworkName: string
end

local record DeleteFrameworkOutput
end

local record DeleteRecoveryPointInput
    BackupVaultName: string
    RecoveryPointArn: string
end

local record DeleteRecoveryPointOutput
end

local record DeleteReportPlanInput
    ReportPlanName: string
end

local record DeleteReportPlanOutput
end

local record DeleteRestoreTestingPlanInput
    RestoreTestingPlanName: string
end

local record DeleteRestoreTestingPlanOutput
end

local record DeleteRestoreTestingSelectionInput
    RestoreTestingPlanName: string
    RestoreTestingSelectionName: string
end

local record DeleteRestoreTestingSelectionOutput
end

local record DeleteTieringConfigurationInput
    TieringConfigurationName: string
end

local record DeleteTieringConfigurationOutput
end

local record DescribeBackupJobInput
    BackupJobId: string
end

local record DescribeBackupJobOutput
    AccountId: string
    BackupJobId: string
    BackupVaultName: string
    RecoveryPointLifecycle: Lifecycle
    BackupVaultArn: string
    VaultType: string
    VaultLockState: string
    RecoveryPointArn: string
    EncryptionKeyArn: string
    IsEncrypted: boolean
    ResourceArn: string
    CreationDate: number
    CompletionDate: number
    State: string
    StatusMessage: string
    PercentDone: string
    BackupSizeInBytes: number
    IamRoleArn: string
    CreatedBy: RecoveryPointCreator
    ResourceType: string
    BytesTransferred: number
    ExpectedCompletionDate: number
    StartBy: number
    BackupOptions: {string : string}
    BackupType: string
    ParentJobId: string
    IsParent: boolean
    NumberOfChildJobs: number
    ChildJobsInState: {string : number}
    ResourceName: string
    InitiationDate: number
    MessageCategory: string
end

local record DescribeBackupVaultInput
    BackupVaultName: string
    BackupVaultAccountId: string
end

local record DescribeBackupVaultOutput
    BackupVaultName: string
    BackupVaultArn: string
    VaultType: string
    VaultState: string
    EncryptionKeyArn: string
    CreationDate: number
    CreatorRequestId: string
    NumberOfRecoveryPoints: number
    Locked: boolean
    MinRetentionDays: number
    MaxRetentionDays: number
    LockDate: number
    SourceBackupVaultArn: string
    MpaApprovalTeamArn: string
    MpaSessionArn: string
    LatestMpaApprovalTeamUpdate: LatestMpaApprovalTeamUpdate
    EncryptionKeyType: string
end

local record DescribeCopyJobInput
    CopyJobId: string
end

local record DescribeCopyJobOutput
    CopyJob: CopyJob
end

local record DescribeFrameworkInput
    FrameworkName: string
end

local record DescribeFrameworkOutput
    FrameworkName: string
    FrameworkArn: string
    FrameworkDescription: string
    FrameworkControls: {FrameworkControl}
    CreationTime: number
    DeploymentStatus: string
    FrameworkStatus: string
    IdempotencyToken: string
end

local record DescribeGlobalSettingsInput
end

local record DescribeGlobalSettingsOutput
    GlobalSettings: {string : string}
    LastUpdateTime: number
end

local record DescribeProtectedResourceInput
    ResourceArn: string
end

local record DescribeProtectedResourceOutput
    ResourceArn: string
    ResourceType: string
    LastBackupTime: number
    ResourceName: string
    LastBackupVaultArn: string
    LastRecoveryPointArn: string
    LatestRestoreExecutionTimeMinutes: number
    LatestRestoreJobCreationDate: number
    LatestRestoreRecoveryPointCreationDate: number
end

local record DescribeRecoveryPointInput
    BackupVaultName: string
    RecoveryPointArn: string
    BackupVaultAccountId: string
end

local record DescribeRecoveryPointOutput
    RecoveryPointArn: string
    BackupVaultName: string
    BackupVaultArn: string
    SourceBackupVaultArn: string
    ResourceArn: string
    ResourceType: string
    CreatedBy: RecoveryPointCreator
    IamRoleArn: string
    Status: string
    StatusMessage: string
    CreationDate: number
    InitiationDate: number
    CompletionDate: number
    BackupSizeInBytes: number
    CalculatedLifecycle: CalculatedLifecycle
    Lifecycle: Lifecycle
    EncryptionKeyArn: string
    IsEncrypted: boolean
    StorageClass: string
    LastRestoreTime: number
    ParentRecoveryPointArn: string
    CompositeMemberIdentifier: string
    IsParent: boolean
    ResourceName: string
    VaultType: string
    IndexStatus: string
    IndexStatusMessage: string
    EncryptionKeyType: string
    ScanResults: {ScanResult}
end

local record DescribeRegionSettingsInput
end

local record DescribeRegionSettingsOutput
    ResourceTypeOptInPreference: {string : boolean}
    ResourceTypeManagementPreference: {string : boolean}
end

local record DescribeReportJobInput
    ReportJobId: string
end

local record DescribeReportJobOutput
    ReportJob: ReportJob
end

local record DescribeReportPlanInput
    ReportPlanName: string
end

local record DescribeReportPlanOutput
    ReportPlan: ReportPlan
end

local record DescribeRestoreJobInput
    RestoreJobId: string
end

local record DescribeRestoreJobOutput
    AccountId: string
    RestoreJobId: string
    RecoveryPointArn: string
    SourceResourceArn: string
    BackupVaultArn: string
    CreationDate: number
    CompletionDate: number
    Status: string
    StatusMessage: string
    PercentDone: string
    BackupSizeInBytes: number
    IamRoleArn: string
    ExpectedCompletionTimeMinutes: number
    CreatedResourceArn: string
    ResourceType: string
    RecoveryPointCreationDate: number
    CreatedBy: RestoreJobCreator
    ValidationStatus: string
    ValidationStatusMessage: string
    DeletionStatus: string
    DeletionStatusMessage: string
    IsParent: boolean
    ParentJobId: string
end

local record DescribeScanJobInput
    ScanJobId: string
end

local record DescribeScanJobOutput
    AccountId: string
    BackupVaultArn: string
    BackupVaultName: string
    CompletionDate: number
    CreatedBy: ScanJobCreator
    CreationDate: number
    IamRoleArn: string
    MalwareScanner: string
    RecoveryPointArn: string
    ResourceArn: string
    ResourceName: string
    ResourceType: string
    ScanBaseRecoveryPointArn: string
    ScanId: string
    ScanJobId: string
    ScanMode: string
    ScanResult: ScanResultInfo
    ScannerRoleArn: string
    State: string
    StatusMessage: string
end

local record DisassociateBackupVaultMpaApprovalTeamInput
    BackupVaultName: string
    RequesterComment: string
end

local record DisassociateBackupVaultMpaApprovalTeamOutput
end

local record DisassociateRecoveryPointInput
    BackupVaultName: string
    RecoveryPointArn: string
end

local record DisassociateRecoveryPointOutput
end

local record DisassociateRecoveryPointFromParentInput
    BackupVaultName: string
    RecoveryPointArn: string
end

local record DisassociateRecoveryPointFromParentOutput
end

local record ExportBackupPlanTemplateInput
    BackupPlanId: string
end

local record ExportBackupPlanTemplateOutput
    BackupPlanTemplateJson: string
end

local record GetBackupPlanInput
    BackupPlanId: string
    VersionId: string
    MaxScheduledRunsPreview: number
end

local record GetBackupPlanOutput
    BackupPlan: BackupPlan
    BackupPlanId: string
    BackupPlanArn: string
    VersionId: string
    CreatorRequestId: string
    CreationDate: number
    DeletionDate: number
    LastExecutionDate: number
    AdvancedBackupSettings: {AdvancedBackupSetting}
    ScheduledRunsPreview: {ScheduledPlanExecutionMember}
end

local record GetBackupPlanFromJSONInput
    BackupPlanTemplateJson: string
end

local record GetBackupPlanFromJSONOutput
    BackupPlan: BackupPlan
end

local record GetBackupPlanFromTemplateInput
    BackupPlanTemplateId: string
end

local record GetBackupPlanFromTemplateOutput
    BackupPlanDocument: BackupPlan
end

local record GetBackupSelectionInput
    BackupPlanId: string
    SelectionId: string
end

local record GetBackupSelectionOutput
    BackupSelection: BackupSelection
    SelectionId: string
    BackupPlanId: string
    CreationDate: number
    CreatorRequestId: string
end

local record GetBackupVaultAccessPolicyInput
    BackupVaultName: string
end

local record GetBackupVaultAccessPolicyOutput
    BackupVaultName: string
    BackupVaultArn: string
    Policy: string
end

local record GetBackupVaultNotificationsInput
    BackupVaultName: string
end

local record GetBackupVaultNotificationsOutput
    BackupVaultName: string
    BackupVaultArn: string
    SNSTopicArn: string
    BackupVaultEvents: {string}
end

local record GetLegalHoldInput
    LegalHoldId: string
end

local record GetLegalHoldOutput
    Title: string
    Status: string
    Description: string
    CancelDescription: string
    LegalHoldId: string
    LegalHoldArn: string
    CreationDate: number
    CancellationDate: number
    RetainRecordUntil: number
    RecoveryPointSelection: RecoveryPointSelection
end

local record GetRecoveryPointIndexDetailsInput
    BackupVaultName: string
    RecoveryPointArn: string
end

local record GetRecoveryPointIndexDetailsOutput
    RecoveryPointArn: string
    BackupVaultArn: string
    SourceResourceArn: string
    IndexCreationDate: number
    IndexDeletionDate: number
    IndexCompletionDate: number
    IndexStatus: string
    IndexStatusMessage: string
    TotalItemsIndexed: number
end

local record GetRecoveryPointRestoreMetadataInput
    BackupVaultName: string
    RecoveryPointArn: string
    BackupVaultAccountId: string
end

local record GetRecoveryPointRestoreMetadataOutput
    BackupVaultArn: string
    RecoveryPointArn: string
    RestoreMetadata: {string : string}
    ResourceType: string
end

local record GetRestoreJobMetadataInput
    RestoreJobId: string
end

local record GetRestoreJobMetadataOutput
    RestoreJobId: string
    Metadata: {string : string}
end

local record GetRestoreTestingInferredMetadataInput
    BackupVaultAccountId: string
    BackupVaultName: string
    RecoveryPointArn: string
end

local record GetRestoreTestingInferredMetadataOutput
    InferredMetadata: {string : string}
end

local record GetRestoreTestingPlanInput
    RestoreTestingPlanName: string
end

local record GetRestoreTestingPlanOutput
    RestoreTestingPlan: RestoreTestingPlanForGet
end

local record GetRestoreTestingSelectionInput
    RestoreTestingPlanName: string
    RestoreTestingSelectionName: string
end

local record GetRestoreTestingSelectionOutput
    RestoreTestingSelection: RestoreTestingSelectionForGet
end

local record GetSupportedResourceTypesInput
end

local record GetSupportedResourceTypesOutput
    ResourceTypes: {string}
end

local record GetTieringConfigurationInput
    TieringConfigurationName: string
end

local record GetTieringConfigurationOutput
    TieringConfiguration: TieringConfiguration
end

local record ListBackupJobsInput
    NextToken: string
    MaxResults: number
    ByResourceArn: string
    ByState: string
    ByBackupVaultName: string
    ByCreatedBefore: number
    ByCreatedAfter: number
    ByResourceType: string
    ByAccountId: string
    ByCompleteAfter: number
    ByCompleteBefore: number
    ByParentJobId: string
    ByMessageCategory: string
end

local record ListBackupJobsOutput
    BackupJobs: {BackupJob}
    NextToken: string
end

local record ListBackupJobSummariesInput
    AccountId: string
    State: string
    ResourceType: string
    MessageCategory: string
    AggregationPeriod: string
    MaxResults: number
    NextToken: string
end

local record ListBackupJobSummariesOutput
    BackupJobSummaries: {BackupJobSummary}
    AggregationPeriod: string
    NextToken: string
end

local record ListBackupPlansInput
    NextToken: string
    MaxResults: number
    IncludeDeleted: boolean
end

local record ListBackupPlansOutput
    NextToken: string
    BackupPlansList: {BackupPlansListMember}
end

local record ListBackupPlanTemplatesInput
    NextToken: string
    MaxResults: number
end

local record ListBackupPlanTemplatesOutput
    NextToken: string
    BackupPlanTemplatesList: {BackupPlanTemplatesListMember}
end

local record ListBackupPlanVersionsInput
    BackupPlanId: string
    NextToken: string
    MaxResults: number
end

local record ListBackupPlanVersionsOutput
    NextToken: string
    BackupPlanVersionsList: {BackupPlansListMember}
end

local record ListBackupSelectionsInput
    BackupPlanId: string
    NextToken: string
    MaxResults: number
end

local record ListBackupSelectionsOutput
    NextToken: string
    BackupSelectionsList: {BackupSelectionsListMember}
end

local record ListBackupVaultsInput
    ByVaultType: string
    ByShared: boolean
    NextToken: string
    MaxResults: number
end

local record ListBackupVaultsOutput
    BackupVaultList: {BackupVaultListMember}
    NextToken: string
end

local record ListCopyJobsInput
    NextToken: string
    MaxResults: number
    ByResourceArn: string
    ByState: string
    ByCreatedBefore: number
    ByCreatedAfter: number
    ByResourceType: string
    ByDestinationVaultArn: string
    ByAccountId: string
    ByCompleteBefore: number
    ByCompleteAfter: number
    ByParentJobId: string
    ByMessageCategory: string
    BySourceRecoveryPointArn: string
end

local record ListCopyJobsOutput
    CopyJobs: {CopyJob}
    NextToken: string
end

local record ListCopyJobSummariesInput
    AccountId: string
    State: string
    ResourceType: string
    MessageCategory: string
    AggregationPeriod: string
    MaxResults: number
    NextToken: string
end

local record ListCopyJobSummariesOutput
    CopyJobSummaries: {CopyJobSummary}
    AggregationPeriod: string
    NextToken: string
end

local record ListFrameworksInput
    MaxResults: number
    NextToken: string
end

local record ListFrameworksOutput
    Frameworks: {Framework}
    NextToken: string
end

local record ListIndexedRecoveryPointsInput
    NextToken: string
    MaxResults: number
    SourceResourceArn: string
    CreatedBefore: number
    CreatedAfter: number
    ResourceType: string
    IndexStatus: string
end

local record ListIndexedRecoveryPointsOutput
    IndexedRecoveryPoints: {IndexedRecoveryPoint}
    NextToken: string
end

local record ListLegalHoldsInput
    NextToken: string
    MaxResults: number
end

local record ListLegalHoldsOutput
    NextToken: string
    LegalHolds: {LegalHold}
end

local record ListProtectedResourcesInput
    NextToken: string
    MaxResults: number
end

local record ListProtectedResourcesOutput
    Results: {ProtectedResource}
    NextToken: string
end

local record ListProtectedResourcesByBackupVaultInput
    BackupVaultName: string
    BackupVaultAccountId: string
    NextToken: string
    MaxResults: number
end

local record ListProtectedResourcesByBackupVaultOutput
    Results: {ProtectedResource}
    NextToken: string
end

local record ListRecoveryPointsByBackupVaultInput
    BackupVaultName: string
    BackupVaultAccountId: string
    NextToken: string
    MaxResults: number
    ByResourceArn: string
    ByResourceType: string
    ByBackupPlanId: string
    ByCreatedBefore: number
    ByCreatedAfter: number
    ByParentRecoveryPointArn: string
end

local record ListRecoveryPointsByBackupVaultOutput
    NextToken: string
    RecoveryPoints: {RecoveryPointByBackupVault}
end

local record ListRecoveryPointsByLegalHoldInput
    LegalHoldId: string
    NextToken: string
    MaxResults: number
end

local record ListRecoveryPointsByLegalHoldOutput
    RecoveryPoints: {RecoveryPointMember}
    NextToken: string
end

local record ListRecoveryPointsByResourceInput
    ResourceArn: string
    NextToken: string
    MaxResults: number
    ManagedByAWSBackupOnly: boolean
end

local record ListRecoveryPointsByResourceOutput
    NextToken: string
    RecoveryPoints: {RecoveryPointByResource}
end

local record ListReportJobsInput
    ByReportPlanName: string
    ByCreationBefore: number
    ByCreationAfter: number
    ByStatus: string
    MaxResults: number
    NextToken: string
end

local record ListReportJobsOutput
    ReportJobs: {ReportJob}
    NextToken: string
end

local record ListReportPlansInput
    MaxResults: number
    NextToken: string
end

local record ListReportPlansOutput
    ReportPlans: {ReportPlan}
    NextToken: string
end

local record ListRestoreAccessBackupVaultsInput
    BackupVaultName: string
    NextToken: string
    MaxResults: number
end

local record ListRestoreAccessBackupVaultsOutput
    NextToken: string
    RestoreAccessBackupVaults: {RestoreAccessBackupVaultListMember}
end

local record ListRestoreJobsInput
    NextToken: string
    MaxResults: number
    ByAccountId: string
    ByResourceType: string
    ByCreatedBefore: number
    ByCreatedAfter: number
    ByStatus: string
    ByCompleteBefore: number
    ByCompleteAfter: number
    ByRestoreTestingPlanArn: string
    ByParentJobId: string
end

local record ListRestoreJobsOutput
    RestoreJobs: {RestoreJobsListMember}
    NextToken: string
end

local record ListRestoreJobsByProtectedResourceInput
    ResourceArn: string
    ByStatus: string
    ByRecoveryPointCreationDateAfter: number
    ByRecoveryPointCreationDateBefore: number
    NextToken: string
    MaxResults: number
end

local record ListRestoreJobsByProtectedResourceOutput
    RestoreJobs: {RestoreJobsListMember}
    NextToken: string
end

local record ListRestoreJobSummariesInput
    AccountId: string
    State: string
    ResourceType: string
    AggregationPeriod: string
    MaxResults: number
    NextToken: string
end

local record ListRestoreJobSummariesOutput
    RestoreJobSummaries: {RestoreJobSummary}
    AggregationPeriod: string
    NextToken: string
end

local record ListRestoreTestingPlansInput
    MaxResults: number
    NextToken: string
end

local record ListRestoreTestingPlansOutput
    NextToken: string
    RestoreTestingPlans: {RestoreTestingPlanForList}
end

local record ListRestoreTestingSelectionsInput
    MaxResults: number
    NextToken: string
    RestoreTestingPlanName: string
end

local record ListRestoreTestingSelectionsOutput
    NextToken: string
    RestoreTestingSelections: {RestoreTestingSelectionForList}
end

local record ListScanJobsInput
    ByAccountId: string
    ByBackupVaultName: string
    ByCompleteAfter: number
    ByCompleteBefore: number
    ByMalwareScanner: string
    ByRecoveryPointArn: string
    ByResourceArn: string
    ByResourceType: string
    ByScanResultStatus: string
    ByState: string
    MaxResults: number
    NextToken: string
end

local record ListScanJobsOutput
    NextToken: string
    ScanJobs: {ScanJob}
end

local record ListScanJobSummariesInput
    AccountId: string
    ResourceType: string
    MalwareScanner: string
    ScanResultStatus: string
    State: string
    AggregationPeriod: string
    MaxResults: number
    NextToken: string
end

local record ListScanJobSummariesOutput
    ScanJobSummaries: {ScanJobSummary}
    AggregationPeriod: string
    NextToken: string
end

local record ListTagsInput
    ResourceArn: string
    NextToken: string
    MaxResults: number
end

local record ListTagsOutput
    NextToken: string
    Tags: {string : string}
end

local record ListTieringConfigurationsInput
    MaxResults: number
    NextToken: string
end

local record ListTieringConfigurationsOutput
    TieringConfigurations: {TieringConfigurationsListMember}
    NextToken: string
end

local record PutBackupVaultAccessPolicyInput
    BackupVaultName: string
    Policy: string
end

local record PutBackupVaultAccessPolicyOutput
end

local record PutBackupVaultLockConfigurationInput
    BackupVaultName: string
    MinRetentionDays: number
    MaxRetentionDays: number
    ChangeableForDays: number
end

local record PutBackupVaultLockConfigurationOutput
end

local record PutBackupVaultNotificationsInput
    BackupVaultName: string
    SNSTopicArn: string
    BackupVaultEvents: {string}
end

local record PutBackupVaultNotificationsOutput
end

local record PutRestoreValidationResultInput
    RestoreJobId: string
    ValidationStatus: string
    ValidationStatusMessage: string
end

local record PutRestoreValidationResultOutput
end

local record RevokeRestoreAccessBackupVaultInput
    BackupVaultName: string
    RestoreAccessBackupVaultArn: string
    RequesterComment: string
end

local record RevokeRestoreAccessBackupVaultOutput
end

local record StartBackupJobInput
    BackupVaultName: string
    LogicallyAirGappedBackupVaultArn: string
    ResourceArn: string
    IamRoleArn: string
    IdempotencyToken: string
    StartWindowMinutes: number
    CompleteWindowMinutes: number
    Lifecycle: Lifecycle
    RecoveryPointTags: {string : string}
    BackupOptions: {string : string}
    Index: string
end

local record StartBackupJobOutput
    BackupJobId: string
    RecoveryPointArn: string
    CreationDate: number
    IsParent: boolean
end

local record StartCopyJobInput
    RecoveryPointArn: string
    SourceBackupVaultName: string
    DestinationBackupVaultArn: string
    IamRoleArn: string
    IdempotencyToken: string
    Lifecycle: Lifecycle
end

local record StartCopyJobOutput
    CopyJobId: string
    CreationDate: number
    IsParent: boolean
end

local record StartReportJobInput
    ReportPlanName: string
    IdempotencyToken: string
end

local record StartReportJobOutput
    ReportJobId: string
end

local record StartRestoreJobInput
    RecoveryPointArn: string
    Metadata: {string : string}
    IamRoleArn: string
    IdempotencyToken: string
    ResourceType: string
    CopySourceTagsToRestoredResource: boolean
end

local record StartRestoreJobOutput
    RestoreJobId: string
end

local record StartScanJobInput
    BackupVaultName: string
    IamRoleArn: string
    IdempotencyToken: string
    MalwareScanner: string
    RecoveryPointArn: string
    ScanBaseRecoveryPointArn: string
    ScanMode: string
    ScannerRoleArn: string
end

local record StartScanJobOutput
    CreationDate: number
    ScanJobId: string
end

local record StopBackupJobInput
    BackupJobId: string
end

local record StopBackupJobOutput
end

local record TagResourceInput
    ResourceArn: string
    Tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagKeyList: {string}
end

local record UntagResourceOutput
end

local record UpdateBackupPlanInput
    BackupPlanId: string
    BackupPlan: BackupPlanInput
end

local record UpdateBackupPlanOutput
    BackupPlanId: string
    BackupPlanArn: string
    CreationDate: number
    VersionId: string
    AdvancedBackupSettings: {AdvancedBackupSetting}
    ScanSettings: {ScanSetting}
end

local record UpdateFrameworkInput
    FrameworkName: string
    FrameworkDescription: string
    FrameworkControls: {FrameworkControl}
    IdempotencyToken: string
end

local record UpdateFrameworkOutput
    FrameworkName: string
    FrameworkArn: string
    CreationTime: number
end

local record UpdateGlobalSettingsInput
    GlobalSettings: {string : string}
end

local record UpdateGlobalSettingsOutput
end

local record UpdateRecoveryPointIndexSettingsInput
    BackupVaultName: string
    RecoveryPointArn: string
    IamRoleArn: string
    Index: string
end

local record UpdateRecoveryPointIndexSettingsOutput
    BackupVaultName: string
    RecoveryPointArn: string
    IndexStatus: string
    Index: string
end

local record UpdateRecoveryPointLifecycleInput
    BackupVaultName: string
    RecoveryPointArn: string
    Lifecycle: Lifecycle
end

local record UpdateRecoveryPointLifecycleOutput
    BackupVaultArn: string
    RecoveryPointArn: string
    Lifecycle: Lifecycle
    CalculatedLifecycle: CalculatedLifecycle
end

local record UpdateRegionSettingsInput
    ResourceTypeOptInPreference: {string : boolean}
    ResourceTypeManagementPreference: {string : boolean}
end

local record UpdateRegionSettingsOutput
end

local record UpdateReportPlanInput
    ReportPlanName: string
    ReportPlanDescription: string
    ReportDeliveryChannel: ReportDeliveryChannel
    ReportSetting: ReportSetting
    IdempotencyToken: string
end

local record UpdateReportPlanOutput
    ReportPlanName: string
    ReportPlanArn: string
    CreationTime: number
end

local record UpdateRestoreTestingPlanInput
    RestoreTestingPlan: RestoreTestingPlanForUpdate
    RestoreTestingPlanName: string
end

local record UpdateRestoreTestingPlanOutput
    CreationTime: number
    RestoreTestingPlanArn: string
    RestoreTestingPlanName: string
    UpdateTime: number
end

local record UpdateRestoreTestingSelectionInput
    RestoreTestingPlanName: string
    RestoreTestingSelection: RestoreTestingSelectionForUpdate
    RestoreTestingSelectionName: string
end

local record UpdateRestoreTestingSelectionOutput
    CreationTime: number
    RestoreTestingPlanArn: string
    RestoreTestingPlanName: string
    RestoreTestingSelectionName: string
    UpdateTime: number
end

local record UpdateTieringConfigurationInput
    TieringConfigurationName: string
    TieringConfiguration: TieringConfigurationInputForUpdate
end

local record UpdateTieringConfigurationOutput
    TieringConfigurationArn: string
    TieringConfigurationName: string
    CreationTime: number
    LastUpdatedTime: number
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidRequestException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidResourceStateException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record AlreadyExistsException
    Code: string
    Message: string
    CreatorRequestId: string
    Arn: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record LimitExceededException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record AlreadyExistsException
    Code: string
    Message: string
    CreatorRequestId: string
    Arn: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record LimitExceededException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record AlreadyExistsException
    Code: string
    Message: string
    CreatorRequestId: string
    Arn: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record LimitExceededException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record AlreadyExistsException
    Code: string
    Message: string
    CreatorRequestId: string
    Arn: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record LimitExceededException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record LimitExceededException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record AlreadyExistsException
    Code: string
    Message: string
    CreatorRequestId: string
    Arn: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidRequestException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record LimitExceededException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record AlreadyExistsException
    Code: string
    Message: string
    CreatorRequestId: string
    Arn: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record LimitExceededException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record AlreadyExistsException
    Code: string
    Message: string
    CreatorRequestId: string
    Arn: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidRequestException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record LimitExceededException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record AlreadyExistsException
    Code: string
    Message: string
    CreatorRequestId: string
    Arn: string
    Type: string
    Context: string
end

local record ConflictException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record LimitExceededException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record AlreadyExistsException
    Code: string
    Message: string
    CreatorRequestId: string
    Arn: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record LimitExceededException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record AlreadyExistsException
    Code: string
    Message: string
    CreatorRequestId: string
    Arn: string
    Type: string
    Context: string
end

local record ConflictException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record LimitExceededException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidRequestException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidRequestException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidRequestException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ConflictException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidRequestException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidResourceStateException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ConflictException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidRequestException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record DependencyFailureException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidRequestException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record DependencyFailureException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidRequestException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidRequestException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidResourceStateException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidRequestException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidRequestException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record LimitExceededException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidRequestException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidRequestException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidRequestException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidRequestException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record LimitExceededException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidRequestException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record LimitExceededException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidRequestException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidRequestException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record LimitExceededException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidRequestException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record LimitExceededException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record AlreadyExistsException
    Code: string
    Message: string
    CreatorRequestId: string
    Arn: string
    Type: string
    Context: string
end

local record ConflictException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record LimitExceededException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidRequestException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidRequestException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidRequestException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ConflictException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ConflictException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ConflictException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record AlreadyExistsException
    Code: string
    Message: string
    CreatorRequestId: string
    Arn: string
    Type: string
    Context: string
end

local record ConflictException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record InvalidParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record LimitExceededException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record MissingParameterValueException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    Type: string
    Context: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    Type: string
    Context: string
end

local type AggregationPeriod = "ONE_DAY" | "SEVEN_DAYS" | "FOURTEEN_DAYS"

local type ScanMode = "FULL_SCAN" | "INCREMENTAL_SCAN"

local type ScanState = "CANCELED" | "COMPLETED" | "COMPLETED_WITH_ISSUES" | "CREATED" | "FAILED" | "RUNNING"

local type VaultType = "BACKUP_VAULT" | "LOGICALLY_AIR_GAPPED_BACKUP_VAULT" | "RESTORE_ACCESS_BACKUP_VAULT"

local type CopyJobStatus = "CREATED" | "RUNNING" | "ABORTING" | "ABORTED" | "COMPLETING" | "COMPLETED" | "FAILING" | "FAILED" | "PARTIAL" | "AGGREGATE_ALL" | "ANY"

local type RestoreDeletionStatus = "DELETING" | "FAILED" | "SUCCESSFUL"

local type RestoreJobStatus = "PENDING" | "RUNNING" | "COMPLETED" | "ABORTED" | "FAILED"

local type BackupJobStatus = "CREATED" | "PENDING" | "RUNNING" | "ABORTING" | "ABORTED" | "COMPLETED" | "FAILED" | "EXPIRED" | "PARTIAL" | "AGGREGATE_ALL" | "ANY"

local type MalwareScanner = "GUARDDUTY"

local type StorageClass = "WARM" | "COLD" | "DELETED"

local type RestoreValidationStatus = "FAILED" | "SUCCESSFUL" | "TIMED_OUT" | "VALIDATING"

local type ScanJobStatus = "CREATED" | "COMPLETED" | "COMPLETED_WITH_ISSUES" | "RUNNING" | "FAILED" | "CANCELED" | "AGGREGATE_ALL" | "ANY"

local type RecoveryPointStatus = "COMPLETED" | "PARTIAL" | "DELETING" | "EXPIRED" | "AVAILABLE" | "STOPPED" | "CREATING"

local type BackupJobState = "CREATED" | "PENDING" | "RUNNING" | "ABORTING" | "ABORTED" | "COMPLETED" | "FAILED" | "EXPIRED" | "PARTIAL"

local type LegalHoldStatus = "CREATING" | "ACTIVE" | "CANCELING" | "CANCELED"

local type ScanResultStatus = "NO_THREATS_FOUND" | "THREATS_FOUND"

local type Index = "ENABLED" | "DISABLED"

local type RestoreJobState = "CREATED" | "PENDING" | "RUNNING" | "ABORTED" | "COMPLETED" | "FAILED" | "AGGREGATE_ALL" | "ANY"

local type IndexStatus = "PENDING" | "ACTIVE" | "FAILED" | "DELETING"

local type CopyJobState = "CREATED" | "RUNNING" | "COMPLETED" | "FAILED" | "PARTIAL"

local type EncryptionKeyType = "AWS_OWNED_KMS_KEY" | "CUSTOMER_MANAGED_KMS_KEY"

local type VaultState = "CREATING" | "AVAILABLE" | "FAILED"

local type ScanResourceType = "EBS" | "EC2" | "S3"

local record M
    AssociateBackupVaultMpaApprovalTeamInput: AssociateBackupVaultMpaApprovalTeamInput
    AssociateBackupVaultMpaApprovalTeamOutput: AssociateBackupVaultMpaApprovalTeamOutput
    CancelLegalHoldInput: CancelLegalHoldInput
    CancelLegalHoldOutput: CancelLegalHoldOutput
    CreateBackupPlanInput: CreateBackupPlanInput
    CreateBackupPlanOutput: CreateBackupPlanOutput
    CreateBackupSelectionInput: CreateBackupSelectionInput
    CreateBackupSelectionOutput: CreateBackupSelectionOutput
    CreateBackupVaultInput: CreateBackupVaultInput
    CreateBackupVaultOutput: CreateBackupVaultOutput
    CreateFrameworkInput: CreateFrameworkInput
    CreateFrameworkOutput: CreateFrameworkOutput
    CreateLegalHoldInput: CreateLegalHoldInput
    CreateLegalHoldOutput: CreateLegalHoldOutput
    CreateLogicallyAirGappedBackupVaultInput: CreateLogicallyAirGappedBackupVaultInput
    CreateLogicallyAirGappedBackupVaultOutput: CreateLogicallyAirGappedBackupVaultOutput
    CreateReportPlanInput: CreateReportPlanInput
    CreateReportPlanOutput: CreateReportPlanOutput
    CreateRestoreAccessBackupVaultInput: CreateRestoreAccessBackupVaultInput
    CreateRestoreAccessBackupVaultOutput: CreateRestoreAccessBackupVaultOutput
    CreateRestoreTestingPlanInput: CreateRestoreTestingPlanInput
    CreateRestoreTestingPlanOutput: CreateRestoreTestingPlanOutput
    CreateRestoreTestingSelectionInput: CreateRestoreTestingSelectionInput
    CreateRestoreTestingSelectionOutput: CreateRestoreTestingSelectionOutput
    CreateTieringConfigurationInput: CreateTieringConfigurationInput
    CreateTieringConfigurationOutput: CreateTieringConfigurationOutput
    DeleteBackupPlanInput: DeleteBackupPlanInput
    DeleteBackupPlanOutput: DeleteBackupPlanOutput
    DeleteBackupSelectionInput: DeleteBackupSelectionInput
    DeleteBackupSelectionOutput: DeleteBackupSelectionOutput
    DeleteBackupVaultInput: DeleteBackupVaultInput
    DeleteBackupVaultOutput: DeleteBackupVaultOutput
    DeleteBackupVaultAccessPolicyInput: DeleteBackupVaultAccessPolicyInput
    DeleteBackupVaultAccessPolicyOutput: DeleteBackupVaultAccessPolicyOutput
    DeleteBackupVaultLockConfigurationInput: DeleteBackupVaultLockConfigurationInput
    DeleteBackupVaultLockConfigurationOutput: DeleteBackupVaultLockConfigurationOutput
    DeleteBackupVaultNotificationsInput: DeleteBackupVaultNotificationsInput
    DeleteBackupVaultNotificationsOutput: DeleteBackupVaultNotificationsOutput
    DeleteFrameworkInput: DeleteFrameworkInput
    DeleteFrameworkOutput: DeleteFrameworkOutput
    DeleteRecoveryPointInput: DeleteRecoveryPointInput
    DeleteRecoveryPointOutput: DeleteRecoveryPointOutput
    DeleteReportPlanInput: DeleteReportPlanInput
    DeleteReportPlanOutput: DeleteReportPlanOutput
    DeleteRestoreTestingPlanInput: DeleteRestoreTestingPlanInput
    DeleteRestoreTestingPlanOutput: DeleteRestoreTestingPlanOutput
    DeleteRestoreTestingSelectionInput: DeleteRestoreTestingSelectionInput
    DeleteRestoreTestingSelectionOutput: DeleteRestoreTestingSelectionOutput
    DeleteTieringConfigurationInput: DeleteTieringConfigurationInput
    DeleteTieringConfigurationOutput: DeleteTieringConfigurationOutput
    DescribeBackupJobInput: DescribeBackupJobInput
    DescribeBackupJobOutput: DescribeBackupJobOutput
    DescribeBackupVaultInput: DescribeBackupVaultInput
    DescribeBackupVaultOutput: DescribeBackupVaultOutput
    DescribeCopyJobInput: DescribeCopyJobInput
    DescribeCopyJobOutput: DescribeCopyJobOutput
    DescribeFrameworkInput: DescribeFrameworkInput
    DescribeFrameworkOutput: DescribeFrameworkOutput
    DescribeGlobalSettingsInput: DescribeGlobalSettingsInput
    DescribeGlobalSettingsOutput: DescribeGlobalSettingsOutput
    DescribeProtectedResourceInput: DescribeProtectedResourceInput
    DescribeProtectedResourceOutput: DescribeProtectedResourceOutput
    DescribeRecoveryPointInput: DescribeRecoveryPointInput
    DescribeRecoveryPointOutput: DescribeRecoveryPointOutput
    DescribeRegionSettingsInput: DescribeRegionSettingsInput
    DescribeRegionSettingsOutput: DescribeRegionSettingsOutput
    DescribeReportJobInput: DescribeReportJobInput
    DescribeReportJobOutput: DescribeReportJobOutput
    DescribeReportPlanInput: DescribeReportPlanInput
    DescribeReportPlanOutput: DescribeReportPlanOutput
    DescribeRestoreJobInput: DescribeRestoreJobInput
    DescribeRestoreJobOutput: DescribeRestoreJobOutput
    DescribeScanJobInput: DescribeScanJobInput
    DescribeScanJobOutput: DescribeScanJobOutput
    DisassociateBackupVaultMpaApprovalTeamInput: DisassociateBackupVaultMpaApprovalTeamInput
    DisassociateBackupVaultMpaApprovalTeamOutput: DisassociateBackupVaultMpaApprovalTeamOutput
    DisassociateRecoveryPointInput: DisassociateRecoveryPointInput
    DisassociateRecoveryPointOutput: DisassociateRecoveryPointOutput
    DisassociateRecoveryPointFromParentInput: DisassociateRecoveryPointFromParentInput
    DisassociateRecoveryPointFromParentOutput: DisassociateRecoveryPointFromParentOutput
    ExportBackupPlanTemplateInput: ExportBackupPlanTemplateInput
    ExportBackupPlanTemplateOutput: ExportBackupPlanTemplateOutput
    GetBackupPlanInput: GetBackupPlanInput
    GetBackupPlanOutput: GetBackupPlanOutput
    GetBackupPlanFromJSONInput: GetBackupPlanFromJSONInput
    GetBackupPlanFromJSONOutput: GetBackupPlanFromJSONOutput
    GetBackupPlanFromTemplateInput: GetBackupPlanFromTemplateInput
    GetBackupPlanFromTemplateOutput: GetBackupPlanFromTemplateOutput
    GetBackupSelectionInput: GetBackupSelectionInput
    GetBackupSelectionOutput: GetBackupSelectionOutput
    GetBackupVaultAccessPolicyInput: GetBackupVaultAccessPolicyInput
    GetBackupVaultAccessPolicyOutput: GetBackupVaultAccessPolicyOutput
    GetBackupVaultNotificationsInput: GetBackupVaultNotificationsInput
    GetBackupVaultNotificationsOutput: GetBackupVaultNotificationsOutput
    GetLegalHoldInput: GetLegalHoldInput
    GetLegalHoldOutput: GetLegalHoldOutput
    GetRecoveryPointIndexDetailsInput: GetRecoveryPointIndexDetailsInput
    GetRecoveryPointIndexDetailsOutput: GetRecoveryPointIndexDetailsOutput
    GetRecoveryPointRestoreMetadataInput: GetRecoveryPointRestoreMetadataInput
    GetRecoveryPointRestoreMetadataOutput: GetRecoveryPointRestoreMetadataOutput
    GetRestoreJobMetadataInput: GetRestoreJobMetadataInput
    GetRestoreJobMetadataOutput: GetRestoreJobMetadataOutput
    GetRestoreTestingInferredMetadataInput: GetRestoreTestingInferredMetadataInput
    GetRestoreTestingInferredMetadataOutput: GetRestoreTestingInferredMetadataOutput
    GetRestoreTestingPlanInput: GetRestoreTestingPlanInput
    GetRestoreTestingPlanOutput: GetRestoreTestingPlanOutput
    GetRestoreTestingSelectionInput: GetRestoreTestingSelectionInput
    GetRestoreTestingSelectionOutput: GetRestoreTestingSelectionOutput
    GetSupportedResourceTypesInput: GetSupportedResourceTypesInput
    GetSupportedResourceTypesOutput: GetSupportedResourceTypesOutput
    GetTieringConfigurationInput: GetTieringConfigurationInput
    GetTieringConfigurationOutput: GetTieringConfigurationOutput
    ListBackupJobsInput: ListBackupJobsInput
    ListBackupJobsOutput: ListBackupJobsOutput
    ListBackupJobSummariesInput: ListBackupJobSummariesInput
    ListBackupJobSummariesOutput: ListBackupJobSummariesOutput
    ListBackupPlansInput: ListBackupPlansInput
    ListBackupPlansOutput: ListBackupPlansOutput
    ListBackupPlanTemplatesInput: ListBackupPlanTemplatesInput
    ListBackupPlanTemplatesOutput: ListBackupPlanTemplatesOutput
    ListBackupPlanVersionsInput: ListBackupPlanVersionsInput
    ListBackupPlanVersionsOutput: ListBackupPlanVersionsOutput
    ListBackupSelectionsInput: ListBackupSelectionsInput
    ListBackupSelectionsOutput: ListBackupSelectionsOutput
    ListBackupVaultsInput: ListBackupVaultsInput
    ListBackupVaultsOutput: ListBackupVaultsOutput
    ListCopyJobsInput: ListCopyJobsInput
    ListCopyJobsOutput: ListCopyJobsOutput
    ListCopyJobSummariesInput: ListCopyJobSummariesInput
    ListCopyJobSummariesOutput: ListCopyJobSummariesOutput
    ListFrameworksInput: ListFrameworksInput
    ListFrameworksOutput: ListFrameworksOutput
    ListIndexedRecoveryPointsInput: ListIndexedRecoveryPointsInput
    ListIndexedRecoveryPointsOutput: ListIndexedRecoveryPointsOutput
    ListLegalHoldsInput: ListLegalHoldsInput
    ListLegalHoldsOutput: ListLegalHoldsOutput
    ListProtectedResourcesInput: ListProtectedResourcesInput
    ListProtectedResourcesOutput: ListProtectedResourcesOutput
    ListProtectedResourcesByBackupVaultInput: ListProtectedResourcesByBackupVaultInput
    ListProtectedResourcesByBackupVaultOutput: ListProtectedResourcesByBackupVaultOutput
    ListRecoveryPointsByBackupVaultInput: ListRecoveryPointsByBackupVaultInput
    ListRecoveryPointsByBackupVaultOutput: ListRecoveryPointsByBackupVaultOutput
    ListRecoveryPointsByLegalHoldInput: ListRecoveryPointsByLegalHoldInput
    ListRecoveryPointsByLegalHoldOutput: ListRecoveryPointsByLegalHoldOutput
    ListRecoveryPointsByResourceInput: ListRecoveryPointsByResourceInput
    ListRecoveryPointsByResourceOutput: ListRecoveryPointsByResourceOutput
    ListReportJobsInput: ListReportJobsInput
    ListReportJobsOutput: ListReportJobsOutput
    ListReportPlansInput: ListReportPlansInput
    ListReportPlansOutput: ListReportPlansOutput
    ListRestoreAccessBackupVaultsInput: ListRestoreAccessBackupVaultsInput
    ListRestoreAccessBackupVaultsOutput: ListRestoreAccessBackupVaultsOutput
    ListRestoreJobsInput: ListRestoreJobsInput
    ListRestoreJobsOutput: ListRestoreJobsOutput
    ListRestoreJobsByProtectedResourceInput: ListRestoreJobsByProtectedResourceInput
    ListRestoreJobsByProtectedResourceOutput: ListRestoreJobsByProtectedResourceOutput
    ListRestoreJobSummariesInput: ListRestoreJobSummariesInput
    ListRestoreJobSummariesOutput: ListRestoreJobSummariesOutput
    ListRestoreTestingPlansInput: ListRestoreTestingPlansInput
    ListRestoreTestingPlansOutput: ListRestoreTestingPlansOutput
    ListRestoreTestingSelectionsInput: ListRestoreTestingSelectionsInput
    ListRestoreTestingSelectionsOutput: ListRestoreTestingSelectionsOutput
    ListScanJobsInput: ListScanJobsInput
    ListScanJobsOutput: ListScanJobsOutput
    ListScanJobSummariesInput: ListScanJobSummariesInput
    ListScanJobSummariesOutput: ListScanJobSummariesOutput
    ListTagsInput: ListTagsInput
    ListTagsOutput: ListTagsOutput
    ListTieringConfigurationsInput: ListTieringConfigurationsInput
    ListTieringConfigurationsOutput: ListTieringConfigurationsOutput
    PutBackupVaultAccessPolicyInput: PutBackupVaultAccessPolicyInput
    PutBackupVaultAccessPolicyOutput: PutBackupVaultAccessPolicyOutput
    PutBackupVaultLockConfigurationInput: PutBackupVaultLockConfigurationInput
    PutBackupVaultLockConfigurationOutput: PutBackupVaultLockConfigurationOutput
    PutBackupVaultNotificationsInput: PutBackupVaultNotificationsInput
    PutBackupVaultNotificationsOutput: PutBackupVaultNotificationsOutput
    PutRestoreValidationResultInput: PutRestoreValidationResultInput
    PutRestoreValidationResultOutput: PutRestoreValidationResultOutput
    RevokeRestoreAccessBackupVaultInput: RevokeRestoreAccessBackupVaultInput
    RevokeRestoreAccessBackupVaultOutput: RevokeRestoreAccessBackupVaultOutput
    StartBackupJobInput: StartBackupJobInput
    StartBackupJobOutput: StartBackupJobOutput
    StartCopyJobInput: StartCopyJobInput
    StartCopyJobOutput: StartCopyJobOutput
    StartReportJobInput: StartReportJobInput
    StartReportJobOutput: StartReportJobOutput
    StartRestoreJobInput: StartRestoreJobInput
    StartRestoreJobOutput: StartRestoreJobOutput
    StartScanJobInput: StartScanJobInput
    StartScanJobOutput: StartScanJobOutput
    StopBackupJobInput: StopBackupJobInput
    StopBackupJobOutput: StopBackupJobOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateBackupPlanInput: UpdateBackupPlanInput
    UpdateBackupPlanOutput: UpdateBackupPlanOutput
    UpdateFrameworkInput: UpdateFrameworkInput
    UpdateFrameworkOutput: UpdateFrameworkOutput
    UpdateGlobalSettingsInput: UpdateGlobalSettingsInput
    UpdateGlobalSettingsOutput: UpdateGlobalSettingsOutput
    UpdateRecoveryPointIndexSettingsInput: UpdateRecoveryPointIndexSettingsInput
    UpdateRecoveryPointIndexSettingsOutput: UpdateRecoveryPointIndexSettingsOutput
    UpdateRecoveryPointLifecycleInput: UpdateRecoveryPointLifecycleInput
    UpdateRecoveryPointLifecycleOutput: UpdateRecoveryPointLifecycleOutput
    UpdateRegionSettingsInput: UpdateRegionSettingsInput
    UpdateRegionSettingsOutput: UpdateRegionSettingsOutput
    UpdateReportPlanInput: UpdateReportPlanInput
    UpdateReportPlanOutput: UpdateReportPlanOutput
    UpdateRestoreTestingPlanInput: UpdateRestoreTestingPlanInput
    UpdateRestoreTestingPlanOutput: UpdateRestoreTestingPlanOutput
    UpdateRestoreTestingSelectionInput: UpdateRestoreTestingSelectionInput
    UpdateRestoreTestingSelectionOutput: UpdateRestoreTestingSelectionOutput
    UpdateTieringConfigurationInput: UpdateTieringConfigurationInput
    UpdateTieringConfigurationOutput: UpdateTieringConfigurationOutput
end

return M
