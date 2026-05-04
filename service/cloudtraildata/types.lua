local M = {}

M.AuditEvent = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventData = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventDataChecksum = {
            type = "string",
        },
    },
}

M.AuditEventResultEntry = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventID = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ChannelInsufficientPermission = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ChannelNotFound = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ChannelUnsupportedSchema = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DuplicatedAuditEventId = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidChannelARN = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutAuditEventsInput = {
    type = "structure",
    members = {
        auditEvents = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        channelArn = {
            type = "string",
            traits = {
                http_query = "channelArn",
                required = true,
            },
        },
        externalId = {
            type = "string",
            traits = {
                http_query = "externalId",
            },
        },
    },
}

M.ResultErrorEntry = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutAuditEventsOutput = {
    type = "structure",
    members = {
        successful = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        failed = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UnsupportedOperationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

return M
