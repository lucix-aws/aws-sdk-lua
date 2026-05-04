local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClientLimitExceededException = {
    type = "structure",
    id = "ClientLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidArgumentException = {
    type = "structure",
    id = "InvalidArgumentException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.JoinStorageSessionInput = {
    type = "structure",
    id = "JoinStorageSessionInput",
    members = {
        channelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JoinStorageSessionOutput = {
    type = "structure",
    id = "JoinStorageSessionOutput",
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.JoinStorageSessionAsViewerInput = {
    type = "structure",
    id = "JoinStorageSessionAsViewerInput",
    members = {
        channelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JoinStorageSessionAsViewerOutput = {
    type = "structure",
    id = "JoinStorageSessionAsViewerOutput",
}

return M
