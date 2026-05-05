local record AddProfileKeyInput
    ProfileId: string
    KeyName: string
    Values: {string}
    DomainName: string
end

local record AddProfileKeyOutput
    KeyName: string
    Values: {string}
end

local record BatchGetCalculatedAttributeForProfileInput
    CalculatedAttributeName: string
    DomainName: string
    ProfileIds: {string}
    ConditionOverrides: ConditionOverrides
end

local record BatchGetCalculatedAttributeForProfileOutput
    Errors: {BatchGetCalculatedAttributeForProfileError}
    CalculatedAttributeValues: {CalculatedAttributeValue}
    ConditionOverrides: ConditionOverrides
end

local record BatchGetProfileInput
    DomainName: string
    ProfileIds: {string}
end

local record BatchGetProfileOutput
    Errors: {BatchGetProfileError}
    Profiles: {Profile}
end

local record CreateCalculatedAttributeDefinitionInput
    DomainName: string
    CalculatedAttributeName: string
    DisplayName: string
    Description: string
    AttributeDetails: AttributeDetails
    Conditions: Conditions
    Filter: Filter
    Statistic: string
    UseHistoricalData: boolean
    Tags: {string : string}
end

local record CreateCalculatedAttributeDefinitionOutput
    CalculatedAttributeName: string
    DisplayName: string
    Description: string
    AttributeDetails: AttributeDetails
    Conditions: Conditions
    Filter: Filter
    Statistic: string
    CreatedAt: number
    LastUpdatedAt: number
    UseHistoricalData: boolean
    Status: string
    Readiness: Readiness
    Tags: {string : string}
end

local record CreateDomainInput
    DomainName: string
    DefaultExpirationDays: number
    DefaultEncryptionKey: string
    DeadLetterQueueUrl: string
    Matching: MatchingRequest
    RuleBasedMatching: RuleBasedMatchingRequest
    DataStore: DataStoreRequest
    Tags: {string : string}
end

local record CreateDomainOutput
    DomainName: string
    DefaultExpirationDays: number
    DefaultEncryptionKey: string
    DeadLetterQueueUrl: string
    Matching: MatchingResponse
    RuleBasedMatching: RuleBasedMatchingResponse
    DataStore: DataStoreResponse
    CreatedAt: number
    LastUpdatedAt: number
    Tags: {string : string}
end

local record CreateDomainLayoutInput
    DomainName: string
    LayoutDefinitionName: string
    Description: string
    DisplayName: string
    IsDefault: boolean
    LayoutType: string
    Layout: string
    Tags: {string : string}
end

local record CreateDomainLayoutOutput
    LayoutDefinitionName: string
    Description: string
    DisplayName: string
    IsDefault: boolean
    LayoutType: string
    Layout: string
    Version: string
    Tags: {string : string}
    CreatedAt: number
    LastUpdatedAt: number
end

local record CreateEventStreamInput
    DomainName: string
    Uri: string
    EventStreamName: string
    Tags: {string : string}
end

local record CreateEventStreamOutput
    EventStreamArn: string
    Tags: {string : string}
end

local record CreateEventTriggerInput
    DomainName: string
    EventTriggerName: string
    ObjectTypeName: string
    Description: string
    EventTriggerConditions: {EventTriggerCondition}
    SegmentFilter: string
    EventTriggerLimits: EventTriggerLimits
    Tags: {string : string}
end

local record CreateEventTriggerOutput
    EventTriggerName: string
    ObjectTypeName: string
    Description: string
    EventTriggerConditions: {EventTriggerCondition}
    SegmentFilter: string
    EventTriggerLimits: EventTriggerLimits
    CreatedAt: number
    LastUpdatedAt: number
    Tags: {string : string}
end

local record CreateIntegrationWorkflowInput
    DomainName: string
    WorkflowType: string
    IntegrationConfig: IntegrationConfig
    ObjectTypeName: string
    RoleArn: string
    Tags: {string : string}
end

local record CreateIntegrationWorkflowOutput
    WorkflowId: string
    Message: string
end

local record CreateProfileInput
    DomainName: string
    AccountNumber: string
    AdditionalInformation: string
    PartyType: string
    BusinessName: string
    FirstName: string
    MiddleName: string
    LastName: string
    BirthDate: string
    Gender: string
    PhoneNumber: string
    MobilePhoneNumber: string
    HomePhoneNumber: string
    BusinessPhoneNumber: string
    EmailAddress: string
    PersonalEmailAddress: string
    BusinessEmailAddress: string
    Address: Address
    ShippingAddress: Address
    MailingAddress: Address
    BillingAddress: Address
    Attributes: {string : string}
    PartyTypeString: string
    GenderString: string
    ProfileType: string
    EngagementPreferences: EngagementPreferences
end

local record CreateProfileOutput
    ProfileId: string
end

local record CreateRecommenderInput
    DomainName: string
    RecommenderName: string
    RecommenderRecipeName: string
    RecommenderConfig: RecommenderConfig
    Description: string
    RecommenderSchemaName: string
    Tags: {string : string}
end

local record CreateRecommenderOutput
    RecommenderArn: string
    Tags: {string : string}
end

local record CreateRecommenderFilterInput
    DomainName: string
    RecommenderFilterName: string
    RecommenderFilterExpression: string
    RecommenderSchemaName: string
    Description: string
    Tags: {string : string}
end

local record CreateRecommenderFilterOutput
    RecommenderFilterArn: string
    Tags: {string : string}
end

local record CreateRecommenderSchemaInput
    DomainName: string
    RecommenderSchemaName: string
    Fields: {string : {RecommenderSchemaField}}
    Tags: {string : string}
end

local record CreateRecommenderSchemaOutput
    RecommenderSchemaArn: string
    RecommenderSchemaName: string
    Fields: {string : {RecommenderSchemaField}}
    CreatedAt: number
    Status: string
    Tags: {string : string}
end

local record CreateSegmentDefinitionInput
    DomainName: string
    SegmentDefinitionName: string
    DisplayName: string
    Description: string
    SegmentGroups: SegmentGroup
    SegmentSqlQuery: string
    SegmentSort: SegmentSort
    Tags: {string : string}
end

local record CreateSegmentDefinitionOutput
    SegmentDefinitionName: string
    DisplayName: string
    Description: string
    CreatedAt: number
    SegmentDefinitionArn: string
    Tags: {string : string}
