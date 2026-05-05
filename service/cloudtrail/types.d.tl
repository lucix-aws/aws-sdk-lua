local record AddTagsInput
    ResourceId: string
    TagsList: {Tag}
end

local record AddTagsOutput
end

local record CancelQueryInput
    EventDataStore: string
    QueryId: string
    EventDataStoreOwnerAccountId: string
end

local record CancelQueryOutput
    QueryId: string
    QueryStatus: string
    EventDataStoreOwnerAccountId: string
end

local record CreateChannelInput
    Name: string
    Source: string
    Destinations: {Destination}
    Tags: {Tag}
end

local record CreateChannelOutput
    ChannelArn: string
    Name: string
    Source: string
    Destinations: {Destination}
    Tags: {Tag}
end

local record CreateDashboardInput
    Name: string
    RefreshSchedule: RefreshSchedule
    TagsList: {Tag}
    TerminationProtectionEnabled: boolean
    Widgets: {RequestWidget}
end

local record CreateDashboardOutput
    DashboardArn: string
    Name: string
    Type: string
    Widgets: {Widget}
    TagsList: {Tag}
    RefreshSchedule: RefreshSchedule
    TerminationProtectionEnabled: boolean
end

local record CreateEventDataStoreInput
    Name: string
    AdvancedEventSelectors: {AdvancedEventSelector}
    MultiRegionEnabled: boolean
    OrganizationEnabled: boolean
    RetentionPeriod: number
    TerminationProtectionEnabled: boolean
    TagsList: {Tag}
    KmsKeyId: string
    StartIngestion: boolean
    BillingMode: string
end

local record CreateEventDataStoreOutput
    EventDataStoreArn: string
    Name: string
    Status: string
    AdvancedEventSelectors: {AdvancedEventSelector}
    MultiRegionEnabled: boolean
    OrganizationEnabled: boolean
    RetentionPeriod: number
    TerminationProtectionEnabled: boolean
    TagsList: {Tag}
    CreatedTimestamp: number
    UpdatedTimestamp: number
    KmsKeyId: string
    BillingMode: string
end

local record CreateTrailInput
    Name: string
    S3BucketName: string
    S3KeyPrefix: string
    SnsTopicName: string
    IncludeGlobalServiceEvents: boolean
    IsMultiRegionTrail: boolean
    EnableLogFileValidation: boolean
    CloudWatchLogsLogGroupArn: string
    CloudWatchLogsRoleArn: string
    KmsKeyId: string
    IsOrganizationTrail: boolean
    TagsList: {Tag}
end

local record CreateTrailOutput
    Name: string
    S3BucketName: string
    S3KeyPrefix: string
    SnsTopicName: string
    SnsTopicARN: string
    IncludeGlobalServiceEvents: boolean
    IsMultiRegionTrail: boolean
    TrailARN: string
    LogFileValidationEnabled: boolean
    CloudWatchLogsLogGroupArn: string
    CloudWatchLogsRoleArn: string
    KmsKeyId: string
    IsOrganizationTrail: boolean
end

local record DeleteChannelInput
    Channel: string
end

local record DeleteChannelOutput
end

local record DeleteDashboardInput
    DashboardId: string
end

local record DeleteDashboardOutput
end

local record DeleteEventDataStoreInput
    EventDataStore: string
end

local record DeleteEventDataStoreOutput
end

local record DeleteResourcePolicyInput
    ResourceArn: string
end

local record DeleteResourcePolicyOutput
end

local record DeleteTrailInput
    Name: string
end

local record DeleteTrailOutput
end

local record DeregisterOrganizationDelegatedAdminInput
    DelegatedAdminAccountId: string
end

local record DeregisterOrganizationDelegatedAdminOutput
end

local record DescribeQueryInput
    EventDataStore: string
    QueryId: string
    QueryAlias: string
    RefreshId: string
    EventDataStoreOwnerAccountId: string
end

local record DescribeQueryOutput
    QueryId: string
    QueryString: string
    QueryStatus: string
    QueryStatistics: QueryStatisticsForDescribeQuery
    ErrorMessage: string
    DeliveryS3Uri: string
    DeliveryStatus: string
    Prompt: string
    EventDataStoreOwnerAccountId: string
end

local record DescribeTrailsInput
    trailNameList: {string}
    includeShadowTrails: boolean
end

local record DescribeTrailsOutput
    trailList: {Trail}
end

local record DisableFederationInput
    EventDataStore: string
end

local record DisableFederationOutput
    EventDataStoreArn: string
    FederationStatus: string
end

local record EnableFederationInput
    EventDataStore: string
    FederationRoleArn: string
end

local record EnableFederationOutput
    EventDataStoreArn: string
    FederationStatus: string
    FederationRoleArn: string
end

local record GenerateQueryInput
    EventDataStores: {string}
    Prompt: string
end

local record GenerateQueryOutput
    QueryStatement: string
    QueryAlias: string
    EventDataStoreOwnerAccountId: string
end

local record GetChannelInput
    Channel: string
end

local record GetChannelOutput
    ChannelArn: string
    Name: string
    Source: string
    SourceConfig: SourceConfig
    Destinations: {Destination}
    IngestionStatus: IngestionStatus
end

local record GetDashboardInput
    DashboardId: string
end

local record GetDashboardOutput
    DashboardArn: string
    Type: string
    Status: string
    Widgets: {Widget}
    RefreshSchedule: RefreshSchedule
    CreatedTimestamp: number
    UpdatedTimestamp: number
    LastRefreshId: string
    LastRefreshFailureReason: string
    TerminationProtectionEnabled: boolean
end

local record GetEventConfigurationInput
    TrailName: string
    EventDataStore: string
end

local record GetEventConfigurationOutput
    TrailARN: string
    EventDataStoreArn: string
    MaxEventSize: string
    ContextKeySelectors: {ContextKeySelector}
    AggregationConfigurations: {AggregationConfiguration}
end

local record GetEventDataStoreInput
    EventDataStore: string
