local M = {}

M.GetRawMessageContentInput = {
    type = "structure",
    id = "GetRawMessageContentInput",
    members = {
        messageId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetRawMessageContentOutput = {
    type = "structure",
    id = "GetRawMessageContentOutput",
    members = {
        messageContent = {
            type = "blob",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
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

M.InvalidContentLocation = {
    type = "structure",
    id = "InvalidContentLocation",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MessageFrozen = {
    type = "structure",
    id = "MessageFrozen",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MessageRejected = {
    type = "structure",
    id = "MessageRejected",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.S3Reference = {
    type = "structure",
    id = "S3Reference",
    members = {
        bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        objectVersion = {
            type = "string",
        },
    },
}

M.RawMessageContent = {
    type = "structure",
    id = "RawMessageContent",
    members = {
        s3Reference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Reference }),
    },
}

M.PutRawMessageContentInput = {
    type = "structure",
    id = "PutRawMessageContentInput",
    members = {
        messageId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RawMessageContent }),
    },
}

M.PutRawMessageContentOutput = {
    type = "structure",
    id = "PutRawMessageContentOutput",
}

return M
