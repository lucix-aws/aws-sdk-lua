local record ActivateEvaluationFormInput
    InstanceId: string
    EvaluationFormId: string
    EvaluationFormVersion: number
end

local record ActivateEvaluationFormOutput
    EvaluationFormId: string
    EvaluationFormArn: string
    EvaluationFormVersion: number
end

local record AssociateAnalyticsDataSetInput
    InstanceId: string
    DataSetId: string
    TargetAccountId: string
end

local record AssociateAnalyticsDataSetOutput
    DataSetId: string
    TargetAccountId: string
    ResourceShareId: string
    ResourceShareArn: string
end

local record AssociateApprovedOriginInput
    InstanceId: string
    Origin: string
    ClientToken: string
end

local record AssociateApprovedOriginOutput
end

local record AssociateBotInput
    InstanceId: string
    LexBot: LexBot
    LexV2Bot: LexV2Bot
    ClientToken: string
end

local record AssociateBotOutput
end

local record AssociateContactWithUserInput
    InstanceId: string
    ContactId: string
    UserId: string
end

local record AssociateContactWithUserOutput
end

local record AssociateDefaultVocabularyInput
    InstanceId: string
    LanguageCode: string
    VocabularyId: string
end

local record AssociateDefaultVocabularyOutput
end

local record AssociateEmailAddressAliasInput
    EmailAddressId: string
    InstanceId: string
    AliasConfiguration: AliasConfiguration
    ClientToken: string
end

local record AssociateEmailAddressAliasOutput
end

local record AssociateFlowInput
    InstanceId: string
    ResourceId: string
    FlowId: string
    ResourceType: string
end

local record AssociateFlowOutput
end

local record AssociateHoursOfOperationsInput
    InstanceId: string
    HoursOfOperationId: string
    ParentHoursOfOperationConfigs: {ParentHoursOfOperationConfig}
end

local record AssociateHoursOfOperationsOutput
end

local record AssociateInstanceStorageConfigInput
    InstanceId: string
    ResourceType: string
    StorageConfig: InstanceStorageConfig
    ClientToken: string
end

local record AssociateInstanceStorageConfigOutput
    AssociationId: string
end

local record AssociateLambdaFunctionInput
    InstanceId: string
    FunctionArn: string
    ClientToken: string
end

local record AssociateLambdaFunctionOutput
end

local record AssociateLexBotInput
    InstanceId: string
    LexBot: LexBot
    ClientToken: string
end

local record AssociateLexBotOutput
end

local record AssociatePhoneNumberContactFlowInput
    PhoneNumberId: string
    InstanceId: string
    ContactFlowId: string
end

local record AssociatePhoneNumberContactFlowOutput
end

local record AssociateQueueEmailAddressesInput
    InstanceId: string
    QueueId: string
    EmailAddressesConfig: {EmailAddressConfig}
    ClientToken: string
end

local record AssociateQueueEmailAddressesOutput
end

local record AssociateQueueQuickConnectsInput
    InstanceId: string
    QueueId: string
    QuickConnectIds: {string}
end

local record AssociateQueueQuickConnectsOutput
end

local record AssociateRoutingProfileQueuesInput
    InstanceId: string
    RoutingProfileId: string
    QueueConfigs: {RoutingProfileQueueConfig}
    ManualAssignmentQueueConfigs: {RoutingProfileManualAssignmentQueueConfig}
end

local record AssociateRoutingProfileQueuesOutput
end

local record AssociateSecurityKeyInput
    InstanceId: string
    Key: string
    ClientToken: string
end

local record AssociateSecurityKeyOutput
    AssociationId: string
end

local record AssociateSecurityProfilesInput
    InstanceId: string
    SecurityProfiles: {SecurityProfileItem}
    EntityType: string
    EntityArn: string
end

local record AssociateSecurityProfilesOutput
end

local record AssociateTrafficDistributionGroupUserInput
    TrafficDistributionGroupId: string
    UserId: string
    InstanceId: string
end

local record AssociateTrafficDistributionGroupUserOutput
end

local record AssociateUserProficienciesInput
    InstanceId: string
    UserId: string
    UserProficiencies: {UserProficiency}
end

local record AssociateUserProficienciesOutput
end

local record AssociateWorkspaceInput
    InstanceId: string
    WorkspaceId: string
    ResourceArns: {string}
end

local record AssociateWorkspaceOutput
    SuccessfulList: {SuccessfulBatchAssociationSummary}
    FailedList: {FailedBatchAssociationSummary}
end

local record BatchAssociateAnalyticsDataSetInput
    InstanceId: string
    DataSetIds: {string}
    TargetAccountId: string
end

local record BatchAssociateAnalyticsDataSetOutput
    Created: {AnalyticsDataAssociationResult}
    Errors: {ErrorResult}
end

local record BatchCreateDataTableValueInput
    InstanceId: string
    DataTableId: string
    Values: {DataTableValue}
end

local record BatchCreateDataTableValueOutput
    Successful: {BatchCreateDataTableValueSuccessResult}
    Failed: {BatchCreateDataTableValueFailureResult}
end

local record BatchDeleteDataTableValueInput
    InstanceId: string
    DataTableId: string
    Values: {DataTableDeleteValueIdentifier}
end

local record BatchDeleteDataTableValueOutput
    Successful: {BatchDeleteDataTableValueSuccessResult}
    Failed: {BatchDeleteDataTableValueFailureResult}
end

local record BatchDescribeDataTableValueInput
    InstanceId: string
    DataTableId: string
    Values: {DataTableValueIdentifier}
end

local record BatchDescribeDataTableValueOutput
    Successful: {BatchDescribeDataTableValueSuccessResult}
    Failed: {BatchDescribeDataTableValueFailureResult}
end

local record BatchDisassociateAnalyticsDataSetInput
    InstanceId: string
    DataSetIds: {string}
    TargetAccountId: string
end

local record BatchDisassociateAnalyticsDataSetOutput
    Deleted: {string}
    Errors: {ErrorResult}
end

local record BatchGetAttachedFileMetadataInput
    FileIds: {string}
    InstanceId: string
    AssociatedResourceArn: string
end

local record BatchGetAttachedFileMetadataOutput
    Files: {AttachedFile}
    Errors: {AttachedFileError}
end

local record BatchGetFlowAssociationInput
    InstanceId: string
    ResourceIds: {string}
    ResourceType: string
end

local record BatchGetFlowAssociationOutput
    FlowAssociationSummaryList: {FlowAssociationSummary}
end

local record BatchPutContactInput
    ClientToken: string
    InstanceId: string
    ContactDataRequestList: {ContactDataRequest}
end

local record BatchPutContactOutput
    SuccessfulRequestList: {SuccessfulRequest}
    FailedRequestList: {FailedRequest}
end

local record BatchUpdateDataTableValueInput
    InstanceId: string
    DataTableId: string
    Values: {DataTableValue}
end

local record BatchUpdateDataTableValueOutput
    Successful: {BatchUpdateDataTableValueSuccessResult}
    Failed: {BatchUpdateDataTableValueFailureResult}
end

local record ClaimPhoneNumberInput
    TargetArn: string
    InstanceId: string
    PhoneNumber: string
    PhoneNumberDescription: string
    Tags: {string : string}
    ClientToken: string
end

local record ClaimPhoneNumberOutput
    PhoneNumberId: string
    PhoneNumberArn: string
end

local record CompleteAttachedFileUploadInput
    InstanceId: string
    FileId: string
    AssociatedResourceArn: string
end

local record CompleteAttachedFileUploadOutput
end

local record CreateAgentStatusInput
    InstanceId: string
    Name: string
    Description: string
    State: string
    DisplayOrder: number
    Tags: {string : string}
end

local record CreateAgentStatusOutput
    AgentStatusARN: string
    AgentStatusId: string
end

local record CreateContactInput
    InstanceId: string
    ClientToken: string
    RelatedContactId: string
    Attributes: {string : string}
    References: {string : Reference}
    Channel: string
    InitiationMethod: string
    ExpiryDurationInMinutes: number
    UserInfo: UserInfo
    InitiateAs: string
    Name: string
    Description: string
    SegmentAttributes: {string : SegmentAttributeValue}
    PreviousContactId: string
end

local record CreateContactOutput
    ContactId: string
    ContactArn: string
end

local record CreateContactFlowInput
    InstanceId: string
    Name: string
    Type: string
    Description: string
    Content: string
    Status: string
    Tags: {string : string}
end

local record CreateContactFlowOutput
    ContactFlowId: string
    ContactFlowArn: string
    FlowContentSha256: string
end

local record CreateContactFlowModuleInput
    InstanceId: string
    Name: string
    Description: string
    Content: string
    Tags: {string : string}
    ClientToken: string
    Settings: string
    ExternalInvocationConfiguration: ExternalInvocationConfiguration
end

local record CreateContactFlowModuleOutput
    Id: string
    Arn: string
end

local record CreateContactFlowModuleAliasInput
    InstanceId: string
    Description: string
    ContactFlowModuleId: string
    ContactFlowModuleVersion: number
    AliasName: string
end

local record CreateContactFlowModuleAliasOutput
    ContactFlowModuleArn: string
    Id: string
end

local record CreateContactFlowModuleVersionInput
    InstanceId: string
    Description: string
    ContactFlowModuleId: string
    FlowModuleContentSha256: string
end

local record CreateContactFlowModuleVersionOutput
    ContactFlowModuleArn: string
    Version: number
end

local record CreateContactFlowVersionInput
    InstanceId: string
    Description: string
    ContactFlowId: string
    FlowContentSha256: string
    ContactFlowVersion: number
    LastModifiedTime: number
    LastModifiedRegion: string
end

local record CreateContactFlowVersionOutput
    ContactFlowArn: string
    Version: number
end

local record CreateDataTableInput
    InstanceId: string
    Name: string
    Description: string
    TimeZone: string
    ValueLockLevel: string
    Status: string
    Tags: {string : string}
end

local record CreateDataTableOutput
    Id: string
    Arn: string
    LockVersion: DataTableLockVersion
end

local record CreateDataTableAttributeInput
    InstanceId: string
    DataTableId: string
    Name: string
    ValueType: string
    Description: string
    Primary: boolean
    Validation: Validation
end

local record CreateDataTableAttributeOutput
    Name: string
    AttributeId: string
    LockVersion: DataTableLockVersion
end

local record CreateEmailAddressInput
    Description: string
    InstanceId: string
    EmailAddress: string
    DisplayName: string
    Tags: {string : string}
    ClientToken: string
end

local record CreateEmailAddressOutput
    EmailAddressId: string
    EmailAddressArn: string
end

local record CreateEvaluationFormInput
    InstanceId: string
    Title: string
    Description: string
    Items: {EvaluationFormItem}
    ScoringStrategy: EvaluationFormScoringStrategy
    AutoEvaluationConfiguration: EvaluationFormAutoEvaluationConfiguration
    ClientToken: string
    AsDraft: boolean
    Tags: {string : string}
    ReviewConfiguration: EvaluationReviewConfiguration
    TargetConfiguration: EvaluationFormTargetConfiguration
    LanguageConfiguration: EvaluationFormLanguageConfiguration
end

local record CreateEvaluationFormOutput
    EvaluationFormId: string
    EvaluationFormArn: string
end

local record CreateHoursOfOperationInput
    InstanceId: string
    Name: string
    Description: string
    TimeZone: string
    Config: {HoursOfOperationConfig}
    ParentHoursOfOperationConfigs: {ParentHoursOfOperationConfig}
    Tags: {string : string}
end

local record CreateHoursOfOperationOutput
    HoursOfOperationId: string
    HoursOfOperationArn: string
end

local record CreateHoursOfOperationOverrideInput
    InstanceId: string
    HoursOfOperationId: string
    Name: string
    Description: string
    Config: {HoursOfOperationOverrideConfig}
    EffectiveFrom: string
    EffectiveTill: string
    RecurrenceConfig: RecurrenceConfig
    OverrideType: string
end

local record CreateHoursOfOperationOverrideOutput
    HoursOfOperationOverrideId: string
end

local record CreateInstanceInput
    ClientToken: string
    IdentityManagementType: string
    InstanceAlias: string
    DirectoryId: string
    InboundCallsEnabled: boolean
    OutboundCallsEnabled: boolean
    Tags: {string : string}
end

local record CreateInstanceOutput
    Id: string
    Arn: string
end

local record CreateIntegrationAssociationInput
    InstanceId: string
    IntegrationType: string
    IntegrationArn: string
    SourceApplicationUrl: string
    SourceApplicationName: string
    SourceType: string
    Tags: {string : string}
end

local record CreateIntegrationAssociationOutput
    IntegrationAssociationId: string
    IntegrationAssociationArn: string
end

local record CreateNotificationInput
    InstanceId: string
    ExpiresAt: number
    Recipients: {string}
    Priority: string
    Content: {string : string}
    Tags: {string : string}
    PredefinedNotificationId: string
    ClientToken: string
end

local record CreateNotificationOutput
    NotificationId: string
    NotificationArn: string
end

local record CreateParticipantInput
    InstanceId: string
    ContactId: string
    ClientToken: string
    ParticipantDetails: ParticipantDetailsToAdd
end

local record CreateParticipantOutput
    ParticipantCredentials: ParticipantTokenCredentials
    ParticipantId: string
end

local record CreatePersistentContactAssociationInput
    InstanceId: string
    InitialContactId: string
    RehydrationType: string
    SourceContactId: string
    ClientToken: string
end

local record CreatePersistentContactAssociationOutput
    ContinuedFromContactId: string
end

local record CreatePredefinedAttributeInput
    InstanceId: string
    Name: string
    Values: PredefinedAttributeValues
    Purposes: {string}
    AttributeConfiguration: InputPredefinedAttributeConfiguration
end

local record CreatePredefinedAttributeOutput
end

local record CreatePromptInput
    InstanceId: string
    Name: string
    Description: string
    S3Uri: string
    Tags: {string : string}
end

local record CreatePromptOutput
    PromptARN: string
    PromptId: string
end

local record CreatePushNotificationRegistrationInput
    InstanceId: string
    ClientToken: string
    PinpointAppArn: string
    DeviceToken: string
    DeviceType: string
    ContactConfiguration: ContactConfiguration
end

local record CreatePushNotificationRegistrationOutput
    RegistrationId: string
end

local record CreateQueueInput
    InstanceId: string
    Name: string
    Description: string
    OutboundCallerConfig: OutboundCallerConfig
    OutboundEmailConfig: OutboundEmailConfig
    HoursOfOperationId: string
    MaxContacts: number
    QuickConnectIds: {string}
    EmailAddressesConfig: {EmailAddressConfig}
    Tags: {string : string}
end

local record CreateQueueOutput
    QueueArn: string
    QueueId: string
end

local record CreateQuickConnectInput
    InstanceId: string
    Name: string
    Description: string
    QuickConnectConfig: QuickConnectConfig
    Tags: {string : string}
end

local record CreateQuickConnectOutput
    QuickConnectARN: string
    QuickConnectId: string
end

local record CreateRoutingProfileInput
    InstanceId: string
    Name: string
    Description: string
    DefaultOutboundQueueId: string
    QueueConfigs: {RoutingProfileQueueConfig}
    ManualAssignmentQueueConfigs: {RoutingProfileManualAssignmentQueueConfig}
    MediaConcurrencies: {MediaConcurrency}
    Tags: {string : string}
    AgentAvailabilityTimer: string
end

local record CreateRoutingProfileOutput
    RoutingProfileArn: string
    RoutingProfileId: string
end

local record CreateRuleInput
    InstanceId: string
    Name: string
    TriggerEventSource: RuleTriggerEventSource
    Function: string
    Actions: {RuleAction}
    PublishStatus: string
    ClientToken: string
end

local record CreateRuleOutput
    RuleArn: string
    RuleId: string
end

local record CreateSecurityProfileInput
    SecurityProfileName: string
    Description: string
    Permissions: {string}
    InstanceId: string
    Tags: {string : string}
    AllowedAccessControlTags: {string : string}
    TagRestrictedResources: {string}
    Applications: {Application}
    HierarchyRestrictedResources: {string}
    AllowedAccessControlHierarchyGroupId: string
    AllowedFlowModules: {FlowModule}
    GranularAccessControlConfiguration: GranularAccessControlConfiguration
end

local record CreateSecurityProfileOutput
    SecurityProfileId: string
    SecurityProfileArn: string
end

local record CreateTaskTemplateInput
    InstanceId: string
    Name: string
    Description: string
    ContactFlowId: string
    SelfAssignFlowId: string
    Constraints: TaskTemplateConstraints
    Defaults: TaskTemplateDefaults
    Status: string
    Fields: {TaskTemplateField}
    ClientToken: string
end

local record CreateTaskTemplateOutput
    Id: string
    Arn: string
end

local record CreateTestCaseInput
    InstanceId: string
    Name: string
    Description: string
    Content: string
    EntryPoint: TestCaseEntryPoint
    InitializationData: string
    Status: string
    TestCaseId: string
    Tags: {string : string}
    LastModifiedTime: number
    LastModifiedRegion: string
end

local record CreateTestCaseOutput
    TestCaseId: string
    TestCaseArn: string
end

local record CreateTrafficDistributionGroupInput
    Name: string
    Description: string
    InstanceId: string
    ClientToken: string
    Tags: {string : string}
end

local record CreateTrafficDistributionGroupOutput
    Id: string
    Arn: string
end

local record CreateUseCaseInput
    InstanceId: string
    IntegrationAssociationId: string
    UseCaseType: string
    Tags: {string : string}
end

local record CreateUseCaseOutput
    UseCaseId: string
    UseCaseArn: string
end

local record CreateUserInput
    Username: string
    Password: string
    IdentityInfo: UserIdentityInfo
    PhoneConfig: UserPhoneConfig
    DirectoryUserId: string
    SecurityProfileIds: {string}
    RoutingProfileId: string
    HierarchyGroupId: string
    InstanceId: string
    AutoAcceptConfigs: {AutoAcceptConfig}
    AfterContactWorkConfigs: {AfterContactWorkConfigPerChannel}
    PhoneNumberConfigs: {PhoneNumberConfig}
    PersistentConnectionConfigs: {PersistentConnectionConfig}
    VoiceEnhancementConfigs: {VoiceEnhancementConfig}
    Tags: {string : string}
end

local record CreateUserOutput
    UserId: string
    UserArn: string
end

local record CreateUserHierarchyGroupInput
    Name: string
    ParentGroupId: string
    InstanceId: string
    Tags: {string : string}
end

local record CreateUserHierarchyGroupOutput
    HierarchyGroupId: string
    HierarchyGroupArn: string
end

local record CreateViewInput
    InstanceId: string
    ClientToken: string
    Status: string
    Content: ViewInputContent
    Description: string
    Name: string
    Tags: {string : string}
end

local record CreateViewOutput
    View: View
end

local record CreateViewVersionInput
    InstanceId: string
    ViewId: string
    VersionDescription: string
    ViewContentSha256: string
end

local record CreateViewVersionOutput
    View: View
end

local record CreateVocabularyInput
    ClientToken: string
    InstanceId: string
    VocabularyName: string
    LanguageCode: string
    Content: string
    Tags: {string : string}
end

local record CreateVocabularyOutput
    VocabularyArn: string
    VocabularyId: string
    State: string
end

local record CreateWorkspaceInput
    InstanceId: string
    Name: string
    Description: string
    Theme: WorkspaceTheme
    Title: string
    Tags: {string : string}
end

local record CreateWorkspaceOutput
    WorkspaceId: string
    WorkspaceArn: string
end

local record CreateWorkspacePageInput
    InstanceId: string
    WorkspaceId: string
    ResourceArn: string
    Page: string
    Slug: string
    InputData: string
end

local record CreateWorkspacePageOutput
end

local record DeactivateEvaluationFormInput
    InstanceId: string
    EvaluationFormId: string
    EvaluationFormVersion: number
end

local record DeactivateEvaluationFormOutput
    EvaluationFormId: string
    EvaluationFormArn: string
    EvaluationFormVersion: number
