local record CreateAnomalyMonitorInput
    AnomalyMonitor: AnomalyMonitor
    ResourceTags: {ResourceTag}
end

local record CreateAnomalyMonitorOutput
    MonitorArn: string
end

local record CreateAnomalySubscriptionInput
    AnomalySubscription: AnomalySubscription
    ResourceTags: {ResourceTag}
end

local record CreateAnomalySubscriptionOutput
    SubscriptionArn: string
end

local record CreateCostCategoryDefinitionInput
    Name: string
    EffectiveStart: string
    RuleVersion: string
    Rules: {CostCategoryRule}
    DefaultValue: string
    SplitChargeRules: {CostCategorySplitChargeRule}
    ResourceTags: {ResourceTag}
end

local record CreateCostCategoryDefinitionOutput
    CostCategoryArn: string
    EffectiveStart: string
end

local record DeleteAnomalyMonitorInput
    MonitorArn: string
end

local record DeleteAnomalyMonitorOutput
end

local record DeleteAnomalySubscriptionInput
    SubscriptionArn: string
end

local record DeleteAnomalySubscriptionOutput
end

local record DeleteCostCategoryDefinitionInput
    CostCategoryArn: string
end

local record DeleteCostCategoryDefinitionOutput
    CostCategoryArn: string
    EffectiveEnd: string
end

local record DescribeCostCategoryDefinitionInput
    CostCategoryArn: string
    EffectiveOn: string
end

local record DescribeCostCategoryDefinitionOutput
    CostCategory: CostCategory
end

local record GetAnomaliesInput
    MonitorArn: string
    DateInterval: AnomalyDateInterval
    Feedback: string
    TotalImpact: TotalImpactFilter
    NextPageToken: string
    MaxResults: number
end

local record GetAnomaliesOutput
    Anomalies: {Anomaly}
    NextPageToken: string
end

local record GetAnomalyMonitorsInput
    MonitorArnList: {string}
    NextPageToken: string
    MaxResults: number
end

local record GetAnomalyMonitorsOutput
    AnomalyMonitors: {AnomalyMonitor}
    NextPageToken: string
end

local record GetAnomalySubscriptionsInput
    SubscriptionArnList: {string}
    MonitorArn: string
    NextPageToken: string
    MaxResults: number
end

local record GetAnomalySubscriptionsOutput
    AnomalySubscriptions: {AnomalySubscription}
    NextPageToken: string
end

local record GetApproximateUsageRecordsInput
    Granularity: string
    Services: {string}
    ApproximationDimension: string
end

local record GetApproximateUsageRecordsOutput
    Services: {string : number}
    TotalRecords: number
    LookbackPeriod: DateInterval
end

local record GetCommitmentPurchaseAnalysisInput
    AnalysisId: string
end

local record GetCommitmentPurchaseAnalysisOutput
    EstimatedCompletionTime: string
    AnalysisCompletionTime: string
    AnalysisStartedTime: string
    AnalysisId: string
    AnalysisStatus: string
    ErrorCode: string
    AnalysisDetails: AnalysisDetails
    CommitmentPurchaseAnalysisConfiguration: CommitmentPurchaseAnalysisConfiguration
end

local record GetCostAndUsageInput
    TimePeriod: DateInterval
    Granularity: string
    Filter: Expression
    Metrics: {string}
    GroupBy: {GroupDefinition}
    BillingViewArn: string
    NextPageToken: string
end

local record GetCostAndUsageOutput
    NextPageToken: string
    GroupDefinitions: {GroupDefinition}
    ResultsByTime: {ResultByTime}
    DimensionValueAttributes: {DimensionValuesWithAttributes}
end

local record GetCostAndUsageComparisonsInput
    BillingViewArn: string
    BaselineTimePeriod: DateInterval
    ComparisonTimePeriod: DateInterval
    MetricForComparison: string
    Filter: Expression
    GroupBy: {GroupDefinition}
    MaxResults: number
    NextPageToken: string
end