end

local record GetEventDataStoreOutput
    EventDataStoreArn: string
    Name: string
    Status: string
    AdvancedEventSelectors: {AdvancedEventSelector}
    MultiRegionEnabled: boolean
    OrganizationEnabled: boolean
    RetentionPeriod: number
    TerminationProtectionEnabled: boolean
    CreatedTimestamp: number
    UpdatedTimestamp: number
    KmsKeyId: string
    BillingMode: string
    FederationStatus: string
    FederationRoleArn: string
    PartitionKeys: {PartitionKey}
end

local record GetEventSelectorsInput
    TrailName: string
end

local record GetEventSelectorsOutput
    TrailARN: string
    EventSelectors: {EventSelector}
    AdvancedEventSelectors: {AdvancedEventSelector}
end

local record GetImportInput
    ImportId: string
end

local record GetImportOutput
    ImportId: string
    Destinations: {string}
    ImportSource: ImportSource
    StartEventTime: number
    EndEventTime: number
    ImportStatus: string
    CreatedTimestamp: number
    UpdatedTimestamp: number
    ImportStatistics: ImportStatistics
end

local record GetInsightSelectorsInput
    TrailName: string
    EventDataStore: string
end

local record GetInsightSelectorsOutput
    TrailARN: string
    InsightSelectors: {InsightSelector}
    EventDataStoreArn: string
    InsightsDestination: string
end

local record GetQueryResultsInput
    EventDataStore: string
    QueryId: string
    NextToken: string
    MaxQueryResults: number
    EventDataStoreOwnerAccountId: string
end

local record GetQueryResultsOutput
    QueryStatus: string
    QueryStatistics: QueryStatistics
    QueryResultRows: {{{string : string}}}
    NextToken: string
    ErrorMessage: string
end

local record GetResourcePolicyInput
    ResourceArn: string
end

local record GetResourcePolicyOutput
    ResourceArn: string
    ResourcePolicy: string
    DelegatedAdminResourcePolicy: string
end

local record GetTrailInput
    Name: string
end

local record GetTrailOutput
    Trail: Trail
end

local record GetTrailStatusInput
    Name: string
end

local record GetTrailStatusOutput
    IsLogging: boolean
    LatestDeliveryError: string
    LatestNotificationError: string
    LatestDeliveryTime: number
    LatestNotificationTime: number
    StartLoggingTime: number
    StopLoggingTime: number
    LatestCloudWatchLogsDeliveryError: string
    LatestCloudWatchLogsDeliveryTime: number
    LatestDigestDeliveryTime: number
    LatestDigestDeliveryError: string
    LatestDeliveryAttemptTime: string
    LatestNotificationAttemptTime: string
    LatestNotificationAttemptSucceeded: string
    LatestDeliveryAttemptSucceeded: string
    TimeLoggingStarted: string
    TimeLoggingStopped: string
end

local record ListChannelsInput
    MaxResults: number
    NextToken: string
end

local record ListChannelsOutput
    Channels: {Channel}
    NextToken: string
end

local record ListDashboardsInput
    NamePrefix: string
    Type: string
    NextToken: string
    MaxResults: number
end

local record ListDashboardsOutput
    Dashboards: {DashboardDetail}
    NextToken: string
end

local record ListEventDataStoresInput
    NextToken: string
    MaxResults: number
end

local record ListEventDataStoresOutput
    EventDataStores: {EventDataStore}
    NextToken: string
end

local record ListImportFailuresInput
    ImportId: string
    MaxResults: number
    NextToken: string
end

local record ListImportFailuresOutput
    Failures: {ImportFailureListItem}
    NextToken: string
end

local record ListImportsInput
    MaxResults: number
    Destination: string
    ImportStatus: string
    NextToken: string
end

local record ListImportsOutput
    Imports: {ImportsListItem}
    NextToken: string
end

local record ListInsightsDataInput
    InsightSource: string
    DataType: string
    Dimensions: {string : string}
    StartTime: number
    EndTime: number
    MaxResults: number
    NextToken: string
end

local record ListInsightsDataOutput
    Events: {Event}
    NextToken: string
end

local record ListInsightsMetricDataInput
    TrailName: string
    EventSource: string
    EventName: string
    InsightType: string
    ErrorCode: string
    StartTime: number
    EndTime: number
    Period: number
    DataType: string
    MaxResults: number
    NextToken: string
end

local record ListInsightsMetricDataOutput
    TrailARN: string
    EventSource: string
    EventName: string
    InsightType: string
    ErrorCode: string
    Timestamps: {number}
    Values: {number}
    NextToken: string
end

local record ListPublicKeysInput
    StartTime: number
    EndTime: number
    NextToken: string
end

local record ListPublicKeysOutput
    PublicKeyList: {PublicKey}
    NextToken: string
end

local record ListQueriesInput
    EventDataStore: string
    NextToken: string
    MaxResults: number
    StartTime: number
    EndTime: number
    QueryStatus: string
end

local record ListQueriesOutput
    Queries: {Query}
    NextToken: string
end

local record ListTagsInput
    ResourceIdList: {string}
    NextToken: string
end

local record ListTagsOutput
    ResourceTagList: {ResourceTag}
    NextToken: string
end

local record ListTrailsInput
    NextToken: string
end

local record ListTrailsOutput
    Trails: {TrailInfo}
    NextToken: string
end

local record LookupEventsInput
    LookupAttributes: {LookupAttribute}
    StartTime: number
    EndTime: number
    EventCategory: string
    MaxResults: number
    NextToken: string
end

local record LookupEventsOutput
    Events: {Event}
    NextToken: string
end

local record PutEventConfigurationInput
    TrailName: string
    EventDataStore: string
    MaxEventSize: string
    ContextKeySelectors: {ContextKeySelector}
    AggregationConfigurations: {AggregationConfiguration}
end

local record PutEventConfigurationOutput
    TrailARN: string
    EventDataStoreArn: string
    MaxEventSize: string
    ContextKeySelectors: {ContextKeySelector}
    AggregationConfigurations: {AggregationConfiguration}
