local record BatchCreateTopicReviewedAnswerInput
    AwsAccountId: string
    TopicId: string
    Answers: {CreateTopicReviewedAnswer}
end

local record BatchCreateTopicReviewedAnswerOutput
    TopicId: string
    TopicArn: string
    SucceededAnswers: {SucceededTopicReviewedAnswer}
    InvalidAnswers: {InvalidTopicReviewedAnswer}
    Status: number
    RequestId: string
end

local record BatchDeleteTopicReviewedAnswerInput
    AwsAccountId: string
    TopicId: string
    AnswerIds: {string}
end

local record BatchDeleteTopicReviewedAnswerOutput
    TopicId: string
    TopicArn: string
    SucceededAnswers: {SucceededTopicReviewedAnswer}
    InvalidAnswers: {InvalidTopicReviewedAnswer}
    RequestId: string
    Status: number
end

local record CancelIngestionInput
    AwsAccountId: string
    DataSetId: string
    IngestionId: string
end

local record CancelIngestionOutput
    Arn: string
    IngestionId: string
    RequestId: string
    Status: number
end

local record CreateAccountCustomizationInput
    AwsAccountId: string
    Namespace: string
    AccountCustomization: AccountCustomization
    Tags: {Tag}
end

local record CreateAccountCustomizationOutput
    Arn: string
    AwsAccountId: string
    Namespace: string
    AccountCustomization: AccountCustomization
    RequestId: string
    Status: number
end

local record CreateAccountSubscriptionInput
    Edition: string
    AuthenticationMethod: string
    AwsAccountId: string
    AccountName: string
    NotificationEmail: string
    ActiveDirectoryName: string
    Realm: string
    DirectoryId: string
    AdminGroup: {string}
    AuthorGroup: {string}
    ReaderGroup: {string}
    AdminProGroup: {string}
    AuthorProGroup: {string}
    ReaderProGroup: {string}
    FirstName: string
    LastName: string
    EmailAddress: string
    ContactNumber: string
    IAMIdentityCenterInstanceArn: string
end

local record CreateAccountSubscriptionOutput
    SignupResponse: SignupResponse
    Status: number
    RequestId: string
end

local record CreateActionConnectorInput
    AwsAccountId: string
    ActionConnectorId: string
    Name: string
    Type: string
    AuthenticationConfig: AuthConfig
    Description: string
    Permissions: {ResourcePermission}
    VpcConnectionArn: string
    Tags: {Tag}
end

local record CreateActionConnectorOutput
    Arn: string
    CreationStatus: string
    ActionConnectorId: string
    RequestId: string
    Status: number
end

local record CreateAnalysisInput
    AwsAccountId: string
    AnalysisId: string
    Name: string
    Parameters: Parameters
    Permissions: {ResourcePermission}
    SourceEntity: AnalysisSourceEntity
    ThemeArn: string
    Tags: {Tag}
    Definition: AnalysisDefinition
    ValidationStrategy: ValidationStrategy
    FolderArns: {string}
end

local record CreateAnalysisOutput
    Arn: string
    AnalysisId: string
    CreationStatus: string
    Status: number
    RequestId: string
end

local record CreateBrandInput
    AwsAccountId: string
    BrandId: string
    BrandDefinition: BrandDefinition
    Tags: {Tag}
end

local record CreateBrandOutput
    RequestId: string
    BrandDetail: BrandDetail
    BrandDefinition: BrandDefinition
end

local record CreateCustomPermissionsInput
    AwsAccountId: string
    CustomPermissionsName: string
    Capabilities: Capabilities
    Tags: {Tag}
end

local record CreateCustomPermissionsOutput
    Status: number
    Arn: string
    RequestId: string
end

local record CreateDashboardInput
    AwsAccountId: string
    DashboardId: string
    Name: string
    Parameters: Parameters
    Permissions: {ResourcePermission}
    SourceEntity: DashboardSourceEntity
    Tags: {Tag}
    VersionDescription: string
    DashboardPublishOptions: DashboardPublishOptions
    ThemeArn: string
    Definition: DashboardVersionDefinition
    ValidationStrategy: ValidationStrategy
    FolderArns: {string}
    LinkSharingConfiguration: LinkSharingConfiguration
    LinkEntities: {string}
end

local record CreateDashboardOutput
    Arn: string
    VersionArn: string
    DashboardId: string
    CreationStatus: string
    Status: number
    RequestId: string
end

local record CreateDataSetInput
    AwsAccountId: string
    DataSetId: string
    Name: string
    PhysicalTableMap: {string : PhysicalTable}
    LogicalTableMap: {string : LogicalTable}
    ImportMode: string
    ColumnGroups: {ColumnGroup}
    FieldFolders: {string : FieldFolder}
    Permissions: {ResourcePermission}
    RowLevelPermissionDataSet: RowLevelPermissionDataSet
    RowLevelPermissionTagConfiguration: RowLevelPermissionTagConfiguration
    ColumnLevelPermissionRules: {ColumnLevelPermissionRule}
    Tags: {Tag}
    DataSetUsageConfiguration: DataSetUsageConfiguration
    DatasetParameters: {DatasetParameter}
    FolderArns: {string}
    PerformanceConfiguration: PerformanceConfiguration
    UseAs: string
    DataPrepConfiguration: DataPrepConfiguration
    SemanticModelConfiguration: SemanticModelConfiguration
end

local record CreateDataSetOutput
    Arn: string
    DataSetId: string
    IngestionArn: string
    IngestionId: string
    RequestId: string
    Status: number
end

local record CreateDataSourceInput
    AwsAccountId: string
    DataSourceId: string
    Name: string
    Type: string
    DataSourceParameters: DataSourceParameters
    Credentials: DataSourceCredentials
    Permissions: {ResourcePermission}
    VpcConnectionProperties: VpcConnectionProperties
    SslProperties: SslProperties
    Tags: {Tag}
    FolderArns: {string}
end

local record CreateDataSourceOutput
    Arn: string
    DataSourceId: string
    CreationStatus: string
    RequestId: string
    Status: number
end

local record CreateFolderInput
    AwsAccountId: string
    FolderId: string
    Name: string
    FolderType: string
    ParentFolderArn: string
    Permissions: {ResourcePermission}
    Tags: {Tag}
    SharingModel: string
end

local record CreateFolderOutput
    Status: number
    Arn: string
    FolderId: string
    RequestId: string
end

local record CreateFolderMembershipInput
    AwsAccountId: string
    FolderId: string
    MemberId: string
    MemberType: string
end

local record CreateFolderMembershipOutput
    Status: number
    FolderMember: FolderMember
    RequestId: string
end

local record CreateGroupInput
    GroupName: string
    Description: string
    AwsAccountId: string
    Namespace: string
end

local record CreateGroupOutput
    Group: Group
    RequestId: string
    Status: number
end

local record CreateGroupMembershipInput
    MemberName: string
    GroupName: string
    AwsAccountId: string
    Namespace: string
end

local record CreateGroupMembershipOutput
    GroupMember: GroupMember
    RequestId: string
    Status: number
end

local record CreateIAMPolicyAssignmentInput
    AwsAccountId: string
    AssignmentName: string
    AssignmentStatus: string
    PolicyArn: string
    Identities: {string : {string}}
    Namespace: string
end

local record CreateIAMPolicyAssignmentOutput
    AssignmentName: string
    AssignmentId: string
    AssignmentStatus: string
    PolicyArn: string
    Identities: {string : {string}}
    RequestId: string
    Status: number
end

local record CreateIngestionInput
    DataSetId: string
    IngestionId: string
    AwsAccountId: string
    IngestionType: string
end

local record CreateIngestionOutput
    Arn: string
    IngestionId: string
    IngestionStatus: string
    RequestId: string
    Status: number
end

local record CreateNamespaceInput
    AwsAccountId: string
    Namespace: string
    IdentityStore: string
    Tags: {Tag}
end

local record CreateNamespaceOutput
    Arn: string
    Name: string
    CapacityRegion: string
    CreationStatus: string
    IdentityStore: string
    RequestId: string
    Status: number
end

local record CreateRefreshScheduleInput
    DataSetId: string
    AwsAccountId: string
    Schedule: RefreshSchedule
end

local record CreateRefreshScheduleOutput
    Status: number
    RequestId: string
    ScheduleId: string
    Arn: string
end

local record CreateRoleMembershipInput
    MemberName: string
    AwsAccountId: string
    Namespace: string
    Role: string
end

local record CreateRoleMembershipOutput
    RequestId: string
    Status: number
end

local record CreateTemplateInput
    AwsAccountId: string
    TemplateId: string
    Name: string
    Permissions: {ResourcePermission}
    SourceEntity: TemplateSourceEntity
    Tags: {Tag}
    VersionDescription: string
    Definition: TemplateVersionDefinition
    ValidationStrategy: ValidationStrategy
end

local record CreateTemplateOutput
    Arn: string
    VersionArn: string
    TemplateId: string
    CreationStatus: string
    Status: number
    RequestId: string
end

local record CreateTemplateAliasInput
    AwsAccountId: string
    TemplateId: string
    AliasName: string
    TemplateVersionNumber: number
end

local record CreateTemplateAliasOutput
    TemplateAlias: TemplateAlias
    Status: number
    RequestId: string
end

local record CreateThemeInput
    AwsAccountId: string
    ThemeId: string
    Name: string
    BaseThemeId: string
    VersionDescription: string
    Configuration: ThemeConfiguration
    Permissions: {ResourcePermission}
    Tags: {Tag}
end

local record CreateThemeOutput
    Arn: string
    VersionArn: string
    ThemeId: string
    CreationStatus: string
    Status: number
    RequestId: string
end

local record CreateThemeAliasInput
    AwsAccountId: string
    ThemeId: string
    AliasName: string
    ThemeVersionNumber: number
end

local record CreateThemeAliasOutput
    ThemeAlias: ThemeAlias
    Status: number
    RequestId: string
end

local record CreateTopicInput
    AwsAccountId: string
    TopicId: string
    Topic: TopicDetails
    Tags: {Tag}
    FolderArns: {string}
    CustomInstructions: CustomInstructions
end

local record CreateTopicOutput
    Arn: string
    TopicId: string
    RefreshArn: string
    RequestId: string
    Status: number
end

local record CreateTopicRefreshScheduleInput
    AwsAccountId: string
    TopicId: string
    DatasetArn: string
    DatasetName: string
    RefreshSchedule: TopicRefreshSchedule
end

local record CreateTopicRefreshScheduleOutput
    TopicId: string
    TopicArn: string
    DatasetArn: string
    Status: number
    RequestId: string
end

local record CreateVPCConnectionInput
    AwsAccountId: string
    VPCConnectionId: string
    Name: string
    SubnetIds: {string}
    SecurityGroupIds: {string}
    DnsResolvers: {string}
    RoleArn: string
    Tags: {Tag}
end

local record CreateVPCConnectionOutput
    Arn: string
    VPCConnectionId: string
    CreationStatus: string
    AvailabilityStatus: string
    RequestId: string
    Status: number
end

local record DeleteAccountCustomizationInput
    AwsAccountId: string
    Namespace: string
end

local record DeleteAccountCustomizationOutput
    RequestId: string
    Status: number
end

local record DeleteAccountCustomPermissionInput
    AwsAccountId: string
end

local record DeleteAccountCustomPermissionOutput
    RequestId: string
    Status: number
end

local record DeleteAccountSubscriptionInput
    AwsAccountId: string
end

local record DeleteAccountSubscriptionOutput
    RequestId: string
    Status: number
end

local record DeleteActionConnectorInput
    AwsAccountId: string
    ActionConnectorId: string
end

local record DeleteActionConnectorOutput
    Arn: string
    ActionConnectorId: string
    RequestId: string
    Status: number
end

local record DeleteAnalysisInput
    AwsAccountId: string
    AnalysisId: string
    RecoveryWindowInDays: number
    ForceDeleteWithoutRecovery: boolean
end

local record DeleteAnalysisOutput
    Status: number
    Arn: string
    AnalysisId: string
    DeletionTime: number
    RequestId: string
end

local record DeleteBrandInput
    AwsAccountId: string
    BrandId: string
end

local record DeleteBrandOutput
    RequestId: string
end

local record DeleteBrandAssignmentInput
    AwsAccountId: string
end

local record DeleteBrandAssignmentOutput
    RequestId: string
end

local record DeleteCustomPermissionsInput
    AwsAccountId: string
    CustomPermissionsName: string
end

local record DeleteCustomPermissionsOutput
    Status: number
    Arn: string
    RequestId: string
end

local record DeleteDashboardInput
    AwsAccountId: string
    DashboardId: string
    VersionNumber: number
end

local record DeleteDashboardOutput
    Status: number
    Arn: string
    DashboardId: string
    RequestId: string
end

local record DeleteDataSetInput
    AwsAccountId: string
    DataSetId: string
end

local record DeleteDataSetOutput
    Arn: string
    DataSetId: string
    RequestId: string
    Status: number
end

local record DeleteDataSetRefreshPropertiesInput
    AwsAccountId: string
    DataSetId: string
end

local record DeleteDataSetRefreshPropertiesOutput
    RequestId: string
    Status: number
end

local record DeleteDataSourceInput
    AwsAccountId: string
    DataSourceId: string
end

local record DeleteDataSourceOutput
    Arn: string
    DataSourceId: string
    RequestId: string
    Status: number
end

local record DeleteDefaultQBusinessApplicationInput
    AwsAccountId: string
    Namespace: string
end

local record DeleteDefaultQBusinessApplicationOutput
    RequestId: string
    Status: number
end

local record DeleteFolderInput
    AwsAccountId: string
    FolderId: string
end

local record DeleteFolderOutput
    Status: number
    Arn: string
    FolderId: string
    RequestId: string
end

local record DeleteFolderMembershipInput
    AwsAccountId: string
    FolderId: string
    MemberId: string
    MemberType: string
