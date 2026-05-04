local M = {}

M.DeleteConnectionInput = {
    type = "structure",
    id = "DeleteConnectionInput",
    members = {
        ConnectionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteConnectionOutput = {
    type = "structure",
    id = "DeleteConnectionOutput",
}

M.ForbiddenException = {
    type = "structure",
    id = "ForbiddenException",
    error = "client",
}

M.GoneException = {
    type = "structure",
    id = "GoneException",
    error = "client",
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
}

M.GetConnectionInput = {
    type = "structure",
    id = "GetConnectionInput",
    members = {
        ConnectionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Identity = {
    type = "structure",
    id = "Identity",
    members = {
        SourceIp = {
            type = "string",
            traits = {
                json_name = "sourceIp",
                required = true,
            },
        },
        UserAgent = {
            type = "string",
            traits = {
                json_name = "userAgent",
                required = true,
            },
        },
    },
}

M.GetConnectionOutput = {
    type = "structure",
    id = "GetConnectionOutput",
    members = {
        ConnectedAt = {
            type = "timestamp",
            traits = {
                json_name = "connectedAt",
                timestamp_format = "date-time",
            },
        },
        Identity = setmetatable({ traits = {
            json_name = "identity",
        } }, { __index = M.Identity }),
        LastActiveAt = {
            type = "timestamp",
            traits = {
                json_name = "lastActiveAt",
                timestamp_format = "date-time",
            },
        },
    },
}

M.PayloadTooLargeException = {
    type = "structure",
    id = "PayloadTooLargeException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.PostToConnectionInput = {
    type = "structure",
    id = "PostToConnectionInput",
    members = {
        Data = {
            type = "blob",
            traits = {
                http_payload = true,
                required = true,
            },
        },
        ConnectionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PostToConnectionOutput = {
    type = "structure",
    id = "PostToConnectionOutput",
}

return M