end

local record PutEventSelectorsInput
    TrailName: string
    EventSelectors: {EventSelector}
    AdvancedEventSelectors: {AdvancedEventSelector}
end

local record PutEventSelectorsOutput
    TrailARN: string
    EventSelectors: {EventSelector}
    AdvancedEventSelectors: {AdvancedEventSelector}
end

local record PutInsightSelectorsInput
    TrailName: string
    InsightSelectors: {InsightSelector}
    EventDataStore: string
    InsightsDestination: string
end

local record PutInsightSelectorsOutput
    TrailARN: string
    InsightSelectors: {InsightSelector}
    EventDataStoreArn: string
    InsightsDestination: string
end

local record PutResourcePolicyInput
    ResourceArn: string
    ResourcePolicy: string
end

local record PutResourcePolicyOutput
    ResourceArn: string
    ResourcePolicy: string
    DelegatedAdminResourcePolicy: string
end

local record RegisterOrganizationDelegatedAdminInput
    MemberAccountId: string
end

local record RegisterOrganizationDelegatedAdminOutput
end

local record RemoveTagsInput
    ResourceId: string
    TagsList: {Tag}
end

local record RemoveTagsOutput
end

local record RestoreEventDataStoreInput
    EventDataStore: string
end

local record RestoreEventDataStoreOutput
    EventDataStoreArn: string
    Name: string
    Status: string
    AdvancedEventSelectors: {AdvancedEventSelector}
    MultiRegionEnabled: boolean
    OrganizationEnabled: boolean
    RetentionPeriod: number
    TerminationProtectionEnabled: boolean
    CreatedTimestamp: number
    UpdatedTimestamp: number
    KmsKeyId: string
    BillingMode: string
end

local record SearchSampleQueriesInput
    SearchPhrase: string
    MaxResults: number
    NextToken: string
end

local record SearchSampleQueriesOutput
    SearchResults: {SearchSampleQueriesSearchResult}
    NextToken: string
end

local record StartDashboardRefreshInput
    DashboardId: string
    QueryParameterValues: {string : string}
end

local record StartDashboardRefreshOutput
    RefreshId: string
end

local record StartEventDataStoreIngestionInput
    EventDataStore: string
end

local record StartEventDataStoreIngestionOutput
end

local record StartImportInput
    Destinations: {string}
    ImportSource: ImportSource
    StartEventTime: number
    EndEventTime: number
    ImportId: string
end

local record StartImportOutput
    ImportId: string
    Destinations: {string}
    ImportSource: ImportSource
    StartEventTime: number
    EndEventTime: number
    ImportStatus: string
    CreatedTimestamp: number
    UpdatedTimestamp: number
end

local record StartLoggingInput
    Name: string
end

local record StartLoggingOutput
end

local record StartQueryInput
    QueryStatement: string
    DeliveryS3Uri: string
    QueryAlias: string
    QueryParameters: {string}
    EventDataStoreOwnerAccountId: string
end

local record StartQueryOutput
    QueryId: string
    EventDataStoreOwnerAccountId: string
end

local record StopEventDataStoreIngestionInput
    EventDataStore: string
end

local record StopEventDataStoreIngestionOutput
end

local record StopImportInput
    ImportId: string
end

local record StopImportOutput
    ImportId: string
    ImportSource: ImportSource
    Destinations: {string}
    ImportStatus: string
    CreatedTimestamp: number
    UpdatedTimestamp: number
    StartEventTime: number
    EndEventTime: number
    ImportStatistics: ImportStatistics
end

local record StopLoggingInput
    Name: string
end

local record StopLoggingOutput
end

local record UpdateChannelInput
    Channel: string
    Destinations: {Destination}
    Name: string
end

local record UpdateChannelOutput
    ChannelArn: string
    Name: string
    Source: string
    Destinations: {Destination}
end

local record UpdateDashboardInput
    DashboardId: string
    Widgets: {RequestWidget}
    RefreshSchedule: RefreshSchedule
    TerminationProtectionEnabled: boolean
end

local record UpdateDashboardOutput
    DashboardArn: string
    Name: string
    Type: string
    Widgets: {Widget}
    RefreshSchedule: RefreshSchedule
    TerminationProtectionEnabled: boolean
    CreatedTimestamp: number
    UpdatedTimestamp: number
end

local record UpdateEventDataStoreInput
    EventDataStore: string
    Name: string
    AdvancedEventSelectors: {AdvancedEventSelector}
    MultiRegionEnabled: boolean
    OrganizationEnabled: boolean
    RetentionPeriod: number
    TerminationProtectionEnabled: boolean
    KmsKeyId: string
    BillingMode: string
end

local record UpdateEventDataStoreOutput
    EventDataStoreArn: string
    Name: string
    Status: string
    AdvancedEventSelectors: {AdvancedEventSelector}
    MultiRegionEnabled: boolean
    OrganizationEnabled: boolean
    RetentionPeriod: number
    TerminationProtectionEnabled: boolean
    CreatedTimestamp: number
    UpdatedTimestamp: number
    KmsKeyId: string
    BillingMode: string
    FederationStatus: string
    FederationRoleArn: string
end

local record UpdateTrailInput
    Name: string
    S3BucketName: string
    S3KeyPrefix: string
    SnsTopicName: string
    IncludeGlobalServiceEvents: boolean
    IsMultiRegionTrail: boolean
    EnableLogFileValidation: boolean
    CloudWatchLogsLogGroupArn: string
    CloudWatchLogsRoleArn: string
    KmsKeyId: string
    IsOrganizationTrail: boolean
end

local record UpdateTrailOutput
    Name: string
    S3BucketName: string
    S3KeyPrefix: string
    SnsTopicName: string
    SnsTopicARN: string
    IncludeGlobalServiceEvents: boolean
    IsMultiRegionTrail: boolean
    TrailARN: string
    LogFileValidationEnabled: boolean
    CloudWatchLogsLogGroupArn: string
    CloudWatchLogsRoleArn: string
    KmsKeyId: string
    IsOrganizationTrail: boolean
