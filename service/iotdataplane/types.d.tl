local record DeleteConnectionInput
    clientId: string
    cleanSession: boolean
    preventWillMessage: boolean
end

local record DeleteConnectionOutput
end

local record DeleteThingShadowInput
    thingName: string
    shadowName: string
end

local record DeleteThingShadowOutput
    payload: string
end

local record GetRetainedMessageInput
    topic: string
end

local record GetRetainedMessageOutput
    topic: string
    payload: string
    qos: number
    lastModifiedTime: number
    userProperties: string
end

local record GetThingShadowInput
    thingName: string
    shadowName: string
end

local record GetThingShadowOutput
    payload: string
end

local record ListNamedShadowsForThingInput
    thingName: string
    nextToken: string
    pageSize: number
end

local record ListNamedShadowsForThingOutput
    results: {string}
    nextToken: string
    timestamp: number
end

local record ListRetainedMessagesInput
    nextToken: string
    maxResults: number
end

local record ListRetainedMessagesOutput
    retainedTopics: {RetainedMessageSummary}
    nextToken: string
end

local record PublishInput
    topic: string
    qos: number
    retain: boolean
    payload: string
    userProperties: string
    payloadFormatIndicator: string
    contentType: string
    responseTopic: string
    correlationData: string
    messageExpiry: number
end

local record PublishOutput
end

local record UpdateThingShadowInput
    thingName: string
    shadowName: string
    payload: string
end

local record UpdateThingShadowOutput
    payload: string
end

local record ForbiddenException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record MethodNotAllowedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record UnsupportedDocumentEncodingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record MethodNotAllowedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record MethodNotAllowedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record UnsupportedDocumentEncodingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record MethodNotAllowedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record MethodNotAllowedException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record MethodNotAllowedException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record MethodNotAllowedException
    message: string
end

local record RequestEntityTooLargeException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record UnsupportedDocumentEncodingException
    message: string
end

local type PayloadFormatIndicator = "UNSPECIFIED_BYTES" | "UTF8_DATA"

local record M
    DeleteConnectionInput: DeleteConnectionInput
    DeleteConnectionOutput: DeleteConnectionOutput
    DeleteThingShadowInput: DeleteThingShadowInput
    DeleteThingShadowOutput: DeleteThingShadowOutput
    GetRetainedMessageInput: GetRetainedMessageInput
    GetRetainedMessageOutput: GetRetainedMessageOutput
    GetThingShadowInput: GetThingShadowInput
    GetThingShadowOutput: GetThingShadowOutput
    ListNamedShadowsForThingInput: ListNamedShadowsForThingInput
    ListNamedShadowsForThingOutput: ListNamedShadowsForThingOutput
    ListRetainedMessagesInput: ListRetainedMessagesInput
    ListRetainedMessagesOutput: ListRetainedMessagesOutput
    PublishInput: PublishInput
    PublishOutput: PublishOutput
    UpdateThingShadowInput: UpdateThingShadowInput
    UpdateThingShadowOutput: UpdateThingShadowOutput
end

return M