end

local record CreateSegmentEstimateInput
    DomainName: string
    SegmentQuery: SegmentGroupStructure
    SegmentSqlQuery: string
end

local record CreateSegmentEstimateOutput
    DomainName: string
    EstimateId: string
    StatusCode: number
end

local record CreateSegmentSnapshotInput
    DomainName: string
    SegmentDefinitionName: string
    DataFormat: string
    EncryptionKey: string
    RoleArn: string
    DestinationUri: string
end

local record CreateSegmentSnapshotOutput
    SnapshotId: string
end

local record CreateUploadJobInput
    DomainName: string
    DisplayName: string
    Fields: {string : ObjectTypeField}
    UniqueKey: string
    DataExpiry: number
end

local record CreateUploadJobOutput
    JobId: string
end

local record DeleteCalculatedAttributeDefinitionInput
    DomainName: string
    CalculatedAttributeName: string
end

local record DeleteCalculatedAttributeDefinitionOutput
end

local record DeleteDomainInput
    DomainName: string
end

local record DeleteDomainOutput
    Message: string
end

local record DeleteDomainLayoutInput
    DomainName: string
    LayoutDefinitionName: string
end

local record DeleteDomainLayoutOutput
    Message: string
end

local record DeleteDomainObjectTypeInput
    DomainName: string
    ObjectTypeName: string
end

local record DeleteDomainObjectTypeOutput
end

local record DeleteEventStreamInput
    DomainName: string
    EventStreamName: string
end

local record DeleteEventStreamOutput
end

local record DeleteEventTriggerInput
    DomainName: string
    EventTriggerName: string
end

local record DeleteEventTriggerOutput
    Message: string
end

local record DeleteIntegrationInput
    DomainName: string
    Uri: string
end

local record DeleteIntegrationOutput
    Message: string
end

local record DeleteProfileInput
    ProfileId: string
    DomainName: string
end

local record DeleteProfileOutput
    Message: string
end

local record DeleteProfileKeyInput
    ProfileId: string
    KeyName: string
    Values: {string}
    DomainName: string
end

local record DeleteProfileKeyOutput
    Message: string
end

local record DeleteProfileObjectInput
    ProfileId: string
    ProfileObjectUniqueKey: string
    ObjectTypeName: string
    DomainName: string
end

local record DeleteProfileObjectOutput
    Message: string
end

local record DeleteProfileObjectTypeInput
    DomainName: string
    ObjectTypeName: string
end

local record DeleteProfileObjectTypeOutput
    Message: string
end

local record DeleteRecommenderInput
    DomainName: string
    RecommenderName: string
end

local record DeleteRecommenderOutput
end

local record DeleteRecommenderFilterInput
    DomainName: string
    RecommenderFilterName: string
end

local record DeleteRecommenderFilterOutput
    Message: string
end

local record DeleteRecommenderSchemaInput
    DomainName: string
    RecommenderSchemaName: string
end

local record DeleteRecommenderSchemaOutput
end

local record DeleteSegmentDefinitionInput
    DomainName: string
    SegmentDefinitionName: string
end

local record DeleteSegmentDefinitionOutput
    Message: string
end

local record DeleteWorkflowInput
    DomainName: string
    WorkflowId: string
end

local record DeleteWorkflowOutput
end

local record DetectProfileObjectTypeInput
    Objects: {string}
    DomainName: string
end

local record DetectProfileObjectTypeOutput
    DetectedProfileObjectTypes: {DetectedProfileObjectType}
end

local record GetAutoMergingPreviewInput
    DomainName: string
    Consolidation: Consolidation
    ConflictResolution: ConflictResolution
    MinAllowedConfidenceScoreForMerging: number
end

local record GetAutoMergingPreviewOutput
    DomainName: string
    NumberOfMatchesInSample: number
    NumberOfProfilesInSample: number
    NumberOfProfilesWillBeMerged: number
end

local record GetCalculatedAttributeDefinitionInput
    DomainName: string
    CalculatedAttributeName: string
end

local record GetCalculatedAttributeDefinitionOutput
    CalculatedAttributeName: string
    DisplayName: string
    Description: string
    CreatedAt: number
    LastUpdatedAt: number
    Statistic: string
    Filter: Filter
    Conditions: Conditions
    AttributeDetails: AttributeDetails
    UseHistoricalData: boolean
    Status: string
    Readiness: Readiness
    Tags: {string : string}
end

local record GetCalculatedAttributeForProfileInput
    DomainName: string
    ProfileId: string
    CalculatedAttributeName: string
end

local record GetCalculatedAttributeForProfileOutput
    CalculatedAttributeName: string
    DisplayName: string
    IsDataPartial: string
    Value: string
    LastObjectTimestamp: number
end

local record GetDomainInput
    DomainName: string
end

local record GetDomainOutput
    DomainName: string
    DefaultExpirationDays: number
    DefaultEncryptionKey: string
    DeadLetterQueueUrl: string
    Stats: DomainStats
    Matching: MatchingResponse
    RuleBasedMatching: RuleBasedMatchingResponse
    DataStore: DataStoreResponse
    CreatedAt: number
    LastUpdatedAt: number
    Tags: {string : string}
end

local record GetDomainLayoutInput
    DomainName: string
    LayoutDefinitionName: string
end

local record GetDomainLayoutOutput
    LayoutDefinitionName: string
    Description: string
    DisplayName: string
    IsDefault: boolean
    LayoutType: string
    Layout: string
    Version: string
    CreatedAt: number
    LastUpdatedAt: number
    Tags: {string : string}
end

local record GetDomainObjectTypeInput
    DomainName: string
    ObjectTypeName: string
end

local record GetDomainObjectTypeOutput
    ObjectTypeName: string
    Description: string
    EncryptionKey: string
    Fields: {string : DomainObjectTypeField}
    CreatedAt: number
    LastUpdatedAt: number
    Tags: {string : string}
end

local record GetEventStreamInput
    DomainName: string
    EventStreamName: string
end

local record GetEventStreamOutput
    DomainName: string
    EventStreamArn: string
    CreatedAt: number
    State: string
    StoppedSince: number
    DestinationDetails: EventStreamDestinationDetails
    Tags: {string : string}
end

local record GetEventTriggerInput
    DomainName: string
    EventTriggerName: string
end

