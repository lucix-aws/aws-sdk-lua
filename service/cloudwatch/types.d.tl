local record DeleteAlarmMuteRuleInput
    AlarmMuteRuleName: string
end

local record DeleteAlarmMuteRuleOutput
end

local record DeleteAlarmsInput
    AlarmNames: {string}
end

local record DeleteAlarmsOutput
end

local record DeleteAnomalyDetectorInput
    Namespace: string
    MetricName: string
    Dimensions: {Dimension}
    Stat: string
    SingleMetricAnomalyDetector: SingleMetricAnomalyDetector
    MetricMathAnomalyDetector: MetricMathAnomalyDetector
end

local record DeleteAnomalyDetectorOutput
end

local record DeleteDashboardsInput
    DashboardNames: {string}
end

local record DeleteDashboardsOutput
end

local record DeleteInsightRulesInput
    RuleNames: {string}
end

local record DeleteInsightRulesOutput
    Failures: {PartialFailure}
end

local record DeleteMetricStreamInput
    Name: string
end

local record DeleteMetricStreamOutput
end

local record DescribeAlarmContributorsInput
    AlarmName: string
    NextToken: string
end

local record DescribeAlarmContributorsOutput
    AlarmContributors: {AlarmContributor}
    NextToken: string
end

local record DescribeAlarmHistoryInput
    AlarmName: string
    AlarmContributorId: string
    AlarmTypes: {string}
    HistoryItemType: string
    StartDate: number
    EndDate: number
    MaxRecords: number
    NextToken: string
    ScanBy: string
end

local record DescribeAlarmHistoryOutput
    AlarmHistoryItems: {AlarmHistoryItem}
    NextToken: string
end

local record DescribeAlarmsInput
    AlarmNames: {string}
    AlarmNamePrefix: string
    AlarmTypes: {string}
    ChildrenOfAlarmName: string
    ParentsOfAlarmName: string
    StateValue: string
    ActionPrefix: string
    MaxRecords: number
    NextToken: string
end

local record DescribeAlarmsOutput
    CompositeAlarms: {CompositeAlarm}
    MetricAlarms: {MetricAlarm}
    NextToken: string
end

local record DescribeAlarmsForMetricInput
    MetricName: string
    Namespace: string
    Statistic: string
    ExtendedStatistic: string
    Dimensions: {Dimension}
    Period: number
    Unit: string
end

local record DescribeAlarmsForMetricOutput
    MetricAlarms: {MetricAlarm}
end

local record DescribeAnomalyDetectorsInput
    NextToken: string
    MaxResults: number
    Namespace: string
    MetricName: string
    Dimensions: {Dimension}
    AnomalyDetectorTypes: {string}
end

local record DescribeAnomalyDetectorsOutput
    AnomalyDetectors: {AnomalyDetector}
    NextToken: string
end

local record DescribeInsightRulesInput
    NextToken: string
    MaxResults: number
end

local record DescribeInsightRulesOutput
    NextToken: string
    InsightRules: {InsightRule}
end

local record DisableAlarmActionsInput
    AlarmNames: {string}
end

local record DisableAlarmActionsOutput
end

local record DisableInsightRulesInput
    RuleNames: {string}
end

local record DisableInsightRulesOutput
    Failures: {PartialFailure}
end

local record EnableAlarmActionsInput
    AlarmNames: {string}
end

local record EnableAlarmActionsOutput
end

local record EnableInsightRulesInput
    RuleNames: {string}
end

local record EnableInsightRulesOutput
    Failures: {PartialFailure}
end

local record GetAlarmMuteRuleInput
    AlarmMuteRuleName: string
end

local record GetAlarmMuteRuleOutput
    Name: string
    AlarmMuteRuleArn: string
    Description: string
    Rule: Rule
    MuteTargets: MuteTargets
    StartDate: number
    ExpireDate: number
    Status: string
    LastUpdatedTimestamp: number
    MuteType: string
end

local record GetDashboardInput
    DashboardName: string
end

local record GetDashboardOutput
    DashboardArn: string
    DashboardBody: string
    DashboardName: string
end

local record GetInsightRuleReportInput
    RuleName: string
    StartTime: number
    EndTime: number
    Period: number
    MaxContributorCount: number
    Metrics: {string}
    OrderBy: string
end

local record GetInsightRuleReportOutput
    KeyLabels: {string}
    AggregationStatistic: string
    AggregateValue: number
    ApproximateUniqueCount: number
    Contributors: {InsightRuleContributor}
    MetricDatapoints: {InsightRuleMetricDatapoint}
end