local record GetCostAndUsageComparisonsOutput
    CostAndUsageComparisons: {CostAndUsageComparison}
    TotalCostAndUsage: {string : ComparisonMetricValue}
    NextPageToken: string
end

local record GetCostAndUsageWithResourcesInput
    TimePeriod: DateInterval
    Granularity: string
    Filter: Expression
    Metrics: {string}
    GroupBy: {GroupDefinition}
    BillingViewArn: string
    NextPageToken: string
end

local record GetCostAndUsageWithResourcesOutput
    NextPageToken: string
    GroupDefinitions: {GroupDefinition}
    ResultsByTime: {ResultByTime}
    DimensionValueAttributes: {DimensionValuesWithAttributes}
end

local record GetCostCategoriesInput
    SearchString: string
    TimePeriod: DateInterval
    CostCategoryName: string
    Filter: Expression
    SortBy: {SortDefinition}
    BillingViewArn: string
    MaxResults: number
    NextPageToken: string
end

local record GetCostCategoriesOutput
    NextPageToken: string
    CostCategoryNames: {string}
    CostCategoryValues: {string}
    ReturnSize: number
    TotalSize: number
end

local record GetCostComparisonDriversInput
    BillingViewArn: string
    BaselineTimePeriod: DateInterval
    ComparisonTimePeriod: DateInterval
    MetricForComparison: string
    Filter: Expression
    GroupBy: {GroupDefinition}
    MaxResults: number
    NextPageToken: string
end

local record GetCostComparisonDriversOutput
    CostComparisonDrivers: {CostComparisonDriver}
    NextPageToken: string
end

local record GetCostForecastInput
    TimePeriod: DateInterval
    Metric: string
    Granularity: string
    Filter: Expression
    BillingViewArn: string
    PredictionIntervalLevel: number
end

local record GetCostForecastOutput
    Total: MetricValue
    ForecastResultsByTime: {ForecastResult}
end

local record GetDimensionValuesInput
    SearchString: string
    TimePeriod: DateInterval
    Dimension: string
    Context: string
    Filter: Expression
    SortBy: {SortDefinition}
    BillingViewArn: string
    MaxResults: number
    NextPageToken: string
end

local record GetDimensionValuesOutput
    DimensionValues: {DimensionValuesWithAttributes}
    ReturnSize: number
    TotalSize: number
    NextPageToken: string
end

local record GetReservationCoverageInput
    TimePeriod: DateInterval
    GroupBy: {GroupDefinition}
    Granularity: string
    Filter: Expression
    Metrics: {string}
    NextPageToken: string
    SortBy: SortDefinition
    MaxResults: number
end

local record GetReservationCoverageOutput
    CoveragesByTime: {CoverageByTime}
    Total: Coverage
    NextPageToken: string
end

local record GetReservationPurchaseRecommendationInput
    AccountId: string
    Service: string
    Filter: Expression
    AccountScope: string
    LookbackPeriodInDays: string
    TermInYears: string
    PaymentOption: string
    ServiceSpecification: ServiceSpecification
    PageSize: number
    NextPageToken: string
end

local record GetReservationPurchaseRecommendationOutput
    Metadata: ReservationPurchaseRecommendationMetadata
    Recommendations: {ReservationPurchaseRecommendation}
    NextPageToken: string
end

local record GetReservationUtilizationInput
    TimePeriod: DateInterval
    GroupBy: {GroupDefinition}
    Granularity: string
    Filter: Expression
    SortBy: SortDefinition
    NextPageToken: string
    MaxResults: number
end

local record GetReservationUtilizationOutput
    UtilizationsByTime: {UtilizationByTime}
    Total: ReservationAggregates
    NextPageToken: string
end

local record GetRightsizingRecommendationInput
    Filter: Expression
    Configuration: RightsizingRecommendationConfiguration
    Service: string
    PageSize: number
    NextPageToken: string
end

local record GetRightsizingRecommendationOutput
    Metadata: RightsizingRecommendationMetadata
    Summary: RightsizingRecommendationSummary
    RightsizingRecommendations: {RightsizingRecommendation}
    NextPageToken: string
    Configuration: RightsizingRecommendationConfiguration