local record GetEventTriggerOutput
    EventTriggerName: string
    ObjectTypeName: string
    Description: string
    EventTriggerConditions: {EventTriggerCondition}
    SegmentFilter: string
    EventTriggerLimits: EventTriggerLimits
    CreatedAt: number
    LastUpdatedAt: number
    Tags: {string : string}
end

local record GetIdentityResolutionJobInput
    DomainName: string
    JobId: string
end

local record GetIdentityResolutionJobOutput
    DomainName: string
    JobId: string
    Status: string
    Message: string
    JobStartTime: number
    JobEndTime: number
    LastUpdatedAt: number
    JobExpirationTime: number
    AutoMerging: AutoMerging
    ExportingLocation: ExportingLocation
    JobStats: JobStats
end

local record GetIntegrationInput
    DomainName: string
    Uri: string
end

local record GetIntegrationOutput
    DomainName: string
    Uri: string
    ObjectTypeName: string
    CreatedAt: number
    LastUpdatedAt: number
    Tags: {string : string}
    ObjectTypeNames: {string : string}
    WorkflowId: string
    IsUnstructured: boolean
    RoleArn: string
    EventTriggerNames: {string}
    Scope: string
end

local record GetMatchesInput
    NextToken: string
    MaxResults: number
    DomainName: string
end

local record GetMatchesOutput
    NextToken: string
    MatchGenerationDate: number
    PotentialMatches: number
    Matches: {MatchItem}
end

local record GetObjectTypeAttributeStatisticsInput
    DomainName: string
    ObjectTypeName: string
    AttributeName: string
end

local record GetObjectTypeAttributeStatisticsOutput
    Statistics: GetObjectTypeAttributeStatisticsStats
    CalculatedAt: number
end

local record GetProfileHistoryRecordInput
    DomainName: string
    ProfileId: string
    Id: string
end

local record GetProfileHistoryRecordOutput
    Id: string
    ObjectTypeName: string
    CreatedAt: number
    LastUpdatedAt: number
    ActionType: string
    ProfileObjectUniqueKey: string
    Content: string
    PerformedBy: string
end

local record GetProfileObjectTypeInput
    DomainName: string
    ObjectTypeName: string
end

local record GetProfileObjectTypeOutput
    ObjectTypeName: string
    Description: string
    TemplateId: string
    ExpirationDays: number
    EncryptionKey: string
    AllowProfileCreation: boolean
    SourceLastUpdatedTimestampFormat: string
    MaxAvailableProfileObjectCount: number
    MaxProfileObjectCount: number
    SourcePriority: number
    Fields: {string : ObjectTypeField}
    Keys: {string : {ObjectTypeKey}}
    CreatedAt: number
    LastUpdatedAt: number
    Tags: {string : string}
end

local record GetProfileObjectTypeTemplateInput
    TemplateId: string
end

local record GetProfileObjectTypeTemplateOutput
    TemplateId: string
    SourceName: string
    SourceObject: string
    AllowProfileCreation: boolean
    SourceLastUpdatedTimestampFormat: string
    Fields: {string : ObjectTypeField}
    Keys: {string : {ObjectTypeKey}}
end

local record GetProfileRecommendationsInput
    DomainName: string
    ProfileId: string
    RecommenderName: string
    Context: {string : string}
    RecommenderFilters: {RecommenderFilter}
    RecommenderPromotionalFilters: {RecommenderPromotionalFilter}
    CandidateIds: {string}
    MaxResults: number
    MetadataConfig: MetadataConfig
end

local record GetProfileRecommendationsOutput
    Recommendations: {Recommendation}
end

local record GetRecommenderInput
    DomainName: string
    RecommenderName: string
    TrainingMetricsCount: number
end

local record GetRecommenderOutput
    RecommenderName: string
    RecommenderRecipeName: string
    RecommenderSchemaName: string
    RecommenderConfig: RecommenderConfig
    Description: string
    Status: string
    LastUpdatedAt: number
    CreatedAt: number
    FailureReason: string
    LatestRecommenderUpdate: RecommenderUpdate
    TrainingMetrics: {TrainingMetrics}
    Tags: {string : string}
end

local record GetRecommenderFilterInput
    DomainName: string
    RecommenderFilterName: string
end

local record GetRecommenderFilterOutput
    RecommenderFilterName: string
    RecommenderFilterExpression: string
    RecommenderSchemaName: string
    CreatedAt: number
    Status: string
    Description: string
    FailureReason: string
    Tags: {string : string}
end

local record GetRecommenderSchemaInput
    DomainName: string
    RecommenderSchemaName: string
end

local record GetRecommenderSchemaOutput
    RecommenderSchemaName: string
    Fields: {string : {RecommenderSchemaField}}
    CreatedAt: number
    Status: string
end

local record GetSegmentDefinitionInput
    DomainName: string
    SegmentDefinitionName: string
end

local record GetSegmentDefinitionOutput
    SegmentDefinitionName: string
    DisplayName: string
    Description: string
    SegmentGroups: SegmentGroup
    SegmentSort: SegmentSort
    SegmentDefinitionArn: string
    CreatedAt: number
    Tags: {string : string}
    SegmentSqlQuery: string
    SegmentType: string
end

local record GetSegmentEstimateInput
    DomainName: string
    EstimateId: string
end

local record GetSegmentEstimateOutput
    DomainName: string
    EstimateId: string
    Status: string
    Estimate: string
    Message: string
    StatusCode: number
end

local record GetSegmentMembershipInput
    DomainName: string
    SegmentDefinitionName: string
    ProfileIds: {string}
end

local record GetSegmentMembershipOutput
    SegmentDefinitionName: string
    Profiles: {ProfileQueryResult}
    Failures: {ProfileQueryFailures}
    LastComputedAt: number
end

local record GetSegmentSnapshotInput
    DomainName: string
    SegmentDefinitionName: string
    SnapshotId: string
end

local record GetSegmentSnapshotOutput
    SnapshotId: string
    Status: string
    StatusMessage: string
    DataFormat: string
    EncryptionKey: string
    RoleArn: string
    DestinationUri: string
end

local record GetSimilarProfilesInput
    NextToken: string
    MaxResults: number
    DomainName: string
    MatchType: string
    SearchKey: string
    SearchValue: string
end

local record GetSimilarProfilesOutput
    ProfileIds: {string}
    MatchId: string
    MatchType: string
    RuleLevel: number
    ConfidenceScore: number
    NextToken: string