end

local record DeleteAttachedFileInput
    InstanceId: string
    FileId: string
    AssociatedResourceArn: string
end

local record DeleteAttachedFileOutput
end

local record DeleteContactEvaluationInput
    InstanceId: string
    EvaluationId: string
end

local record DeleteContactEvaluationOutput
end

local record DeleteContactFlowInput
    InstanceId: string
    ContactFlowId: string
end

local record DeleteContactFlowOutput
end

local record DeleteContactFlowModuleInput
    InstanceId: string
    ContactFlowModuleId: string
end

local record DeleteContactFlowModuleOutput
end

local record DeleteContactFlowModuleAliasInput
    InstanceId: string
    ContactFlowModuleId: string
    AliasId: string
end

local record DeleteContactFlowModuleAliasOutput
end

local record DeleteContactFlowModuleVersionInput
    InstanceId: string
    ContactFlowModuleId: string
    ContactFlowModuleVersion: number
end

local record DeleteContactFlowModuleVersionOutput
end

local record DeleteContactFlowVersionInput
    InstanceId: string
    ContactFlowId: string
    ContactFlowVersion: number
end

local record DeleteContactFlowVersionOutput
end

local record DeleteDataTableInput
    InstanceId: string
    DataTableId: string
end

local record DeleteDataTableOutput
end

local record DeleteDataTableAttributeInput
    InstanceId: string
    DataTableId: string
    AttributeName: string
end

local record DeleteDataTableAttributeOutput
    LockVersion: DataTableLockVersion
end

local record DeleteEmailAddressInput
    InstanceId: string
    EmailAddressId: string
end

local record DeleteEmailAddressOutput
end

local record DeleteEvaluationFormInput
    InstanceId: string
    EvaluationFormId: string
    EvaluationFormVersion: number
end

local record DeleteEvaluationFormOutput
end

local record DeleteHoursOfOperationInput
    InstanceId: string
    HoursOfOperationId: string
end

local record DeleteHoursOfOperationOutput
end

local record DeleteHoursOfOperationOverrideInput
    InstanceId: string
    HoursOfOperationId: string
    HoursOfOperationOverrideId: string
end

local record DeleteHoursOfOperationOverrideOutput
end

local record DeleteInstanceInput
    InstanceId: string
    ClientToken: string
end

local record DeleteInstanceOutput
end

local record DeleteIntegrationAssociationInput
    InstanceId: string
    IntegrationAssociationId: string
end

local record DeleteIntegrationAssociationOutput
end

local record DeleteNotificationInput
    InstanceId: string
    NotificationId: string
end

local record DeleteNotificationOutput
end

local record DeletePredefinedAttributeInput
    InstanceId: string
    Name: string
end

local record DeletePredefinedAttributeOutput
end

local record DeletePromptInput
    InstanceId: string
    PromptId: string
end

local record DeletePromptOutput
end

local record DeletePushNotificationRegistrationInput
    InstanceId: string
    RegistrationId: string
    ContactId: string
end

local record DeletePushNotificationRegistrationOutput
end

local record DeleteQueueInput
    InstanceId: string
    QueueId: string
end

local record DeleteQueueOutput
end

local record DeleteQuickConnectInput
    InstanceId: string
    QuickConnectId: string
end

local record DeleteQuickConnectOutput
end

local record DeleteRoutingProfileInput
    InstanceId: string
    RoutingProfileId: string
end

local record DeleteRoutingProfileOutput
end

local record DeleteRuleInput
    InstanceId: string
    RuleId: string
end

local record DeleteRuleOutput
end

local record DeleteSecurityProfileInput
    InstanceId: string
    SecurityProfileId: string
end

local record DeleteSecurityProfileOutput
end

local record DeleteTaskTemplateInput
    InstanceId: string
    TaskTemplateId: string
end

local record DeleteTaskTemplateOutput
end

local record DeleteTestCaseInput
    InstanceId: string
    TestCaseId: string
end

local record DeleteTestCaseOutput
end

local record DeleteTrafficDistributionGroupInput
    TrafficDistributionGroupId: string
end

local record DeleteTrafficDistributionGroupOutput
end

local record DeleteUseCaseInput
    InstanceId: string
    IntegrationAssociationId: string
    UseCaseId: string
end

local record DeleteUseCaseOutput
end

local record DeleteUserInput
    InstanceId: string
    UserId: string
end

local record DeleteUserOutput
end

local record DeleteUserHierarchyGroupInput
    HierarchyGroupId: string
    InstanceId: string
end

local record DeleteUserHierarchyGroupOutput
end

local record DeleteViewInput
    InstanceId: string
    ViewId: string
end

local record DeleteViewOutput
end

local record DeleteViewVersionInput
    InstanceId: string
    ViewId: string
    ViewVersion: number
end

local record DeleteViewVersionOutput
end

local record DeleteVocabularyInput
    InstanceId: string
    VocabularyId: string
end

local record DeleteVocabularyOutput
    VocabularyArn: string
    VocabularyId: string
    State: string
end

local record DeleteWorkspaceInput
    InstanceId: string
    WorkspaceId: string
end

local record DeleteWorkspaceOutput
end

local record DeleteWorkspaceMediaInput
    InstanceId: string
    WorkspaceId: string
    MediaType: string
end

local record DeleteWorkspaceMediaOutput
end

local record DeleteWorkspacePageInput
    InstanceId: string
    WorkspaceId: string
    Page: string
end

local record DeleteWorkspacePageOutput
end

local record DescribeAgentStatusInput
    InstanceId: string
    AgentStatusId: string
end

local record DescribeAgentStatusOutput
    AgentStatus: AgentStatus
end

local record DescribeAttachedFilesConfigurationInput
    InstanceId: string
    AttachmentScope: string
end

local record DescribeAttachedFilesConfigurationOutput
    AttachedFilesConfiguration: AttachedFilesConfiguration
end

local record DescribeAuthenticationProfileInput
    AuthenticationProfileId: string
    InstanceId: string
end

local record DescribeAuthenticationProfileOutput
    AuthenticationProfile: AuthenticationProfile
end

local record DescribeContactInput
    InstanceId: string
    ContactId: string
end

local record DescribeContactOutput
    Contact: Contact
end

local record DescribeContactEvaluationInput
    InstanceId: string
    EvaluationId: string
end

local record DescribeContactEvaluationOutput
    Evaluation: Evaluation
    EvaluationForm: EvaluationFormContent
end

local record DescribeContactFlowInput
    InstanceId: string
    ContactFlowId: string
end

local record DescribeContactFlowOutput
    ContactFlow: ContactFlow
end

local record DescribeContactFlowModuleInput
    InstanceId: string
    ContactFlowModuleId: string
end

local record DescribeContactFlowModuleOutput
    ContactFlowModule: ContactFlowModule
end

local record DescribeContactFlowModuleAliasInput
    InstanceId: string
    ContactFlowModuleId: string
    AliasId: string
end

local record DescribeContactFlowModuleAliasOutput
    ContactFlowModuleAlias: ContactFlowModuleAliasInfo
end

local record DescribeDataTableInput
    InstanceId: string
    DataTableId: string
end

local record DescribeDataTableOutput
    DataTable: DataTable
end

local record DescribeDataTableAttributeInput
    InstanceId: string
    DataTableId: string
    AttributeName: string
end

local record DescribeDataTableAttributeOutput
    Attribute: DataTableAttribute
end

local record DescribeEmailAddressInput
    InstanceId: string
    EmailAddressId: string
end

local record DescribeEmailAddressOutput
    EmailAddressId: string
    EmailAddressArn: string
    EmailAddress: string
    DisplayName: string
    Description: string
    CreateTimestamp: string
    ModifiedTimestamp: string
    AliasConfigurations: {AliasConfiguration}
    Tags: {string : string}
end

local record DescribeEvaluationFormInput
    InstanceId: string
    EvaluationFormId: string
    EvaluationFormVersion: number
end

local record DescribeEvaluationFormOutput
    EvaluationForm: EvaluationForm
end

local record DescribeHoursOfOperationInput
    InstanceId: string
    HoursOfOperationId: string
end

local record DescribeHoursOfOperationOutput
    HoursOfOperation: HoursOfOperation
end

local record DescribeHoursOfOperationOverrideInput
    InstanceId: string
    HoursOfOperationId: string
    HoursOfOperationOverrideId: string
end

local record DescribeHoursOfOperationOverrideOutput
    HoursOfOperationOverride: HoursOfOperationOverride
end

local record DescribeInstanceInput
    InstanceId: string
end

local record DescribeInstanceOutput
    Instance: Instance
    ReplicationConfiguration: ReplicationConfiguration
end

local record DescribeInstanceAttributeInput
    InstanceId: string
    AttributeType: string
end

local record DescribeInstanceAttributeOutput
    Attribute: Attribute
end

local record DescribeInstanceStorageConfigInput
    InstanceId: string
    AssociationId: string
    ResourceType: string
end

local record DescribeInstanceStorageConfigOutput
    StorageConfig: InstanceStorageConfig
end

local record DescribeNotificationInput
    InstanceId: string
    NotificationId: string
end

local record DescribeNotificationOutput
    Notification: Notification
end

local record DescribePhoneNumberInput
    PhoneNumberId: string
end

local record DescribePhoneNumberOutput
    ClaimedPhoneNumberSummary: ClaimedPhoneNumberSummary
end

local record DescribePredefinedAttributeInput
    InstanceId: string
    Name: string
end

local record DescribePredefinedAttributeOutput
    PredefinedAttribute: PredefinedAttribute
end

local record DescribePromptInput
    InstanceId: string
    PromptId: string
end

local record DescribePromptOutput
    Prompt: Prompt
end

local record DescribeQueueInput
    InstanceId: string
    QueueId: string
end

local record DescribeQueueOutput
    Queue: Queue
end

local record DescribeQuickConnectInput
    InstanceId: string
    QuickConnectId: string
end

local record DescribeQuickConnectOutput
    QuickConnect: QuickConnect
end

local record DescribeRoutingProfileInput
    InstanceId: string
    RoutingProfileId: string
end

local record DescribeRoutingProfileOutput
    RoutingProfile: RoutingProfile
end

local record DescribeRuleInput
    InstanceId: string
    RuleId: string
end

local record DescribeRuleOutput
    Rule: Rule
end

local record DescribeSecurityProfileInput
    SecurityProfileId: string
    InstanceId: string
end

local record DescribeSecurityProfileOutput
    SecurityProfile: SecurityProfile
end

local record DescribeTestCaseInput
    InstanceId: string
    TestCaseId: string
    Status: string
end

local record DescribeTestCaseOutput
    TestCase: TestCase
end

local record DescribeTrafficDistributionGroupInput
    TrafficDistributionGroupId: string
end

local record DescribeTrafficDistributionGroupOutput
    TrafficDistributionGroup: TrafficDistributionGroup
end

local record DescribeUserInput
    UserId: string
    InstanceId: string
end

local record DescribeUserOutput
    User: User
end

local record DescribeUserHierarchyGroupInput
    HierarchyGroupId: string
    InstanceId: string
end

local record DescribeUserHierarchyGroupOutput
    HierarchyGroup: HierarchyGroup
end

local record DescribeUserHierarchyStructureInput
    InstanceId: string
end

local record DescribeUserHierarchyStructureOutput
    HierarchyStructure: HierarchyStructure
end

local record DescribeViewInput
    InstanceId: string
    ViewId: string
end

local record DescribeViewOutput
    View: View
end

local record DescribeVocabularyInput
    InstanceId: string
    VocabularyId: string
end

local record DescribeVocabularyOutput
    Vocabulary: Vocabulary
end

local record DescribeWorkspaceInput
    InstanceId: string
    WorkspaceId: string
end

local record DescribeWorkspaceOutput
    Workspace: Workspace
end

local record DisassociateAnalyticsDataSetInput
    InstanceId: string
    DataSetId: string
    TargetAccountId: string
end

local record DisassociateAnalyticsDataSetOutput
end

local record DisassociateApprovedOriginInput
    InstanceId: string
    Origin: string
    ClientToken: string
end

local record DisassociateApprovedOriginOutput
end

local record DisassociateBotInput
    InstanceId: string
    LexBot: LexBot
    LexV2Bot: LexV2Bot
    ClientToken: string
end

local record DisassociateBotOutput
end

local record DisassociateEmailAddressAliasInput
    EmailAddressId: string
    InstanceId: string
    AliasConfiguration: AliasConfiguration
    ClientToken: string
end

local record DisassociateEmailAddressAliasOutput
end

local record DisassociateFlowInput
    InstanceId: string
    ResourceId: string
    ResourceType: string
end

local record DisassociateFlowOutput
end

local record DisassociateHoursOfOperationsInput
    InstanceId: string
    HoursOfOperationId: string
    ParentHoursOfOperationIds: {string}
end

local record DisassociateHoursOfOperationsOutput
end

local record DisassociateInstanceStorageConfigInput
    InstanceId: string
    AssociationId: string
    ResourceType: string
    ClientToken: string
end

local record DisassociateInstanceStorageConfigOutput
end

local record DisassociateLambdaFunctionInput
    InstanceId: string
    FunctionArn: string
    ClientToken: string
end

local record DisassociateLambdaFunctionOutput
end

local record DisassociateLexBotInput
    InstanceId: string
    BotName: string
    LexRegion: string
    ClientToken: string
end

local record DisassociateLexBotOutput
end

local record DisassociatePhoneNumberContactFlowInput
    PhoneNumberId: string
    InstanceId: string
end

local record DisassociatePhoneNumberContactFlowOutput
end

local record DisassociateQueueEmailAddressesInput
    InstanceId: string
    QueueId: string
    EmailAddressesId: {string}
    ClientToken: string
end

local record DisassociateQueueEmailAddressesOutput
end

local record DisassociateQueueQuickConnectsInput
    InstanceId: string
    QueueId: string
    QuickConnectIds: {string}
end

local record DisassociateQueueQuickConnectsOutput
end

local record DisassociateRoutingProfileQueuesInput
    InstanceId: string
    RoutingProfileId: string
    QueueReferences: {RoutingProfileQueueReference}
    ManualAssignmentQueueReferences: {RoutingProfileQueueReference}
end

local record DisassociateRoutingProfileQueuesOutput
end

local record DisassociateSecurityKeyInput
    InstanceId: string
    AssociationId: string
    ClientToken: string
end

local record DisassociateSecurityKeyOutput
end

local record DisassociateSecurityProfilesInput
    InstanceId: string
    SecurityProfiles: {SecurityProfileItem}
    EntityType: string
    EntityArn: string
end

local record DisassociateSecurityProfilesOutput
end

local record DisassociateTrafficDistributionGroupUserInput
    TrafficDistributionGroupId: string
    UserId: string
    InstanceId: string
end

local record DisassociateTrafficDistributionGroupUserOutput
end

local record DisassociateUserProficienciesInput
    InstanceId: string
    UserId: string
    UserProficiencies: {UserProficiencyDisassociate}
end

local record DisassociateUserProficienciesOutput
end

local record DisassociateWorkspaceInput
    InstanceId: string
    WorkspaceId: string
    ResourceArns: {string}
end

local record DisassociateWorkspaceOutput
    SuccessfulList: {SuccessfulBatchAssociationSummary}
    FailedList: {FailedBatchAssociationSummary}
end

local record DismissUserContactInput
    UserId: string
    InstanceId: string
    ContactId: string
end

local record DismissUserContactOutput
end

local record EvaluateDataTableValuesInput
    InstanceId: string
    DataTableId: string
    Values: {DataTableValueEvaluationSet}
    TimeZone: string
    NextToken: string
    MaxResults: number
end

local record EvaluateDataTableValuesOutput
    Values: {DataTableEvaluatedValue}
    NextToken: string
end

local record GetAttachedFileInput
    InstanceId: string
    FileId: string
    UrlExpiryInSeconds: number
    AssociatedResourceArn: string
end

local record GetAttachedFileOutput
    FileArn: string
    FileId: string
    CreationTime: string
    FileStatus: string
    FileName: string
    FileSizeInBytes: number
    AssociatedResourceArn: string
    FileUseCaseType: string
    CreatedBy: CreatedByInfo
    DownloadUrlMetadata: DownloadUrlMetadata
    Tags: {string : string}
end

local record GetContactAttributesInput
    InstanceId: string
    InitialContactId: string
end

local record GetContactAttributesOutput
    Attributes: {string : string}
end

local record GetContactMetricsInput
    InstanceId: string
    ContactId: string
    Metrics: {ContactMetricInfo}
end

local record GetContactMetricsOutput
    MetricResults: {ContactMetricResult}
    Id: string
    Arn: string
end

local record GetCurrentMetricDataInput
    InstanceId: string
    Filters: Filters
    Groupings: {string}
    CurrentMetrics: {CurrentMetric}
    NextToken: string
    MaxResults: number
    SortCriteria: {CurrentMetricSortCriteria}
end

local record GetCurrentMetricDataOutput
    NextToken: string
    MetricResults: {CurrentMetricResult}
    DataSnapshotTime: number
    ApproximateTotalCount: number
end

local record GetCurrentUserDataInput
    InstanceId: string
    Filters: UserDataFilters
    NextToken: string
    MaxResults: number
end

local record GetCurrentUserDataOutput
    NextToken: string
    UserDataList: {UserData}
    ApproximateTotalCount: number
end

local record GetEffectiveHoursOfOperationsInput
    InstanceId: string
    HoursOfOperationId: string
    FromDate: string
    ToDate: string
end

local record GetEffectiveHoursOfOperationsOutput
    EffectiveHoursOfOperationList: {EffectiveHoursOfOperations}
    EffectiveOverrideHoursList: {EffectiveOverrideHours}
    TimeZone: string
end

local record GetFederationTokenInput
    InstanceId: string
end

local record GetFederationTokenOutput
    Credentials: Credentials
    SignInUrl: string
    UserArn: string
    UserId: string
end

local record GetFlowAssociationInput
    InstanceId: string
    ResourceId: string
    ResourceType: string
end

local record GetFlowAssociationOutput
    ResourceId: string
    FlowId: string
    ResourceType: string
end

local record GetMetricDataInput
    InstanceId: string
    StartTime: number
    EndTime: number
    Filters: Filters
    Groupings: {string}
    HistoricalMetrics: {HistoricalMetric}
    NextToken: string
    MaxResults: number
end

local record GetMetricDataOutput
    NextToken: string
    MetricResults: {HistoricalMetricResult}
end

local record GetMetricDataV2Input
    ResourceArn: string
    StartTime: number
    EndTime: number
    Interval: IntervalDetails
    Filters: {FilterV2}
    Groupings: {string}
    Metrics: {MetricV2}
    NextToken: string
    MaxResults: number
end

local record GetMetricDataV2Output
    NextToken: string
    MetricResults: {MetricResultV2}
end

local record GetPromptFileInput
    InstanceId: string
    PromptId: string
end

local record GetPromptFileOutput
    PromptPresignedUrl: string
    LastModifiedTime: number
    LastModifiedRegion: string
end

local record GetTaskTemplateInput
    InstanceId: string
    TaskTemplateId: string
    SnapshotVersion: string
end

local record GetTaskTemplateOutput
    InstanceId: string
    Id: string
    Arn: string
    Name: string
    Description: string
    ContactFlowId: string
    SelfAssignFlowId: string
    Constraints: TaskTemplateConstraints
    Defaults: TaskTemplateDefaults
    Fields: {TaskTemplateField}
    Status: string
    LastModifiedTime: number
    CreatedTime: number
    Tags: {string : string}
end

local record GetTestCaseExecutionSummaryInput
    InstanceId: string
    TestCaseId: string
    TestCaseExecutionId: string
end

local record GetTestCaseExecutionSummaryOutput
    StartTime: number
    EndTime: number
    Status: string
    ObservationSummary: ObservationSummary
end

local record GetTrafficDistributionInput
    Id: string
end

local record GetTrafficDistributionOutput
    TelephonyConfig: TelephonyConfig
    Id: string
    Arn: string
    SignInConfig: SignInConfig
    AgentConfig: AgentConfig
