local M = {}

M.AllowNotifications = {
    ALL = "ALL",
    NONE = "NONE",
    FILTERED = "FILTERED",
}

M.ChannelMembershipType = {
    DEFAULT = "DEFAULT",
    HIDDEN = "HIDDEN",
}

M.AppInstanceUserMembershipSummary = {
    type = "structure",
    id = "AppInstanceUserMembershipSummary",
    members = {
        Type = {
            type = "string",
        },
        ReadMarkerTimestamp = {
            type = "timestamp",
        },
        SubChannelId = {
            type = "string",
        },
    },
}

M.AssociateChannelFlowInput = {
    type = "structure",
    id = "AssociateChannelFlowInput",
    members = {
        ChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChannelFlowArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
    },
}

M.AssociateChannelFlowOutput = {
    type = "structure",
    id = "AssociateChannelFlowOutput",
}

M.ErrorCode = {
    BadRequest = "BadRequest",
    Conflict = "Conflict",
    Forbidden = "Forbidden",
    NotFound = "NotFound",
    PreconditionFailed = "PreconditionFailed",
    ResourceLimitExceeded = "ResourceLimitExceeded",
    ServiceFailure = "ServiceFailure",
    AccessDenied = "AccessDenied",
    ServiceUnavailable = "ServiceUnavailable",
    Throttled = "Throttled",
    Throttling = "Throttling",
    Unauthorized = "Unauthorized",
    Unprocessable = "Unprocessable",
    VoiceConnectorGroupAssociationsExist = "VoiceConnectorGroupAssociationsExist",
    PhoneNumberAssociationsExist = "PhoneNumberAssociationsExist",
}