end

local record GetUploadJobInput
    DomainName: string
    JobId: string
end

local record GetUploadJobOutput
    JobId: string
    DisplayName: string
    Status: string
    StatusReason: string
    CreatedAt: number
    CompletedAt: number
    Fields: {string : ObjectTypeField}
    UniqueKey: string
    ResultsSummary: ResultsSummary
    DataExpiry: number
end

local record GetUploadJobPathInput
    DomainName: string
    JobId: string
end

local record GetUploadJobPathOutput
    Url: string
    ClientToken: string
    ValidUntil: number
end

local record GetWorkflowInput
    DomainName: string
    WorkflowId: string
end

local record GetWorkflowOutput
    WorkflowId: string
    WorkflowType: string
    Status: string
    ErrorDescription: string
    StartDate: number
    LastUpdatedAt: number
    Attributes: WorkflowAttributes
    Metrics: WorkflowMetrics
end

local record GetWorkflowStepsInput
    DomainName: string
    WorkflowId: string
    NextToken: string
    MaxResults: number
end

local record GetWorkflowStepsOutput
    WorkflowId: string
    WorkflowType: string
    Items: {WorkflowStepItem}
    NextToken: string
end

local record ListAccountIntegrationsInput
    Uri: string
    NextToken: string
    MaxResults: number
    IncludeHidden: boolean
end

local record ListAccountIntegrationsOutput
    Items: {ListIntegrationItem}
    NextToken: string
end

local record ListCalculatedAttributeDefinitionsInput
    DomainName: string
    NextToken: string
    MaxResults: number
end

local record ListCalculatedAttributeDefinitionsOutput
    Items: {ListCalculatedAttributeDefinitionItem}
    NextToken: string
end

local record ListCalculatedAttributesForProfileInput
    NextToken: string
    MaxResults: number
    DomainName: string
    ProfileId: string
end

local record ListCalculatedAttributesForProfileOutput
    Items: {ListCalculatedAttributeForProfileItem}
    NextToken: string
end

local record ListDomainLayoutsInput
    DomainName: string
    NextToken: string
    MaxResults: number
end

local record ListDomainLayoutsOutput
    Items: {LayoutItem}
    NextToken: string
end

local record ListDomainObjectTypesInput
    DomainName: string
    MaxResults: number
    NextToken: string
end

local record ListDomainObjectTypesOutput
    Items: {DomainObjectTypesListItem}
    NextToken: string
end

local record ListDomainsInput
    NextToken: string
    MaxResults: number
end

local record ListDomainsOutput
    Items: {ListDomainItem}
    NextToken: string
end

local record ListEventStreamsInput
    DomainName: string
    NextToken: string
    MaxResults: number
end

local record ListEventStreamsOutput
    Items: {EventStreamSummary}
    NextToken: string
end

local record ListEventTriggersInput
    DomainName: string
    NextToken: string
    MaxResults: number
end

local record ListEventTriggersOutput
    Items: {EventTriggerSummaryItem}
    NextToken: string
end

local record ListIdentityResolutionJobsInput
    DomainName: string
    NextToken: string
    MaxResults: number
end

local record ListIdentityResolutionJobsOutput
    IdentityResolutionJobsList: {IdentityResolutionJob}
    NextToken: string
end

local record ListIntegrationsInput
    DomainName: string
    NextToken: string
    MaxResults: number
    IncludeHidden: boolean
end

local record ListIntegrationsOutput
    Items: {ListIntegrationItem}
    NextToken: string
end

local record ListObjectTypeAttributesInput
    NextToken: string
    MaxResults: number
    DomainName: string
    ObjectTypeName: string
end

local record ListObjectTypeAttributesOutput
    Items: {ListObjectTypeAttributeItem}
    NextToken: string
end

local record ListObjectTypeAttributeValuesInput
    NextToken: string
    MaxResults: number
    DomainName: string
    ObjectTypeName: string
    AttributeName: string
end

local record ListObjectTypeAttributeValuesOutput
    Items: {ListObjectTypeAttributeValuesItem}
    NextToken: string
end

local record ListProfileAttributeValuesInput
    DomainName: string
    AttributeName: string
end

local record ListProfileAttributeValuesOutput
    DomainName: string
    AttributeName: string
    Items: {AttributeValueItem}
    StatusCode: number
end

local record ListProfileHistoryRecordsInput
    DomainName: string
    ProfileId: string
    ObjectTypeName: string
    NextToken: string
    MaxResults: number
    ActionType: string
    PerformedBy: string
end

local record ListProfileHistoryRecordsOutput
    ProfileHistoryRecords: {ProfileHistoryRecord}
    NextToken: string
end

local record ListProfileObjectsInput
    NextToken: string
    MaxResults: number
    DomainName: string
    ObjectTypeName: string
    ProfileId: string
    ObjectFilter: ObjectFilter
end

local record ListProfileObjectsOutput
    Items: {ListProfileObjectsItem}
    NextToken: string
end

local record ListProfileObjectTypesInput
    DomainName: string
    NextToken: string
    MaxResults: number
end

local record ListProfileObjectTypesOutput
    Items: {ListProfileObjectTypeItem}
    NextToken: string
end

local record ListProfileObjectTypeTemplatesInput
    NextToken: string
    MaxResults: number
end

local record ListProfileObjectTypeTemplatesOutput
    Items: {ListProfileObjectTypeTemplateItem}
    NextToken: string
end

local record ListRecommenderFiltersInput
    DomainName: string
    MaxResults: number
    NextToken: string
end

local record ListRecommenderFiltersOutput
    NextToken: string
    RecommenderFilters: {RecommenderFilterSummary}
end

local record ListRecommenderRecipesInput
    MaxResults: number
    NextToken: string
end

local record ListRecommenderRecipesOutput
    NextToken: string
    RecommenderRecipes: {RecommenderRecipe}
end

local record ListRecommendersInput
    DomainName: string
    MaxResults: number
    NextToken: string
end

local record ListRecommendersOutput
    NextToken: string
    Recommenders: {RecommenderSummary}
end

local record ListRecommenderSchemasInput
    DomainName: string
    MaxResults: number
    NextToken: string
end

local record ListRecommenderSchemasOutput
    NextToken: string
    RecommenderSchemas: {RecommenderSchemaSummary}
end