end

local record ImportPhoneNumberInput
    InstanceId: string
    SourcePhoneNumberArn: string
    PhoneNumberDescription: string
    Tags: {string : string}
    ClientToken: string
end

local record ImportPhoneNumberOutput
    PhoneNumberId: string
    PhoneNumberArn: string
end

local record ImportWorkspaceMediaInput
    InstanceId: string
    WorkspaceId: string
    MediaType: string
    MediaSource: string
end

local record ImportWorkspaceMediaOutput
end

local record ListAgentStatusesInput
    InstanceId: string
    NextToken: string
    MaxResults: number
    AgentStatusTypes: {string}
end

local record ListAgentStatusesOutput
    NextToken: string
    AgentStatusSummaryList: {AgentStatusSummary}
end

local record ListAnalyticsDataAssociationsInput
    InstanceId: string
    DataSetId: string
    NextToken: string
    MaxResults: number
end

local record ListAnalyticsDataAssociationsOutput
    Results: {AnalyticsDataAssociationResult}
    NextToken: string
end

local record ListAnalyticsDataLakeDataSetsInput
    InstanceId: string
    NextToken: string
    MaxResults: number
end

local record ListAnalyticsDataLakeDataSetsOutput
    Results: {AnalyticsDataSetsResult}
    NextToken: string
end

local record ListApprovedOriginsInput
    InstanceId: string
    NextToken: string
    MaxResults: number
end

local record ListApprovedOriginsOutput
    Origins: {string}
    NextToken: string
end

local record ListAssociatedContactsInput
    InstanceId: string
    ContactId: string
    MaxResults: number
    NextToken: string
end

local record ListAssociatedContactsOutput
    ContactSummaryList: {AssociatedContactSummary}
    NextToken: string
end

local record ListAttachedFilesConfigurationsInput
    InstanceId: string
    MaxResults: number
    NextToken: string
end

local record ListAttachedFilesConfigurationsOutput
    AttachedFilesConfigurations: {AttachedFilesConfigurationSummary}
    NextToken: string
end

local record ListAuthenticationProfilesInput
    InstanceId: string
    MaxResults: number
    NextToken: string
end

local record ListAuthenticationProfilesOutput
    AuthenticationProfileSummaryList: {AuthenticationProfileSummary}
    NextToken: string
end

local record ListBotsInput
    InstanceId: string
    NextToken: string
    MaxResults: number
    LexVersion: string
end

local record ListBotsOutput
    LexBots: {LexBotConfig}
    NextToken: string
end

local record ListChildHoursOfOperationsInput
    InstanceId: string
    HoursOfOperationId: string
    NextToken: string
    MaxResults: number
end

local record ListChildHoursOfOperationsOutput
    NextToken: string
    ChildHoursOfOperationsSummaryList: {HoursOfOperationsIdentifier}
    LastModifiedTime: number
    LastModifiedRegion: string
end

local record ListContactEvaluationsInput
    InstanceId: string
    ContactId: string
    NextToken: string
end

local record ListContactEvaluationsOutput
    EvaluationSummaryList: {EvaluationSummary}
    NextToken: string
end

local record ListContactFlowModuleAliasesInput
    InstanceId: string
    ContactFlowModuleId: string
    NextToken: string
    MaxResults: number
end

local record ListContactFlowModuleAliasesOutput
    ContactFlowModuleAliasSummaryList: {ContactFlowModuleAliasSummary}
    NextToken: string
end

local record ListContactFlowModulesInput
    InstanceId: string
    NextToken: string
    MaxResults: number
    ContactFlowModuleState: string
end

local record ListContactFlowModulesOutput
    ContactFlowModulesSummaryList: {ContactFlowModuleSummary}
    NextToken: string
end

local record ListContactFlowModuleVersionsInput
    InstanceId: string
    ContactFlowModuleId: string
    NextToken: string
    MaxResults: number
end

local record ListContactFlowModuleVersionsOutput
    ContactFlowModuleVersionSummaryList: {ContactFlowModuleVersionSummary}
    NextToken: string
end

local record ListContactFlowsInput
    InstanceId: string
    ContactFlowTypes: {string}
    NextToken: string
    MaxResults: number
end

local record ListContactFlowsOutput
    ContactFlowSummaryList: {ContactFlowSummary}
    NextToken: string
end

local record ListContactFlowVersionsInput
    InstanceId: string
    ContactFlowId: string
    NextToken: string
    MaxResults: number
end

local record ListContactFlowVersionsOutput
    ContactFlowVersionSummaryList: {ContactFlowVersionSummary}
    NextToken: string
end

local record ListContactReferencesInput
    InstanceId: string
    ContactId: string
    ReferenceTypes: {string}
    NextToken: string
end

local record ListContactReferencesOutput
    ReferenceSummaryList: {ReferenceSummary}
    NextToken: string
end

local record ListDataTableAttributesInput
    InstanceId: string
    DataTableId: string
    AttributeIds: {string}
    NextToken: string
    MaxResults: number
end

local record ListDataTableAttributesOutput
    NextToken: string
    Attributes: {DataTableAttribute}
end

local record ListDataTablePrimaryValuesInput
    InstanceId: string
    DataTableId: string
    RecordIds: {string}
    PrimaryAttributeValues: {PrimaryAttributeValueFilter}
    NextToken: string
    MaxResults: number
end

local record ListDataTablePrimaryValuesOutput
    NextToken: string
    PrimaryValuesList: {RecordPrimaryValue}
end

local record ListDataTablesInput
    InstanceId: string
    NextToken: string
    MaxResults: number
end

local record ListDataTablesOutput
    NextToken: string
    DataTableSummaryList: {DataTableSummary}
end

local record ListDataTableValuesInput
    InstanceId: string
    DataTableId: string
    RecordIds: {string}
    PrimaryAttributeValues: {PrimaryAttributeValueFilter}
    NextToken: string
    MaxResults: number
end

local record ListDataTableValuesOutput
    NextToken: string
    Values: {DataTableValueSummary}
end

local record ListDefaultVocabulariesInput
    InstanceId: string
    LanguageCode: string
    MaxResults: number
    NextToken: string
end

local record ListDefaultVocabulariesOutput
    DefaultVocabularyList: {DefaultVocabulary}
    NextToken: string
end

local record ListEntitySecurityProfilesInput
    InstanceId: string
    EntityType: string
    EntityArn: string
    NextToken: string
    MaxResults: number
end

local record ListEntitySecurityProfilesOutput
    SecurityProfiles: {SecurityProfileItem}
    NextToken: string
end

local record ListEvaluationFormsInput
    InstanceId: string
    MaxResults: number
    NextToken: string
end

local record ListEvaluationFormsOutput
    EvaluationFormSummaryList: {EvaluationFormSummary}
    NextToken: string
end

local record ListEvaluationFormVersionsInput
    InstanceId: string
    EvaluationFormId: string
    MaxResults: number
    NextToken: string
end

local record ListEvaluationFormVersionsOutput
    EvaluationFormVersionSummaryList: {EvaluationFormVersionSummary}
    NextToken: string
end

local record ListFlowAssociationsInput
    InstanceId: string
    ResourceType: string
    NextToken: string
    MaxResults: number
end

local record ListFlowAssociationsOutput
    FlowAssociationSummaryList: {FlowAssociationSummary}
    NextToken: string
end

local record ListHoursOfOperationOverridesInput
    InstanceId: string
    HoursOfOperationId: string
    NextToken: string
    MaxResults: number
end

local record ListHoursOfOperationOverridesOutput
    NextToken: string
    HoursOfOperationOverrideList: {HoursOfOperationOverride}
    LastModifiedRegion: string
    LastModifiedTime: number
end

local record ListHoursOfOperationsInput
    InstanceId: string
    NextToken: string
    MaxResults: number
end

local record ListHoursOfOperationsOutput
    HoursOfOperationSummaryList: {HoursOfOperationSummary}
    NextToken: string
end

local record ListInstanceAttributesInput
    InstanceId: string
    NextToken: string
    MaxResults: number
end

local record ListInstanceAttributesOutput
    Attributes: {Attribute}
    NextToken: string
end

local record ListInstancesInput
    NextToken: string
    MaxResults: number
end

local record ListInstancesOutput
    InstanceSummaryList: {InstanceSummary}
    NextToken: string
end

local record ListInstanceStorageConfigsInput
    InstanceId: string
    ResourceType: string
    NextToken: string
    MaxResults: number
end

local record ListInstanceStorageConfigsOutput
    StorageConfigs: {InstanceStorageConfig}
    NextToken: string
end

local record ListIntegrationAssociationsInput
    InstanceId: string
    IntegrationType: string
    NextToken: string
    MaxResults: number
    IntegrationArn: string
end

local record ListIntegrationAssociationsOutput
    IntegrationAssociationSummaryList: {IntegrationAssociationSummary}
    NextToken: string
end

local record ListLambdaFunctionsInput
    InstanceId: string
    NextToken: string
    MaxResults: number
end

local record ListLambdaFunctionsOutput
    LambdaFunctions: {string}
    NextToken: string
end

local record ListLexBotsInput
    InstanceId: string
    NextToken: string
    MaxResults: number
end

local record ListLexBotsOutput
    LexBots: {LexBot}
    NextToken: string
end

local record ListNotificationsInput
    InstanceId: string
    NextToken: string
    MaxResults: number
end

local record ListNotificationsOutput
    NextToken: string
    NotificationSummaryList: {Notification}
end

local record ListPhoneNumbersInput
    InstanceId: string
    PhoneNumberTypes: {string}
    PhoneNumberCountryCodes: {string}
    NextToken: string
    MaxResults: number
end

local record ListPhoneNumbersOutput
    PhoneNumberSummaryList: {PhoneNumberSummary}
    NextToken: string
end

local record ListPhoneNumbersV2Input
    TargetArn: string
    InstanceId: string
    MaxResults: number
    NextToken: string
    PhoneNumberCountryCodes: {string}
    PhoneNumberTypes: {string}
    PhoneNumberPrefix: string
end

local record ListPhoneNumbersV2Output
    NextToken: string
    ListPhoneNumbersSummaryList: {ListPhoneNumbersSummary}
end

local record ListPredefinedAttributesInput
    InstanceId: string
    NextToken: string
    MaxResults: number
end

local record ListPredefinedAttributesOutput
    NextToken: string
    PredefinedAttributeSummaryList: {PredefinedAttributeSummary}
end

local record ListPromptsInput
    InstanceId: string
    NextToken: string
    MaxResults: number
end

local record ListPromptsOutput
    PromptSummaryList: {PromptSummary}
    NextToken: string
end

local record ListQueueEmailAddressesInput
    InstanceId: string
    QueueId: string
    NextToken: string
    MaxResults: number
end

local record ListQueueEmailAddressesOutput
    NextToken: string
    EmailAddressMetadataList: {EmailAddressSummary}
    LastModifiedTime: number
    LastModifiedRegion: string
end

local record ListQueueQuickConnectsInput
    InstanceId: string
    QueueId: string
    NextToken: string
    MaxResults: number
end

local record ListQueueQuickConnectsOutput
    NextToken: string
    QuickConnectSummaryList: {QuickConnectSummary}
    LastModifiedTime: number
    LastModifiedRegion: string
end

local record ListQueuesInput
    InstanceId: string
    QueueTypes: {string}
    NextToken: string
    MaxResults: number
end

local record ListQueuesOutput
    QueueSummaryList: {QueueSummary}
    NextToken: string
end

local record ListQuickConnectsInput
    InstanceId: string
    NextToken: string
    MaxResults: number
    QuickConnectTypes: {string}
end

local record ListQuickConnectsOutput
    QuickConnectSummaryList: {QuickConnectSummary}
    NextToken: string
end

local record ListRealtimeContactAnalysisSegmentsV2Input
    InstanceId: string
    ContactId: string
    MaxResults: number
    NextToken: string
    OutputType: string
    SegmentTypes: {string}
end

local record ListRealtimeContactAnalysisSegmentsV2Output
    Channel: string
    Status: string
    Segments: {RealtimeContactAnalysisSegment}
    NextToken: string
end

local record ListRoutingProfileManualAssignmentQueuesInput
    InstanceId: string
    RoutingProfileId: string
    NextToken: string
    MaxResults: number
end

local record ListRoutingProfileManualAssignmentQueuesOutput
    NextToken: string
    RoutingProfileManualAssignmentQueueConfigSummaryList: {RoutingProfileManualAssignmentQueueConfigSummary}
    LastModifiedTime: number
    LastModifiedRegion: string
end

local record ListRoutingProfileQueuesInput
    InstanceId: string
    RoutingProfileId: string
    NextToken: string
    MaxResults: number
end

local record ListRoutingProfileQueuesOutput
    NextToken: string
    RoutingProfileQueueConfigSummaryList: {RoutingProfileQueueConfigSummary}
    LastModifiedTime: number
    LastModifiedRegion: string
end

local record ListRoutingProfilesInput
    InstanceId: string
    NextToken: string
    MaxResults: number
end

local record ListRoutingProfilesOutput
    RoutingProfileSummaryList: {RoutingProfileSummary}
    NextToken: string
end

local record ListRulesInput
    InstanceId: string
    PublishStatus: string
    EventSourceName: string
    MaxResults: number
    NextToken: string
end

local record ListRulesOutput
    RuleSummaryList: {RuleSummary}
    NextToken: string
end

local record ListSecurityKeysInput
    InstanceId: string
    NextToken: string
    MaxResults: number
end

local record ListSecurityKeysOutput
    SecurityKeys: {SecurityKey}
    NextToken: string
end

local record ListSecurityProfileApplicationsInput
    SecurityProfileId: string
    InstanceId: string
    NextToken: string
    MaxResults: number
end

local record ListSecurityProfileApplicationsOutput
    Applications: {Application}
    NextToken: string
    LastModifiedTime: number
    LastModifiedRegion: string
end

local record ListSecurityProfileFlowModulesInput
    SecurityProfileId: string
    InstanceId: string
    NextToken: string
    MaxResults: number
end

local record ListSecurityProfileFlowModulesOutput
    AllowedFlowModules: {FlowModule}
    NextToken: string
    LastModifiedTime: number
    LastModifiedRegion: string
end

local record ListSecurityProfilePermissionsInput
    SecurityProfileId: string
    InstanceId: string
    NextToken: string
    MaxResults: number
end

local record ListSecurityProfilePermissionsOutput
    Permissions: {string}
    NextToken: string
    LastModifiedTime: number
    LastModifiedRegion: string
end

local record ListSecurityProfilesInput
    InstanceId: string
    NextToken: string
    MaxResults: number
end

local record ListSecurityProfilesOutput
    SecurityProfileSummaryList: {SecurityProfileSummary}
    NextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record ListTaskTemplatesInput
    InstanceId: string
    NextToken: string
    MaxResults: number
    Status: string
    Name: string
end

local record ListTaskTemplatesOutput
    TaskTemplates: {TaskTemplateMetadata}
    NextToken: string
end

local record ListTestCaseExecutionRecordsInput
    InstanceId: string
    TestCaseId: string
    TestCaseExecutionId: string
    Status: string
    NextToken: string
    MaxResults: number
end

local record ListTestCaseExecutionRecordsOutput
    ExecutionRecords: {ExecutionRecord}
    NextToken: string
end

local record ListTestCaseExecutionsInput
    InstanceId: string
    TestCaseId: string
    TestCaseName: string
    StartTime: number
    EndTime: number
    Status: string
    NextToken: string
    MaxResults: number
end

local record ListTestCaseExecutionsOutput
    TestCaseExecutions: {TestCaseExecution}
    NextToken: string
end

local record ListTestCasesInput
    InstanceId: string
    NextToken: string
    MaxResults: number
end

local record ListTestCasesOutput
    TestCaseSummaryList: {TestCaseSummary}
    NextToken: string
end

local record ListTrafficDistributionGroupsInput
    MaxResults: number
    NextToken: string
    InstanceId: string
end

local record ListTrafficDistributionGroupsOutput
    NextToken: string
    TrafficDistributionGroupSummaryList: {TrafficDistributionGroupSummary}
end

local record ListTrafficDistributionGroupUsersInput
    TrafficDistributionGroupId: string
    MaxResults: number
    NextToken: string
end

local record ListTrafficDistributionGroupUsersOutput
    NextToken: string
    TrafficDistributionGroupUserSummaryList: {TrafficDistributionGroupUserSummary}
end

local record ListUseCasesInput
    InstanceId: string
    IntegrationAssociationId: string
    NextToken: string
    MaxResults: number
end

local record ListUseCasesOutput
    UseCaseSummaryList: {UseCase}
    NextToken: string
end

local record ListUserHierarchyGroupsInput
    InstanceId: string
    NextToken: string
    MaxResults: number
end

local record ListUserHierarchyGroupsOutput
    UserHierarchyGroupSummaryList: {HierarchyGroupSummary}
    NextToken: string
end

local record ListUserNotificationsInput
    InstanceId: string
    NextToken: string
    MaxResults: number
    UserId: string
end

local record ListUserNotificationsOutput
    UserNotifications: {UserNotificationSummary}
    NextToken: string
end

local record ListUserProficienciesInput
    InstanceId: string
    UserId: string
    NextToken: string
    MaxResults: number
end

local record ListUserProficienciesOutput
    NextToken: string
    UserProficiencyList: {UserProficiency}
    LastModifiedTime: number
    LastModifiedRegion: string
end

local record ListUsersInput
    InstanceId: string
    NextToken: string
    MaxResults: number
end

local record ListUsersOutput
    UserSummaryList: {UserSummary}
    NextToken: string
end

local record ListViewsInput
    InstanceId: string
    Type: string
    NextToken: string
    MaxResults: number
end

local record ListViewsOutput
    ViewsSummaryList: {ViewSummary}
    NextToken: string
end

local record ListViewVersionsInput
    InstanceId: string
    ViewId: string
    NextToken: string
    MaxResults: number
end

local record ListViewVersionsOutput
    ViewVersionSummaryList: {ViewVersionSummary}
    NextToken: string
end

local record ListWorkspaceMediaInput
    InstanceId: string
    WorkspaceId: string
end

local record ListWorkspaceMediaOutput
    Media: {MediaItem}
end

local record ListWorkspacePagesInput
    InstanceId: string
    WorkspaceId: string
    NextToken: string
    MaxResults: number
end

local record ListWorkspacePagesOutput
    NextToken: string
    WorkspacePageList: {WorkspacePage}
end

local record ListWorkspacesInput
    InstanceId: string
    NextToken: string
    MaxResults: number
end

local record ListWorkspacesOutput
    NextToken: string
    WorkspaceSummaryList: {WorkspaceSummary}
end

local record MonitorContactInput
    InstanceId: string
    ContactId: string
    UserId: string
    AllowedMonitorCapabilities: {string}
    ClientToken: string
end

local record MonitorContactOutput
    ContactId: string
    ContactArn: string
end

local record PauseContactInput
    ContactId: string
    InstanceId: string
    ContactFlowId: string
end

local record PauseContactOutput
end

local record PutUserStatusInput
    UserId: string
    InstanceId: string
    AgentStatusId: string
end

local record PutUserStatusOutput
end

local record ReleasePhoneNumberInput
    PhoneNumberId: string
    ClientToken: string
end

local record ReleasePhoneNumberOutput
end

local record ReplicateInstanceInput
    InstanceId: string
    ReplicaRegion: string
    ClientToken: string
    ReplicaAlias: string
end

local record ReplicateInstanceOutput
    Id: string
    Arn: string
end

local record ResumeContactInput
    ContactId: string
    InstanceId: string
    ContactFlowId: string
end

local record ResumeContactOutput
end

local record ResumeContactRecordingInput
    InstanceId: string
    ContactId: string
    InitialContactId: string
    ContactRecordingType: string
end

local record ResumeContactRecordingOutput
end

local record SearchAgentStatusesInput
    InstanceId: string
    NextToken: string
    MaxResults: number
    SearchFilter: AgentStatusSearchFilter
    SearchCriteria: AgentStatusSearchCriteria