local record GetMetricDataInput
    MetricDataQueries: {MetricDataQuery}
    StartTime: number
    EndTime: number
    NextToken: string
    ScanBy: string
    MaxDatapoints: number
    LabelOptions: LabelOptions
end

local record GetMetricDataOutput
    MetricDataResults: {MetricDataResult}
    NextToken: string
    Messages: {MessageData}
end

local record GetMetricStatisticsInput
    Namespace: string
    MetricName: string
    Dimensions: {Dimension}
    StartTime: number
    EndTime: number
    Period: number
    Statistics: {string}
    ExtendedStatistics: {string}
    Unit: string
end

local record GetMetricStatisticsOutput
    Label: string
    Datapoints: {Datapoint}
end

local record GetMetricStreamInput
    Name: string
end

local record GetMetricStreamOutput
    Arn: string
    Name: string
    IncludeFilters: {MetricStreamFilter}
    ExcludeFilters: {MetricStreamFilter}
    FirehoseArn: string
    RoleArn: string
    State: string
    CreationDate: number
    LastUpdateDate: number
    OutputFormat: string
    StatisticsConfigurations: {MetricStreamStatisticsConfiguration}
    IncludeLinkedAccountsMetrics: boolean
end

local record GetMetricWidgetImageInput
    MetricWidget: string
    OutputFormat: string
end

local record GetMetricWidgetImageOutput
    MetricWidgetImage: string
end

local record GetOTelEnrichmentInput
end

local record GetOTelEnrichmentOutput
    Status: string
end

local record ListAlarmMuteRulesInput
    AlarmName: string
    Statuses: {string}
    MaxRecords: number
    NextToken: string
end

local record ListAlarmMuteRulesOutput
    AlarmMuteRuleSummaries: {AlarmMuteRuleSummary}
    NextToken: string
end

local record ListDashboardsInput
    DashboardNamePrefix: string
    NextToken: string
end

local record ListDashboardsOutput
    DashboardEntries: {DashboardEntry}
    NextToken: string
end

local record ListManagedInsightRulesInput
    ResourceARN: string
    NextToken: string
    MaxResults: number
end

local record ListManagedInsightRulesOutput
    ManagedRules: {ManagedRuleDescription}
    NextToken: string
end

local record ListMetricsInput
    Namespace: string
    MetricName: string
    Dimensions: {DimensionFilter}
    NextToken: string
    RecentlyActive: string
    IncludeLinkedAccounts: boolean
    OwningAccount: string
end

local record ListMetricsOutput
    Metrics: {Metric}
    NextToken: string
    OwningAccounts: {string}
end

local record ListMetricStreamsInput
    NextToken: string
    MaxResults: number
end

local record ListMetricStreamsOutput
    NextToken: string
    Entries: {MetricStreamEntry}
end

local record ListTagsForResourceInput
    ResourceARN: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record PutAlarmMuteRuleInput
    Name: string
    Description: string
    Rule: Rule
    MuteTargets: MuteTargets
    Tags: {Tag}
    StartDate: number
    ExpireDate: number
end

local record PutAlarmMuteRuleOutput
end

local record PutAnomalyDetectorInput
    Namespace: string
    MetricName: string
    Dimensions: {Dimension}
    Stat: string
    Configuration: AnomalyDetectorConfiguration
    MetricCharacteristics: MetricCharacteristics
    SingleMetricAnomalyDetector: SingleMetricAnomalyDetector
    MetricMathAnomalyDetector: MetricMathAnomalyDetector
end

local record PutAnomalyDetectorOutput
end

local record PutCompositeAlarmInput
    ActionsEnabled: boolean
    AlarmActions: {string}
    AlarmDescription: string
    AlarmName: string
    AlarmRule: string
    InsufficientDataActions: {string}
    OKActions: {string}
    Tags: {Tag}
    ActionsSuppressor: string
    ActionsSuppressorWaitPeriod: number
    ActionsSuppressorExtensionPeriod: number
end

local record PutCompositeAlarmOutput
end

local record PutDashboardInput
    DashboardName: string
    DashboardBody: string
    Tags: {Tag}
end

local record PutDashboardOutput
    DashboardValidationMessages: {DashboardValidationMessage}
end

local record PutInsightRuleInput
    RuleName: string
    RuleState: string
    RuleDefinition: string
    Tags: {Tag}
    ApplyOnTransformedLogs: boolean
end

local record PutInsightRuleOutput
end

local record PutManagedInsightRulesInput
    ManagedRules: {ManagedRule}
end

local record PutManagedInsightRulesOutput
    Failures: {PartialFailure}
