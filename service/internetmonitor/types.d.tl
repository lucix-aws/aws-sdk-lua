local record CreateMonitorInput
    MonitorName: string
    Resources: {string}
    ClientToken: string
    Tags: {string : string}
    MaxCityNetworksToMonitor: number
    InternetMeasurementsLogDelivery: InternetMeasurementsLogDelivery
    TrafficPercentageToMonitor: number
    HealthEventsConfig: HealthEventsConfig
end

local record CreateMonitorOutput
    Arn: string
    Status: string
end

local record DeleteMonitorInput
    MonitorName: string
end

local record DeleteMonitorOutput
end

local record GetHealthEventInput
    MonitorName: string
    EventId: string
    LinkedAccountId: string
end

local record GetHealthEventOutput
    EventArn: string
    EventId: string
    StartedAt: number
    EndedAt: number
    CreatedAt: number
    LastUpdatedAt: number
    ImpactedLocations: {ImpactedLocation}
    Status: string
    PercentOfTotalTrafficImpacted: number
    ImpactType: string
    HealthScoreThreshold: number
end

local record GetInternetEventInput
    EventId: string
end

local record GetInternetEventOutput
    EventId: string
    EventArn: string
    StartedAt: number
    EndedAt: number
    ClientLocation: ClientLocation
    EventType: string
    EventStatus: string
end

local record GetMonitorInput
    MonitorName: string
    LinkedAccountId: string
end

local record GetMonitorOutput
    MonitorName: string
    MonitorArn: string
    Resources: {string}
    Status: string
    CreatedAt: number
    ModifiedAt: number
    ProcessingStatus: string
    ProcessingStatusInfo: string
    Tags: {string : string}
    MaxCityNetworksToMonitor: number
    InternetMeasurementsLogDelivery: InternetMeasurementsLogDelivery
    TrafficPercentageToMonitor: number
    HealthEventsConfig: HealthEventsConfig
end

local record GetQueryResultsInput
    MonitorName: string
    QueryId: string
    NextToken: string
    MaxResults: number
end

local record GetQueryResultsOutput
    Fields: {QueryField}
    Data: {{string}}
    NextToken: string
end

local record GetQueryStatusInput
    MonitorName: string
    QueryId: string
end

local record GetQueryStatusOutput
    Status: string
end

local record ListHealthEventsInput
    MonitorName: string
    StartTime: number
    EndTime: number
    NextToken: string
    MaxResults: number
    EventStatus: string
    LinkedAccountId: string
end

local record ListHealthEventsOutput
    HealthEvents: {HealthEvent}
    NextToken: string
end

local record ListInternetEventsInput
    NextToken: string
    MaxResults: number
    StartTime: number
    EndTime: number
    EventStatus: string
    EventType: string
end

local record ListInternetEventsOutput
    InternetEvents: {InternetEventSummary}
    NextToken: string
end

local record ListMonitorsInput
    NextToken: string
    MaxResults: number
    MonitorStatus: string
    IncludeLinkedAccounts: boolean
end

local record ListMonitorsOutput
    Monitors: {Monitor}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
end

local record StartQueryInput
    MonitorName: string
    StartTime: number
    EndTime: number
    QueryType: string
    FilterParameters: {FilterParameter}
    LinkedAccountId: string
end

local record StartQueryOutput
    QueryId: string
end

local record StopQueryInput
    MonitorName: string
    QueryId: string
end

local record StopQueryOutput
end

local record TagResourceInput
    ResourceArn: string
    Tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateMonitorInput
    MonitorName: string
    ResourcesToAdd: {string}
    ResourcesToRemove: {string}
    Status: string
    ClientToken: string
    MaxCityNetworksToMonitor: number
    InternetMeasurementsLogDelivery: InternetMeasurementsLogDelivery
    TrafficPercentageToMonitor: number
    HealthEventsConfig: HealthEventsConfig
end

local record UpdateMonitorOutput
    MonitorArn: string
    Status: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record M
    CreateMonitorInput: CreateMonitorInput
    CreateMonitorOutput: CreateMonitorOutput
    DeleteMonitorInput: DeleteMonitorInput
    DeleteMonitorOutput: DeleteMonitorOutput
    GetHealthEventInput: GetHealthEventInput
    GetHealthEventOutput: GetHealthEventOutput
    GetInternetEventInput: GetInternetEventInput
    GetInternetEventOutput: GetInternetEventOutput
    GetMonitorInput: GetMonitorInput
    GetMonitorOutput: GetMonitorOutput
    GetQueryResultsInput: GetQueryResultsInput
    GetQueryResultsOutput: GetQueryResultsOutput
    GetQueryStatusInput: GetQueryStatusInput
    GetQueryStatusOutput: GetQueryStatusOutput
    ListHealthEventsInput: ListHealthEventsInput
    ListHealthEventsOutput: ListHealthEventsOutput
    ListInternetEventsInput: ListInternetEventsInput
    ListInternetEventsOutput: ListInternetEventsOutput
    ListMonitorsInput: ListMonitorsInput
    ListMonitorsOutput: ListMonitorsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    StartQueryInput: StartQueryInput
    StartQueryOutput: StartQueryOutput
    StopQueryInput: StopQueryInput
    StopQueryOutput: StopQueryOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateMonitorInput: UpdateMonitorInput
    UpdateMonitorOutput: UpdateMonitorOutput
end

return M