end

local record SearchAgentStatusesOutput
    AgentStatuses: {AgentStatus}
    NextToken: string
    ApproximateTotalCount: number
end

local record SearchAvailablePhoneNumbersInput
    TargetArn: string
    InstanceId: string
    PhoneNumberCountryCode: string
    PhoneNumberType: string
    PhoneNumberPrefix: string
    MaxResults: number
    NextToken: string
end

local record SearchAvailablePhoneNumbersOutput
    NextToken: string
    AvailableNumbersList: {AvailableNumberSummary}
end

local record SearchContactEvaluationsInput
    InstanceId: string
    NextToken: string
    MaxResults: number
    SearchCriteria: EvaluationSearchCriteria
    SearchFilter: EvaluationSearchFilter
end

local record SearchContactEvaluationsOutput
    EvaluationSearchSummaryList: {EvaluationSearchSummary}
    NextToken: string
    ApproximateTotalCount: number
end

local record SearchContactFlowModulesInput
    InstanceId: string
    NextToken: string
    MaxResults: number
    SearchFilter: ContactFlowModuleSearchFilter
    SearchCriteria: ContactFlowModuleSearchCriteria
end

local record SearchContactFlowModulesOutput
    ContactFlowModules: {ContactFlowModule}
    NextToken: string
    ApproximateTotalCount: number
end

local record SearchContactFlowsInput
    InstanceId: string
    NextToken: string
    MaxResults: number
    SearchFilter: ContactFlowSearchFilter
    SearchCriteria: ContactFlowSearchCriteria
end

local record SearchContactFlowsOutput
    ContactFlows: {ContactFlow}
    NextToken: string
    ApproximateTotalCount: number
end

local record SearchContactsInput
    InstanceId: string
    TimeRange: SearchContactsTimeRange
    SearchCriteria: SearchCriteria
    MaxResults: number
    NextToken: string
    Sort: Sort
end

local record SearchContactsOutput
    Contacts: {ContactSearchSummary}
    NextToken: string
    TotalCount: number
end

local record SearchDataTablesInput
    InstanceId: string
    NextToken: string
    MaxResults: number
    SearchFilter: DataTableSearchFilter
    SearchCriteria: DataTableSearchCriteria
end

local record SearchDataTablesOutput
    DataTables: {DataTable}
    NextToken: string
    ApproximateTotalCount: number
end

local record SearchEmailAddressesInput
    InstanceId: string
    MaxResults: number
    NextToken: string
    SearchCriteria: EmailAddressSearchCriteria
    SearchFilter: EmailAddressSearchFilter
end

local record SearchEmailAddressesOutput
    NextToken: string
    EmailAddresses: {EmailAddressMetadata}
    ApproximateTotalCount: number
end

local record SearchEvaluationFormsInput
    InstanceId: string
    NextToken: string
    MaxResults: number
    SearchCriteria: EvaluationFormSearchCriteria
    SearchFilter: EvaluationFormSearchFilter
end

local record SearchEvaluationFormsOutput
    EvaluationFormSearchSummaryList: {EvaluationFormSearchSummary}
    NextToken: string
    ApproximateTotalCount: number
end

local record SearchHoursOfOperationOverridesInput
    InstanceId: string
    NextToken: string
    MaxResults: number
    SearchFilter: HoursOfOperationSearchFilter
    SearchCriteria: HoursOfOperationOverrideSearchCriteria
end

local record SearchHoursOfOperationOverridesOutput
    HoursOfOperationOverrides: {HoursOfOperationOverride}
    NextToken: string
    ApproximateTotalCount: number
end

local record SearchHoursOfOperationsInput
    InstanceId: string
    NextToken: string
    MaxResults: number
    SearchFilter: HoursOfOperationSearchFilter
    SearchCriteria: HoursOfOperationSearchCriteria
end

local record SearchHoursOfOperationsOutput
    HoursOfOperations: {HoursOfOperation}
    NextToken: string
    ApproximateTotalCount: number
end

local record SearchNotificationsInput
    InstanceId: string
    NextToken: string
    MaxResults: number
    SearchFilter: NotificationSearchFilter
    SearchCriteria: NotificationSearchCriteria
end

local record SearchNotificationsOutput
    Notifications: {NotificationSearchSummary}
    NextToken: string
    ApproximateTotalCount: number
end

local record SearchPredefinedAttributesInput
    InstanceId: string
    NextToken: string
    MaxResults: number
    SearchCriteria: PredefinedAttributeSearchCriteria
end

local record SearchPredefinedAttributesOutput
    PredefinedAttributes: {PredefinedAttribute}
    NextToken: string
    ApproximateTotalCount: number
end

local record SearchPromptsInput
    InstanceId: string
    NextToken: string
    MaxResults: number
    SearchFilter: PromptSearchFilter
    SearchCriteria: PromptSearchCriteria
end

local record SearchPromptsOutput
    Prompts: {Prompt}
    NextToken: string
    ApproximateTotalCount: number
end

local record SearchQueuesInput
    InstanceId: string
    NextToken: string
    MaxResults: number
    SearchFilter: QueueSearchFilter
    SearchCriteria: QueueSearchCriteria
end

local record SearchQueuesOutput
    Queues: {Queue}
    NextToken: string
    ApproximateTotalCount: number
end

local record SearchQuickConnectsInput
    InstanceId: string
    NextToken: string
    MaxResults: number
    SearchFilter: QuickConnectSearchFilter
    SearchCriteria: QuickConnectSearchCriteria
end

local record SearchQuickConnectsOutput
    QuickConnects: {QuickConnect}
    NextToken: string
    ApproximateTotalCount: number
end

local record SearchResourceTagsInput
    InstanceId: string
    ResourceTypes: {string}
    NextToken: string
    MaxResults: number
    SearchCriteria: ResourceTagsSearchCriteria
end

local record SearchResourceTagsOutput
    Tags: {TagSet}
    NextToken: string
end

local record SearchRoutingProfilesInput
    InstanceId: string
    NextToken: string
    MaxResults: number
    SearchFilter: RoutingProfileSearchFilter
    SearchCriteria: RoutingProfileSearchCriteria
end

local record SearchRoutingProfilesOutput
    RoutingProfiles: {RoutingProfile}
    NextToken: string
    ApproximateTotalCount: number
end

local record SearchSecurityProfilesInput
    InstanceId: string
    NextToken: string
    MaxResults: number
    SearchCriteria: SecurityProfileSearchCriteria
    SearchFilter: SecurityProfilesSearchFilter
end

local record SearchSecurityProfilesOutput
    SecurityProfiles: {SecurityProfileSearchSummary}
    NextToken: string
    ApproximateTotalCount: number
end

local record SearchTestCasesInput
    InstanceId: string
    NextToken: string
    MaxResults: number
    SearchFilter: TestCaseSearchFilter
    SearchCriteria: TestCaseSearchCriteria
end

local record SearchTestCasesOutput
    TestCases: {TestCase}
    NextToken: string
    ApproximateTotalCount: number
end

local record SearchUserHierarchyGroupsInput
    InstanceId: string
    NextToken: string
    MaxResults: number
    SearchFilter: UserHierarchyGroupSearchFilter
    SearchCriteria: UserHierarchyGroupSearchCriteria
end

local record SearchUserHierarchyGroupsOutput
    UserHierarchyGroups: {HierarchyGroup}
    NextToken: string
    ApproximateTotalCount: number
end

local record SearchUsersInput
    InstanceId: string
    NextToken: string
    MaxResults: number
    SearchFilter: UserSearchFilter
    SearchCriteria: UserSearchCriteria
end

local record SearchUsersOutput
    Users: {UserSearchSummary}
    NextToken: string
    ApproximateTotalCount: number
end

local record SearchViewsInput
    InstanceId: string
    NextToken: string
    MaxResults: number
    SearchFilter: ViewSearchFilter
    SearchCriteria: ViewSearchCriteria
end

local record SearchViewsOutput
    Views: {View}
    NextToken: string
    ApproximateTotalCount: number
end

local record SearchVocabulariesInput
    InstanceId: string
    MaxResults: number
    NextToken: string
    State: string
    NameStartsWith: string
    LanguageCode: string
end

local record SearchVocabulariesOutput
    VocabularySummaryList: {VocabularySummary}
    NextToken: string
end

local record SearchWorkspaceAssociationsInput
    InstanceId: string
    NextToken: string
    MaxResults: number
    SearchFilter: WorkspaceAssociationSearchFilter
    SearchCriteria: WorkspaceAssociationSearchCriteria
end

local record SearchWorkspaceAssociationsOutput
    NextToken: string
    WorkspaceAssociations: {WorkspaceAssociationSearchSummary}
    ApproximateTotalCount: number
end

local record SearchWorkspacesInput
    InstanceId: string
    NextToken: string
    MaxResults: number
    SearchFilter: WorkspaceSearchFilter
    SearchCriteria: WorkspaceSearchCriteria
end

local record SearchWorkspacesOutput
    NextToken: string
    Workspaces: {WorkspaceSearchSummary}
    ApproximateTotalCount: number
end

local record SendChatIntegrationEventInput
    SourceId: string
    DestinationId: string
    Subtype: string
    Event: ChatEvent
    NewSessionDetails: NewSessionDetails
end

local record SendChatIntegrationEventOutput
    InitialContactId: string
    NewChatCreated: boolean
end

local record SendOutboundEmailInput
    InstanceId: string
    FromEmailAddress: EmailAddressInfo
    DestinationEmailAddress: EmailAddressInfo
    AdditionalRecipients: OutboundAdditionalRecipients
    EmailMessage: OutboundEmailContent
    TrafficType: string
    SourceCampaign: SourceCampaign
    ClientToken: string
end

local record SendOutboundEmailOutput
end

local record StartAttachedFileUploadInput
    ClientToken: string
    InstanceId: string
    FileName: string
    FileSizeInBytes: number
    UrlExpiryInSeconds: number
    FileUseCaseType: string
    AssociatedResourceArn: string
    CreatedBy: CreatedByInfo
    Tags: {string : string}
end

local record StartAttachedFileUploadOutput
    FileArn: string
    FileId: string
    CreationTime: string
    FileStatus: string
    CreatedBy: CreatedByInfo
    UploadUrlMetadata: UploadUrlMetadata
end

local record StartChatContactInput
    InstanceId: string
    ContactFlowId: string
    Attributes: {string : string}
    ParticipantDetails: ParticipantDetails
    ParticipantConfiguration: ParticipantConfiguration
    InitialMessage: ChatMessage
    ClientToken: string
    ChatDurationInMinutes: number
    SupportedMessagingContentTypes: {string}
    PersistentChat: PersistentChat
    RelatedContactId: string
    SegmentAttributes: {string : SegmentAttributeValue}
    CustomerId: string
    DisconnectOnCustomerExit: {string}
end

local record StartChatContactOutput
    ContactId: string
    ParticipantId: string
    ParticipantToken: string
    ContinuedFromContactId: string
end

local record StartContactEvaluationInput
    InstanceId: string
    ContactId: string
    EvaluationFormId: string
    AutoEvaluationConfiguration: AutoEvaluationConfiguration
    ClientToken: string
    Tags: {string : string}
end

local record StartContactEvaluationOutput
    EvaluationId: string
    EvaluationArn: string
end

local record StartContactMediaProcessingInput
    InstanceId: string
    ContactId: string
    ProcessorArn: string
    FailureMode: string
end

local record StartContactMediaProcessingOutput
end

local record StartContactRecordingInput
    InstanceId: string
    ContactId: string
    InitialContactId: string
    VoiceRecordingConfiguration: VoiceRecordingConfiguration
end

local record StartContactRecordingOutput
end

local record StartContactStreamingInput
    InstanceId: string
    ContactId: string
    ChatStreamingConfiguration: ChatStreamingConfiguration
    ClientToken: string
end

local record StartContactStreamingOutput
    StreamingId: string
end

local record StartEmailContactInput
    InstanceId: string
    FromEmailAddress: EmailAddressInfo
    DestinationEmailAddress: string
    Description: string
    References: {string : Reference}
    Name: string
    EmailMessage: InboundEmailContent
    AdditionalRecipients: InboundAdditionalRecipients
    Attachments: {EmailAttachment}
    ContactFlowId: string
    RelatedContactId: string
    Attributes: {string : string}
    SegmentAttributes: {string : SegmentAttributeValue}
    ClientToken: string
end

local record StartEmailContactOutput
    ContactId: string
end

local record StartOutboundChatContactInput
    SourceEndpoint: Endpoint
    DestinationEndpoint: Endpoint
    InstanceId: string
    SegmentAttributes: {string : SegmentAttributeValue}
    Attributes: {string : string}
    ContactFlowId: string
    ChatDurationInMinutes: number
    ParticipantDetails: ParticipantDetails
    InitialSystemMessage: ChatMessage
    InitialTemplatedSystemMessage: TemplatedMessageConfig
    RelatedContactId: string
    SupportedMessagingContentTypes: {string}
    ClientToken: string
end

local record StartOutboundChatContactOutput
    ContactId: string
end

local record StartOutboundEmailContactInput
    InstanceId: string
    ContactId: string
    FromEmailAddress: EmailAddressInfo
    DestinationEmailAddress: EmailAddressInfo
    AdditionalRecipients: OutboundAdditionalRecipients
    EmailMessage: OutboundEmailContent
    ClientToken: string
end

local record StartOutboundEmailContactOutput
    ContactId: string
end

local record StartOutboundVoiceContactInput
    Name: string
    Description: string
    References: {string : Reference}
    RelatedContactId: string
    DestinationPhoneNumber: string
    ContactFlowId: string
    InstanceId: string
    ClientToken: string
    SourcePhoneNumber: string
    QueueId: string
    Attributes: {string : string}
    AnswerMachineDetectionConfig: AnswerMachineDetectionConfig
    CampaignId: string
    TrafficType: string
    OutboundStrategy: OutboundStrategy
    RingTimeoutInSeconds: number
end

local record StartOutboundVoiceContactOutput
    ContactId: string
end

local record StartScreenSharingInput
    ClientToken: string
    InstanceId: string
    ContactId: string
end

local record StartScreenSharingOutput
end

local record StartTaskContactInput
    InstanceId: string
    PreviousContactId: string
    ContactFlowId: string
    Attributes: {string : string}
    Name: string
    References: {string : Reference}
    Description: string
    ClientToken: string
    ScheduledTime: number
    TaskTemplateId: string
    QuickConnectId: string
    RelatedContactId: string
    SegmentAttributes: {string : SegmentAttributeValue}
    Attachments: {TaskAttachment}
end

local record StartTaskContactOutput
    ContactId: string
end

local record StartTestCaseExecutionInput
    InstanceId: string
    TestCaseId: string
    ClientToken: string
end

local record StartTestCaseExecutionOutput
    TestCaseExecutionId: string
    TestCaseId: string
    Status: string
end

local record StartWebRTCContactInput
    Attributes: {string : string}
    ClientToken: string
    ContactFlowId: string
    InstanceId: string
    AllowedCapabilities: AllowedCapabilities
    ParticipantDetails: ParticipantDetails
    RelatedContactId: string
    References: {string : Reference}
    Description: string
end

local record StartWebRTCContactOutput
    ConnectionData: ConnectionData
    ContactId: string
    ParticipantId: string
    ParticipantToken: string
end

local record StopContactInput
    ContactId: string
    InstanceId: string
    DisconnectReason: DisconnectReason
end

local record StopContactOutput
end

local record StopContactMediaProcessingInput
    InstanceId: string
    ContactId: string
end

local record StopContactMediaProcessingOutput
end

local record StopContactRecordingInput
    InstanceId: string
    ContactId: string
    InitialContactId: string
    ContactRecordingType: string
end

local record StopContactRecordingOutput
end

local record StopContactStreamingInput
    InstanceId: string
    ContactId: string
    StreamingId: string
end

local record StopContactStreamingOutput
end

local record StopTestCaseExecutionInput
    InstanceId: string
    TestCaseExecutionId: string
    TestCaseId: string
    ClientToken: string
end

local record StopTestCaseExecutionOutput
end

local record SubmitContactEvaluationInput
    InstanceId: string
    EvaluationId: string
    Answers: {string : EvaluationAnswerInput}
    Notes: {string : EvaluationNote}
    SubmittedBy: EvaluatorUserUnion
end

local record SubmitContactEvaluationOutput
    EvaluationId: string
    EvaluationArn: string
end

local record SuspendContactRecordingInput
    InstanceId: string
    ContactId: string
    InitialContactId: string
    ContactRecordingType: string
end

local record SuspendContactRecordingOutput
end

local record TagContactInput
    ContactId: string
    InstanceId: string
    Tags: {string : string}
end

local record TagContactOutput
end

local record TagResourceInput
    resourceArn: string
    tags: {string : string}
end

local record TagResourceOutput
end

local record TransferContactInput
    InstanceId: string
    ContactId: string
    QueueId: string
    UserId: string
    ContactFlowId: string
    ClientToken: string
end

local record TransferContactOutput
    ContactId: string
    ContactArn: string
end

local record UntagContactInput
    ContactId: string
    InstanceId: string
    TagKeys: {string}
end

local record UntagContactOutput
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateAgentStatusInput
    InstanceId: string
    AgentStatusId: string
    Name: string
    Description: string
    State: string
    DisplayOrder: number
    ResetOrderNumber: boolean
end

local record UpdateAgentStatusOutput
end

local record UpdateAttachedFilesConfigurationInput
    InstanceId: string
    AttachmentScope: string
    MaximumSizeLimitInBytes: number
    ExtensionConfiguration: ExtensionConfiguration
end

local record UpdateAttachedFilesConfigurationOutput
    InstanceId: string
    AttachmentScope: string
    MaximumSizeLimitInBytes: number
    ExtensionConfiguration: ExtensionConfiguration
    LastModifiedTime: number
end

local record UpdateAuthenticationProfileInput
    AuthenticationProfileId: string
    InstanceId: string
    Name: string
    Description: string
    AllowedIps: {string}
    BlockedIps: {string}
    PeriodicSessionDuration: number
    SessionInactivityDuration: number
    SessionInactivityHandlingEnabled: boolean
end

local record UpdateAuthenticationProfileOutput
end

local record UpdateContactInput
    InstanceId: string
    ContactId: string
    Name: string
    Description: string
    References: {string : Reference}
    SegmentAttributes: {string : SegmentAttributeValue}
    QueueInfo: QueueInfoInput
    UserInfo: UserInfo
    CustomerEndpoint: Endpoint
    SystemEndpoint: Endpoint
end

local record UpdateContactOutput
end

local record UpdateContactAttributesInput
    InitialContactId: string
    InstanceId: string
    Attributes: {string : string}
end

local record UpdateContactAttributesOutput
end

local record UpdateContactEvaluationInput
    InstanceId: string
    EvaluationId: string
    Answers: {string : EvaluationAnswerInput}
    Notes: {string : EvaluationNote}
    UpdatedBy: EvaluatorUserUnion
end

local record UpdateContactEvaluationOutput
    EvaluationId: string
    EvaluationArn: string
end

local record UpdateContactFlowContentInput
    InstanceId: string
    ContactFlowId: string
    Content: string
end

local record UpdateContactFlowContentOutput
end

local record UpdateContactFlowMetadataInput
    InstanceId: string
    ContactFlowId: string
    Name: string
    Description: string
    ContactFlowState: string
end

local record UpdateContactFlowMetadataOutput
end

local record UpdateContactFlowModuleAliasInput
    InstanceId: string
    ContactFlowModuleId: string
    AliasId: string
    Name: string
    Description: string
    ContactFlowModuleVersion: number
end

local record UpdateContactFlowModuleAliasOutput
end

local record UpdateContactFlowModuleContentInput
    InstanceId: string
    ContactFlowModuleId: string
    Content: string
    Settings: string
end

local record UpdateContactFlowModuleContentOutput
end

local record UpdateContactFlowModuleMetadataInput
    InstanceId: string
    ContactFlowModuleId: string
    Name: string
    Description: string
    State: string