end

local record ChannelARNInvalidException
    Message: string
end

local record ChannelNotFoundException
    Message: string
end

local record CloudTrailARNInvalidException
    Message: string
end

local record ConflictException
    Message: string
end

local record EventDataStoreARNInvalidException
    Message: string
end

local record EventDataStoreNotFoundException
    Message: string
end

local record InactiveEventDataStoreException
    Message: string
end

local record InvalidTagParameterException
    Message: string
end

local record InvalidTrailNameException
    Message: string
end

local record NoManagementAccountSLRExistsException
    Message: string
end

local record NotOrganizationMasterAccountException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceTypeNotSupportedException
    Message: string
end

local record TagsLimitExceededException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record ConflictException
    Message: string
end

local record EventDataStoreARNInvalidException
    Message: string
end

local record EventDataStoreNotFoundException
    Message: string
end

local record InactiveEventDataStoreException
    Message: string
end

local record InactiveQueryException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NoManagementAccountSLRExistsException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record QueryIdNotFoundException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record ChannelAlreadyExistsException
    Message: string
end

local record ChannelMaxLimitExceededException
    Message: string
end

local record EventDataStoreARNInvalidException
    Message: string
end

local record EventDataStoreNotFoundException
    Message: string
end

local record InactiveEventDataStoreException
    Message: string
end

local record InvalidEventDataStoreCategoryException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidSourceException
    Message: string
end

local record InvalidTagParameterException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record TagsLimitExceededException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record ConflictException
    Message: string
end

local record EventDataStoreNotFoundException
    Message: string
end

local record InactiveEventDataStoreException
    Message: string
end

local record InsufficientEncryptionPolicyException
    Message: string
end

local record InvalidQueryStatementException
    Message: string
end

local record InvalidTagParameterException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record CloudTrailAccessNotEnabledException
    Message: string
end

local record ConflictException
    Message: string
end

local record EventDataStoreAlreadyExistsException
    Message: string
end

local record EventDataStoreMaxLimitExceededException
    Message: string
end

local record InsufficientDependencyServiceAccessPermissionException
    Message: string
end

local record InsufficientEncryptionPolicyException
    Message: string
end

local record InvalidEventSelectorsException
    Message: string
end

local record InvalidKmsKeyIdException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidTagParameterException
    Message: string
end

local record KmsException
    Message: string
end

local record KmsKeyNotFoundException
    Message: string
end

local record NoManagementAccountSLRExistsException
    Message: string
end

local record NotOrganizationMasterAccountException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record OrganizationNotInAllFeaturesModeException
    Message: string
end

local record OrganizationsNotInUseException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record CloudTrailAccessNotEnabledException
    Message: string
end

local record CloudTrailInvalidClientTokenIdException
    Message: string
end

local record CloudWatchLogsDeliveryUnavailableException
    Message: string
end

local record ConflictException
    Message: string
end

local record InsufficientDependencyServiceAccessPermissionException
    Message: string
end

local record InsufficientEncryptionPolicyException
    Message: string
end

local record InsufficientS3BucketPolicyException
    Message: string
end

local record InsufficientSnsTopicPolicyException
    Message: string
end

local record InvalidCloudWatchLogsLogGroupArnException
    Message: string
end

local record InvalidCloudWatchLogsRoleArnException
    Message: string
end

local record InvalidKmsKeyIdException
    Message: string
end

local record InvalidParameterCombinationException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidS3BucketNameException
    Message: string
end

local record InvalidS3PrefixException
    Message: string
end

local record InvalidSnsTopicNameException
    Message: string
end

local record InvalidTagParameterException
    Message: string
end

local record InvalidTrailNameException
    Message: string
end

local record KmsException
    Message: string
end

local record KmsKeyDisabledException
    Message: string
end

local record KmsKeyNotFoundException
    Message: string
end

local record MaximumNumberOfTrailsExceededException
    Message: string
end

local record NoManagementAccountSLRExistsException
    Message: string
end

local record NotOrganizationMasterAccountException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record OrganizationNotInAllFeaturesModeException
    Message: string
end

local record OrganizationsNotInUseException
    Message: string
end

local record S3BucketDoesNotExistException
    Message: string
end

local record TagsLimitExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record TrailAlreadyExistsException
    Message: string
end

local record TrailNotProvidedException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record ChannelARNInvalidException
    Message: string
end

local record ChannelNotFoundException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record ChannelExistsForEDSException
    Message: string
end

local record ConflictException
    Message: string
end

local record EventDataStoreARNInvalidException
    Message: string
end

local record EventDataStoreFederationEnabledException
    Message: string
end

local record EventDataStoreHasOngoingImportException
    Message: string
end

local record EventDataStoreNotFoundException
    Message: string
end

local record EventDataStoreTerminationProtectedException
    Message: string
end

local record InactiveEventDataStoreException
    Message: string
end

local record InsufficientDependencyServiceAccessPermissionException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NoManagementAccountSLRExistsException
    Message: string
end

local record NotOrganizationMasterAccountException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record ConflictException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceARNNotValidException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourcePolicyNotFoundException
    Message: string
end

local record ResourceTypeNotSupportedException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record CloudTrailARNInvalidException
    Message: string
end

local record ConflictException
    Message: string
end

local record InsufficientDependencyServiceAccessPermissionException
    Message: string
end

local record InvalidHomeRegionException
    Message: string
end

local record InvalidTrailNameException
    Message: string
end

local record NoManagementAccountSLRExistsException
    Message: string
end

local record NotOrganizationMasterAccountException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record TrailNotFoundException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record AccountNotFoundException
    Message: string
end

local record AccountNotRegisteredException
    Message: string
end

local record CloudTrailAccessNotEnabledException
    Message: string
end

local record ConflictException
    Message: string
end

