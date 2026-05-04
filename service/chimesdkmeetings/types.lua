local M = {}

M.MediaCapabilities = {
    SEND_RECEIVE = "SendReceive",
    SEND = "Send",
    RECEIVE = "Receive",
    NONE = "None",
}

M.AttendeeCapabilities = {
    type = "structure",
    id = "AttendeeCapabilities",
    members = {
        Audio = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Video = {
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
    },
}

M.Attendee = {
    type = "structure",
    id = "Attendee",
    members = {
        ExternalUserId = {
            type = "string",
        },
        AttendeeId = {
            type = "string",
        },
        JoinToken = {
            type = "string",
        },
        Capabilities = M.AttendeeCapabilities,
    },
}

M.AttendeeFeatures = {
    type = "structure",
    id = "AttendeeFeatures",
    members = {
        MaxCount = {
            type = "integer",
        },
    },
}

M.AttendeeIdItem = {
    type = "structure",
    id = "AttendeeIdItem",
    members = {
        AttendeeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MeetingFeatureStatus = {
    AVAILABLE = "AVAILABLE",
    UNAVAILABLE = "UNAVAILABLE",
}

M.AudioFeatures = {
    type = "structure",
    id = "AudioFeatures",
    members = {
        EchoReduction = {
            type = "string",
        },
    },
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
        RequestId = {
            type = "string",
        },
    },
}

M.CreateAttendeeRequestItem = {
    type = "structure",
    id = "CreateAttendeeRequestItem",
    members = {
        ExternalUserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Capabilities = M.AttendeeCapabilities,
    },
}

M.BatchCreateAttendeeInput = {
    type = "structure",
    id = "BatchCreateAttendeeInput",
    members = {
        MeetingId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Attendees = {
            type = "list",
            member = M.CreateAttendeeRequestItem,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAttendeeError = {
    type = "structure",
    id = "CreateAttendeeError",
    members = {
        ExternalUserId = {
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

M.BatchCreateAttendeeOutput = {
    type = "structure",
    id = "BatchCreateAttendeeOutput",
    members = {
        Attendees = {
            type = "list",
            member = M.Attendee,
        },
        Errors = {
            type = "list",
            member = M.CreateAttendeeError,
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
        RequestId = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        RequestId = {
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
        RequestId = {
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
        RequestId = {
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
        RequestId = {
            type = "string",
        },
        RetryAfterSeconds = {
            type = "string",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.UnauthorizedException = {
    type = "structure",
    id = "UnauthorizedException",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.UnprocessableEntityException = {
    type = "structure",
    id = "UnprocessableEntityException",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.BatchUpdateAttendeeCapabilitiesExceptInput = {
    type = "structure",
    id = "BatchUpdateAttendeeCapabilitiesExceptInput",
    members = {
        MeetingId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExcludedAttendeeIds = {
            type = "list",
            member = M.AttendeeIdItem,
            traits = {
                required = true,
            },
        },
        Capabilities = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AttendeeCapabilities }),
    },
}

M.BatchUpdateAttendeeCapabilitiesExceptOutput = {
    type = "structure",
    id = "BatchUpdateAttendeeCapabilitiesExceptOutput",
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
        RequestId = {
            type = "string",
        },
    },
}

M.CreateAttendeeInput = {
    type = "structure",
    id = "CreateAttendeeInput",
    members = {
        MeetingId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExternalUserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Capabilities = M.AttendeeCapabilities,
    },
}

M.CreateAttendeeOutput = {
    type = "structure",
    id = "CreateAttendeeOutput",
    members = {
        Attendee = M.Attendee,
    },
}

M.MediaPlacementNetworkType = {
    IPV4_ONLY = "Ipv4Only",
    DUAL_STACK = "DualStack",
}

M.ContentResolution = {
    NONE = "None",
    FHD = "FHD",
    UHD = "UHD",
}

M.ContentFeatures = {
    type = "structure",
    id = "ContentFeatures",
    members = {
        MaxResolution = {
            type = "string",
        },
    },
}

M.VideoResolution = {
    NONE = "None",
    HD = "HD",
    FHD = "FHD",
}

M.VideoFeatures = {
    type = "structure",
    id = "VideoFeatures",
    members = {
        MaxResolution = {
            type = "string",
        },
    },
}

M.MeetingFeaturesConfiguration = {
    type = "structure",
    id = "MeetingFeaturesConfiguration",
    members = {
        Audio = M.AudioFeatures,
        Video = M.VideoFeatures,
        Content = M.ContentFeatures,
        Attendee = M.AttendeeFeatures,
    },
}

M.NotificationsConfiguration = {
    type = "structure",
    id = "NotificationsConfiguration",
    members = {
        LambdaFunctionArn = {
            type = "string",
        },
        SnsTopicArn = {
            type = "string",
        },
        SqsQueueArn = {
            type = "string",
        },
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

M.CreateMeetingInput = {
    type = "structure",
    id = "CreateMeetingInput",
    members = {
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        MediaRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MeetingHostId = {
            type = "string",
        },
        ExternalMeetingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NotificationsConfiguration = M.NotificationsConfiguration,
        MeetingFeatures = M.MeetingFeaturesConfiguration,
        PrimaryMeetingId = {
            type = "string",
        },
        TenantIds = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        MediaPlacementNetworkType = {
            type = "string",
        },
    },
}

M.MediaPlacement = {
    type = "structure",
    id = "MediaPlacement",
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
        TurnControlUrl = {
            type = "string",
        },
        ScreenDataUrl = {
            type = "string",
        },
        ScreenViewingUrl = {
            type = "string",
        },
        ScreenSharingUrl = {
            type = "string",
        },
        EventIngestionUrl = {
            type = "string",
        },
    },
}

M.Meeting = {
    type = "structure",
    id = "Meeting",
    members = {
        MeetingId = {
            type = "string",
        },
        MeetingHostId = {
            type = "string",
        },
        ExternalMeetingId = {
            type = "string",
        },
        MediaRegion = {
            type = "string",
        },
        MediaPlacement = M.MediaPlacement,
        MeetingFeatures = M.MeetingFeaturesConfiguration,
        PrimaryMeetingId = {
            type = "string",
        },
        TenantIds = {
            type = "list",
            member = { type = "string" },
        },
        MeetingArn = {
            type = "string",
        },
    },
}

M.CreateMeetingOutput = {
    type = "structure",
    id = "CreateMeetingOutput",
    members = {
        Meeting = M.Meeting,
    },
}

M.CreateMeetingWithAttendeesInput = {
    type = "structure",
    id = "CreateMeetingWithAttendeesInput",
    members = {
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        MediaRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MeetingHostId = {
            type = "string",
        },
        ExternalMeetingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MeetingFeatures = M.MeetingFeaturesConfiguration,
        NotificationsConfiguration = M.NotificationsConfiguration,
        Attendees = {
            type = "list",
            member = M.CreateAttendeeRequestItem,
            traits = {
                required = true,
            },
        },
        PrimaryMeetingId = {
            type = "string",
        },
        TenantIds = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        MediaPlacementNetworkType = {
            type = "string",
        },
    },
}

M.CreateMeetingWithAttendeesOutput = {
    type = "structure",
    id = "CreateMeetingWithAttendeesOutput",
    members = {
        Meeting = M.Meeting,
        Attendees = {
            type = "list",
            member = M.Attendee,
        },
        Errors = {
            type = "list",
            member = M.CreateAttendeeError,
        },
    },
}

M.DeleteAttendeeInput = {
    type = "structure",
    id = "DeleteAttendeeInput",
    members = {
        MeetingId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AttendeeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAttendeeOutput = {
    type = "structure",
    id = "DeleteAttendeeOutput",
}

M.DeleteMeetingInput = {
    type = "structure",
    id = "DeleteMeetingInput",
    members = {
        MeetingId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMeetingOutput = {
    type = "structure",
    id = "DeleteMeetingOutput",
}

M.GetAttendeeInput = {
    type = "structure",
    id = "GetAttendeeInput",
    members = {
        MeetingId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AttendeeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAttendeeOutput = {
    type = "structure",
    id = "GetAttendeeOutput",
    members = {
        Attendee = M.Attendee,
    },
}

M.GetMeetingInput = {
    type = "structure",
    id = "GetMeetingInput",
    members = {
        MeetingId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetMeetingOutput = {
    type = "structure",
    id = "GetMeetingOutput",
    members = {
        Meeting = M.Meeting,
    },
}

M.ListAttendeesInput = {
    type = "structure",
    id = "ListAttendeesInput",
    members = {
        MeetingId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.ListAttendeesOutput = {
    type = "structure",
    id = "ListAttendeesOutput",
    members = {
        Attendees = {
            type = "list",
            member = M.Attendee,
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

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        ResourceName = {
            type = "string",
        },
    },
}

M.TranscribeMedicalContentIdentificationType = {
    PHI = "PHI",
}

M.TranscribeMedicalLanguageCode = {
    EN_US = "en-US",
}

M.TranscribeMedicalRegion = {
    US_EAST_1 = "us-east-1",
    US_EAST_2 = "us-east-2",
    US_WEST_2 = "us-west-2",
    AP_SOUTHEAST_2 = "ap-southeast-2",
    CA_CENTRAL_1 = "ca-central-1",
    EU_WEST_1 = "eu-west-1",
    AUTO = "auto",
}

M.TranscribeMedicalSpecialty = {
    PRIMARYCARE = "PRIMARYCARE",
    CARDIOLOGY = "CARDIOLOGY",
    NEUROLOGY = "NEUROLOGY",
    ONCOLOGY = "ONCOLOGY",
    RADIOLOGY = "RADIOLOGY",
    UROLOGY = "UROLOGY",
}

M.TranscribeMedicalType = {
    CONVERSATION = "CONVERSATION",
    DICTATION = "DICTATION",
}

M.EngineTranscribeMedicalSettings = {
    type = "structure",
    id = "EngineTranscribeMedicalSettings",
    members = {
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Specialty = {
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
        VocabularyName = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        ContentIdentificationType = {
            type = "string",
        },
    },
}

M.TranscribeContentIdentificationType = {
    PII = "PII",
}

M.TranscribeContentRedactionType = {
    PII = "PII",
}

M.TranscribeLanguageCode = {
    EN_US = "en-US",
    EN_GB = "en-GB",
    ES_US = "es-US",
    FR_CA = "fr-CA",
    FR_FR = "fr-FR",
    EN_AU = "en-AU",
    IT_IT = "it-IT",
    DE_DE = "de-DE",
    PT_BR = "pt-BR",
    JA_JP = "ja-JP",
    KO_KR = "ko-KR",
    ZH_CN = "zh-CN",
    TH_TH = "th-TH",
    HI_IN = "hi-IN",
}

M.TranscribePartialResultsStability = {
    LOW = "low",
    MEDIUM = "medium",
    HIGH = "high",
}

M.TranscribeRegion = {
    US_EAST_2 = "us-east-2",
    US_EAST_1 = "us-east-1",
    US_WEST_2 = "us-west-2",
    AP_NORTHEAST_2 = "ap-northeast-2",
    AP_SOUTHEAST_2 = "ap-southeast-2",
    AP_NORTHEAST_1 = "ap-northeast-1",
    CA_CENTRAL_1 = "ca-central-1",
    EU_CENTRAL_1 = "eu-central-1",
    EU_WEST_1 = "eu-west-1",
    EU_WEST_2 = "eu-west-2",
    SA_EAST_1 = "sa-east-1",
    AUTO = "auto",
    US_GOV_WEST_1 = "us-gov-west-1",
}

M.TranscribeVocabularyFilterMethod = {
    REMOVE = "remove",
    MASK = "mask",
    TAG = "tag",
}

M.EngineTranscribeSettings = {
    type = "structure",
    id = "EngineTranscribeSettings",
    members = {
        LanguageCode = {
            type = "string",
        },
        VocabularyFilterMethod = {
            type = "string",
        },
        VocabularyFilterName = {
            type = "string",
        },
        VocabularyName = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        EnablePartialResultsStabilization = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        PartialResultsStability = {
            type = "string",
        },
        ContentIdentificationType = {
            type = "string",
        },
        ContentRedactionType = {
            type = "string",
        },
        PiiEntityTypes = {
            type = "string",
        },
        LanguageModelName = {
            type = "string",
        },
        IdentifyLanguage = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        LanguageOptions = {
            type = "string",
        },
        PreferredLanguage = {
            type = "string",
        },
        VocabularyNames = {
            type = "string",
        },
        VocabularyFilterNames = {
            type = "string",
        },
    },
}

M.TranscriptionConfiguration = {
    type = "structure",
    id = "TranscriptionConfiguration",
    members = {
        EngineTranscribeSettings = M.EngineTranscribeSettings,
        EngineTranscribeMedicalSettings = M.EngineTranscribeMedicalSettings,
    },
}

M.StartMeetingTranscriptionInput = {
    type = "structure",
    id = "StartMeetingTranscriptionInput",
    members = {
        MeetingId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TranscriptionConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TranscriptionConfiguration }),
    },
}

M.StartMeetingTranscriptionOutput = {
    type = "structure",
    id = "StartMeetingTranscriptionOutput",
}

M.StopMeetingTranscriptionInput = {
    type = "structure",
    id = "StopMeetingTranscriptionInput",
    members = {
        MeetingId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopMeetingTranscriptionOutput = {
    type = "structure",
    id = "StopMeetingTranscriptionOutput",
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

M.TooManyTagsException = {
    type = "structure",
    id = "TooManyTagsException",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        ResourceName = {
            type = "string",
        },
    },
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

M.UpdateAttendeeCapabilitiesInput = {
    type = "structure",
    id = "UpdateAttendeeCapabilitiesInput",
    members = {
        MeetingId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AttendeeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Capabilities = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AttendeeCapabilities }),
    },
}

M.UpdateAttendeeCapabilitiesOutput = {
    type = "structure",
    id = "UpdateAttendeeCapabilitiesOutput",
    members = {
        Attendee = M.Attendee,
    },
}

return M
