local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        accessControlAllowOrigin = {
            type = "string",
            traits = {
                http_header = "Access-Control-Allow-Origin",
            },
        },
        accessControlExposeHeaders = {
            type = "string",
            traits = {
                http_header = "Access-Control-Expose-Headers",
            },
        },
        cacheControl = {
            type = "string",
            traits = {
                http_header = "Cache-Control",
            },
        },
        contentSecurityPolicy = {
            type = "string",
            traits = {
                http_header = "Content-Security-Policy",
            },
        },
        strictTransportSecurity = {
            type = "string",
            traits = {
                http_header = "Strict-Transport-Security",
            },
        },
        xContentTypeOptions = {
            type = "string",
            traits = {
                http_header = "X-Content-Type-Options",
            },
        },
        xFrameOptions = {
            type = "string",
            traits = {
                http_header = "X-Frame-Options",
            },
        },
        xAmznErrorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
            },
        },
        exceptionMessage = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        accessControlAllowOrigin = {
            type = "string",
            traits = {
                http_header = "Access-Control-Allow-Origin",
            },
        },
        accessControlExposeHeaders = {
            type = "string",
            traits = {
                http_header = "Access-Control-Expose-Headers",
            },
        },
        cacheControl = {
            type = "string",
            traits = {
                http_header = "Cache-Control",
            },
        },
        contentSecurityPolicy = {
            type = "string",
            traits = {
                http_header = "Content-Security-Policy",
            },
        },
        strictTransportSecurity = {
            type = "string",
            traits = {
                http_header = "Strict-Transport-Security",
            },
        },
        xContentTypeOptions = {
            type = "string",
            traits = {
                http_header = "X-Content-Type-Options",
            },
        },
        xFrameOptions = {
            type = "string",
            traits = {
                http_header = "X-Frame-Options",
            },
        },
        xAmznErrorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
            },
        },
        exceptionMessage = {
            type = "string",
        },
    },
}

M.Video = {
    type = "structure",
    id = "Video",
    members = {
        width = {
            type = "integer",
        },
        height = {
            type = "integer",
        },
        framerate = {
            type = "float",
        },
        bitrate = {
            type = "integer",
        },
    },
}

