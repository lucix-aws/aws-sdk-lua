local record AddWorkloadInput
    ResourceGroupName: string
    ComponentName: string
    WorkloadConfiguration: WorkloadConfiguration
end

local record AddWorkloadOutput
    WorkloadId: string
    WorkloadConfiguration: WorkloadConfiguration
end

local record CreateApplicationInput
    ResourceGroupName: string
    OpsCenterEnabled: boolean
    CWEMonitorEnabled: boolean
    OpsItemSNSTopicArn: string
    SNSNotificationArn: string
    Tags: {Tag}
    AutoConfigEnabled: boolean
    AutoCreate: boolean
    GroupingType: string
    AttachMissingPermission: boolean
end

local record CreateApplicationOutput
    ApplicationInfo: ApplicationInfo
end

local record CreateComponentInput
    ResourceGroupName: string
    ComponentName: string
    ResourceList: {string}
end

local record CreateComponentOutput
end

local record CreateLogPatternInput
    ResourceGroupName: string
    PatternSetName: string
    PatternName: string
    Pattern: string
    Rank: number
end

local record CreateLogPatternOutput
    LogPattern: LogPattern
    ResourceGroupName: string
end

local record DeleteApplicationInput
    ResourceGroupName: string
end

local record DeleteApplicationOutput
end

local record DeleteComponentInput
    ResourceGroupName: string
    ComponentName: string
end

local record DeleteComponentOutput
end

local record DeleteLogPatternInput
    ResourceGroupName: string
    PatternSetName: string
    PatternName: string
end

local record DeleteLogPatternOutput
end

local record DescribeApplicationInput
    ResourceGroupName: string
    AccountId: string
end

local record DescribeApplicationOutput
    ApplicationInfo: ApplicationInfo
end

local record DescribeComponentInput
    ResourceGroupName: string
    ComponentName: string
    AccountId: string
end

local record DescribeComponentOutput
    ApplicationComponent: ApplicationComponent
    ResourceList: {string}
end

local record DescribeComponentConfigurationInput
    ResourceGroupName: string
    ComponentName: string
    AccountId: string
end

local record DescribeComponentConfigurationOutput
    Monitor: boolean
    Tier: string
    ComponentConfiguration: string
end

local record DescribeComponentConfigurationRecommendationInput
    ResourceGroupName: string
    ComponentName: string
    Tier: string
    WorkloadName: string
    RecommendationType: string
end

local record DescribeComponentConfigurationRecommendationOutput
    ComponentConfiguration: string
end

local record DescribeLogPatternInput
    ResourceGroupName: string
    PatternSetName: string
    PatternName: string
    AccountId: string
end

local record DescribeLogPatternOutput
    ResourceGroupName: string
    AccountId: string
    LogPattern: LogPattern
end

local record DescribeObservationInput
    ObservationId: string
    AccountId: string
end

local record DescribeObservationOutput
    Observation: Observation
end

local record DescribeProblemInput
    ProblemId: string
    AccountId: string
end

local record DescribeProblemOutput
    Problem: Problem
    SNSNotificationArn: string
end

local record DescribeProblemObservationsInput
    ProblemId: string
    AccountId: string
end

local record DescribeProblemObservationsOutput
    RelatedObservations: RelatedObservations
end

local record DescribeWorkloadInput
    ResourceGroupName: string
    ComponentName: string
    WorkloadId: string
    AccountId: string
end

local record DescribeWorkloadOutput
    WorkloadId: string
    WorkloadRemarks: string
    WorkloadConfiguration: WorkloadConfiguration
end

local record ListApplicationsInput
    MaxResults: number
    NextToken: string
    AccountId: string
end

local record ListApplicationsOutput
    ApplicationInfoList: {ApplicationInfo}
    NextToken: string
end

local record ListComponentsInput
    ResourceGroupName: string
    MaxResults: number
    NextToken: string
    AccountId: string
end

local record ListComponentsOutput
    ApplicationComponentList: {ApplicationComponent}
    NextToken: string
end

local record ListConfigurationHistoryInput
    ResourceGroupName: string
    StartTime: number
    EndTime: number
    EventStatus: string
    MaxResults: number
    NextToken: string
    AccountId: string
