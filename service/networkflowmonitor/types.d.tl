local record CreateMonitorInput
    monitorName: string
    localResources: {MonitorLocalResource}
    remoteResources: {MonitorRemoteResource}
    scopeArn: string
    clientToken: string
    tags: {string : string}
end

local record CreateMonitorOutput
    monitorArn: string
    monitorName: string
    monitorStatus: string
    localResources: {MonitorLocalResource}
    remoteResources: {MonitorRemoteResource}
    createdAt: number
    modifiedAt: number
    tags: {string : string}
end

local record CreateScopeInput
    targets: {TargetResource}
    clientToken: string
    tags: {string : string}
end

local record CreateScopeOutput
    scopeId: string
    status: string
    scopeArn: string
    tags: {string : string}
end

local record DeleteMonitorInput
    monitorName: string
end

local record DeleteMonitorOutput
end

local record DeleteScopeInput
    scopeId: string
end

local record DeleteScopeOutput
end

local record GetMonitorInput
    monitorName: string
end

local record GetMonitorOutput
    monitorArn: string
    monitorName: string
    monitorStatus: string
    localResources: {MonitorLocalResource}
    remoteResources: {MonitorRemoteResource}
    createdAt: number
    modifiedAt: number
    tags: {string : string}
end

local record GetQueryResultsMonitorTopContributorsInput
    monitorName: string
    queryId: string
    nextToken: string
    maxResults: number
end

local record GetQueryResultsMonitorTopContributorsOutput
    unit: string
    topContributors: {MonitorTopContributorsRow}
    nextToken: string
end

local record GetQueryResultsWorkloadInsightsTopContributorsInput
    scopeId: string
    queryId: string
    nextToken: string
    maxResults: number
end

local record GetQueryResultsWorkloadInsightsTopContributorsOutput
    topContributors: {WorkloadInsightsTopContributorsRow}
    nextToken: string
end

local record GetQueryResultsWorkloadInsightsTopContributorsDataInput
    scopeId: string
    queryId: string
    nextToken: string
    maxResults: number
end

local record GetQueryResultsWorkloadInsightsTopContributorsDataOutput
    unit: string
    datapoints: {WorkloadInsightsTopContributorsDataPoint}
    nextToken: string
end

local record GetQueryStatusMonitorTopContributorsInput
    monitorName: string
    queryId: string
end

local record GetQueryStatusMonitorTopContributorsOutput
    status: string
end

local record GetQueryStatusWorkloadInsightsTopContributorsInput
    scopeId: string
    queryId: string
end

local record GetQueryStatusWorkloadInsightsTopContributorsOutput
    status: string
end

local record GetQueryStatusWorkloadInsightsTopContributorsDataInput
    scopeId: string
    queryId: string
end

local record GetQueryStatusWorkloadInsightsTopContributorsDataOutput
    status: string
end

local record GetScopeInput
    scopeId: string
end

local record GetScopeOutput
    scopeId: string
    status: string
    scopeArn: string
    targets: {TargetResource}
    tags: {string : string}
end

local record ListMonitorsInput
    nextToken: string
    maxResults: number
    monitorStatus: string
end

local record ListMonitorsOutput
    monitors: {MonitorSummary}
    nextToken: string
end

local record ListScopesInput
    nextToken: string
    maxResults: number
end

