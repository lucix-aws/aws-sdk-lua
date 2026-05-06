local record GetDataAutomationStatusInput
    invocationArn: string
end

local record GetDataAutomationStatusOutput
    status: string
    errorType: string
    errorMessage: string
    outputConfiguration: OutputConfiguration
    jobSubmissionTime: number
    jobCompletionTime: number
    jobDurationInSeconds: number
end

local record InvokeDataAutomationInput
    inputConfiguration: SyncInputConfiguration
    dataAutomationConfiguration: DataAutomationConfiguration
    blueprints: {Blueprint}
    dataAutomationProfileArn: string
    encryptionConfiguration: EncryptionConfiguration
    outputConfiguration: OutputConfiguration
end

local record InvokeDataAutomationOutput
    outputConfiguration: OutputConfiguration
    semanticModality: string
    outputSegments: {OutputSegment}
end

local record InvokeDataAutomationAsyncInput
    clientToken: string
    inputConfiguration: InputConfiguration
    outputConfiguration: OutputConfiguration
    dataAutomationConfiguration: DataAutomationConfiguration
    encryptionConfiguration: EncryptionConfiguration
    notificationConfiguration: NotificationConfiguration
    blueprints: {Blueprint}
    dataAutomationProfileArn: string
    tags: {Tag}
end

local record InvokeDataAutomationAsyncOutput
    invocationArn: string
end

local record ListTagsForResourceInput
    resourceARN: string
end

local record ListTagsForResourceOutput
    tags: {Tag}
end

local record TagResourceInput
    resourceARN: string
    tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceARN: string
    tagKeys: {string}
end

local record UntagResourceOutput
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

local record ServiceUnavailableException
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

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local type SemanticModality = "DOCUMENT" | "IMAGE" | "AUDIO" | "VIDEO"

local type AutomationJobStatus = "Created" | "InProgress" | "Success" | "ServiceError" | "ClientError"

local record M
    GetDataAutomationStatusInput: GetDataAutomationStatusInput
    GetDataAutomationStatusOutput: GetDataAutomationStatusOutput
    InvokeDataAutomationInput: InvokeDataAutomationInput
    InvokeDataAutomationOutput: InvokeDataAutomationOutput
    InvokeDataAutomationAsyncInput: InvokeDataAutomationAsyncInput
    InvokeDataAutomationAsyncOutput: InvokeDataAutomationAsyncOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
end

return M