end

local record DeleteFolderMembershipOutput
    Status: number
    RequestId: string
end

local record DeleteGroupInput
    GroupName: string
    AwsAccountId: string
    Namespace: string
end

local record DeleteGroupOutput
    RequestId: string
    Status: number
end

local record DeleteGroupMembershipInput
    MemberName: string
    GroupName: string
    AwsAccountId: string
    Namespace: string
end

local record DeleteGroupMembershipOutput
    RequestId: string
    Status: number
end

local record DeleteIAMPolicyAssignmentInput
    AwsAccountId: string
    AssignmentName: string
    Namespace: string
end

local record DeleteIAMPolicyAssignmentOutput
    AssignmentName: string
    RequestId: string
    Status: number
end

local record DeleteIdentityPropagationConfigInput
    AwsAccountId: string
    Service: string
end

local record DeleteIdentityPropagationConfigOutput
    RequestId: string
    Status: number
end

local record DeleteNamespaceInput
    AwsAccountId: string
    Namespace: string
end

local record DeleteNamespaceOutput
    RequestId: string
    Status: number
end

local record DeleteRefreshScheduleInput
    DataSetId: string
    AwsAccountId: string
    ScheduleId: string
end

local record DeleteRefreshScheduleOutput
    Status: number
    RequestId: string
    ScheduleId: string
    Arn: string
end

local record DeleteRoleCustomPermissionInput
    Role: string
    AwsAccountId: string
    Namespace: string
end

local record DeleteRoleCustomPermissionOutput
    RequestId: string
    Status: number
end

local record DeleteRoleMembershipInput
    MemberName: string
    Role: string
    AwsAccountId: string
    Namespace: string
end

local record DeleteRoleMembershipOutput
    RequestId: string
    Status: number
end

local record DeleteTemplateInput
    AwsAccountId: string
    TemplateId: string
    VersionNumber: number
end

local record DeleteTemplateOutput
    RequestId: string
    Arn: string
    TemplateId: string
    Status: number
end

local record DeleteTemplateAliasInput
    AwsAccountId: string
    TemplateId: string
    AliasName: string
end

local record DeleteTemplateAliasOutput
    Status: number
    TemplateId: string
    AliasName: string
    Arn: string
    RequestId: string
end

local record DeleteThemeInput
    AwsAccountId: string
    ThemeId: string
    VersionNumber: number
end

local record DeleteThemeOutput
    Arn: string
    RequestId: string
    Status: number
    ThemeId: string
end

local record DeleteThemeAliasInput
    AwsAccountId: string
    ThemeId: string
    AliasName: string
end

local record DeleteThemeAliasOutput
    AliasName: string
    Arn: string
    RequestId: string
    Status: number
    ThemeId: string
end

local record DeleteTopicInput
    AwsAccountId: string
    TopicId: string
end

local record DeleteTopicOutput
    Arn: string
    TopicId: string
    RequestId: string
    Status: number
end

local record DeleteTopicRefreshScheduleInput
    AwsAccountId: string
    TopicId: string
    DatasetId: string
end

local record DeleteTopicRefreshScheduleOutput
    TopicId: string
    TopicArn: string
    DatasetArn: string
    Status: number
    RequestId: string
end

local record DeleteUserInput
    UserName: string
    AwsAccountId: string
    Namespace: string
end

local record DeleteUserOutput
    RequestId: string
    Status: number
end

local record DeleteUserByPrincipalIdInput
    PrincipalId: string
    AwsAccountId: string
    Namespace: string
end

local record DeleteUserByPrincipalIdOutput
    RequestId: string
    Status: number
end

local record DeleteUserCustomPermissionInput
    UserName: string
    AwsAccountId: string
    Namespace: string
end

local record DeleteUserCustomPermissionOutput
    RequestId: string
    Status: number
end

local record DeleteVPCConnectionInput
    AwsAccountId: string
    VPCConnectionId: string
end

local record DeleteVPCConnectionOutput
    Arn: string
    VPCConnectionId: string
    DeletionStatus: string
    AvailabilityStatus: string
    RequestId: string
    Status: number
end

local record DescribeAccountCustomizationInput
    AwsAccountId: string
    Namespace: string
    Resolved: boolean
end

local record DescribeAccountCustomizationOutput
    Arn: string
    AwsAccountId: string
    Namespace: string
    AccountCustomization: AccountCustomization
    RequestId: string
    Status: number
end

local record DescribeAccountCustomPermissionInput
    AwsAccountId: string
end

local record DescribeAccountCustomPermissionOutput
    CustomPermissionsName: string
    RequestId: string
    Status: number
end

local record DescribeAccountSettingsInput
    AwsAccountId: string
end

local record DescribeAccountSettingsOutput
    AccountSettings: AccountSettings
    RequestId: string
    Status: number
end

local record DescribeAccountSubscriptionInput
    AwsAccountId: string
end

local record DescribeAccountSubscriptionOutput
    AccountInfo: AccountInfo
    Status: number
    RequestId: string
end

local record DescribeActionConnectorInput
    AwsAccountId: string
    ActionConnectorId: string
end

local record DescribeActionConnectorOutput
    ActionConnector: ActionConnector
    RequestId: string
    Status: number
end

local record DescribeActionConnectorPermissionsInput
    AwsAccountId: string
    ActionConnectorId: string
end

local record DescribeActionConnectorPermissionsOutput
    Arn: string
    ActionConnectorId: string
    Permissions: {ResourcePermission}
    RequestId: string
    Status: number
end

local record DescribeAnalysisInput
    AwsAccountId: string
    AnalysisId: string
end

local record DescribeAnalysisOutput
    Analysis: Analysis
    Status: number
    RequestId: string
end

local record DescribeAnalysisDefinitionInput
    AwsAccountId: string
    AnalysisId: string
end

local record DescribeAnalysisDefinitionOutput
    AnalysisId: string
    Name: string
    Errors: {AnalysisError}
    ResourceStatus: string
    ThemeArn: string
    Definition: AnalysisDefinition
    Status: number
    RequestId: string
end

local record DescribeAnalysisPermissionsInput
    AwsAccountId: string
    AnalysisId: string
end

local record DescribeAnalysisPermissionsOutput
    AnalysisId: string
    AnalysisArn: string
    Permissions: {ResourcePermission}
    Status: number
    RequestId: string
end

local record DescribeAssetBundleExportJobInput
    AwsAccountId: string
    AssetBundleExportJobId: string
end

local record DescribeAssetBundleExportJobOutput
    JobStatus: string
    DownloadUrl: string
    Errors: {AssetBundleExportJobError}
    Arn: string
    CreatedTime: number
    AssetBundleExportJobId: string
    AwsAccountId: string
    ResourceArns: {string}
    IncludeAllDependencies: boolean
    ExportFormat: string
    CloudFormationOverridePropertyConfiguration: AssetBundleCloudFormationOverridePropertyConfiguration
    RequestId: string
    Status: number
    IncludePermissions: boolean
    IncludeTags: boolean
    ValidationStrategy: AssetBundleExportJobValidationStrategy
    Warnings: {AssetBundleExportJobWarning}
    IncludeFolderMemberships: boolean
    IncludeFolderMembers: string
end

local record DescribeAssetBundleImportJobInput
    AwsAccountId: string
    AssetBundleImportJobId: string
end

local record DescribeAssetBundleImportJobOutput
    JobStatus: string
    Errors: {AssetBundleImportJobError}
    RollbackErrors: {AssetBundleImportJobError}
    Arn: string
    CreatedTime: number
    AssetBundleImportJobId: string
    AwsAccountId: string
    AssetBundleImportSource: AssetBundleImportSourceDescription
    OverrideParameters: AssetBundleImportJobOverrideParameters
    FailureAction: string
    RequestId: string
    Status: number
    OverridePermissions: AssetBundleImportJobOverridePermissions
    OverrideTags: AssetBundleImportJobOverrideTags
    OverrideValidationStrategy: AssetBundleImportJobOverrideValidationStrategy
    Warnings: {AssetBundleImportJobWarning}
end

local record DescribeAutomationJobInput
    AwsAccountId: string
    AutomationGroupId: string
    AutomationId: string
    IncludeInputPayload: boolean
    IncludeOutputPayload: boolean
    JobId: string
end

local record DescribeAutomationJobOutput
    Arn: string
    CreatedAt: number
    StartedAt: number
    EndedAt: number
    JobStatus: string
    InputPayload: string
    OutputPayload: string
    RequestId: string
end

local record DescribeBrandInput
    AwsAccountId: string
    BrandId: string
    VersionId: string
end

local record DescribeBrandOutput
    RequestId: string
    BrandDetail: BrandDetail
    BrandDefinition: BrandDefinition
end

local record DescribeBrandAssignmentInput
    AwsAccountId: string
end

local record DescribeBrandAssignmentOutput
    RequestId: string
    BrandArn: string
end

local record DescribeBrandPublishedVersionInput
    AwsAccountId: string
    BrandId: string
end

local record DescribeBrandPublishedVersionOutput
    RequestId: string
    BrandDetail: BrandDetail
    BrandDefinition: BrandDefinition
end

local record DescribeCustomPermissionsInput
    AwsAccountId: string
    CustomPermissionsName: string
end

local record DescribeCustomPermissionsOutput
    Status: number
    CustomPermissions: CustomPermissions
    RequestId: string
end

local record DescribeDashboardInput
    AwsAccountId: string
    DashboardId: string
    VersionNumber: number
    AliasName: string
end

local record DescribeDashboardOutput
    Dashboard: Dashboard
    Status: number
    RequestId: string
end

local record DescribeDashboardDefinitionInput
    AwsAccountId: string
    DashboardId: string
    VersionNumber: number
    AliasName: string
end

local record DescribeDashboardDefinitionOutput
    DashboardId: string
    Errors: {DashboardError}
    Name: string
    ResourceStatus: string
    ThemeArn: string
    Definition: DashboardVersionDefinition
    Status: number
    RequestId: string
    DashboardPublishOptions: DashboardPublishOptions
end

local record DescribeDashboardPermissionsInput
    AwsAccountId: string
    DashboardId: string
end

local record DescribeDashboardPermissionsOutput
    DashboardId: string
    DashboardArn: string
    Permissions: {ResourcePermission}
    Status: number
    RequestId: string
    LinkSharingConfiguration: LinkSharingConfiguration
end

local record DescribeDashboardSnapshotJobInput
    AwsAccountId: string
    DashboardId: string
    SnapshotJobId: string
end

local record DescribeDashboardSnapshotJobOutput
    AwsAccountId: string
    DashboardId: string
    SnapshotJobId: string
    UserConfiguration: SnapshotUserConfigurationRedacted
    SnapshotConfiguration: SnapshotConfiguration
    Arn: string
    JobStatus: string
    CreatedTime: number
    LastUpdatedTime: number
    RequestId: string
    Status: number
end

local record DescribeDashboardSnapshotJobResultInput
    AwsAccountId: string
    DashboardId: string
    SnapshotJobId: string
end

local record DescribeDashboardSnapshotJobResultOutput
    Arn: string
    JobStatus: string
    CreatedTime: number
    LastUpdatedTime: number
    Result: SnapshotJobResult
    ErrorInfo: SnapshotJobErrorInfo
    RequestId: string
    Status: number
end

local record DescribeDashboardsQAConfigurationInput
    AwsAccountId: string
end

local record DescribeDashboardsQAConfigurationOutput
    DashboardsQAStatus: string
    RequestId: string
    Status: number
end

local record DescribeDataSetInput
    AwsAccountId: string
    DataSetId: string
end

local record DescribeDataSetOutput
    DataSet: DataSet
    RequestId: string
    Status: number
end

local record DescribeDataSetPermissionsInput
    AwsAccountId: string
    DataSetId: string
end

local record DescribeDataSetPermissionsOutput
    DataSetArn: string
    DataSetId: string
    Permissions: {ResourcePermission}
    RequestId: string
    Status: number
end

local record DescribeDataSetRefreshPropertiesInput
    AwsAccountId: string
    DataSetId: string
end

local record DescribeDataSetRefreshPropertiesOutput
    RequestId: string
    Status: number
    DataSetRefreshProperties: DataSetRefreshProperties
end

local record DescribeDataSourceInput
    AwsAccountId: string
    DataSourceId: string
end

local record DescribeDataSourceOutput
    DataSource: DataSource
    RequestId: string
    Status: number
end

local record DescribeDataSourcePermissionsInput
    AwsAccountId: string
    DataSourceId: string
end

local record DescribeDataSourcePermissionsOutput
    DataSourceArn: string
    DataSourceId: string
    Permissions: {ResourcePermission}
    RequestId: string
    Status: number
end

local record DescribeDefaultQBusinessApplicationInput
    AwsAccountId: string
    Namespace: string
end

local record DescribeDefaultQBusinessApplicationOutput
    RequestId: string
    Status: number
    ApplicationId: string
end

local record DescribeFolderInput
    AwsAccountId: string
    FolderId: string
end

local record DescribeFolderOutput
    Status: number
    Folder: Folder
    RequestId: string
end

local record DescribeFolderPermissionsInput
    AwsAccountId: string
    FolderId: string
    Namespace: string
    MaxResults: number
    NextToken: string
end

local record DescribeFolderPermissionsOutput
    Status: number
    FolderId: string
    Arn: string
    Permissions: {ResourcePermission}
    RequestId: string
    NextToken: string
end

local record DescribeFolderResolvedPermissionsInput
    AwsAccountId: string
    FolderId: string
    Namespace: string
    MaxResults: number
    NextToken: string
end

local record DescribeFolderResolvedPermissionsOutput
    Status: number
    FolderId: string
    Arn: string
    Permissions: {ResourcePermission}
    RequestId: string
    NextToken: string
end

local record DescribeGroupInput
    GroupName: string
    AwsAccountId: string
    Namespace: string
end

local record DescribeGroupOutput
    Group: Group
    RequestId: string
    Status: number