end

local record UpdateContactFlowModuleMetadataOutput
end

local record UpdateContactFlowNameInput
    InstanceId: string
    ContactFlowId: string
    Name: string
    Description: string
end

local record UpdateContactFlowNameOutput
end

local record UpdateContactRoutingDataInput
    InstanceId: string
    ContactId: string
    QueueTimeAdjustmentSeconds: number
    QueuePriority: number
    RoutingCriteria: RoutingCriteriaInput
end

local record UpdateContactRoutingDataOutput
end

local record UpdateContactScheduleInput
    InstanceId: string
    ContactId: string
    ScheduledTime: number
end

local record UpdateContactScheduleOutput
end

local record UpdateDataTableAttributeInput
    InstanceId: string
    DataTableId: string
    AttributeName: string
    Name: string
    ValueType: string
    Description: string
    Primary: boolean
    Validation: Validation
end

local record UpdateDataTableAttributeOutput
    Name: string
    LockVersion: DataTableLockVersion
end

local record UpdateDataTableMetadataInput
    InstanceId: string
    DataTableId: string
    Name: string
    Description: string
    ValueLockLevel: string
    TimeZone: string
end

local record UpdateDataTableMetadataOutput
    LockVersion: DataTableLockVersion
end

local record UpdateDataTablePrimaryValuesInput
    InstanceId: string
    DataTableId: string
    PrimaryValues: {PrimaryValue}
    NewPrimaryValues: {PrimaryValue}
    LockVersion: DataTableLockVersion
end

local record UpdateDataTablePrimaryValuesOutput
    LockVersion: DataTableLockVersion
end

local record UpdateEmailAddressMetadataInput
    InstanceId: string
    EmailAddressId: string
    Description: string
    DisplayName: string
    ClientToken: string
end

local record UpdateEmailAddressMetadataOutput
    EmailAddressId: string
    EmailAddressArn: string
end

local record UpdateEvaluationFormInput
    InstanceId: string
    EvaluationFormId: string
    EvaluationFormVersion: number
    CreateNewVersion: boolean
    Title: string
    Description: string
    Items: {EvaluationFormItem}
    ScoringStrategy: EvaluationFormScoringStrategy
    AutoEvaluationConfiguration: EvaluationFormAutoEvaluationConfiguration
    ReviewConfiguration: EvaluationReviewConfiguration
    AsDraft: boolean
    ClientToken: string
    TargetConfiguration: EvaluationFormTargetConfiguration
    LanguageConfiguration: EvaluationFormLanguageConfiguration
end

local record UpdateEvaluationFormOutput
    EvaluationFormId: string
    EvaluationFormArn: string
    EvaluationFormVersion: number
end

local record UpdateHoursOfOperationInput
    InstanceId: string
    HoursOfOperationId: string
    Name: string
    Description: string
    TimeZone: string
    Config: {HoursOfOperationConfig}
end

local record UpdateHoursOfOperationOutput
end

local record UpdateHoursOfOperationOverrideInput
    InstanceId: string
    HoursOfOperationId: string
    HoursOfOperationOverrideId: string
    Name: string
    Description: string
    Config: {HoursOfOperationOverrideConfig}
    EffectiveFrom: string
    EffectiveTill: string
    RecurrenceConfig: RecurrenceConfig
    OverrideType: string
end

local record UpdateHoursOfOperationOverrideOutput
end

local record UpdateInstanceAttributeInput
    InstanceId: string
    AttributeType: string
    Value: string
    ClientToken: string
end

local record UpdateInstanceAttributeOutput
end

local record UpdateInstanceStorageConfigInput
    InstanceId: string
    AssociationId: string
    ResourceType: string
    StorageConfig: InstanceStorageConfig
    ClientToken: string
end

local record UpdateInstanceStorageConfigOutput
end

local record UpdateNotificationContentInput
    InstanceId: string
    NotificationId: string
    Content: {string : string}
end

local record UpdateNotificationContentOutput
end

local record UpdateParticipantAuthenticationInput
    State: string
    InstanceId: string
    Code: string
    Error: string
    ErrorDescription: string
end

local record UpdateParticipantAuthenticationOutput
end

local record UpdateParticipantRoleConfigInput
    InstanceId: string
    ContactId: string
    ChannelConfiguration: UpdateParticipantRoleConfigChannelInfo
end

local record UpdateParticipantRoleConfigOutput
end

local record UpdatePhoneNumberInput
    PhoneNumberId: string
    TargetArn: string
    InstanceId: string
    ClientToken: string
end

local record UpdatePhoneNumberOutput
    PhoneNumberId: string
    PhoneNumberArn: string
end

local record UpdatePhoneNumberMetadataInput
    PhoneNumberId: string
    PhoneNumberDescription: string
    ClientToken: string
end

local record UpdatePhoneNumberMetadataOutput
end

local record UpdatePredefinedAttributeInput
    InstanceId: string
    Name: string
    Values: PredefinedAttributeValues
    Purposes: {string}
    AttributeConfiguration: InputPredefinedAttributeConfiguration
end

local record UpdatePredefinedAttributeOutput
end

local record UpdatePromptInput
    InstanceId: string
    PromptId: string
    Name: string
    Description: string
    S3Uri: string
end

local record UpdatePromptOutput
    PromptARN: string
    PromptId: string
end

local record UpdateQueueHoursOfOperationInput
    InstanceId: string
    QueueId: string
    HoursOfOperationId: string
end

local record UpdateQueueHoursOfOperationOutput
end

local record UpdateQueueMaxContactsInput
    InstanceId: string
    QueueId: string
    MaxContacts: number
end

local record UpdateQueueMaxContactsOutput
end

local record UpdateQueueNameInput
    InstanceId: string
    QueueId: string
    Name: string
    Description: string
end

local record UpdateQueueNameOutput
end

local record UpdateQueueOutboundCallerConfigInput
    InstanceId: string
    QueueId: string
    OutboundCallerConfig: OutboundCallerConfig
end

local record UpdateQueueOutboundCallerConfigOutput
end

local record UpdateQueueOutboundEmailConfigInput
    InstanceId: string
    QueueId: string
    OutboundEmailConfig: OutboundEmailConfig
end

local record UpdateQueueOutboundEmailConfigOutput
end

local record UpdateQueueStatusInput
    InstanceId: string
    QueueId: string
    Status: string
end

local record UpdateQueueStatusOutput
end

local record UpdateQuickConnectConfigInput
    InstanceId: string
    QuickConnectId: string
    QuickConnectConfig: QuickConnectConfig
end

local record UpdateQuickConnectConfigOutput
end

local record UpdateQuickConnectNameInput
    InstanceId: string
    QuickConnectId: string
    Name: string
    Description: string
end

local record UpdateQuickConnectNameOutput
end

local record UpdateRoutingProfileAgentAvailabilityTimerInput
    InstanceId: string
    RoutingProfileId: string
    AgentAvailabilityTimer: string
end

local record UpdateRoutingProfileAgentAvailabilityTimerOutput
end

local record UpdateRoutingProfileConcurrencyInput
    InstanceId: string
    RoutingProfileId: string
    MediaConcurrencies: {MediaConcurrency}
end

local record UpdateRoutingProfileConcurrencyOutput
end

local record UpdateRoutingProfileDefaultOutboundQueueInput
    InstanceId: string
    RoutingProfileId: string
    DefaultOutboundQueueId: string
end

local record UpdateRoutingProfileDefaultOutboundQueueOutput
end

local record UpdateRoutingProfileNameInput
    InstanceId: string
    RoutingProfileId: string
    Name: string
    Description: string
end

local record UpdateRoutingProfileNameOutput
end

local record UpdateRoutingProfileQueuesInput
    InstanceId: string
    RoutingProfileId: string
    QueueConfigs: {RoutingProfileQueueConfig}
end

local record UpdateRoutingProfileQueuesOutput
end

local record UpdateRuleInput
    RuleId: string
    InstanceId: string
    Name: string
    Function: string
    Actions: {RuleAction}
    PublishStatus: string
end

local record UpdateRuleOutput
end

local record UpdateSecurityProfileInput
    Description: string
    Permissions: {string}
    SecurityProfileId: string
    InstanceId: string
    AllowedAccessControlTags: {string : string}
    TagRestrictedResources: {string}
    Applications: {Application}
    HierarchyRestrictedResources: {string}
    AllowedAccessControlHierarchyGroupId: string
    AllowedFlowModules: {FlowModule}
    GranularAccessControlConfiguration: GranularAccessControlConfiguration
end

local record UpdateSecurityProfileOutput
end

local record UpdateTaskTemplateInput
    TaskTemplateId: string
    InstanceId: string
    Name: string
    Description: string
    ContactFlowId: string
    SelfAssignFlowId: string
    Constraints: TaskTemplateConstraints
    Defaults: TaskTemplateDefaults
    Status: string
    Fields: {TaskTemplateField}
end

local record UpdateTaskTemplateOutput
    InstanceId: string
    Id: string
    Arn: string
    Name: string
    Description: string
    ContactFlowId: string
    SelfAssignFlowId: string
    Constraints: TaskTemplateConstraints
    Defaults: TaskTemplateDefaults
    Fields: {TaskTemplateField}
    Status: string
    LastModifiedTime: number
    CreatedTime: number
end

local record UpdateTestCaseInput
    InstanceId: string
    TestCaseId: string
    Content: string
    EntryPoint: TestCaseEntryPoint
    InitializationData: string
    Name: string
    Description: string
    Status: string
    LastModifiedTime: number
    LastModifiedRegion: string
end

local record UpdateTestCaseOutput
end

local record UpdateTrafficDistributionInput
    Id: string
    TelephonyConfig: TelephonyConfig
    SignInConfig: SignInConfig
    AgentConfig: AgentConfig
end

local record UpdateTrafficDistributionOutput
end

local record UpdateUserConfigInput
    AutoAcceptConfigs: {AutoAcceptConfig}
    AfterContactWorkConfigs: {AfterContactWorkConfigPerChannel}
    PhoneNumberConfigs: {PhoneNumberConfig}
    PersistentConnectionConfigs: {PersistentConnectionConfig}
    VoiceEnhancementConfigs: {VoiceEnhancementConfig}
    UserId: string
    InstanceId: string
end

local record UpdateUserConfigOutput
end

local record UpdateUserHierarchyInput
    HierarchyGroupId: string
    UserId: string
    InstanceId: string
end

local record UpdateUserHierarchyOutput
end

local record UpdateUserHierarchyGroupNameInput
    Name: string
    HierarchyGroupId: string
    InstanceId: string
end

local record UpdateUserHierarchyGroupNameOutput
end

local record UpdateUserHierarchyStructureInput
    HierarchyStructure: HierarchyStructureUpdate
    InstanceId: string
end

local record UpdateUserHierarchyStructureOutput
end

local record UpdateUserIdentityInfoInput
    IdentityInfo: UserIdentityInfo
    UserId: string
    InstanceId: string
end

local record UpdateUserIdentityInfoOutput
end

local record UpdateUserNotificationStatusInput
    InstanceId: string
    NotificationId: string
    UserId: string
    Status: string
    LastModifiedTime: number
    LastModifiedRegion: string
end

local record UpdateUserNotificationStatusOutput
end

local record UpdateUserPhoneConfigInput
    PhoneConfig: UserPhoneConfig
    UserId: string
    InstanceId: string
end

local record UpdateUserPhoneConfigOutput
end

local record UpdateUserProficienciesInput
    InstanceId: string
    UserId: string
    UserProficiencies: {UserProficiency}
end

local record UpdateUserProficienciesOutput
end

local record UpdateUserRoutingProfileInput
    RoutingProfileId: string
    UserId: string
    InstanceId: string
end

local record UpdateUserRoutingProfileOutput
end

local record UpdateUserSecurityProfilesInput
    SecurityProfileIds: {string}
    UserId: string
    InstanceId: string
end

local record UpdateUserSecurityProfilesOutput
end

local record UpdateViewContentInput
    InstanceId: string
    ViewId: string
    Status: string
    Content: ViewInputContent
end

local record UpdateViewContentOutput
    View: View
end

local record UpdateViewMetadataInput
    InstanceId: string
    ViewId: string
    Name: string
    Description: string
end

local record UpdateViewMetadataOutput
end

local record UpdateWorkspaceMetadataInput
    InstanceId: string
    WorkspaceId: string
    Name: string
    Description: string
    Title: string
end

local record UpdateWorkspaceMetadataOutput
end

local record UpdateWorkspacePageInput
    InstanceId: string
    WorkspaceId: string
    Page: string
    NewPage: string
    ResourceArn: string
    Slug: string
    InputData: string
end

local record UpdateWorkspacePageOutput
end

local record UpdateWorkspaceThemeInput
    InstanceId: string
    WorkspaceId: string
    Theme: WorkspaceTheme
end

local record UpdateWorkspaceThemeOutput
end

local record UpdateWorkspaceVisibilityInput
    InstanceId: string
    WorkspaceId: string
    Visibility: string
end

local record UpdateWorkspaceVisibilityOutput
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record LimitExceededException
    Message: string
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record IdempotencyException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ConditionalOperationFailedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConditionalOperationFailedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record IdempotencyException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record IdempotencyException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record IdempotencyException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidContactFlowException
    problems: {ProblemDetail}
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record IdempotencyException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidContactFlowModuleException
    Problems: {ProblemDetail}
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record IdempotencyException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record LimitExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record PropertyValidationException
    Message: string
    PropertyList: {PropertyValidationExceptionProperty}
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record IdempotencyException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record InvalidTestCaseException
    Problems: {ProblemDetail}
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceNotReadyException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceInUseException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceInUseException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record LimitExceededException
    Message: string
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceInUseException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceInUseException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceInUseException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceInUseException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceInUseException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceInUseException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceInUseException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceInUseException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceInUseException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ContactFlowNotPublishedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ConditionalOperationFailedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConditionalOperationFailedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record UserNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record IdempotencyException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record OutputTypeNotFoundException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record IdempotencyException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record IdempotencyException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ResourceInUseException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceNotReadyException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidActiveRegionException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record MaximumResultReturnedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record IdempotencyException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceConflictException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record InternalServiceException
    Message: string
end

local record InvalidActiveRegionException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record IdempotencyException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record IdempotencyException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record DestinationNotAllowedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record LimitExceededException
    Message: string
end

local record OutboundContactNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ContactNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidActiveRegionException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidActiveRegionException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidActiveRegionException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidActiveRegionException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record IdempotencyException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidActiveRegionException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidActiveRegionException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidActiveRegionException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidContactFlowException
    problems: {ProblemDetail}
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConditionalOperationFailedException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidContactFlowModuleException
    Problems: {ProblemDetail}
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidActiveRegionException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record IdempotencyException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ConditionalOperationFailedException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record IdempotencyException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ResourceInUseException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record IdempotencyException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceInUseException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConditionalOperationFailedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record PropertyValidationException
    Message: string
    PropertyList: {PropertyValidationExceptionProperty}
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: ServiceQuotaExceededExceptionReason
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record InvalidTestCaseException
    Problems: {ProblemDetail}
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ConditionalOperationFailedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceInUseException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceInUseException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceInUseException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidRequestException
    Message: string
    Reason: InvalidRequestExceptionReason
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local type ViewStatus = "PUBLISHED" | "SAVED"

local type OverrideType = "STANDARD" | "OPEN" | "CLOSED"

local type DirectoryType = "SAML" | "CONNECT_MANAGED" | "EXISTING_DIRECTORY"

local type ContactMediaProcessingFailureMode = "DELIVER_UNPROCESSED_MESSAGE" | "DO_NOT_DELIVER_UNPROCESSED_MESSAGE"

local type FileUseCaseType = "CONTACT_ANALYSIS" | "EMAIL_MESSAGE" | "EMAIL_MESSAGE_PLAIN_TEXT" | "EMAIL_MESSAGE_REDACTED" | "EMAIL_MESSAGE_PLAIN_TEXT_REDACTED" | "ATTACHMENT"

local type FlowAssociationResourceType = "SMS_PHONE_NUMBER" | "INBOUND_EMAIL" | "OUTBOUND_EMAIL" | "ANALYTICS_CONNECTOR" | "WHATSAPP_MESSAGING_PHONE_NUMBER"

local type IntegrationType = "EVENT" | "VOICE_ID" | "PINPOINT_APP" | "WISDOM_ASSISTANT" | "WISDOM_KNOWLEDGE_BASE" | "WISDOM_QUICK_RESPONSES" | "Q_MESSAGE_TEMPLATES" | "CASES_DOMAIN" | "APPLICATION" | "FILE_SCANNER" | "SES_IDENTITY" | "ANALYTICS_CONNECTOR" | "CALL_TRANSFER_CONNECTOR" | "COGNITO_USER_POOL" | "MESSAGE_PROCESSOR"

local type DataTableStatus = "PUBLISHED"

local type RehydrationType = "ENTIRE_PAST_SESSION" | "FROM_SEGMENT"

local type AttachmentScope = "EMAIL" | "CHAT" | "CASE" | "TASK"

local type AgentStatusState = "ENABLED" | "DISABLED"

local type TaskTemplateStatus = "ACTIVE" | "INACTIVE"

local type TestCaseStatus = "PUBLISHED" | "SAVED"

local type ConfigurableNotificationPriority = "HIGH" | "LOW"

local type VocabularyState = "CREATION_IN_PROGRESS" | "ACTIVE" | "CREATION_FAILED" | "DELETE_IN_PROGRESS"

local type FileStatusType = "APPROVED" | "REJECTED" | "PROCESSING" | "FAILED"

local type RealTimeContactAnalysisStatus = "IN_PROGRESS" | "FAILED" | "COMPLETED"

local type PhoneNumberType = "TOLL_FREE" | "DID" | "UIFN" | "SHARED" | "THIRD_PARTY_TF" | "THIRD_PARTY_DID" | "SHORT_CODE"

local type InstanceAttributeType = "INBOUND_CALLS" | "OUTBOUND_CALLS" | "CONTACTFLOW_LOGS" | "CONTACT_LENS" | "AUTO_RESOLVE_BEST_VOICES" | "USE_CUSTOM_TTS_VOICES" | "EARLY_MEDIA" | "MULTI_PARTY_CONFERENCE" | "HIGH_VOLUME_OUTBOUND" | "ENHANCED_CONTACT_MONITORING" | "ENHANCED_CHAT_MONITORING" | "MULTI_PARTY_CHAT_CONFERENCE" | "MESSAGE_STREAMING"

local type ContactInitiationMethod = "INBOUND" | "OUTBOUND" | "TRANSFER" | "QUEUE_TRANSFER" | "CALLBACK" | "API" | "DISCONNECT" | "MONITOR" | "EXTERNAL_OUTBOUND" | "WEBRTC_API" | "AGENT_REPLY" | "FLOW"

local type ContactRecordingType = "AGENT" | "IVR" | "SCREEN"

local type NotificationStatus = "READ" | "UNREAD" | "HIDDEN"

local type VocabularyLanguageCode = "ar-AE" | "de-CH" | "de-DE" | "en-AB" | "en-AU" | "en-GB" | "en-IE" | "en-IN" | "en-US" | "en-WL" | "es-ES" | "es-US" | "fr-CA" | "fr-FR" | "hi-IN" | "it-IT" | "ja-JP" | "ko-KR" | "pt-BR" | "pt-PT" | "zh-CN" | "en-NZ" | "en-ZA" | "ca-ES" | "da-DK" | "fi-FI" | "id-ID" | "ms-MY" | "nl-NL" | "no-NO" | "pl-PL" | "sv-SE" | "tl-PH"

local type AgentAvailabilityTimer = "TIME_SINCE_LAST_ACTIVITY" | "TIME_SINCE_LAST_INBOUND"

local type DataTableAttributeValueType = "TEXT" | "NUMBER" | "BOOLEAN" | "TEXT_LIST" | "NUMBER_LIST"

local type TrafficType = "GENERAL" | "CAMPAIGN"

