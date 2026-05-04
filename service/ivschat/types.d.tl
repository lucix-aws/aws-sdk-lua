local record CreateChatTokenInput
    roomIdentifier: string
    userId: string
    capabilities: {string}
    sessionDurationInMinutes: number
    attributes: {string : string}
end

local record CreateChatTokenOutput
    token: string
    tokenExpirationTime: number
    sessionExpirationTime: number
end

local record CreateLoggingConfigurationInput
    name: string
    destinationConfiguration: DestinationConfiguration
    tags: {string : string}
end

local record CreateLoggingConfigurationOutput
    arn: string
    id: string
    createTime: number
    updateTime: number
    name: string
    destinationConfiguration: DestinationConfiguration
    state: string
    tags: {string : string}
end

local record CreateRoomInput
    name: string
    maximumMessageRatePerSecond: number
    maximumMessageLength: number
    messageReviewHandler: MessageReviewHandler
    tags: {string : string}
    loggingConfigurationIdentifiers: {string}
end

local record CreateRoomOutput
    arn: string
    id: string
    name: string
    createTime: number
    updateTime: number
    maximumMessageRatePerSecond: number
    maximumMessageLength: number
    messageReviewHandler: MessageReviewHandler
    tags: {string : string}
    loggingConfigurationIdentifiers: {string}
end

local record DeleteLoggingConfigurationInput
    identifier: string
end

local record DeleteLoggingConfigurationOutput
end

local record DeleteMessageInput
    roomIdentifier: string
    id: string
    reason: string
end

local record DeleteMessageOutput
    id: string
end

local record DeleteRoomInput
    identifier: string
end

local record DeleteRoomOutput
end

local record DisconnectUserInput
    roomIdentifier: string
    userId: string
    reason: string
end

local record DisconnectUserOutput
end

local record GetLoggingConfigurationInput
    identifier: string
end

local record GetLoggingConfigurationOutput
    arn: string
    id: string
    createTime: number
    updateTime: number
    name: string
    destinationConfiguration: DestinationConfiguration
    state: string
    tags: {string : string}
end

local record GetRoomInput
    identifier: string
end

local record GetRoomOutput
    arn: string
    id: string
    name: string
    createTime: number
    updateTime: number
    maximumMessageRatePerSecond: number
    maximumMessageLength: number
    messageReviewHandler: MessageReviewHandler
    tags: {string : string}
    loggingConfigurationIdentifiers: {string}
end

local record ListLoggingConfigurationsInput
    nextToken: string
    maxResults: number
end

local record ListLoggingConfigurationsOutput
    loggingConfigurations: {LoggingConfigurationSummary}
    nextToken: string
end

local record ListRoomsInput
    name: string
    nextToken: string
    maxResults: number
    messageReviewHandlerUri: string
    loggingConfigurationIdentifier: string
end

local record ListRoomsOutput
    rooms: {RoomSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record SendEventInput
    roomIdentifier: string
    eventName: string
    attributes: {string : string}
end

local record SendEventOutput
    id: string
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

local record UpdateLoggingConfigurationInput
    identifier: string
    name: string
    destinationConfiguration: DestinationConfiguration
end

local record UpdateLoggingConfigurationOutput
    arn: string
    id: string
    createTime: number
    updateTime: number
    name: string
    destinationConfiguration: DestinationConfiguration
    state: string
    tags: {string : string}
end

local record UpdateRoomInput
    identifier: string
    name: string
    maximumMessageRatePerSecond: number
    maximumMessageLength: number
    messageReviewHandler: MessageReviewHandler
    loggingConfigurationIdentifiers: {string}
end

local record UpdateRoomOutput
    arn: string
    id: string
    name: string
    createTime: number
    updateTime: number
    maximumMessageRatePerSecond: number
    maximumMessageLength: number
    messageReviewHandler: MessageReviewHandler
    tags: {string : string}
    loggingConfigurationIdentifiers: {string}
end

local record AccessDeniedException
    message: string
end

local record PendingVerification
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record PendingVerification
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    limit: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record PendingVerification
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    limit: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record PendingVerification
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record PendingVerification
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    resourceId: string
    resourceType: string
    limit: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record PendingVerification
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record PendingVerification
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    resourceId: string
    resourceType: string
    limit: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record PendingVerification
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    resourceId: string
    resourceType: string
    limit: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record PendingVerification
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record PendingVerification
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record M
    CreateChatTokenInput: CreateChatTokenInput
    CreateChatTokenOutput: CreateChatTokenOutput
    CreateLoggingConfigurationInput: CreateLoggingConfigurationInput
    CreateLoggingConfigurationOutput: CreateLoggingConfigurationOutput
    CreateRoomInput: CreateRoomInput
    CreateRoomOutput: CreateRoomOutput
    DeleteLoggingConfigurationInput: DeleteLoggingConfigurationInput
    DeleteLoggingConfigurationOutput: DeleteLoggingConfigurationOutput
    DeleteMessageInput: DeleteMessageInput
    DeleteMessageOutput: DeleteMessageOutput
    DeleteRoomInput: DeleteRoomInput
    DeleteRoomOutput: DeleteRoomOutput
    DisconnectUserInput: DisconnectUserInput
    DisconnectUserOutput: DisconnectUserOutput
    GetLoggingConfigurationInput: GetLoggingConfigurationInput
    GetLoggingConfigurationOutput: GetLoggingConfigurationOutput
    GetRoomInput: GetRoomInput
    GetRoomOutput: GetRoomOutput
    ListLoggingConfigurationsInput: ListLoggingConfigurationsInput
    ListLoggingConfigurationsOutput: ListLoggingConfigurationsOutput
    ListRoomsInput: ListRoomsInput
    ListRoomsOutput: ListRoomsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    SendEventInput: SendEventInput
    SendEventOutput: SendEventOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateLoggingConfigurationInput: UpdateLoggingConfigurationInput
    UpdateLoggingConfigurationOutput: UpdateLoggingConfigurationOutput
    UpdateRoomInput: UpdateRoomInput
    UpdateRoomOutput: UpdateRoomOutput
end

return M
