local record InvokeEndpointInput
    EndpointName: string
    Body: string
    ContentType: string
    Accept: string
    CustomAttributes: string
    TargetModel: string
    TargetVariant: string
    TargetContainerHostname: string
    InferenceId: string
    EnableExplanations: string
    InferenceComponentName: string
    SessionId: string
end

local record InvokeEndpointOutput
    Body: string
    ContentType: string
    InvokedProductionVariant: string
    CustomAttributes: string
    NewSessionId: string
    ClosedSessionId: string
end

local record InvokeEndpointAsyncInput
    EndpointName: string
    ContentType: string
    Accept: string
    CustomAttributes: string
    InferenceId: string
    InputLocation: string
    S3OutputPathExtension: string
    Filename: string
    RequestTTLSeconds: number
    InvocationTimeoutSeconds: number
end

local record InvokeEndpointAsyncOutput
    InferenceId: string
    OutputLocation: string
    FailureLocation: string
end

local record InvokeEndpointWithResponseStreamInput
    EndpointName: string
    Body: string
    ContentType: string
    Accept: string
    CustomAttributes: string
    TargetVariant: string
    TargetContainerHostname: string
    InferenceId: string
    InferenceComponentName: string
    SessionId: string
end

local record InvokeEndpointWithResponseStreamOutput
    Body: function(): string, string
    ContentType: string
    InvokedProductionVariant: string
    CustomAttributes: string
end

local record InternalDependencyException
    Message: string
end

local record InternalFailure
    Message: string
end

local record ModelError
    Message: string
    OriginalStatusCode: number
    OriginalMessage: string
    LogStreamArn: string
end

local record ModelNotReadyException
    Message: string
end

local record ServiceUnavailable
    Message: string
end

local record ValidationError
    Message: string
end

local record InternalFailure
    Message: string
end

local record ServiceUnavailable
    Message: string
end

local record ValidationError
    Message: string
end

local record InternalFailure
    Message: string
end

local record InternalStreamFailure
    Message: string
end

local record ModelError
    Message: string
    OriginalStatusCode: number
    OriginalMessage: string
    LogStreamArn: string
end

local record ModelStreamError
    Message: string
    ErrorCode: string
end

local record ServiceUnavailable
    Message: string
end

local record ValidationError
    Message: string
end

local record M
    InvokeEndpointInput: InvokeEndpointInput
    InvokeEndpointOutput: InvokeEndpointOutput
    InvokeEndpointAsyncInput: InvokeEndpointAsyncInput
    InvokeEndpointAsyncOutput: InvokeEndpointAsyncOutput
    InvokeEndpointWithResponseStreamInput: InvokeEndpointWithResponseStreamInput
    InvokeEndpointWithResponseStreamOutput: InvokeEndpointWithResponseStreamOutput
end

return M
