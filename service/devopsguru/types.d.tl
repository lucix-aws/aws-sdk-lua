local record AddNotificationChannelInput
    Config: NotificationChannelConfig
end

local record AddNotificationChannelOutput
    Id: string
end

local record DeleteInsightInput
    Id: string
end

local record DeleteInsightOutput
end

local record DescribeAccountHealthInput
end

local record DescribeAccountHealthOutput
    OpenReactiveInsights: number
    OpenProactiveInsights: number
    MetricsAnalyzed: number
    ResourceHours: number
    AnalyzedResourceCount: number
end

local record DescribeAccountOverviewInput
    FromTime: number
    ToTime: number
end

local record DescribeAccountOverviewOutput
    ReactiveInsights: number
    ProactiveInsights: number
    MeanTimeToRecoverInMilliseconds: number
end

local record DescribeAnomalyInput
    Id: string
    AccountId: string
end

local record DescribeAnomalyOutput
    ProactiveAnomaly: ProactiveAnomaly
    ReactiveAnomaly: ReactiveAnomaly
end

local record DescribeEventSourcesConfigInput
end

local record DescribeEventSourcesConfigOutput
    EventSources: EventSourcesConfig
end

local record DescribeFeedbackInput
    InsightId: string
end

local record DescribeFeedbackOutput
    InsightFeedback: InsightFeedback
end

local record DescribeInsightInput
    Id: string
    AccountId: string
end

local record DescribeInsightOutput
    ProactiveInsight: ProactiveInsight
    ReactiveInsight: ReactiveInsight
end

local record DescribeOrganizationHealthInput
    AccountIds: {string}
    OrganizationalUnitIds: {string}
end

local record DescribeOrganizationHealthOutput
    OpenReactiveInsights: number
    OpenProactiveInsights: number
    MetricsAnalyzed: number
    ResourceHours: number
end

local record DescribeOrganizationOverviewInput
    FromTime: number
    ToTime: number
    AccountIds: {string}
    OrganizationalUnitIds: {string}
end

local record DescribeOrganizationOverviewOutput
    ReactiveInsights: number
    ProactiveInsights: number
end

local record DescribeOrganizationResourceCollectionHealthInput
    OrganizationResourceCollectionType: string
    AccountIds: {string}
    OrganizationalUnitIds: {string}
    NextToken: string
    MaxResults: number
end

local record DescribeOrganizationResourceCollectionHealthOutput
    CloudFormation: {CloudFormationHealth}
    Service: {ServiceHealth}
    Account: {AccountHealth}
    NextToken: string
    Tags: {TagHealth}
end

local record DescribeResourceCollectionHealthInput
    ResourceCollectionType: string
    NextToken: string
end

local record DescribeResourceCollectionHealthOutput
    CloudFormation: {CloudFormationHealth}
    Service: {ServiceHealth}
    NextToken: string
    Tags: {TagHealth}
end

local record DescribeServiceIntegrationInput
end

local record DescribeServiceIntegrationOutput
    ServiceIntegration: ServiceIntegrationConfig
end

local record GetCostEstimationInput
    NextToken: string
end

local record GetCostEstimationOutput
    ResourceCollection: CostEstimationResourceCollectionFilter
    Status: string
    Costs: {ServiceResourceCost}
    TimeRange: CostEstimationTimeRange
    TotalCost: number
    NextToken: string
end

local record GetResourceCollectionInput
    ResourceCollectionType: string
    NextToken: string
end

local record GetResourceCollectionOutput
    ResourceCollection: ResourceCollectionFilter
    NextToken: string
end

local record ListAnomaliesForInsightInput
    InsightId: string
    StartTimeRange: StartTimeRange
    MaxResults: number
    NextToken: string
    AccountId: string
    Filters: ListAnomaliesForInsightFilters
end

local record ListAnomaliesForInsightOutput
    ProactiveAnomalies: {ProactiveAnomalySummary}
    ReactiveAnomalies: {ReactiveAnomalySummary}
    NextToken: string
end

local record ListAnomalousLogGroupsInput
    InsightId: string
    MaxResults: number
    NextToken: string
end

local record ListAnomalousLogGroupsOutput
    InsightId: string
    AnomalousLogGroups: {AnomalousLogGroup}
    NextToken: string