local type Channel = "VOICE" | "CHAT" | "TASK" | "EMAIL"

local type DataTableLockLevel = "NONE" | "DATA_TABLE" | "PRIMARY_VALUE" | "ATTRIBUTE" | "VALUE"

local type EntityType = "USER" | "AI_AGENT"

local type RealTimeContactAnalysisOutputType = "Raw" | "Redacted"

local type EventSourceName = "OnPostCallAnalysisAvailable" | "OnRealTimeCallAnalysisAvailable" | "OnRealTimeChatAnalysisAvailable" | "OnPostChatAnalysisAvailable" | "OnEmailAnalysisAvailable" | "OnZendeskTicketCreate" | "OnZendeskTicketStatusUpdate" | "OnSalesforceCaseCreate" | "OnContactEvaluationSubmit" | "OnMetricDataUpdate" | "OnCaseCreate" | "OnCaseUpdate" | "OnSlaBreach"

local type ListFlowAssociationResourceType = "WHATSAPP_MESSAGING_PHONE_NUMBER" | "VOICE_PHONE_NUMBER" | "INBOUND_EMAIL" | "OUTBOUND_EMAIL" | "ANALYTICS_CONNECTOR"

local type RulePublishStatus = "DRAFT" | "PUBLISHED"

local type LexVersion = "V1" | "V2"

local type InstanceStorageResourceType = "CHAT_TRANSCRIPTS" | "CALL_RECORDINGS" | "SCHEDULED_REPORTS" | "MEDIA_STREAMS" | "CONTACT_TRACE_RECORDS" | "AGENT_EVENTS" | "REAL_TIME_CONTACT_ANALYSIS_SEGMENTS" | "ATTACHMENTS" | "CONTACT_EVALUATIONS" | "SCREEN_RECORDINGS" | "REAL_TIME_CONTACT_ANALYSIS_CHAT_SEGMENTS" | "REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS" | "EMAIL_MESSAGES"

local type MediaType = "IMAGE_LOGO_LIGHT_FAVICON" | "IMAGE_LOGO_DARK_FAVICON" | "IMAGE_LOGO_LIGHT_HORIZONTAL" | "IMAGE_LOGO_DARK_HORIZONTAL"

local type DeviceType = "GCM" | "APNS" | "APNS_SANDBOX"

local type ContactFlowModuleState = "ACTIVE" | "ARCHIVED"

local type ViewType = "CUSTOMER_MANAGED" | "AWS_MANAGED"

local type ContactFlowState = "ACTIVE" | "ARCHIVED"

local type ContactFlowType = "CONTACT_FLOW" | "CUSTOMER_QUEUE" | "CUSTOMER_HOLD" | "CUSTOMER_WHISPER" | "AGENT_HOLD" | "AGENT_WHISPER" | "OUTBOUND_WHISPER" | "AGENT_TRANSFER" | "QUEUE_TRANSFER" | "CAMPAIGN"

local type InitiateAs = "CONNECTED_TO_USER" | "COMPLETED"

local type ContactFlowStatus = "PUBLISHED" | "SAVED"

local type Visibility = "ALL" | "ASSIGNED" | "NONE"

local type SourceType = "SALESFORCE" | "ZENDESK" | "CASES"

local type UseCaseType = "RULES_EVALUATION" | "CONNECT_CAMPAIGNS"

local type QueueStatus = "ENABLED" | "DISABLED"

local type TestCaseExecutionStatus = "INITIATED" | "PASSED" | "FAILED" | "IN_PROGRESS" | "STOPPED"

local type RealTimeContactAnalysisSupportedChannel = "VOICE" | "CHAT"

local type PhoneNumberCountryCode = "AF" | "AL" | "DZ" | "AS" | "AD" | "AO" | "AI" | "AQ" | "AG" | "AR" | "AM" | "AW" | "AU" | "AT" | "AZ" | "BS" | "BH" | "BD" | "BB" | "BY" | "BE" | "BZ" | "BJ" | "BM" | "BT" | "BO" | "BA" | "BW" | "BR" | "IO" | "VG" | "BN" | "BG" | "BF" | "BI" | "KH" | "CM" | "CA" | "CV" | "KY" | "CF" | "TD" | "CL" | "CN" | "CX" | "CC" | "CO" | "KM" | "CK" | "CR" | "HR" | "CU" | "CW" | "CY" | "CZ" | "CD" | "DK" | "DJ" | "DM" | "DO" | "TL" | "EC" | "EG" | "SV" | "GQ" | "ER" | "EE" | "ET" | "FK" | "FO" | "FJ" | "FI" | "FR" | "PF" | "GA" | "GM" | "GE" | "DE" | "GH" | "GI" | "GR" | "GL" | "GD" | "GU" | "GT" | "GG" | "GN" | "GW" | "GY" | "HT" | "HN" | "HK" | "HU" | "IS" | "IN" | "ID" | "IR" | "IQ" | "IE" | "IM" | "IL" | "IT" | "CI" | "JM" | "JP" | "JE" | "JO" | "KZ" | "KE" | "KI" | "KW" | "KG" | "LA" | "LV" | "LB" | "LS" | "LR" | "LY" | "LI" | "LT" | "LU" | "MO" | "MK" | "MG" | "MW" | "MY" | "MV" | "ML" | "MT" | "MH" | "MR" | "MU" | "YT" | "MX" | "FM" | "MD" | "MC" | "MN" | "ME" | "MS" | "MA" | "MZ" | "MM" | "NA" | "NR" | "NP" | "NL" | "AN" | "NC" | "NZ" | "NI" | "NE" | "NG" | "NU" | "KP" | "MP" | "NO" | "OM" | "PK" | "PW" | "PA" | "PG" | "PY" | "PE" | "PH" | "PN" | "PL" | "PT" | "PR" | "QA" | "CG" | "RE" | "RO" | "RU" | "RW" | "BL" | "SH" | "KN" | "LC" | "MF" | "PM" | "VC" | "WS" | "SM" | "ST" | "SA" | "SN" | "RS" | "SC" | "SL" | "SG" | "SX" | "SK" | "SI" | "SB" | "SO" | "ZA" | "KR" | "ES" | "LK" | "SD" | "SR" | "SJ" | "SZ" | "SE" | "CH" | "SY" | "TW" | "TJ" | "TZ" | "TH" | "TG" | "TK" | "TO" | "TT" | "TN" | "TR" | "TM" | "TC" | "TV" | "VI" | "UG" | "UA" | "AE" | "GB" | "US" | "UY" | "UZ" | "VU" | "VA" | "VE" | "VN" | "WF" | "EH" | "YE" | "ZM" | "ZW"