end

local record PutMetricAlarmInput
    AlarmName: string
    AlarmDescription: string
    ActionsEnabled: boolean
    OKActions: {string}
    AlarmActions: {string}
    InsufficientDataActions: {string}
    MetricName: string
    Namespace: string
    Statistic: string
    ExtendedStatistic: string
    Dimensions: {Dimension}
    Period: number
    Unit: string
    EvaluationPeriods: number
    DatapointsToAlarm: number
    Threshold: number
    ComparisonOperator: string
    TreatMissingData: string
    EvaluateLowSampleCountPercentile: string
    Metrics: {MetricDataQuery}
    Tags: {Tag}
    ThresholdMetricId: string
    EvaluationCriteria: EvaluationCriteria
    EvaluationInterval: number
end

local record PutMetricAlarmOutput
end

local record PutMetricDataInput
    Namespace: string
    MetricData: {MetricDatum}
    EntityMetricData: {EntityMetricData}
    StrictEntityValidation: boolean
end

local record PutMetricDataOutput
end

local record PutMetricStreamInput
    Name: string
    IncludeFilters: {MetricStreamFilter}
    ExcludeFilters: {MetricStreamFilter}
    FirehoseArn: string
    RoleArn: string
    OutputFormat: string
    Tags: {Tag}
    StatisticsConfigurations: {MetricStreamStatisticsConfiguration}
    IncludeLinkedAccountsMetrics: boolean
end

local record PutMetricStreamOutput
    Arn: string
end

local record SetAlarmStateInput
    AlarmName: string
    StateValue: string
    StateReason: string
    StateReasonData: string
end

local record SetAlarmStateOutput
end

local record StartMetricStreamsInput
    Names: {string}
end

local record StartMetricStreamsOutput
end

local record StartOTelEnrichmentInput
end

local record StartOTelEnrichmentOutput
end

local record StopMetricStreamsInput
    Names: {string}
end

local record StopMetricStreamsOutput
end

local record StopOTelEnrichmentInput
end

local record StopOTelEnrichmentOutput
end

local record TagResourceInput
    ResourceARN: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceARN: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record ResourceNotFound
    message: string
end

local record InternalServiceFault
    Message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MissingRequiredParameterException
    message: string
end

local record ResourceNotFoundException
    ResourceType: string
    ResourceId: string
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceFault
    Message: string
end

local record InvalidParameterValueException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MissingRequiredParameterException
    message: string
end

local record InternalServiceFault
    Message: string
end

local record InvalidParameterValueException
    message: string
end

local record MissingRequiredParameterException
    message: string
end

local record InvalidNextToken
    message: string
end

local record ResourceNotFoundException
    ResourceType: string
    ResourceId: string
    Message: string
end

local record InvalidNextToken
    message: string
end

local record InvalidNextToken
    message: string
end

local record InternalServiceFault
    Message: string
end

local record InvalidNextToken
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record InvalidNextToken
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MissingRequiredParameterException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record LimitExceededException
    Message: string
end

local record MissingRequiredParameterException
    message: string
end

local record ResourceNotFoundException
    ResourceType: string
    ResourceId: string
    Message: string
end

local record DashboardNotFoundError
    message: string
end

local record InternalServiceFault
    Message: string
end

local record InvalidParameterValueException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MissingRequiredParameterException
    message: string
end

local record ResourceNotFoundException
    ResourceType: string
    ResourceId: string
    Message: string
end

local record InvalidNextToken
    message: string
end

local record InternalServiceFault
    Message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MissingRequiredParameterException
    message: string
end

local record InternalServiceFault
    Message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MissingRequiredParameterException
    message: string
end

local record ResourceNotFoundException
    ResourceType: string
    ResourceId: string
    Message: string
end

local record InvalidNextToken
    message: string
end

local record ResourceNotFoundException
    ResourceType: string
    ResourceId: string
    Message: string
end

local record InternalServiceFault
    Message: string
end

local record InvalidParameterValueException
    message: string
end

local record InvalidNextToken
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MissingRequiredParameterException
    message: string
end

local record InternalServiceFault
    Message: string
end

local record InvalidParameterValueException
    message: string
end

local record InternalServiceFault
    Message: string
end

local record InvalidNextToken
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MissingRequiredParameterException
    message: string
end

local record InternalServiceFault
    Message: string
end

local record InvalidParameterValueException
    message: string
end

local record ResourceNotFoundException
    ResourceType: string
    ResourceId: string
    Message: string
end

local record LimitExceededFault
    message: string
end

local record InternalServiceFault
    Message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record LimitExceededException
    Message: string
