local M = {}

M.ClientLimitExceededException = {
    type = "structure",
    id = "ClientLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ConnectionLimitExceededException = {
    type = "structure",
    id = "ConnectionLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StartSelectorType = {
    FRAGMENT_NUMBER = "FRAGMENT_NUMBER",
    SERVER_TIMESTAMP = "SERVER_TIMESTAMP",
    PRODUCER_TIMESTAMP = "PRODUCER_TIMESTAMP",
    NOW = "NOW",
    EARLIEST = "EARLIEST",
    CONTINUATION_TOKEN = "CONTINUATION_TOKEN",
}

M.StartSelector = {
    type = "structure",
    id = "StartSelector",
    members = {
        StartSelectorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AfterFragmentNumber = {
            type = "string",
        },
        StartTimestamp = {
            type = "timestamp",
        },
        ContinuationToken = {
            type = "string",
        },
    },
}

M.GetMediaInput = {
    type = "structure",
    id = "GetMediaInput",
    members = {
        StreamName = {
            type = "string",
        },
        StreamARN = {
            type = "string",
        },
        StartSelector = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StartSelector }),
    },
}

M.GetMediaOutput = {
    type = "structure",
    id = "GetMediaOutput",
    members = {
        ContentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        Payload = {
            type = "blob",
            traits = {
                default = "",
                http_payload = true,
            },
        },
    },
}

M.InvalidArgumentException = {
    type = "structure",
    id = "InvalidArgumentException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidEndpointException = {
    type = "structure",
    id = "InvalidEndpointException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NotAuthorizedException = {
    type = "structure",
    id = "NotAuthorizedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

return M