end

local record ListConfigurationHistoryOutput
    EventList: {ConfigurationEvent}
    NextToken: string
end

local record ListLogPatternsInput
    ResourceGroupName: string
    PatternSetName: string
    MaxResults: number
    NextToken: string
    AccountId: string
end

local record ListLogPatternsOutput
    ResourceGroupName: string
    AccountId: string
    LogPatterns: {LogPattern}
    NextToken: string
end

local record ListLogPatternSetsInput
    ResourceGroupName: string
    MaxResults: number
    NextToken: string
    AccountId: string
end

local record ListLogPatternSetsOutput
    ResourceGroupName: string
    AccountId: string
    LogPatternSets: {string}
    NextToken: string
end

local record ListProblemsInput
    AccountId: string
    ResourceGroupName: string
    StartTime: number
    EndTime: number
    MaxResults: number
    NextToken: string
    ComponentName: string
    Visibility: string
end

local record ListProblemsOutput
    ProblemList: {Problem}
    NextToken: string
    ResourceGroupName: string
    AccountId: string
end

local record ListTagsForResourceInput
    ResourceARN: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record ListWorkloadsInput
    ResourceGroupName: string
    ComponentName: string
    MaxResults: number
    NextToken: string
    AccountId: string
end

local record ListWorkloadsOutput
    WorkloadList: {Workload}
    NextToken: string
end

local record RemoveWorkloadInput
    ResourceGroupName: string
    ComponentName: string
    WorkloadId: string
end

local record RemoveWorkloadOutput
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

local record UpdateApplicationInput
    ResourceGroupName: string
    OpsCenterEnabled: boolean
    CWEMonitorEnabled: boolean
    OpsItemSNSTopicArn: string
    SNSNotificationArn: string
    RemoveSNSTopic: boolean
    AutoConfigEnabled: boolean
    AttachMissingPermission: boolean
end

local record UpdateApplicationOutput
    ApplicationInfo: ApplicationInfo
end

local record UpdateComponentInput
    ResourceGroupName: string
    ComponentName: string
    NewComponentName: string
    ResourceList: {string}
end

local record UpdateComponentOutput
end

local record UpdateComponentConfigurationInput
    ResourceGroupName: string
    ComponentName: string
    Monitor: boolean
    Tier: string
    ComponentConfiguration: string
    AutoConfigEnabled: boolean
end

local record UpdateComponentConfigurationOutput
end

local record UpdateLogPatternInput
    ResourceGroupName: string
    PatternSetName: string
    PatternName: string
    Pattern: string
    Rank: number
end

local record UpdateLogPatternOutput
    ResourceGroupName: string
    LogPattern: LogPattern
end

local record UpdateProblemInput
    ProblemId: string
    UpdateStatus: string
    Visibility: string
end

local record UpdateProblemOutput
end

local record UpdateWorkloadInput
    ResourceGroupName: string
    ComponentName: string
    WorkloadId: string
    WorkloadConfiguration: WorkloadConfiguration
end

local record UpdateWorkloadOutput
    WorkloadId: string
    WorkloadConfiguration: WorkloadConfiguration
end

local record InternalServerException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record TagsAlreadyExistException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
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

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
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

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record TooManyTagsException
    Message: string
    ResourceName: string
end

local record ValidationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local type RecommendationType = "INFRA_ONLY" | "WORKLOAD_ONLY" | "ALL"

local type Tier = "CUSTOM" | "DEFAULT" | "DOT_NET_CORE" | "DOT_NET_WORKER" | "DOT_NET_WEB_TIER" | "DOT_NET_WEB" | "SQL_SERVER" | "SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP" | "MYSQL" | "POSTGRESQL" | "JAVA_JMX" | "ORACLE" | "SAP_HANA_MULTI_NODE" | "SAP_HANA_SINGLE_NODE" | "SAP_HANA_HIGH_AVAILABILITY" | "SAP_ASE_SINGLE_NODE" | "SAP_ASE_HIGH_AVAILABILITY" | "SQL_SERVER_FAILOVER_CLUSTER_INSTANCE" | "SHAREPOINT" | "ACTIVE_DIRECTORY" | "SAP_NETWEAVER_STANDARD" | "SAP_NETWEAVER_DISTRIBUTED" | "SAP_NETWEAVER_HIGH_AVAILABILITY"

