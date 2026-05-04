local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelParticipantAuthenticationInput = {
    type = "structure",
    members = {
        SessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Bearer",
                required = true,
            },
        },
    },
}

M.CancelParticipantAuthenticationOutput = {
    type = "structure",
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CompleteAttachmentUploadInput = {
    type = "structure",
    members = {
        AttachmentIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        ConnectionToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Bearer",
                required = true,
            },
        },
    },
}

M.CompleteAttachmentUploadOutput = {
    type = "structure",
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConnectionType = {
    WEBSOCKET = "WEBSOCKET",
    CONNECTION_CREDENTIALS = "CONNECTION_CREDENTIALS",
    WEBRTC_CONNECTION = "WEBRTC_CONNECTION",
}

M.CreateParticipantConnectionInput = {
    type = "structure",
    members = {
        Type = {
            type = "list",
            member = { type = "string" },
        },
        ParticipantToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Bearer",
                required = true,
            },
        },
        ConnectParticipant = {
            type = "boolean",
        },
    },
}

M.ConnectionCredentials = {
    type = "structure",
    members = {
        ConnectionToken = {
            type = "string",
        },
        Expiry = {
            type = "string",
        },
    },
}

M.Attendee = {
    type = "structure",
    members = {
        AttendeeId = {
            type = "string",
        },
        JoinToken = {
            type = "string",
        },
    },
}

M.WebRTCMediaPlacement = {
    type = "structure",
    members = {
        AudioHostUrl = {
            type = "string",
        },
        AudioFallbackUrl = {
            type = "string",
        },
        SignalingUrl = {
            type = "string",
        },
        EventIngestionUrl = {
            type = "string",
        },
    },
}

M.MeetingFeatureStatus = {
    AVAILABLE = "AVAILABLE",
    UNAVAILABLE = "UNAVAILABLE",
}

M.AudioFeatures = {
    type = "structure",
    members = {
        EchoReduction = {
            type = "string",
        },
    },
}

M.MeetingFeaturesConfiguration = {
    type = "structure",
    members = {
        Audio = M.AudioFeatures,
    },
}

M.WebRTCMeeting = {
    type = "structure",
    members = {
        MediaPlacement = M.WebRTCMediaPlacement,
        MeetingFeatures = M.MeetingFeaturesConfiguration,
        MeetingId = {
            type = "string",
        },
    },
}

M.WebRTCConnection = {
    type = "structure",
    members = {
        Attendee = M.Attendee,
        Meeting = M.WebRTCMeeting,
    },
}

M.Websocket = {
    type = "structure",
    members = {
        Url = {
            type = "string",
        },
        ConnectionExpiry = {
            type = "string",
        },
    },
}

M.CreateParticipantConnectionOutput = {
    type = "structure",
    members = {
        Websocket = M.Websocket,
        ConnectionCredentials = M.ConnectionCredentials,
        WebRTCConnection = M.WebRTCConnection,
    },
}

M.DescribeViewInput = {
    type = "structure",
    members = {
        ViewToken = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ConnectionToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Bearer",
                required = true,
            },
        },
    },
}

M.ViewContent = {
    type = "structure",
    members = {
        InputSchema = {
            type = "string",
        },
        Template = {
            type = "string",
        },
        Actions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.View = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Version = {
            type = "integer",
        },
        Content = M.ViewContent,
    },
}

M.DescribeViewOutput = {
    type = "structure",
    members = {
        View = M.View,
    },
}

M.ResourceType = {
    CONTACT = "CONTACT",
    CONTACT_FLOW = "CONTACT_FLOW",
    INSTANCE = "INSTANCE",
    PARTICIPANT = "PARTICIPANT",
    HIERARCHY_LEVEL = "HIERARCHY_LEVEL",
    HIERARCHY_GROUP = "HIERARCHY_GROUP",
    USER = "USER",
    PHONE_NUMBER = "PHONE_NUMBER",
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
    },
}

M.DisconnectParticipantInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        ConnectionToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Bearer",
                required = true,
            },
        },
    },
}

M.DisconnectParticipantOutput = {
    type = "structure",
}

M.GetAttachmentInput = {
    type = "structure",
    members = {
        AttachmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Bearer",
                required = true,
            },
        },
        UrlExpiryInSeconds = {
            type = "integer",
        },
    },
}

M.GetAttachmentOutput = {
    type = "structure",
    members = {
        Url = {
            type = "string",
        },
        UrlExpiry = {
            type = "string",
        },
        AttachmentSizeInBytes = {
            type = "long",
            traits = {
                default = nil,
                required = true,
            },
        },
    },
}

M.GetAuthenticationUrlInput = {
    type = "structure",
    members = {
        SessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RedirectUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Bearer",
                required = true,
            },
        },
    },
}

