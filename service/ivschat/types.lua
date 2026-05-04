local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ChatTokenCapability = {
    SEND_MESSAGE = "SEND_MESSAGE",
    DISCONNECT_USER = "DISCONNECT_USER",
    DELETE_MESSAGE = "DELETE_MESSAGE",
}

M.CreateChatTokenInput = {
    type = "structure",
    members = {
        roomIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        capabilities = {
            type = "list",
            member = { type = "string" },
        },
        sessionDurationInMinutes = {
            type = "integer",
        },
        attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateChatTokenOutput = {
    type = "structure",
    members = {
        token = {
            type = "string",
        },
        tokenExpirationTime = {
            type = "timestamp",
        },
        sessionExpirationTime = {
            type = "timestamp",
        },
    },
}

M.PendingVerification = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceType = {
    ROOM = "ROOM",
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "UNKNOWN_OPERATION",
    FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED",
    OTHER = "OTHER",
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldList = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CloudWatchLogsDestinationConfiguration = {
    type = "structure",
    members = {
        logGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FirehoseDestinationConfiguration = {
    type = "structure",
    members = {
        deliveryStreamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.S3DestinationConfiguration = {
    type = "structure",
    members = {
        bucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DestinationConfiguration = {
    type = "union",
    members = {
        s3 = M.S3DestinationConfiguration,
        cloudWatchLogs = M.CloudWatchLogsDestinationConfiguration,
        firehose = M.FirehoseDestinationConfiguration,
    },
}

M.CreateLoggingConfigurationInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        destinationConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DestinationConfiguration }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateLoggingConfigurationState = {
    ACTIVE = "ACTIVE",
}

M.CreateLoggingConfigurationOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        createTime = {
            type = "timestamp",
        },
        updateTime = {
            type = "timestamp",
        },
        name = {
            type = "string",
        },
        destinationConfiguration = M.DestinationConfiguration,
        state = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        limit = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.FallbackResult = {
    ALLOW = "ALLOW",
    DENY = "DENY",
}

M.MessageReviewHandler = {
    type = "structure",
    members = {
        uri = {
            type = "string",
        },
        fallbackResult = {
            type = "string",
        },
    },
}

M.CreateRoomInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        maximumMessageRatePerSecond = {
            type = "integer",
        },
        maximumMessageLength = {
            type = "integer",
        },
        messageReviewHandler = M.MessageReviewHandler,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        loggingConfigurationIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateRoomOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        createTime = {
            type = "timestamp",
        },
        updateTime = {
            type = "timestamp",
        },
        maximumMessageRatePerSecond = {
            type = "integer",
        },
        maximumMessageLength = {
            type = "integer",
        },
        messageReviewHandler = M.MessageReviewHandler,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        loggingConfigurationIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DeleteLoggingConfigurationInput = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLoggingConfigurationOutput = {
    type = "structure",
}

M.DeleteMessageInput = {
    type = "structure",
    members = {
        roomIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
        },
    },
}

M.DeleteMessageOutput = {
    type = "structure",
    members = {
        id = {
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
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        limit = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.DeleteRoomInput = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRoomOutput = {
    type = "structure",
}

M.DisconnectUserInput = {
    type = "structure",
    members = {
        roomIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
        },
    },
}

M.DisconnectUserOutput = {
    type = "structure",
}

M.GetLoggingConfigurationInput = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LoggingConfigurationState = {
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
    DELETING = "DELETING",
    DELETE_FAILED = "DELETE_FAILED",
    UPDATING = "UPDATING",
    UPDATE_FAILED = "UPDATE_FAILED",
    ACTIVE = "ACTIVE",
}

M.GetLoggingConfigurationOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        createTime = {
            type = "timestamp",
        },
        updateTime = {
            type = "timestamp",
        },
        name = {
            type = "string",
        },
        destinationConfiguration = M.DestinationConfiguration,
        state = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetRoomInput = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetRoomOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        createTime = {
            type = "timestamp",
        },
        updateTime = {
            type = "timestamp",
        },
        maximumMessageRatePerSecond = {
            type = "integer",
        },
        maximumMessageLength = {
            type = "integer",
        },
        messageReviewHandler = M.MessageReviewHandler,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        loggingConfigurationIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListLoggingConfigurationsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.LoggingConfigurationSummary = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        createTime = {
            type = "timestamp",
        },
        updateTime = {
            type = "timestamp",
        },
        name = {
            type = "string",
        },
        destinationConfiguration = M.DestinationConfiguration,
        state = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListLoggingConfigurationsOutput = {
    type = "structure",
    members = {
        loggingConfigurations = {
            type = "list",
            member = M.LoggingConfigurationSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListRoomsInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        messageReviewHandlerUri = {
            type = "string",
        },
        loggingConfigurationIdentifier = {
            type = "string",
        },
    },
}

M.RoomSummary = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        messageReviewHandler = M.MessageReviewHandler,
        createTime = {
            type = "timestamp",
        },
        updateTime = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        loggingConfigurationIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListRoomsOutput = {
    type = "structure",
    members = {
        rooms = {
            type = "list",
            member = M.RoomSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.SendEventInput = {
    type = "structure",
    members = {
        roomIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.SendEventOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateLoggingConfigurationInput = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        destinationConfiguration = M.DestinationConfiguration,
    },
}

M.UpdateLoggingConfigurationState = {
    ACTIVE = "ACTIVE",
}

M.UpdateLoggingConfigurationOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        createTime = {
            type = "timestamp",
        },
        updateTime = {
            type = "timestamp",
        },
        name = {
            type = "string",
        },
        destinationConfiguration = M.DestinationConfiguration,
        state = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateRoomInput = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        maximumMessageRatePerSecond = {
            type = "integer",
        },
        maximumMessageLength = {
            type = "integer",
        },
        messageReviewHandler = M.MessageReviewHandler,
        loggingConfigurationIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateRoomOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        createTime = {
            type = "timestamp",
        },
        updateTime = {
            type = "timestamp",
        },
        maximumMessageRatePerSecond = {
            type = "integer",
        },
        maximumMessageLength = {
            type = "integer",
        },
        messageReviewHandler = M.MessageReviewHandler,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        loggingConfigurationIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
    },
}

return M