local type GroupingType = "ACCOUNT_BASED"

local type ConfigurationEventStatus = "INFO" | "WARN" | "ERROR"

local type Visibility = "IGNORED" | "VISIBLE"

local type UpdateStatus = "RESOLVED"

local record M
    AddWorkloadInput: AddWorkloadInput
    AddWorkloadOutput: AddWorkloadOutput
    CreateApplicationInput: CreateApplicationInput
    CreateApplicationOutput: CreateApplicationOutput
    CreateComponentInput: CreateComponentInput
    CreateComponentOutput: CreateComponentOutput
    CreateLogPatternInput: CreateLogPatternInput
    CreateLogPatternOutput: CreateLogPatternOutput
    DeleteApplicationInput: DeleteApplicationInput
    DeleteApplicationOutput: DeleteApplicationOutput
    DeleteComponentInput: DeleteComponentInput
    DeleteComponentOutput: DeleteComponentOutput
    DeleteLogPatternInput: DeleteLogPatternInput
    DeleteLogPatternOutput: DeleteLogPatternOutput
    DescribeApplicationInput: DescribeApplicationInput
    DescribeApplicationOutput: DescribeApplicationOutput
    DescribeComponentInput: DescribeComponentInput
    DescribeComponentOutput: DescribeComponentOutput
    DescribeComponentConfigurationInput: DescribeComponentConfigurationInput
    DescribeComponentConfigurationOutput: DescribeComponentConfigurationOutput
    DescribeComponentConfigurationRecommendationInput: DescribeComponentConfigurationRecommendationInput
    DescribeComponentConfigurationRecommendationOutput: DescribeComponentConfigurationRecommendationOutput
    DescribeLogPatternInput: DescribeLogPatternInput
    DescribeLogPatternOutput: DescribeLogPatternOutput
    DescribeObservationInput: DescribeObservationInput
    DescribeObservationOutput: DescribeObservationOutput
    DescribeProblemInput: DescribeProblemInput
    DescribeProblemOutput: DescribeProblemOutput
    DescribeProblemObservationsInput: DescribeProblemObservationsInput
    DescribeProblemObservationsOutput: DescribeProblemObservationsOutput
    DescribeWorkloadInput: DescribeWorkloadInput
    DescribeWorkloadOutput: DescribeWorkloadOutput
    ListApplicationsInput: ListApplicationsInput
    ListApplicationsOutput: ListApplicationsOutput
    ListComponentsInput: ListComponentsInput
    ListComponentsOutput: ListComponentsOutput
    ListConfigurationHistoryInput: ListConfigurationHistoryInput
    ListConfigurationHistoryOutput: ListConfigurationHistoryOutput
    ListLogPatternsInput: ListLogPatternsInput
    ListLogPatternsOutput: ListLogPatternsOutput
    ListLogPatternSetsInput: ListLogPatternSetsInput
    ListLogPatternSetsOutput: ListLogPatternSetsOutput
    ListProblemsInput: ListProblemsInput
    ListProblemsOutput: ListProblemsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListWorkloadsInput: ListWorkloadsInput
    ListWorkloadsOutput: ListWorkloadsOutput
    RemoveWorkloadInput: RemoveWorkloadInput
    RemoveWorkloadOutput: RemoveWorkloadOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateApplicationInput: UpdateApplicationInput
    UpdateApplicationOutput: UpdateApplicationOutput
    UpdateComponentInput: UpdateComponentInput
    UpdateComponentOutput: UpdateComponentOutput
    UpdateComponentConfigurationInput: UpdateComponentConfigurationInput
    UpdateComponentConfigurationOutput: UpdateComponentConfigurationOutput
    UpdateLogPatternInput: UpdateLogPatternInput
    UpdateLogPatternOutput: UpdateLogPatternOutput
    UpdateProblemInput: UpdateProblemInput
    UpdateProblemOutput: UpdateProblemOutput
    UpdateWorkloadInput: UpdateWorkloadInput
    UpdateWorkloadOutput: UpdateWorkloadOutput
end

return M
