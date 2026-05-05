local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.chimesdkmeetings"

local M = {}

M.AttendeeCapabilities = schema.new({
    id = id.from(_N, "AttendeeCapabilities"),
    type = "structure",
    members = {
        Audio = schema.new({
            id = id.from(_N, "AttendeeCapabilities", "Audio"),
            type = "string",
            name = "Audio",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Video = schema.new({
            id = id.from(_N, "AttendeeCapabilities", "Video"),
            type = "string",
            name = "Video",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Content = schema.new({
            id = id.from(_N, "AttendeeCapabilities", "Content"),
            type = "string",
            name = "Content",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Attendee = schema.new({
    id = id.from(_N, "Attendee"),
    type = "structure",
    members = {
        ExternalUserId = schema.new({
            id = id.from(_N, "Attendee", "ExternalUserId"),
            type = "string",
            name = "ExternalUserId",
            target_id = prelude.String.id,
        }),
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
        Capabilities = schema.new({
            id = id.from(_N, "Attendee", "Capabilities"),
            type = "structure",
            name = "Capabilities",
            target_id = id.from(_N, "AttendeeCapabilities"),
            target = M.AttendeeCapabilities,
        }),
    },
})

M.AttendeeFeatures = schema.new({
    id = id.from(_N, "AttendeeFeatures"),
    type = "structure",
    members = {
        MaxCount = schema.new({
            id = id.from(_N, "AttendeeFeatures", "MaxCount"),
            type = "integer",
            name = "MaxCount",
            target_id = prelude.Integer.id,
        }),
    },
})

M.AttendeeIdItem = schema.new({
    id = id.from(_N, "AttendeeIdItem"),
    type = "structure",
    members = {
        AttendeeId = schema.new({
            id = id.from(_N, "AttendeeIdItem", "AttendeeId"),
            type = "string",
            name = "AttendeeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
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

M.BadRequestException = schema.new({
    id = id.from(_N, "BadRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "BadRequestException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "BadRequestException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "BadRequestException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateAttendeeRequestItem = schema.new({
    id = id.from(_N, "CreateAttendeeRequestItem"),
    type = "structure",
    members = {
        ExternalUserId = schema.new({
            id = id.from(_N, "CreateAttendeeRequestItem", "ExternalUserId"),
            type = "string",
            name = "ExternalUserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Capabilities = schema.new({
            id = id.from(_N, "CreateAttendeeRequestItem", "Capabilities"),
            type = "structure",
            name = "Capabilities",
            target_id = id.from(_N, "AttendeeCapabilities"),
            target = M.AttendeeCapabilities,
        }),
    },
})

M.BatchCreateAttendeeInput = schema.new({
    id = id.from(_N, "BatchCreateAttendeeRequest"),
    type = "structure",
    members = {
        MeetingId = schema.new({
            id = id.from(_N, "BatchCreateAttendeeInput", "MeetingId"),
            type = "string",
            name = "MeetingId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Attendees = schema.new({
            id = id.from(_N, "BatchCreateAttendeeInput", "Attendees"),
            type = "list",
            name = "Attendees",
            target_id = prelude.Document.id,
            list_member = M.CreateAttendeeRequestItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateAttendeeError = schema.new({
    id = id.from(_N, "CreateAttendeeError"),
    type = "structure",
    members = {
        ExternalUserId = schema.new({
            id = id.from(_N, "CreateAttendeeError", "ExternalUserId"),
            type = "string",
            name = "ExternalUserId",
            target_id = prelude.String.id,
        }),
        ErrorCode = schema.new({
            id = id.from(_N, "CreateAttendeeError", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "CreateAttendeeError", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchCreateAttendeeOutput = schema.new({
    id = id.from(_N, "BatchCreateAttendeeResponse"),
    type = "structure",
    members = {
        Attendees = schema.new({
            id = id.from(_N, "BatchCreateAttendeeOutput", "Attendees"),
            type = "list",
            name = "Attendees",
            target_id = prelude.Document.id,
            list_member = M.Attendee,
        }),
        Errors = schema.new({
            id = id.from(_N, "BatchCreateAttendeeOutput", "Errors"),
            type = "list",
            name = "Errors",
            target_id = prelude.Document.id,
            list_member = M.CreateAttendeeError,
        }),
    },
})

M.ForbiddenException = schema.new({
    id = id.from(_N, "ForbiddenException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "ForbiddenException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ForbiddenException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "ForbiddenException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.LimitExceededException = schema.new({
    id = id.from(_N, "LimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "LimitExceededException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "LimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "LimitExceededException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.NotFoundException = schema.new({
    id = id.from(_N, "NotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "NotFoundException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "NotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "NotFoundException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceFailureException = schema.new({
    id = id.from(_N, "ServiceFailureException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "ServiceFailureException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ServiceFailureException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "ServiceFailureException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceUnavailableException = schema.new({
    id = id.from(_N, "ServiceUnavailableException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "ServiceUnavailableException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ServiceUnavailableException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "ServiceUnavailableException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
        RetryAfterSeconds = schema.new({
            id = id.from(_N, "ServiceUnavailableException", "RetryAfterSeconds"),
            type = "string",
            name = "RetryAfterSeconds",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Retry-After" },
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
        Code = schema.new({
            id = id.from(_N, "ThrottlingException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ThrottlingException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "ThrottlingException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.UnauthorizedException = schema.new({
    id = id.from(_N, "UnauthorizedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "UnauthorizedException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "UnauthorizedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "UnauthorizedException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.UnprocessableEntityException = schema.new({
    id = id.from(_N, "UnprocessableEntityException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "UnprocessableEntityException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "UnprocessableEntityException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "UnprocessableEntityException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchUpdateAttendeeCapabilitiesExceptInput = schema.new({
    id = id.from(_N, "BatchUpdateAttendeeCapabilitiesExceptRequest"),
    type = "structure",
    members = {
        MeetingId = schema.new({
            id = id.from(_N, "BatchUpdateAttendeeCapabilitiesExceptInput", "MeetingId"),
            type = "string",
            name = "MeetingId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ExcludedAttendeeIds = schema.new({
            id = id.from(_N, "BatchUpdateAttendeeCapabilitiesExceptInput", "ExcludedAttendeeIds"),
            type = "list",
            name = "ExcludedAttendeeIds",
            target_id = prelude.Document.id,
            list_member = M.AttendeeIdItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Capabilities = schema.new({
            id = id.from(_N, "BatchUpdateAttendeeCapabilitiesExceptInput", "Capabilities"),
            type = "structure",
            name = "Capabilities",
            target_id = id.from(_N, "AttendeeCapabilities"),
            target = M.AttendeeCapabilities,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchUpdateAttendeeCapabilitiesExceptOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.ConflictException = schema.new({
    id = id.from(_N, "ConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "ConflictException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ConflictException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "ConflictException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateAttendeeInput = schema.new({
    id = id.from(_N, "CreateAttendeeRequest"),
    type = "structure",
    members = {
        MeetingId = schema.new({
            id = id.from(_N, "CreateAttendeeInput", "MeetingId"),
            type = "string",
            name = "MeetingId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ExternalUserId = schema.new({
            id = id.from(_N, "CreateAttendeeInput", "ExternalUserId"),
            type = "string",
            name = "ExternalUserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Capabilities = schema.new({
            id = id.from(_N, "CreateAttendeeInput", "Capabilities"),
            type = "structure",
            name = "Capabilities",
            target_id = id.from(_N, "AttendeeCapabilities"),
            target = M.AttendeeCapabilities,
        }),
    },
})

M.CreateAttendeeOutput = schema.new({
    id = id.from(_N, "CreateAttendeeResponse"),
    type = "structure",
    members = {
        Attendee = schema.new({
            id = id.from(_N, "CreateAttendeeOutput", "Attendee"),
            type = "structure",
            name = "Attendee",
            target_id = id.from(_N, "Attendee"),
            target = M.Attendee,
        }),
    },
})

M.ContentFeatures = schema.new({
    id = id.from(_N, "ContentFeatures"),
    type = "structure",
    members = {
        MaxResolution = schema.new({
            id = id.from(_N, "ContentFeatures", "MaxResolution"),
            type = "string",
            name = "MaxResolution",
            target_id = prelude.String.id,
        }),
    },
})

M.VideoFeatures = schema.new({
    id = id.from(_N, "VideoFeatures"),
    type = "structure",
    members = {
        MaxResolution = schema.new({
            id = id.from(_N, "VideoFeatures", "MaxResolution"),
            type = "string",
            name = "MaxResolution",
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
        Video = schema.new({
            id = id.from(_N, "MeetingFeaturesConfiguration", "Video"),
            type = "structure",
            name = "Video",
            target_id = id.from(_N, "VideoFeatures"),
            target = M.VideoFeatures,
        }),
        Content = schema.new({
            id = id.from(_N, "MeetingFeaturesConfiguration", "Content"),
            type = "structure",
            name = "Content",
            target_id = id.from(_N, "ContentFeatures"),
            target = M.ContentFeatures,
        }),
        Attendee = schema.new({
            id = id.from(_N, "MeetingFeaturesConfiguration", "Attendee"),
            type = "structure",
            name = "Attendee",
            target_id = id.from(_N, "AttendeeFeatures"),
            target = M.AttendeeFeatures,
        }),
    },
})

M.NotificationsConfiguration = schema.new({
    id = id.from(_N, "NotificationsConfiguration"),
    type = "structure",
    members = {
        LambdaFunctionArn = schema.new({
            id = id.from(_N, "NotificationsConfiguration", "LambdaFunctionArn"),
            type = "string",
            name = "LambdaFunctionArn",
            target_id = prelude.String.id,
        }),
        SnsTopicArn = schema.new({
            id = id.from(_N, "NotificationsConfiguration", "SnsTopicArn"),
            type = "string",
            name = "SnsTopicArn",
            target_id = prelude.String.id,
        }),
        SqsQueueArn = schema.new({
            id = id.from(_N, "NotificationsConfiguration", "SqsQueueArn"),
            type = "string",
            name = "SqsQueueArn",
            target_id = prelude.String.id,
        }),
    },
})

M.Tag = schema.new({
    id = id.from(_N, "Tag"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "Tag", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "Tag", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateMeetingInput = schema.new({
    id = id.from(_N, "CreateMeetingRequest"),
    type = "structure",
    members = {
        ClientRequestToken = schema.new({
            id = id.from(_N, "CreateMeetingInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        MediaRegion = schema.new({
            id = id.from(_N, "CreateMeetingInput", "MediaRegion"),
            type = "string",
            name = "MediaRegion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MeetingHostId = schema.new({
            id = id.from(_N, "CreateMeetingInput", "MeetingHostId"),
            type = "string",
            name = "MeetingHostId",
            target_id = prelude.String.id,
        }),
        ExternalMeetingId = schema.new({
            id = id.from(_N, "CreateMeetingInput", "ExternalMeetingId"),
            type = "string",
            name = "ExternalMeetingId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NotificationsConfiguration = schema.new({
            id = id.from(_N, "CreateMeetingInput", "NotificationsConfiguration"),
            type = "structure",
            name = "NotificationsConfiguration",
            target_id = id.from(_N, "NotificationsConfiguration"),
            target = M.NotificationsConfiguration,
        }),
        MeetingFeatures = schema.new({
            id = id.from(_N, "CreateMeetingInput", "MeetingFeatures"),
            type = "structure",
            name = "MeetingFeatures",
            target_id = id.from(_N, "MeetingFeaturesConfiguration"),
            target = M.MeetingFeaturesConfiguration,
        }),
        PrimaryMeetingId = schema.new({
            id = id.from(_N, "CreateMeetingInput", "PrimaryMeetingId"),
            type = "string",
            name = "PrimaryMeetingId",
            target_id = prelude.String.id,
        }),
        TenantIds = schema.new({
            id = id.from(_N, "CreateMeetingInput", "TenantIds"),
            type = "list",
            name = "TenantIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateMeetingInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        MediaPlacementNetworkType = schema.new({
            id = id.from(_N, "CreateMeetingInput", "MediaPlacementNetworkType"),
            type = "string",
            name = "MediaPlacementNetworkType",
            target_id = prelude.String.id,
        }),
    },
})

M.MediaPlacement = schema.new({
    id = id.from(_N, "MediaPlacement"),
    type = "structure",
    members = {
        AudioHostUrl = schema.new({
            id = id.from(_N, "MediaPlacement", "AudioHostUrl"),
            type = "string",
            name = "AudioHostUrl",
            target_id = prelude.String.id,
        }),
        AudioFallbackUrl = schema.new({
            id = id.from(_N, "MediaPlacement", "AudioFallbackUrl"),
            type = "string",
            name = "AudioFallbackUrl",
            target_id = prelude.String.id,
        }),
        SignalingUrl = schema.new({
            id = id.from(_N, "MediaPlacement", "SignalingUrl"),
            type = "string",
            name = "SignalingUrl",
            target_id = prelude.String.id,
        }),
        TurnControlUrl = schema.new({
            id = id.from(_N, "MediaPlacement", "TurnControlUrl"),
            type = "string",
            name = "TurnControlUrl",
            target_id = prelude.String.id,
        }),
        ScreenDataUrl = schema.new({
            id = id.from(_N, "MediaPlacement", "ScreenDataUrl"),
            type = "string",
            name = "ScreenDataUrl",
            target_id = prelude.String.id,
        }),
        ScreenViewingUrl = schema.new({
            id = id.from(_N, "MediaPlacement", "ScreenViewingUrl"),
            type = "string",
            name = "ScreenViewingUrl",
            target_id = prelude.String.id,
        }),
        ScreenSharingUrl = schema.new({
            id = id.from(_N, "MediaPlacement", "ScreenSharingUrl"),
            type = "string",
            name = "ScreenSharingUrl",
            target_id = prelude.String.id,
        }),
        EventIngestionUrl = schema.new({
            id = id.from(_N, "MediaPlacement", "EventIngestionUrl"),
            type = "string",
            name = "EventIngestionUrl",
            target_id = prelude.String.id,
        }),
    },
})

M.Meeting = schema.new({
    id = id.from(_N, "Meeting"),
    type = "structure",
    members = {
        MeetingId = schema.new({
            id = id.from(_N, "Meeting", "MeetingId"),
            type = "string",
            name = "MeetingId",
            target_id = prelude.String.id,
        }),
        MeetingHostId = schema.new({
            id = id.from(_N, "Meeting", "MeetingHostId"),
            type = "string",
            name = "MeetingHostId",
            target_id = prelude.String.id,
        }),
        ExternalMeetingId = schema.new({
            id = id.from(_N, "Meeting", "ExternalMeetingId"),
            type = "string",
            name = "ExternalMeetingId",
            target_id = prelude.String.id,
        }),
        MediaRegion = schema.new({
            id = id.from(_N, "Meeting", "MediaRegion"),
            type = "string",
            name = "MediaRegion",
            target_id = prelude.String.id,
        }),
        MediaPlacement = schema.new({
            id = id.from(_N, "Meeting", "MediaPlacement"),
            type = "structure",
            name = "MediaPlacement",
            target_id = id.from(_N, "MediaPlacement"),
            target = M.MediaPlacement,
        }),
        MeetingFeatures = schema.new({
            id = id.from(_N, "Meeting", "MeetingFeatures"),
            type = "structure",
            name = "MeetingFeatures",
            target_id = id.from(_N, "MeetingFeaturesConfiguration"),
            target = M.MeetingFeaturesConfiguration,
        }),
        PrimaryMeetingId = schema.new({
            id = id.from(_N, "Meeting", "PrimaryMeetingId"),
            type = "string",
            name = "PrimaryMeetingId",
            target_id = prelude.String.id,
        }),
        TenantIds = schema.new({
            id = id.from(_N, "Meeting", "TenantIds"),
            type = "list",
            name = "TenantIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        MeetingArn = schema.new({
            id = id.from(_N, "Meeting", "MeetingArn"),
            type = "string",
            name = "MeetingArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateMeetingOutput = schema.new({
    id = id.from(_N, "CreateMeetingResponse"),
    type = "structure",
    members = {
        Meeting = schema.new({
            id = id.from(_N, "CreateMeetingOutput", "Meeting"),
            type = "structure",
            name = "Meeting",
            target_id = id.from(_N, "Meeting"),
            target = M.Meeting,
        }),
    },
})

M.CreateMeetingWithAttendeesInput = schema.new({
    id = id.from(_N, "CreateMeetingWithAttendeesRequest"),
    type = "structure",
    members = {
        ClientRequestToken = schema.new({
            id = id.from(_N, "CreateMeetingWithAttendeesInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        MediaRegion = schema.new({
            id = id.from(_N, "CreateMeetingWithAttendeesInput", "MediaRegion"),
            type = "string",
            name = "MediaRegion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MeetingHostId = schema.new({
            id = id.from(_N, "CreateMeetingWithAttendeesInput", "MeetingHostId"),
            type = "string",
            name = "MeetingHostId",
            target_id = prelude.String.id,
        }),
        ExternalMeetingId = schema.new({
            id = id.from(_N, "CreateMeetingWithAttendeesInput", "ExternalMeetingId"),
            type = "string",
            name = "ExternalMeetingId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MeetingFeatures = schema.new({
            id = id.from(_N, "CreateMeetingWithAttendeesInput", "MeetingFeatures"),
            type = "structure",
            name = "MeetingFeatures",
            target_id = id.from(_N, "MeetingFeaturesConfiguration"),
            target = M.MeetingFeaturesConfiguration,
        }),
        NotificationsConfiguration = schema.new({
            id = id.from(_N, "CreateMeetingWithAttendeesInput", "NotificationsConfiguration"),
            type = "structure",
            name = "NotificationsConfiguration",
            target_id = id.from(_N, "NotificationsConfiguration"),
            target = M.NotificationsConfiguration,
        }),
        Attendees = schema.new({
            id = id.from(_N, "CreateMeetingWithAttendeesInput", "Attendees"),
            type = "list",
            name = "Attendees",
            target_id = prelude.Document.id,
            list_member = M.CreateAttendeeRequestItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PrimaryMeetingId = schema.new({
            id = id.from(_N, "CreateMeetingWithAttendeesInput", "PrimaryMeetingId"),
            type = "string",
            name = "PrimaryMeetingId",
            target_id = prelude.String.id,
        }),
        TenantIds = schema.new({
            id = id.from(_N, "CreateMeetingWithAttendeesInput", "TenantIds"),
            type = "list",
            name = "TenantIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateMeetingWithAttendeesInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        MediaPlacementNetworkType = schema.new({
            id = id.from(_N, "CreateMeetingWithAttendeesInput", "MediaPlacementNetworkType"),
            type = "string",
            name = "MediaPlacementNetworkType",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateMeetingWithAttendeesOutput = schema.new({
    id = id.from(_N, "CreateMeetingWithAttendeesResponse"),
    type = "structure",
    members = {
        Meeting = schema.new({
            id = id.from(_N, "CreateMeetingWithAttendeesOutput", "Meeting"),
            type = "structure",
            name = "Meeting",
            target_id = id.from(_N, "Meeting"),
            target = M.Meeting,
        }),
        Attendees = schema.new({
            id = id.from(_N, "CreateMeetingWithAttendeesOutput", "Attendees"),
            type = "list",
            name = "Attendees",
            target_id = prelude.Document.id,
            list_member = M.Attendee,
        }),
        Errors = schema.new({
            id = id.from(_N, "CreateMeetingWithAttendeesOutput", "Errors"),
            type = "list",
            name = "Errors",
            target_id = prelude.Document.id,
            list_member = M.CreateAttendeeError,
        }),
    },
})

M.DeleteAttendeeInput = schema.new({
    id = id.from(_N, "DeleteAttendeeRequest"),
    type = "structure",
    members = {
        MeetingId = schema.new({
            id = id.from(_N, "DeleteAttendeeInput", "MeetingId"),
            type = "string",
            name = "MeetingId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        AttendeeId = schema.new({
            id = id.from(_N, "DeleteAttendeeInput", "AttendeeId"),
            type = "string",
            name = "AttendeeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteAttendeeOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.DeleteMeetingInput = schema.new({
    id = id.from(_N, "DeleteMeetingRequest"),
    type = "structure",
    members = {
        MeetingId = schema.new({
            id = id.from(_N, "DeleteMeetingInput", "MeetingId"),
            type = "string",
            name = "MeetingId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteMeetingOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.GetAttendeeInput = schema.new({
    id = id.from(_N, "GetAttendeeRequest"),
    type = "structure",
    members = {
        MeetingId = schema.new({
            id = id.from(_N, "GetAttendeeInput", "MeetingId"),
            type = "string",
            name = "MeetingId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        AttendeeId = schema.new({
            id = id.from(_N, "GetAttendeeInput", "AttendeeId"),
            type = "string",
            name = "AttendeeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetAttendeeOutput = schema.new({
    id = id.from(_N, "GetAttendeeResponse"),
    type = "structure",
    members = {
        Attendee = schema.new({
            id = id.from(_N, "GetAttendeeOutput", "Attendee"),
            type = "structure",
            name = "Attendee",
            target_id = id.from(_N, "Attendee"),
            target = M.Attendee,
        }),
    },
})

M.GetMeetingInput = schema.new({
    id = id.from(_N, "GetMeetingRequest"),
    type = "structure",
    members = {
        MeetingId = schema.new({
            id = id.from(_N, "GetMeetingInput", "MeetingId"),
            type = "string",
            name = "MeetingId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetMeetingOutput = schema.new({
    id = id.from(_N, "GetMeetingResponse"),
    type = "structure",
    members = {
        Meeting = schema.new({
            id = id.from(_N, "GetMeetingOutput", "Meeting"),
            type = "structure",
            name = "Meeting",
            target_id = id.from(_N, "Meeting"),
            target = M.Meeting,
        }),
    },
})

M.ListAttendeesInput = schema.new({
    id = id.from(_N, "ListAttendeesRequest"),
    type = "structure",
    members = {
        MeetingId = schema.new({
            id = id.from(_N, "ListAttendeesInput", "MeetingId"),
            type = "string",
            name = "MeetingId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAttendeesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next-token" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListAttendeesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max-results" },
            },
        }),
    },
})

M.ListAttendeesOutput = schema.new({
    id = id.from(_N, "ListAttendeesResponse"),
    type = "structure",
    members = {
        Attendees = schema.new({
            id = id.from(_N, "ListAttendeesOutput", "Attendees"),
            type = "list",
            name = "Attendees",
            target_id = prelude.Document.id,
            list_member = M.Attendee,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAttendeesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceRequest"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "arn" },
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceResponse"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
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
        Code = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
        ResourceName = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "ResourceName"),
            type = "string",
            name = "ResourceName",
            target_id = prelude.String.id,
        }),
    },
})

M.EngineTranscribeMedicalSettings = schema.new({
    id = id.from(_N, "EngineTranscribeMedicalSettings"),
    type = "structure",
    members = {
        LanguageCode = schema.new({
            id = id.from(_N, "EngineTranscribeMedicalSettings", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Specialty = schema.new({
            id = id.from(_N, "EngineTranscribeMedicalSettings", "Specialty"),
            type = "string",
            name = "Specialty",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "EngineTranscribeMedicalSettings", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VocabularyName = schema.new({
            id = id.from(_N, "EngineTranscribeMedicalSettings", "VocabularyName"),
            type = "string",
            name = "VocabularyName",
            target_id = prelude.String.id,
        }),
        Region = schema.new({
            id = id.from(_N, "EngineTranscribeMedicalSettings", "Region"),
            type = "string",
            name = "Region",
            target_id = prelude.String.id,
        }),
        ContentIdentificationType = schema.new({
            id = id.from(_N, "EngineTranscribeMedicalSettings", "ContentIdentificationType"),
            type = "string",
            name = "ContentIdentificationType",
            target_id = prelude.String.id,
        }),
    },
})

M.EngineTranscribeSettings = schema.new({
    id = id.from(_N, "EngineTranscribeSettings"),
    type = "structure",
    members = {
        LanguageCode = schema.new({
            id = id.from(_N, "EngineTranscribeSettings", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
        }),
        VocabularyFilterMethod = schema.new({
            id = id.from(_N, "EngineTranscribeSettings", "VocabularyFilterMethod"),
            type = "string",
            name = "VocabularyFilterMethod",
            target_id = prelude.String.id,
        }),
        VocabularyFilterName = schema.new({
            id = id.from(_N, "EngineTranscribeSettings", "VocabularyFilterName"),
            type = "string",
            name = "VocabularyFilterName",
            target_id = prelude.String.id,
        }),
        VocabularyName = schema.new({
            id = id.from(_N, "EngineTranscribeSettings", "VocabularyName"),
            type = "string",
            name = "VocabularyName",
            target_id = prelude.String.id,
        }),
        Region = schema.new({
            id = id.from(_N, "EngineTranscribeSettings", "Region"),
            type = "string",
            name = "Region",
            target_id = prelude.String.id,
        }),
        EnablePartialResultsStabilization = schema.new({
            id = id.from(_N, "EngineTranscribeSettings", "EnablePartialResultsStabilization"),
            type = "boolean",
            name = "EnablePartialResultsStabilization",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        PartialResultsStability = schema.new({
            id = id.from(_N, "EngineTranscribeSettings", "PartialResultsStability"),
            type = "string",
            name = "PartialResultsStability",
            target_id = prelude.String.id,
        }),
        ContentIdentificationType = schema.new({
            id = id.from(_N, "EngineTranscribeSettings", "ContentIdentificationType"),
            type = "string",
            name = "ContentIdentificationType",
            target_id = prelude.String.id,
        }),
        ContentRedactionType = schema.new({
            id = id.from(_N, "EngineTranscribeSettings", "ContentRedactionType"),
            type = "string",
            name = "ContentRedactionType",
            target_id = prelude.String.id,
        }),
        PiiEntityTypes = schema.new({
            id = id.from(_N, "EngineTranscribeSettings", "PiiEntityTypes"),
            type = "string",
            name = "PiiEntityTypes",
            target_id = prelude.String.id,
        }),
        LanguageModelName = schema.new({
            id = id.from(_N, "EngineTranscribeSettings", "LanguageModelName"),
            type = "string",
            name = "LanguageModelName",
            target_id = prelude.String.id,
        }),
        IdentifyLanguage = schema.new({
            id = id.from(_N, "EngineTranscribeSettings", "IdentifyLanguage"),
            type = "boolean",
            name = "IdentifyLanguage",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        LanguageOptions = schema.new({
            id = id.from(_N, "EngineTranscribeSettings", "LanguageOptions"),
            type = "string",
            name = "LanguageOptions",
            target_id = prelude.String.id,
        }),
        PreferredLanguage = schema.new({
            id = id.from(_N, "EngineTranscribeSettings", "PreferredLanguage"),
            type = "string",
            name = "PreferredLanguage",
            target_id = prelude.String.id,
        }),
        VocabularyNames = schema.new({
            id = id.from(_N, "EngineTranscribeSettings", "VocabularyNames"),
            type = "string",
            name = "VocabularyNames",
            target_id = prelude.String.id,
        }),
        VocabularyFilterNames = schema.new({
            id = id.from(_N, "EngineTranscribeSettings", "VocabularyFilterNames"),
            type = "string",
            name = "VocabularyFilterNames",
            target_id = prelude.String.id,
        }),
    },
})

M.TranscriptionConfiguration = schema.new({
    id = id.from(_N, "TranscriptionConfiguration"),
    type = "structure",
    members = {
        EngineTranscribeSettings = schema.new({
            id = id.from(_N, "TranscriptionConfiguration", "EngineTranscribeSettings"),
            type = "structure",
            name = "EngineTranscribeSettings",
            target_id = id.from(_N, "EngineTranscribeSettings"),
            target = M.EngineTranscribeSettings,
        }),
        EngineTranscribeMedicalSettings = schema.new({
            id = id.from(_N, "TranscriptionConfiguration", "EngineTranscribeMedicalSettings"),
            type = "structure",
            name = "EngineTranscribeMedicalSettings",
            target_id = id.from(_N, "EngineTranscribeMedicalSettings"),
            target = M.EngineTranscribeMedicalSettings,
        }),
    },
})

M.StartMeetingTranscriptionInput = schema.new({
    id = id.from(_N, "StartMeetingTranscriptionRequest"),
    type = "structure",
    members = {
        MeetingId = schema.new({
            id = id.from(_N, "StartMeetingTranscriptionInput", "MeetingId"),
            type = "string",
            name = "MeetingId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        TranscriptionConfiguration = schema.new({
            id = id.from(_N, "StartMeetingTranscriptionInput", "TranscriptionConfiguration"),
            type = "structure",
            name = "TranscriptionConfiguration",
            target_id = id.from(_N, "TranscriptionConfiguration"),
            target = M.TranscriptionConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartMeetingTranscriptionOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.StopMeetingTranscriptionInput = schema.new({
    id = id.from(_N, "StopMeetingTranscriptionRequest"),
    type = "structure",
    members = {
        MeetingId = schema.new({
            id = id.from(_N, "StopMeetingTranscriptionInput", "MeetingId"),
            type = "string",
            name = "MeetingId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.StopMeetingTranscriptionOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceRequest"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "TagResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagResourceInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceResponse"),
    type = "structure",
})

M.TooManyTagsException = schema.new({
    id = id.from(_N, "TooManyTagsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "TooManyTagsException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "TooManyTagsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "TooManyTagsException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
        ResourceName = schema.new({
            id = id.from(_N, "TooManyTagsException", "ResourceName"),
            type = "string",
            name = "ResourceName",
            target_id = prelude.String.id,
        }),
    },
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceRequest"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "UntagResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "TagKeys"),
            type = "list",
            name = "TagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceResponse"),
    type = "structure",
})

M.UpdateAttendeeCapabilitiesInput = schema.new({
    id = id.from(_N, "UpdateAttendeeCapabilitiesRequest"),
    type = "structure",
    members = {
        MeetingId = schema.new({
            id = id.from(_N, "UpdateAttendeeCapabilitiesInput", "MeetingId"),
            type = "string",
            name = "MeetingId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        AttendeeId = schema.new({
            id = id.from(_N, "UpdateAttendeeCapabilitiesInput", "AttendeeId"),
            type = "string",
            name = "AttendeeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Capabilities = schema.new({
            id = id.from(_N, "UpdateAttendeeCapabilitiesInput", "Capabilities"),
            type = "structure",
            name = "Capabilities",
            target_id = id.from(_N, "AttendeeCapabilities"),
            target = M.AttendeeCapabilities,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateAttendeeCapabilitiesOutput = schema.new({
    id = id.from(_N, "UpdateAttendeeCapabilitiesResponse"),
    type = "structure",
    members = {
        Attendee = schema.new({
            id = id.from(_N, "UpdateAttendeeCapabilitiesOutput", "Attendee"),
            type = "structure",
            name = "Attendee",
            target_id = id.from(_N, "Attendee"),
            target = M.Attendee,
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
