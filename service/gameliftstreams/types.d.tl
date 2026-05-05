local record AddStreamGroupLocationsInput
    Identifier: string
    LocationConfigurations: {LocationConfiguration}
end

local record AddStreamGroupLocationsOutput
    Identifier: string
    Locations: {LocationState}
end

local record AssociateApplicationsInput
    Identifier: string
    ApplicationIdentifiers: {string}
end

local record AssociateApplicationsOutput
    Arn: string
    ApplicationArns: {string}
end

local record CreateApplicationInput
    Description: string
    RuntimeEnvironment: RuntimeEnvironment
    ExecutablePath: string
    ApplicationSourceUri: string
    ApplicationLogPaths: {string}
    ApplicationLogOutputUri: string
    Tags: {string : string}
    ClientToken: string
end

local record CreateApplicationOutput
    Arn: string
    Description: string
    RuntimeEnvironment: RuntimeEnvironment
    ExecutablePath: string
    ApplicationLogPaths: {string}
    ApplicationLogOutputUri: string
    ApplicationSourceUri: string
    Id: string
    Status: string
    StatusReason: string
    ReplicationStatuses: {ReplicationStatus}
    CreatedAt: number
    LastUpdatedAt: number
    AssociatedStreamGroups: {string}
end

local record CreateStreamGroupInput
    Description: string
    StreamClass: string
    DefaultApplicationIdentifier: string
    LocationConfigurations: {LocationConfiguration}
    Tags: {string : string}
    ClientToken: string
end

local record CreateStreamGroupOutput
    Arn: string
    Description: string
    DefaultApplication: DefaultApplication
    LocationStates: {LocationState}
    StreamClass: string
    Id: string
    Status: string
    StatusReason: string
    LastUpdatedAt: number
    CreatedAt: number
    ExpiresAt: number
    AssociatedApplications: {string}
end

local record CreateStreamSessionConnectionInput
    ClientToken: string
    Identifier: string
    StreamSessionIdentifier: string
    SignalRequest: string
end

local record CreateStreamSessionConnectionOutput
    SignalResponse: string
end

local record DeleteApplicationInput
    Identifier: string
end

local record DeleteApplicationOutput
end

local record DeleteStreamGroupInput
    Identifier: string
end

local record DeleteStreamGroupOutput
end

local record DisassociateApplicationsInput
    Identifier: string
    ApplicationIdentifiers: {string}
end

local record DisassociateApplicationsOutput
    Arn: string
    ApplicationArns: {string}
end

local record ExportStreamSessionFilesInput
    Identifier: string
    StreamSessionIdentifier: string
    OutputUri: string
end

local record ExportStreamSessionFilesOutput
end

local record GetApplicationInput
    Identifier: string
end

local record GetApplicationOutput
    Arn: string
    Description: string
    RuntimeEnvironment: RuntimeEnvironment
    ExecutablePath: string
    ApplicationLogPaths: {string}
    ApplicationLogOutputUri: string
    ApplicationSourceUri: string
    Id: string
    Status: string
    StatusReason: string
    ReplicationStatuses: {ReplicationStatus}
    CreatedAt: number
    LastUpdatedAt: number
    AssociatedStreamGroups: {string}
end

local record GetStreamGroupInput
    Identifier: string
end

local record GetStreamGroupOutput
    Arn: string
    Description: string
    DefaultApplication: DefaultApplication
    LocationStates: {LocationState}
    StreamClass: string
    Id: string
    Status: string
    StatusReason: string
    LastUpdatedAt: number
    CreatedAt: number
    ExpiresAt: number
    AssociatedApplications: {string}
end

local record GetStreamSessionInput
    Identifier: string
    StreamSessionIdentifier: string
end

local record GetStreamSessionOutput
    Arn: string
    Description: string
    StreamGroupId: string
    UserId: string
    Status: string
    StatusReason: string
    Protocol: string
    Location: string
    SignalRequest: string
    SignalResponse: string
    ConnectionTimeoutSeconds: number
    SessionLengthSeconds: number
    AdditionalLaunchArgs: {string}
    AdditionalEnvironmentVariables: {string : string}
    PerformanceStatsConfiguration: PerformanceStatsConfiguration
    LogFileLocationUri: string
    WebSdkProtocolUrl: string
    LastUpdatedAt: number
    CreatedAt: number
    ApplicationArn: string
    ExportFilesMetadata: ExportFilesMetadata