local record InsufficientDependencyServiceAccessPermissionException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NotOrganizationManagementAccountException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record OrganizationNotInAllFeaturesModeException
    Message: string
end

local record OrganizationsNotInUseException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record EventDataStoreARNInvalidException
    Message: string
end

local record EventDataStoreNotFoundException
    Message: string
end

local record InactiveEventDataStoreException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NoManagementAccountSLRExistsException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record QueryIdNotFoundException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record CloudTrailARNInvalidException
    Message: string
end

local record InvalidTrailNameException
    Message: string
end

local record NoManagementAccountSLRExistsException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record CloudTrailAccessNotEnabledException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EventDataStoreARNInvalidException
    Message: string
end

local record EventDataStoreNotFoundException
    Message: string
end

local record InactiveEventDataStoreException
    Message: string
end

local record InsufficientDependencyServiceAccessPermissionException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NoManagementAccountSLRExistsException
    Message: string
end

local record NotOrganizationMasterAccountException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record OrganizationNotInAllFeaturesModeException
    Message: string
end

local record OrganizationsNotInUseException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record CloudTrailAccessNotEnabledException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EventDataStoreARNInvalidException
    Message: string
end

local record EventDataStoreFederationEnabledException
    Message: string
end

local record EventDataStoreNotFoundException
    Message: string
end

local record InactiveEventDataStoreException
    Message: string
end

local record InsufficientDependencyServiceAccessPermissionException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NoManagementAccountSLRExistsException
    Message: string
end

local record NotOrganizationMasterAccountException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record OrganizationNotInAllFeaturesModeException
    Message: string
end

local record OrganizationsNotInUseException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record EventDataStoreARNInvalidException
    Message: string
end

local record EventDataStoreNotFoundException
    Message: string
end

local record GenerateResponseException
    Message: string
end

local record InactiveEventDataStoreException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NoManagementAccountSLRExistsException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record ChannelARNInvalidException
    Message: string
end

local record ChannelNotFoundException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record CloudTrailARNInvalidException
    Message: string
end

local record EventDataStoreARNInvalidException
    Message: string
end

local record EventDataStoreNotFoundException
    Message: string
end

local record InvalidEventDataStoreCategoryException
    Message: string
end

local record InvalidEventDataStoreStatusException
    Message: string
end

local record InvalidParameterCombinationException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidTrailNameException
    Message: string
end

local record NoManagementAccountSLRExistsException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record TrailNotFoundException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record EventDataStoreARNInvalidException
    Message: string
end

local record EventDataStoreNotFoundException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NoManagementAccountSLRExistsException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record CloudTrailARNInvalidException
    Message: string
end

local record InvalidTrailNameException
    Message: string
end

local record NoManagementAccountSLRExistsException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record TrailNotFoundException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record ImportNotFoundException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record CloudTrailARNInvalidException
    Message: string
end

local record InsightNotEnabledException
    Message: string
end

local record InvalidParameterCombinationException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidTrailNameException
    Message: string
end

local record NoManagementAccountSLRExistsException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record TrailNotFoundException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record EventDataStoreARNInvalidException
    Message: string
end

local record EventDataStoreNotFoundException
    Message: string
end

local record InactiveEventDataStoreException
    Message: string
end

local record InsufficientEncryptionPolicyException
    Message: string
end

local record InvalidMaxResultsException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NoManagementAccountSLRExistsException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record QueryIdNotFoundException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceARNNotValidException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourcePolicyNotFoundException
    Message: string
end

local record ResourceTypeNotSupportedException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record CloudTrailARNInvalidException
    Message: string
end

local record InvalidTrailNameException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record TrailNotFoundException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record CloudTrailARNInvalidException
    Message: string
end

local record InvalidTrailNameException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record TrailNotFoundException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record InvalidMaxResultsException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record NoManagementAccountSLRExistsException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record EventDataStoreARNInvalidException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidTrailNameException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record InvalidTimeRangeException
    Message: string
end

local record InvalidTokenException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record EventDataStoreARNInvalidException
    Message: string
end

local record EventDataStoreNotFoundException
    Message: string
end

local record InactiveEventDataStoreException
    Message: string
end

local record InvalidDateRangeException
    Message: string
end

local record InvalidMaxResultsException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidQueryStatusException
    Message: string
end

local record NoManagementAccountSLRExistsException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record ChannelARNInvalidException
    Message: string
end

local record CloudTrailARNInvalidException
    Message: string
end

local record EventDataStoreARNInvalidException
    Message: string
end

local record EventDataStoreNotFoundException
    Message: string
end

local record InactiveEventDataStoreException
    Message: string
end

local record InvalidTokenException
    Message: string
end

local record InvalidTrailNameException
    Message: string
end

local record NoManagementAccountSLRExistsException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceTypeNotSupportedException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record InvalidEventCategoryException
    Message: string
end

local record InvalidLookupAttributesException
    Message: string
end

local record InvalidMaxResultsException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidTimeRangeException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record CloudTrailARNInvalidException
    Message: string
end

local record ConflictException
    Message: string
end

local record EventDataStoreARNInvalidException
    Message: string
end

local record EventDataStoreNotFoundException
    Message: string
end

local record InactiveEventDataStoreException
    Message: string
end

local record InsufficientDependencyServiceAccessPermissionException
    Message: string
end

local record InsufficientIAMAccessPermissionException
    Message: string
end

local record InvalidEventDataStoreCategoryException
    Message: string
end

local record InvalidEventDataStoreStatusException
    Message: string
end

local record InvalidHomeRegionException
    Message: string
end

local record InvalidParameterCombinationException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidTrailNameException
    Message: string
end

local record NoManagementAccountSLRExistsException
    Message: string
end

local record NotOrganizationMasterAccountException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record TrailNotFoundException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record CloudTrailARNInvalidException
    Message: string
end

local record ConflictException
    Message: string
end

local record InsufficientDependencyServiceAccessPermissionException
    Message: string
end

local record InvalidEventSelectorsException
    Message: string