local record ListRuleBasedMatchesInput
    NextToken: string
    MaxResults: number
    DomainName: string
end

local record ListRuleBasedMatchesOutput
    MatchIds: {string}
    NextToken: string
end

local record ListSegmentDefinitionsInput
    DomainName: string
    MaxResults: number
    NextToken: string
end

local record ListSegmentDefinitionsOutput
    NextToken: string
    Items: {SegmentDefinitionItem}
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record ListUploadJobsInput
    DomainName: string
    MaxResults: number
    NextToken: string
end

local record ListUploadJobsOutput
    NextToken: string
    Items: {UploadJobItem}
end

local record ListWorkflowsInput
    DomainName: string
    WorkflowType: string
    Status: string
    QueryStartDate: number
    QueryEndDate: number
    NextToken: string
    MaxResults: number
end

local record ListWorkflowsOutput
    Items: {ListWorkflowsItem}
    NextToken: string
end

local record MergeProfilesInput
    DomainName: string
    MainProfileId: string
    ProfileIdsToBeMerged: {string}
    FieldSourceProfileIds: FieldSourceProfileIds
end

local record MergeProfilesOutput
    Message: string
end

local record PutDomainObjectTypeInput
    DomainName: string
    ObjectTypeName: string
    Description: string
    EncryptionKey: string
    Fields: {string : DomainObjectTypeField}
    Tags: {string : string}
end

local record PutDomainObjectTypeOutput
    ObjectTypeName: string
    Description: string
    EncryptionKey: string
    Fields: {string : DomainObjectTypeField}
    CreatedAt: number
    LastUpdatedAt: number
    Tags: {string : string}
end

local record PutIntegrationInput
    DomainName: string
    Uri: string
    ObjectTypeName: string
    ObjectTypeNames: {string : string}
    Tags: {string : string}
    FlowDefinition: FlowDefinition
    RoleArn: string
    EventTriggerNames: {string}
    Scope: string
end

local record PutIntegrationOutput
    DomainName: string
    Uri: string
    ObjectTypeName: string
    CreatedAt: number
    LastUpdatedAt: number
    Tags: {string : string}
    ObjectTypeNames: {string : string}
    WorkflowId: string
    IsUnstructured: boolean
    RoleArn: string
    EventTriggerNames: {string}
    Scope: string
end

local record PutProfileObjectInput
    ObjectTypeName: string
    Object: string
    DomainName: string
end

local record PutProfileObjectOutput
    ProfileObjectUniqueKey: string
end

local record PutProfileObjectTypeInput
    DomainName: string
    ObjectTypeName: string
    Description: string
    TemplateId: string
    ExpirationDays: number
    EncryptionKey: string
    AllowProfileCreation: boolean
    SourceLastUpdatedTimestampFormat: string
    MaxProfileObjectCount: number
    SourcePriority: number
    Fields: {string : ObjectTypeField}
    Keys: {string : {ObjectTypeKey}}
    Tags: {string : string}
end

local record PutProfileObjectTypeOutput
    ObjectTypeName: string
    Description: string
    TemplateId: string
    ExpirationDays: number
    EncryptionKey: string
    AllowProfileCreation: boolean
    SourceLastUpdatedTimestampFormat: string
    MaxProfileObjectCount: number
    MaxAvailableProfileObjectCount: number
    SourcePriority: number
    Fields: {string : ObjectTypeField}
    Keys: {string : {ObjectTypeKey}}
    CreatedAt: number
    LastUpdatedAt: number
    Tags: {string : string}
end

local record SearchProfilesInput
    NextToken: string
    MaxResults: number
    DomainName: string
    KeyName: string
    Values: {string}
    AdditionalSearchKeys: {AdditionalSearchKey}
    LogicalOperator: string
end

local record SearchProfilesOutput
    Items: {Profile}
    NextToken: string
end

local record StartRecommenderInput
    DomainName: string
    RecommenderName: string
end

local record StartRecommenderOutput
end

local record StartUploadJobInput
    DomainName: string
    JobId: string
end

local record StartUploadJobOutput
end

local record StopRecommenderInput
    DomainName: string
    RecommenderName: string
end

local record StopRecommenderOutput
end

local record StopUploadJobInput
    DomainName: string
    JobId: string
end

local record StopUploadJobOutput
end

local record TagResourceInput
    resourceArn: string
    tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateCalculatedAttributeDefinitionInput
    DomainName: string
    CalculatedAttributeName: string
    DisplayName: string
    Description: string
    Conditions: Conditions
end

local record UpdateCalculatedAttributeDefinitionOutput
    CalculatedAttributeName: string
    DisplayName: string
    Description: string
    CreatedAt: number
    LastUpdatedAt: number
    Statistic: string
    Conditions: Conditions
    AttributeDetails: AttributeDetails
    UseHistoricalData: boolean
    Status: string
    Readiness: Readiness
    Tags: {string : string}
end

local record UpdateDomainInput
    DomainName: string
    DefaultExpirationDays: number
    DefaultEncryptionKey: string
    DeadLetterQueueUrl: string
    Matching: MatchingRequest
    RuleBasedMatching: RuleBasedMatchingRequest
    DataStore: DataStoreRequest
    Tags: {string : string}
end

local record UpdateDomainOutput
    DomainName: string
    DefaultExpirationDays: number
    DefaultEncryptionKey: string
    DeadLetterQueueUrl: string
    Matching: MatchingResponse
    RuleBasedMatching: RuleBasedMatchingResponse
    DataStore: DataStoreResponse
    CreatedAt: number
    LastUpdatedAt: number
    Tags: {string : string}
end

local record UpdateDomainLayoutInput
    DomainName: string
    LayoutDefinitionName: string
    Description: string
    DisplayName: string
    IsDefault: boolean
    LayoutType: string
    Layout: string
end

local record UpdateDomainLayoutOutput
    LayoutDefinitionName: string
    Description: string
    DisplayName: string
    IsDefault: boolean
    LayoutType: string
    Layout: string
    Version: string
    CreatedAt: number
    LastUpdatedAt: number
    Tags: {string : string}
end

local record UpdateEventTriggerInput
    DomainName: string
    EventTriggerName: string
    ObjectTypeName: string
    Description: string
    EventTriggerConditions: {EventTriggerCondition}
    SegmentFilter: string
    EventTriggerLimits: EventTriggerLimits
end