M.CreateEncoderConfigurationInput = {
    type = "structure",
    id = "CreateEncoderConfigurationInput",
    members = {
        name = {
            type = "string",
        },
        video = M.Video,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.EncoderConfiguration = {
    type = "structure",
    id = "EncoderConfiguration",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        video = M.Video,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateEncoderConfigurationOutput = {
    type = "structure",
    id = "CreateEncoderConfigurationOutput",
    members = {
        encoderConfiguration = M.EncoderConfiguration,
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        accessControlAllowOrigin = {
            type = "string",
            traits = {
                http_header = "Access-Control-Allow-Origin",
            },
        },
        accessControlExposeHeaders = {
            type = "string",
            traits = {
                http_header = "Access-Control-Expose-Headers",
            },
        },
        cacheControl = {
            type = "string",
            traits = {
                http_header = "Cache-Control",
            },
        },
        contentSecurityPolicy = {
            type = "string",
            traits = {
                http_header = "Content-Security-Policy",
            },
        },
        strictTransportSecurity = {
            type = "string",
            traits = {
                http_header = "Strict-Transport-Security",
            },
        },
        xContentTypeOptions = {
            type = "string",
            traits = {
                http_header = "X-Content-Type-Options",
            },
        },
        xFrameOptions = {
            type = "string",
            traits = {
                http_header = "X-Frame-Options",
            },
        },
        xAmznErrorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
            },
        },
        exceptionMessage = {
            type = "string",
        },
    },
}

M.PendingVerification = {
    type = "structure",
    id = "PendingVerification",
    error = "client",
    members = {
        accessControlAllowOrigin = {
            type = "string",
            traits = {
                http_header = "Access-Control-Allow-Origin",
            },
        },
        accessControlExposeHeaders = {
            type = "string",
            traits = {
                http_header = "Access-Control-Expose-Headers",
            },
        },
        cacheControl = {
            type = "string",
            traits = {
                http_header = "Cache-Control",
            },
        },
        contentSecurityPolicy = {
            type = "string",
            traits = {
                http_header = "Content-Security-Policy",
            },
        },
        strictTransportSecurity = {
            type = "string",
            traits = {
                http_header = "Strict-Transport-Security",
            },
        },
        xContentTypeOptions = {
            type = "string",
            traits = {
                http_header = "X-Content-Type-Options",
            },
        },
        xFrameOptions = {
            type = "string",
            traits = {
                http_header = "X-Frame-Options",
            },
        },
        xAmznErrorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
            },
        },
        exceptionMessage = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        accessControlAllowOrigin = {
            type = "string",
            traits = {
                http_header = "Access-Control-Allow-Origin",
            },
        },
        accessControlExposeHeaders = {
            type = "string",
            traits = {
                http_header = "Access-Control-Expose-Headers",
            },
        },
        cacheControl = {
            type = "string",
            traits = {
                http_header = "Cache-Control",
            },
        },
        contentSecurityPolicy = {
            type = "string",
            traits = {
                http_header = "Content-Security-Policy",
            },
        },
        strictTransportSecurity = {
            type = "string",
            traits = {
                http_header = "Strict-Transport-Security",
            },
        },
        xContentTypeOptions = {
            type = "string",
            traits = {
                http_header = "X-Content-Type-Options",
            },
        },
        xFrameOptions = {
            type = "string",
            traits = {
                http_header = "X-Frame-Options",
            },
        },
        xAmznErrorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
            },
        },
        exceptionMessage = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        accessControlAllowOrigin = {
            type = "string",
            traits = {
                http_header = "Access-Control-Allow-Origin",
            },
        },
        accessControlExposeHeaders = {
            type = "string",
            traits = {
                http_header = "Access-Control-Expose-Headers",
            },
        },
        cacheControl = {
            type = "string",
            traits = {
                http_header = "Cache-Control",
            },
        },
        contentSecurityPolicy = {
            type = "string",
            traits = {
                http_header = "Content-Security-Policy",
            },
        },
        strictTransportSecurity = {
            type = "string",
            traits = {
                http_header = "Strict-Transport-Security",
            },
        },
        xContentTypeOptions = {
            type = "string",
            traits = {
                http_header = "X-Content-Type-Options",
            },
        },
        xFrameOptions = {
            type = "string",
            traits = {
                http_header = "X-Frame-Options",
            },
        },
        xAmznErrorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
            },
        },
        exceptionMessage = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        accessControlAllowOrigin = {
            type = "string",
            traits = {
                http_header = "Access-Control-Allow-Origin",
            },
        },
        accessControlExposeHeaders = {
            type = "string",
            traits = {
                http_header = "Access-Control-Expose-Headers",
            },
        },
        cacheControl = {
            type = "string",
            traits = {
                http_header = "Cache-Control",
            },
        },
        contentSecurityPolicy = {
            type = "string",
            traits = {
                http_header = "Content-Security-Policy",
            },
        },
        strictTransportSecurity = {
            type = "string",
            traits = {
                http_header = "Strict-Transport-Security",
            },
        },
        xContentTypeOptions = {
            type = "string",
            traits = {
                http_header = "X-Content-Type-Options",
            },
        },
        xFrameOptions = {
            type = "string",
            traits = {
                http_header = "X-Frame-Options",
            },
        },
        xAmznErrorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
            },
        },
        exceptionMessage = {
            type = "string",
        },
    },
}

M.IngestProtocol = {
    RTMP = "RTMP",
    RTMPS = "RTMPS",
}