end

local record InvalidHomeRegionException
    Message: string
end

local record InvalidTrailNameException
    Message: string
end

local record NoManagementAccountSLRExistsException
    Message: string
end

local record NotOrganizationMasterAccountException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record TrailNotFoundException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record CloudTrailARNInvalidException
    Message: string
end

local record InsufficientEncryptionPolicyException
    Message: string
end

local record InsufficientS3BucketPolicyException
    Message: string
end

local record InvalidHomeRegionException
    Message: string
end

local record InvalidInsightSelectorsException
    Message: string
end

local record InvalidParameterCombinationException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidTrailNameException
    Message: string
end

local record KmsException
    Message: string
end

local record NoManagementAccountSLRExistsException
    Message: string
end

local record NotOrganizationMasterAccountException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record S3BucketDoesNotExistException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record TrailNotFoundException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record ConflictException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceARNNotValidException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourcePolicyNotValidException
    Message: string
end

local record ResourceTypeNotSupportedException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record AccountNotFoundException
    Message: string
end

local record AccountRegisteredException
    Message: string
end

local record CannotDelegateManagementAccountException
    Message: string
end

local record CloudTrailAccessNotEnabledException
    Message: string
end

local record ConflictException
    Message: string
end

local record DelegatedAdminAccountLimitExceededException
    Message: string
end

local record InsufficientDependencyServiceAccessPermissionException
    Message: string
end

local record InsufficientIAMAccessPermissionException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NotOrganizationManagementAccountException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record OrganizationNotInAllFeaturesModeException
    Message: string
end

local record OrganizationsNotInUseException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record ChannelARNInvalidException
    Message: string
end

local record ChannelNotFoundException
    Message: string
end

local record CloudTrailARNInvalidException
    Message: string
end

local record ConflictException
    Message: string
end

local record EventDataStoreARNInvalidException
    Message: string
end

local record EventDataStoreNotFoundException
    Message: string
end

local record InactiveEventDataStoreException
    Message: string
end

local record InvalidTagParameterException
    Message: string
end

local record InvalidTrailNameException
    Message: string
end

local record NoManagementAccountSLRExistsException
    Message: string
end

local record NotOrganizationMasterAccountException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceTypeNotSupportedException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record CloudTrailAccessNotEnabledException
    Message: string
end

local record EventDataStoreARNInvalidException
    Message: string
end

local record EventDataStoreMaxLimitExceededException
    Message: string
end

local record EventDataStoreNotFoundException
    Message: string
end

local record InsufficientDependencyServiceAccessPermissionException
    Message: string
end

local record InvalidEventDataStoreStatusException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NoManagementAccountSLRExistsException
    Message: string
end

local record NotOrganizationMasterAccountException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record OrganizationNotInAllFeaturesModeException
    Message: string
end

local record OrganizationsNotInUseException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record EventDataStoreNotFoundException
    Message: string
end

local record InactiveEventDataStoreException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record ConflictException
    Message: string
end

local record EventDataStoreARNInvalidException
    Message: string
end

local record EventDataStoreNotFoundException
    Message: string
end

local record InsufficientDependencyServiceAccessPermissionException
    Message: string
end

local record InvalidEventDataStoreCategoryException
    Message: string
end

local record InvalidEventDataStoreStatusException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NoManagementAccountSLRExistsException
    Message: string
end

local record NotOrganizationMasterAccountException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record AccountHasOngoingImportException
    Message: string
end

local record EventDataStoreARNInvalidException
    Message: string
end

local record EventDataStoreNotFoundException
    Message: string
end

local record ImportNotFoundException
    Message: string
end

local record InactiveEventDataStoreException
    Message: string
end

local record InsufficientEncryptionPolicyException
    Message: string
end

local record InvalidEventDataStoreCategoryException
    Message: string
end

local record InvalidEventDataStoreStatusException
    Message: string
end

local record InvalidImportSourceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record CloudTrailARNInvalidException
    Message: string
end

local record ConflictException
    Message: string
end

local record InsufficientDependencyServiceAccessPermissionException
    Message: string
end

local record InvalidHomeRegionException
    Message: string
end

local record InvalidTrailNameException
    Message: string
end

local record NoManagementAccountSLRExistsException
    Message: string
end

local record NotOrganizationMasterAccountException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record TrailNotFoundException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record EventDataStoreARNInvalidException
    Message: string
end

local record EventDataStoreNotFoundException
    Message: string
end

local record InactiveEventDataStoreException
    Message: string
end

local record InsufficientEncryptionPolicyException
    Message: string
end

local record InsufficientS3BucketPolicyException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidQueryStatementException
    Message: string
end

local record InvalidS3BucketNameException
    Message: string
end

local record InvalidS3PrefixException
    Message: string
end

local record MaxConcurrentQueriesException
    Message: string
end

local record NoManagementAccountSLRExistsException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record S3BucketDoesNotExistException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record ConflictException
    Message: string
end

local record EventDataStoreARNInvalidException
    Message: string
end

local record EventDataStoreNotFoundException
    Message: string
end

local record InsufficientDependencyServiceAccessPermissionException
    Message: string
end

local record InvalidEventDataStoreCategoryException
    Message: string
end

local record InvalidEventDataStoreStatusException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NoManagementAccountSLRExistsException
    Message: string
end

local record NotOrganizationMasterAccountException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record ImportNotFoundException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record CloudTrailARNInvalidException
    Message: string
end

local record ConflictException
    Message: string
end

local record InsufficientDependencyServiceAccessPermissionException
    Message: string
end

local record InvalidHomeRegionException
    Message: string
end

local record InvalidTrailNameException
    Message: string
end

local record NoManagementAccountSLRExistsException
    Message: string
end

local record NotOrganizationMasterAccountException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record TrailNotFoundException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record ChannelAlreadyExistsException
    Message: string
end

local record ChannelARNInvalidException
    Message: string
end

local record ChannelNotFoundException
    Message: string
end