end

local record ListApplicationsInput
    NextToken: string
    MaxResults: number
end

local record ListApplicationsOutput
    Items: {ApplicationSummary}
    NextToken: string
end

local record ListStreamGroupsInput
    NextToken: string
    MaxResults: number
end

local record ListStreamGroupsOutput
    Items: {StreamGroupSummary}
    NextToken: string
end

local record ListStreamSessionsInput
    Status: string
    ExportFilesStatus: string
    NextToken: string
    MaxResults: number
    Identifier: string
end

local record ListStreamSessionsOutput
    Items: {StreamSessionSummary}
    NextToken: string
end

local record ListStreamSessionsByAccountInput
    Status: string
    ExportFilesStatus: string
    NextToken: string
    MaxResults: number
end

local record ListStreamSessionsByAccountOutput
    Items: {StreamSessionSummary}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
end

local record RemoveStreamGroupLocationsInput
    Identifier: string
    Locations: {string}
end

local record RemoveStreamGroupLocationsOutput
end

local record StartStreamSessionInput
    ClientToken: string
    Description: string
    Identifier: string
    Protocol: string
    SignalRequest: string
    ApplicationIdentifier: string
    UserId: string
    Locations: {string}
    ConnectionTimeoutSeconds: number
    SessionLengthSeconds: number
    AdditionalLaunchArgs: {string}
    AdditionalEnvironmentVariables: {string : string}
    PerformanceStatsConfiguration: PerformanceStatsConfiguration
end

local record StartStreamSessionOutput
    Arn: string
    Description: string
    StreamGroupId: string
    UserId: string
    Status: string
    StatusReason: string
    Protocol: string
    Location: string
    SignalRequest: string
    SignalResponse: string
    ConnectionTimeoutSeconds: number
    SessionLengthSeconds: number
    AdditionalLaunchArgs: {string}
    AdditionalEnvironmentVariables: {string : string}
    PerformanceStatsConfiguration: PerformanceStatsConfiguration
    LogFileLocationUri: string
    WebSdkProtocolUrl: string
    LastUpdatedAt: number
    CreatedAt: number
    ApplicationArn: string
    ExportFilesMetadata: ExportFilesMetadata
end

local record TagResourceInput
    ResourceArn: string
    Tags: {string : string}
end

local record TagResourceOutput
end

local record TerminateStreamSessionInput
    Identifier: string
    StreamSessionIdentifier: string
end

local record TerminateStreamSessionOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateApplicationInput
    Identifier: string
    Description: string
    ApplicationLogPaths: {string}
    ApplicationLogOutputUri: string
end

local record UpdateApplicationOutput
    Arn: string
    Description: string
    RuntimeEnvironment: RuntimeEnvironment
    ExecutablePath: string
    ApplicationLogPaths: {string}
    ApplicationLogOutputUri: string
    ApplicationSourceUri: string
    Id: string
    Status: string
    StatusReason: string
    ReplicationStatuses: {ReplicationStatus}
    CreatedAt: number
    LastUpdatedAt: number
    AssociatedStreamGroups: {string}
end

local record UpdateStreamGroupInput
    Identifier: string
    LocationConfigurations: {LocationConfiguration}
    Description: string
    DefaultApplicationIdentifier: string
end

local record UpdateStreamGroupOutput
    Arn: string
    Description: string
    DefaultApplication: DefaultApplication
    LocationStates: {LocationState}
    StreamClass: string
    Id: string
    Status: string
    StatusReason: string
    LastUpdatedAt: number
    CreatedAt: number
    ExpiresAt: number
    AssociatedApplications: {string}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
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

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
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

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
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

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
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

local record ValidationException
    Message: string
end

local record AccessDeniedException
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

local record ValidationException
    Message: string
end

local record AccessDeniedException
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

local record ValidationException
    Message: string
end

local record AccessDeniedException
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

local record ValidationException
    Message: string
end

local record AccessDeniedException
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

local record ValidationException
    Message: string
end

local record AccessDeniedException
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

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
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

local record ThrottlingException
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

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
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

local record ThrottlingException
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

local record ThrottlingException
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

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
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

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
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

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
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

local record ThrottlingException
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

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local type StreamSessionStatusReason = "internalError" | "invalidSignalRequest" | "placementTimeout" | "applicationLogS3DestinationError" | "applicationExit" | "connectionTimeout" | "reconnectionTimeout" | "maxSessionLengthTimeout" | "idleTimeout" | "apiTerminated"