M.GetAuthenticationUrlOutput = {
    type = "structure",
    members = {
        AuthenticationUrl = {
            type = "string",
        },
    },
}

M.ScanDirection = {
    FORWARD = "FORWARD",
    BACKWARD = "BACKWARD",
}

M.SortKey = {
    DESCENDING = "DESCENDING",
    ASCENDING = "ASCENDING",
}

M.StartPosition = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        AbsoluteTime = {
            type = "string",
        },
        MostRecent = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.GetTranscriptInput = {
    type = "structure",
    members = {
        ContactId = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        NextToken = {
            type = "string",
        },
        ScanDirection = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        StartPosition = M.StartPosition,
        ConnectionToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Bearer",
                required = true,
            },
        },
    },
}

M.ArtifactStatus = {
    APPROVED = "APPROVED",
    REJECTED = "REJECTED",
    IN_PROGRESS = "IN_PROGRESS",
}

M.AttachmentItem = {
    type = "structure",
    members = {
        ContentType = {
            type = "string",
        },
        AttachmentId = {
            type = "string",
        },
        AttachmentName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.MessageProcessingStatus = {
    PROCESSING = "PROCESSING",
    FAILED = "FAILED",
    REJECTED = "REJECTED",
}

M.Receipt = {
    type = "structure",
    members = {
        DeliveredTimestamp = {
            type = "string",
        },
        ReadTimestamp = {
            type = "string",
        },
        RecipientParticipantId = {
            type = "string",
        },
    },
}

M.MessageMetadata = {
    type = "structure",
    members = {
        MessageId = {
            type = "string",
        },
        Receipts = {
            type = "list",
            member = M.Receipt,
        },
        MessageProcessingStatus = {
            type = "string",
        },
    },
}

M.ParticipantRole = {
    AGENT = "AGENT",
    CUSTOMER = "CUSTOMER",
    SYSTEM = "SYSTEM",
    CUSTOM_BOT = "CUSTOM_BOT",
    SUPERVISOR = "SUPERVISOR",
}

M.ChatItemType = {
    TYPING = "TYPING",
    PARTICIPANT_JOINED = "PARTICIPANT_JOINED",
    PARTICIPANT_LEFT = "PARTICIPANT_LEFT",
    CHAT_ENDED = "CHAT_ENDED",
    TRANSFER_SUCCEEDED = "TRANSFER_SUCCEEDED",
    TRANSFER_FAILED = "TRANSFER_FAILED",
    MESSAGE = "MESSAGE",
    EVENT = "EVENT",
    ATTACHMENT = "ATTACHMENT",
    CONNECTION_ACK = "CONNECTION_ACK",
    MESSAGE_DELIVERED = "MESSAGE_DELIVERED",
    MESSAGE_READ = "MESSAGE_READ",
}

M.Item = {
    type = "structure",
    members = {
        AbsoluteTime = {
            type = "string",
        },
        Content = {
            type = "string",
        },
        ContentType = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        ParticipantId = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        ParticipantRole = {
            type = "string",
        },
        Attachments = {
            type = "list",
            member = M.AttachmentItem,
        },
        MessageMetadata = M.MessageMetadata,
        RelatedContactId = {
            type = "string",
        },
        ContactId = {
            type = "string",
        },
    },
}

M.GetTranscriptOutput = {
    type = "structure",
    members = {
        InitialContactId = {
            type = "string",
        },
        Transcript = {
            type = "list",
            member = M.Item,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SendEventInput = {
    type = "structure",
    members = {
        ContentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Content = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        ConnectionToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Bearer",
                required = true,
            },
        },
    },
}

M.SendEventOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        AbsoluteTime = {
            type = "string",
        },
    },
}

M.SendMessageInput = {
    type = "structure",
    members = {
        ContentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Content = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        ConnectionToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Bearer",
                required = true,
            },
        },
    },
}

M.MessageProcessingMetadata = {
    type = "structure",
    members = {
        MessageProcessingStatus = {
            type = "string",
        },
    },
}

M.SendMessageOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        AbsoluteTime = {
            type = "string",
        },
        MessageMetadata = M.MessageProcessingMetadata,
    },
}

M.StartAttachmentUploadInput = {
    type = "structure",
    members = {
        ContentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttachmentSizeInBytes = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        AttachmentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        ConnectionToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Bearer",
                required = true,
            },
        },
    },
}

M.UploadMetadata = {
    type = "structure",
    members = {
        Url = {
            type = "string",
        },
        UrlExpiry = {
            type = "string",
        },
        HeadersToInclude = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartAttachmentUploadOutput = {
    type = "structure",
    members = {
        AttachmentId = {
            type = "string",
        },
        UploadMetadata = M.UploadMetadata,
    },
}

return M