local record M
    ActivateEvaluationFormInput: ActivateEvaluationFormInput
    ActivateEvaluationFormOutput: ActivateEvaluationFormOutput
    AssociateAnalyticsDataSetInput: AssociateAnalyticsDataSetInput
    AssociateAnalyticsDataSetOutput: AssociateAnalyticsDataSetOutput
    AssociateApprovedOriginInput: AssociateApprovedOriginInput
    AssociateApprovedOriginOutput: AssociateApprovedOriginOutput
    AssociateBotInput: AssociateBotInput
    AssociateBotOutput: AssociateBotOutput
    AssociateContactWithUserInput: AssociateContactWithUserInput
    AssociateContactWithUserOutput: AssociateContactWithUserOutput
    AssociateDefaultVocabularyInput: AssociateDefaultVocabularyInput
    AssociateDefaultVocabularyOutput: AssociateDefaultVocabularyOutput
    AssociateEmailAddressAliasInput: AssociateEmailAddressAliasInput
    AssociateEmailAddressAliasOutput: AssociateEmailAddressAliasOutput
    AssociateFlowInput: AssociateFlowInput
    AssociateFlowOutput: AssociateFlowOutput
    AssociateHoursOfOperationsInput: AssociateHoursOfOperationsInput
    AssociateHoursOfOperationsOutput: AssociateHoursOfOperationsOutput
    AssociateInstanceStorageConfigInput: AssociateInstanceStorageConfigInput
    AssociateInstanceStorageConfigOutput: AssociateInstanceStorageConfigOutput
    AssociateLambdaFunctionInput: AssociateLambdaFunctionInput
    AssociateLambdaFunctionOutput: AssociateLambdaFunctionOutput
    AssociateLexBotInput: AssociateLexBotInput
    AssociateLexBotOutput: AssociateLexBotOutput
    AssociatePhoneNumberContactFlowInput: AssociatePhoneNumberContactFlowInput
    AssociatePhoneNumberContactFlowOutput: AssociatePhoneNumberContactFlowOutput
    AssociateQueueEmailAddressesInput: AssociateQueueEmailAddressesInput
    AssociateQueueEmailAddressesOutput: AssociateQueueEmailAddressesOutput
    AssociateQueueQuickConnectsInput: AssociateQueueQuickConnectsInput
    AssociateQueueQuickConnectsOutput: AssociateQueueQuickConnectsOutput
    AssociateRoutingProfileQueuesInput: AssociateRoutingProfileQueuesInput
    AssociateRoutingProfileQueuesOutput: AssociateRoutingProfileQueuesOutput
    AssociateSecurityKeyInput: AssociateSecurityKeyInput
    AssociateSecurityKeyOutput: AssociateSecurityKeyOutput
    AssociateSecurityProfilesInput: AssociateSecurityProfilesInput
    AssociateSecurityProfilesOutput: AssociateSecurityProfilesOutput
    AssociateTrafficDistributionGroupUserInput: AssociateTrafficDistributionGroupUserInput
    AssociateTrafficDistributionGroupUserOutput: AssociateTrafficDistributionGroupUserOutput
    AssociateUserProficienciesInput: AssociateUserProficienciesInput
    AssociateUserProficienciesOutput: AssociateUserProficienciesOutput
    AssociateWorkspaceInput: AssociateWorkspaceInput
    AssociateWorkspaceOutput: AssociateWorkspaceOutput
    BatchAssociateAnalyticsDataSetInput: BatchAssociateAnalyticsDataSetInput
    BatchAssociateAnalyticsDataSetOutput: BatchAssociateAnalyticsDataSetOutput
    BatchCreateDataTableValueInput: BatchCreateDataTableValueInput
    BatchCreateDataTableValueOutput: BatchCreateDataTableValueOutput
    BatchDeleteDataTableValueInput: BatchDeleteDataTableValueInput
    BatchDeleteDataTableValueOutput: BatchDeleteDataTableValueOutput
    BatchDescribeDataTableValueInput: BatchDescribeDataTableValueInput
    BatchDescribeDataTableValueOutput: BatchDescribeDataTableValueOutput
    BatchDisassociateAnalyticsDataSetInput: BatchDisassociateAnalyticsDataSetInput
    BatchDisassociateAnalyticsDataSetOutput: BatchDisassociateAnalyticsDataSetOutput
    BatchGetAttachedFileMetadataInput: BatchGetAttachedFileMetadataInput
    BatchGetAttachedFileMetadataOutput: BatchGetAttachedFileMetadataOutput
    BatchGetFlowAssociationInput: BatchGetFlowAssociationInput
    BatchGetFlowAssociationOutput: BatchGetFlowAssociationOutput
    BatchPutContactInput: BatchPutContactInput
    BatchPutContactOutput: BatchPutContactOutput
    BatchUpdateDataTableValueInput: BatchUpdateDataTableValueInput
    BatchUpdateDataTableValueOutput: BatchUpdateDataTableValueOutput
    ClaimPhoneNumberInput: ClaimPhoneNumberInput
    ClaimPhoneNumberOutput: ClaimPhoneNumberOutput
    CompleteAttachedFileUploadInput: CompleteAttachedFileUploadInput
    CompleteAttachedFileUploadOutput: CompleteAttachedFileUploadOutput
    CreateAgentStatusInput: CreateAgentStatusInput
    CreateAgentStatusOutput: CreateAgentStatusOutput
    CreateContactInput: CreateContactInput
    CreateContactOutput: CreateContactOutput
    CreateContactFlowInput: CreateContactFlowInput
    CreateContactFlowOutput: CreateContactFlowOutput
    CreateContactFlowModuleInput: CreateContactFlowModuleInput
    CreateContactFlowModuleOutput: CreateContactFlowModuleOutput
    CreateContactFlowModuleAliasInput: CreateContactFlowModuleAliasInput
    CreateContactFlowModuleAliasOutput: CreateContactFlowModuleAliasOutput
    CreateContactFlowModuleVersionInput: CreateContactFlowModuleVersionInput
    CreateContactFlowModuleVersionOutput: CreateContactFlowModuleVersionOutput
    CreateContactFlowVersionInput: CreateContactFlowVersionInput
    CreateContactFlowVersionOutput: CreateContactFlowVersionOutput
    CreateDataTableInput: CreateDataTableInput
    CreateDataTableOutput: CreateDataTableOutput
    CreateDataTableAttributeInput: CreateDataTableAttributeInput
    CreateDataTableAttributeOutput: CreateDataTableAttributeOutput
    CreateEmailAddressInput: CreateEmailAddressInput
    CreateEmailAddressOutput: CreateEmailAddressOutput
    CreateEvaluationFormInput: CreateEvaluationFormInput
    CreateEvaluationFormOutput: CreateEvaluationFormOutput
    CreateHoursOfOperationInput: CreateHoursOfOperationInput
    CreateHoursOfOperationOutput: CreateHoursOfOperationOutput
    CreateHoursOfOperationOverrideInput: CreateHoursOfOperationOverrideInput
    CreateHoursOfOperationOverrideOutput: CreateHoursOfOperationOverrideOutput
    CreateInstanceInput: CreateInstanceInput
    CreateInstanceOutput: CreateInstanceOutput
    CreateIntegrationAssociationInput: CreateIntegrationAssociationInput
    CreateIntegrationAssociationOutput: CreateIntegrationAssociationOutput
    CreateNotificationInput: CreateNotificationInput
    CreateNotificationOutput: CreateNotificationOutput
    CreateParticipantInput: CreateParticipantInput
    CreateParticipantOutput: CreateParticipantOutput
    CreatePersistentContactAssociationInput: CreatePersistentContactAssociationInput
    CreatePersistentContactAssociationOutput: CreatePersistentContactAssociationOutput
    CreatePredefinedAttributeInput: CreatePredefinedAttributeInput
    CreatePredefinedAttributeOutput: CreatePredefinedAttributeOutput
    CreatePromptInput: CreatePromptInput
    CreatePromptOutput: CreatePromptOutput
    CreatePushNotificationRegistrationInput: CreatePushNotificationRegistrationInput
    CreatePushNotificationRegistrationOutput: CreatePushNotificationRegistrationOutput
    CreateQueueInput: CreateQueueInput
    CreateQueueOutput: CreateQueueOutput
    CreateQuickConnectInput: CreateQuickConnectInput
    CreateQuickConnectOutput: CreateQuickConnectOutput
    CreateRoutingProfileInput: CreateRoutingProfileInput
    CreateRoutingProfileOutput: CreateRoutingProfileOutput
    CreateRuleInput: CreateRuleInput
    CreateRuleOutput: CreateRuleOutput
    CreateSecurityProfileInput: CreateSecurityProfileInput
    CreateSecurityProfileOutput: CreateSecurityProfileOutput
    CreateTaskTemplateInput: CreateTaskTemplateInput
    CreateTaskTemplateOutput: CreateTaskTemplateOutput
    CreateTestCaseInput: CreateTestCaseInput
    CreateTestCaseOutput: CreateTestCaseOutput
    CreateTrafficDistributionGroupInput: CreateTrafficDistributionGroupInput
    CreateTrafficDistributionGroupOutput: CreateTrafficDistributionGroupOutput
    CreateUseCaseInput: CreateUseCaseInput
    CreateUseCaseOutput: CreateUseCaseOutput
    CreateUserInput: CreateUserInput
    CreateUserOutput: CreateUserOutput
    CreateUserHierarchyGroupInput: CreateUserHierarchyGroupInput
    CreateUserHierarchyGroupOutput: CreateUserHierarchyGroupOutput
    CreateViewInput: CreateViewInput
    CreateViewOutput: CreateViewOutput
    CreateViewVersionInput: CreateViewVersionInput
    CreateViewVersionOutput: CreateViewVersionOutput
    CreateVocabularyInput: CreateVocabularyInput
    CreateVocabularyOutput: CreateVocabularyOutput
    CreateWorkspaceInput: CreateWorkspaceInput
    CreateWorkspaceOutput: CreateWorkspaceOutput
    CreateWorkspacePageInput: CreateWorkspacePageInput
    CreateWorkspacePageOutput: CreateWorkspacePageOutput
    DeactivateEvaluationFormInput: DeactivateEvaluationFormInput
    DeactivateEvaluationFormOutput: DeactivateEvaluationFormOutput
    DeleteAttachedFileInput: DeleteAttachedFileInput
    DeleteAttachedFileOutput: DeleteAttachedFileOutput
    DeleteContactEvaluationInput: DeleteContactEvaluationInput
    DeleteContactEvaluationOutput: DeleteContactEvaluationOutput
    DeleteContactFlowInput: DeleteContactFlowInput
    DeleteContactFlowOutput: DeleteContactFlowOutput
    DeleteContactFlowModuleInput: DeleteContactFlowModuleInput
    DeleteContactFlowModuleOutput: DeleteContactFlowModuleOutput
    DeleteContactFlowModuleAliasInput: DeleteContactFlowModuleAliasInput
    DeleteContactFlowModuleAliasOutput: DeleteContactFlowModuleAliasOutput
    DeleteContactFlowModuleVersionInput: DeleteContactFlowModuleVersionInput
    DeleteContactFlowModuleVersionOutput: DeleteContactFlowModuleVersionOutput
    DeleteContactFlowVersionInput: DeleteContactFlowVersionInput
    DeleteContactFlowVersionOutput: DeleteContactFlowVersionOutput
    DeleteDataTableInput: DeleteDataTableInput
    DeleteDataTableOutput: DeleteDataTableOutput
    DeleteDataTableAttributeInput: DeleteDataTableAttributeInput
    DeleteDataTableAttributeOutput: DeleteDataTableAttributeOutput
    DeleteEmailAddressInput: DeleteEmailAddressInput
    DeleteEmailAddressOutput: DeleteEmailAddressOutput
    DeleteEvaluationFormInput: DeleteEvaluationFormInput
    DeleteEvaluationFormOutput: DeleteEvaluationFormOutput
    DeleteHoursOfOperationInput: DeleteHoursOfOperationInput
    DeleteHoursOfOperationOutput: DeleteHoursOfOperationOutput
    DeleteHoursOfOperationOverrideInput: DeleteHoursOfOperationOverrideInput
    DeleteHoursOfOperationOverrideOutput: DeleteHoursOfOperationOverrideOutput
    DeleteInstanceInput: DeleteInstanceInput
    DeleteInstanceOutput: DeleteInstanceOutput
    DeleteIntegrationAssociationInput: DeleteIntegrationAssociationInput
    DeleteIntegrationAssociationOutput: DeleteIntegrationAssociationOutput
    DeleteNotificationInput: DeleteNotificationInput
    DeleteNotificationOutput: DeleteNotificationOutput
    DeletePredefinedAttributeInput: DeletePredefinedAttributeInput
    DeletePredefinedAttributeOutput: DeletePredefinedAttributeOutput
    DeletePromptInput: DeletePromptInput
    DeletePromptOutput: DeletePromptOutput
    DeletePushNotificationRegistrationInput: DeletePushNotificationRegistrationInput
    DeletePushNotificationRegistrationOutput: DeletePushNotificationRegistrationOutput
    DeleteQueueInput: DeleteQueueInput
    DeleteQueueOutput: DeleteQueueOutput
    DeleteQuickConnectInput: DeleteQuickConnectInput
    DeleteQuickConnectOutput: DeleteQuickConnectOutput
    DeleteRoutingProfileInput: DeleteRoutingProfileInput
    DeleteRoutingProfileOutput: DeleteRoutingProfileOutput
    DeleteRuleInput: DeleteRuleInput
    DeleteRuleOutput: DeleteRuleOutput
    DeleteSecurityProfileInput: DeleteSecurityProfileInput
    DeleteSecurityProfileOutput: DeleteSecurityProfileOutput
    DeleteTaskTemplateInput: DeleteTaskTemplateInput
    DeleteTaskTemplateOutput: DeleteTaskTemplateOutput
    DeleteTestCaseInput: DeleteTestCaseInput
    DeleteTestCaseOutput: DeleteTestCaseOutput
    DeleteTrafficDistributionGroupInput: DeleteTrafficDistributionGroupInput
    DeleteTrafficDistributionGroupOutput: DeleteTrafficDistributionGroupOutput
    DeleteUseCaseInput: DeleteUseCaseInput
    DeleteUseCaseOutput: DeleteUseCaseOutput
    DeleteUserInput: DeleteUserInput
    DeleteUserOutput: DeleteUserOutput
    DeleteUserHierarchyGroupInput: DeleteUserHierarchyGroupInput
    DeleteUserHierarchyGroupOutput: DeleteUserHierarchyGroupOutput
    DeleteViewInput: DeleteViewInput
    DeleteViewOutput: DeleteViewOutput
    DeleteViewVersionInput: DeleteViewVersionInput
    DeleteViewVersionOutput: DeleteViewVersionOutput
    DeleteVocabularyInput: DeleteVocabularyInput
    DeleteVocabularyOutput: DeleteVocabularyOutput
    DeleteWorkspaceInput: DeleteWorkspaceInput
    DeleteWorkspaceOutput: DeleteWorkspaceOutput
    DeleteWorkspaceMediaInput: DeleteWorkspaceMediaInput
    DeleteWorkspaceMediaOutput: DeleteWorkspaceMediaOutput
    DeleteWorkspacePageInput: DeleteWorkspacePageInput
    DeleteWorkspacePageOutput: DeleteWorkspacePageOutput
    DescribeAgentStatusInput: DescribeAgentStatusInput
    DescribeAgentStatusOutput: DescribeAgentStatusOutput
    DescribeAttachedFilesConfigurationInput: DescribeAttachedFilesConfigurationInput
    DescribeAttachedFilesConfigurationOutput: DescribeAttachedFilesConfigurationOutput
    DescribeAuthenticationProfileInput: DescribeAuthenticationProfileInput
    DescribeAuthenticationProfileOutput: DescribeAuthenticationProfileOutput
    DescribeContactInput: DescribeContactInput
    DescribeContactOutput: DescribeContactOutput
    DescribeContactEvaluationInput: DescribeContactEvaluationInput
    DescribeContactEvaluationOutput: DescribeContactEvaluationOutput
    DescribeContactFlowInput: DescribeContactFlowInput
    DescribeContactFlowOutput: DescribeContactFlowOutput
    DescribeContactFlowModuleInput: DescribeContactFlowModuleInput
    DescribeContactFlowModuleOutput: DescribeContactFlowModuleOutput
    DescribeContactFlowModuleAliasInput: DescribeContactFlowModuleAliasInput
    DescribeContactFlowModuleAliasOutput: DescribeContactFlowModuleAliasOutput
    DescribeDataTableInput: DescribeDataTableInput
    DescribeDataTableOutput: DescribeDataTableOutput
    DescribeDataTableAttributeInput: DescribeDataTableAttributeInput
    DescribeDataTableAttributeOutput: DescribeDataTableAttributeOutput
    DescribeEmailAddressInput: DescribeEmailAddressInput
    DescribeEmailAddressOutput: DescribeEmailAddressOutput
    DescribeEvaluationFormInput: DescribeEvaluationFormInput
    DescribeEvaluationFormOutput: DescribeEvaluationFormOutput
    DescribeHoursOfOperationInput: DescribeHoursOfOperationInput
    DescribeHoursOfOperationOutput: DescribeHoursOfOperationOutput
    DescribeHoursOfOperationOverrideInput: DescribeHoursOfOperationOverrideInput
    DescribeHoursOfOperationOverrideOutput: DescribeHoursOfOperationOverrideOutput
    DescribeInstanceInput: DescribeInstanceInput
    DescribeInstanceOutput: DescribeInstanceOutput
    DescribeInstanceAttributeInput: DescribeInstanceAttributeInput
    DescribeInstanceAttributeOutput: DescribeInstanceAttributeOutput
    DescribeInstanceStorageConfigInput: DescribeInstanceStorageConfigInput
    DescribeInstanceStorageConfigOutput: DescribeInstanceStorageConfigOutput
    DescribeNotificationInput: DescribeNotificationInput
    DescribeNotificationOutput: DescribeNotificationOutput
    DescribePhoneNumberInput: DescribePhoneNumberInput
    DescribePhoneNumberOutput: DescribePhoneNumberOutput
    DescribePredefinedAttributeInput: DescribePredefinedAttributeInput
    DescribePredefinedAttributeOutput: DescribePredefinedAttributeOutput
    DescribePromptInput: DescribePromptInput
    DescribePromptOutput: DescribePromptOutput
    DescribeQueueInput: DescribeQueueInput
    DescribeQueueOutput: DescribeQueueOutput
    DescribeQuickConnectInput: DescribeQuickConnectInput
    DescribeQuickConnectOutput: DescribeQuickConnectOutput
    DescribeRoutingProfileInput: DescribeRoutingProfileInput
    DescribeRoutingProfileOutput: DescribeRoutingProfileOutput
    DescribeRuleInput: DescribeRuleInput
    DescribeRuleOutput: DescribeRuleOutput
    DescribeSecurityProfileInput: DescribeSecurityProfileInput
    DescribeSecurityProfileOutput: DescribeSecurityProfileOutput
    DescribeTestCaseInput: DescribeTestCaseInput
    DescribeTestCaseOutput: DescribeTestCaseOutput
    DescribeTrafficDistributionGroupInput: DescribeTrafficDistributionGroupInput
    DescribeTrafficDistributionGroupOutput: DescribeTrafficDistributionGroupOutput
    DescribeUserInput: DescribeUserInput
    DescribeUserOutput: DescribeUserOutput
    DescribeUserHierarchyGroupInput: DescribeUserHierarchyGroupInput
    DescribeUserHierarchyGroupOutput: DescribeUserHierarchyGroupOutput
    DescribeUserHierarchyStructureInput: DescribeUserHierarchyStructureInput
    DescribeUserHierarchyStructureOutput: DescribeUserHierarchyStructureOutput
    DescribeViewInput: DescribeViewInput
    DescribeViewOutput: DescribeViewOutput
    DescribeVocabularyInput: DescribeVocabularyInput
    DescribeVocabularyOutput: DescribeVocabularyOutput
    DescribeWorkspaceInput: DescribeWorkspaceInput
    DescribeWorkspaceOutput: DescribeWorkspaceOutput
    DisassociateAnalyticsDataSetInput: DisassociateAnalyticsDataSetInput
    DisassociateAnalyticsDataSetOutput: DisassociateAnalyticsDataSetOutput
    DisassociateApprovedOriginInput: DisassociateApprovedOriginInput
    DisassociateApprovedOriginOutput: DisassociateApprovedOriginOutput
    DisassociateBotInput: DisassociateBotInput
    DisassociateBotOutput: DisassociateBotOutput
    DisassociateEmailAddressAliasInput: DisassociateEmailAddressAliasInput
    DisassociateEmailAddressAliasOutput: DisassociateEmailAddressAliasOutput
    DisassociateFlowInput: DisassociateFlowInput
    DisassociateFlowOutput: DisassociateFlowOutput
    DisassociateHoursOfOperationsInput: DisassociateHoursOfOperationsInput
    DisassociateHoursOfOperationsOutput: DisassociateHoursOfOperationsOutput
    DisassociateInstanceStorageConfigInput: DisassociateInstanceStorageConfigInput
    DisassociateInstanceStorageConfigOutput: DisassociateInstanceStorageConfigOutput
    DisassociateLambdaFunctionInput: DisassociateLambdaFunctionInput
    DisassociateLambdaFunctionOutput: DisassociateLambdaFunctionOutput
    DisassociateLexBotInput: DisassociateLexBotInput
    DisassociateLexBotOutput: DisassociateLexBotOutput
    DisassociatePhoneNumberContactFlowInput: DisassociatePhoneNumberContactFlowInput
    DisassociatePhoneNumberContactFlowOutput: DisassociatePhoneNumberContactFlowOutput
    DisassociateQueueEmailAddressesInput: DisassociateQueueEmailAddressesInput
    DisassociateQueueEmailAddressesOutput: DisassociateQueueEmailAddressesOutput
    DisassociateQueueQuickConnectsInput: DisassociateQueueQuickConnectsInput
    DisassociateQueueQuickConnectsOutput: DisassociateQueueQuickConnectsOutput
    DisassociateRoutingProfileQueuesInput: DisassociateRoutingProfileQueuesInput
    DisassociateRoutingProfileQueuesOutput: DisassociateRoutingProfileQueuesOutput
    DisassociateSecurityKeyInput: DisassociateSecurityKeyInput
    DisassociateSecurityKeyOutput: DisassociateSecurityKeyOutput
    DisassociateSecurityProfilesInput: DisassociateSecurityProfilesInput
    DisassociateSecurityProfilesOutput: DisassociateSecurityProfilesOutput
    DisassociateTrafficDistributionGroupUserInput: DisassociateTrafficDistributionGroupUserInput
    DisassociateTrafficDistributionGroupUserOutput: DisassociateTrafficDistributionGroupUserOutput
    DisassociateUserProficienciesInput: DisassociateUserProficienciesInput
    DisassociateUserProficienciesOutput: DisassociateUserProficienciesOutput
    DisassociateWorkspaceInput: DisassociateWorkspaceInput
    DisassociateWorkspaceOutput: DisassociateWorkspaceOutput
    DismissUserContactInput: DismissUserContactInput
    DismissUserContactOutput: DismissUserContactOutput
    EvaluateDataTableValuesInput: EvaluateDataTableValuesInput
    EvaluateDataTableValuesOutput: EvaluateDataTableValuesOutput
    GetAttachedFileInput: GetAttachedFileInput
    GetAttachedFileOutput: GetAttachedFileOutput
    GetContactAttributesInput: GetContactAttributesInput
    GetContactAttributesOutput: GetContactAttributesOutput
    GetContactMetricsInput: GetContactMetricsInput
    GetContactMetricsOutput: GetContactMetricsOutput
    GetCurrentMetricDataInput: GetCurrentMetricDataInput
    GetCurrentMetricDataOutput: GetCurrentMetricDataOutput
    GetCurrentUserDataInput: GetCurrentUserDataInput
    GetCurrentUserDataOutput: GetCurrentUserDataOutput
    GetEffectiveHoursOfOperationsInput: GetEffectiveHoursOfOperationsInput
    GetEffectiveHoursOfOperationsOutput: GetEffectiveHoursOfOperationsOutput
    GetFederationTokenInput: GetFederationTokenInput
    GetFederationTokenOutput: GetFederationTokenOutput
    GetFlowAssociationInput: GetFlowAssociationInput
    GetFlowAssociationOutput: GetFlowAssociationOutput
    GetMetricDataInput: GetMetricDataInput
    GetMetricDataOutput: GetMetricDataOutput
    GetMetricDataV2Input: GetMetricDataV2Input
    GetMetricDataV2Output: GetMetricDataV2Output
    GetPromptFileInput: GetPromptFileInput
    GetPromptFileOutput: GetPromptFileOutput
    GetTaskTemplateInput: GetTaskTemplateInput
    GetTaskTemplateOutput: GetTaskTemplateOutput
    GetTestCaseExecutionSummaryInput: GetTestCaseExecutionSummaryInput
    GetTestCaseExecutionSummaryOutput: GetTestCaseExecutionSummaryOutput
    GetTrafficDistributionInput: GetTrafficDistributionInput
    GetTrafficDistributionOutput: GetTrafficDistributionOutput
    ImportPhoneNumberInput: ImportPhoneNumberInput
    ImportPhoneNumberOutput: ImportPhoneNumberOutput
    ImportWorkspaceMediaInput: ImportWorkspaceMediaInput
    ImportWorkspaceMediaOutput: ImportWorkspaceMediaOutput
    ListAgentStatusesInput: ListAgentStatusesInput
    ListAgentStatusesOutput: ListAgentStatusesOutput
    ListAnalyticsDataAssociationsInput: ListAnalyticsDataAssociationsInput
    ListAnalyticsDataAssociationsOutput: ListAnalyticsDataAssociationsOutput
    ListAnalyticsDataLakeDataSetsInput: ListAnalyticsDataLakeDataSetsInput
    ListAnalyticsDataLakeDataSetsOutput: ListAnalyticsDataLakeDataSetsOutput
    ListApprovedOriginsInput: ListApprovedOriginsInput
    ListApprovedOriginsOutput: ListApprovedOriginsOutput
    ListAssociatedContactsInput: ListAssociatedContactsInput
    ListAssociatedContactsOutput: ListAssociatedContactsOutput
    ListAttachedFilesConfigurationsInput: ListAttachedFilesConfigurationsInput
    ListAttachedFilesConfigurationsOutput: ListAttachedFilesConfigurationsOutput
    ListAuthenticationProfilesInput: ListAuthenticationProfilesInput
    ListAuthenticationProfilesOutput: ListAuthenticationProfilesOutput
    ListBotsInput: ListBotsInput
    ListBotsOutput: ListBotsOutput
    ListChildHoursOfOperationsInput: ListChildHoursOfOperationsInput
    ListChildHoursOfOperationsOutput: ListChildHoursOfOperationsOutput
    ListContactEvaluationsInput: ListContactEvaluationsInput
    ListContactEvaluationsOutput: ListContactEvaluationsOutput
    ListContactFlowModuleAliasesInput: ListContactFlowModuleAliasesInput
    ListContactFlowModuleAliasesOutput: ListContactFlowModuleAliasesOutput
    ListContactFlowModulesInput: ListContactFlowModulesInput
    ListContactFlowModulesOutput: ListContactFlowModulesOutput
    ListContactFlowModuleVersionsInput: ListContactFlowModuleVersionsInput
    ListContactFlowModuleVersionsOutput: ListContactFlowModuleVersionsOutput
    ListContactFlowsInput: ListContactFlowsInput
    ListContactFlowsOutput: ListContactFlowsOutput
    ListContactFlowVersionsInput: ListContactFlowVersionsInput
    ListContactFlowVersionsOutput: ListContactFlowVersionsOutput
    ListContactReferencesInput: ListContactReferencesInput
    ListContactReferencesOutput: ListContactReferencesOutput
    ListDataTableAttributesInput: ListDataTableAttributesInput
    ListDataTableAttributesOutput: ListDataTableAttributesOutput
    ListDataTablePrimaryValuesInput: ListDataTablePrimaryValuesInput
    ListDataTablePrimaryValuesOutput: ListDataTablePrimaryValuesOutput
    ListDataTablesInput: ListDataTablesInput
    ListDataTablesOutput: ListDataTablesOutput
    ListDataTableValuesInput: ListDataTableValuesInput
    ListDataTableValuesOutput: ListDataTableValuesOutput
    ListDefaultVocabulariesInput: ListDefaultVocabulariesInput
    ListDefaultVocabulariesOutput: ListDefaultVocabulariesOutput
    ListEntitySecurityProfilesInput: ListEntitySecurityProfilesInput
    ListEntitySecurityProfilesOutput: ListEntitySecurityProfilesOutput
    ListEvaluationFormsInput: ListEvaluationFormsInput
    ListEvaluationFormsOutput: ListEvaluationFormsOutput
    ListEvaluationFormVersionsInput: ListEvaluationFormVersionsInput
    ListEvaluationFormVersionsOutput: ListEvaluationFormVersionsOutput
    ListFlowAssociationsInput: ListFlowAssociationsInput
    ListFlowAssociationsOutput: ListFlowAssociationsOutput
    ListHoursOfOperationOverridesInput: ListHoursOfOperationOverridesInput
    ListHoursOfOperationOverridesOutput: ListHoursOfOperationOverridesOutput
    ListHoursOfOperationsInput: ListHoursOfOperationsInput
    ListHoursOfOperationsOutput: ListHoursOfOperationsOutput
    ListInstanceAttributesInput: ListInstanceAttributesInput
    ListInstanceAttributesOutput: ListInstanceAttributesOutput
    ListInstancesInput: ListInstancesInput
    ListInstancesOutput: ListInstancesOutput
    ListInstanceStorageConfigsInput: ListInstanceStorageConfigsInput
    ListInstanceStorageConfigsOutput: ListInstanceStorageConfigsOutput
    ListIntegrationAssociationsInput: ListIntegrationAssociationsInput
    ListIntegrationAssociationsOutput: ListIntegrationAssociationsOutput
    ListLambdaFunctionsInput: ListLambdaFunctionsInput
    ListLambdaFunctionsOutput: ListLambdaFunctionsOutput
    ListLexBotsInput: ListLexBotsInput
    ListLexBotsOutput: ListLexBotsOutput
    ListNotificationsInput: ListNotificationsInput
    ListNotificationsOutput: ListNotificationsOutput
    ListPhoneNumbersInput: ListPhoneNumbersInput
    ListPhoneNumbersOutput: ListPhoneNumbersOutput
    ListPhoneNumbersV2Input: ListPhoneNumbersV2Input
    ListPhoneNumbersV2Output: ListPhoneNumbersV2Output
    ListPredefinedAttributesInput: ListPredefinedAttributesInput
    ListPredefinedAttributesOutput: ListPredefinedAttributesOutput
    ListPromptsInput: ListPromptsInput
    ListPromptsOutput: ListPromptsOutput
    ListQueueEmailAddressesInput: ListQueueEmailAddressesInput
    ListQueueEmailAddressesOutput: ListQueueEmailAddressesOutput
    ListQueueQuickConnectsInput: ListQueueQuickConnectsInput
    ListQueueQuickConnectsOutput: ListQueueQuickConnectsOutput
    ListQueuesInput: ListQueuesInput
    ListQueuesOutput: ListQueuesOutput
    ListQuickConnectsInput: ListQuickConnectsInput
    ListQuickConnectsOutput: ListQuickConnectsOutput
    ListRealtimeContactAnalysisSegmentsV2Input: ListRealtimeContactAnalysisSegmentsV2Input
    ListRealtimeContactAnalysisSegmentsV2Output: ListRealtimeContactAnalysisSegmentsV2Output
    ListRoutingProfileManualAssignmentQueuesInput: ListRoutingProfileManualAssignmentQueuesInput
    ListRoutingProfileManualAssignmentQueuesOutput: ListRoutingProfileManualAssignmentQueuesOutput
    ListRoutingProfileQueuesInput: ListRoutingProfileQueuesInput
    ListRoutingProfileQueuesOutput: ListRoutingProfileQueuesOutput
    ListRoutingProfilesInput: ListRoutingProfilesInput
    ListRoutingProfilesOutput: ListRoutingProfilesOutput
    ListRulesInput: ListRulesInput
    ListRulesOutput: ListRulesOutput
    ListSecurityKeysInput: ListSecurityKeysInput
    ListSecurityKeysOutput: ListSecurityKeysOutput
    ListSecurityProfileApplicationsInput: ListSecurityProfileApplicationsInput
    ListSecurityProfileApplicationsOutput: ListSecurityProfileApplicationsOutput
    ListSecurityProfileFlowModulesInput: ListSecurityProfileFlowModulesInput
    ListSecurityProfileFlowModulesOutput: ListSecurityProfileFlowModulesOutput
    ListSecurityProfilePermissionsInput: ListSecurityProfilePermissionsInput
    ListSecurityProfilePermissionsOutput: ListSecurityProfilePermissionsOutput
    ListSecurityProfilesInput: ListSecurityProfilesInput
    ListSecurityProfilesOutput: ListSecurityProfilesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTaskTemplatesInput: ListTaskTemplatesInput
    ListTaskTemplatesOutput: ListTaskTemplatesOutput
    ListTestCaseExecutionRecordsInput: ListTestCaseExecutionRecordsInput
    ListTestCaseExecutionRecordsOutput: ListTestCaseExecutionRecordsOutput
    ListTestCaseExecutionsInput: ListTestCaseExecutionsInput
    ListTestCaseExecutionsOutput: ListTestCaseExecutionsOutput
    ListTestCasesInput: ListTestCasesInput
    ListTestCasesOutput: ListTestCasesOutput
    ListTrafficDistributionGroupsInput: ListTrafficDistributionGroupsInput
    ListTrafficDistributionGroupsOutput: ListTrafficDistributionGroupsOutput
    ListTrafficDistributionGroupUsersInput: ListTrafficDistributionGroupUsersInput
    ListTrafficDistributionGroupUsersOutput: ListTrafficDistributionGroupUsersOutput
    ListUseCasesInput: ListUseCasesInput
    ListUseCasesOutput: ListUseCasesOutput
    ListUserHierarchyGroupsInput: ListUserHierarchyGroupsInput
    ListUserHierarchyGroupsOutput: ListUserHierarchyGroupsOutput
    ListUserNotificationsInput: ListUserNotificationsInput
    ListUserNotificationsOutput: ListUserNotificationsOutput
    ListUserProficienciesInput: ListUserProficienciesInput
    ListUserProficienciesOutput: ListUserProficienciesOutput
    ListUsersInput: ListUsersInput
    ListUsersOutput: ListUsersOutput
    ListViewsInput: ListViewsInput
    ListViewsOutput: ListViewsOutput
    ListViewVersionsInput: ListViewVersionsInput
    ListViewVersionsOutput: ListViewVersionsOutput
    ListWorkspaceMediaInput: ListWorkspaceMediaInput
    ListWorkspaceMediaOutput: ListWorkspaceMediaOutput
    ListWorkspacePagesInput: ListWorkspacePagesInput
    ListWorkspacePagesOutput: ListWorkspacePagesOutput
    ListWorkspacesInput: ListWorkspacesInput
    ListWorkspacesOutput: ListWorkspacesOutput
    MonitorContactInput: MonitorContactInput
    MonitorContactOutput: MonitorContactOutput
    PauseContactInput: PauseContactInput
    PauseContactOutput: PauseContactOutput
    PutUserStatusInput: PutUserStatusInput
    PutUserStatusOutput: PutUserStatusOutput
    ReleasePhoneNumberInput: ReleasePhoneNumberInput
    ReleasePhoneNumberOutput: ReleasePhoneNumberOutput
    ReplicateInstanceInput: ReplicateInstanceInput
    ReplicateInstanceOutput: ReplicateInstanceOutput
    ResumeContactInput: ResumeContactInput
    ResumeContactOutput: ResumeContactOutput
    ResumeContactRecordingInput: ResumeContactRecordingInput
    ResumeContactRecordingOutput: ResumeContactRecordingOutput
    SearchAgentStatusesInput: SearchAgentStatusesInput
    SearchAgentStatusesOutput: SearchAgentStatusesOutput
    SearchAvailablePhoneNumbersInput: SearchAvailablePhoneNumbersInput
    SearchAvailablePhoneNumbersOutput: SearchAvailablePhoneNumbersOutput
    SearchContactEvaluationsInput: SearchContactEvaluationsInput
    SearchContactEvaluationsOutput: SearchContactEvaluationsOutput
    SearchContactFlowModulesInput: SearchContactFlowModulesInput
    SearchContactFlowModulesOutput: SearchContactFlowModulesOutput
    SearchContactFlowsInput: SearchContactFlowsInput
    SearchContactFlowsOutput: SearchContactFlowsOutput
    SearchContactsInput: SearchContactsInput
    SearchContactsOutput: SearchContactsOutput
    SearchDataTablesInput: SearchDataTablesInput
    SearchDataTablesOutput: SearchDataTablesOutput
    SearchEmailAddressesInput: SearchEmailAddressesInput
    SearchEmailAddressesOutput: SearchEmailAddressesOutput
    SearchEvaluationFormsInput: SearchEvaluationFormsInput
    SearchEvaluationFormsOutput: SearchEvaluationFormsOutput
    SearchHoursOfOperationOverridesInput: SearchHoursOfOperationOverridesInput
    SearchHoursOfOperationOverridesOutput: SearchHoursOfOperationOverridesOutput
    SearchHoursOfOperationsInput: SearchHoursOfOperationsInput
    SearchHoursOfOperationsOutput: SearchHoursOfOperationsOutput
    SearchNotificationsInput: SearchNotificationsInput
    SearchNotificationsOutput: SearchNotificationsOutput
    SearchPredefinedAttributesInput: SearchPredefinedAttributesInput
    SearchPredefinedAttributesOutput: SearchPredefinedAttributesOutput
    SearchPromptsInput: SearchPromptsInput
    SearchPromptsOutput: SearchPromptsOutput
    SearchQueuesInput: SearchQueuesInput
    SearchQueuesOutput: SearchQueuesOutput
    SearchQuickConnectsInput: SearchQuickConnectsInput
    SearchQuickConnectsOutput: SearchQuickConnectsOutput
    SearchResourceTagsInput: SearchResourceTagsInput
    SearchResourceTagsOutput: SearchResourceTagsOutput
    SearchRoutingProfilesInput: SearchRoutingProfilesInput
    SearchRoutingProfilesOutput: SearchRoutingProfilesOutput
    SearchSecurityProfilesInput: SearchSecurityProfilesInput
    SearchSecurityProfilesOutput: SearchSecurityProfilesOutput
    SearchTestCasesInput: SearchTestCasesInput
    SearchTestCasesOutput: SearchTestCasesOutput
    SearchUserHierarchyGroupsInput: SearchUserHierarchyGroupsInput
    SearchUserHierarchyGroupsOutput: SearchUserHierarchyGroupsOutput
    SearchUsersInput: SearchUsersInput
    SearchUsersOutput: SearchUsersOutput
    SearchViewsInput: SearchViewsInput
    SearchViewsOutput: SearchViewsOutput
    SearchVocabulariesInput: SearchVocabulariesInput
    SearchVocabulariesOutput: SearchVocabulariesOutput
    SearchWorkspaceAssociationsInput: SearchWorkspaceAssociationsInput
    SearchWorkspaceAssociationsOutput: SearchWorkspaceAssociationsOutput
    SearchWorkspacesInput: SearchWorkspacesInput
    SearchWorkspacesOutput: SearchWorkspacesOutput
    SendChatIntegrationEventInput: SendChatIntegrationEventInput
    SendChatIntegrationEventOutput: SendChatIntegrationEventOutput
    SendOutboundEmailInput: SendOutboundEmailInput
    SendOutboundEmailOutput: SendOutboundEmailOutput
    StartAttachedFileUploadInput: StartAttachedFileUploadInput
    StartAttachedFileUploadOutput: StartAttachedFileUploadOutput
    StartChatContactInput: StartChatContactInput
    StartChatContactOutput: StartChatContactOutput
    StartContactEvaluationInput: StartContactEvaluationInput
    StartContactEvaluationOutput: StartContactEvaluationOutput
    StartContactMediaProcessingInput: StartContactMediaProcessingInput
    StartContactMediaProcessingOutput: StartContactMediaProcessingOutput
    StartContactRecordingInput: StartContactRecordingInput
    StartContactRecordingOutput: StartContactRecordingOutput
    StartContactStreamingInput: StartContactStreamingInput
    StartContactStreamingOutput: StartContactStreamingOutput
    StartEmailContactInput: StartEmailContactInput
    StartEmailContactOutput: StartEmailContactOutput
    StartOutboundChatContactInput: StartOutboundChatContactInput
    StartOutboundChatContactOutput: StartOutboundChatContactOutput
    StartOutboundEmailContactInput: StartOutboundEmailContactInput
    StartOutboundEmailContactOutput: StartOutboundEmailContactOutput
    StartOutboundVoiceContactInput: StartOutboundVoiceContactInput
    StartOutboundVoiceContactOutput: StartOutboundVoiceContactOutput
    StartScreenSharingInput: StartScreenSharingInput
    StartScreenSharingOutput: StartScreenSharingOutput
    StartTaskContactInput: StartTaskContactInput
    StartTaskContactOutput: StartTaskContactOutput
    StartTestCaseExecutionInput: StartTestCaseExecutionInput
    StartTestCaseExecutionOutput: StartTestCaseExecutionOutput
    StartWebRTCContactInput: StartWebRTCContactInput
    StartWebRTCContactOutput: StartWebRTCContactOutput
    StopContactInput: StopContactInput
    StopContactOutput: StopContactOutput
    StopContactMediaProcessingInput: StopContactMediaProcessingInput
    StopContactMediaProcessingOutput: StopContactMediaProcessingOutput
    StopContactRecordingInput: StopContactRecordingInput
    StopContactRecordingOutput: StopContactRecordingOutput
    StopContactStreamingInput: StopContactStreamingInput
    StopContactStreamingOutput: StopContactStreamingOutput
    StopTestCaseExecutionInput: StopTestCaseExecutionInput
    StopTestCaseExecutionOutput: StopTestCaseExecutionOutput
    SubmitContactEvaluationInput: SubmitContactEvaluationInput
    SubmitContactEvaluationOutput: SubmitContactEvaluationOutput
    SuspendContactRecordingInput: SuspendContactRecordingInput
    SuspendContactRecordingOutput: SuspendContactRecordingOutput
    TagContactInput: TagContactInput
    TagContactOutput: TagContactOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    TransferContactInput: TransferContactInput
    TransferContactOutput: TransferContactOutput
    UntagContactInput: UntagContactInput
    UntagContactOutput: UntagContactOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAgentStatusInput: UpdateAgentStatusInput
    UpdateAgentStatusOutput: UpdateAgentStatusOutput
    UpdateAttachedFilesConfigurationInput: UpdateAttachedFilesConfigurationInput
    UpdateAttachedFilesConfigurationOutput: UpdateAttachedFilesConfigurationOutput
    UpdateAuthenticationProfileInput: UpdateAuthenticationProfileInput
    UpdateAuthenticationProfileOutput: UpdateAuthenticationProfileOutput
    UpdateContactInput: UpdateContactInput
    UpdateContactOutput: UpdateContactOutput
    UpdateContactAttributesInput: UpdateContactAttributesInput
    UpdateContactAttributesOutput: UpdateContactAttributesOutput
    UpdateContactEvaluationInput: UpdateContactEvaluationInput
    UpdateContactEvaluationOutput: UpdateContactEvaluationOutput
    UpdateContactFlowContentInput: UpdateContactFlowContentInput
    UpdateContactFlowContentOutput: UpdateContactFlowContentOutput
    UpdateContactFlowMetadataInput: UpdateContactFlowMetadataInput
    UpdateContactFlowMetadataOutput: UpdateContactFlowMetadataOutput
    UpdateContactFlowModuleAliasInput: UpdateContactFlowModuleAliasInput
    UpdateContactFlowModuleAliasOutput: UpdateContactFlowModuleAliasOutput
    UpdateContactFlowModuleContentInput: UpdateContactFlowModuleContentInput
    UpdateContactFlowModuleContentOutput: UpdateContactFlowModuleContentOutput
    UpdateContactFlowModuleMetadataInput: UpdateContactFlowModuleMetadataInput
    UpdateContactFlowModuleMetadataOutput: UpdateContactFlowModuleMetadataOutput
    UpdateContactFlowNameInput: UpdateContactFlowNameInput
    UpdateContactFlowNameOutput: UpdateContactFlowNameOutput
    UpdateContactRoutingDataInput: UpdateContactRoutingDataInput
    UpdateContactRoutingDataOutput: UpdateContactRoutingDataOutput
    UpdateContactScheduleInput: UpdateContactScheduleInput
    UpdateContactScheduleOutput: UpdateContactScheduleOutput
    UpdateDataTableAttributeInput: UpdateDataTableAttributeInput
    UpdateDataTableAttributeOutput: UpdateDataTableAttributeOutput
    UpdateDataTableMetadataInput: UpdateDataTableMetadataInput
    UpdateDataTableMetadataOutput: UpdateDataTableMetadataOutput
    UpdateDataTablePrimaryValuesInput: UpdateDataTablePrimaryValuesInput
    UpdateDataTablePrimaryValuesOutput: UpdateDataTablePrimaryValuesOutput
    UpdateEmailAddressMetadataInput: UpdateEmailAddressMetadataInput
    UpdateEmailAddressMetadataOutput: UpdateEmailAddressMetadataOutput
    UpdateEvaluationFormInput: UpdateEvaluationFormInput
    UpdateEvaluationFormOutput: UpdateEvaluationFormOutput
    UpdateHoursOfOperationInput: UpdateHoursOfOperationInput
    UpdateHoursOfOperationOutput: UpdateHoursOfOperationOutput
    UpdateHoursOfOperationOverrideInput: UpdateHoursOfOperationOverrideInput
    UpdateHoursOfOperationOverrideOutput: UpdateHoursOfOperationOverrideOutput
    UpdateInstanceAttributeInput: UpdateInstanceAttributeInput
    UpdateInstanceAttributeOutput: UpdateInstanceAttributeOutput
    UpdateInstanceStorageConfigInput: UpdateInstanceStorageConfigInput
    UpdateInstanceStorageConfigOutput: UpdateInstanceStorageConfigOutput
    UpdateNotificationContentInput: UpdateNotificationContentInput
    UpdateNotificationContentOutput: UpdateNotificationContentOutput
    UpdateParticipantAuthenticationInput: UpdateParticipantAuthenticationInput
    UpdateParticipantAuthenticationOutput: UpdateParticipantAuthenticationOutput
    UpdateParticipantRoleConfigInput: UpdateParticipantRoleConfigInput
    UpdateParticipantRoleConfigOutput: UpdateParticipantRoleConfigOutput
    UpdatePhoneNumberInput: UpdatePhoneNumberInput
    UpdatePhoneNumberOutput: UpdatePhoneNumberOutput
    UpdatePhoneNumberMetadataInput: UpdatePhoneNumberMetadataInput
    UpdatePhoneNumberMetadataOutput: UpdatePhoneNumberMetadataOutput
    UpdatePredefinedAttributeInput: UpdatePredefinedAttributeInput
    UpdatePredefinedAttributeOutput: UpdatePredefinedAttributeOutput
    UpdatePromptInput: UpdatePromptInput
    UpdatePromptOutput: UpdatePromptOutput
    UpdateQueueHoursOfOperationInput: UpdateQueueHoursOfOperationInput
    UpdateQueueHoursOfOperationOutput: UpdateQueueHoursOfOperationOutput
    UpdateQueueMaxContactsInput: UpdateQueueMaxContactsInput
    UpdateQueueMaxContactsOutput: UpdateQueueMaxContactsOutput
    UpdateQueueNameInput: UpdateQueueNameInput
    UpdateQueueNameOutput: UpdateQueueNameOutput
    UpdateQueueOutboundCallerConfigInput: UpdateQueueOutboundCallerConfigInput
    UpdateQueueOutboundCallerConfigOutput: UpdateQueueOutboundCallerConfigOutput
    UpdateQueueOutboundEmailConfigInput: UpdateQueueOutboundEmailConfigInput
    UpdateQueueOutboundEmailConfigOutput: UpdateQueueOutboundEmailConfigOutput
    UpdateQueueStatusInput: UpdateQueueStatusInput
    UpdateQueueStatusOutput: UpdateQueueStatusOutput
    UpdateQuickConnectConfigInput: UpdateQuickConnectConfigInput
    UpdateQuickConnectConfigOutput: UpdateQuickConnectConfigOutput
    UpdateQuickConnectNameInput: UpdateQuickConnectNameInput
    UpdateQuickConnectNameOutput: UpdateQuickConnectNameOutput
    UpdateRoutingProfileAgentAvailabilityTimerInput: UpdateRoutingProfileAgentAvailabilityTimerInput
    UpdateRoutingProfileAgentAvailabilityTimerOutput: UpdateRoutingProfileAgentAvailabilityTimerOutput
    UpdateRoutingProfileConcurrencyInput: UpdateRoutingProfileConcurrencyInput
    UpdateRoutingProfileConcurrencyOutput: UpdateRoutingProfileConcurrencyOutput
    UpdateRoutingProfileDefaultOutboundQueueInput: UpdateRoutingProfileDefaultOutboundQueueInput
    UpdateRoutingProfileDefaultOutboundQueueOutput: UpdateRoutingProfileDefaultOutboundQueueOutput
    UpdateRoutingProfileNameInput: UpdateRoutingProfileNameInput
    UpdateRoutingProfileNameOutput: UpdateRoutingProfileNameOutput
    UpdateRoutingProfileQueuesInput: UpdateRoutingProfileQueuesInput
    UpdateRoutingProfileQueuesOutput: UpdateRoutingProfileQueuesOutput
    UpdateRuleInput: UpdateRuleInput
    UpdateRuleOutput: UpdateRuleOutput
    UpdateSecurityProfileInput: UpdateSecurityProfileInput
    UpdateSecurityProfileOutput: UpdateSecurityProfileOutput
    UpdateTaskTemplateInput: UpdateTaskTemplateInput
    UpdateTaskTemplateOutput: UpdateTaskTemplateOutput
    UpdateTestCaseInput: UpdateTestCaseInput
    UpdateTestCaseOutput: UpdateTestCaseOutput
    UpdateTrafficDistributionInput: UpdateTrafficDistributionInput
    UpdateTrafficDistributionOutput: UpdateTrafficDistributionOutput
    UpdateUserConfigInput: UpdateUserConfigInput
    UpdateUserConfigOutput: UpdateUserConfigOutput
    UpdateUserHierarchyInput: UpdateUserHierarchyInput
    UpdateUserHierarchyOutput: UpdateUserHierarchyOutput
    UpdateUserHierarchyGroupNameInput: UpdateUserHierarchyGroupNameInput
    UpdateUserHierarchyGroupNameOutput: UpdateUserHierarchyGroupNameOutput
    UpdateUserHierarchyStructureInput: UpdateUserHierarchyStructureInput
    UpdateUserHierarchyStructureOutput: UpdateUserHierarchyStructureOutput
    UpdateUserIdentityInfoInput: UpdateUserIdentityInfoInput
    UpdateUserIdentityInfoOutput: UpdateUserIdentityInfoOutput
    UpdateUserNotificationStatusInput: UpdateUserNotificationStatusInput
    UpdateUserNotificationStatusOutput: UpdateUserNotificationStatusOutput
    UpdateUserPhoneConfigInput: UpdateUserPhoneConfigInput
    UpdateUserPhoneConfigOutput: UpdateUserPhoneConfigOutput
    UpdateUserProficienciesInput: UpdateUserProficienciesInput
    UpdateUserProficienciesOutput: UpdateUserProficienciesOutput
    UpdateUserRoutingProfileInput: UpdateUserRoutingProfileInput
    UpdateUserRoutingProfileOutput: UpdateUserRoutingProfileOutput
    UpdateUserSecurityProfilesInput: UpdateUserSecurityProfilesInput
    UpdateUserSecurityProfilesOutput: UpdateUserSecurityProfilesOutput
    UpdateViewContentInput: UpdateViewContentInput
    UpdateViewContentOutput: UpdateViewContentOutput
    UpdateViewMetadataInput: UpdateViewMetadataInput
    UpdateViewMetadataOutput: UpdateViewMetadataOutput
    UpdateWorkspaceMetadataInput: UpdateWorkspaceMetadataInput
    UpdateWorkspaceMetadataOutput: UpdateWorkspaceMetadataOutput
    UpdateWorkspacePageInput: UpdateWorkspacePageInput
    UpdateWorkspacePageOutput: UpdateWorkspacePageOutput
    UpdateWorkspaceThemeInput: UpdateWorkspaceThemeInput
    UpdateWorkspaceThemeOutput: UpdateWorkspaceThemeOutput
    UpdateWorkspaceVisibilityInput: UpdateWorkspaceVisibilityInput
    UpdateWorkspaceVisibilityOutput: UpdateWorkspaceVisibilityOutput
end

return M