end

local record ListEventsInput
    Filters: ListEventsFilters
    MaxResults: number
    NextToken: string
    AccountId: string
end

local record ListEventsOutput
    Events: {Event}
    NextToken: string
end

local record ListInsightsInput
    StatusFilter: ListInsightsStatusFilter
    MaxResults: number
    NextToken: string
end

local record ListInsightsOutput
    ProactiveInsights: {ProactiveInsightSummary}
    ReactiveInsights: {ReactiveInsightSummary}
    NextToken: string
end

local record ListMonitoredResourcesInput
    Filters: ListMonitoredResourcesFilters
    MaxResults: number
    NextToken: string
end

local record ListMonitoredResourcesOutput
    MonitoredResourceIdentifiers: {MonitoredResourceIdentifier}
    NextToken: string
end

local record ListNotificationChannelsInput
    NextToken: string
end

local record ListNotificationChannelsOutput
    Channels: {NotificationChannel}
    NextToken: string
end

local record ListOrganizationInsightsInput
    StatusFilter: ListInsightsStatusFilter
    MaxResults: number
    AccountIds: {string}
    OrganizationalUnitIds: {string}
    NextToken: string
end

local record ListOrganizationInsightsOutput
    ProactiveInsights: {ProactiveOrganizationInsightSummary}
    ReactiveInsights: {ReactiveOrganizationInsightSummary}
    NextToken: string
end

local record ListRecommendationsInput
    InsightId: string
    NextToken: string
    Locale: string
    AccountId: string
end

local record ListRecommendationsOutput
    Recommendations: {Recommendation}
    NextToken: string
end

local record PutFeedbackInput
    InsightFeedback: InsightFeedback
end

local record PutFeedbackOutput
end

local record RemoveNotificationChannelInput
    Id: string
end

local record RemoveNotificationChannelOutput
end

local record SearchInsightsInput
    StartTimeRange: StartTimeRange
    Filters: SearchInsightsFilters
    MaxResults: number
    NextToken: string
    Type: string
end

local record SearchInsightsOutput
    ProactiveInsights: {ProactiveInsightSummary}
    ReactiveInsights: {ReactiveInsightSummary}
    NextToken: string
end

local record SearchOrganizationInsightsInput
    AccountIds: {string}
    StartTimeRange: StartTimeRange
    Filters: SearchOrganizationInsightsFilters
    MaxResults: number
    NextToken: string
    Type: string
end

local record SearchOrganizationInsightsOutput
    ProactiveInsights: {ProactiveInsightSummary}
    ReactiveInsights: {ReactiveInsightSummary}
    NextToken: string
end

local record StartCostEstimationInput
    ResourceCollection: CostEstimationResourceCollectionFilter
    ClientToken: string
end

local record StartCostEstimationOutput
end

local record UpdateEventSourcesConfigInput
    EventSources: EventSourcesConfig
end

local record UpdateEventSourcesConfigOutput
end

local record UpdateResourceCollectionInput
    Action: string
    ResourceCollection: UpdateResourceCollectionFilter
end

local record UpdateResourceCollectionOutput
end

local record UpdateServiceIntegrationInput
    ServiceIntegration: UpdateServiceIntegrationConfig
end

local record UpdateServiceIntegrationOutput
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local type OrganizationResourceCollectionType = "AWS_CLOUD_FORMATION" | "AWS_SERVICE" | "AWS_ACCOUNT" | "AWS_TAGS"

local type UpdateResourceCollectionAction = "ADD" | "REMOVE"

local type InsightType = "REACTIVE" | "PROACTIVE"

local type CostEstimationStatus = "ONGOING" | "COMPLETED"

local type Locale = "DE_DE" | "EN_US" | "EN_GB" | "ES_ES" | "FR_FR" | "IT_IT" | "JA_JP" | "KO_KR" | "PT_BR" | "ZH_CN" | "ZH_TW"

local type ResourceCollectionType = "AWS_CLOUD_FORMATION" | "AWS_SERVICE" | "AWS_TAGS"