end

local record MissingRequiredParameterException
    message: string
end

local record LimitExceededFault
    message: string
end

local record ConflictException
    Message: string
end

local record DashboardInvalidInputError
    message: string
    dashboardValidationMessages: {DashboardValidationMessage}
end

local record InternalServiceFault
    Message: string
end

local record InvalidParameterValueException
    message: string
end

local record LimitExceededException
    Message: string
end

local record MissingRequiredParameterException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MissingRequiredParameterException
    message: string
end

local record LimitExceededFault
    message: string
end

local record InternalServiceFault
    Message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MissingRequiredParameterException
    message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InternalServiceFault
    Message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MissingRequiredParameterException
    message: string
end

local record InvalidFormatFault
    message: string
end

local record ResourceNotFound
    message: string
end

local record InternalServiceFault
    Message: string
end

local record InvalidParameterValueException
    message: string
end

local record MissingRequiredParameterException
    message: string
end

local record InternalServiceFault
    Message: string
end

local record InvalidParameterValueException
    message: string
end

local record MissingRequiredParameterException
    message: string
end

local record ConcurrentModificationException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceFault
    Message: string
end

local record InvalidParameterValueException
    message: string
end

local record ResourceNotFoundException
    ResourceType: string
    ResourceId: string
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceFault
    Message: string
end

local record InvalidParameterValueException
    message: string
end

local record ResourceNotFoundException
    ResourceType: string
    ResourceId: string
    Message: string
end

local type ComparisonOperator = "GreaterThanOrEqualToThreshold" | "GreaterThanThreshold" | "LessThanThreshold" | "LessThanOrEqualToThreshold" | "LessThanLowerOrGreaterThanUpperThreshold" | "LessThanLowerThreshold" | "GreaterThanUpperThreshold"

local type StandardUnit = "Seconds" | "Microseconds" | "Milliseconds" | "Bytes" | "Kilobytes" | "Megabytes" | "Gigabytes" | "Terabytes" | "Bits" | "Kilobits" | "Megabits" | "Gigabits" | "Terabits" | "Percent" | "Count" | "Bytes/Second" | "Kilobytes/Second" | "Megabytes/Second" | "Gigabytes/Second" | "Terabytes/Second" | "Bits/Second" | "Kilobits/Second" | "Megabits/Second" | "Gigabits/Second" | "Terabits/Second" | "Count/Second" | "None"

local type StateValue = "OK" | "ALARM" | "INSUFFICIENT_DATA"

local type MetricStreamOutputFormat = "json" | "opentelemetry0.7" | "opentelemetry1.0"

local type ScanBy = "TimestampDescending" | "TimestampAscending"

local type Statistic = "SampleCount" | "Average" | "Sum" | "Minimum" | "Maximum"

local type AlarmMuteRuleStatus = "SCHEDULED" | "ACTIVE" | "EXPIRED"

local type RecentlyActive = "PT3H"

local type OTelEnrichmentStatus = "Running" | "Stopped"

local type HistoryItemType = "ConfigurationUpdate" | "StateUpdate" | "Action" | "AlarmContributorStateUpdate" | "AlarmContributorAction"

