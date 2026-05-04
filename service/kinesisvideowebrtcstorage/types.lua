local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClientLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidArgumentException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.JoinStorageSessionInput = {
    type = "structure",
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
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.JoinStorageSessionAsViewerInput = {
    type = "structure",
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
}

return M
