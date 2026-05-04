local record GetMediaInput
    StreamName: string
    StreamARN: string
    StartSelector: StartSelector
end

local record GetMediaOutput
    ContentType: string
    Payload: string
end

local record ClientLimitExceededException
    Message: string
end

local record ConnectionLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidEndpointException
    Message: string
end

local record NotAuthorizedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record M
    GetMediaInput: GetMediaInput
    GetMediaOutput: GetMediaOutput
end

return M
