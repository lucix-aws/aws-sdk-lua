local record JoinStorageSessionInput
    channelArn: string
end

local record JoinStorageSessionOutput
end

local record JoinStorageSessionAsViewerInput
    channelArn: string
    clientId: string
end

local record JoinStorageSessionAsViewerOutput
end

local record AccessDeniedException
    message: string
end

local record ClientLimitExceededException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientLimitExceededException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record M
    JoinStorageSessionInput: JoinStorageSessionInput
    JoinStorageSessionOutput: JoinStorageSessionOutput
    JoinStorageSessionAsViewerInput: JoinStorageSessionAsViewerInput
    JoinStorageSessionAsViewerOutput: JoinStorageSessionAsViewerOutput
end

return M