local type StreamClass = "gen4n_high" | "gen4n_ultra" | "gen4n_win2022" | "gen5n_high" | "gen5n_ultra" | "gen5n_win2022" | "gen6n_small" | "gen6n_medium" | "gen6n_high" | "gen6n_ultra" | "gen6n_ultra_win2022" | "gen6n_pro" | "gen6n_pro_win2022" | "gen6n_small_win2022" | "gen6n_medium_win2022" | "gen6e_pro" | "gen6e_pro_win2022"

local type Protocol = "WebRTC"

local type ExportFilesStatus = "SUCCEEDED" | "FAILED" | "PENDING"

local type ApplicationStatus = "INITIALIZED" | "PROCESSING" | "READY" | "DELETING" | "ERROR"

local type StreamSessionStatus = "ACTIVATING" | "ACTIVE" | "CONNECTED" | "PENDING_CLIENT_RECONNECTION" | "RECONNECTING" | "TERMINATING" | "TERMINATED" | "ERROR"

local type StreamGroupStatusReason = "internalError" | "noAvailableInstances"

local type StreamGroupStatus = "ACTIVATING" | "UPDATING_LOCATIONS" | "ACTIVE" | "ACTIVE_WITH_ERRORS" | "ERROR" | "DELETING" | "EXPIRED"

local type ApplicationStatusReason = "internalError" | "accessDenied" | "sourceModified"

local record M
    AddStreamGroupLocationsInput: AddStreamGroupLocationsInput
    AddStreamGroupLocationsOutput: AddStreamGroupLocationsOutput
    AssociateApplicationsInput: AssociateApplicationsInput
    AssociateApplicationsOutput: AssociateApplicationsOutput
    CreateApplicationInput: CreateApplicationInput
    CreateApplicationOutput: CreateApplicationOutput
    CreateStreamGroupInput: CreateStreamGroupInput
    CreateStreamGroupOutput: CreateStreamGroupOutput
    CreateStreamSessionConnectionInput: CreateStreamSessionConnectionInput
    CreateStreamSessionConnectionOutput: CreateStreamSessionConnectionOutput
    DeleteApplicationInput: DeleteApplicationInput
    DeleteApplicationOutput: DeleteApplicationOutput
    DeleteStreamGroupInput: DeleteStreamGroupInput
    DeleteStreamGroupOutput: DeleteStreamGroupOutput
    DisassociateApplicationsInput: DisassociateApplicationsInput
    DisassociateApplicationsOutput: DisassociateApplicationsOutput
    ExportStreamSessionFilesInput: ExportStreamSessionFilesInput
    ExportStreamSessionFilesOutput: ExportStreamSessionFilesOutput
    GetApplicationInput: GetApplicationInput
    GetApplicationOutput: GetApplicationOutput
    GetStreamGroupInput: GetStreamGroupInput
    GetStreamGroupOutput: GetStreamGroupOutput
    GetStreamSessionInput: GetStreamSessionInput
    GetStreamSessionOutput: GetStreamSessionOutput
    ListApplicationsInput: ListApplicationsInput
    ListApplicationsOutput: ListApplicationsOutput
    ListStreamGroupsInput: ListStreamGroupsInput
    ListStreamGroupsOutput: ListStreamGroupsOutput
    ListStreamSessionsInput: ListStreamSessionsInput
    ListStreamSessionsOutput: ListStreamSessionsOutput
    ListStreamSessionsByAccountInput: ListStreamSessionsByAccountInput
    ListStreamSessionsByAccountOutput: ListStreamSessionsByAccountOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    RemoveStreamGroupLocationsInput: RemoveStreamGroupLocationsInput
    RemoveStreamGroupLocationsOutput: RemoveStreamGroupLocationsOutput
    StartStreamSessionInput: StartStreamSessionInput
    StartStreamSessionOutput: StartStreamSessionOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    TerminateStreamSessionInput: TerminateStreamSessionInput
    TerminateStreamSessionOutput: TerminateStreamSessionOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateApplicationInput: UpdateApplicationInput
    UpdateApplicationOutput: UpdateApplicationOutput
    UpdateStreamGroupInput: UpdateStreamGroupInput
    UpdateStreamGroupOutput: UpdateStreamGroupOutput
end

return M