local record EventDataStoreARNInvalidException
    Message: string
end

local record EventDataStoreNotFoundException
    Message: string
end

local record InactiveEventDataStoreException
    Message: string
end

local record InvalidEventDataStoreCategoryException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record ConflictException
    Message: string
end

local record EventDataStoreNotFoundException
    Message: string
end

local record InactiveEventDataStoreException
    Message: string
end

local record InsufficientEncryptionPolicyException
    Message: string
end

local record InvalidQueryStatementException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record CloudTrailAccessNotEnabledException
    Message: string
end

local record ConflictException
    Message: string
end

local record EventDataStoreAlreadyExistsException
    Message: string
end

local record EventDataStoreARNInvalidException
    Message: string
end

local record EventDataStoreHasOngoingImportException
    Message: string
end

local record EventDataStoreNotFoundException
    Message: string
end

local record InactiveEventDataStoreException
    Message: string
end

local record InsufficientDependencyServiceAccessPermissionException
    Message: string
end

local record InsufficientEncryptionPolicyException
    Message: string
end

local record InvalidEventSelectorsException
    Message: string
end

local record InvalidInsightSelectorsException
    Message: string
end

local record InvalidKmsKeyIdException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record KmsException
    Message: string
end

local record KmsKeyNotFoundException
    Message: string
end

local record NoManagementAccountSLRExistsException
    Message: string
end

local record NotOrganizationMasterAccountException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record OrganizationNotInAllFeaturesModeException
    Message: string
end

local record OrganizationsNotInUseException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record CloudTrailAccessNotEnabledException
    Message: string
end

local record CloudTrailARNInvalidException
    Message: string
end

local record CloudTrailInvalidClientTokenIdException
    Message: string
end

local record CloudWatchLogsDeliveryUnavailableException
    Message: string
end

local record ConflictException
    Message: string
end

local record InsufficientDependencyServiceAccessPermissionException
    Message: string
end

local record InsufficientEncryptionPolicyException
    Message: string
end

local record InsufficientS3BucketPolicyException
    Message: string
end

local record InsufficientSnsTopicPolicyException
    Message: string
end

local record InvalidCloudWatchLogsLogGroupArnException
    Message: string
end

local record InvalidCloudWatchLogsRoleArnException
    Message: string
end

local record InvalidEventSelectorsException
    Message: string
end

local record InvalidHomeRegionException
    Message: string
end

local record InvalidKmsKeyIdException
    Message: string
end

local record InvalidParameterCombinationException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record InvalidS3BucketNameException
    Message: string
end

local record InvalidS3PrefixException
    Message: string
end

local record InvalidSnsTopicNameException
    Message: string
end

local record InvalidTrailNameException
    Message: string
end

local record KmsException
    Message: string
end

local record KmsKeyDisabledException
    Message: string
end

local record KmsKeyNotFoundException
    Message: string
end

local record NoManagementAccountSLRExistsException
    Message: string
end

local record NotOrganizationMasterAccountException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record OrganizationNotInAllFeaturesModeException
    Message: string
end

local record OrganizationsNotInUseException
    Message: string
end

local record S3BucketDoesNotExistException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record TrailNotFoundException
    Message: string
end

local record TrailNotProvidedException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local type DashboardStatus = "CREATING" | "CREATED" | "UPDATING" | "UPDATED" | "DELETING"

local type MaxEventSize = "Standard" | "Large"

local type ImportStatus = "INITIALIZING" | "IN_PROGRESS" | "FAILED" | "STOPPED" | "COMPLETED"

local type ListInsightsDataType = "InsightsEvents"

local type EventDataStoreStatus = "CREATED" | "ENABLED" | "PENDING_DELETION" | "STARTING_INGESTION" | "STOPPING_INGESTION" | "STOPPED_INGESTION"

local type DeliveryStatus = "SUCCESS" | "FAILED" | "FAILED_SIGNING_FILE" | "PENDING" | "RESOURCE_NOT_FOUND" | "ACCESS_DENIED" | "ACCESS_DENIED_SIGNING_FILE" | "CANCELLED" | "UNKNOWN"

local type InsightsMetricDataType = "FillWithZeros" | "NonZeroData"

local type InsightType = "ApiCallRateInsight" | "ApiErrorRateInsight"

local type EventCategory = "insight"

local type BillingMode = "EXTENDABLE_RETENTION_PRICING" | "FIXED_RETENTION_PRICING"

local type DashboardType = "MANAGED" | "CUSTOM"

local type QueryStatus = "QUEUED" | "RUNNING" | "FINISHED" | "FAILED" | "CANCELLED" | "TIMED_OUT"

local type FederationStatus = "ENABLING" | "ENABLED" | "DISABLING" | "DISABLED"