local record M
    AddNotificationChannelInput: AddNotificationChannelInput
    AddNotificationChannelOutput: AddNotificationChannelOutput
    DeleteInsightInput: DeleteInsightInput
    DeleteInsightOutput: DeleteInsightOutput
    DescribeAccountHealthInput: DescribeAccountHealthInput
    DescribeAccountHealthOutput: DescribeAccountHealthOutput
    DescribeAccountOverviewInput: DescribeAccountOverviewInput
    DescribeAccountOverviewOutput: DescribeAccountOverviewOutput
    DescribeAnomalyInput: DescribeAnomalyInput
    DescribeAnomalyOutput: DescribeAnomalyOutput
    DescribeEventSourcesConfigInput: DescribeEventSourcesConfigInput
    DescribeEventSourcesConfigOutput: DescribeEventSourcesConfigOutput
    DescribeFeedbackInput: DescribeFeedbackInput
    DescribeFeedbackOutput: DescribeFeedbackOutput
    DescribeInsightInput: DescribeInsightInput
    DescribeInsightOutput: DescribeInsightOutput
    DescribeOrganizationHealthInput: DescribeOrganizationHealthInput
    DescribeOrganizationHealthOutput: DescribeOrganizationHealthOutput
    DescribeOrganizationOverviewInput: DescribeOrganizationOverviewInput
    DescribeOrganizationOverviewOutput: DescribeOrganizationOverviewOutput
    DescribeOrganizationResourceCollectionHealthInput: DescribeOrganizationResourceCollectionHealthInput
    DescribeOrganizationResourceCollectionHealthOutput: DescribeOrganizationResourceCollectionHealthOutput
    DescribeResourceCollectionHealthInput: DescribeResourceCollectionHealthInput
    DescribeResourceCollectionHealthOutput: DescribeResourceCollectionHealthOutput
    DescribeServiceIntegrationInput: DescribeServiceIntegrationInput
    DescribeServiceIntegrationOutput: DescribeServiceIntegrationOutput
    GetCostEstimationInput: GetCostEstimationInput
    GetCostEstimationOutput: GetCostEstimationOutput
    GetResourceCollectionInput: GetResourceCollectionInput
    GetResourceCollectionOutput: GetResourceCollectionOutput
    ListAnomaliesForInsightInput: ListAnomaliesForInsightInput
    ListAnomaliesForInsightOutput: ListAnomaliesForInsightOutput
    ListAnomalousLogGroupsInput: ListAnomalousLogGroupsInput
    ListAnomalousLogGroupsOutput: ListAnomalousLogGroupsOutput
    ListEventsInput: ListEventsInput
    ListEventsOutput: ListEventsOutput
    ListInsightsInput: ListInsightsInput
    ListInsightsOutput: ListInsightsOutput
    ListMonitoredResourcesInput: ListMonitoredResourcesInput
    ListMonitoredResourcesOutput: ListMonitoredResourcesOutput
    ListNotificationChannelsInput: ListNotificationChannelsInput
    ListNotificationChannelsOutput: ListNotificationChannelsOutput
    ListOrganizationInsightsInput: ListOrganizationInsightsInput
    ListOrganizationInsightsOutput: ListOrganizationInsightsOutput
    ListRecommendationsInput: ListRecommendationsInput
    ListRecommendationsOutput: ListRecommendationsOutput
    PutFeedbackInput: PutFeedbackInput
    PutFeedbackOutput: PutFeedbackOutput
    RemoveNotificationChannelInput: RemoveNotificationChannelInput
    RemoveNotificationChannelOutput: RemoveNotificationChannelOutput
    SearchInsightsInput: SearchInsightsInput
    SearchInsightsOutput: SearchInsightsOutput
    SearchOrganizationInsightsInput: SearchOrganizationInsightsInput
    SearchOrganizationInsightsOutput: SearchOrganizationInsightsOutput
    StartCostEstimationInput: StartCostEstimationInput
    StartCostEstimationOutput: StartCostEstimationOutput
    UpdateEventSourcesConfigInput: UpdateEventSourcesConfigInput
    UpdateEventSourcesConfigOutput: UpdateEventSourcesConfigOutput
    UpdateResourceCollectionInput: UpdateResourceCollectionInput
    UpdateResourceCollectionOutput: UpdateResourceCollectionOutput
    UpdateServiceIntegrationInput: UpdateServiceIntegrationInput
    UpdateServiceIntegrationOutput: UpdateServiceIntegrationOutput
end

return M
