local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.connectparticipant"

local M = {}

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "AccessDeniedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CancelParticipantAuthenticationInput = schema.new({
    id = id.from(_N, "CancelParticipantAuthenticationRequest"),
    type = "structure",
    members = {
        SessionId = schema.new({
            id = id.from(_N, "CancelParticipantAuthenticationInput", "SessionId"),
            type = "string",
            name = "SessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConnectionToken = schema.new({
            id = id.from(_N, "CancelParticipantAuthenticationInput", "ConnectionToken"),
            type = "string",
            name = "ConnectionToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "X-Amz-Bearer" },
            },
        }),
    },
})

M.CancelParticipantAuthenticationOutput = schema.new({
    id = id.from(_N, "CancelParticipantAuthenticationResponse"),
    type = "structure",
})

M.InternalServerException = schema.new({
    id = id.from(_N, "InternalServerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InternalServerException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
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
        Message = schema.new({
            id = id.from(_N, "ThrottlingException", "Message"),
            type = "string",
            name = "Message",
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
        Message = schema.new({
            id = id.from(_N, "ValidationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CompleteAttachmentUploadInput = schema.new({
    id = id.from(_N, "CompleteAttachmentUploadRequest"),
    type = "structure",
    members = {
        AttachmentIds = schema.new({
            id = id.from(_N, "CompleteAttachmentUploadInput", "AttachmentIds"),
            type = "list",
            name = "AttachmentIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CompleteAttachmentUploadInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        ConnectionToken = schema.new({
            id = id.from(_N, "CompleteAttachmentUploadInput", "ConnectionToken"),
            type = "string",
            name = "ConnectionToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "X-Amz-Bearer" },
            },
        }),
    },
})

M.CompleteAttachmentUploadOutput = schema.new({
    id = id.from(_N, "CompleteAttachmentUploadResponse"),
    type = "structure",
})

M.ConflictException = schema.new({
    id = id.from(_N, "ConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ConflictException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
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
        Message = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateParticipantConnectionInput = schema.new({
    id = id.from(_N, "CreateParticipantConnectionRequest"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "CreateParticipantConnectionInput", "Type"),
            type = "list",
            name = "Type",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ParticipantToken = schema.new({
            id = id.from(_N, "CreateParticipantConnectionInput", "ParticipantToken"),
            type = "string",
            name = "ParticipantToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "X-Amz-Bearer" },
            },
        }),
        ConnectParticipant = schema.new({
            id = id.from(_N, "CreateParticipantConnectionInput", "ConnectParticipant"),
            type = "boolean",
            name = "ConnectParticipant",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ConnectionCredentials = schema.new({
    id = id.from(_N, "ConnectionCredentials"),
    type = "structure",
    members = {
        ConnectionToken = schema.new({
            id = id.from(_N, "ConnectionCredentials", "ConnectionToken"),
            type = "string",
            name = "ConnectionToken",
            target_id = prelude.String.id,
        }),
        Expiry = schema.new({
            id = id.from(_N, "ConnectionCredentials", "Expiry"),
            type = "string",
            name = "Expiry",
            target_id = prelude.String.id,
        }),
    },
})

M.Attendee = schema.new({
    id = id.from(_N, "Attendee"),
    type = "structure",
    members = {
        AttendeeId = schema.new({
            id = id.from(_N, "Attendee", "AttendeeId"),
            type = "string",
            name = "AttendeeId",
            target_id = prelude.String.id,
        }),
        JoinToken = schema.new({
            id = id.from(_N, "Attendee", "JoinToken"),
            type = "string",
            name = "JoinToken",
            target_id = prelude.String.id,
        }),
    },
})

M.WebRTCMediaPlacement = schema.new({
    id = id.from(_N, "WebRTCMediaPlacement"),
    type = "structure",
    members = {
        AudioHostUrl = schema.new({
            id = id.from(_N, "WebRTCMediaPlacement", "AudioHostUrl"),
            type = "string",
            name = "AudioHostUrl",
            target_id = prelude.String.id,
        }),
        AudioFallbackUrl = schema.new({
            id = id.from(_N, "WebRTCMediaPlacement", "AudioFallbackUrl"),
            type = "string",
            name = "AudioFallbackUrl",
            target_id = prelude.String.id,
        }),
        SignalingUrl = schema.new({
            id = id.from(_N, "WebRTCMediaPlacement", "SignalingUrl"),
            type = "string",
            name = "SignalingUrl",
            target_id = prelude.String.id,
        }),
        EventIngestionUrl = schema.new({
            id = id.from(_N, "WebRTCMediaPlacement", "EventIngestionUrl"),
            type = "string",
            name = "EventIngestionUrl",
            target_id = prelude.String.id,
        }),
    },
})

M.AudioFeatures = schema.new({
    id = id.from(_N, "AudioFeatures"),
    type = "structure",
    members = {
        EchoReduction = schema.new({
            id = id.from(_N, "AudioFeatures", "EchoReduction"),
            type = "string",
            name = "EchoReduction",
            target_id = prelude.String.id,
        }),
    },
})

M.MeetingFeaturesConfiguration = schema.new({
    id = id.from(_N, "MeetingFeaturesConfiguration"),
    type = "structure",
    members = {
        Audio = schema.new({
            id = id.from(_N, "MeetingFeaturesConfiguration", "Audio"),
            type = "structure",
            name = "Audio",
            target_id = id.from(_N, "AudioFeatures"),
            target = M.AudioFeatures,
        }),
    },
})

M.WebRTCMeeting = schema.new({
    id = id.from(_N, "WebRTCMeeting"),
    type = "structure",
    members = {
        MediaPlacement = schema.new({
            id = id.from(_N, "WebRTCMeeting", "MediaPlacement"),
            type = "structure",
            name = "MediaPlacement",
            target_id = id.from(_N, "WebRTCMediaPlacement"),
            target = M.WebRTCMediaPlacement,
        }),
        MeetingFeatures = schema.new({
            id = id.from(_N, "WebRTCMeeting", "MeetingFeatures"),
            type = "structure",
            name = "MeetingFeatures",
            target_id = id.from(_N, "MeetingFeaturesConfiguration"),
            target = M.MeetingFeaturesConfiguration,
        }),
        MeetingId = schema.new({
            id = id.from(_N, "WebRTCMeeting", "MeetingId"),
            type = "string",
            name = "MeetingId",
            target_id = prelude.String.id,
        }),
    },
})

M.WebRTCConnection = schema.new({
    id = id.from(_N, "WebRTCConnection"),
    type = "structure",
    members = {
        Attendee = schema.new({
            id = id.from(_N, "WebRTCConnection", "Attendee"),
            type = "structure",
            name = "Attendee",
            target_id = id.from(_N, "Attendee"),
            target = M.Attendee,
        }),
        Meeting = schema.new({
            id = id.from(_N, "WebRTCConnection", "Meeting"),
            type = "structure",
            name = "Meeting",
            target_id = id.from(_N, "WebRTCMeeting"),
            target = M.WebRTCMeeting,
        }),
    },
})

M.Websocket = schema.new({
    id = id.from(_N, "Websocket"),
    type = "structure",
    members = {
        Url = schema.new({
            id = id.from(_N, "Websocket", "Url"),
            type = "string",
            name = "Url",
            target_id = prelude.String.id,
        }),
        ConnectionExpiry = schema.new({
            id = id.from(_N, "Websocket", "ConnectionExpiry"),
            type = "string",
            name = "ConnectionExpiry",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateParticipantConnectionOutput = schema.new({
    id = id.from(_N, "CreateParticipantConnectionResponse"),
    type = "structure",
    members = {
        Websocket = schema.new({
            id = id.from(_N, "CreateParticipantConnectionOutput", "Websocket"),
            type = "structure",
            name = "Websocket",
            target_id = id.from(_N, "Websocket"),
            target = M.Websocket,
        }),
        ConnectionCredentials = schema.new({
            id = id.from(_N, "CreateParticipantConnectionOutput", "ConnectionCredentials"),
            type = "structure",
            name = "ConnectionCredentials",
            target_id = id.from(_N, "ConnectionCredentials"),
            target = M.ConnectionCredentials,
        }),
        WebRTCConnection = schema.new({
            id = id.from(_N, "CreateParticipantConnectionOutput", "WebRTCConnection"),
            type = "structure",
            name = "WebRTCConnection",
            target_id = id.from(_N, "WebRTCConnection"),
            target = M.WebRTCConnection,
        }),
    },
})

M.DescribeViewInput = schema.new({
    id = id.from(_N, "DescribeViewRequest"),
    type = "structure",
    members = {
        ViewToken = schema.new({
            id = id.from(_N, "DescribeViewInput", "ViewToken"),
            type = "string",
            name = "ViewToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ConnectionToken = schema.new({
            id = id.from(_N, "DescribeViewInput", "ConnectionToken"),
            type = "string",
            name = "ConnectionToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "X-Amz-Bearer" },
            },
        }),
    },
})

M.ViewContent = schema.new({
    id = id.from(_N, "ViewContent"),
    type = "structure",
    members = {
        InputSchema = schema.new({
            id = id.from(_N, "ViewContent", "InputSchema"),
            type = "string",
            name = "InputSchema",
            target_id = prelude.String.id,
        }),
        Template = schema.new({
            id = id.from(_N, "ViewContent", "Template"),
            type = "string",
            name = "Template",
            target_id = prelude.String.id,
        }),
        Actions = schema.new({
            id = id.from(_N, "ViewContent", "Actions"),
            type = "list",
            name = "Actions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.View = schema.new({
    id = id.from(_N, "View"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "View", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "View", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "View", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Version = schema.new({
            id = id.from(_N, "View", "Version"),
            type = "integer",
            name = "Version",
            target_id = prelude.Integer.id,
        }),
        Content = schema.new({
            id = id.from(_N, "View", "Content"),
            type = "structure",
            name = "Content",
            target_id = id.from(_N, "ViewContent"),
            target = M.ViewContent,
        }),
    },
})

M.DescribeViewOutput = schema.new({
    id = id.from(_N, "DescribeViewResponse"),
    type = "structure",
    members = {
        View = schema.new({
            id = id.from(_N, "DescribeViewOutput", "View"),
            type = "structure",
            name = "View",
            target_id = id.from(_N, "View"),
            target = M.View,
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
        Message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
    },
})

M.DisconnectParticipantInput = schema.new({
    id = id.from(_N, "DisconnectParticipantRequest"),
    type = "structure",
    members = {
        ClientToken = schema.new({
            id = id.from(_N, "DisconnectParticipantInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        ConnectionToken = schema.new({
            id = id.from(_N, "DisconnectParticipantInput", "ConnectionToken"),
            type = "string",
            name = "ConnectionToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "X-Amz-Bearer" },
            },
        }),
    },
})

M.DisconnectParticipantOutput = schema.new({
    id = id.from(_N, "DisconnectParticipantResponse"),
    type = "structure",
})

M.GetAttachmentInput = schema.new({
    id = id.from(_N, "GetAttachmentRequest"),
    type = "structure",
    members = {
        AttachmentId = schema.new({
            id = id.from(_N, "GetAttachmentInput", "AttachmentId"),
            type = "string",
            name = "AttachmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConnectionToken = schema.new({
            id = id.from(_N, "GetAttachmentInput", "ConnectionToken"),
            type = "string",
            name = "ConnectionToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "X-Amz-Bearer" },
            },
        }),
        UrlExpiryInSeconds = schema.new({
            id = id.from(_N, "GetAttachmentInput", "UrlExpiryInSeconds"),
            type = "integer",
            name = "UrlExpiryInSeconds",
            target_id = prelude.Integer.id,
        }),
    },
})

M.GetAttachmentOutput = schema.new({
    id = id.from(_N, "GetAttachmentResponse"),
    type = "structure",
    members = {
        Url = schema.new({
            id = id.from(_N, "GetAttachmentOutput", "Url"),
            type = "string",
            name = "Url",
            target_id = prelude.String.id,
        }),
        UrlExpiry = schema.new({
            id = id.from(_N, "GetAttachmentOutput", "UrlExpiry"),
            type = "string",
            name = "UrlExpiry",
            target_id = prelude.String.id,
        }),
        AttachmentSizeInBytes = schema.new({
            id = id.from(_N, "GetAttachmentOutput", "AttachmentSizeInBytes"),
            type = "long",
            name = "AttachmentSizeInBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.GetAuthenticationUrlInput = schema.new({
    id = id.from(_N, "GetAuthenticationUrlRequest"),
    type = "structure",
    members = {
        SessionId = schema.new({
            id = id.from(_N, "GetAuthenticationUrlInput", "SessionId"),
            type = "string",
            name = "SessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RedirectUri = schema.new({
            id = id.from(_N, "GetAuthenticationUrlInput", "RedirectUri"),
            type = "string",
            name = "RedirectUri",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConnectionToken = schema.new({
            id = id.from(_N, "GetAuthenticationUrlInput", "ConnectionToken"),
            type = "string",
            name = "ConnectionToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "X-Amz-Bearer" },
            },
        }),
    },
})

M.GetAuthenticationUrlOutput = schema.new({
    id = id.from(_N, "GetAuthenticationUrlResponse"),
    type = "structure",
    members = {
        AuthenticationUrl = schema.new({
            id = id.from(_N, "GetAuthenticationUrlOutput", "AuthenticationUrl"),
            type = "string",
            name = "AuthenticationUrl",
            target_id = prelude.String.id,
        }),
    },
})

M.StartPosition = schema.new({
    id = id.from(_N, "StartPosition"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "StartPosition", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        AbsoluteTime = schema.new({
            id = id.from(_N, "StartPosition", "AbsoluteTime"),
            type = "string",
            name = "AbsoluteTime",
            target_id = prelude.String.id,
        }),
        MostRecent = schema.new({
            id = id.from(_N, "StartPosition", "MostRecent"),
            type = "integer",
            name = "MostRecent",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.GetTranscriptInput = schema.new({
    id = id.from(_N, "GetTranscriptRequest"),
    type = "structure",
    members = {
        ContactId = schema.new({
            id = id.from(_N, "GetTranscriptInput", "ContactId"),
            type = "string",
            name = "ContactId",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetTranscriptInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetTranscriptInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        ScanDirection = schema.new({
            id = id.from(_N, "GetTranscriptInput", "ScanDirection"),
            type = "string",
            name = "ScanDirection",
            target_id = prelude.String.id,
        }),
        SortOrder = schema.new({
            id = id.from(_N, "GetTranscriptInput", "SortOrder"),
            type = "string",
            name = "SortOrder",
            target_id = prelude.String.id,
        }),
        StartPosition = schema.new({
            id = id.from(_N, "GetTranscriptInput", "StartPosition"),
            type = "structure",
            name = "StartPosition",
            target_id = id.from(_N, "StartPosition"),
            target = M.StartPosition,
        }),
        ConnectionToken = schema.new({
            id = id.from(_N, "GetTranscriptInput", "ConnectionToken"),
            type = "string",
            name = "ConnectionToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "X-Amz-Bearer" },
            },
        }),
    },
})

M.AttachmentItem = schema.new({
    id = id.from(_N, "AttachmentItem"),
    type = "structure",
    members = {
        ContentType = schema.new({
            id = id.from(_N, "AttachmentItem", "ContentType"),
            type = "string",
            name = "ContentType",
            target_id = prelude.String.id,
        }),
        AttachmentId = schema.new({
            id = id.from(_N, "AttachmentItem", "AttachmentId"),
            type = "string",
            name = "AttachmentId",
            target_id = prelude.String.id,
        }),
        AttachmentName = schema.new({
            id = id.from(_N, "AttachmentItem", "AttachmentName"),
            type = "string",
            name = "AttachmentName",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "AttachmentItem", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.Receipt = schema.new({
    id = id.from(_N, "Receipt"),
    type = "structure",
    members = {
        DeliveredTimestamp = schema.new({
            id = id.from(_N, "Receipt", "DeliveredTimestamp"),
            type = "string",
            name = "DeliveredTimestamp",
            target_id = prelude.String.id,
        }),
        ReadTimestamp = schema.new({
            id = id.from(_N, "Receipt", "ReadTimestamp"),
            type = "string",
            name = "ReadTimestamp",
            target_id = prelude.String.id,
        }),
        RecipientParticipantId = schema.new({
            id = id.from(_N, "Receipt", "RecipientParticipantId"),
            type = "string",
            name = "RecipientParticipantId",
            target_id = prelude.String.id,
        }),
    },
})

M.MessageMetadata = schema.new({
    id = id.from(_N, "MessageMetadata"),
    type = "structure",
    members = {
        MessageId = schema.new({
            id = id.from(_N, "MessageMetadata", "MessageId"),
            type = "string",
            name = "MessageId",
            target_id = prelude.String.id,
        }),
        Receipts = schema.new({
            id = id.from(_N, "MessageMetadata", "Receipts"),
            type = "list",
            name = "Receipts",
            target_id = prelude.Document.id,
            list_member = M.Receipt,
        }),
        MessageProcessingStatus = schema.new({
            id = id.from(_N, "MessageMetadata", "MessageProcessingStatus"),
            type = "string",
            name = "MessageProcessingStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.Item = schema.new({
    id = id.from(_N, "Item"),
    type = "structure",
    members = {
        AbsoluteTime = schema.new({
            id = id.from(_N, "Item", "AbsoluteTime"),
            type = "string",
            name = "AbsoluteTime",
            target_id = prelude.String.id,
        }),
        Content = schema.new({
            id = id.from(_N, "Item", "Content"),
            type = "string",
            name = "Content",
            target_id = prelude.String.id,
        }),
        ContentType = schema.new({
            id = id.from(_N, "Item", "ContentType"),
            type = "string",
            name = "ContentType",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "Item", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "Item", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        ParticipantId = schema.new({
            id = id.from(_N, "Item", "ParticipantId"),
            type = "string",
            name = "ParticipantId",
            target_id = prelude.String.id,
        }),
        DisplayName = schema.new({
            id = id.from(_N, "Item", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
        }),
        ParticipantRole = schema.new({
            id = id.from(_N, "Item", "ParticipantRole"),
            type = "string",
            name = "ParticipantRole",
            target_id = prelude.String.id,
        }),
        Attachments = schema.new({
            id = id.from(_N, "Item", "Attachments"),
            type = "list",
            name = "Attachments",
            target_id = prelude.Document.id,
            list_member = M.AttachmentItem,
        }),
        MessageMetadata = schema.new({
            id = id.from(_N, "Item", "MessageMetadata"),
            type = "structure",
            name = "MessageMetadata",
            target_id = id.from(_N, "MessageMetadata"),
            target = M.MessageMetadata,
        }),
        RelatedContactId = schema.new({
            id = id.from(_N, "Item", "RelatedContactId"),
            type = "string",
            name = "RelatedContactId",
            target_id = prelude.String.id,
        }),
        ContactId = schema.new({
            id = id.from(_N, "Item", "ContactId"),
            type = "string",
            name = "ContactId",
            target_id = prelude.String.id,
        }),
    },
})

M.GetTranscriptOutput = schema.new({
    id = id.from(_N, "GetTranscriptResponse"),
    type = "structure",
    members = {
        InitialContactId = schema.new({
            id = id.from(_N, "GetTranscriptOutput", "InitialContactId"),
            type = "string",
            name = "InitialContactId",
            target_id = prelude.String.id,
        }),
        Transcript = schema.new({
            id = id.from(_N, "GetTranscriptOutput", "Transcript"),
            type = "list",
            name = "Transcript",
            target_id = prelude.Document.id,
            list_member = M.Item,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetTranscriptOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.SendEventInput = schema.new({
    id = id.from(_N, "SendEventRequest"),
    type = "structure",
    members = {
        ContentType = schema.new({
            id = id.from(_N, "SendEventInput", "ContentType"),
            type = "string",
            name = "ContentType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Content = schema.new({
            id = id.from(_N, "SendEventInput", "Content"),
            type = "string",
            name = "Content",
            target_id = prelude.String.id,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "SendEventInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        ConnectionToken = schema.new({
            id = id.from(_N, "SendEventInput", "ConnectionToken"),
            type = "string",
            name = "ConnectionToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "X-Amz-Bearer" },
            },
        }),
    },
})

M.SendEventOutput = schema.new({
    id = id.from(_N, "SendEventResponse"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "SendEventOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        AbsoluteTime = schema.new({
            id = id.from(_N, "SendEventOutput", "AbsoluteTime"),
            type = "string",
            name = "AbsoluteTime",
            target_id = prelude.String.id,
        }),
    },
})

M.SendMessageInput = schema.new({
    id = id.from(_N, "SendMessageRequest"),
    type = "structure",
    members = {
        ContentType = schema.new({
            id = id.from(_N, "SendMessageInput", "ContentType"),
            type = "string",
            name = "ContentType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Content = schema.new({
            id = id.from(_N, "SendMessageInput", "Content"),
            type = "string",
            name = "Content",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "SendMessageInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        ConnectionToken = schema.new({
            id = id.from(_N, "SendMessageInput", "ConnectionToken"),
            type = "string",
            name = "ConnectionToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "X-Amz-Bearer" },
            },
        }),
    },
})

M.MessageProcessingMetadata = schema.new({
    id = id.from(_N, "MessageProcessingMetadata"),
    type = "structure",
    members = {
        MessageProcessingStatus = schema.new({
            id = id.from(_N, "MessageProcessingMetadata", "MessageProcessingStatus"),
            type = "string",
            name = "MessageProcessingStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.SendMessageOutput = schema.new({
    id = id.from(_N, "SendMessageResponse"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "SendMessageOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        AbsoluteTime = schema.new({
            id = id.from(_N, "SendMessageOutput", "AbsoluteTime"),
            type = "string",
            name = "AbsoluteTime",
            target_id = prelude.String.id,
        }),
        MessageMetadata = schema.new({
            id = id.from(_N, "SendMessageOutput", "MessageMetadata"),
            type = "structure",
            name = "MessageMetadata",
            target_id = id.from(_N, "MessageProcessingMetadata"),
            target = M.MessageProcessingMetadata,
        }),
    },
})

M.StartAttachmentUploadInput = schema.new({
    id = id.from(_N, "StartAttachmentUploadRequest"),
    type = "structure",
    members = {
        ContentType = schema.new({
            id = id.from(_N, "StartAttachmentUploadInput", "ContentType"),
            type = "string",
            name = "ContentType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AttachmentSizeInBytes = schema.new({
            id = id.from(_N, "StartAttachmentUploadInput", "AttachmentSizeInBytes"),
            type = "long",
            name = "AttachmentSizeInBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        AttachmentName = schema.new({
            id = id.from(_N, "StartAttachmentUploadInput", "AttachmentName"),
            type = "string",
            name = "AttachmentName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "StartAttachmentUploadInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        ConnectionToken = schema.new({
            id = id.from(_N, "StartAttachmentUploadInput", "ConnectionToken"),
            type = "string",
            name = "ConnectionToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "X-Amz-Bearer" },
            },
        }),
    },
})

M.UploadMetadata = schema.new({
    id = id.from(_N, "UploadMetadata"),
    type = "structure",
    members = {
        Url = schema.new({
            id = id.from(_N, "UploadMetadata", "Url"),
            type = "string",
            name = "Url",
            target_id = prelude.String.id,
        }),
        UrlExpiry = schema.new({
            id = id.from(_N, "UploadMetadata", "UrlExpiry"),
            type = "string",
            name = "UrlExpiry",
            target_id = prelude.String.id,
        }),
        HeadersToInclude = schema.new({
            id = id.from(_N, "UploadMetadata", "HeadersToInclude"),
            type = "map",
            name = "HeadersToInclude",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.StartAttachmentUploadOutput = schema.new({
    id = id.from(_N, "StartAttachmentUploadResponse"),
    type = "structure",
    members = {
        AttachmentId = schema.new({
            id = id.from(_N, "StartAttachmentUploadOutput", "AttachmentId"),
            type = "string",
            name = "AttachmentId",
            target_id = prelude.String.id,
        }),
        UploadMetadata = schema.new({
            id = id.from(_N, "StartAttachmentUploadOutput", "UploadMetadata"),
            type = "structure",
            name = "UploadMetadata",
            target_id = id.from(_N, "UploadMetadata"),
            target = M.UploadMetadata,
        }),
    },
})

-- Fix forward references for recursive schemas
for _, s in pairs(M) do
    if type(s) == "table" and (s.type == "structure" or s.type == "union") then
        local members = rawget(s, "_members")
        if members then
            for _, ms in pairs(members) do
                if (ms.type == "structure" or ms.type == "union") and not rawget(ms, "_target") and ms.target_id then
                    rawset(ms, "_target", M[ms.target_id.name])
                end
            end
        end
    end
end

return M
