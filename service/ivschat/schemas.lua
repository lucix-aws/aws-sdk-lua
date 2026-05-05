local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.ivschat"

local M = {}

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "AccessDeniedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateChatTokenInput = schema.new({
    id = id.from(_N, "CreateChatTokenInput"),
    type = "structure",
    members = {
        roomIdentifier = schema.new({
            id = id.from(_N, "CreateChatTokenInput", "roomIdentifier"),
            type = "string",
            name = "roomIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        userId = schema.new({
            id = id.from(_N, "CreateChatTokenInput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        capabilities = schema.new({
            id = id.from(_N, "CreateChatTokenInput", "capabilities"),
            type = "list",
            name = "capabilities",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        sessionDurationInMinutes = schema.new({
            id = id.from(_N, "CreateChatTokenInput", "sessionDurationInMinutes"),
            type = "integer",
            name = "sessionDurationInMinutes",
            target_id = prelude.Integer.id,
        }),
        attributes = schema.new({
            id = id.from(_N, "CreateChatTokenInput", "attributes"),
            type = "map",
            name = "attributes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateChatTokenOutput = schema.new({
    id = id.from(_N, "CreateChatTokenOutput"),
    type = "structure",
    members = {
        token = schema.new({
            id = id.from(_N, "CreateChatTokenOutput", "token"),
            type = "string",
            name = "token",
            target_id = prelude.String.id,
        }),
        tokenExpirationTime = schema.new({
            id = id.from(_N, "CreateChatTokenOutput", "tokenExpirationTime"),
            type = "timestamp",
            name = "tokenExpirationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        sessionExpirationTime = schema.new({
            id = id.from(_N, "CreateChatTokenOutput", "sessionExpirationTime"),
            type = "timestamp",
            name = "sessionExpirationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.PendingVerification = schema.new({
    id = id.from(_N, "PendingVerification"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "PendingVerification", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResourceNotFoundException = schema.new({
    id = id.from(_N, "ResourceNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceType = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ValidationExceptionField = schema.new({
    id = id.from(_N, "ValidationExceptionField"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ValidationExceptionField", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        message = schema.new({
            id = id.from(_N, "ValidationExceptionField", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ValidationException = schema.new({
    id = id.from(_N, "ValidationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ValidationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        reason = schema.new({
            id = id.from(_N, "ValidationException", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fieldList = schema.new({
            id = id.from(_N, "ValidationException", "fieldList"),
            type = "list",
            name = "fieldList",
            target_id = prelude.Document.id,
            list_member = M.ValidationExceptionField,
        }),
    },
})

M.ConflictException = schema.new({
    id = id.from(_N, "ConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ConflictException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "ConflictException", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceType = schema.new({
            id = id.from(_N, "ConflictException", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CloudWatchLogsDestinationConfiguration = schema.new({
    id = id.from(_N, "CloudWatchLogsDestinationConfiguration"),
    type = "structure",
    members = {
        logGroupName = schema.new({
            id = id.from(_N, "CloudWatchLogsDestinationConfiguration", "logGroupName"),
            type = "string",
            name = "logGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.FirehoseDestinationConfiguration = schema.new({
    id = id.from(_N, "FirehoseDestinationConfiguration"),
    type = "structure",
    members = {
        deliveryStreamName = schema.new({
            id = id.from(_N, "FirehoseDestinationConfiguration", "deliveryStreamName"),
            type = "string",
            name = "deliveryStreamName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.S3DestinationConfiguration = schema.new({
    id = id.from(_N, "S3DestinationConfiguration"),
    type = "structure",
    members = {
        bucketName = schema.new({
            id = id.from(_N, "S3DestinationConfiguration", "bucketName"),
            type = "string",
            name = "bucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DestinationConfiguration = schema.new({
    id = id.from(_N, "DestinationConfiguration"),
    type = "union",
    members = {
        s3 = schema.new({
            id = id.from(_N, "DestinationConfiguration", "s3"),
            type = "structure",
            name = "s3",
            target_id = id.from(_N, "S3DestinationConfiguration"),
            target = M.S3DestinationConfiguration,
        }),
        cloudWatchLogs = schema.new({
            id = id.from(_N, "DestinationConfiguration", "cloudWatchLogs"),
            type = "structure",
            name = "cloudWatchLogs",
            target_id = id.from(_N, "CloudWatchLogsDestinationConfiguration"),
            target = M.CloudWatchLogsDestinationConfiguration,
        }),
        firehose = schema.new({
            id = id.from(_N, "DestinationConfiguration", "firehose"),
            type = "structure",
            name = "firehose",
            target_id = id.from(_N, "FirehoseDestinationConfiguration"),
            target = M.FirehoseDestinationConfiguration,
        }),
    },
})

M.CreateLoggingConfigurationInput = schema.new({
    id = id.from(_N, "CreateLoggingConfigurationInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateLoggingConfigurationInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        destinationConfiguration = schema.new({
            id = id.from(_N, "CreateLoggingConfigurationInput", "destinationConfiguration"),
            type = "union",
            name = "destinationConfiguration",
            target_id = id.from(_N, "DestinationConfiguration"),
            target = M.DestinationConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateLoggingConfigurationInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateLoggingConfigurationOutput = schema.new({
    id = id.from(_N, "CreateLoggingConfigurationOutput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "CreateLoggingConfigurationOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "CreateLoggingConfigurationOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        createTime = schema.new({
            id = id.from(_N, "CreateLoggingConfigurationOutput", "createTime"),
            type = "timestamp",
            name = "createTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updateTime = schema.new({
            id = id.from(_N, "CreateLoggingConfigurationOutput", "updateTime"),
            type = "timestamp",
            name = "updateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateLoggingConfigurationOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        destinationConfiguration = schema.new({
            id = id.from(_N, "CreateLoggingConfigurationOutput", "destinationConfiguration"),
            type = "union",
            name = "destinationConfiguration",
            target_id = id.from(_N, "DestinationConfiguration"),
            target = M.DestinationConfiguration,
        }),
        state = schema.new({
            id = id.from(_N, "CreateLoggingConfigurationOutput", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateLoggingConfigurationOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ServiceQuotaExceededException = schema.new({
    id = id.from(_N, "ServiceQuotaExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceType = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        limit = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "limit"),
            type = "integer",
            name = "limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.MessageReviewHandler = schema.new({
    id = id.from(_N, "MessageReviewHandler"),
    type = "structure",
    members = {
        uri = schema.new({
            id = id.from(_N, "MessageReviewHandler", "uri"),
            type = "string",
            name = "uri",
            target_id = prelude.String.id,
        }),
        fallbackResult = schema.new({
            id = id.from(_N, "MessageReviewHandler", "fallbackResult"),
            type = "string",
            name = "fallbackResult",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateRoomInput = schema.new({
    id = id.from(_N, "CreateRoomInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateRoomInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        maximumMessageRatePerSecond = schema.new({
            id = id.from(_N, "CreateRoomInput", "maximumMessageRatePerSecond"),
            type = "integer",
            name = "maximumMessageRatePerSecond",
            target_id = prelude.Integer.id,
        }),
        maximumMessageLength = schema.new({
            id = id.from(_N, "CreateRoomInput", "maximumMessageLength"),
            type = "integer",
            name = "maximumMessageLength",
            target_id = prelude.Integer.id,
        }),
        messageReviewHandler = schema.new({
            id = id.from(_N, "CreateRoomInput", "messageReviewHandler"),
            type = "structure",
            name = "messageReviewHandler",
            target_id = id.from(_N, "MessageReviewHandler"),
            target = M.MessageReviewHandler,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateRoomInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        loggingConfigurationIdentifiers = schema.new({
            id = id.from(_N, "CreateRoomInput", "loggingConfigurationIdentifiers"),
            type = "list",
            name = "loggingConfigurationIdentifiers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CreateRoomOutput = schema.new({
    id = id.from(_N, "CreateRoomOutput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "CreateRoomOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "CreateRoomOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CreateRoomOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        createTime = schema.new({
            id = id.from(_N, "CreateRoomOutput", "createTime"),
            type = "timestamp",
            name = "createTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updateTime = schema.new({
            id = id.from(_N, "CreateRoomOutput", "updateTime"),
            type = "timestamp",
            name = "updateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        maximumMessageRatePerSecond = schema.new({
            id = id.from(_N, "CreateRoomOutput", "maximumMessageRatePerSecond"),
            type = "integer",
            name = "maximumMessageRatePerSecond",
            target_id = prelude.Integer.id,
        }),
        maximumMessageLength = schema.new({
            id = id.from(_N, "CreateRoomOutput", "maximumMessageLength"),
            type = "integer",
            name = "maximumMessageLength",
            target_id = prelude.Integer.id,
        }),
        messageReviewHandler = schema.new({
            id = id.from(_N, "CreateRoomOutput", "messageReviewHandler"),
            type = "structure",
            name = "messageReviewHandler",
            target_id = id.from(_N, "MessageReviewHandler"),
            target = M.MessageReviewHandler,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateRoomOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        loggingConfigurationIdentifiers = schema.new({
            id = id.from(_N, "CreateRoomOutput", "loggingConfigurationIdentifiers"),
            type = "list",
            name = "loggingConfigurationIdentifiers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DeleteLoggingConfigurationInput = schema.new({
    id = id.from(_N, "DeleteLoggingConfigurationInput"),
    type = "structure",
    members = {
        identifier = schema.new({
            id = id.from(_N, "DeleteLoggingConfigurationInput", "identifier"),
            type = "string",
            name = "identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteLoggingConfigurationOutput = schema.new({
    id = id.from(_N, "DeleteLoggingConfigurationOutput"),
    type = "structure",
})

M.DeleteMessageInput = schema.new({
    id = id.from(_N, "DeleteMessageInput"),
    type = "structure",
    members = {
        roomIdentifier = schema.new({
            id = id.from(_N, "DeleteMessageInput", "roomIdentifier"),
            type = "string",
            name = "roomIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "DeleteMessageInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        reason = schema.new({
            id = id.from(_N, "DeleteMessageInput", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteMessageOutput = schema.new({
    id = id.from(_N, "DeleteMessageOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DeleteMessageOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
    },
})

M.ThrottlingException = schema.new({
    id = id.from(_N, "ThrottlingException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ThrottlingException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "ThrottlingException", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceType = schema.new({
            id = id.from(_N, "ThrottlingException", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        limit = schema.new({
            id = id.from(_N, "ThrottlingException", "limit"),
            type = "integer",
            name = "limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.DeleteRoomInput = schema.new({
    id = id.from(_N, "DeleteRoomInput"),
    type = "structure",
    members = {
        identifier = schema.new({
            id = id.from(_N, "DeleteRoomInput", "identifier"),
            type = "string",
            name = "identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteRoomOutput = schema.new({
    id = id.from(_N, "DeleteRoomOutput"),
    type = "structure",
})

M.DisconnectUserInput = schema.new({
    id = id.from(_N, "DisconnectUserInput"),
    type = "structure",
    members = {
        roomIdentifier = schema.new({
            id = id.from(_N, "DisconnectUserInput", "roomIdentifier"),
            type = "string",
            name = "roomIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        userId = schema.new({
            id = id.from(_N, "DisconnectUserInput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        reason = schema.new({
            id = id.from(_N, "DisconnectUserInput", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
        }),
    },
})

M.DisconnectUserOutput = schema.new({
    id = id.from(_N, "DisconnectUserOutput"),
    type = "structure",
})

M.GetLoggingConfigurationInput = schema.new({
    id = id.from(_N, "GetLoggingConfigurationInput"),
    type = "structure",
    members = {
        identifier = schema.new({
            id = id.from(_N, "GetLoggingConfigurationInput", "identifier"),
            type = "string",
            name = "identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetLoggingConfigurationOutput = schema.new({
    id = id.from(_N, "GetLoggingConfigurationOutput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "GetLoggingConfigurationOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "GetLoggingConfigurationOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        createTime = schema.new({
            id = id.from(_N, "GetLoggingConfigurationOutput", "createTime"),
            type = "timestamp",
            name = "createTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updateTime = schema.new({
            id = id.from(_N, "GetLoggingConfigurationOutput", "updateTime"),
            type = "timestamp",
            name = "updateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetLoggingConfigurationOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        destinationConfiguration = schema.new({
            id = id.from(_N, "GetLoggingConfigurationOutput", "destinationConfiguration"),
            type = "union",
            name = "destinationConfiguration",
            target_id = id.from(_N, "DestinationConfiguration"),
            target = M.DestinationConfiguration,
        }),
        state = schema.new({
            id = id.from(_N, "GetLoggingConfigurationOutput", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "GetLoggingConfigurationOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetRoomInput = schema.new({
    id = id.from(_N, "GetRoomInput"),
    type = "structure",
    members = {
        identifier = schema.new({
            id = id.from(_N, "GetRoomInput", "identifier"),
            type = "string",
            name = "identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetRoomOutput = schema.new({
    id = id.from(_N, "GetRoomOutput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "GetRoomOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "GetRoomOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "GetRoomOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        createTime = schema.new({
            id = id.from(_N, "GetRoomOutput", "createTime"),
            type = "timestamp",
            name = "createTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updateTime = schema.new({
            id = id.from(_N, "GetRoomOutput", "updateTime"),
            type = "timestamp",
            name = "updateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        maximumMessageRatePerSecond = schema.new({
            id = id.from(_N, "GetRoomOutput", "maximumMessageRatePerSecond"),
            type = "integer",
            name = "maximumMessageRatePerSecond",
            target_id = prelude.Integer.id,
        }),
        maximumMessageLength = schema.new({
            id = id.from(_N, "GetRoomOutput", "maximumMessageLength"),
            type = "integer",
            name = "maximumMessageLength",
            target_id = prelude.Integer.id,
        }),
        messageReviewHandler = schema.new({
            id = id.from(_N, "GetRoomOutput", "messageReviewHandler"),
            type = "structure",
            name = "messageReviewHandler",
            target_id = id.from(_N, "MessageReviewHandler"),
            target = M.MessageReviewHandler,
        }),
        tags = schema.new({
            id = id.from(_N, "GetRoomOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        loggingConfigurationIdentifiers = schema.new({
            id = id.from(_N, "GetRoomOutput", "loggingConfigurationIdentifiers"),
            type = "list",
            name = "loggingConfigurationIdentifiers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListLoggingConfigurationsInput = schema.new({
    id = id.from(_N, "ListLoggingConfigurationsInput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListLoggingConfigurationsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListLoggingConfigurationsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.LoggingConfigurationSummary = schema.new({
    id = id.from(_N, "LoggingConfigurationSummary"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "LoggingConfigurationSummary", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "LoggingConfigurationSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        createTime = schema.new({
            id = id.from(_N, "LoggingConfigurationSummary", "createTime"),
            type = "timestamp",
            name = "createTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updateTime = schema.new({
            id = id.from(_N, "LoggingConfigurationSummary", "updateTime"),
            type = "timestamp",
            name = "updateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        name = schema.new({
            id = id.from(_N, "LoggingConfigurationSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        destinationConfiguration = schema.new({
            id = id.from(_N, "LoggingConfigurationSummary", "destinationConfiguration"),
            type = "union",
            name = "destinationConfiguration",
            target_id = id.from(_N, "DestinationConfiguration"),
            target = M.DestinationConfiguration,
        }),
        state = schema.new({
            id = id.from(_N, "LoggingConfigurationSummary", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "LoggingConfigurationSummary", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListLoggingConfigurationsOutput = schema.new({
    id = id.from(_N, "ListLoggingConfigurationsOutput"),
    type = "structure",
    members = {
        loggingConfigurations = schema.new({
            id = id.from(_N, "ListLoggingConfigurationsOutput", "loggingConfigurations"),
            type = "list",
            name = "loggingConfigurations",
            target_id = prelude.Document.id,
            list_member = M.LoggingConfigurationSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListLoggingConfigurationsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRoomsInput = schema.new({
    id = id.from(_N, "ListRoomsInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ListRoomsInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListRoomsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListRoomsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        messageReviewHandlerUri = schema.new({
            id = id.from(_N, "ListRoomsInput", "messageReviewHandlerUri"),
            type = "string",
            name = "messageReviewHandlerUri",
            target_id = prelude.String.id,
        }),
        loggingConfigurationIdentifier = schema.new({
            id = id.from(_N, "ListRoomsInput", "loggingConfigurationIdentifier"),
            type = "string",
            name = "loggingConfigurationIdentifier",
            target_id = prelude.String.id,
        }),
    },
})

M.RoomSummary = schema.new({
    id = id.from(_N, "RoomSummary"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "RoomSummary", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "RoomSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "RoomSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        messageReviewHandler = schema.new({
            id = id.from(_N, "RoomSummary", "messageReviewHandler"),
            type = "structure",
            name = "messageReviewHandler",
            target_id = id.from(_N, "MessageReviewHandler"),
            target = M.MessageReviewHandler,
        }),
        createTime = schema.new({
            id = id.from(_N, "RoomSummary", "createTime"),
            type = "timestamp",
            name = "createTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updateTime = schema.new({
            id = id.from(_N, "RoomSummary", "updateTime"),
            type = "timestamp",
            name = "updateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        tags = schema.new({
            id = id.from(_N, "RoomSummary", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        loggingConfigurationIdentifiers = schema.new({
            id = id.from(_N, "RoomSummary", "loggingConfigurationIdentifiers"),
            type = "list",
            name = "loggingConfigurationIdentifiers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListRoomsOutput = schema.new({
    id = id.from(_N, "ListRoomsOutput"),
    type = "structure",
    members = {
        rooms = schema.new({
            id = id.from(_N, "ListRoomsOutput", "rooms"),
            type = "list",
            name = "rooms",
            target_id = prelude.Document.id,
            list_member = M.RoomSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListRoomsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.InternalServerException = schema.new({
    id = id.from(_N, "InternalServerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InternalServerException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceInput"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceOutput"),
    type = "structure",
    members = {
        tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SendEventInput = schema.new({
    id = id.from(_N, "SendEventInput"),
    type = "structure",
    members = {
        roomIdentifier = schema.new({
            id = id.from(_N, "SendEventInput", "roomIdentifier"),
            type = "string",
            name = "roomIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        eventName = schema.new({
            id = id.from(_N, "SendEventInput", "eventName"),
            type = "string",
            name = "eventName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        attributes = schema.new({
            id = id.from(_N, "SendEventInput", "attributes"),
            type = "map",
            name = "attributes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.SendEventOutput = schema.new({
    id = id.from(_N, "SendEventOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "SendEventOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "TagResourceInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceOutput"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceInput"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        tagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "tagKeys"),
            type = "list",
            name = "tagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "tagKeys" },
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
})

M.UpdateLoggingConfigurationInput = schema.new({
    id = id.from(_N, "UpdateLoggingConfigurationInput"),
    type = "structure",
    members = {
        identifier = schema.new({
            id = id.from(_N, "UpdateLoggingConfigurationInput", "identifier"),
            type = "string",
            name = "identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateLoggingConfigurationInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        destinationConfiguration = schema.new({
            id = id.from(_N, "UpdateLoggingConfigurationInput", "destinationConfiguration"),
            type = "union",
            name = "destinationConfiguration",
            target_id = id.from(_N, "DestinationConfiguration"),
            target = M.DestinationConfiguration,
        }),
    },
})

M.UpdateLoggingConfigurationOutput = schema.new({
    id = id.from(_N, "UpdateLoggingConfigurationOutput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "UpdateLoggingConfigurationOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "UpdateLoggingConfigurationOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        createTime = schema.new({
            id = id.from(_N, "UpdateLoggingConfigurationOutput", "createTime"),
            type = "timestamp",
            name = "createTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updateTime = schema.new({
            id = id.from(_N, "UpdateLoggingConfigurationOutput", "updateTime"),
            type = "timestamp",
            name = "updateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateLoggingConfigurationOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        destinationConfiguration = schema.new({
            id = id.from(_N, "UpdateLoggingConfigurationOutput", "destinationConfiguration"),
            type = "union",
            name = "destinationConfiguration",
            target_id = id.from(_N, "DestinationConfiguration"),
            target = M.DestinationConfiguration,
        }),
        state = schema.new({
            id = id.from(_N, "UpdateLoggingConfigurationOutput", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "UpdateLoggingConfigurationOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.UpdateRoomInput = schema.new({
    id = id.from(_N, "UpdateRoomInput"),
    type = "structure",
    members = {
        identifier = schema.new({
            id = id.from(_N, "UpdateRoomInput", "identifier"),
            type = "string",
            name = "identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateRoomInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        maximumMessageRatePerSecond = schema.new({
            id = id.from(_N, "UpdateRoomInput", "maximumMessageRatePerSecond"),
            type = "integer",
            name = "maximumMessageRatePerSecond",
            target_id = prelude.Integer.id,
        }),
        maximumMessageLength = schema.new({
            id = id.from(_N, "UpdateRoomInput", "maximumMessageLength"),
            type = "integer",
            name = "maximumMessageLength",
            target_id = prelude.Integer.id,
        }),
        messageReviewHandler = schema.new({
            id = id.from(_N, "UpdateRoomInput", "messageReviewHandler"),
            type = "structure",
            name = "messageReviewHandler",
            target_id = id.from(_N, "MessageReviewHandler"),
            target = M.MessageReviewHandler,
        }),
        loggingConfigurationIdentifiers = schema.new({
            id = id.from(_N, "UpdateRoomInput", "loggingConfigurationIdentifiers"),
            type = "list",
            name = "loggingConfigurationIdentifiers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.UpdateRoomOutput = schema.new({
    id = id.from(_N, "UpdateRoomOutput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "UpdateRoomOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "UpdateRoomOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "UpdateRoomOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        createTime = schema.new({
            id = id.from(_N, "UpdateRoomOutput", "createTime"),
            type = "timestamp",
            name = "createTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updateTime = schema.new({
            id = id.from(_N, "UpdateRoomOutput", "updateTime"),
            type = "timestamp",
            name = "updateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        maximumMessageRatePerSecond = schema.new({
            id = id.from(_N, "UpdateRoomOutput", "maximumMessageRatePerSecond"),
            type = "integer",
            name = "maximumMessageRatePerSecond",
            target_id = prelude.Integer.id,
        }),
        maximumMessageLength = schema.new({
            id = id.from(_N, "UpdateRoomOutput", "maximumMessageLength"),
            type = "integer",
            name = "maximumMessageLength",
            target_id = prelude.Integer.id,
        }),
        messageReviewHandler = schema.new({
            id = id.from(_N, "UpdateRoomOutput", "messageReviewHandler"),
            type = "structure",
            name = "messageReviewHandler",
            target_id = id.from(_N, "MessageReviewHandler"),
            target = M.MessageReviewHandler,
        }),
        tags = schema.new({
            id = id.from(_N, "UpdateRoomOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        loggingConfigurationIdentifiers = schema.new({
            id = id.from(_N, "UpdateRoomOutput", "loggingConfigurationIdentifiers"),
            type = "list",
            name = "loggingConfigurationIdentifiers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

return M