local record M
    DeleteAlarmMuteRuleInput: DeleteAlarmMuteRuleInput
    DeleteAlarmMuteRuleOutput: DeleteAlarmMuteRuleOutput
    DeleteAlarmsInput: DeleteAlarmsInput
    DeleteAlarmsOutput: DeleteAlarmsOutput
    DeleteAnomalyDetectorInput: DeleteAnomalyDetectorInput
    DeleteAnomalyDetectorOutput: DeleteAnomalyDetectorOutput
    DeleteDashboardsInput: DeleteDashboardsInput
    DeleteDashboardsOutput: DeleteDashboardsOutput
    DeleteInsightRulesInput: DeleteInsightRulesInput
    DeleteInsightRulesOutput: DeleteInsightRulesOutput
    DeleteMetricStreamInput: DeleteMetricStreamInput
    DeleteMetricStreamOutput: DeleteMetricStreamOutput
    DescribeAlarmContributorsInput: DescribeAlarmContributorsInput
    DescribeAlarmContributorsOutput: DescribeAlarmContributorsOutput
    DescribeAlarmHistoryInput: DescribeAlarmHistoryInput
    DescribeAlarmHistoryOutput: DescribeAlarmHistoryOutput
    DescribeAlarmsInput: DescribeAlarmsInput
    DescribeAlarmsOutput: DescribeAlarmsOutput
    DescribeAlarmsForMetricInput: DescribeAlarmsForMetricInput
    DescribeAlarmsForMetricOutput: DescribeAlarmsForMetricOutput
    DescribeAnomalyDetectorsInput: DescribeAnomalyDetectorsInput
    DescribeAnomalyDetectorsOutput: DescribeAnomalyDetectorsOutput
    DescribeInsightRulesInput: DescribeInsightRulesInput
    DescribeInsightRulesOutput: DescribeInsightRulesOutput
    DisableAlarmActionsInput: DisableAlarmActionsInput
    DisableAlarmActionsOutput: DisableAlarmActionsOutput
    DisableInsightRulesInput: DisableInsightRulesInput
    DisableInsightRulesOutput: DisableInsightRulesOutput
    EnableAlarmActionsInput: EnableAlarmActionsInput
    EnableAlarmActionsOutput: EnableAlarmActionsOutput
    EnableInsightRulesInput: EnableInsightRulesInput
    EnableInsightRulesOutput: EnableInsightRulesOutput
    GetAlarmMuteRuleInput: GetAlarmMuteRuleInput
    GetAlarmMuteRuleOutput: GetAlarmMuteRuleOutput
    GetDashboardInput: GetDashboardInput
    GetDashboardOutput: GetDashboardOutput
    GetInsightRuleReportInput: GetInsightRuleReportInput
    GetInsightRuleReportOutput: GetInsightRuleReportOutput
    GetMetricDataInput: GetMetricDataInput
    GetMetricDataOutput: GetMetricDataOutput
    GetMetricStatisticsInput: GetMetricStatisticsInput
    GetMetricStatisticsOutput: GetMetricStatisticsOutput
    GetMetricStreamInput: GetMetricStreamInput
    GetMetricStreamOutput: GetMetricStreamOutput
    GetMetricWidgetImageInput: GetMetricWidgetImageInput
    GetMetricWidgetImageOutput: GetMetricWidgetImageOutput
    GetOTelEnrichmentInput: GetOTelEnrichmentInput
    GetOTelEnrichmentOutput: GetOTelEnrichmentOutput
    ListAlarmMuteRulesInput: ListAlarmMuteRulesInput
    ListAlarmMuteRulesOutput: ListAlarmMuteRulesOutput
    ListDashboardsInput: ListDashboardsInput
    ListDashboardsOutput: ListDashboardsOutput
    ListManagedInsightRulesInput: ListManagedInsightRulesInput
    ListManagedInsightRulesOutput: ListManagedInsightRulesOutput
    ListMetricsInput: ListMetricsInput
    ListMetricsOutput: ListMetricsOutput
    ListMetricStreamsInput: ListMetricStreamsInput
    ListMetricStreamsOutput: ListMetricStreamsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutAlarmMuteRuleInput: PutAlarmMuteRuleInput
    PutAlarmMuteRuleOutput: PutAlarmMuteRuleOutput
    PutAnomalyDetectorInput: PutAnomalyDetectorInput
    PutAnomalyDetectorOutput: PutAnomalyDetectorOutput
    PutCompositeAlarmInput: PutCompositeAlarmInput
    PutCompositeAlarmOutput: PutCompositeAlarmOutput
    PutDashboardInput: PutDashboardInput
    PutDashboardOutput: PutDashboardOutput
    PutInsightRuleInput: PutInsightRuleInput
    PutInsightRuleOutput: PutInsightRuleOutput
    PutManagedInsightRulesInput: PutManagedInsightRulesInput
    PutManagedInsightRulesOutput: PutManagedInsightRulesOutput
    PutMetricAlarmInput: PutMetricAlarmInput
    PutMetricAlarmOutput: PutMetricAlarmOutput
    PutMetricDataInput: PutMetricDataInput
    PutMetricDataOutput: PutMetricDataOutput
    PutMetricStreamInput: PutMetricStreamInput
    PutMetricStreamOutput: PutMetricStreamOutput
    SetAlarmStateInput: SetAlarmStateInput
    SetAlarmStateOutput: SetAlarmStateOutput
    StartMetricStreamsInput: StartMetricStreamsInput
    StartMetricStreamsOutput: StartMetricStreamsOutput
    StartOTelEnrichmentInput: StartOTelEnrichmentInput
    StartOTelEnrichmentOutput: StartOTelEnrichmentOutput
    StopMetricStreamsInput: StopMetricStreamsInput
    StopMetricStreamsOutput: StopMetricStreamsOutput
    StopOTelEnrichmentInput: StopOTelEnrichmentInput
    StopOTelEnrichmentOutput: StopOTelEnrichmentOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
end

return M