end

local record DescribeGroupMembershipInput
    MemberName: string
    GroupName: string
    AwsAccountId: string
    Namespace: string
end

local record DescribeGroupMembershipOutput
    GroupMember: GroupMember
    RequestId: string
    Status: number
end

local record DescribeIAMPolicyAssignmentInput
    AwsAccountId: string
    AssignmentName: string
    Namespace: string
end

local record DescribeIAMPolicyAssignmentOutput
    IAMPolicyAssignment: IAMPolicyAssignment
    RequestId: string
    Status: number
end

local record DescribeIngestionInput
    AwsAccountId: string
    DataSetId: string
    IngestionId: string
end

local record DescribeIngestionOutput
    Ingestion: Ingestion
    RequestId: string
    Status: number
end

local record DescribeIpRestrictionInput
    AwsAccountId: string
end

local record DescribeIpRestrictionOutput
    AwsAccountId: string
    IpRestrictionRuleMap: {string : string}
    VpcIdRestrictionRuleMap: {string : string}
    VpcEndpointIdRestrictionRuleMap: {string : string}
    Enabled: boolean
    RequestId: string
    Status: number
end

local record DescribeKeyRegistrationInput
    AwsAccountId: string
    DefaultKeyOnly: boolean
end

local record DescribeKeyRegistrationOutput
    AwsAccountId: string
    KeyRegistration: {RegisteredCustomerManagedKey}
    QDataKey: QDataKey
    RequestId: string
    Status: number
end

local record DescribeNamespaceInput
    AwsAccountId: string
    Namespace: string
end

local record DescribeNamespaceOutput
    Namespace: NamespaceInfoV2
    RequestId: string
    Status: number
end

local record DescribeQPersonalizationConfigurationInput
    AwsAccountId: string
end

local record DescribeQPersonalizationConfigurationOutput
    PersonalizationMode: string
    RequestId: string
    Status: number
end

local record DescribeQuickSightQSearchConfigurationInput
    AwsAccountId: string
end

local record DescribeQuickSightQSearchConfigurationOutput
    QSearchStatus: string
    RequestId: string
    Status: number
end

local record DescribeRefreshScheduleInput
    AwsAccountId: string
    DataSetId: string
    ScheduleId: string
end

local record DescribeRefreshScheduleOutput
    RefreshSchedule: RefreshSchedule
    Status: number
    RequestId: string
    Arn: string
end

local record DescribeRoleCustomPermissionInput
    Role: string
    AwsAccountId: string
    Namespace: string
end

local record DescribeRoleCustomPermissionOutput
    CustomPermissionsName: string
    RequestId: string
    Status: number
end

local record DescribeSelfUpgradeConfigurationInput
    AwsAccountId: string
    Namespace: string
end

local record DescribeSelfUpgradeConfigurationOutput
    SelfUpgradeConfiguration: SelfUpgradeConfiguration
    RequestId: string
    Status: number
end

local record DescribeTemplateInput
    AwsAccountId: string
    TemplateId: string
    VersionNumber: number
    AliasName: string
end

local record DescribeTemplateOutput
    Template: Template
    Status: number
    RequestId: string
end

local record DescribeTemplateAliasInput
    AwsAccountId: string
    TemplateId: string
    AliasName: string
end

local record DescribeTemplateAliasOutput
    TemplateAlias: TemplateAlias
    Status: number
    RequestId: string
end

local record DescribeTemplateDefinitionInput
    AwsAccountId: string
    TemplateId: string
    VersionNumber: number
    AliasName: string
end

local record DescribeTemplateDefinitionOutput
    Name: string
    TemplateId: string
    Errors: {TemplateError}
    ResourceStatus: string
    ThemeArn: string
    Definition: TemplateVersionDefinition
    Status: number
    RequestId: string
end

local record DescribeTemplatePermissionsInput
    AwsAccountId: string
    TemplateId: string
end

local record DescribeTemplatePermissionsOutput
    TemplateId: string
    TemplateArn: string
    Permissions: {ResourcePermission}
    RequestId: string
    Status: number
end

local record DescribeThemeInput
    AwsAccountId: string
    ThemeId: string
    VersionNumber: number
    AliasName: string
end

local record DescribeThemeOutput
    Theme: Theme
    Status: number
    RequestId: string
end

local record DescribeThemeAliasInput
    AwsAccountId: string
    ThemeId: string
    AliasName: string
end

local record DescribeThemeAliasOutput
    ThemeAlias: ThemeAlias
    Status: number
    RequestId: string
end

local record DescribeThemePermissionsInput
    AwsAccountId: string
    ThemeId: string
end

local record DescribeThemePermissionsOutput
    ThemeId: string
    ThemeArn: string
    Permissions: {ResourcePermission}
    RequestId: string
    Status: number
end

local record DescribeTopicInput
    AwsAccountId: string
    TopicId: string
end

local record DescribeTopicOutput
    Arn: string
    TopicId: string
    Topic: TopicDetails
    RequestId: string
    Status: number
    CustomInstructions: CustomInstructions
end

local record DescribeTopicPermissionsInput
    AwsAccountId: string
    TopicId: string
end

local record DescribeTopicPermissionsOutput
    TopicId: string
    TopicArn: string
    Permissions: {ResourcePermission}
    Status: number
    RequestId: string
end

local record DescribeTopicRefreshInput
    AwsAccountId: string
    TopicId: string
    RefreshId: string
end

local record DescribeTopicRefreshOutput
    RefreshDetails: TopicRefreshDetails
    RequestId: string
    Status: number
end

local record DescribeTopicRefreshScheduleInput
    AwsAccountId: string
    TopicId: string
    DatasetId: string
end

local record DescribeTopicRefreshScheduleOutput
    TopicId: string
    TopicArn: string
    DatasetArn: string
    RefreshSchedule: TopicRefreshSchedule
    Status: number
    RequestId: string
end

local record DescribeUserInput
    UserName: string
    AwsAccountId: string
    Namespace: string
end

local record DescribeUserOutput
    User: User
    RequestId: string
    Status: number
end

local record DescribeVPCConnectionInput
    AwsAccountId: string
    VPCConnectionId: string
end

local record DescribeVPCConnectionOutput
    VPCConnection: VPCConnection
    RequestId: string
    Status: number
end

local record GenerateEmbedUrlForAnonymousUserInput
    AwsAccountId: string
    SessionLifetimeInMinutes: number
    Namespace: string
    SessionTags: {SessionTag}
    AuthorizedResourceArns: {string}
    ExperienceConfiguration: AnonymousUserEmbeddingExperienceConfiguration
    AllowedDomains: {string}
end

local record GenerateEmbedUrlForAnonymousUserOutput
    EmbedUrl: string
    Status: number
    RequestId: string
    AnonymousUserArn: string
end

local record GenerateEmbedUrlForRegisteredUserInput
    AwsAccountId: string
    SessionLifetimeInMinutes: number
    UserArn: string
    ExperienceConfiguration: RegisteredUserEmbeddingExperienceConfiguration
    AllowedDomains: {string}
end

local record GenerateEmbedUrlForRegisteredUserOutput
    EmbedUrl: string
    Status: number
    RequestId: string
end

local record GenerateEmbedUrlForRegisteredUserWithIdentityInput
    AwsAccountId: string
    SessionLifetimeInMinutes: number
    ExperienceConfiguration: RegisteredUserEmbeddingExperienceConfiguration
    AllowedDomains: {string}
end

local record GenerateEmbedUrlForRegisteredUserWithIdentityOutput
    EmbedUrl: string
    Status: number
    RequestId: string
end

local record GetDashboardEmbedUrlInput
    AwsAccountId: string
    DashboardId: string
    IdentityType: string
    SessionLifetimeInMinutes: number
    UndoRedoDisabled: boolean
    ResetDisabled: boolean
    StatePersistenceEnabled: boolean
    UserArn: string
    Namespace: string
    AdditionalDashboardIds: {string}
end

local record GetDashboardEmbedUrlOutput
    EmbedUrl: string
    Status: number
    RequestId: string
end

local record GetFlowMetadataInput
    AwsAccountId: string
    FlowId: string
end

local record GetFlowMetadataOutput
    Arn: string
    FlowId: string
    Name: string
    Description: string
    PublishState: string
    UserCount: number
    RunCount: number
    CreatedTime: number
    LastUpdatedTime: number
    RequestId: string
    Status: number
end

local record GetFlowPermissionsInput
    AwsAccountId: string
    FlowId: string
end

local record GetFlowPermissionsOutput
    Arn: string
    FlowId: string
    Permissions: {Permission}
    RequestId: string
    Status: number
end

local record GetIdentityContextInput
    AwsAccountId: string
    UserIdentifier: UserIdentifier
    Namespace: string
    SessionExpiresAt: number
    ContextRegion: string
end

local record GetIdentityContextOutput
    Status: number
    RequestId: string
    Context: string
end

local record GetSessionEmbedUrlInput
    AwsAccountId: string
    EntryPoint: string
    SessionLifetimeInMinutes: number
    UserArn: string
end

local record GetSessionEmbedUrlOutput
    EmbedUrl: string
    Status: number
    RequestId: string
end

local record ListActionConnectorsInput
    AwsAccountId: string
    MaxResults: number
    NextToken: string
end

local record ListActionConnectorsOutput
    ActionConnectorSummaries: {ActionConnectorSummary}
    NextToken: string
    RequestId: string
    Status: number
end

local record ListAnalysesInput
    AwsAccountId: string
    NextToken: string
    MaxResults: number
end

local record ListAnalysesOutput
    AnalysisSummaryList: {AnalysisSummary}
    NextToken: string
    Status: number
    RequestId: string
end

local record ListAssetBundleExportJobsInput
    AwsAccountId: string
    NextToken: string
    MaxResults: number
end

local record ListAssetBundleExportJobsOutput
    AssetBundleExportJobSummaryList: {AssetBundleExportJobSummary}
    NextToken: string
    RequestId: string
    Status: number
end

local record ListAssetBundleImportJobsInput
    AwsAccountId: string
    NextToken: string
    MaxResults: number
end

local record ListAssetBundleImportJobsOutput
    AssetBundleImportJobSummaryList: {AssetBundleImportJobSummary}
    NextToken: string
    RequestId: string
    Status: number
end

local record ListBrandsInput
    AwsAccountId: string
    MaxResults: number
    NextToken: string
end

local record ListBrandsOutput
    NextToken: string
    Brands: {BrandSummary}
end

local record ListCustomPermissionsInput
    AwsAccountId: string
    MaxResults: number
    NextToken: string
end

local record ListCustomPermissionsOutput
    Status: number
    CustomPermissionsList: {CustomPermissions}
    NextToken: string
    RequestId: string
end

local record ListDashboardsInput
    AwsAccountId: string
    NextToken: string
    MaxResults: number
end

local record ListDashboardsOutput
    DashboardSummaryList: {DashboardSummary}
    NextToken: string
    Status: number
    RequestId: string
end

local record ListDashboardVersionsInput
    AwsAccountId: string
    DashboardId: string
    NextToken: string
    MaxResults: number
end

local record ListDashboardVersionsOutput
    DashboardVersionSummaryList: {DashboardVersionSummary}
    NextToken: string
    Status: number
    RequestId: string
end

local record ListDataSetsInput
    AwsAccountId: string
    NextToken: string
    MaxResults: number
end

local record ListDataSetsOutput
    DataSetSummaries: {DataSetSummary}
    NextToken: string
    RequestId: string
    Status: number
end

local record ListDataSourcesInput
    AwsAccountId: string
    NextToken: string
    MaxResults: number
end

local record ListDataSourcesOutput
    DataSources: {DataSource}
    NextToken: string
    RequestId: string
    Status: number
end

local record ListFlowsInput
    AwsAccountId: string
    NextToken: string
    MaxResults: number
end

local record ListFlowsOutput
    FlowSummaryList: {FlowSummary}
    NextToken: string
    RequestId: string
    Status: number
end

local record ListFolderMembersInput
    AwsAccountId: string
    FolderId: string
    NextToken: string
    MaxResults: number
end

local record ListFolderMembersOutput
    Status: number
    FolderMemberList: {MemberIdArnPair}
    NextToken: string
    RequestId: string
end

local record ListFoldersInput
    AwsAccountId: string
    NextToken: string
    MaxResults: number
end

local record ListFoldersOutput
    Status: number
    FolderSummaryList: {FolderSummary}
    NextToken: string
    RequestId: string
end

local record ListFoldersForResourceInput
    AwsAccountId: string
    ResourceArn: string
    NextToken: string
    MaxResults: number
end

local record ListFoldersForResourceOutput
    Status: number
    Folders: {string}
    NextToken: string
    RequestId: string
end

local record ListGroupMembershipsInput
    GroupName: string
    NextToken: string
    MaxResults: number
    AwsAccountId: string
    Namespace: string
end

local record ListGroupMembershipsOutput
    GroupMemberList: {GroupMember}
    NextToken: string
    RequestId: string
    Status: number
end

local record ListGroupsInput
    AwsAccountId: string
    NextToken: string
    MaxResults: number
    Namespace: string
end

local record ListGroupsOutput
    GroupList: {Group}
    NextToken: string
    RequestId: string
    Status: number
end

local record ListIAMPolicyAssignmentsInput
    AwsAccountId: string
    AssignmentStatus: string
    Namespace: string
    NextToken: string
    MaxResults: number
end

local record ListIAMPolicyAssignmentsOutput
    IAMPolicyAssignments: {IAMPolicyAssignmentSummary}
    NextToken: string
    RequestId: string
    Status: number
end

local record ListIAMPolicyAssignmentsForUserInput
    AwsAccountId: string
    UserName: string
    NextToken: string
    MaxResults: number
    Namespace: string
end

local record ListIAMPolicyAssignmentsForUserOutput
    ActiveAssignments: {ActiveIAMPolicyAssignment}
    RequestId: string
    NextToken: string
    Status: number