M.BadRequestException = {
    type = "structure",
    id = "BadRequestException",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ForbiddenException = {
    type = "structure",
    id = "ForbiddenException",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.NotFoundException = {
    type = "structure",
    id = "NotFoundException",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ServiceFailureException = {
    type = "structure",
    id = "ServiceFailureException",
    error = "server",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    id = "ServiceUnavailableException",
    error = "server",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ThrottledClientException = {
    type = "structure",
    id = "ThrottledClientException",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.UnauthorizedClientException = {
    type = "structure",
    id = "UnauthorizedClientException",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.Identity = {
    type = "structure",
    id = "Identity",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.BatchChannelMemberships = {
    type = "structure",
    id = "BatchChannelMemberships",
    members = {
        InvitedBy = M.Identity,
        Type = {
            type = "string",
        },
        Members = {
            type = "list",
            member = M.Identity,
        },
        ChannelArn = {
            type = "string",
        },
        SubChannelId = {
            type = "string",
        },
    },
}

M.BatchCreateChannelMembershipInput = {
    type = "structure",
    id = "BatchCreateChannelMembershipInput",
    members = {
        ChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Type = {
            type = "string",
        },
        MemberArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
        SubChannelId = {
            type = "string",
        },
    },
}

M.BatchCreateChannelMembershipError = {
    type = "structure",
    id = "BatchCreateChannelMembershipError",
    members = {
        MemberArn = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.BatchCreateChannelMembershipOutput = {
    type = "structure",
    id = "BatchCreateChannelMembershipOutput",
    members = {
        BatchChannelMemberships = M.BatchChannelMemberships,
        Errors = {
            type = "list",
            member = M.BatchCreateChannelMembershipError,
        },
    },
}

M.ResourceLimitExceededException = {
    type = "structure",
    id = "ResourceLimitExceededException",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ElasticChannelConfiguration = {
    type = "structure",
    id = "ElasticChannelConfiguration",
    members = {
        MaximumSubChannels = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        TargetMembershipsPerSubChannel = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        MinimumMembershipPercentage = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ExpirationCriterion = {
    CREATED_TIMESTAMP = "CREATED_TIMESTAMP",
    LAST_MESSAGE_TIMESTAMP = "LAST_MESSAGE_TIMESTAMP",
}

M.ExpirationSettings = {
    type = "structure",
    id = "ExpirationSettings",
    members = {
        ExpirationDays = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        ExpirationCriterion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ChannelMode = {
    UNRESTRICTED = "UNRESTRICTED",
    RESTRICTED = "RESTRICTED",
}

M.ChannelPrivacy = {
    PUBLIC = "PUBLIC",
    PRIVATE = "PRIVATE",
}

M.Channel = {
    type = "structure",
    id = "Channel",
    members = {
        Name = {
            type = "string",
        },
        ChannelArn = {
            type = "string",
        },
        Mode = {
            type = "string",
        },
        Privacy = {
            type = "string",
        },
        Metadata = {
            type = "string",
        },
        CreatedBy = M.Identity,
        CreatedTimestamp = {
            type = "timestamp",
        },
        LastMessageTimestamp = {
            type = "timestamp",
        },
        LastUpdatedTimestamp = {
            type = "timestamp",
        },
        ChannelFlowArn = {
            type = "string",
        },
        ElasticChannelConfiguration = M.ElasticChannelConfiguration,
        ExpirationSettings = M.ExpirationSettings,
    },
}

M.ChannelAssociatedWithFlowSummary = {
    type = "structure",
    id = "ChannelAssociatedWithFlowSummary",
    members = {
        Name = {
            type = "string",
        },
        ChannelArn = {
            type = "string",
        },
        Mode = {
            type = "string",
        },
        Privacy = {
            type = "string",
        },
        Metadata = {
            type = "string",
        },
    },
}

M.ChannelBan = {
    type = "structure",
    id = "ChannelBan",
    members = {
        Member = M.Identity,
        ChannelArn = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        CreatedBy = M.Identity,
    },
}

M.ChannelBanSummary = {
    type = "structure",
    id = "ChannelBanSummary",
    members = {
        Member = M.Identity,
    },
}

M.InvocationType = {
    ASYNC = "ASYNC",
}

M.LambdaConfiguration = {
    type = "structure",
    id = "LambdaConfiguration",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InvocationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProcessorConfiguration = {
    type = "structure",
    id = "ProcessorConfiguration",
    members = {
        Lambda = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LambdaConfiguration }),
    },
}

M.FallbackAction = {
    CONTINUE = "CONTINUE",
    ABORT = "ABORT",
}

M.Processor = {
    type = "structure",
    id = "Processor",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProcessorConfiguration }),
        ExecutionOrder = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        FallbackAction = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ChannelFlow = {
    type = "structure",
    id = "ChannelFlow",
    members = {
        ChannelFlowArn = {
            type = "string",
        },
        Processors = {
            type = "list",
            member = M.Processor,
        },
        Name = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        LastUpdatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.MessageAttributeValue = {
    type = "structure",
    id = "MessageAttributeValue",
    members = {
        StringValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.PushNotificationType = {
    DEFAULT = "DEFAULT",
    VOIP = "VOIP",
}

M.PushNotificationConfiguration = {
    type = "structure",
    id = "PushNotificationConfiguration",
    members = {
        Title = {
            type = "string",
        },
        Body = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.ChannelMessageCallback = {
    type = "structure",
    id = "ChannelMessageCallback",
    members = {
        MessageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Content = {
            type = "string",
        },
        Metadata = {
            type = "string",
        },
        PushNotification = M.PushNotificationConfiguration,
        MessageAttributes = {
            type = "map",
            key = { type = "string" },
            value = M.MessageAttributeValue,
        },
        SubChannelId = {
            type = "string",
        },
        ContentType = {
            type = "string",
        },
    },
}

M.ChannelFlowCallbackInput = {
    type = "structure",
    id = "ChannelFlowCallbackInput",
    members = {
        CallbackId = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        ChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeleteResource = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ChannelMessage = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ChannelMessageCallback }),
    },
}

M.ChannelFlowCallbackOutput = {
    type = "structure",
    id = "ChannelFlowCallbackOutput",
    members = {
        ChannelArn = {
            type = "string",
        },
        CallbackId = {
            type = "string",
        },
    },
}

M.ChannelFlowSummary = {
    type = "structure",
    id = "ChannelFlowSummary",
    members = {
        ChannelFlowArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Processors = {
            type = "list",
            member = M.Processor,
        },
    },
}

M.ChannelMembership = {
    type = "structure",
    id = "ChannelMembership",
    members = {
        InvitedBy = M.Identity,
        Type = {
            type = "string",
        },
        Member = M.Identity,
        ChannelArn = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        LastUpdatedTimestamp = {
            type = "timestamp",
        },
        SubChannelId = {
            type = "string",
        },
    },
}

M.ChannelSummary = {
    type = "structure",
    id = "ChannelSummary",
    members = {
        Name = {
            type = "string",
        },
        ChannelArn = {
            type = "string",
        },
        Mode = {
            type = "string",
        },
        Privacy = {
            type = "string",
        },
        Metadata = {
            type = "string",
        },
        LastMessageTimestamp = {
            type = "timestamp",
        },
    },
}

M.ChannelMembershipForAppInstanceUserSummary = {
    type = "structure",
    id = "ChannelMembershipForAppInstanceUserSummary",
    members = {
        ChannelSummary = M.ChannelSummary,
        AppInstanceUserMembershipSummary = M.AppInstanceUserMembershipSummary,
    },
}

M.PushNotificationPreferences = {
    type = "structure",
    id = "PushNotificationPreferences",
    members = {
        AllowNotifications = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FilterRule = {
            type = "string",
        },
    },
}

M.ChannelMembershipPreferences = {
    type = "structure",
    id = "ChannelMembershipPreferences",
    members = {
        PushNotifications = M.PushNotificationPreferences,
    },
}

M.ChannelMembershipSummary = {
    type = "structure",
    id = "ChannelMembershipSummary",
    members = {
        Member = M.Identity,
    },
}

M.ChannelMessagePersistenceType = {
    PERSISTENT = "PERSISTENT",
    NON_PERSISTENT = "NON_PERSISTENT",
}

M.ChannelMessageStatus = {
    SENT = "SENT",
    PENDING = "PENDING",
    FAILED = "FAILED",
    DENIED = "DENIED",
}

M.ChannelMessageStatusStructure = {
    type = "structure",
    id = "ChannelMessageStatusStructure",
    members = {
        Value = {
            type = "string",
        },
        Detail = {
            type = "string",
        },
    },
}

M.Target = {
    type = "structure",
    id = "Target",
    members = {
        MemberArn = {
            type = "string",
        },
    },
}

M.ChannelMessageType = {
    STANDARD = "STANDARD",
    CONTROL = "CONTROL",
}

M.ChannelMessage = {
    type = "structure",
    id = "ChannelMessage",
    members = {
        ChannelArn = {
            type = "string",
        },
        MessageId = {
            type = "string",
        },
        Content = {
            type = "string",
        },
        Metadata = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        LastEditedTimestamp = {
            type = "timestamp",
        },
        LastUpdatedTimestamp = {
            type = "timestamp",
        },
        Sender = M.Identity,
        Redacted = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Persistence = {
            type = "string",
        },
        Status = M.ChannelMessageStatusStructure,
        MessageAttributes = {
            type = "map",
            key = { type = "string" },
            value = M.MessageAttributeValue,
        },
        SubChannelId = {
            type = "string",
        },
        ContentType = {
            type = "string",
        },
        Target = {
            type = "list",
            member = M.Target,
        },
    },
}

M.ChannelMessageSummary = {
    type = "structure",
    id = "ChannelMessageSummary",
    members = {
        MessageId = {
            type = "string",
        },
        Content = {
            type = "string",
        },
        Metadata = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        LastUpdatedTimestamp = {
            type = "timestamp",
        },
        LastEditedTimestamp = {
            type = "timestamp",
        },
        Sender = M.Identity,
        Redacted = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Status = M.ChannelMessageStatusStructure,
        MessageAttributes = {
            type = "map",
            key = { type = "string" },
            value = M.MessageAttributeValue,
        },
        ContentType = {
            type = "string",
        },
        Target = {
            type = "list",
            member = M.Target,
        },
    },
}

M.ChannelModeratedByAppInstanceUserSummary = {
    type = "structure",
    id = "ChannelModeratedByAppInstanceUserSummary",
    members = {
        ChannelSummary = M.ChannelSummary,
    },
}

M.ChannelModerator = {
    type = "structure",
    id = "ChannelModerator",
    members = {
        Moderator = M.Identity,
        ChannelArn = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        CreatedBy = M.Identity,
    },
}

M.ChannelModeratorSummary = {
    type = "structure",
    id = "ChannelModeratorSummary",
    members = {
        Moderator = M.Identity,
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateChannelInput = {
    type = "structure",
    id = "CreateChannelInput",
    members = {
        AppInstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Mode = {
            type = "string",
        },
        Privacy = {
            type = "string",
        },
        Metadata = {
            type = "string",
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
        ChannelId = {
            type = "string",
        },
        MemberArns = {
            type = "list",
            member = { type = "string" },
        },
        ModeratorArns = {
            type = "list",
            member = { type = "string" },
        },
        ElasticChannelConfiguration = M.ElasticChannelConfiguration,
        ExpirationSettings = M.ExpirationSettings,
    },
}

M.CreateChannelOutput = {
    type = "structure",
    id = "CreateChannelOutput",
    members = {
        ChannelArn = {
            type = "string",
        },
    },
}

M.CreateChannelBanInput = {
    type = "structure",
    id = "CreateChannelBanInput",
    members = {
        ChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MemberArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
    },
}

M.CreateChannelBanOutput = {
    type = "structure",
    id = "CreateChannelBanOutput",
    members = {
        ChannelArn = {
            type = "string",
        },
        Member = M.Identity,
    },
}

M.CreateChannelFlowInput = {
    type = "structure",
    id = "CreateChannelFlowInput",
    members = {
        AppInstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Processors = {
            type = "list",
            member = M.Processor,
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.CreateChannelFlowOutput = {
    type = "structure",
    id = "CreateChannelFlowOutput",
    members = {
        ChannelFlowArn = {
            type = "string",
        },
    },
}

M.CreateChannelMembershipInput = {
    type = "structure",
    id = "CreateChannelMembershipInput",
    members = {
        ChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MemberArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
        SubChannelId = {
            type = "string",
        },
    },
}

M.CreateChannelMembershipOutput = {
    type = "structure",
    id = "CreateChannelMembershipOutput",
    members = {
        ChannelArn = {
            type = "string",
        },
        Member = M.Identity,
        SubChannelId = {
            type = "string",
        },
    },
}

M.CreateChannelModeratorInput = {
    type = "structure",
    id = "CreateChannelModeratorInput",
    members = {
        ChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChannelModeratorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
    },
}

M.CreateChannelModeratorOutput = {
    type = "structure",
    id = "CreateChannelModeratorOutput",
    members = {
        ChannelArn = {
            type = "string",
        },
        ChannelModerator = M.Identity,
    },
}

M.DeleteChannelInput = {
    type = "structure",
    id = "DeleteChannelInput",
    members = {
        ChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
    },
}

M.DeleteChannelOutput = {
    type = "structure",
    id = "DeleteChannelOutput",
}

M.DeleteChannelBanInput = {
    type = "structure",
    id = "DeleteChannelBanInput",
    members = {
        ChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MemberArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
    },
}

M.DeleteChannelBanOutput = {
    type = "structure",
    id = "DeleteChannelBanOutput",
}

M.DeleteChannelFlowInput = {
    type = "structure",
    id = "DeleteChannelFlowInput",
    members = {
        ChannelFlowArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteChannelFlowOutput = {
    type = "structure",
    id = "DeleteChannelFlowOutput",
}

M.DeleteChannelMembershipInput = {
    type = "structure",
    id = "DeleteChannelMembershipInput",
    members = {
        ChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MemberArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
        SubChannelId = {
            type = "string",
            traits = {
                http_query = "sub-channel-id",
            },
        },
    },
}

M.DeleteChannelMembershipOutput = {
    type = "structure",
    id = "DeleteChannelMembershipOutput",
}

M.DeleteChannelMessageInput = {
    type = "structure",
    id = "DeleteChannelMessageInput",
    members = {
        ChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MessageId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
        SubChannelId = {
            type = "string",
            traits = {
                http_query = "sub-channel-id",
            },
        },
    },
}

M.DeleteChannelMessageOutput = {
    type = "structure",
    id = "DeleteChannelMessageOutput",
}

M.DeleteChannelModeratorInput = {
    type = "structure",
    id = "DeleteChannelModeratorInput",
    members = {
        ChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChannelModeratorArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
    },
}

M.DeleteChannelModeratorOutput = {
    type = "structure",
    id = "DeleteChannelModeratorOutput",
}

M.DeleteMessagingStreamingConfigurationsInput = {
    type = "structure",
    id = "DeleteMessagingStreamingConfigurationsInput",
    members = {
        AppInstanceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMessagingStreamingConfigurationsOutput = {
    type = "structure",
    id = "DeleteMessagingStreamingConfigurationsOutput",
}

M.DescribeChannelInput = {
    type = "structure",
    id = "DescribeChannelInput",
    members = {
        ChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
    },
}

M.DescribeChannelOutput = {
    type = "structure",
    id = "DescribeChannelOutput",
    members = {
        Channel = M.Channel,
    },
}

M.DescribeChannelBanInput = {
    type = "structure",
    id = "DescribeChannelBanInput",
    members = {
        ChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MemberArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
    },
}

M.DescribeChannelBanOutput = {
    type = "structure",
    id = "DescribeChannelBanOutput",
    members = {
        ChannelBan = M.ChannelBan,
    },
}

M.DescribeChannelFlowInput = {
    type = "structure",
    id = "DescribeChannelFlowInput",
    members = {
        ChannelFlowArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeChannelFlowOutput = {
    type = "structure",
    id = "DescribeChannelFlowOutput",
    members = {
        ChannelFlow = M.ChannelFlow,
    },
}

M.DescribeChannelMembershipInput = {
    type = "structure",
    id = "DescribeChannelMembershipInput",
    members = {
        ChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MemberArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
        SubChannelId = {
            type = "string",
            traits = {
                http_query = "sub-channel-id",
            },
        },
    },
}

M.DescribeChannelMembershipOutput = {
    type = "structure",
    id = "DescribeChannelMembershipOutput",
    members = {
        ChannelMembership = M.ChannelMembership,
    },
}

M.DescribeChannelMembershipForAppInstanceUserInput = {
    type = "structure",
    id = "DescribeChannelMembershipForAppInstanceUserInput",
    members = {
        ChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AppInstanceUserArn = {
            type = "string",
            traits = {
                http_query = "app-instance-user-arn",
                required = true,
            },
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
    },
}

M.DescribeChannelMembershipForAppInstanceUserOutput = {
    type = "structure",
    id = "DescribeChannelMembershipForAppInstanceUserOutput",
    members = {
        ChannelMembership = M.ChannelMembershipForAppInstanceUserSummary,
    },
}

M.DescribeChannelModeratedByAppInstanceUserInput = {
    type = "structure",
    id = "DescribeChannelModeratedByAppInstanceUserInput",
    members = {
        ChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AppInstanceUserArn = {
            type = "string",
            traits = {
                http_query = "app-instance-user-arn",
                required = true,
            },
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
    },
}

M.DescribeChannelModeratedByAppInstanceUserOutput = {
    type = "structure",
    id = "DescribeChannelModeratedByAppInstanceUserOutput",
    members = {
        Channel = M.ChannelModeratedByAppInstanceUserSummary,
    },
}

M.DescribeChannelModeratorInput = {
    type = "structure",
    id = "DescribeChannelModeratorInput",
    members = {
        ChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChannelModeratorArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
    },
}

M.DescribeChannelModeratorOutput = {
    type = "structure",
    id = "DescribeChannelModeratorOutput",
    members = {
        ChannelModerator = M.ChannelModerator,
    },
}

M.DisassociateChannelFlowInput = {
    type = "structure",
    id = "DisassociateChannelFlowInput",
    members = {
        ChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChannelFlowArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
    },
}

M.DisassociateChannelFlowOutput = {
    type = "structure",
    id = "DisassociateChannelFlowOutput",
}

M.GetChannelMembershipPreferencesInput = {
    type = "structure",
    id = "GetChannelMembershipPreferencesInput",
    members = {
        ChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MemberArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
    },
}

M.GetChannelMembershipPreferencesOutput = {
    type = "structure",
    id = "GetChannelMembershipPreferencesOutput",
    members = {
        ChannelArn = {
            type = "string",
        },
        Member = M.Identity,
        Preferences = M.ChannelMembershipPreferences,
    },
}

M.GetChannelMessageInput = {
    type = "structure",
    id = "GetChannelMessageInput",
    members = {
        ChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MessageId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
        SubChannelId = {
            type = "string",
            traits = {
                http_query = "sub-channel-id",
            },
        },
    },
}

M.GetChannelMessageOutput = {
    type = "structure",
    id = "GetChannelMessageOutput",
    members = {
        ChannelMessage = M.ChannelMessage,
    },
}

M.GetChannelMessageStatusInput = {
    type = "structure",
    id = "GetChannelMessageStatusInput",
    members = {
        ChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MessageId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
        SubChannelId = {
            type = "string",
            traits = {
                http_query = "sub-channel-id",
            },
        },
    },
}

M.GetChannelMessageStatusOutput = {
    type = "structure",
    id = "GetChannelMessageStatusOutput",
    members = {
        Status = M.ChannelMessageStatusStructure,
    },
}

M.NetworkType = {
    IPV4_ONLY = "IPV4_ONLY",
    DUAL_STACK = "DUAL_STACK",
}

M.GetMessagingSessionEndpointInput = {
    type = "structure",
    id = "GetMessagingSessionEndpointInput",
    members = {
        NetworkType = {
            type = "string",
            traits = {
                http_query = "network-type",
            },
        },
    },
}

M.MessagingSessionEndpoint = {
    type = "structure",
    id = "MessagingSessionEndpoint",
    members = {
        Url = {
            type = "string",
        },
    },
}

M.GetMessagingSessionEndpointOutput = {
    type = "structure",
    id = "GetMessagingSessionEndpointOutput",
    members = {
        Endpoint = M.MessagingSessionEndpoint,
    },
}

M.GetMessagingStreamingConfigurationsInput = {
    type = "structure",
    id = "GetMessagingStreamingConfigurationsInput",
    members = {
        AppInstanceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.MessagingDataType = {
    Channel = "Channel",
    ChannelMessage = "ChannelMessage",
}

M.StreamingConfiguration = {
    type = "structure",
    id = "StreamingConfiguration",
    members = {
        DataType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetMessagingStreamingConfigurationsOutput = {
    type = "structure",
    id = "GetMessagingStreamingConfigurationsOutput",
    members = {
        StreamingConfigurations = {
            type = "list",
            member = M.StreamingConfiguration,
        },
    },
}

M.ListChannelBansInput = {
    type = "structure",
    id = "ListChannelBansInput",
    members = {
        ChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
    },
}

M.ListChannelBansOutput = {
    type = "structure",
    id = "ListChannelBansOutput",
    members = {
        ChannelArn = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        ChannelBans = {
            type = "list",
            member = M.ChannelBanSummary,
        },
    },
}

M.ListChannelFlowsInput = {
    type = "structure",
    id = "ListChannelFlowsInput",
    members = {
        AppInstanceArn = {
            type = "string",
            traits = {
                http_query = "app-instance-arn",
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
    },
}

M.ListChannelFlowsOutput = {
    type = "structure",
    id = "ListChannelFlowsOutput",
    members = {
        ChannelFlows = {
            type = "list",
            member = M.ChannelFlowSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListChannelMembershipsInput = {
    type = "structure",
    id = "ListChannelMembershipsInput",
    members = {
        ChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                http_query = "type",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
        SubChannelId = {
            type = "string",
            traits = {
                http_query = "sub-channel-id",
            },
        },
    },
}

M.ListChannelMembershipsOutput = {
    type = "structure",
    id = "ListChannelMembershipsOutput",
    members = {
        ChannelArn = {
            type = "string",
        },
        ChannelMemberships = {
            type = "list",
            member = M.ChannelMembershipSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListChannelMembershipsForAppInstanceUserInput = {
    type = "structure",
    id = "ListChannelMembershipsForAppInstanceUserInput",
    members = {
        AppInstanceUserArn = {
            type = "string",
            traits = {
                http_query = "app-instance-user-arn",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
    },
}

M.ListChannelMembershipsForAppInstanceUserOutput = {
    type = "structure",
    id = "ListChannelMembershipsForAppInstanceUserOutput",
    members = {
        ChannelMemberships = {
            type = "list",
            member = M.ChannelMembershipForAppInstanceUserSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SortOrder = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.ListChannelMessagesInput = {
    type = "structure",
    id = "ListChannelMessagesInput",
    members = {
        ChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SortOrder = {
            type = "string",
            traits = {
                http_query = "sort-order",
            },
        },
        NotBefore = {
            type = "timestamp",
            traits = {
                http_query = "not-before",
            },
        },
        NotAfter = {
            type = "timestamp",
            traits = {
                http_query = "not-after",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
        SubChannelId = {
            type = "string",
            traits = {
                http_query = "sub-channel-id",
            },
        },
    },
}

M.ListChannelMessagesOutput = {
    type = "structure",
    id = "ListChannelMessagesOutput",
    members = {
        ChannelArn = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        ChannelMessages = {
            type = "list",
            member = M.ChannelMessageSummary,
        },
        SubChannelId = {
            type = "string",
        },
    },
}

M.ListChannelModeratorsInput = {
    type = "structure",
    id = "ListChannelModeratorsInput",
    members = {
        ChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
    },
}

M.ListChannelModeratorsOutput = {
    type = "structure",
    id = "ListChannelModeratorsOutput",
    members = {
        ChannelArn = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        ChannelModerators = {
            type = "list",
            member = M.ChannelModeratorSummary,
        },
    },
}

M.ListChannelsInput = {
    type = "structure",
    id = "ListChannelsInput",
    members = {
        AppInstanceArn = {
            type = "string",
            traits = {
                http_query = "app-instance-arn",
                required = true,
            },
        },
        Privacy = {
            type = "string",
            traits = {
                http_query = "privacy",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
    },
}

M.ListChannelsOutput = {
    type = "structure",
    id = "ListChannelsOutput",
    members = {
        Channels = {
            type = "list",
            member = M.ChannelSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListChannelsAssociatedWithChannelFlowInput = {
    type = "structure",
    id = "ListChannelsAssociatedWithChannelFlowInput",
    members = {
        ChannelFlowArn = {
            type = "string",
            traits = {
                http_query = "channel-flow-arn",
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
    },
}

M.ListChannelsAssociatedWithChannelFlowOutput = {
    type = "structure",
    id = "ListChannelsAssociatedWithChannelFlowOutput",
    members = {
        Channels = {
            type = "list",
            member = M.ChannelAssociatedWithFlowSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListChannelsModeratedByAppInstanceUserInput = {
    type = "structure",
    id = "ListChannelsModeratedByAppInstanceUserInput",
    members = {
        AppInstanceUserArn = {
            type = "string",
            traits = {
                http_query = "app-instance-user-arn",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
    },
}

M.ListChannelsModeratedByAppInstanceUserOutput = {
    type = "structure",
    id = "ListChannelsModeratedByAppInstanceUserOutput",
    members = {
        Channels = {
            type = "list",
            member = M.ChannelModeratedByAppInstanceUserSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSubChannelsInput = {
    type = "structure",
    id = "ListSubChannelsInput",
    members = {
        ChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
    },
}

M.SubChannelSummary = {
    type = "structure",
    id = "SubChannelSummary",
    members = {
        SubChannelId = {
            type = "string",
        },
        MembershipCount = {
            type = "integer",
        },
    },
}

M.ListSubChannelsOutput = {
    type = "structure",
    id = "ListSubChannelsOutput",
    members = {
        ChannelArn = {
            type = "string",
        },
        SubChannels = {
            type = "list",
            member = M.SubChannelSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                http_query = "arn",
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutChannelExpirationSettingsInput = {
    type = "structure",
    id = "PutChannelExpirationSettingsInput",
    members = {
        ChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
            },
        },
        ExpirationSettings = M.ExpirationSettings,
    },
}

M.PutChannelExpirationSettingsOutput = {
    type = "structure",
    id = "PutChannelExpirationSettingsOutput",
    members = {
        ChannelArn = {
            type = "string",
        },
        ExpirationSettings = M.ExpirationSettings,
    },
}

M.PutChannelMembershipPreferencesInput = {
    type = "structure",
    id = "PutChannelMembershipPreferencesInput",
    members = {
        ChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MemberArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
        Preferences = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ChannelMembershipPreferences }),
    },
}

M.PutChannelMembershipPreferencesOutput = {
    type = "structure",
    id = "PutChannelMembershipPreferencesOutput",
    members = {
        ChannelArn = {
            type = "string",
        },
        Member = M.Identity,
        Preferences = M.ChannelMembershipPreferences,
    },
}

M.PutMessagingStreamingConfigurationsInput = {
    type = "structure",
    id = "PutMessagingStreamingConfigurationsInput",
    members = {
        AppInstanceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        StreamingConfigurations = {
            type = "list",
            member = M.StreamingConfiguration,
            traits = {
                required = true,
            },
        },
    },
}

M.PutMessagingStreamingConfigurationsOutput = {
    type = "structure",
    id = "PutMessagingStreamingConfigurationsOutput",
    members = {
        StreamingConfigurations = {
            type = "list",
            member = M.StreamingConfiguration,
        },
    },
}

M.RedactChannelMessageInput = {
    type = "structure",
    id = "RedactChannelMessageInput",
    members = {
        ChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MessageId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
        SubChannelId = {
            type = "string",
        },
    },
}

M.RedactChannelMessageOutput = {
    type = "structure",
    id = "RedactChannelMessageOutput",
    members = {
        ChannelArn = {
            type = "string",
        },
        MessageId = {
            type = "string",
        },
        SubChannelId = {
            type = "string",
        },
    },
}

M.SearchFieldKey = {
    MEMBERS = "MEMBERS",
}

M.SearchFieldOperator = {
    EQUALS = "EQUALS",
    INCLUDES = "INCLUDES",
}

M.SearchField = {
    type = "structure",
    id = "SearchField",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchChannelsInput = {
    type = "structure",
    id = "SearchChannelsInput",
    members = {
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
            },
        },
        Fields = {
            type = "list",
            member = M.SearchField,
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
    },
}

M.SearchChannelsOutput = {
    type = "structure",
    id = "SearchChannelsOutput",
    members = {
        Channels = {
            type = "list",
            member = M.ChannelSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SendChannelMessageInput = {
    type = "structure",
    id = "SendChannelMessageInput",
    members = {
        ChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Content = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Persistence = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Metadata = {
            type = "string",
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
        PushNotification = M.PushNotificationConfiguration,
        MessageAttributes = {
            type = "map",
            key = { type = "string" },
            value = M.MessageAttributeValue,
        },
        SubChannelId = {
            type = "string",
        },
        ContentType = {
            type = "string",
        },
        Target = {
            type = "list",
            member = M.Target,
        },
    },
}

M.SendChannelMessageOutput = {
    type = "structure",
    id = "SendChannelMessageOutput",
    members = {
        ChannelArn = {
            type = "string",
        },
        MessageId = {
            type = "string",
        },
        Status = M.ChannelMessageStatusStructure,
        SubChannelId = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
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
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.UpdateChannelInput = {
    type = "structure",
    id = "UpdateChannelInput",
    members = {
        ChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Mode = {
            type = "string",
        },
        Metadata = {
            type = "string",
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
    },
}

M.UpdateChannelOutput = {
    type = "structure",
    id = "UpdateChannelOutput",
    members = {
        ChannelArn = {
            type = "string",
        },
    },
}

M.UpdateChannelFlowInput = {
    type = "structure",
    id = "UpdateChannelFlowInput",
    members = {
        ChannelFlowArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Processors = {
            type = "list",
            member = M.Processor,
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateChannelFlowOutput = {
    type = "structure",
    id = "UpdateChannelFlowOutput",
    members = {
        ChannelFlowArn = {
            type = "string",
        },
    },
}

M.UpdateChannelMessageInput = {
    type = "structure",
    id = "UpdateChannelMessageInput",
    members = {
        ChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MessageId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Content = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Metadata = {
            type = "string",
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
        SubChannelId = {
            type = "string",
        },
        ContentType = {
            type = "string",
        },
    },
}

M.UpdateChannelMessageOutput = {
    type = "structure",
    id = "UpdateChannelMessageOutput",
    members = {
        ChannelArn = {
            type = "string",
        },
        MessageId = {
            type = "string",
        },
        Status = M.ChannelMessageStatusStructure,
        SubChannelId = {
            type = "string",
        },
    },
}

M.UpdateChannelReadMarkerInput = {
    type = "structure",
    id = "UpdateChannelReadMarkerInput",
    members = {
        ChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChimeBearer = {
            type = "string",
            traits = {
                http_header = "x-amz-chime-bearer",
                required = true,
            },
        },
    },
}

M.UpdateChannelReadMarkerOutput = {
    type = "structure",
    id = "UpdateChannelReadMarkerOutput",
    members = {
        ChannelArn = {
            type = "string",
        },
    },
}

return M