local record UpdateEventTriggerOutput
    EventTriggerName: string
    ObjectTypeName: string
    Description: string
    EventTriggerConditions: {EventTriggerCondition}
    SegmentFilter: string
    EventTriggerLimits: EventTriggerLimits
    CreatedAt: number
    LastUpdatedAt: number
    Tags: {string : string}
end

local record UpdateProfileInput
    DomainName: string
    ProfileId: string
    AdditionalInformation: string
    AccountNumber: string
    PartyType: string
    BusinessName: string
    FirstName: string
    MiddleName: string
    LastName: string
    BirthDate: string
    Gender: string
    PhoneNumber: string
    MobilePhoneNumber: string
    HomePhoneNumber: string
    BusinessPhoneNumber: string
    EmailAddress: string
    PersonalEmailAddress: string
    BusinessEmailAddress: string
    Address: UpdateAddress
    ShippingAddress: UpdateAddress
    MailingAddress: UpdateAddress
    BillingAddress: UpdateAddress
    Attributes: {string : string}
    PartyTypeString: string
    GenderString: string
    ProfileType: string
    EngagementPreferences: EngagementPreferences
end

local record UpdateProfileOutput
    ProfileId: string
end

local record UpdateRecommenderInput
    DomainName: string
    RecommenderName: string
    Description: string
    RecommenderConfig: RecommenderConfig
end

local record UpdateRecommenderOutput
    RecommenderName: string
end

local record AccessDeniedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
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

local record BadRequestException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local type EventStreamState = "RUNNING" | "STOPPED"

local type DataFormat = "CSV" | "JSONL" | "ORC"

local type ReadinessStatus = "PREPARING" | "IN_PROGRESS" | "COMPLETED" | "FAILED"

local type Status = "NOT_STARTED" | "IN_PROGRESS" | "COMPLETE" | "FAILED" | "SPLIT" | "RETRY" | "CANCELLED"

local type Gender = "MALE" | "FEMALE" | "UNSPECIFIED"

local type WorkflowType = "APPFLOW_INTEGRATION"

local type LayoutType = "PROFILE_EXPLORER"

local type Statistic = "FIRST_OCCURRENCE" | "LAST_OCCURRENCE" | "COUNT" | "SUM" | "MINIMUM" | "MAXIMUM" | "AVERAGE" | "MAX_OCCURRENCE"

local type PartyType = "INDIVIDUAL" | "BUSINESS" | "OTHER"

local type IdentityResolutionJobStatus = "PENDING" | "PREPROCESSING" | "FIND_MATCHING" | "MERGING" | "COMPLETED" | "PARTIAL_SUCCESS" | "FAILED"

local type RecommenderFilterStatus = "ACTIVE" | "PENDING" | "IN_PROGRESS" | "FAILED" | "DELETING"

local type StatusReason = "VALIDATION_FAILURE" | "INTERNAL_FAILURE"

local type logicalOperator = "AND" | "OR"

local type RecommenderRecipeName = "recommended-for-you" | "similar-items" | "frequently-paired-items" | "popular-items" | "trending-now" | "personalized-ranking"

local type RecommenderStatus = "PENDING" | "IN_PROGRESS" | "ACTIVE" | "FAILED" | "STOPPING" | "INACTIVE" | "STARTING" | "DELETING"

local type EstimateStatus = "RUNNING" | "SUCCEEDED" | "FAILED"

local type SegmentSnapshotStatus = "COMPLETED" | "IN_PROGRESS" | "FAILED"

local type UploadJobStatus = "CREATED" | "IN_PROGRESS" | "PARTIALLY_SUCCEEDED" | "SUCCEEDED" | "FAILED" | "STOPPED"

local type ActionType = "ADDED_PROFILE_KEY" | "DELETED_PROFILE_KEY" | "CREATED" | "UPDATED" | "INGESTED" | "DELETED_BY_CUSTOMER" | "EXPIRED" | "MERGED" | "DELETED_BY_MERGE"

local type ProfileType = "ACCOUNT_PROFILE" | "PROFILE"

local type RecommenderSchemaStatus = "ACTIVE" | "DELETING"

local type Scope = "PROFILE" | "DOMAIN"

local type MatchType = "RULE_BASED_MATCHING" | "ML_BASED_MATCHING"

local type SegmentType = "CLASSIC" | "ENHANCED"

