local M = {}

M.GetRawMessageContentInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidContentLocation = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MessageFrozen = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MessageRejected = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.S3Reference = {
    type = "structure",
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
    members = {
        s3Reference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutRawMessageContentInput = {
    type = "structure",
    members = {
        messageId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        content = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutRawMessageContentOutput = {
    type = "structure",
}

return M