end

local record GetSavingsPlanPurchaseRecommendationDetailsInput
    RecommendationDetailId: string
end

local record GetSavingsPlanPurchaseRecommendationDetailsOutput
    RecommendationDetailId: string
    RecommendationDetailData: RecommendationDetailData
end

local record GetSavingsPlansCoverageInput
    TimePeriod: DateInterval
    GroupBy: {GroupDefinition}
    Granularity: string
    Filter: Expression
    Metrics: {string}
    NextToken: string
    MaxResults: number
    SortBy: SortDefinition
end

local record GetSavingsPlansCoverageOutput
    SavingsPlansCoverages: {SavingsPlansCoverage}
    NextToken: string
end

local record GetSavingsPlansPurchaseRecommendationInput
    SavingsPlansType: string
    TermInYears: string
    PaymentOption: string
    AccountScope: string
    NextPageToken: string
    PageSize: number
    LookbackPeriodInDays: string
    Filter: Expression
end

local record GetSavingsPlansPurchaseRecommendationOutput
    Metadata: SavingsPlansPurchaseRecommendationMetadata
    SavingsPlansPurchaseRecommendation: SavingsPlansPurchaseRecommendation
    NextPageToken: string
end

local record GetSavingsPlansUtilizationInput
    TimePeriod: DateInterval
    Granularity: string
    Filter: Expression
    SortBy: SortDefinition
end

local record GetSavingsPlansUtilizationOutput
    SavingsPlansUtilizationsByTime: {SavingsPlansUtilizationByTime}
    Total: SavingsPlansUtilizationAggregates
end

local record GetSavingsPlansUtilizationDetailsInput
    TimePeriod: DateInterval
    Filter: Expression
    DataType: {string}
    NextToken: string
    MaxResults: number
    SortBy: SortDefinition
end

local record GetSavingsPlansUtilizationDetailsOutput
    SavingsPlansUtilizationDetails: {SavingsPlansUtilizationDetail}
    Total: SavingsPlansUtilizationAggregates
    TimePeriod: DateInterval
    NextToken: string
end

local record GetTagsInput
    SearchString: string
    TimePeriod: DateInterval
    TagKey: string
    Filter: Expression
    SortBy: {SortDefinition}
    BillingViewArn: string
    MaxResults: number
    NextPageToken: string
end

local record GetTagsOutput
    NextPageToken: string
    Tags: {string}
    ReturnSize: number
    TotalSize: number
end

local record GetUsageForecastInput
    TimePeriod: DateInterval
    Metric: string
    Granularity: string
    Filter: Expression
    BillingViewArn: string
    PredictionIntervalLevel: number
end

local record GetUsageForecastOutput
    Total: MetricValue
    ForecastResultsByTime: {ForecastResult}
end

local record ListCommitmentPurchaseAnalysesInput
    AnalysisStatus: string
    NextPageToken: string
    PageSize: number
    AnalysisIds: {string}
end

local record ListCommitmentPurchaseAnalysesOutput
    AnalysisSummaryList: {AnalysisSummary}
    NextPageToken: string
end

local record ListCostAllocationTagBackfillHistoryInput
    NextToken: string
    MaxResults: number
end

local record ListCostAllocationTagBackfillHistoryOutput
    BackfillRequests: {CostAllocationTagBackfillRequest}
    NextToken: string
end

local record ListCostAllocationTagsInput
    Status: string
    TagKeys: {string}
    Type: string
    NextToken: string
    MaxResults: number
end

local record ListCostAllocationTagsOutput
    CostAllocationTags: {CostAllocationTag}
    NextToken: string
end

local record ListCostCategoryDefinitionsInput
    EffectiveOn: string
    NextToken: string
    MaxResults: number
    SupportedResourceTypes: {string}
end

local record ListCostCategoryDefinitionsOutput
    CostCategoryReferences: {CostCategoryReference}
    NextToken: string
end

local record ListCostCategoryResourceAssociationsInput
    CostCategoryArn: string
    NextToken: string
    MaxResults: number
end