end

local record ListIdentityPropagationConfigsInput
    AwsAccountId: string
    MaxResults: number
    NextToken: string
end

local record ListIdentityPropagationConfigsOutput
    Services: {AuthorizedTargetsByService}
    NextToken: string
    Status: number
    RequestId: string
end

local record ListIngestionsInput
    DataSetId: string
    NextToken: string
    AwsAccountId: string
    MaxResults: number
end

local record ListIngestionsOutput
    Ingestions: {Ingestion}
    NextToken: string
    RequestId: string
    Status: number
end

local record ListNamespacesInput
    AwsAccountId: string
    NextToken: string
    MaxResults: number
end

local record ListNamespacesOutput
    Namespaces: {NamespaceInfoV2}
    NextToken: string
    RequestId: string
    Status: number
end

local record ListRefreshSchedulesInput
    AwsAccountId: string
    DataSetId: string
end

local record ListRefreshSchedulesOutput
    RefreshSchedules: {RefreshSchedule}
    Status: number
    RequestId: string
end

local record ListRoleMembershipsInput
    Role: string
    NextToken: string
    MaxResults: number
    AwsAccountId: string
    Namespace: string
end

local record ListRoleMembershipsOutput
    MembersList: {string}
    NextToken: string
    RequestId: string
    Status: number
end

local record ListSelfUpgradesInput
    AwsAccountId: string
    Namespace: string
    NextToken: string
    MaxResults: number
end

local record ListSelfUpgradesOutput
    SelfUpgradeRequestDetails: {SelfUpgradeRequestDetail}
    NextToken: string
    RequestId: string
    Status: number
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
    RequestId: string
    Status: number
end

local record ListTemplateAliasesInput
    AwsAccountId: string
    TemplateId: string
    NextToken: string
    MaxResults: number
end

local record ListTemplateAliasesOutput
    TemplateAliasList: {TemplateAlias}
    Status: number
    RequestId: string
    NextToken: string
end

local record ListTemplatesInput
    AwsAccountId: string
    NextToken: string
    MaxResults: number
end

local record ListTemplatesOutput
    TemplateSummaryList: {TemplateSummary}
    NextToken: string
    Status: number
    RequestId: string
end

local record ListTemplateVersionsInput
    AwsAccountId: string
    TemplateId: string
    NextToken: string
    MaxResults: number
end

local record ListTemplateVersionsOutput
    TemplateVersionSummaryList: {TemplateVersionSummary}
    NextToken: string
    Status: number
    RequestId: string
end

local record ListThemeAliasesInput
    AwsAccountId: string
    ThemeId: string
    NextToken: string
    MaxResults: number
end

local record ListThemeAliasesOutput
    ThemeAliasList: {ThemeAlias}
    Status: number
    RequestId: string
    NextToken: string
end

local record ListThemesInput
    AwsAccountId: string
    NextToken: string
    MaxResults: number
    Type: string
end

local record ListThemesOutput
    ThemeSummaryList: {ThemeSummary}
    NextToken: string
    Status: number
    RequestId: string
end

local record ListThemeVersionsInput
    AwsAccountId: string
    ThemeId: string
    NextToken: string
    MaxResults: number
end

local record ListThemeVersionsOutput
    ThemeVersionSummaryList: {ThemeVersionSummary}
    NextToken: string
    Status: number
    RequestId: string
end

local record ListTopicRefreshSchedulesInput
    AwsAccountId: string
    TopicId: string
end

local record ListTopicRefreshSchedulesOutput
    TopicId: string
    TopicArn: string
    RefreshSchedules: {TopicRefreshScheduleSummary}
    Status: number
    RequestId: string
end

local record ListTopicReviewedAnswersInput
    AwsAccountId: string
    TopicId: string
end

local record ListTopicReviewedAnswersOutput
    TopicId: string
    TopicArn: string
    Answers: {TopicReviewedAnswer}
    Status: number
    RequestId: string
end

local record ListTopicsInput
    AwsAccountId: string
    NextToken: string
    MaxResults: number
end

local record ListTopicsOutput
    TopicsSummaries: {TopicSummary}
    NextToken: string
    RequestId: string
    Status: number
end

local record ListUserGroupsInput
    UserName: string
    AwsAccountId: string
    Namespace: string
    NextToken: string
    MaxResults: number
end

local record ListUserGroupsOutput
    GroupList: {Group}
    NextToken: string
    RequestId: string
    Status: number
end

local record ListUsersInput
    AwsAccountId: string
    NextToken: string
    MaxResults: number
    Namespace: string
end

local record ListUsersOutput
    UserList: {User}
    NextToken: string
    RequestId: string
    Status: number
end

local record ListVPCConnectionsInput
    AwsAccountId: string
    NextToken: string
    MaxResults: number
end

local record ListVPCConnectionsOutput
    VPCConnectionSummaries: {VPCConnectionSummary}
    NextToken: string
    RequestId: string
    Status: number
end

local record PredictQAResultsInput
    AwsAccountId: string
    QueryText: string
    IncludeQuickSightQIndex: string
    IncludeGeneratedAnswer: string
    MaxTopicsToConsider: number
end

local record PredictQAResultsOutput
    PrimaryResult: QAResult
    AdditionalResults: {QAResult}
    RequestId: string
    Status: number
end

local record PutDataSetRefreshPropertiesInput
    AwsAccountId: string
    DataSetId: string
    DataSetRefreshProperties: DataSetRefreshProperties
end

local record PutDataSetRefreshPropertiesOutput
    RequestId: string
    Status: number
end

local record RegisterUserInput
    IdentityType: string
    Email: string
    UserRole: string
    IamArn: string
    SessionName: string
    AwsAccountId: string
    Namespace: string
    UserName: string
    CustomPermissionsName: string
    ExternalLoginFederationProviderType: string
    CustomFederationProviderUrl: string
    ExternalLoginId: string
    Tags: {Tag}
end

local record RegisterUserOutput
    User: User
    UserInvitationUrl: string
    RequestId: string
    Status: number
end

local record RestoreAnalysisInput
    AwsAccountId: string
    AnalysisId: string
    RestoreToFolders: boolean
end

local record RestoreAnalysisOutput
    Status: number
    Arn: string
    AnalysisId: string
    RequestId: string
    RestorationFailedFolderArns: {string}
end

local record SearchActionConnectorsInput
    AwsAccountId: string
    MaxResults: number
    NextToken: string
    Filters: {ActionConnectorSearchFilter}
end

local record SearchActionConnectorsOutput
    NextToken: string
    RequestId: string
    Status: number
    ActionConnectorSummaries: {ActionConnectorSummary}
end

local record SearchAnalysesInput
    AwsAccountId: string
    Filters: {AnalysisSearchFilter}
    NextToken: string
    MaxResults: number
end

local record SearchAnalysesOutput
    AnalysisSummaryList: {AnalysisSummary}
    NextToken: string
    Status: number
    RequestId: string
end

local record SearchDashboardsInput
    AwsAccountId: string
    Filters: {DashboardSearchFilter}
    NextToken: string
    MaxResults: number
end

local record SearchDashboardsOutput
    DashboardSummaryList: {DashboardSummary}
    NextToken: string
    Status: number
    RequestId: string
end

local record SearchDataSetsInput
    AwsAccountId: string
    Filters: {DataSetSearchFilter}
    NextToken: string
    MaxResults: number
end

local record SearchDataSetsOutput
    DataSetSummaries: {DataSetSummary}
    NextToken: string
    Status: number
    RequestId: string
end

local record SearchDataSourcesInput
    AwsAccountId: string
    Filters: {DataSourceSearchFilter}
    NextToken: string
    MaxResults: number
end

local record SearchDataSourcesOutput
    DataSourceSummaries: {DataSourceSummary}
    NextToken: string
    Status: number
    RequestId: string
end

local record SearchFlowsInput
    AwsAccountId: string
    Filters: {SearchFlowsFilter}
    NextToken: string
    MaxResults: number
end

local record SearchFlowsOutput
    FlowSummaryList: {FlowSummary}
    NextToken: string
    RequestId: string
    Status: number
end

local record SearchFoldersInput
    AwsAccountId: string
    Filters: {FolderSearchFilter}
    NextToken: string
    MaxResults: number
end

local record SearchFoldersOutput
    Status: number
    FolderSummaryList: {FolderSummary}
    NextToken: string
    RequestId: string
end

local record SearchGroupsInput
    AwsAccountId: string
    NextToken: string
    MaxResults: number
    Namespace: string
    Filters: {GroupSearchFilter}
end

local record SearchGroupsOutput
    GroupList: {Group}
    NextToken: string
    RequestId: string
    Status: number
end

local record SearchTopicsInput
    AwsAccountId: string
    Filters: {TopicSearchFilter}
    NextToken: string
    MaxResults: number
end

local record SearchTopicsOutput
    TopicSummaryList: {TopicSummary}
    NextToken: string
    Status: number
    RequestId: string
end

local record StartAssetBundleExportJobInput
    AwsAccountId: string
    AssetBundleExportJobId: string
    ResourceArns: {string}
    IncludeAllDependencies: boolean
    ExportFormat: string
    CloudFormationOverridePropertyConfiguration: AssetBundleCloudFormationOverridePropertyConfiguration
    IncludePermissions: boolean
    IncludeTags: boolean
    ValidationStrategy: AssetBundleExportJobValidationStrategy
    IncludeFolderMemberships: boolean
    IncludeFolderMembers: string
end

local record StartAssetBundleExportJobOutput
    Arn: string
    AssetBundleExportJobId: string
    RequestId: string
    Status: number
end

local record StartAssetBundleImportJobInput
    AwsAccountId: string
    AssetBundleImportJobId: string
    AssetBundleImportSource: AssetBundleImportSource
    OverrideParameters: AssetBundleImportJobOverrideParameters
    FailureAction: string
    OverridePermissions: AssetBundleImportJobOverridePermissions
    OverrideTags: AssetBundleImportJobOverrideTags
    OverrideValidationStrategy: AssetBundleImportJobOverrideValidationStrategy
end

local record StartAssetBundleImportJobOutput
    Arn: string
    AssetBundleImportJobId: string
    RequestId: string
    Status: number
end

local record StartAutomationJobInput
    AwsAccountId: string
    AutomationGroupId: string
    AutomationId: string
    InputPayload: string
end

local record StartAutomationJobOutput
    Arn: string
    JobId: string
    Status: number
    RequestId: string
end

local record StartDashboardSnapshotJobInput
    AwsAccountId: string
    DashboardId: string
    SnapshotJobId: string
    UserConfiguration: SnapshotUserConfiguration
    SnapshotConfiguration: SnapshotConfiguration
end

local record StartDashboardSnapshotJobOutput
    Arn: string
    SnapshotJobId: string
    RequestId: string
    Status: number
end

local record StartDashboardSnapshotJobScheduleInput
    AwsAccountId: string
    DashboardId: string
    ScheduleId: string
end

local record StartDashboardSnapshotJobScheduleOutput
    RequestId: string
    Status: number
end

local record TagResourceInput
    ResourceArn: string
    Tags: {Tag}
end

local record TagResourceOutput
    RequestId: string
    Status: number
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
    RequestId: string
    Status: number
end

local record UpdateAccountCustomizationInput
    AwsAccountId: string
    Namespace: string
    AccountCustomization: AccountCustomization
end

local record UpdateAccountCustomizationOutput
    Arn: string
    AwsAccountId: string
    Namespace: string
    AccountCustomization: AccountCustomization
    RequestId: string
    Status: number
end

local record UpdateAccountCustomPermissionInput
    CustomPermissionsName: string
    AwsAccountId: string
end

local record UpdateAccountCustomPermissionOutput
    RequestId: string
    Status: number
end

local record UpdateAccountSettingsInput
    AwsAccountId: string
    DefaultNamespace: string
    NotificationEmail: string
    TerminationProtectionEnabled: boolean
end

local record UpdateAccountSettingsOutput
    RequestId: string
    Status: number
end

local record UpdateActionConnectorInput
    AwsAccountId: string
    ActionConnectorId: string
    Name: string
    AuthenticationConfig: AuthConfig
    Description: string
    VpcConnectionArn: string
end

local record UpdateActionConnectorOutput
    Arn: string
    ActionConnectorId: string
    RequestId: string
    UpdateStatus: string
    Status: number
end

local record UpdateActionConnectorPermissionsInput
    AwsAccountId: string
    ActionConnectorId: string
    GrantPermissions: {ResourcePermission}
    RevokePermissions: {ResourcePermission}
end

local record UpdateActionConnectorPermissionsOutput
    Arn: string
    ActionConnectorId: string
    RequestId: string
    Status: number
    Permissions: {ResourcePermission}
end

local record UpdateAnalysisInput
    AwsAccountId: string
    AnalysisId: string
    Name: string
    Parameters: Parameters
    SourceEntity: AnalysisSourceEntity
    ThemeArn: string
    Definition: AnalysisDefinition
    ValidationStrategy: ValidationStrategy
end

local record UpdateAnalysisOutput
    Arn: string
    AnalysisId: string
    UpdateStatus: string
    Status: number
    RequestId: string
end

local record UpdateAnalysisPermissionsInput
    AwsAccountId: string
    AnalysisId: string
    GrantPermissions: {ResourcePermission}
    RevokePermissions: {ResourcePermission}
end

local record UpdateAnalysisPermissionsOutput
    AnalysisArn: string
    AnalysisId: string
    Permissions: {ResourcePermission}
    RequestId: string
    Status: number
end

local record UpdateApplicationWithTokenExchangeGrantInput
    AwsAccountId: string
    Namespace: string
end

local record UpdateApplicationWithTokenExchangeGrantOutput
    Status: number
    RequestId: string
end

local record UpdateBrandInput
    AwsAccountId: string
    BrandId: string
    BrandDefinition: BrandDefinition
end

