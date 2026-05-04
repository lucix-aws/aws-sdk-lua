local M = {}

M.AuditEvent = {
    type = "structure",
    id = "AuditEvent",
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
    id = "AuditEventResultEntry",
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
    id = "ChannelInsufficientPermission",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ChannelNotFound = {
    type = "structure",
    id = "ChannelNotFound",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ChannelUnsupportedSchema = {
    type = "structure",
    id = "ChannelUnsupportedSchema",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DuplicatedAuditEventId = {
    type = "structure",
    id = "DuplicatedAuditEventId",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidChannelARN = {
    type = "structure",
    id = "InvalidChannelARN",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutAuditEventsInput = {
    type = "structure",
    id = "PutAuditEventsInput",
    members = {
        auditEvents = {
            type = "list",
            member = M.AuditEvent,
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
    id = "ResultErrorEntry",
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
    id = "PutAuditEventsOutput",
    members = {
        successful = {
            type = "list",
            member = M.AuditEventResultEntry,
            traits = {
                required = true,
            },
        },
        failed = {
            type = "list",
            member = M.ResultErrorEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.UnsupportedOperationException = {
    type = "structure",
    id = "UnsupportedOperationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

return M