local record ListCostCategoryResourceAssociationsOutput
    CostCategoryResourceAssociations: {CostCategoryResourceAssociation}
    NextToken: string
end

local record ListSavingsPlansPurchaseRecommendationGenerationInput
    GenerationStatus: string
    RecommendationIds: {string}
    PageSize: number
    NextPageToken: string
end

local record ListSavingsPlansPurchaseRecommendationGenerationOutput
    GenerationSummaryList: {GenerationSummary}
    NextPageToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    ResourceTags: {ResourceTag}
end

local record ProvideAnomalyFeedbackInput
    AnomalyId: string
    Feedback: string
end

local record ProvideAnomalyFeedbackOutput
    AnomalyId: string
end

local record StartCommitmentPurchaseAnalysisInput
    CommitmentPurchaseAnalysisConfiguration: CommitmentPurchaseAnalysisConfiguration
end

local record StartCommitmentPurchaseAnalysisOutput
    AnalysisId: string
    AnalysisStartedTime: string
    EstimatedCompletionTime: string
end

local record StartCostAllocationTagBackfillInput
    BackfillFrom: string
end

local record StartCostAllocationTagBackfillOutput
    BackfillRequest: CostAllocationTagBackfillRequest
end

local record StartSavingsPlansPurchaseRecommendationGenerationInput
end

local record StartSavingsPlansPurchaseRecommendationGenerationOutput
    RecommendationId: string
    GenerationStartedTime: string
    EstimatedCompletionTime: string
end