local record UpdateBrandOutput
    RequestId: string
    BrandDetail: BrandDetail
    BrandDefinition: BrandDefinition
end

local record UpdateBrandAssignmentInput
    AwsAccountId: string
    BrandArn: string
end

local record UpdateBrandAssignmentOutput
    RequestId: string
    BrandArn: string
end

local record UpdateBrandPublishedVersionInput
    AwsAccountId: string
    BrandId: string
    VersionId: string
end

local record UpdateBrandPublishedVersionOutput
    RequestId: string
    VersionId: string
end

local record UpdateCustomPermissionsInput
    AwsAccountId: string
    CustomPermissionsName: string
    Capabilities: Capabilities
end

local record UpdateCustomPermissionsOutput
    Status: number
    Arn: string
    RequestId: string
end

local record UpdateDashboardInput
    AwsAccountId: string
    DashboardId: string
    Name: string
    SourceEntity: DashboardSourceEntity
    Parameters: Parameters
    VersionDescription: string
    DashboardPublishOptions: DashboardPublishOptions
    ThemeArn: string
    Definition: DashboardVersionDefinition
    ValidationStrategy: ValidationStrategy
end

local record UpdateDashboardOutput
    Arn: string
    VersionArn: string
    DashboardId: string
    CreationStatus: string
    Status: number
    RequestId: string
end

local record UpdateDashboardLinksInput
    AwsAccountId: string
    DashboardId: string
    LinkEntities: {string}
end

local record UpdateDashboardLinksOutput
    RequestId: string
    Status: number
    DashboardArn: string
    LinkEntities: {string}
end

local record UpdateDashboardPermissionsInput
    AwsAccountId: string
    DashboardId: string
    GrantPermissions: {ResourcePermission}
    RevokePermissions: {ResourcePermission}
    GrantLinkPermissions: {ResourcePermission}
    RevokeLinkPermissions: {ResourcePermission}
end

local record UpdateDashboardPermissionsOutput
    DashboardArn: string
    DashboardId: string
    Permissions: {ResourcePermission}
    RequestId: string
    Status: number
    LinkSharingConfiguration: LinkSharingConfiguration
end

local record UpdateDashboardPublishedVersionInput
    AwsAccountId: string
    DashboardId: string
    VersionNumber: number
end

local record UpdateDashboardPublishedVersionOutput
    DashboardId: string
    DashboardArn: string
    Status: number
    RequestId: string
end

local record UpdateDashboardsQAConfigurationInput
    AwsAccountId: string
    DashboardsQAStatus: string
end

local record UpdateDashboardsQAConfigurationOutput
    DashboardsQAStatus: string
    RequestId: string
    Status: number
end

local record UpdateDataSetInput
    AwsAccountId: string
    DataSetId: string
    Name: string
    PhysicalTableMap: {string : PhysicalTable}
    LogicalTableMap: {string : LogicalTable}
    ImportMode: string
    ColumnGroups: {ColumnGroup}
    FieldFolders: {string : FieldFolder}
    RowLevelPermissionDataSet: RowLevelPermissionDataSet
    RowLevelPermissionTagConfiguration: RowLevelPermissionTagConfiguration
    ColumnLevelPermissionRules: {ColumnLevelPermissionRule}
    DataSetUsageConfiguration: DataSetUsageConfiguration
    DatasetParameters: {DatasetParameter}
    PerformanceConfiguration: PerformanceConfiguration
    DataPrepConfiguration: DataPrepConfiguration
    SemanticModelConfiguration: SemanticModelConfiguration
end

local record UpdateDataSetOutput
    Arn: string
    DataSetId: string
    IngestionArn: string
    IngestionId: string
    RequestId: string
    Status: number
end

local record UpdateDataSetPermissionsInput
    AwsAccountId: string
    DataSetId: string
    GrantPermissions: {ResourcePermission}
    RevokePermissions: {ResourcePermission}
end

local record UpdateDataSetPermissionsOutput
    DataSetArn: string
    DataSetId: string
    RequestId: string
    Status: number
end

local record UpdateDataSourceInput
    AwsAccountId: string
    DataSourceId: string
    Name: string
    DataSourceParameters: DataSourceParameters
    Credentials: DataSourceCredentials
    VpcConnectionProperties: VpcConnectionProperties
    SslProperties: SslProperties
end

local record UpdateDataSourceOutput
    Arn: string
    DataSourceId: string
    UpdateStatus: string
    RequestId: string
    Status: number
end

local record UpdateDataSourcePermissionsInput
    AwsAccountId: string
    DataSourceId: string
    GrantPermissions: {ResourcePermission}
    RevokePermissions: {ResourcePermission}
end

local record UpdateDataSourcePermissionsOutput
    DataSourceArn: string
    DataSourceId: string
    RequestId: string
    Status: number
end

local record UpdateDefaultQBusinessApplicationInput
    AwsAccountId: string
    Namespace: string
    ApplicationId: string
end

local record UpdateDefaultQBusinessApplicationOutput
    RequestId: string
    Status: number
end

local record UpdateFlowPermissionsInput
    AwsAccountId: string
    FlowId: string
    GrantPermissions: {Permission}
    RevokePermissions: {Permission}
end

local record UpdateFlowPermissionsOutput
    Status: number
    Arn: string
    Permissions: {Permission}
    RequestId: string
    FlowId: string
end

local record UpdateFolderInput
    AwsAccountId: string
    FolderId: string
    Name: string
end

local record UpdateFolderOutput
    Status: number
    Arn: string
    FolderId: string
    RequestId: string
end

local record UpdateFolderPermissionsInput
    AwsAccountId: string
    FolderId: string
    GrantPermissions: {ResourcePermission}
    RevokePermissions: {ResourcePermission}
end

local record UpdateFolderPermissionsOutput
    Status: number
    Arn: string
    FolderId: string
    Permissions: {ResourcePermission}
    RequestId: string
end

local record UpdateGroupInput
    GroupName: string
    Description: string
    AwsAccountId: string
    Namespace: string
end

local record UpdateGroupOutput
    Group: Group
    RequestId: string
    Status: number
end

local record UpdateIAMPolicyAssignmentInput
    AwsAccountId: string
    AssignmentName: string
    Namespace: string
    AssignmentStatus: string
    PolicyArn: string
    Identities: {string : {string}}
end

local record UpdateIAMPolicyAssignmentOutput
    AssignmentName: string
    AssignmentId: string
    PolicyArn: string
    Identities: {string : {string}}
    AssignmentStatus: string
    RequestId: string
    Status: number
end

local record UpdateIdentityPropagationConfigInput
    AwsAccountId: string
    Service: string
    AuthorizedTargets: {string}
end

local record UpdateIdentityPropagationConfigOutput
    RequestId: string
    Status: number
end

local record UpdateIpRestrictionInput
    AwsAccountId: string
    IpRestrictionRuleMap: {string : string}
    VpcIdRestrictionRuleMap: {string : string}
    VpcEndpointIdRestrictionRuleMap: {string : string}
    Enabled: boolean
end

local record UpdateIpRestrictionOutput
    AwsAccountId: string
    RequestId: string
    Status: number
end

local record UpdateKeyRegistrationInput
    AwsAccountId: string
    KeyRegistration: {RegisteredCustomerManagedKey}
end

local record UpdateKeyRegistrationOutput
    FailedKeyRegistration: {FailedKeyRegistrationEntry}
    SuccessfulKeyRegistration: {SuccessfulKeyRegistrationEntry}
    RequestId: string
end

local record UpdatePublicSharingSettingsInput
    AwsAccountId: string
    PublicSharingEnabled: boolean
end

local record UpdatePublicSharingSettingsOutput
    RequestId: string
    Status: number
end

local record UpdateQPersonalizationConfigurationInput
    AwsAccountId: string
    PersonalizationMode: string
end

local record UpdateQPersonalizationConfigurationOutput
    PersonalizationMode: string
    RequestId: string
    Status: number
end

local record UpdateQuickSightQSearchConfigurationInput
    AwsAccountId: string
    QSearchStatus: string
end

local record UpdateQuickSightQSearchConfigurationOutput
    QSearchStatus: string
    RequestId: string
    Status: number
end

local record UpdateRefreshScheduleInput
    DataSetId: string
    AwsAccountId: string
    Schedule: RefreshSchedule
end

local record UpdateRefreshScheduleOutput
    Status: number
    RequestId: string
    ScheduleId: string
    Arn: string
end

local record UpdateRoleCustomPermissionInput
    CustomPermissionsName: string
    Role: string
    AwsAccountId: string
    Namespace: string
end

local record UpdateRoleCustomPermissionOutput
    RequestId: string
    Status: number
end

local record UpdateSelfUpgradeInput
    AwsAccountId: string
    Namespace: string
    UpgradeRequestId: string
    Action: string
end

local record UpdateSelfUpgradeOutput
    SelfUpgradeRequestDetail: SelfUpgradeRequestDetail
    RequestId: string
    Status: number
end

local record UpdateSelfUpgradeConfigurationInput
    AwsAccountId: string
    Namespace: string
    SelfUpgradeStatus: string
end

local record UpdateSelfUpgradeConfigurationOutput
    RequestId: string
    Status: number
end

local record UpdateSPICECapacityConfigurationInput
    AwsAccountId: string
    PurchaseMode: string
end

local record UpdateSPICECapacityConfigurationOutput
    RequestId: string
    Status: number
end

local record UpdateTemplateInput
    AwsAccountId: string
    TemplateId: string
    SourceEntity: TemplateSourceEntity
    VersionDescription: string
    Name: string
    Definition: TemplateVersionDefinition
    ValidationStrategy: ValidationStrategy
end

local record UpdateTemplateOutput
    TemplateId: string
    Arn: string
    VersionArn: string
    CreationStatus: string
    Status: number
    RequestId: string
end

local record UpdateTemplateAliasInput
    AwsAccountId: string
    TemplateId: string
    AliasName: string
    TemplateVersionNumber: number
end

local record UpdateTemplateAliasOutput
    TemplateAlias: TemplateAlias
    Status: number
    RequestId: string
end

local record UpdateTemplatePermissionsInput
    AwsAccountId: string
    TemplateId: string
    GrantPermissions: {ResourcePermission}
    RevokePermissions: {ResourcePermission}
end

local record UpdateTemplatePermissionsOutput
    TemplateId: string
    TemplateArn: string
    Permissions: {ResourcePermission}
    RequestId: string
    Status: number
end

local record UpdateThemeInput
    AwsAccountId: string
    ThemeId: string
    Name: string
    BaseThemeId: string
    VersionDescription: string
    Configuration: ThemeConfiguration
end

local record UpdateThemeOutput
    ThemeId: string
    Arn: string
    VersionArn: string
    CreationStatus: string
    Status: number
    RequestId: string
end

local record UpdateThemeAliasInput
    AwsAccountId: string
    ThemeId: string
    AliasName: string
    ThemeVersionNumber: number
end

local record UpdateThemeAliasOutput
    ThemeAlias: ThemeAlias
    Status: number
    RequestId: string
end

local record UpdateThemePermissionsInput
    AwsAccountId: string
    ThemeId: string
    GrantPermissions: {ResourcePermission}
    RevokePermissions: {ResourcePermission}
end

local record UpdateThemePermissionsOutput
    ThemeId: string
    ThemeArn: string
    Permissions: {ResourcePermission}
    RequestId: string
    Status: number
end

local record UpdateTopicInput
    AwsAccountId: string
    TopicId: string
    Topic: TopicDetails
    CustomInstructions: CustomInstructions
end

local record UpdateTopicOutput
    TopicId: string
    Arn: string
    RefreshArn: string
    RequestId: string
    Status: number
end

local record UpdateTopicPermissionsInput
    AwsAccountId: string
    TopicId: string
    GrantPermissions: {ResourcePermission}
    RevokePermissions: {ResourcePermission}
end

local record UpdateTopicPermissionsOutput
    TopicId: string
    TopicArn: string
    Permissions: {ResourcePermission}
    Status: number
    RequestId: string
end

local record UpdateTopicRefreshScheduleInput
    AwsAccountId: string
    TopicId: string
    DatasetId: string
    RefreshSchedule: TopicRefreshSchedule
end

local record UpdateTopicRefreshScheduleOutput
    TopicId: string
    TopicArn: string
    DatasetArn: string
    Status: number
    RequestId: string
end

local record UpdateUserInput
    UserName: string
    AwsAccountId: string
    Namespace: string
    Email: string
    Role: string
    CustomPermissionsName: string
    UnapplyCustomPermissions: boolean
    ExternalLoginFederationProviderType: string
    CustomFederationProviderUrl: string
    ExternalLoginId: string
end

local record UpdateUserOutput
    User: User
    RequestId: string
    Status: number
end

local record UpdateUserCustomPermissionInput
    UserName: string
    AwsAccountId: string
    Namespace: string
    CustomPermissionsName: string
end

local record UpdateUserCustomPermissionOutput
    RequestId: string
    Status: number
end

local record UpdateVPCConnectionInput
    AwsAccountId: string
    VPCConnectionId: string
    Name: string
    SubnetIds: {string}
    SecurityGroupIds: {string}
    DnsResolvers: {string}
    RoleArn: string
end

local record UpdateVPCConnectionOutput
    Arn: string
    VPCConnectionId: string
    UpdateStatus: string
    AvailabilityStatus: string
    RequestId: string
    Status: number
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidDataSetParameterValueException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record CustomerManagedKeyUnavailableException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConcurrentUpdatingException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConcurrentUpdatingException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record SessionLifetimeInMinutesInvalidException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedPricingPlanException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record QuickSightUserNotFoundException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record SessionLifetimeInMinutesInvalidException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedPricingPlanException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record QuickSightUserNotFoundException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record SessionLifetimeInMinutesInvalidException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedPricingPlanException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record DomainNotWhitelistedException
    Message: string
    RequestId: string
end

local record IdentityTypeNotSupportedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record QuickSightUserNotFoundException
    Message: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record SessionLifetimeInMinutesInvalidException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedPricingPlanException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record QuickSightUserNotFoundException
    Message: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record SessionLifetimeInMinutesInvalidException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConcurrentUpdatingException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record InvalidRequestException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedPricingPlanException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record InvalidRequestException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidDataSetParameterValueException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record CustomerManagedKeyUnavailableException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConcurrentUpdatingException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedPricingPlanException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidNextTokenException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record PreconditionNotMetException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceUnavailableException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
end

local record ConflictException
    Message: string
    RequestId: string
end

local record InternalFailureException
    Message: string
    RequestId: string
end

local record InvalidParameterValueException
    Message: string
    RequestId: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    RequestId: string
end

local record ThrottlingException
    Message: string
    RequestId: string
end

local record UnsupportedUserEditionException
    Message: string
    RequestId: string
end

local type AssetBundleExportJobStatus = "QUEUED_FOR_IMMEDIATE_EXECUTION" | "IN_PROGRESS" | "SUCCESSFUL" | "FAILED"

local type QSearchStatus = "ENABLED" | "DISABLED"

local type IngestionStatus = "INITIALIZED" | "QUEUED" | "RUNNING" | "FAILED" | "COMPLETED" | "CANCELLED"

local type AssignmentStatus = "ENABLED" | "DRAFT" | "DISABLED"

local type IncludeFolderMembers = "RECURSE" | "ONE_LEVEL" | "NONE"

local type AutomationJobStatus = "FAILED" | "RUNNING" | "SUCCEEDED" | "QUEUED" | "STOPPED"

local type IdentityType = "IAM" | "QUICKSIGHT" | "IAM_IDENTITY_CENTER"

local type FolderType = "SHARED" | "RESTRICTED"

local type NamespaceStatus = "CREATED" | "CREATING" | "DELETING" | "RETRYABLE_FAILURE" | "NON_RETRYABLE_FAILURE"

local type FlowPublishState = "PUBLISHED" | "DRAFT" | "PENDING_APPROVAL"

local type DataSetUseAs = "RLS_RULES"

local type IdentityStore = "QUICKSIGHT"

local type ThemeType = "QUICKSIGHT" | "CUSTOM" | "ALL"

local type ResourceStatus = "CREATION_IN_PROGRESS" | "CREATION_SUCCESSFUL" | "CREATION_FAILED" | "UPDATE_IN_PROGRESS" | "UPDATE_SUCCESSFUL" | "UPDATE_FAILED" | "DELETED"

local type DataSourceType = "ADOBE_ANALYTICS" | "AMAZON_ELASTICSEARCH" | "ATHENA" | "AURORA" | "AURORA_POSTGRESQL" | "AWS_IOT_ANALYTICS" | "GITHUB" | "JIRA" | "MARIADB" | "MYSQL" | "ORACLE" | "POSTGRESQL" | "PRESTO" | "REDSHIFT" | "S3" | "S3_TABLES" | "SALESFORCE" | "SERVICENOW" | "SNOWFLAKE" | "SPARK" | "SQLSERVER" | "TERADATA" | "TWITTER" | "TIMESTREAM" | "AMAZON_OPENSEARCH" | "EXASOL" | "DATABRICKS" | "STARBURST" | "TRINO" | "BIGQUERY" | "GOOGLESHEETS" | "GOOGLE_DRIVE" | "CONFLUENCE" | "SHAREPOINT" | "ONE_DRIVE" | "WEB_CRAWLER" | "S3_KNOWLEDGE_BASE" | "QBUSINESS"

local type IngestionType = "INCREMENTAL_REFRESH" | "FULL_REFRESH"

local type SelfUpgradeAdminAction = "APPROVE" | "DENY" | "VERIFY"

local type VPCConnectionResourceStatus = "CREATION_IN_PROGRESS" | "CREATION_SUCCESSFUL" | "CREATION_FAILED" | "UPDATE_IN_PROGRESS" | "UPDATE_SUCCESSFUL" | "UPDATE_FAILED" | "DELETION_IN_PROGRESS" | "DELETION_FAILED" | "DELETED"

local type SelfUpgradeStatus = "AUTO_APPROVAL" | "ADMIN_APPROVAL"

local type MemberType = "DASHBOARD" | "ANALYSIS" | "DATASET" | "DATASOURCE" | "TOPIC"

local type ActionConnectorType = "GENERIC_HTTP" | "SERVICENOW_NOW_PLATFORM" | "SALESFORCE_CRM" | "MICROSOFT_OUTLOOK" | "PAGERDUTY_ADVANCE" | "JIRA_CLOUD" | "ATLASSIAN_CONFLUENCE" | "AMAZON_S3" | "AMAZON_BEDROCK_AGENT_RUNTIME" | "AMAZON_BEDROCK_RUNTIME" | "AMAZON_BEDROCK_DATA_AUTOMATION_RUNTIME" | "AMAZON_TEXTRACT" | "AMAZON_COMPREHEND" | "AMAZON_COMPREHEND_MEDICAL" | "MICROSOFT_ONEDRIVE" | "MICROSOFT_SHAREPOINT" | "MICROSOFT_TEAMS" | "SAP_BUSINESSPARTNER" | "SAP_PRODUCTMASTERDATA" | "SAP_PHYSICALINVENTORY" | "SAP_BILLOFMATERIALS" | "SAP_MATERIALSTOCK" | "ZENDESK_SUITE" | "SMARTSHEET" | "SLACK" | "ASANA" | "BAMBOO_HR"

local type AssetBundleImportJobStatus = "QUEUED_FOR_IMMEDIATE_EXECUTION" | "IN_PROGRESS" | "SUCCESSFUL" | "FAILED" | "FAILED_ROLLBACK_IN_PROGRESS" | "FAILED_ROLLBACK_COMPLETED" | "FAILED_ROLLBACK_ERROR"

local type IncludeQuickSightQIndex = "INCLUDE" | "EXCLUDE"

local type EmbeddingIdentityType = "IAM" | "QUICKSIGHT" | "ANONYMOUS"

local type AssetBundleImportFailureAction = "DO_NOTHING" | "ROLLBACK"

local type IncludeGeneratedAnswer = "INCLUDE" | "EXCLUDE"

local type UserRole = "ADMIN" | "AUTHOR" | "READER" | "RESTRICTED_AUTHOR" | "RESTRICTED_READER" | "ADMIN_PRO" | "AUTHOR_PRO" | "READER_PRO"

local type SharingModel = "ACCOUNT" | "NAMESPACE"

local type Edition = "STANDARD" | "ENTERPRISE" | "ENTERPRISE_AND_Q"

local type PersonalizationMode = "ENABLED" | "DISABLED"

local type AuthenticationMethodOption = "IAM_AND_QUICKSIGHT" | "IAM_ONLY" | "ACTIVE_DIRECTORY" | "IAM_IDENTITY_CENTER"

local type AssetBundleExportFormat = "CLOUDFORMATION_JSON" | "QUICKSIGHT_JSON"

local type VPCConnectionAvailabilityStatus = "AVAILABLE" | "UNAVAILABLE" | "PARTIALLY_AVAILABLE"

local type DataSetImportMode = "SPICE" | "DIRECT_QUERY"

local type PurchaseMode = "MANUAL" | "AUTO_PURCHASE"

local type DashboardsQAStatus = "ENABLED" | "DISABLED"

local type ServiceType = "REDSHIFT" | "QBUSINESS" | "ATHENA"

local type SnapshotJobStatus = "QUEUED" | "RUNNING" | "COMPLETED" | "FAILED"

local type Role = "ADMIN" | "AUTHOR" | "READER" | "ADMIN_PRO" | "AUTHOR_PRO" | "READER_PRO"

