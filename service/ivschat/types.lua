local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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
    id = "CreateChatTokenInput",
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
    id = "CreateChatTokenOutput",
    members = {
        token = {
            type = "string",
        },
        tokenExpirationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        sessionExpirationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.PendingVerification = {
    type = "structure",
    id = "PendingVerification",
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
    id = "ResourceNotFoundException",
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
    id = "ValidationExceptionField",
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
    id = "ValidationException",
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
    id = "ConflictException",
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
    id = "CloudWatchLogsDestinationConfiguration",
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
    id = "FirehoseDestinationConfiguration",
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
    id = "S3DestinationConfiguration",
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
    id = "DestinationConfiguration",
    members = {
        s3 = M.S3DestinationConfiguration,
        cloudWatchLogs = M.CloudWatchLogsDestinationConfiguration,
        firehose = M.FirehoseDestinationConfiguration,
    },
}

M.CreateLoggingConfigurationInput = {
    type = "structure",
    id = "CreateLoggingConfigurationInput",
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
    id = "CreateLoggingConfigurationOutput",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        createTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
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
    id = "ServiceQuotaExceededException",
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
    id = "MessageReviewHandler",
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
    id = "CreateRoomInput",
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
    id = "CreateRoomOutput",
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
            traits = {
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
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
    id = "DeleteLoggingConfigurationInput",
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
    id = "DeleteLoggingConfigurationOutput",
}

M.DeleteMessageInput = {
    type = "structure",
    id = "DeleteMessageInput",
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
    id = "DeleteMessageOutput",
    members = {
        id = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
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
    id = "DeleteRoomInput",
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
    id = "DeleteRoomOutput",
}

M.DisconnectUserInput = {
    type = "structure",
    id = "DisconnectUserInput",
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
    id = "DisconnectUserOutput",
}

M.GetLoggingConfigurationInput = {
    type = "structure",
    id = "GetLoggingConfigurationInput",
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
    id = "GetLoggingConfigurationOutput",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        createTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
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
    id = "GetRoomInput",
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
    id = "GetRoomOutput",
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
            traits = {
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
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
    id = "ListLoggingConfigurationsInput",
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
    id = "LoggingConfigurationSummary",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        createTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
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
    id = "ListLoggingConfigurationsOutput",
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
    id = "ListRoomsInput",
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
    id = "RoomSummary",
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
            traits = {
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
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
    id = "ListRoomsOutput",
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
    id = "InternalServerException",
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
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
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
    id = "SendEventInput",
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
    id = "SendEventOutput",
    members = {
        id = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
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
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

M.UpdateLoggingConfigurationInput = {
    type = "structure",
    id = "UpdateLoggingConfigurationInput",
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
    id = "UpdateLoggingConfigurationOutput",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        createTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
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
    id = "UpdateRoomInput",
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
    id = "UpdateRoomOutput",
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
            traits = {
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
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
