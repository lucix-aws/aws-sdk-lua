local M = {}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteConnectionInput = {
    type = "structure",
    members = {
        clientId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        cleanSession = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "cleanSession",
            },
        },
        preventWillMessage = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "preventWillMessage",
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
    members = {
        message = {
            type = "string",
        },
    },
}

M.InternalFailureException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
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

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteThingShadowInput = {
    type = "structure",
    members = {
        thingName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        shadowName = {
            type = "string",
            traits = {
                http_query = "name",
            },
        },
    },
}

M.DeleteThingShadowOutput = {
    type = "structure",
    members = {
        payload = {
            type = "blob",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.MethodNotAllowedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnauthorizedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnsupportedDocumentEncodingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetRetainedMessageInput = {
    type = "structure",
    members = {
        topic = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetRetainedMessageOutput = {
    type = "structure",
    members = {
        topic = {
            type = "string",
        },
        payload = {
            type = "blob",
        },
        qos = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        lastModifiedTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        userProperties = {
            type = "blob",
        },
    },
}

M.GetThingShadowInput = {
    type = "structure",
    members = {
        thingName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        shadowName = {
            type = "string",
            traits = {
                http_query = "name",
            },
        },
    },
}

M.GetThingShadowOutput = {
    type = "structure",
    members = {
        payload = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.ListNamedShadowsForThingInput = {
    type = "structure",
    members = {
        thingName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        pageSize = {
            type = "integer",
            traits = {
                http_query = "pageSize",
            },
        },
    },
}

M.ListNamedShadowsForThingOutput = {
    type = "structure",
    members = {
        results = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
        timestamp = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.ListRetainedMessagesInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.RetainedMessageSummary = {
    type = "structure",
    members = {
        topic = {
            type = "string",
        },
        payloadSize = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        qos = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        lastModifiedTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.ListRetainedMessagesOutput = {
    type = "structure",
    members = {
        retainedTopics = {
            type = "list",
            member = M.RetainedMessageSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PayloadFormatIndicator = {
    UNSPECIFIED_BYTES = "UNSPECIFIED_BYTES",
    UTF8_DATA = "UTF8_DATA",
}

M.PublishInput = {
    type = "structure",
    members = {
        topic = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        qos = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "qos",
            },
        },
        retain = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "retain",
            },
        },
        payload = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
        userProperties = {
            type = "string",
            traits = {
                http_header = "x-amz-mqtt5-user-properties",
                media_type = "application/json",
            },
        },
        payloadFormatIndicator = {
            type = "string",
            traits = {
                http_header = "x-amz-mqtt5-payload-format-indicator",
            },
        },
        contentType = {
            type = "string",
            traits = {
                http_query = "contentType",
            },
        },
        responseTopic = {
            type = "string",
            traits = {
                http_query = "responseTopic",
            },
        },
        correlationData = {
            type = "string",
            traits = {
                http_header = "x-amz-mqtt5-correlation-data",
            },
        },
        messageExpiry = {
            type = "long",
            traits = {
                default = 0,
                http_query = "messageExpiry",
            },
        },
    },
}

M.PublishOutput = {
    type = "structure",
}

M.RequestEntityTooLargeException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdateThingShadowInput = {
    type = "structure",
    members = {
        thingName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        shadowName = {
            type = "string",
            traits = {
                http_query = "name",
            },
        },
        payload = {
            type = "blob",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateThingShadowOutput = {
    type = "structure",
    members = {
        payload = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
    },
}

return M
