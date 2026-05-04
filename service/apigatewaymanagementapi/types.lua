local M = {}

M.DeleteConnectionInput = {
    type = "structure",
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
}

M.ForbiddenException = {
    type = "structure",
    error = "client",
}

M.GoneException = {
    type = "structure",
    error = "client",
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
}

M.GetConnectionInput = {
    type = "structure",
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
    members = {
        ConnectedAt = {
            type = "timestamp",
            traits = {
                json_name = "connectedAt",
            },
        },
        Identity = setmetatable({ traits = {
            json_name = "identity",
        } }, { __index = M.Identity }),
        LastActiveAt = {
            type = "timestamp",
            traits = {
                json_name = "lastActiveAt",
            },
        },
    },
}

M.PayloadTooLargeException = {
    type = "structure",
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
}

return M