local record ListScopesOutput
    scopes: {ScopeSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record StartQueryMonitorTopContributorsInput
    monitorName: string
    startTime: number
    endTime: number
    metricName: string
    destinationCategory: string
    limit: number
end

local record StartQueryMonitorTopContributorsOutput
    queryId: string
end

local record StartQueryWorkloadInsightsTopContributorsInput
    scopeId: string
    startTime: number
    endTime: number
    metricName: string
    destinationCategory: string
    limit: number
end

local record StartQueryWorkloadInsightsTopContributorsOutput
    queryId: string
end

local record StartQueryWorkloadInsightsTopContributorsDataInput
    scopeId: string
    startTime: number
    endTime: number
    metricName: string
    destinationCategory: string
end

local record StartQueryWorkloadInsightsTopContributorsDataOutput
    queryId: string
end

local record StopQueryMonitorTopContributorsInput
    monitorName: string
    queryId: string
end

local record StopQueryMonitorTopContributorsOutput
end

local record StopQueryWorkloadInsightsTopContributorsInput
    scopeId: string
    queryId: string
end

local record StopQueryWorkloadInsightsTopContributorsOutput
end

local record StopQueryWorkloadInsightsTopContributorsDataInput
    scopeId: string
    queryId: string
end

local record StopQueryWorkloadInsightsTopContributorsDataOutput
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

local record UpdateMonitorInput
    monitorName: string
    localResourcesToAdd: {MonitorLocalResource}
    localResourcesToRemove: {MonitorLocalResource}
    remoteResourcesToAdd: {MonitorRemoteResource}
    remoteResourcesToRemove: {MonitorRemoteResource}
    clientToken: string
end

local record UpdateMonitorOutput
    monitorArn: string
    monitorName: string
    monitorStatus: string
    localResources: {MonitorLocalResource}
    remoteResources: {MonitorRemoteResource}
    createdAt: number
    modifiedAt: number
    tags: {string : string}
end

local record UpdateScopeInput
    scopeId: string
    resourcesToAdd: {TargetResource}
    resourcesToDelete: {TargetResource}
end

local record UpdateScopeOutput
    scopeId: string
    status: string
    scopeArn: string
    tags: {string : string}
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

local record ServiceQuotaExceededException
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

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
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

local record ConflictException
    message: string
end

local record InternalServerException
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

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
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

local record ResourceNotFoundException
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

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
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

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
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

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
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

local record ServiceQuotaExceededException
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

local record ServiceQuotaExceededException
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

local record ServiceQuotaExceededException
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

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
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

local record ServiceQuotaExceededException
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

local record ConflictException
    message: string
end

local record InternalServerException
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

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
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

local record ServiceQuotaExceededException
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

local record ServiceQuotaExceededException
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

local record ServiceQuotaExceededException
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

local record ServiceQuotaExceededException
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

local record ServiceQuotaExceededException
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

local record ConflictException
    message: string
end

local record InternalServerException
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

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
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

local record AccessDeniedException
    message: string
end

local record InternalServerException
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

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local type MetricUnit = "Seconds" | "Microseconds" | "Milliseconds" | "Bytes" | "Kilobytes" | "Megabytes" | "Gigabytes" | "Terabytes" | "Bits" | "Kilobits" | "Megabits" | "Gigabits" | "Terabits" | "Percent" | "Count" | "Bytes/Second" | "Kilobytes/Second" | "Megabytes/Second" | "Gigabytes/Second" | "Terabytes/Second" | "Bits/Second" | "Kilobits/Second" | "Megabits/Second" | "Gigabits/Second" | "Terabits/Second" | "Count/Second" | "None"

local type MonitorStatus = "PENDING" | "ACTIVE" | "INACTIVE" | "ERROR" | "DELETING"

local type QueryStatus = "QUEUED" | "RUNNING" | "SUCCEEDED" | "FAILED" | "CANCELED"

local type WorkloadInsightsMetric = "TIMEOUTS" | "RETRANSMISSIONS" | "DATA_TRANSFERRED"

local type ScopeStatus = "SUCCEEDED" | "IN_PROGRESS" | "FAILED" | "DEACTIVATING" | "DEACTIVATED"

local type MonitorMetric = "ROUND_TRIP_TIME" | "TIMEOUTS" | "RETRANSMISSIONS" | "DATA_TRANSFERRED"

local type DestinationCategory = "INTRA_AZ" | "INTER_AZ" | "INTER_VPC" | "UNCLASSIFIED" | "AMAZON_S3" | "AMAZON_DYNAMODB" | "INTER_REGION"

local record M
    CreateMonitorInput: CreateMonitorInput
    CreateMonitorOutput: CreateMonitorOutput
    CreateScopeInput: CreateScopeInput
    CreateScopeOutput: CreateScopeOutput
    DeleteMonitorInput: DeleteMonitorInput
    DeleteMonitorOutput: DeleteMonitorOutput
    DeleteScopeInput: DeleteScopeInput
    DeleteScopeOutput: DeleteScopeOutput
    GetMonitorInput: GetMonitorInput
    GetMonitorOutput: GetMonitorOutput
    GetQueryResultsMonitorTopContributorsInput: GetQueryResultsMonitorTopContributorsInput
    GetQueryResultsMonitorTopContributorsOutput: GetQueryResultsMonitorTopContributorsOutput
    GetQueryResultsWorkloadInsightsTopContributorsInput: GetQueryResultsWorkloadInsightsTopContributorsInput
    GetQueryResultsWorkloadInsightsTopContributorsOutput: GetQueryResultsWorkloadInsightsTopContributorsOutput
    GetQueryResultsWorkloadInsightsTopContributorsDataInput: GetQueryResultsWorkloadInsightsTopContributorsDataInput
    GetQueryResultsWorkloadInsightsTopContributorsDataOutput: GetQueryResultsWorkloadInsightsTopContributorsDataOutput
    GetQueryStatusMonitorTopContributorsInput: GetQueryStatusMonitorTopContributorsInput
    GetQueryStatusMonitorTopContributorsOutput: GetQueryStatusMonitorTopContributorsOutput
    GetQueryStatusWorkloadInsightsTopContributorsInput: GetQueryStatusWorkloadInsightsTopContributorsInput
    GetQueryStatusWorkloadInsightsTopContributorsOutput: GetQueryStatusWorkloadInsightsTopContributorsOutput
    GetQueryStatusWorkloadInsightsTopContributorsDataInput: GetQueryStatusWorkloadInsightsTopContributorsDataInput
    GetQueryStatusWorkloadInsightsTopContributorsDataOutput: GetQueryStatusWorkloadInsightsTopContributorsDataOutput
    GetScopeInput: GetScopeInput
    GetScopeOutput: GetScopeOutput
    ListMonitorsInput: ListMonitorsInput
    ListMonitorsOutput: ListMonitorsOutput
    ListScopesInput: ListScopesInput
    ListScopesOutput: ListScopesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    StartQueryMonitorTopContributorsInput: StartQueryMonitorTopContributorsInput
    StartQueryMonitorTopContributorsOutput: StartQueryMonitorTopContributorsOutput
    StartQueryWorkloadInsightsTopContributorsInput: StartQueryWorkloadInsightsTopContributorsInput
    StartQueryWorkloadInsightsTopContributorsOutput: StartQueryWorkloadInsightsTopContributorsOutput
    StartQueryWorkloadInsightsTopContributorsDataInput: StartQueryWorkloadInsightsTopContributorsDataInput
    StartQueryWorkloadInsightsTopContributorsDataOutput: StartQueryWorkloadInsightsTopContributorsDataOutput
    StopQueryMonitorTopContributorsInput: StopQueryMonitorTopContributorsInput
    StopQueryMonitorTopContributorsOutput: StopQueryMonitorTopContributorsOutput
    StopQueryWorkloadInsightsTopContributorsInput: StopQueryWorkloadInsightsTopContributorsInput
    StopQueryWorkloadInsightsTopContributorsOutput: StopQueryWorkloadInsightsTopContributorsOutput
    StopQueryWorkloadInsightsTopContributorsDataInput: StopQueryWorkloadInsightsTopContributorsDataInput
    StopQueryWorkloadInsightsTopContributorsDataOutput: StopQueryWorkloadInsightsTopContributorsDataOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateMonitorInput: UpdateMonitorInput
    UpdateMonitorOutput: UpdateMonitorOutput
    UpdateScopeInput: UpdateScopeInput
    UpdateScopeOutput: UpdateScopeOutput
end

return M