M.CreateIngestConfigurationInput = {
    type = "structure",
    id = "CreateIngestConfigurationInput",
    members = {
        name = {
            type = "string",
        },
        stageArn = {
            type = "string",
        },
        userId = {
            type = "string",
        },
        attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ingestProtocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
        insecureIngest = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        redundantIngest = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.RedundantIngestCredential = {
    type = "structure",
    id = "RedundantIngestCredential",
    members = {
        participantId = {
            type = "string",
        },
        streamKey = {
            type = "string",
        },
    },
}

M.IngestConfigurationState = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.IngestConfiguration = {
    type = "structure",
    id = "IngestConfiguration",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ingestProtocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
        streamKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stageArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        participantId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userId = {
            type = "string",
        },
        redundantIngest = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        redundantIngestCredentials = {
            type = "list",
            member = M.RedundantIngestCredential,
        },
        attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateIngestConfigurationOutput = {
    type = "structure",
    id = "CreateIngestConfigurationOutput",
    members = {
        ingestConfiguration = M.IngestConfiguration,
    },
}

M.ParticipantTokenCapability = {
    PUBLISH = "PUBLISH",
    SUBSCRIBE = "SUBSCRIBE",
}

M.CreateParticipantTokenInput = {
    type = "structure",
    id = "CreateParticipantTokenInput",
    members = {
        stageArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        duration = {
            type = "integer",
        },
        userId = {
            type = "string",
        },
        attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        capabilities = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ParticipantToken = {
    type = "structure",
    id = "ParticipantToken",
    members = {
        participantId = {
            type = "string",
        },
        token = {
            type = "string",
        },
        userId = {
            type = "string",
        },
        attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        duration = {
            type = "integer",
        },
        capabilities = {
            type = "list",
            member = { type = "string" },
        },
        expirationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.CreateParticipantTokenOutput = {
    type = "structure",
    id = "CreateParticipantTokenOutput",
    members = {
        participantToken = M.ParticipantToken,
    },
}

M.ParticipantRecordingHlsConfiguration = {
    type = "structure",
    id = "ParticipantRecordingHlsConfiguration",
    members = {
        targetSegmentDurationSeconds = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
    },
}

M.ParticipantRecordingMediaType = {
    AUDIO_VIDEO = "AUDIO_VIDEO",
    AUDIO_ONLY = "AUDIO_ONLY",
    NONE = "NONE",
}

M.ThumbnailRecordingMode = {
    INTERVAL = "INTERVAL",
    DISABLED = "DISABLED",
}

M.ThumbnailStorageType = {
    SEQUENTIAL = "SEQUENTIAL",
    LATEST = "LATEST",
}

M.ParticipantThumbnailConfiguration = {
    type = "structure",
    id = "ParticipantThumbnailConfiguration",
    members = {
        targetIntervalSeconds = {
            type = "integer",
        },
        storage = {
            type = "list",
            member = { type = "string" },
        },
        recordingMode = {
            type = "string",
        },
    },
}

M.AutoParticipantRecordingConfiguration = {
    type = "structure",
    id = "AutoParticipantRecordingConfiguration",
    members = {
        storageConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        mediaTypes = {
            type = "list",
            member = { type = "string" },
        },
        thumbnailConfiguration = M.ParticipantThumbnailConfiguration,
        recordingReconnectWindowSeconds = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        hlsConfiguration = M.ParticipantRecordingHlsConfiguration,
        recordParticipantReplicas = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ParticipantTokenConfiguration = {
    type = "structure",
    id = "ParticipantTokenConfiguration",
    members = {
        duration = {
            type = "integer",
        },
        userId = {
            type = "string",
        },
        attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        capabilities = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateStageInput = {
    type = "structure",
    id = "CreateStageInput",
    members = {
        name = {
            type = "string",
        },
        participantTokenConfigurations = {
            type = "list",
            member = M.ParticipantTokenConfiguration,
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        autoParticipantRecordingConfiguration = M.AutoParticipantRecordingConfiguration,
    },
}

M.StageEndpoints = {
    type = "structure",
    id = "StageEndpoints",
    members = {
        events = {
            type = "string",
        },
        whip = {
            type = "string",
        },
        rtmp = {
            type = "string",
        },
        rtmps = {
            type = "string",
        },
    },
}

M.Stage = {
    type = "structure",
    id = "Stage",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        activeSessionId = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        autoParticipantRecordingConfiguration = M.AutoParticipantRecordingConfiguration,
        endpoints = M.StageEndpoints,
    },
}

M.CreateStageOutput = {
    type = "structure",
    id = "CreateStageOutput",
    members = {
        stage = M.Stage,
        participantTokens = {
            type = "list",
            member = M.ParticipantToken,
        },
    },
}

M.S3StorageConfiguration = {
    type = "structure",
    id = "S3StorageConfiguration",
    members = {
        bucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateStorageConfigurationInput = {
    type = "structure",
    id = "CreateStorageConfigurationInput",
    members = {
        name = {
            type = "string",
        },
        s3 = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3StorageConfiguration }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StorageConfiguration = {
    type = "structure",
    id = "StorageConfiguration",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        s3 = M.S3StorageConfiguration,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateStorageConfigurationOutput = {
    type = "structure",
    id = "CreateStorageConfigurationOutput",
    members = {
        storageConfiguration = M.StorageConfiguration,
    },
}

M.DeleteEncoderConfigurationInput = {
    type = "structure",
    id = "DeleteEncoderConfigurationInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEncoderConfigurationOutput = {
    type = "structure",
    id = "DeleteEncoderConfigurationOutput",
}

M.DeleteIngestConfigurationInput = {
    type = "structure",
    id = "DeleteIngestConfigurationInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        force = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DeleteIngestConfigurationOutput = {
    type = "structure",
    id = "DeleteIngestConfigurationOutput",
}

M.DeletePublicKeyInput = {
    type = "structure",
    id = "DeletePublicKeyInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePublicKeyOutput = {
    type = "structure",
    id = "DeletePublicKeyOutput",
}

M.DeleteStageInput = {
    type = "structure",
    id = "DeleteStageInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteStageOutput = {
    type = "structure",
    id = "DeleteStageOutput",
}

M.DeleteStorageConfigurationInput = {
    type = "structure",
    id = "DeleteStorageConfigurationInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteStorageConfigurationOutput = {
    type = "structure",
    id = "DeleteStorageConfigurationOutput",
}

M.DisconnectParticipantInput = {
    type = "structure",
    id = "DisconnectParticipantInput",
    members = {
        stageArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        participantId = {
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

M.DisconnectParticipantOutput = {
    type = "structure",
    id = "DisconnectParticipantOutput",
}

M.GetCompositionInput = {
    type = "structure",
    id = "GetCompositionInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ChannelDestinationConfiguration = {
    type = "structure",
    id = "ChannelDestinationConfiguration",
    members = {
        channelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        encoderConfigurationArn = {
            type = "string",
        },
    },
}

M.RecordingConfigurationFormat = {
    HLS = "HLS",
}

M.CompositionRecordingHlsConfiguration = {
    type = "structure",
    id = "CompositionRecordingHlsConfiguration",
    members = {
        targetSegmentDurationSeconds = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
    },
}

M.RecordingConfiguration = {
    type = "structure",
    id = "RecordingConfiguration",
    members = {
        hlsConfiguration = M.CompositionRecordingHlsConfiguration,
        format = {
            type = "string",
        },
    },
}

M.CompositionThumbnailConfiguration = {
    type = "structure",
    id = "CompositionThumbnailConfiguration",
    members = {
        targetIntervalSeconds = {
            type = "integer",
        },
        storage = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.S3DestinationConfiguration = {
    type = "structure",
    id = "S3DestinationConfiguration",
    members = {
        storageConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        encoderConfigurationArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        recordingConfiguration = M.RecordingConfiguration,
        thumbnailConfigurations = {
            type = "list",
            member = M.CompositionThumbnailConfiguration,
        },
    },
}

M.DestinationConfiguration = {
    type = "structure",
    id = "DestinationConfiguration",
    members = {
        name = {
            type = "string",
        },
        channel = M.ChannelDestinationConfiguration,
        s3 = M.S3DestinationConfiguration,
    },
}

M.S3Detail = {
    type = "structure",
    id = "S3Detail",
    members = {
        recordingPrefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DestinationDetail = {
    type = "structure",
    id = "DestinationDetail",
    members = {
        s3 = M.S3Detail,
    },
}

M.DestinationState = {
    STARTING = "STARTING",
    ACTIVE = "ACTIVE",
    STOPPING = "STOPPING",
    RECONNECTING = "RECONNECTING",
    FAILED = "FAILED",
    STOPPED = "STOPPED",
}

M.Destination = {
    type = "structure",
    id = "Destination",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DestinationConfiguration }),
        detail = M.DestinationDetail,
    },
}

M.VideoAspectRatio = {
    AUTO = "AUTO",
    VIDEO = "VIDEO",
    SQUARE = "SQUARE",
    PORTRAIT = "PORTRAIT",
}

M.VideoFillMode = {
    FILL = "FILL",
    COVER = "COVER",
    CONTAIN = "CONTAIN",
}

M.GridConfiguration = {
    type = "structure",
    id = "GridConfiguration",
    members = {
        featuredParticipantAttribute = {
            type = "string",
        },
        omitStoppedVideo = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        videoAspectRatio = {
            type = "string",
        },
        videoFillMode = {
            type = "string",
        },
        gridGap = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        participantOrderAttribute = {
            type = "string",
        },
    },
}

M.PipBehavior = {
    STATIC = "STATIC",
    DYNAMIC = "DYNAMIC",
}

M.PipPosition = {
    TOP_LEFT = "TOP_LEFT",
    TOP_RIGHT = "TOP_RIGHT",
    BOTTOM_LEFT = "BOTTOM_LEFT",
    BOTTOM_RIGHT = "BOTTOM_RIGHT",
}

M.PipConfiguration = {
    type = "structure",
    id = "PipConfiguration",
    members = {
        featuredParticipantAttribute = {
            type = "string",
        },
        omitStoppedVideo = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        videoFillMode = {
            type = "string",
        },
        gridGap = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        pipParticipantAttribute = {
            type = "string",
        },
        pipBehavior = {
            type = "string",
        },
        pipOffset = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        pipPosition = {
            type = "string",
        },
        pipWidth = {
            type = "integer",
        },
        pipHeight = {
            type = "integer",
        },
        participantOrderAttribute = {
            type = "string",
        },
    },
}

M.LayoutConfiguration = {
    type = "structure",
    id = "LayoutConfiguration",
    members = {
        grid = M.GridConfiguration,
        pip = M.PipConfiguration,
    },
}

M.CompositionState = {
    STARTING = "STARTING",
    ACTIVE = "ACTIVE",
    STOPPING = "STOPPING",
    FAILED = "FAILED",
    STOPPED = "STOPPED",
}

M.Composition = {
    type = "structure",
    id = "Composition",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stageArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        layout = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LayoutConfiguration }),
        destinations = {
            type = "list",
            member = M.Destination,
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        startTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetCompositionOutput = {
    type = "structure",
    id = "GetCompositionOutput",
    members = {
        composition = M.Composition,
    },
}

M.GetEncoderConfigurationInput = {
    type = "structure",
    id = "GetEncoderConfigurationInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetEncoderConfigurationOutput = {
    type = "structure",
    id = "GetEncoderConfigurationOutput",
    members = {
        encoderConfiguration = M.EncoderConfiguration,
    },
}

M.GetIngestConfigurationInput = {
    type = "structure",
    id = "GetIngestConfigurationInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetIngestConfigurationOutput = {
    type = "structure",
    id = "GetIngestConfigurationOutput",
    members = {
        ingestConfiguration = M.IngestConfiguration,
    },
}

M.GetParticipantInput = {
    type = "structure",
    id = "GetParticipantInput",
    members = {
        stageArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        participantId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ParticipantProtocol = {
    UNKNOWN = "UNKNOWN",
    WHIP = "WHIP",
    RTMP = "RTMP",
    RTMPS = "RTMPS",
}

M.ParticipantRecordingState = {
    STARTING = "STARTING",
    ACTIVE = "ACTIVE",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
    FAILED = "FAILED",
    DISABLED = "DISABLED",
}

M.ReplicationState = {
    ACTIVE = "ACTIVE",
    STOPPED = "STOPPED",
}

M.ReplicationType = {
    SOURCE = "SOURCE",
    REPLICA = "REPLICA",
    NONE = "NONE",
}

M.ParticipantState = {
    CONNECTED = "CONNECTED",
    DISCONNECTED = "DISCONNECTED",
}

M.Participant = {
    type = "structure",
    id = "Participant",
    members = {
        participantId = {
            type = "string",
        },
        userId = {
            type = "string",
        },
        state = {
            type = "string",
        },
        firstJoinTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        published = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ispName = {
            type = "string",
        },
        osName = {
            type = "string",
        },
        osVersion = {
            type = "string",
        },
        browserName = {
            type = "string",
        },
        browserVersion = {
            type = "string",
        },
        sdkVersion = {
            type = "string",
        },
        recordingS3BucketName = {
            type = "string",
        },
        recordingS3Prefix = {
            type = "string",
        },
        recordingState = {
            type = "string",
        },
        protocol = {
            type = "string",
        },
        replicationType = {
            type = "string",
        },
        replicationState = {
            type = "string",
        },
        sourceStageArn = {
            type = "string",
        },
        sourceSessionId = {
            type = "string",
        },
        redundantIngest = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ingestConfigurationArn = {
            type = "string",
        },
    },
}

M.GetParticipantOutput = {
    type = "structure",
    id = "GetParticipantOutput",
    members = {
        participant = M.Participant,
    },
}

M.GetPublicKeyInput = {
    type = "structure",
    id = "GetPublicKeyInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PublicKey = {
    type = "structure",
    id = "PublicKey",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        publicKeyMaterial = {
            type = "string",
        },
        fingerprint = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetPublicKeyOutput = {
    type = "structure",
    id = "GetPublicKeyOutput",
    members = {
        publicKey = M.PublicKey,
    },
}

M.GetStageInput = {
    type = "structure",
    id = "GetStageInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetStageOutput = {
    type = "structure",
    id = "GetStageOutput",
    members = {
        stage = M.Stage,
    },
}

M.GetStageSessionInput = {
    type = "structure",
    id = "GetStageSessionInput",
    members = {
        stageArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StageSession = {
    type = "structure",
    id = "StageSession",
    members = {
        sessionId = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetStageSessionOutput = {
    type = "structure",
    id = "GetStageSessionOutput",
    members = {
        stageSession = M.StageSession,
    },
}

M.GetStorageConfigurationInput = {
    type = "structure",
    id = "GetStorageConfigurationInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetStorageConfigurationOutput = {
    type = "structure",
    id = "GetStorageConfigurationOutput",
    members = {
        storageConfiguration = M.StorageConfiguration,
    },
}

M.ImportPublicKeyInput = {
    type = "structure",
    id = "ImportPublicKeyInput",
    members = {
        publicKeyMaterial = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ImportPublicKeyOutput = {
    type = "structure",
    id = "ImportPublicKeyOutput",
    members = {
        publicKey = M.PublicKey,
    },
}

M.ListCompositionsInput = {
    type = "structure",
    id = "ListCompositionsInput",
    members = {
        filterByStageArn = {
            type = "string",
        },
        filterByEncoderConfigurationArn = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.DestinationSummary = {
    type = "structure",
    id = "DestinationSummary",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.CompositionSummary = {
    type = "structure",
    id = "CompositionSummary",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stageArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinations = {
            type = "list",
            member = M.DestinationSummary,
            traits = {
                required = true,
            },
        },
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        startTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListCompositionsOutput = {
    type = "structure",
    id = "ListCompositionsOutput",
    members = {
        compositions = {
            type = "list",
            member = M.CompositionSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListEncoderConfigurationsInput = {
    type = "structure",
    id = "ListEncoderConfigurationsInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.EncoderConfigurationSummary = {
    type = "structure",
    id = "EncoderConfigurationSummary",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListEncoderConfigurationsOutput = {
    type = "structure",
    id = "ListEncoderConfigurationsOutput",
    members = {
        encoderConfigurations = {
            type = "list",
            member = M.EncoderConfigurationSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListIngestConfigurationsInput = {
    type = "structure",
    id = "ListIngestConfigurationsInput",
    members = {
        filterByStageArn = {
            type = "string",
        },
        filterByState = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.IngestConfigurationSummary = {
    type = "structure",
    id = "IngestConfigurationSummary",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ingestProtocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stageArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        participantId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userId = {
            type = "string",
        },
        redundantIngest = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ListIngestConfigurationsOutput = {
    type = "structure",
    id = "ListIngestConfigurationsOutput",
    members = {
        ingestConfigurations = {
            type = "list",
            member = M.IngestConfigurationSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListParticipantEventsInput = {
    type = "structure",
    id = "ListParticipantEventsInput",
    members = {
        stageArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        participantId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.EventErrorCode = {
    INSUFFICIENT_CAPABILITIES = "INSUFFICIENT_CAPABILITIES",
    QUOTA_EXCEEDED = "QUOTA_EXCEEDED",
    PUBLISHER_NOT_FOUND = "PUBLISHER_NOT_FOUND",
    BITRATE_EXCEEDED = "BITRATE_EXCEEDED",
    RESOLUTION_EXCEEDED = "RESOLUTION_EXCEEDED",
    STREAM_DURATION_EXCEEDED = "STREAM_DURATION_EXCEEDED",
    INVALID_AUDIO_CODEC = "INVALID_AUDIO_CODEC",
    INVALID_VIDEO_CODEC = "INVALID_VIDEO_CODEC",
    INVALID_PROTOCOL = "INVALID_PROTOCOL",
    INVALID_STREAM_KEY = "INVALID_STREAM_KEY",
    REUSE_OF_STREAM_KEY = "REUSE_OF_STREAM_KEY",
    B_FRAME_PRESENT = "B_FRAME_PRESENT",
    INVALID_INPUT = "INVALID_INPUT",
    INTERNAL_SERVER_EXCEPTION = "INTERNAL_SERVER_EXCEPTION",
}

M.EventName = {
    JOINED = "JOINED",
    LEFT = "LEFT",
    PUBLISH_STARTED = "PUBLISH_STARTED",
    PUBLISH_STOPPED = "PUBLISH_STOPPED",
    SUBSCRIBE_STARTED = "SUBSCRIBE_STARTED",
    SUBSCRIBE_STOPPED = "SUBSCRIBE_STOPPED",
    PUBLISH_ERROR = "PUBLISH_ERROR",
    SUBSCRIBE_ERROR = "SUBSCRIBE_ERROR",
    JOIN_ERROR = "JOIN_ERROR",
    REPLICATION_STARTED = "REPLICATION_STARTED",
    REPLICATION_STOPPED = "REPLICATION_STOPPED",
    TOKEN_EXCHANGED = "TOKEN_EXCHANGED",
}

M.ExchangedParticipantToken = {
    type = "structure",
    id = "ExchangedParticipantToken",
    members = {
        capabilities = {
            type = "list",
            member = { type = "string" },
        },
        attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        userId = {
            type = "string",
        },
        expirationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.Event = {
    type = "structure",
    id = "Event",
    members = {
        name = {
            type = "string",
        },
        participantId = {
            type = "string",
        },
        eventTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        remoteParticipantId = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
        destinationStageArn = {
            type = "string",
        },
        destinationSessionId = {
            type = "string",
        },
        replica = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        previousToken = M.ExchangedParticipantToken,
        newToken = M.ExchangedParticipantToken,
    },
}

M.ListParticipantEventsOutput = {
    type = "structure",
    id = "ListParticipantEventsOutput",
    members = {
        events = {
            type = "list",
            member = M.Event,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListParticipantReplicasInput = {
    type = "structure",
    id = "ListParticipantReplicasInput",
    members = {
        sourceStageArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        participantId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ParticipantReplica = {
    type = "structure",
    id = "ParticipantReplica",
    members = {
        sourceStageArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        participantId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceSessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationStageArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationSessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        replicationState = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListParticipantReplicasOutput = {
    type = "structure",
    id = "ListParticipantReplicasOutput",
    members = {
        replicas = {
            type = "list",
            member = M.ParticipantReplica,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ParticipantRecordingFilterByRecordingState = {
    STARTING = "STARTING",
    ACTIVE = "ACTIVE",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
    FAILED = "FAILED",
}

M.ListParticipantsInput = {
    type = "structure",
    id = "ListParticipantsInput",
    members = {
        stageArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filterByUserId = {
            type = "string",
        },
        filterByPublished = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        filterByState = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        filterByRecordingState = {
            type = "string",
        },
    },
}

M.ParticipantSummary = {
    type = "structure",
    id = "ParticipantSummary",
    members = {
        participantId = {
            type = "string",
        },
        userId = {
            type = "string",
        },
        state = {
            type = "string",
        },
        firstJoinTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        published = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        recordingState = {
            type = "string",
        },
        replicationType = {
            type = "string",
        },
        replicationState = {
            type = "string",
        },
        sourceStageArn = {
            type = "string",
        },
        sourceSessionId = {
            type = "string",
        },
        redundantIngest = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ingestConfigurationArn = {
            type = "string",
        },
    },
}

M.ListParticipantsOutput = {
    type = "structure",
    id = "ListParticipantsOutput",
    members = {
        participants = {
            type = "list",
            member = M.ParticipantSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListPublicKeysInput = {
    type = "structure",
    id = "ListPublicKeysInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.PublicKeySummary = {
    type = "structure",
    id = "PublicKeySummary",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListPublicKeysOutput = {
    type = "structure",
    id = "ListPublicKeysOutput",
    members = {
        publicKeys = {
            type = "list",
            member = M.PublicKeySummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListStagesInput = {
    type = "structure",
    id = "ListStagesInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.StageSummary = {
    type = "structure",
    id = "StageSummary",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        activeSessionId = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListStagesOutput = {
    type = "structure",
    id = "ListStagesOutput",
    members = {
        stages = {
            type = "list",
            member = M.StageSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListStageSessionsInput = {
    type = "structure",
    id = "ListStageSessionsInput",
    members = {
        stageArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.StageSessionSummary = {
    type = "structure",
    id = "StageSessionSummary",
    members = {
        sessionId = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListStageSessionsOutput = {
    type = "structure",
    id = "ListStageSessionsOutput",
    members = {
        stageSessions = {
            type = "list",
            member = M.StageSessionSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListStorageConfigurationsInput = {
    type = "structure",
    id = "ListStorageConfigurationsInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.StorageConfigurationSummary = {
    type = "structure",
    id = "StorageConfigurationSummary",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        s3 = M.S3StorageConfiguration,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListStorageConfigurationsOutput = {
    type = "structure",
    id = "ListStorageConfigurationsOutput",
    members = {
        storageConfigurations = {
            type = "list",
            member = M.StorageConfigurationSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
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

M.StartCompositionInput = {
    type = "structure",
    id = "StartCompositionInput",
    members = {
        stageArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        idempotencyToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        layout = M.LayoutConfiguration,
        destinations = {
            type = "list",
            member = M.DestinationConfiguration,
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartCompositionOutput = {
    type = "structure",
    id = "StartCompositionOutput",
    members = {
        composition = M.Composition,
    },
}

M.StartParticipantReplicationInput = {
    type = "structure",
    id = "StartParticipantReplicationInput",
    members = {
        sourceStageArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationStageArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        participantId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reconnectWindowSeconds = {
            type = "integer",
        },
        attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartParticipantReplicationOutput = {
    type = "structure",
    id = "StartParticipantReplicationOutput",
    members = {
        accessControlAllowOrigin = {
            type = "string",
            traits = {
                http_header = "Access-Control-Allow-Origin",
            },
        },
        accessControlExposeHeaders = {
            type = "string",
            traits = {
                http_header = "Access-Control-Expose-Headers",
            },
        },
        cacheControl = {
            type = "string",
            traits = {
                http_header = "Cache-Control",
            },
        },
        contentSecurityPolicy = {
            type = "string",
            traits = {
                http_header = "Content-Security-Policy",
            },
        },
        strictTransportSecurity = {
            type = "string",
            traits = {
                http_header = "Strict-Transport-Security",
            },
        },
        xContentTypeOptions = {
            type = "string",
            traits = {
                http_header = "X-Content-Type-Options",
            },
        },
        xFrameOptions = {
            type = "string",
            traits = {
                http_header = "X-Frame-Options",
            },
        },
    },
}

M.StopCompositionInput = {
    type = "structure",
    id = "StopCompositionInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopCompositionOutput = {
    type = "structure",
    id = "StopCompositionOutput",
}

M.StopParticipantReplicationInput = {
    type = "structure",
    id = "StopParticipantReplicationInput",
    members = {
        sourceStageArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationStageArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        participantId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopParticipantReplicationOutput = {
    type = "structure",
    id = "StopParticipantReplicationOutput",
    members = {
        accessControlAllowOrigin = {
            type = "string",
            traits = {
                http_header = "Access-Control-Allow-Origin",
            },
        },
        accessControlExposeHeaders = {
            type = "string",
            traits = {
                http_header = "Access-Control-Expose-Headers",
            },
        },
        cacheControl = {
            type = "string",
            traits = {
                http_header = "Cache-Control",
            },
        },
        contentSecurityPolicy = {
            type = "string",
            traits = {
                http_header = "Content-Security-Policy",
            },
        },
        strictTransportSecurity = {
            type = "string",
            traits = {
                http_header = "Strict-Transport-Security",
            },
        },
        xContentTypeOptions = {
            type = "string",
            traits = {
                http_header = "X-Content-Type-Options",
            },
        },
        xFrameOptions = {
            type = "string",
            traits = {
                http_header = "X-Frame-Options",
            },
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

M.UpdateIngestConfigurationInput = {
    type = "structure",
    id = "UpdateIngestConfigurationInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stageArn = {
            type = "string",
        },
        redundantIngest = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.UpdateIngestConfigurationOutput = {
    type = "structure",
    id = "UpdateIngestConfigurationOutput",
    members = {
        ingestConfiguration = M.IngestConfiguration,
    },
}

M.UpdateStageInput = {
    type = "structure",
    id = "UpdateStageInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        autoParticipantRecordingConfiguration = M.AutoParticipantRecordingConfiguration,
    },
}

M.UpdateStageOutput = {
    type = "structure",
    id = "UpdateStageOutput",
    members = {
        stage = M.Stage,
    },
}

return M
