local M = {}

M.AccessDeniedException = {
    type = "structure",
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
    members = {
        encoderConfiguration = M.EncoderConfiguration,
    },
}

M.InternalServerException = {
    type = "structure",
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
    members = {
        participantToken = M.ParticipantToken,
    },
}

M.ParticipantRecordingHlsConfiguration = {
    type = "structure",
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
    members = {
        storageConfiguration = M.StorageConfiguration,
    },
}

M.DeleteEncoderConfigurationInput = {
    type = "structure",
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
}

M.DeleteIngestConfigurationInput = {
    type = "structure",
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
}

M.DeletePublicKeyInput = {
    type = "structure",
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
}

M.DeleteStageInput = {
    type = "structure",
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
}

M.DeleteStorageConfigurationInput = {
    type = "structure",
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
}

M.DisconnectParticipantInput = {
    type = "structure",
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
}

M.GetCompositionInput = {
    type = "structure",
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
    members = {
        hlsConfiguration = M.CompositionRecordingHlsConfiguration,
        format = {
            type = "string",
        },
    },
}

M.CompositionThumbnailConfiguration = {
    type = "structure",
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
    members = {
        composition = M.Composition,
    },
}

M.GetEncoderConfigurationInput = {
    type = "structure",
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
    members = {
        encoderConfiguration = M.EncoderConfiguration,
    },
}

M.GetIngestConfigurationInput = {
    type = "structure",
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
    members = {
        ingestConfiguration = M.IngestConfiguration,
    },
}

M.GetParticipantInput = {
    type = "structure",
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
    members = {
        participant = M.Participant,
    },
}

M.GetPublicKeyInput = {
    type = "structure",
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
    members = {
        publicKey = M.PublicKey,
    },
}

M.GetStageInput = {
    type = "structure",
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
    members = {
        stage = M.Stage,
    },
}

M.GetStageSessionInput = {
    type = "structure",
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
    members = {
        stageSession = M.StageSession,
    },
}

M.GetStorageConfigurationInput = {
    type = "structure",
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
    members = {
        storageConfiguration = M.StorageConfiguration,
    },
}

M.ImportPublicKeyInput = {
    type = "structure",
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
    members = {
        publicKey = M.PublicKey,
    },
}

M.ListCompositionsInput = {
    type = "structure",
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

M.StartCompositionInput = {
    type = "structure",
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
    members = {
        composition = M.Composition,
    },
}

M.StartParticipantReplicationInput = {
    type = "structure",
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
}

M.StopParticipantReplicationInput = {
    type = "structure",
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

M.UpdateIngestConfigurationInput = {
    type = "structure",
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
    members = {
        ingestConfiguration = M.IngestConfiguration,
    },
}

M.UpdateStageInput = {
    type = "structure",
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
    members = {
        stage = M.Stage,
    },
}

return M
