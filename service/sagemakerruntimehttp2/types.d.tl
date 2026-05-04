local record InvokeEndpointWithBidirectionalStreamInput
    EndpointName: string
    Body: RequestStreamEvent
    TargetVariant: string
    ModelInvocationPath: string
    ModelQueryString: string
end

local record InvokeEndpointWithBidirectionalStreamOutput
    Body: ResponseStreamEvent
    InvokedProductionVariant: string
end

local record InputValidationError
    Message: string
    ErrorCode: string
end

local record InternalServerError
    Message: string
    ErrorCode: string
end

local record InternalStreamFailure
    Message: string
end

local record ModelError
    Message: string
    OriginalStatusCode: number
    OriginalMessage: string
    LogStreamArn: string
    ErrorCode: string
end

local record ModelStreamError
    Message: string
    ErrorCode: string
end

local record ServiceUnavailableError
    Message: string
    ErrorCode: string
end

local record M
    InvokeEndpointWithBidirectionalStreamInput: InvokeEndpointWithBidirectionalStreamInput
    InvokeEndpointWithBidirectionalStreamOutput: InvokeEndpointWithBidirectionalStreamOutput
end

return M