local record M
    BatchCreateTopicReviewedAnswerInput: BatchCreateTopicReviewedAnswerInput
    BatchCreateTopicReviewedAnswerOutput: BatchCreateTopicReviewedAnswerOutput
    BatchDeleteTopicReviewedAnswerInput: BatchDeleteTopicReviewedAnswerInput
    BatchDeleteTopicReviewedAnswerOutput: BatchDeleteTopicReviewedAnswerOutput
    CancelIngestionInput: CancelIngestionInput
    CancelIngestionOutput: CancelIngestionOutput
    CreateAccountCustomizationInput: CreateAccountCustomizationInput
    CreateAccountCustomizationOutput: CreateAccountCustomizationOutput
    CreateAccountSubscriptionInput: CreateAccountSubscriptionInput
    CreateAccountSubscriptionOutput: CreateAccountSubscriptionOutput
    CreateActionConnectorInput: CreateActionConnectorInput
    CreateActionConnectorOutput: CreateActionConnectorOutput
    CreateAnalysisInput: CreateAnalysisInput
    CreateAnalysisOutput: CreateAnalysisOutput
    CreateBrandInput: CreateBrandInput
    CreateBrandOutput: CreateBrandOutput
    CreateCustomPermissionsInput: CreateCustomPermissionsInput
    CreateCustomPermissionsOutput: CreateCustomPermissionsOutput
    CreateDashboardInput: CreateDashboardInput
    CreateDashboardOutput: CreateDashboardOutput
    CreateDataSetInput: CreateDataSetInput
    CreateDataSetOutput: CreateDataSetOutput
    CreateDataSourceInput: CreateDataSourceInput
    CreateDataSourceOutput: CreateDataSourceOutput
    CreateFolderInput: CreateFolderInput
    CreateFolderOutput: CreateFolderOutput
    CreateFolderMembershipInput: CreateFolderMembershipInput
    CreateFolderMembershipOutput: CreateFolderMembershipOutput
    CreateGroupInput: CreateGroupInput
    CreateGroupOutput: CreateGroupOutput
    CreateGroupMembershipInput: CreateGroupMembershipInput
    CreateGroupMembershipOutput: CreateGroupMembershipOutput
    CreateIAMPolicyAssignmentInput: CreateIAMPolicyAssignmentInput
    CreateIAMPolicyAssignmentOutput: CreateIAMPolicyAssignmentOutput
    CreateIngestionInput: CreateIngestionInput
    CreateIngestionOutput: CreateIngestionOutput
    CreateNamespaceInput: CreateNamespaceInput
    CreateNamespaceOutput: CreateNamespaceOutput
    CreateRefreshScheduleInput: CreateRefreshScheduleInput
    CreateRefreshScheduleOutput: CreateRefreshScheduleOutput
    CreateRoleMembershipInput: CreateRoleMembershipInput
    CreateRoleMembershipOutput: CreateRoleMembershipOutput
    CreateTemplateInput: CreateTemplateInput
    CreateTemplateOutput: CreateTemplateOutput
    CreateTemplateAliasInput: CreateTemplateAliasInput
    CreateTemplateAliasOutput: CreateTemplateAliasOutput
    CreateThemeInput: CreateThemeInput
    CreateThemeOutput: CreateThemeOutput
    CreateThemeAliasInput: CreateThemeAliasInput
    CreateThemeAliasOutput: CreateThemeAliasOutput
    CreateTopicInput: CreateTopicInput
    CreateTopicOutput: CreateTopicOutput
    CreateTopicRefreshScheduleInput: CreateTopicRefreshScheduleInput
    CreateTopicRefreshScheduleOutput: CreateTopicRefreshScheduleOutput
    CreateVPCConnectionInput: CreateVPCConnectionInput
    CreateVPCConnectionOutput: CreateVPCConnectionOutput
    DeleteAccountCustomizationInput: DeleteAccountCustomizationInput
    DeleteAccountCustomizationOutput: DeleteAccountCustomizationOutput
    DeleteAccountCustomPermissionInput: DeleteAccountCustomPermissionInput
    DeleteAccountCustomPermissionOutput: DeleteAccountCustomPermissionOutput
    DeleteAccountSubscriptionInput: DeleteAccountSubscriptionInput
    DeleteAccountSubscriptionOutput: DeleteAccountSubscriptionOutput
    DeleteActionConnectorInput: DeleteActionConnectorInput
    DeleteActionConnectorOutput: DeleteActionConnectorOutput
    DeleteAnalysisInput: DeleteAnalysisInput
    DeleteAnalysisOutput: DeleteAnalysisOutput
    DeleteBrandInput: DeleteBrandInput
    DeleteBrandOutput: DeleteBrandOutput
    DeleteBrandAssignmentInput: DeleteBrandAssignmentInput
    DeleteBrandAssignmentOutput: DeleteBrandAssignmentOutput
    DeleteCustomPermissionsInput: DeleteCustomPermissionsInput
    DeleteCustomPermissionsOutput: DeleteCustomPermissionsOutput
    DeleteDashboardInput: DeleteDashboardInput
    DeleteDashboardOutput: DeleteDashboardOutput
    DeleteDataSetInput: DeleteDataSetInput
    DeleteDataSetOutput: DeleteDataSetOutput
    DeleteDataSetRefreshPropertiesInput: DeleteDataSetRefreshPropertiesInput
    DeleteDataSetRefreshPropertiesOutput: DeleteDataSetRefreshPropertiesOutput
    DeleteDataSourceInput: DeleteDataSourceInput
    DeleteDataSourceOutput: DeleteDataSourceOutput
    DeleteDefaultQBusinessApplicationInput: DeleteDefaultQBusinessApplicationInput
    DeleteDefaultQBusinessApplicationOutput: DeleteDefaultQBusinessApplicationOutput
    DeleteFolderInput: DeleteFolderInput
    DeleteFolderOutput: DeleteFolderOutput
    DeleteFolderMembershipInput: DeleteFolderMembershipInput
    DeleteFolderMembershipOutput: DeleteFolderMembershipOutput
    DeleteGroupInput: DeleteGroupInput
    DeleteGroupOutput: DeleteGroupOutput
    DeleteGroupMembershipInput: DeleteGroupMembershipInput
    DeleteGroupMembershipOutput: DeleteGroupMembershipOutput
    DeleteIAMPolicyAssignmentInput: DeleteIAMPolicyAssignmentInput
    DeleteIAMPolicyAssignmentOutput: DeleteIAMPolicyAssignmentOutput
    DeleteIdentityPropagationConfigInput: DeleteIdentityPropagationConfigInput
    DeleteIdentityPropagationConfigOutput: DeleteIdentityPropagationConfigOutput
    DeleteNamespaceInput: DeleteNamespaceInput
    DeleteNamespaceOutput: DeleteNamespaceOutput
    DeleteRefreshScheduleInput: DeleteRefreshScheduleInput
    DeleteRefreshScheduleOutput: DeleteRefreshScheduleOutput
    DeleteRoleCustomPermissionInput: DeleteRoleCustomPermissionInput
    DeleteRoleCustomPermissionOutput: DeleteRoleCustomPermissionOutput
    DeleteRoleMembershipInput: DeleteRoleMembershipInput
    DeleteRoleMembershipOutput: DeleteRoleMembershipOutput
    DeleteTemplateInput: DeleteTemplateInput
    DeleteTemplateOutput: DeleteTemplateOutput
    DeleteTemplateAliasInput: DeleteTemplateAliasInput
    DeleteTemplateAliasOutput: DeleteTemplateAliasOutput
    DeleteThemeInput: DeleteThemeInput
    DeleteThemeOutput: DeleteThemeOutput
    DeleteThemeAliasInput: DeleteThemeAliasInput
    DeleteThemeAliasOutput: DeleteThemeAliasOutput
    DeleteTopicInput: DeleteTopicInput
    DeleteTopicOutput: DeleteTopicOutput
    DeleteTopicRefreshScheduleInput: DeleteTopicRefreshScheduleInput
    DeleteTopicRefreshScheduleOutput: DeleteTopicRefreshScheduleOutput
    DeleteUserInput: DeleteUserInput
    DeleteUserOutput: DeleteUserOutput
    DeleteUserByPrincipalIdInput: DeleteUserByPrincipalIdInput
    DeleteUserByPrincipalIdOutput: DeleteUserByPrincipalIdOutput
    DeleteUserCustomPermissionInput: DeleteUserCustomPermissionInput
    DeleteUserCustomPermissionOutput: DeleteUserCustomPermissionOutput
    DeleteVPCConnectionInput: DeleteVPCConnectionInput
    DeleteVPCConnectionOutput: DeleteVPCConnectionOutput
    DescribeAccountCustomizationInput: DescribeAccountCustomizationInput
    DescribeAccountCustomizationOutput: DescribeAccountCustomizationOutput
    DescribeAccountCustomPermissionInput: DescribeAccountCustomPermissionInput
    DescribeAccountCustomPermissionOutput: DescribeAccountCustomPermissionOutput
    DescribeAccountSettingsInput: DescribeAccountSettingsInput
    DescribeAccountSettingsOutput: DescribeAccountSettingsOutput
    DescribeAccountSubscriptionInput: DescribeAccountSubscriptionInput
    DescribeAccountSubscriptionOutput: DescribeAccountSubscriptionOutput
    DescribeActionConnectorInput: DescribeActionConnectorInput
    DescribeActionConnectorOutput: DescribeActionConnectorOutput
    DescribeActionConnectorPermissionsInput: DescribeActionConnectorPermissionsInput
    DescribeActionConnectorPermissionsOutput: DescribeActionConnectorPermissionsOutput
    DescribeAnalysisInput: DescribeAnalysisInput
    DescribeAnalysisOutput: DescribeAnalysisOutput
    DescribeAnalysisDefinitionInput: DescribeAnalysisDefinitionInput
    DescribeAnalysisDefinitionOutput: DescribeAnalysisDefinitionOutput
    DescribeAnalysisPermissionsInput: DescribeAnalysisPermissionsInput
    DescribeAnalysisPermissionsOutput: DescribeAnalysisPermissionsOutput
    DescribeAssetBundleExportJobInput: DescribeAssetBundleExportJobInput
    DescribeAssetBundleExportJobOutput: DescribeAssetBundleExportJobOutput
    DescribeAssetBundleImportJobInput: DescribeAssetBundleImportJobInput
    DescribeAssetBundleImportJobOutput: DescribeAssetBundleImportJobOutput
    DescribeAutomationJobInput: DescribeAutomationJobInput
    DescribeAutomationJobOutput: DescribeAutomationJobOutput
    DescribeBrandInput: DescribeBrandInput
    DescribeBrandOutput: DescribeBrandOutput
    DescribeBrandAssignmentInput: DescribeBrandAssignmentInput
    DescribeBrandAssignmentOutput: DescribeBrandAssignmentOutput
    DescribeBrandPublishedVersionInput: DescribeBrandPublishedVersionInput
    DescribeBrandPublishedVersionOutput: DescribeBrandPublishedVersionOutput
    DescribeCustomPermissionsInput: DescribeCustomPermissionsInput
    DescribeCustomPermissionsOutput: DescribeCustomPermissionsOutput
    DescribeDashboardInput: DescribeDashboardInput
    DescribeDashboardOutput: DescribeDashboardOutput
    DescribeDashboardDefinitionInput: DescribeDashboardDefinitionInput
    DescribeDashboardDefinitionOutput: DescribeDashboardDefinitionOutput
    DescribeDashboardPermissionsInput: DescribeDashboardPermissionsInput
    DescribeDashboardPermissionsOutput: DescribeDashboardPermissionsOutput
    DescribeDashboardSnapshotJobInput: DescribeDashboardSnapshotJobInput
    DescribeDashboardSnapshotJobOutput: DescribeDashboardSnapshotJobOutput
    DescribeDashboardSnapshotJobResultInput: DescribeDashboardSnapshotJobResultInput
    DescribeDashboardSnapshotJobResultOutput: DescribeDashboardSnapshotJobResultOutput
    DescribeDashboardsQAConfigurationInput: DescribeDashboardsQAConfigurationInput
    DescribeDashboardsQAConfigurationOutput: DescribeDashboardsQAConfigurationOutput
    DescribeDataSetInput: DescribeDataSetInput
    DescribeDataSetOutput: DescribeDataSetOutput
    DescribeDataSetPermissionsInput: DescribeDataSetPermissionsInput
    DescribeDataSetPermissionsOutput: DescribeDataSetPermissionsOutput
    DescribeDataSetRefreshPropertiesInput: DescribeDataSetRefreshPropertiesInput
    DescribeDataSetRefreshPropertiesOutput: DescribeDataSetRefreshPropertiesOutput
    DescribeDataSourceInput: DescribeDataSourceInput
    DescribeDataSourceOutput: DescribeDataSourceOutput
    DescribeDataSourcePermissionsInput: DescribeDataSourcePermissionsInput
    DescribeDataSourcePermissionsOutput: DescribeDataSourcePermissionsOutput
    DescribeDefaultQBusinessApplicationInput: DescribeDefaultQBusinessApplicationInput
    DescribeDefaultQBusinessApplicationOutput: DescribeDefaultQBusinessApplicationOutput
    DescribeFolderInput: DescribeFolderInput
    DescribeFolderOutput: DescribeFolderOutput
    DescribeFolderPermissionsInput: DescribeFolderPermissionsInput
    DescribeFolderPermissionsOutput: DescribeFolderPermissionsOutput
    DescribeFolderResolvedPermissionsInput: DescribeFolderResolvedPermissionsInput
    DescribeFolderResolvedPermissionsOutput: DescribeFolderResolvedPermissionsOutput
    DescribeGroupInput: DescribeGroupInput
    DescribeGroupOutput: DescribeGroupOutput
    DescribeGroupMembershipInput: DescribeGroupMembershipInput
    DescribeGroupMembershipOutput: DescribeGroupMembershipOutput
    DescribeIAMPolicyAssignmentInput: DescribeIAMPolicyAssignmentInput
    DescribeIAMPolicyAssignmentOutput: DescribeIAMPolicyAssignmentOutput
    DescribeIngestionInput: DescribeIngestionInput
    DescribeIngestionOutput: DescribeIngestionOutput
    DescribeIpRestrictionInput: DescribeIpRestrictionInput
    DescribeIpRestrictionOutput: DescribeIpRestrictionOutput
    DescribeKeyRegistrationInput: DescribeKeyRegistrationInput
    DescribeKeyRegistrationOutput: DescribeKeyRegistrationOutput
    DescribeNamespaceInput: DescribeNamespaceInput
    DescribeNamespaceOutput: DescribeNamespaceOutput
    DescribeQPersonalizationConfigurationInput: DescribeQPersonalizationConfigurationInput
    DescribeQPersonalizationConfigurationOutput: DescribeQPersonalizationConfigurationOutput
    DescribeQuickSightQSearchConfigurationInput: DescribeQuickSightQSearchConfigurationInput
    DescribeQuickSightQSearchConfigurationOutput: DescribeQuickSightQSearchConfigurationOutput
    DescribeRefreshScheduleInput: DescribeRefreshScheduleInput
    DescribeRefreshScheduleOutput: DescribeRefreshScheduleOutput
    DescribeRoleCustomPermissionInput: DescribeRoleCustomPermissionInput
    DescribeRoleCustomPermissionOutput: DescribeRoleCustomPermissionOutput
    DescribeSelfUpgradeConfigurationInput: DescribeSelfUpgradeConfigurationInput
    DescribeSelfUpgradeConfigurationOutput: DescribeSelfUpgradeConfigurationOutput
    DescribeTemplateInput: DescribeTemplateInput
    DescribeTemplateOutput: DescribeTemplateOutput
    DescribeTemplateAliasInput: DescribeTemplateAliasInput
    DescribeTemplateAliasOutput: DescribeTemplateAliasOutput
    DescribeTemplateDefinitionInput: DescribeTemplateDefinitionInput
    DescribeTemplateDefinitionOutput: DescribeTemplateDefinitionOutput
    DescribeTemplatePermissionsInput: DescribeTemplatePermissionsInput
    DescribeTemplatePermissionsOutput: DescribeTemplatePermissionsOutput
    DescribeThemeInput: DescribeThemeInput
    DescribeThemeOutput: DescribeThemeOutput
    DescribeThemeAliasInput: DescribeThemeAliasInput
    DescribeThemeAliasOutput: DescribeThemeAliasOutput
    DescribeThemePermissionsInput: DescribeThemePermissionsInput
    DescribeThemePermissionsOutput: DescribeThemePermissionsOutput
    DescribeTopicInput: DescribeTopicInput
    DescribeTopicOutput: DescribeTopicOutput
    DescribeTopicPermissionsInput: DescribeTopicPermissionsInput
    DescribeTopicPermissionsOutput: DescribeTopicPermissionsOutput
    DescribeTopicRefreshInput: DescribeTopicRefreshInput
    DescribeTopicRefreshOutput: DescribeTopicRefreshOutput
    DescribeTopicRefreshScheduleInput: DescribeTopicRefreshScheduleInput
    DescribeTopicRefreshScheduleOutput: DescribeTopicRefreshScheduleOutput
    DescribeUserInput: DescribeUserInput
    DescribeUserOutput: DescribeUserOutput
    DescribeVPCConnectionInput: DescribeVPCConnectionInput
    DescribeVPCConnectionOutput: DescribeVPCConnectionOutput
    GenerateEmbedUrlForAnonymousUserInput: GenerateEmbedUrlForAnonymousUserInput
    GenerateEmbedUrlForAnonymousUserOutput: GenerateEmbedUrlForAnonymousUserOutput
    GenerateEmbedUrlForRegisteredUserInput: GenerateEmbedUrlForRegisteredUserInput
    GenerateEmbedUrlForRegisteredUserOutput: GenerateEmbedUrlForRegisteredUserOutput
    GenerateEmbedUrlForRegisteredUserWithIdentityInput: GenerateEmbedUrlForRegisteredUserWithIdentityInput
    GenerateEmbedUrlForRegisteredUserWithIdentityOutput: GenerateEmbedUrlForRegisteredUserWithIdentityOutput
    GetDashboardEmbedUrlInput: GetDashboardEmbedUrlInput
    GetDashboardEmbedUrlOutput: GetDashboardEmbedUrlOutput
    GetFlowMetadataInput: GetFlowMetadataInput
    GetFlowMetadataOutput: GetFlowMetadataOutput
    GetFlowPermissionsInput: GetFlowPermissionsInput
    GetFlowPermissionsOutput: GetFlowPermissionsOutput
    GetIdentityContextInput: GetIdentityContextInput
    GetIdentityContextOutput: GetIdentityContextOutput
    GetSessionEmbedUrlInput: GetSessionEmbedUrlInput
    GetSessionEmbedUrlOutput: GetSessionEmbedUrlOutput
    ListActionConnectorsInput: ListActionConnectorsInput
    ListActionConnectorsOutput: ListActionConnectorsOutput
    ListAnalysesInput: ListAnalysesInput
    ListAnalysesOutput: ListAnalysesOutput
    ListAssetBundleExportJobsInput: ListAssetBundleExportJobsInput
    ListAssetBundleExportJobsOutput: ListAssetBundleExportJobsOutput
    ListAssetBundleImportJobsInput: ListAssetBundleImportJobsInput
    ListAssetBundleImportJobsOutput: ListAssetBundleImportJobsOutput
    ListBrandsInput: ListBrandsInput
    ListBrandsOutput: ListBrandsOutput
    ListCustomPermissionsInput: ListCustomPermissionsInput
    ListCustomPermissionsOutput: ListCustomPermissionsOutput
    ListDashboardsInput: ListDashboardsInput
    ListDashboardsOutput: ListDashboardsOutput
    ListDashboardVersionsInput: ListDashboardVersionsInput
    ListDashboardVersionsOutput: ListDashboardVersionsOutput
    ListDataSetsInput: ListDataSetsInput
    ListDataSetsOutput: ListDataSetsOutput
    ListDataSourcesInput: ListDataSourcesInput
    ListDataSourcesOutput: ListDataSourcesOutput
    ListFlowsInput: ListFlowsInput
    ListFlowsOutput: ListFlowsOutput
    ListFolderMembersInput: ListFolderMembersInput
    ListFolderMembersOutput: ListFolderMembersOutput
    ListFoldersInput: ListFoldersInput
    ListFoldersOutput: ListFoldersOutput
    ListFoldersForResourceInput: ListFoldersForResourceInput
    ListFoldersForResourceOutput: ListFoldersForResourceOutput
    ListGroupMembershipsInput: ListGroupMembershipsInput
    ListGroupMembershipsOutput: ListGroupMembershipsOutput
    ListGroupsInput: ListGroupsInput
    ListGroupsOutput: ListGroupsOutput
    ListIAMPolicyAssignmentsInput: ListIAMPolicyAssignmentsInput
    ListIAMPolicyAssignmentsOutput: ListIAMPolicyAssignmentsOutput
    ListIAMPolicyAssignmentsForUserInput: ListIAMPolicyAssignmentsForUserInput
    ListIAMPolicyAssignmentsForUserOutput: ListIAMPolicyAssignmentsForUserOutput
    ListIdentityPropagationConfigsInput: ListIdentityPropagationConfigsInput
    ListIdentityPropagationConfigsOutput: ListIdentityPropagationConfigsOutput
    ListIngestionsInput: ListIngestionsInput
    ListIngestionsOutput: ListIngestionsOutput
    ListNamespacesInput: ListNamespacesInput
    ListNamespacesOutput: ListNamespacesOutput
    ListRefreshSchedulesInput: ListRefreshSchedulesInput
    ListRefreshSchedulesOutput: ListRefreshSchedulesOutput
    ListRoleMembershipsInput: ListRoleMembershipsInput
    ListRoleMembershipsOutput: ListRoleMembershipsOutput
    ListSelfUpgradesInput: ListSelfUpgradesInput
    ListSelfUpgradesOutput: ListSelfUpgradesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTemplateAliasesInput: ListTemplateAliasesInput
    ListTemplateAliasesOutput: ListTemplateAliasesOutput
    ListTemplatesInput: ListTemplatesInput
    ListTemplatesOutput: ListTemplatesOutput
    ListTemplateVersionsInput: ListTemplateVersionsInput
    ListTemplateVersionsOutput: ListTemplateVersionsOutput
    ListThemeAliasesInput: ListThemeAliasesInput
    ListThemeAliasesOutput: ListThemeAliasesOutput
    ListThemesInput: ListThemesInput
    ListThemesOutput: ListThemesOutput
    ListThemeVersionsInput: ListThemeVersionsInput
    ListThemeVersionsOutput: ListThemeVersionsOutput
    ListTopicRefreshSchedulesInput: ListTopicRefreshSchedulesInput
    ListTopicRefreshSchedulesOutput: ListTopicRefreshSchedulesOutput
    ListTopicReviewedAnswersInput: ListTopicReviewedAnswersInput
    ListTopicReviewedAnswersOutput: ListTopicReviewedAnswersOutput
    ListTopicsInput: ListTopicsInput
    ListTopicsOutput: ListTopicsOutput
    ListUserGroupsInput: ListUserGroupsInput
    ListUserGroupsOutput: ListUserGroupsOutput
    ListUsersInput: ListUsersInput
    ListUsersOutput: ListUsersOutput
    ListVPCConnectionsInput: ListVPCConnectionsInput
    ListVPCConnectionsOutput: ListVPCConnectionsOutput
    PredictQAResultsInput: PredictQAResultsInput
    PredictQAResultsOutput: PredictQAResultsOutput
    PutDataSetRefreshPropertiesInput: PutDataSetRefreshPropertiesInput
    PutDataSetRefreshPropertiesOutput: PutDataSetRefreshPropertiesOutput
    RegisterUserInput: RegisterUserInput
    RegisterUserOutput: RegisterUserOutput
    RestoreAnalysisInput: RestoreAnalysisInput
    RestoreAnalysisOutput: RestoreAnalysisOutput
    SearchActionConnectorsInput: SearchActionConnectorsInput
    SearchActionConnectorsOutput: SearchActionConnectorsOutput
    SearchAnalysesInput: SearchAnalysesInput
    SearchAnalysesOutput: SearchAnalysesOutput
    SearchDashboardsInput: SearchDashboardsInput
    SearchDashboardsOutput: SearchDashboardsOutput
    SearchDataSetsInput: SearchDataSetsInput
    SearchDataSetsOutput: SearchDataSetsOutput
    SearchDataSourcesInput: SearchDataSourcesInput
    SearchDataSourcesOutput: SearchDataSourcesOutput
    SearchFlowsInput: SearchFlowsInput
    SearchFlowsOutput: SearchFlowsOutput
    SearchFoldersInput: SearchFoldersInput
    SearchFoldersOutput: SearchFoldersOutput
    SearchGroupsInput: SearchGroupsInput
    SearchGroupsOutput: SearchGroupsOutput
    SearchTopicsInput: SearchTopicsInput
    SearchTopicsOutput: SearchTopicsOutput
    StartAssetBundleExportJobInput: StartAssetBundleExportJobInput
    StartAssetBundleExportJobOutput: StartAssetBundleExportJobOutput
    StartAssetBundleImportJobInput: StartAssetBundleImportJobInput
    StartAssetBundleImportJobOutput: StartAssetBundleImportJobOutput
    StartAutomationJobInput: StartAutomationJobInput
    StartAutomationJobOutput: StartAutomationJobOutput
    StartDashboardSnapshotJobInput: StartDashboardSnapshotJobInput
    StartDashboardSnapshotJobOutput: StartDashboardSnapshotJobOutput
    StartDashboardSnapshotJobScheduleInput: StartDashboardSnapshotJobScheduleInput
    StartDashboardSnapshotJobScheduleOutput: StartDashboardSnapshotJobScheduleOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAccountCustomizationInput: UpdateAccountCustomizationInput
    UpdateAccountCustomizationOutput: UpdateAccountCustomizationOutput
    UpdateAccountCustomPermissionInput: UpdateAccountCustomPermissionInput
    UpdateAccountCustomPermissionOutput: UpdateAccountCustomPermissionOutput
    UpdateAccountSettingsInput: UpdateAccountSettingsInput
    UpdateAccountSettingsOutput: UpdateAccountSettingsOutput
    UpdateActionConnectorInput: UpdateActionConnectorInput
    UpdateActionConnectorOutput: UpdateActionConnectorOutput
    UpdateActionConnectorPermissionsInput: UpdateActionConnectorPermissionsInput
    UpdateActionConnectorPermissionsOutput: UpdateActionConnectorPermissionsOutput
    UpdateAnalysisInput: UpdateAnalysisInput
    UpdateAnalysisOutput: UpdateAnalysisOutput
    UpdateAnalysisPermissionsInput: UpdateAnalysisPermissionsInput
    UpdateAnalysisPermissionsOutput: UpdateAnalysisPermissionsOutput
    UpdateApplicationWithTokenExchangeGrantInput: UpdateApplicationWithTokenExchangeGrantInput
    UpdateApplicationWithTokenExchangeGrantOutput: UpdateApplicationWithTokenExchangeGrantOutput
    UpdateBrandInput: UpdateBrandInput
    UpdateBrandOutput: UpdateBrandOutput
    UpdateBrandAssignmentInput: UpdateBrandAssignmentInput
    UpdateBrandAssignmentOutput: UpdateBrandAssignmentOutput
    UpdateBrandPublishedVersionInput: UpdateBrandPublishedVersionInput
    UpdateBrandPublishedVersionOutput: UpdateBrandPublishedVersionOutput
    UpdateCustomPermissionsInput: UpdateCustomPermissionsInput
    UpdateCustomPermissionsOutput: UpdateCustomPermissionsOutput
    UpdateDashboardInput: UpdateDashboardInput
    UpdateDashboardOutput: UpdateDashboardOutput
    UpdateDashboardLinksInput: UpdateDashboardLinksInput
    UpdateDashboardLinksOutput: UpdateDashboardLinksOutput
    UpdateDashboardPermissionsInput: UpdateDashboardPermissionsInput
    UpdateDashboardPermissionsOutput: UpdateDashboardPermissionsOutput
    UpdateDashboardPublishedVersionInput: UpdateDashboardPublishedVersionInput
    UpdateDashboardPublishedVersionOutput: UpdateDashboardPublishedVersionOutput
    UpdateDashboardsQAConfigurationInput: UpdateDashboardsQAConfigurationInput
    UpdateDashboardsQAConfigurationOutput: UpdateDashboardsQAConfigurationOutput
    UpdateDataSetInput: UpdateDataSetInput
    UpdateDataSetOutput: UpdateDataSetOutput
    UpdateDataSetPermissionsInput: UpdateDataSetPermissionsInput
    UpdateDataSetPermissionsOutput: UpdateDataSetPermissionsOutput
    UpdateDataSourceInput: UpdateDataSourceInput
    UpdateDataSourceOutput: UpdateDataSourceOutput
    UpdateDataSourcePermissionsInput: UpdateDataSourcePermissionsInput
    UpdateDataSourcePermissionsOutput: UpdateDataSourcePermissionsOutput
    UpdateDefaultQBusinessApplicationInput: UpdateDefaultQBusinessApplicationInput
    UpdateDefaultQBusinessApplicationOutput: UpdateDefaultQBusinessApplicationOutput
    UpdateFlowPermissionsInput: UpdateFlowPermissionsInput
    UpdateFlowPermissionsOutput: UpdateFlowPermissionsOutput
    UpdateFolderInput: UpdateFolderInput
    UpdateFolderOutput: UpdateFolderOutput
    UpdateFolderPermissionsInput: UpdateFolderPermissionsInput
    UpdateFolderPermissionsOutput: UpdateFolderPermissionsOutput
    UpdateGroupInput: UpdateGroupInput
    UpdateGroupOutput: UpdateGroupOutput
    UpdateIAMPolicyAssignmentInput: UpdateIAMPolicyAssignmentInput
    UpdateIAMPolicyAssignmentOutput: UpdateIAMPolicyAssignmentOutput
    UpdateIdentityPropagationConfigInput: UpdateIdentityPropagationConfigInput
    UpdateIdentityPropagationConfigOutput: UpdateIdentityPropagationConfigOutput
    UpdateIpRestrictionInput: UpdateIpRestrictionInput
    UpdateIpRestrictionOutput: UpdateIpRestrictionOutput
    UpdateKeyRegistrationInput: UpdateKeyRegistrationInput
    UpdateKeyRegistrationOutput: UpdateKeyRegistrationOutput
    UpdatePublicSharingSettingsInput: UpdatePublicSharingSettingsInput
    UpdatePublicSharingSettingsOutput: UpdatePublicSharingSettingsOutput
    UpdateQPersonalizationConfigurationInput: UpdateQPersonalizationConfigurationInput
    UpdateQPersonalizationConfigurationOutput: UpdateQPersonalizationConfigurationOutput
    UpdateQuickSightQSearchConfigurationInput: UpdateQuickSightQSearchConfigurationInput
    UpdateQuickSightQSearchConfigurationOutput: UpdateQuickSightQSearchConfigurationOutput
    UpdateRefreshScheduleInput: UpdateRefreshScheduleInput
    UpdateRefreshScheduleOutput: UpdateRefreshScheduleOutput
    UpdateRoleCustomPermissionInput: UpdateRoleCustomPermissionInput
    UpdateRoleCustomPermissionOutput: UpdateRoleCustomPermissionOutput
    UpdateSelfUpgradeInput: UpdateSelfUpgradeInput
    UpdateSelfUpgradeOutput: UpdateSelfUpgradeOutput
    UpdateSelfUpgradeConfigurationInput: UpdateSelfUpgradeConfigurationInput
    UpdateSelfUpgradeConfigurationOutput: UpdateSelfUpgradeConfigurationOutput
    UpdateSPICECapacityConfigurationInput: UpdateSPICECapacityConfigurationInput
    UpdateSPICECapacityConfigurationOutput: UpdateSPICECapacityConfigurationOutput
    UpdateTemplateInput: UpdateTemplateInput
    UpdateTemplateOutput: UpdateTemplateOutput
    UpdateTemplateAliasInput: UpdateTemplateAliasInput
    UpdateTemplateAliasOutput: UpdateTemplateAliasOutput
    UpdateTemplatePermissionsInput: UpdateTemplatePermissionsInput
    UpdateTemplatePermissionsOutput: UpdateTemplatePermissionsOutput
    UpdateThemeInput: UpdateThemeInput
    UpdateThemeOutput: UpdateThemeOutput
    UpdateThemeAliasInput: UpdateThemeAliasInput
    UpdateThemeAliasOutput: UpdateThemeAliasOutput
    UpdateThemePermissionsInput: UpdateThemePermissionsInput
    UpdateThemePermissionsOutput: UpdateThemePermissionsOutput
    UpdateTopicInput: UpdateTopicInput
    UpdateTopicOutput: UpdateTopicOutput
    UpdateTopicPermissionsInput: UpdateTopicPermissionsInput
    UpdateTopicPermissionsOutput: UpdateTopicPermissionsOutput
    UpdateTopicRefreshScheduleInput: UpdateTopicRefreshScheduleInput
    UpdateTopicRefreshScheduleOutput: UpdateTopicRefreshScheduleOutput
    UpdateUserInput: UpdateUserInput
    UpdateUserOutput: UpdateUserOutput
    UpdateUserCustomPermissionInput: UpdateUserCustomPermissionInput
    UpdateUserCustomPermissionOutput: UpdateUserCustomPermissionOutput
    UpdateVPCConnectionInput: UpdateVPCConnectionInput
    UpdateVPCConnectionOutput: UpdateVPCConnectionOutput
end

return M