local record M
    AddProfileKeyInput: AddProfileKeyInput
    AddProfileKeyOutput: AddProfileKeyOutput
    BatchGetCalculatedAttributeForProfileInput: BatchGetCalculatedAttributeForProfileInput
    BatchGetCalculatedAttributeForProfileOutput: BatchGetCalculatedAttributeForProfileOutput
    BatchGetProfileInput: BatchGetProfileInput
    BatchGetProfileOutput: BatchGetProfileOutput
    CreateCalculatedAttributeDefinitionInput: CreateCalculatedAttributeDefinitionInput
    CreateCalculatedAttributeDefinitionOutput: CreateCalculatedAttributeDefinitionOutput
    CreateDomainInput: CreateDomainInput
    CreateDomainOutput: CreateDomainOutput
    CreateDomainLayoutInput: CreateDomainLayoutInput
    CreateDomainLayoutOutput: CreateDomainLayoutOutput
    CreateEventStreamInput: CreateEventStreamInput
    CreateEventStreamOutput: CreateEventStreamOutput
    CreateEventTriggerInput: CreateEventTriggerInput
    CreateEventTriggerOutput: CreateEventTriggerOutput
    CreateIntegrationWorkflowInput: CreateIntegrationWorkflowInput
    CreateIntegrationWorkflowOutput: CreateIntegrationWorkflowOutput
    CreateProfileInput: CreateProfileInput
    CreateProfileOutput: CreateProfileOutput
    CreateRecommenderInput: CreateRecommenderInput
    CreateRecommenderOutput: CreateRecommenderOutput
    CreateRecommenderFilterInput: CreateRecommenderFilterInput
    CreateRecommenderFilterOutput: CreateRecommenderFilterOutput
    CreateRecommenderSchemaInput: CreateRecommenderSchemaInput
    CreateRecommenderSchemaOutput: CreateRecommenderSchemaOutput
    CreateSegmentDefinitionInput: CreateSegmentDefinitionInput
    CreateSegmentDefinitionOutput: CreateSegmentDefinitionOutput
    CreateSegmentEstimateInput: CreateSegmentEstimateInput
    CreateSegmentEstimateOutput: CreateSegmentEstimateOutput
    CreateSegmentSnapshotInput: CreateSegmentSnapshotInput
    CreateSegmentSnapshotOutput: CreateSegmentSnapshotOutput
    CreateUploadJobInput: CreateUploadJobInput
    CreateUploadJobOutput: CreateUploadJobOutput
    DeleteCalculatedAttributeDefinitionInput: DeleteCalculatedAttributeDefinitionInput
    DeleteCalculatedAttributeDefinitionOutput: DeleteCalculatedAttributeDefinitionOutput
    DeleteDomainInput: DeleteDomainInput
    DeleteDomainOutput: DeleteDomainOutput
    DeleteDomainLayoutInput: DeleteDomainLayoutInput
    DeleteDomainLayoutOutput: DeleteDomainLayoutOutput
    DeleteDomainObjectTypeInput: DeleteDomainObjectTypeInput
    DeleteDomainObjectTypeOutput: DeleteDomainObjectTypeOutput
    DeleteEventStreamInput: DeleteEventStreamInput
    DeleteEventStreamOutput: DeleteEventStreamOutput
    DeleteEventTriggerInput: DeleteEventTriggerInput
    DeleteEventTriggerOutput: DeleteEventTriggerOutput
    DeleteIntegrationInput: DeleteIntegrationInput
    DeleteIntegrationOutput: DeleteIntegrationOutput
    DeleteProfileInput: DeleteProfileInput
    DeleteProfileOutput: DeleteProfileOutput
    DeleteProfileKeyInput: DeleteProfileKeyInput
    DeleteProfileKeyOutput: DeleteProfileKeyOutput
    DeleteProfileObjectInput: DeleteProfileObjectInput
    DeleteProfileObjectOutput: DeleteProfileObjectOutput
    DeleteProfileObjectTypeInput: DeleteProfileObjectTypeInput
    DeleteProfileObjectTypeOutput: DeleteProfileObjectTypeOutput
    DeleteRecommenderInput: DeleteRecommenderInput
    DeleteRecommenderOutput: DeleteRecommenderOutput
    DeleteRecommenderFilterInput: DeleteRecommenderFilterInput
    DeleteRecommenderFilterOutput: DeleteRecommenderFilterOutput
    DeleteRecommenderSchemaInput: DeleteRecommenderSchemaInput
    DeleteRecommenderSchemaOutput: DeleteRecommenderSchemaOutput
    DeleteSegmentDefinitionInput: DeleteSegmentDefinitionInput
    DeleteSegmentDefinitionOutput: DeleteSegmentDefinitionOutput
    DeleteWorkflowInput: DeleteWorkflowInput
    DeleteWorkflowOutput: DeleteWorkflowOutput
    DetectProfileObjectTypeInput: DetectProfileObjectTypeInput
    DetectProfileObjectTypeOutput: DetectProfileObjectTypeOutput
    GetAutoMergingPreviewInput: GetAutoMergingPreviewInput
    GetAutoMergingPreviewOutput: GetAutoMergingPreviewOutput
    GetCalculatedAttributeDefinitionInput: GetCalculatedAttributeDefinitionInput
    GetCalculatedAttributeDefinitionOutput: GetCalculatedAttributeDefinitionOutput
    GetCalculatedAttributeForProfileInput: GetCalculatedAttributeForProfileInput
    GetCalculatedAttributeForProfileOutput: GetCalculatedAttributeForProfileOutput
    GetDomainInput: GetDomainInput
    GetDomainOutput: GetDomainOutput
    GetDomainLayoutInput: GetDomainLayoutInput
    GetDomainLayoutOutput: GetDomainLayoutOutput
    GetDomainObjectTypeInput: GetDomainObjectTypeInput
    GetDomainObjectTypeOutput: GetDomainObjectTypeOutput
    GetEventStreamInput: GetEventStreamInput
    GetEventStreamOutput: GetEventStreamOutput
    GetEventTriggerInput: GetEventTriggerInput
    GetEventTriggerOutput: GetEventTriggerOutput
    GetIdentityResolutionJobInput: GetIdentityResolutionJobInput
    GetIdentityResolutionJobOutput: GetIdentityResolutionJobOutput
    GetIntegrationInput: GetIntegrationInput
    GetIntegrationOutput: GetIntegrationOutput
    GetMatchesInput: GetMatchesInput
    GetMatchesOutput: GetMatchesOutput
    GetObjectTypeAttributeStatisticsInput: GetObjectTypeAttributeStatisticsInput
    GetObjectTypeAttributeStatisticsOutput: GetObjectTypeAttributeStatisticsOutput
    GetProfileHistoryRecordInput: GetProfileHistoryRecordInput
    GetProfileHistoryRecordOutput: GetProfileHistoryRecordOutput
    GetProfileObjectTypeInput: GetProfileObjectTypeInput
    GetProfileObjectTypeOutput: GetProfileObjectTypeOutput
    GetProfileObjectTypeTemplateInput: GetProfileObjectTypeTemplateInput
    GetProfileObjectTypeTemplateOutput: GetProfileObjectTypeTemplateOutput
    GetProfileRecommendationsInput: GetProfileRecommendationsInput
    GetProfileRecommendationsOutput: GetProfileRecommendationsOutput
    GetRecommenderInput: GetRecommenderInput
    GetRecommenderOutput: GetRecommenderOutput
    GetRecommenderFilterInput: GetRecommenderFilterInput
    GetRecommenderFilterOutput: GetRecommenderFilterOutput
    GetRecommenderSchemaInput: GetRecommenderSchemaInput
    GetRecommenderSchemaOutput: GetRecommenderSchemaOutput
    GetSegmentDefinitionInput: GetSegmentDefinitionInput
    GetSegmentDefinitionOutput: GetSegmentDefinitionOutput
    GetSegmentEstimateInput: GetSegmentEstimateInput
    GetSegmentEstimateOutput: GetSegmentEstimateOutput
    GetSegmentMembershipInput: GetSegmentMembershipInput
    GetSegmentMembershipOutput: GetSegmentMembershipOutput
    GetSegmentSnapshotInput: GetSegmentSnapshotInput
    GetSegmentSnapshotOutput: GetSegmentSnapshotOutput
    GetSimilarProfilesInput: GetSimilarProfilesInput
    GetSimilarProfilesOutput: GetSimilarProfilesOutput
    GetUploadJobInput: GetUploadJobInput
    GetUploadJobOutput: GetUploadJobOutput
    GetUploadJobPathInput: GetUploadJobPathInput
    GetUploadJobPathOutput: GetUploadJobPathOutput
    GetWorkflowInput: GetWorkflowInput
    GetWorkflowOutput: GetWorkflowOutput
    GetWorkflowStepsInput: GetWorkflowStepsInput
    GetWorkflowStepsOutput: GetWorkflowStepsOutput
    ListAccountIntegrationsInput: ListAccountIntegrationsInput
    ListAccountIntegrationsOutput: ListAccountIntegrationsOutput
    ListCalculatedAttributeDefinitionsInput: ListCalculatedAttributeDefinitionsInput
    ListCalculatedAttributeDefinitionsOutput: ListCalculatedAttributeDefinitionsOutput
    ListCalculatedAttributesForProfileInput: ListCalculatedAttributesForProfileInput
    ListCalculatedAttributesForProfileOutput: ListCalculatedAttributesForProfileOutput
    ListDomainLayoutsInput: ListDomainLayoutsInput
    ListDomainLayoutsOutput: ListDomainLayoutsOutput
    ListDomainObjectTypesInput: ListDomainObjectTypesInput
    ListDomainObjectTypesOutput: ListDomainObjectTypesOutput
    ListDomainsInput: ListDomainsInput
    ListDomainsOutput: ListDomainsOutput
    ListEventStreamsInput: ListEventStreamsInput
    ListEventStreamsOutput: ListEventStreamsOutput
    ListEventTriggersInput: ListEventTriggersInput
    ListEventTriggersOutput: ListEventTriggersOutput
    ListIdentityResolutionJobsInput: ListIdentityResolutionJobsInput
    ListIdentityResolutionJobsOutput: ListIdentityResolutionJobsOutput
    ListIntegrationsInput: ListIntegrationsInput
    ListIntegrationsOutput: ListIntegrationsOutput
    ListObjectTypeAttributesInput: ListObjectTypeAttributesInput
    ListObjectTypeAttributesOutput: ListObjectTypeAttributesOutput
    ListObjectTypeAttributeValuesInput: ListObjectTypeAttributeValuesInput
    ListObjectTypeAttributeValuesOutput: ListObjectTypeAttributeValuesOutput
    ListProfileAttributeValuesInput: ListProfileAttributeValuesInput
    ListProfileAttributeValuesOutput: ListProfileAttributeValuesOutput
    ListProfileHistoryRecordsInput: ListProfileHistoryRecordsInput
    ListProfileHistoryRecordsOutput: ListProfileHistoryRecordsOutput
    ListProfileObjectsInput: ListProfileObjectsInput
    ListProfileObjectsOutput: ListProfileObjectsOutput
    ListProfileObjectTypesInput: ListProfileObjectTypesInput
    ListProfileObjectTypesOutput: ListProfileObjectTypesOutput
    ListProfileObjectTypeTemplatesInput: ListProfileObjectTypeTemplatesInput
    ListProfileObjectTypeTemplatesOutput: ListProfileObjectTypeTemplatesOutput
    ListRecommenderFiltersInput: ListRecommenderFiltersInput
    ListRecommenderFiltersOutput: ListRecommenderFiltersOutput
    ListRecommenderRecipesInput: ListRecommenderRecipesInput
    ListRecommenderRecipesOutput: ListRecommenderRecipesOutput
    ListRecommendersInput: ListRecommendersInput
    ListRecommendersOutput: ListRecommendersOutput
    ListRecommenderSchemasInput: ListRecommenderSchemasInput
    ListRecommenderSchemasOutput: ListRecommenderSchemasOutput
    ListRuleBasedMatchesInput: ListRuleBasedMatchesInput
    ListRuleBasedMatchesOutput: ListRuleBasedMatchesOutput
    ListSegmentDefinitionsInput: ListSegmentDefinitionsInput
    ListSegmentDefinitionsOutput: ListSegmentDefinitionsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListUploadJobsInput: ListUploadJobsInput
    ListUploadJobsOutput: ListUploadJobsOutput
    ListWorkflowsInput: ListWorkflowsInput
    ListWorkflowsOutput: ListWorkflowsOutput
    MergeProfilesInput: MergeProfilesInput
    MergeProfilesOutput: MergeProfilesOutput
    PutDomainObjectTypeInput: PutDomainObjectTypeInput
    PutDomainObjectTypeOutput: PutDomainObjectTypeOutput
    PutIntegrationInput: PutIntegrationInput
    PutIntegrationOutput: PutIntegrationOutput
    PutProfileObjectInput: PutProfileObjectInput
    PutProfileObjectOutput: PutProfileObjectOutput
    PutProfileObjectTypeInput: PutProfileObjectTypeInput
    PutProfileObjectTypeOutput: PutProfileObjectTypeOutput
    SearchProfilesInput: SearchProfilesInput
    SearchProfilesOutput: SearchProfilesOutput
    StartRecommenderInput: StartRecommenderInput
    StartRecommenderOutput: StartRecommenderOutput
    StartUploadJobInput: StartUploadJobInput
    StartUploadJobOutput: StartUploadJobOutput
    StopRecommenderInput: StopRecommenderInput
    StopRecommenderOutput: StopRecommenderOutput
    StopUploadJobInput: StopUploadJobInput
    StopUploadJobOutput: StopUploadJobOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateCalculatedAttributeDefinitionInput: UpdateCalculatedAttributeDefinitionInput
    UpdateCalculatedAttributeDefinitionOutput: UpdateCalculatedAttributeDefinitionOutput
    UpdateDomainInput: UpdateDomainInput
    UpdateDomainOutput: UpdateDomainOutput
    UpdateDomainLayoutInput: UpdateDomainLayoutInput
    UpdateDomainLayoutOutput: UpdateDomainLayoutOutput
    UpdateEventTriggerInput: UpdateEventTriggerInput
    UpdateEventTriggerOutput: UpdateEventTriggerOutput
    UpdateProfileInput: UpdateProfileInput
    UpdateProfileOutput: UpdateProfileOutput
    UpdateRecommenderInput: UpdateRecommenderInput
    UpdateRecommenderOutput: UpdateRecommenderOutput
end

return M