local record TagResourceInput
    ResourceArn: string
    ResourceTags: {ResourceTag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    ResourceTagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateAnomalyMonitorInput
    MonitorArn: string
    MonitorName: string
end

local record UpdateAnomalyMonitorOutput
    MonitorArn: string
end

local record UpdateAnomalySubscriptionInput
    SubscriptionArn: string
    Threshold: number
    Frequency: string
    MonitorArnList: {string}
    Subscribers: {Subscriber}
    SubscriptionName: string
    ThresholdExpression: Expression
end

local record UpdateAnomalySubscriptionOutput
    SubscriptionArn: string
end

local record UpdateCostAllocationTagsStatusInput
    CostAllocationTagsStatus: {CostAllocationTagStatusEntry}
end

local record UpdateCostAllocationTagsStatusOutput
    Errors: {UpdateCostAllocationTagsStatusError}
end

local record UpdateCostCategoryDefinitionInput
    CostCategoryArn: string
    EffectiveStart: string
    RuleVersion: string
    Rules: {CostCategoryRule}
    DefaultValue: string
    SplitChargeRules: {CostCategorySplitChargeRule}
end

local record UpdateCostCategoryDefinitionOutput
    CostCategoryArn: string
    EffectiveStart: string
end

local record LimitExceededException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record UnknownMonitorException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record UnknownMonitorException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record UnknownSubscriptionException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record UnknownMonitorException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record UnknownSubscriptionException
    Message: string
end

local record DataUnavailableException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record AnalysisNotFoundException
    Message: string
end

local record DataUnavailableException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record BillExpirationException
    Message: string
end

local record BillingViewHealthStatusException
    Message: string
end

local record DataUnavailableException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record RequestChangedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BillingViewHealthStatusException
    Message: string
end

local record DataUnavailableException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BillExpirationException
    Message: string
end

local record BillingViewHealthStatusException
    Message: string
end

local record DataUnavailableException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record RequestChangedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BillExpirationException
    Message: string
end

local record BillingViewHealthStatusException
    Message: string
end

local record DataUnavailableException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record RequestChangedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BillingViewHealthStatusException
    Message: string
end

local record DataUnavailableException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BillingViewHealthStatusException
    Message: string
end

local record DataUnavailableException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BillExpirationException
    Message: string
end

local record BillingViewHealthStatusException
    Message: string
end

local record DataUnavailableException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record RequestChangedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record DataUnavailableException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record DataUnavailableException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record DataUnavailableException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record DataUnavailableException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record DataUnavailableException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record DataUnavailableException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record DataUnavailableException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record BillExpirationException
    Message: string
end

local record BillingViewHealthStatusException
    Message: string
end

local record DataUnavailableException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record RequestChangedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BillingViewHealthStatusException
    Message: string
end

local record DataUnavailableException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record UnresolvableUsageUnitException
    Message: string
end

local record DataUnavailableException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record DataUnavailableException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record LimitExceededException
    Message: string
end

local record DataUnavailableException
    Message: string
end

local record GenerationExistsException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record BackfillLimitExceededException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record DataUnavailableException
    Message: string
end

local record GenerationExistsException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record TooManyTagsException
    Message: string
    ResourceName: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record LimitExceededException
    Message: string
end

local record UnknownMonitorException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record UnknownMonitorException
    Message: string
end

local record UnknownSubscriptionException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ServiceQuotaExceededException
    Message: string
end

local type CostCategoryRuleVersion = "CostCategoryExpression.v1"

local type TermInYears = "ONE_YEAR" | "THREE_YEARS"

local type Context = "COST_AND_USAGE" | "RESERVATIONS" | "SAVINGS_PLANS"

local type Granularity = "DAILY" | "MONTHLY" | "HOURLY"

local type PaymentOption = "NO_UPFRONT" | "PARTIAL_UPFRONT" | "ALL_UPFRONT" | "LIGHT_UTILIZATION" | "MEDIUM_UTILIZATION" | "HEAVY_UTILIZATION"

local type CostAllocationTagStatus = "Active" | "Inactive"

local type SupportedSavingsPlansType = "COMPUTE_SP" | "EC2_INSTANCE_SP" | "SAGEMAKER_SP" | "DATABASE_SP"

local type AnalysisStatus = "SUCCEEDED" | "PROCESSING" | "FAILED"

local type AnomalyFeedbackType = "YES" | "NO" | "PLANNED_ACTIVITY"

local type AnomalySubscriptionFrequency = "DAILY" | "IMMEDIATE" | "WEEKLY"

local type Dimension = "AZ" | "INSTANCE_TYPE" | "LINKED_ACCOUNT" | "PAYER_ACCOUNT" | "LINKED_ACCOUNT_NAME" | "OPERATION" | "PURCHASE_TYPE" | "REGION" | "SERVICE" | "SERVICE_CODE" | "USAGE_TYPE" | "USAGE_TYPE_GROUP" | "RECORD_TYPE" | "OPERATING_SYSTEM" | "TENANCY" | "SCOPE" | "PLATFORM" | "SUBSCRIPTION_ID" | "LEGAL_ENTITY_NAME" | "DEPLOYMENT_OPTION" | "DATABASE_ENGINE" | "CACHE_ENGINE" | "INSTANCE_TYPE_FAMILY" | "BILLING_ENTITY" | "RESERVATION_ID" | "RESOURCE_ID" | "RIGHTSIZING_TYPE" | "SAVINGS_PLANS_TYPE" | "SAVINGS_PLAN_ARN" | "PAYMENT_OPTION" | "AGREEMENT_END_DATE_TIME_AFTER" | "AGREEMENT_END_DATE_TIME_BEFORE" | "INVOICING_ENTITY" | "ANOMALY_TOTAL_IMPACT_ABSOLUTE" | "ANOMALY_TOTAL_IMPACT_PERCENTAGE"

local type Metric = "BLENDED_COST" | "UNBLENDED_COST" | "AMORTIZED_COST" | "NET_UNBLENDED_COST" | "NET_AMORTIZED_COST" | "USAGE_QUANTITY" | "NORMALIZED_USAGE_AMOUNT"

local type ApproximationDimension = "SERVICE" | "RESOURCE"

local type LookbackPeriodInDays = "SEVEN_DAYS" | "THIRTY_DAYS" | "SIXTY_DAYS"

local type ErrorCode = "NO_USAGE_FOUND" | "INTERNAL_FAILURE" | "INVALID_SAVINGS_PLANS_TO_ADD" | "INVALID_SAVINGS_PLANS_TO_EXCLUDE" | "INVALID_ACCOUNT_ID"

local type CostAllocationTagType = "AWSGenerated" | "UserDefined"

local type GenerationStatus = "SUCCEEDED" | "PROCESSING" | "FAILED"

local type AccountScope = "PAYER" | "LINKED"

local record M
    CreateAnomalyMonitorInput: CreateAnomalyMonitorInput
    CreateAnomalyMonitorOutput: CreateAnomalyMonitorOutput
    CreateAnomalySubscriptionInput: CreateAnomalySubscriptionInput
    CreateAnomalySubscriptionOutput: CreateAnomalySubscriptionOutput
    CreateCostCategoryDefinitionInput: CreateCostCategoryDefinitionInput
    CreateCostCategoryDefinitionOutput: CreateCostCategoryDefinitionOutput
    DeleteAnomalyMonitorInput: DeleteAnomalyMonitorInput
    DeleteAnomalyMonitorOutput: DeleteAnomalyMonitorOutput
    DeleteAnomalySubscriptionInput: DeleteAnomalySubscriptionInput
    DeleteAnomalySubscriptionOutput: DeleteAnomalySubscriptionOutput
    DeleteCostCategoryDefinitionInput: DeleteCostCategoryDefinitionInput
    DeleteCostCategoryDefinitionOutput: DeleteCostCategoryDefinitionOutput
    DescribeCostCategoryDefinitionInput: DescribeCostCategoryDefinitionInput
    DescribeCostCategoryDefinitionOutput: DescribeCostCategoryDefinitionOutput
    GetAnomaliesInput: GetAnomaliesInput
    GetAnomaliesOutput: GetAnomaliesOutput
    GetAnomalyMonitorsInput: GetAnomalyMonitorsInput
    GetAnomalyMonitorsOutput: GetAnomalyMonitorsOutput
    GetAnomalySubscriptionsInput: GetAnomalySubscriptionsInput
    GetAnomalySubscriptionsOutput: GetAnomalySubscriptionsOutput
    GetApproximateUsageRecordsInput: GetApproximateUsageRecordsInput
    GetApproximateUsageRecordsOutput: GetApproximateUsageRecordsOutput
    GetCommitmentPurchaseAnalysisInput: GetCommitmentPurchaseAnalysisInput
    GetCommitmentPurchaseAnalysisOutput: GetCommitmentPurchaseAnalysisOutput
    GetCostAndUsageInput: GetCostAndUsageInput
    GetCostAndUsageOutput: GetCostAndUsageOutput
    GetCostAndUsageComparisonsInput: GetCostAndUsageComparisonsInput
    GetCostAndUsageComparisonsOutput: GetCostAndUsageComparisonsOutput
    GetCostAndUsageWithResourcesInput: GetCostAndUsageWithResourcesInput
    GetCostAndUsageWithResourcesOutput: GetCostAndUsageWithResourcesOutput
    GetCostCategoriesInput: GetCostCategoriesInput
    GetCostCategoriesOutput: GetCostCategoriesOutput
    GetCostComparisonDriversInput: GetCostComparisonDriversInput
    GetCostComparisonDriversOutput: GetCostComparisonDriversOutput
    GetCostForecastInput: GetCostForecastInput
    GetCostForecastOutput: GetCostForecastOutput
    GetDimensionValuesInput: GetDimensionValuesInput
    GetDimensionValuesOutput: GetDimensionValuesOutput
    GetReservationCoverageInput: GetReservationCoverageInput
    GetReservationCoverageOutput: GetReservationCoverageOutput
    GetReservationPurchaseRecommendationInput: GetReservationPurchaseRecommendationInput
    GetReservationPurchaseRecommendationOutput: GetReservationPurchaseRecommendationOutput
    GetReservationUtilizationInput: GetReservationUtilizationInput
    GetReservationUtilizationOutput: GetReservationUtilizationOutput
    GetRightsizingRecommendationInput: GetRightsizingRecommendationInput
    GetRightsizingRecommendationOutput: GetRightsizingRecommendationOutput
    GetSavingsPlanPurchaseRecommendationDetailsInput: GetSavingsPlanPurchaseRecommendationDetailsInput
    GetSavingsPlanPurchaseRecommendationDetailsOutput: GetSavingsPlanPurchaseRecommendationDetailsOutput
    GetSavingsPlansCoverageInput: GetSavingsPlansCoverageInput
    GetSavingsPlansCoverageOutput: GetSavingsPlansCoverageOutput
    GetSavingsPlansPurchaseRecommendationInput: GetSavingsPlansPurchaseRecommendationInput
    GetSavingsPlansPurchaseRecommendationOutput: GetSavingsPlansPurchaseRecommendationOutput
    GetSavingsPlansUtilizationInput: GetSavingsPlansUtilizationInput
    GetSavingsPlansUtilizationOutput: GetSavingsPlansUtilizationOutput
    GetSavingsPlansUtilizationDetailsInput: GetSavingsPlansUtilizationDetailsInput
    GetSavingsPlansUtilizationDetailsOutput: GetSavingsPlansUtilizationDetailsOutput
    GetTagsInput: GetTagsInput
    GetTagsOutput: GetTagsOutput
    GetUsageForecastInput: GetUsageForecastInput
    GetUsageForecastOutput: GetUsageForecastOutput
    ListCommitmentPurchaseAnalysesInput: ListCommitmentPurchaseAnalysesInput
    ListCommitmentPurchaseAnalysesOutput: ListCommitmentPurchaseAnalysesOutput
    ListCostAllocationTagBackfillHistoryInput: ListCostAllocationTagBackfillHistoryInput
    ListCostAllocationTagBackfillHistoryOutput: ListCostAllocationTagBackfillHistoryOutput
    ListCostAllocationTagsInput: ListCostAllocationTagsInput
    ListCostAllocationTagsOutput: ListCostAllocationTagsOutput
    ListCostCategoryDefinitionsInput: ListCostCategoryDefinitionsInput
    ListCostCategoryDefinitionsOutput: ListCostCategoryDefinitionsOutput
    ListCostCategoryResourceAssociationsInput: ListCostCategoryResourceAssociationsInput
    ListCostCategoryResourceAssociationsOutput: ListCostCategoryResourceAssociationsOutput
    ListSavingsPlansPurchaseRecommendationGenerationInput: ListSavingsPlansPurchaseRecommendationGenerationInput
    ListSavingsPlansPurchaseRecommendationGenerationOutput: ListSavingsPlansPurchaseRecommendationGenerationOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ProvideAnomalyFeedbackInput: ProvideAnomalyFeedbackInput
    ProvideAnomalyFeedbackOutput: ProvideAnomalyFeedbackOutput
    StartCommitmentPurchaseAnalysisInput: StartCommitmentPurchaseAnalysisInput
    StartCommitmentPurchaseAnalysisOutput: StartCommitmentPurchaseAnalysisOutput
    StartCostAllocationTagBackfillInput: StartCostAllocationTagBackfillInput
    StartCostAllocationTagBackfillOutput: StartCostAllocationTagBackfillOutput
    StartSavingsPlansPurchaseRecommendationGenerationInput: StartSavingsPlansPurchaseRecommendationGenerationInput
    StartSavingsPlansPurchaseRecommendationGenerationOutput: StartSavingsPlansPurchaseRecommendationGenerationOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAnomalyMonitorInput: UpdateAnomalyMonitorInput
    UpdateAnomalyMonitorOutput: UpdateAnomalyMonitorOutput
    UpdateAnomalySubscriptionInput: UpdateAnomalySubscriptionInput
    UpdateAnomalySubscriptionOutput: UpdateAnomalySubscriptionOutput
    UpdateCostAllocationTagsStatusInput: UpdateCostAllocationTagsStatusInput
    UpdateCostAllocationTagsStatusOutput: UpdateCostAllocationTagsStatusOutput
    UpdateCostCategoryDefinitionInput: UpdateCostCategoryDefinitionInput
    UpdateCostCategoryDefinitionOutput: UpdateCostCategoryDefinitionOutput
end

return M