local record M
    AddTagsInput: AddTagsInput
    AddTagsOutput: AddTagsOutput
    CancelQueryInput: CancelQueryInput
    CancelQueryOutput: CancelQueryOutput
    CreateChannelInput: CreateChannelInput
    CreateChannelOutput: CreateChannelOutput
    CreateDashboardInput: CreateDashboardInput
    CreateDashboardOutput: CreateDashboardOutput
    CreateEventDataStoreInput: CreateEventDataStoreInput
    CreateEventDataStoreOutput: CreateEventDataStoreOutput
    CreateTrailInput: CreateTrailInput
    CreateTrailOutput: CreateTrailOutput
    DeleteChannelInput: DeleteChannelInput
    DeleteChannelOutput: DeleteChannelOutput
    DeleteDashboardInput: DeleteDashboardInput
    DeleteDashboardOutput: DeleteDashboardOutput
    DeleteEventDataStoreInput: DeleteEventDataStoreInput
    DeleteEventDataStoreOutput: DeleteEventDataStoreOutput
    DeleteResourcePolicyInput: DeleteResourcePolicyInput
    DeleteResourcePolicyOutput: DeleteResourcePolicyOutput
    DeleteTrailInput: DeleteTrailInput
    DeleteTrailOutput: DeleteTrailOutput
    DeregisterOrganizationDelegatedAdminInput: DeregisterOrganizationDelegatedAdminInput
    DeregisterOrganizationDelegatedAdminOutput: DeregisterOrganizationDelegatedAdminOutput
    DescribeQueryInput: DescribeQueryInput
    DescribeQueryOutput: DescribeQueryOutput
    DescribeTrailsInput: DescribeTrailsInput
    DescribeTrailsOutput: DescribeTrailsOutput
    DisableFederationInput: DisableFederationInput
    DisableFederationOutput: DisableFederationOutput
    EnableFederationInput: EnableFederationInput
    EnableFederationOutput: EnableFederationOutput
    GenerateQueryInput: GenerateQueryInput
    GenerateQueryOutput: GenerateQueryOutput
    GetChannelInput: GetChannelInput
    GetChannelOutput: GetChannelOutput
    GetDashboardInput: GetDashboardInput
    GetDashboardOutput: GetDashboardOutput
    GetEventConfigurationInput: GetEventConfigurationInput
    GetEventConfigurationOutput: GetEventConfigurationOutput
    GetEventDataStoreInput: GetEventDataStoreInput
    GetEventDataStoreOutput: GetEventDataStoreOutput
    GetEventSelectorsInput: GetEventSelectorsInput
    GetEventSelectorsOutput: GetEventSelectorsOutput
    GetImportInput: GetImportInput
    GetImportOutput: GetImportOutput
    GetInsightSelectorsInput: GetInsightSelectorsInput
    GetInsightSelectorsOutput: GetInsightSelectorsOutput
    GetQueryResultsInput: GetQueryResultsInput
    GetQueryResultsOutput: GetQueryResultsOutput
    GetResourcePolicyInput: GetResourcePolicyInput
    GetResourcePolicyOutput: GetResourcePolicyOutput
    GetTrailInput: GetTrailInput
    GetTrailOutput: GetTrailOutput
    GetTrailStatusInput: GetTrailStatusInput
    GetTrailStatusOutput: GetTrailStatusOutput
    ListChannelsInput: ListChannelsInput
    ListChannelsOutput: ListChannelsOutput
    ListDashboardsInput: ListDashboardsInput
    ListDashboardsOutput: ListDashboardsOutput
    ListEventDataStoresInput: ListEventDataStoresInput
    ListEventDataStoresOutput: ListEventDataStoresOutput
    ListImportFailuresInput: ListImportFailuresInput
    ListImportFailuresOutput: ListImportFailuresOutput
    ListImportsInput: ListImportsInput
    ListImportsOutput: ListImportsOutput
    ListInsightsDataInput: ListInsightsDataInput
    ListInsightsDataOutput: ListInsightsDataOutput
    ListInsightsMetricDataInput: ListInsightsMetricDataInput
    ListInsightsMetricDataOutput: ListInsightsMetricDataOutput
    ListPublicKeysInput: ListPublicKeysInput
    ListPublicKeysOutput: ListPublicKeysOutput
    ListQueriesInput: ListQueriesInput
    ListQueriesOutput: ListQueriesOutput
    ListTagsInput: ListTagsInput
    ListTagsOutput: ListTagsOutput
    ListTrailsInput: ListTrailsInput
    ListTrailsOutput: ListTrailsOutput
    LookupEventsInput: LookupEventsInput
    LookupEventsOutput: LookupEventsOutput
    PutEventConfigurationInput: PutEventConfigurationInput
    PutEventConfigurationOutput: PutEventConfigurationOutput
    PutEventSelectorsInput: PutEventSelectorsInput
    PutEventSelectorsOutput: PutEventSelectorsOutput
    PutInsightSelectorsInput: PutInsightSelectorsInput
    PutInsightSelectorsOutput: PutInsightSelectorsOutput
    PutResourcePolicyInput: PutResourcePolicyInput
    PutResourcePolicyOutput: PutResourcePolicyOutput
    RegisterOrganizationDelegatedAdminInput: RegisterOrganizationDelegatedAdminInput
    RegisterOrganizationDelegatedAdminOutput: RegisterOrganizationDelegatedAdminOutput
    RemoveTagsInput: RemoveTagsInput
    RemoveTagsOutput: RemoveTagsOutput
    RestoreEventDataStoreInput: RestoreEventDataStoreInput
    RestoreEventDataStoreOutput: RestoreEventDataStoreOutput
    SearchSampleQueriesInput: SearchSampleQueriesInput
    SearchSampleQueriesOutput: SearchSampleQueriesOutput
    StartDashboardRefreshInput: StartDashboardRefreshInput
    StartDashboardRefreshOutput: StartDashboardRefreshOutput
    StartEventDataStoreIngestionInput: StartEventDataStoreIngestionInput
    StartEventDataStoreIngestionOutput: StartEventDataStoreIngestionOutput
    StartImportInput: StartImportInput
    StartImportOutput: StartImportOutput
    StartLoggingInput: StartLoggingInput
    StartLoggingOutput: StartLoggingOutput
    StartQueryInput: StartQueryInput
    StartQueryOutput: StartQueryOutput
    StopEventDataStoreIngestionInput: StopEventDataStoreIngestionInput
    StopEventDataStoreIngestionOutput: StopEventDataStoreIngestionOutput
    StopImportInput: StopImportInput
    StopImportOutput: StopImportOutput
    StopLoggingInput: StopLoggingInput
    StopLoggingOutput: StopLoggingOutput
    UpdateChannelInput: UpdateChannelInput
    UpdateChannelOutput: UpdateChannelOutput
    UpdateDashboardInput: UpdateDashboardInput
    UpdateDashboardOutput: UpdateDashboardOutput
    UpdateEventDataStoreInput: UpdateEventDataStoreInput
    UpdateEventDataStoreOutput: UpdateEventDataStoreOutput
    UpdateTrailInput: UpdateTrailInput
    UpdateTrailOutput: UpdateTrailOutput
end

return M
