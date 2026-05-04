local record DeleteConnectionInput
    ConnectionId: string
end

local record DeleteConnectionOutput
end

local record GetConnectionInput
    ConnectionId: string
end

local record GetConnectionOutput
    ConnectedAt: number
    Identity: Identity
    LastActiveAt: number
end

local record PostToConnectionInput
    Data: string
    ConnectionId: string
end

local record PostToConnectionOutput
end

local record ForbiddenException
end

local record GoneException
end

local record LimitExceededException
end

local record ForbiddenException
end

local record GoneException
end

local record LimitExceededException
end

local record ForbiddenException
end

local record GoneException
end

local record LimitExceededException
end

local record PayloadTooLargeException
    Message: string
end

local record M
    DeleteConnectionInput: DeleteConnectionInput
    DeleteConnectionOutput: DeleteConnectionOutput
    GetConnectionInput: GetConnectionInput
    GetConnectionOutput: GetConnectionOutput
    PostToConnectionInput: PostToConnectionInput
    PostToConnectionOutput: PostToConnectionOutput
end

return M
