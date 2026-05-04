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
    members = {
        Member = M.Identity,
    },
}

M.InvocationType = {
    ASYNC = "ASYNC",
}

M.LambdaConfiguration = {
    type = "structure",
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
    members = {
        CallbackId = {
            type = "string",
            traits = {
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
    members = {
        ChannelSummary = M.ChannelSummary,
        AppInstanceUserMembershipSummary = M.AppInstanceUserMembershipSummary,
    },
}

M.PushNotificationPreferences = {
    type = "structure",
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
    members = {
        PushNotifications = M.PushNotificationPreferences,
    },
}

M.ChannelMembershipSummary = {
    type = "structure",
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
    members = {
        ChannelSummary = M.ChannelSummary,
    },
}

M.ChannelModerator = {
    type = "structure",
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
    members = {
        Moderator = M.Identity,
    },
}

M.Tag = {
    type = "structure",
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
    members = {
        ChannelArn = {
            type = "string",
        },
    },
}

M.CreateChannelBanInput = {
    type = "structure",
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
    members = {
        ChannelArn = {
            type = "string",
        },
        Member = M.Identity,
    },
}

M.CreateChannelFlowInput = {
    type = "structure",
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
                required = true,
            },
        },
    },
}

M.CreateChannelFlowOutput = {
    type = "structure",
    members = {
        ChannelFlowArn = {
            type = "string",
        },
    },
}

M.CreateChannelMembershipInput = {
    type = "structure",
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
    members = {
        ChannelArn = {
            type = "string",
        },
        ChannelModerator = M.Identity,
    },
}

M.DeleteChannelInput = {
    type = "structure",
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
}

M.DeleteChannelBanInput = {
    type = "structure",
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
}

M.DeleteChannelFlowInput = {
    type = "structure",
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
}

M.DeleteChannelMembershipInput = {
    type = "structure",
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
}

M.DeleteChannelMessageInput = {
    type = "structure",
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
}

M.DeleteChannelModeratorInput = {
    type = "structure",
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
}

M.DeleteMessagingStreamingConfigurationsInput = {
    type = "structure",
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
}

M.DescribeChannelInput = {
    type = "structure",
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
    members = {
        Channel = M.Channel,
    },
}

M.DescribeChannelBanInput = {
    type = "structure",
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
    members = {
        ChannelBan = M.ChannelBan,
    },
}

M.DescribeChannelFlowInput = {
    type = "structure",
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
    members = {
        ChannelFlow = M.ChannelFlow,
    },
}

M.DescribeChannelMembershipInput = {
    type = "structure",
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
    members = {
        ChannelMembership = M.ChannelMembership,
    },
}

M.DescribeChannelMembershipForAppInstanceUserInput = {
    type = "structure",
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
    members = {
        ChannelMembership = M.ChannelMembershipForAppInstanceUserSummary,
    },
}

M.DescribeChannelModeratedByAppInstanceUserInput = {
    type = "structure",
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
    members = {
        Channel = M.ChannelModeratedByAppInstanceUserSummary,
    },
}

M.DescribeChannelModeratorInput = {
    type = "structure",
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
    members = {
        ChannelModerator = M.ChannelModerator,
    },
}

M.DisassociateChannelFlowInput = {
    type = "structure",
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
}

M.GetChannelMembershipPreferencesInput = {
    type = "structure",
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
    members = {
        ChannelMessage = M.ChannelMessage,
    },
}

M.GetChannelMessageStatusInput = {
    type = "structure",
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
    members = {
        Url = {
            type = "string",
        },
    },
}

M.GetMessagingSessionEndpointOutput = {
    type = "structure",
    members = {
        Endpoint = M.MessagingSessionEndpoint,
    },
}

M.GetMessagingStreamingConfigurationsInput = {
    type = "structure",
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
    members = {
        StreamingConfigurations = {
            type = "list",
            member = M.StreamingConfiguration,
        },
    },
}

M.ListChannelBansInput = {
    type = "structure",
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
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutChannelExpirationSettingsInput = {
    type = "structure",
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
    members = {
        ChannelArn = {
            type = "string",
        },
        ExpirationSettings = M.ExpirationSettings,
    },
}

M.PutChannelMembershipPreferencesInput = {
    type = "structure",
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
    members = {
        StreamingConfigurations = {
            type = "list",
            member = M.StreamingConfiguration,
        },
    },
}

M.RedactChannelMessageInput = {
    type = "structure",
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
}

M.UntagResourceInput = {
    type = "structure",
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
}

M.UpdateChannelInput = {
    type = "structure",
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
    members = {
        ChannelArn = {
            type = "string",
        },
    },
}

M.UpdateChannelFlowInput = {
    type = "structure",
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
    members = {
        ChannelFlowArn = {
            type = "string",
        },
    },
}

M.UpdateChannelMessageInput = {
    type = "structure",
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
    members = {
        ChannelArn = {
            type = "string",
        },
    },
}

return M
