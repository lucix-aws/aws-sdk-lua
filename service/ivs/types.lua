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

M.MediaTailorPlaybackConfiguration = {
    type = "structure",
    id = "MediaTailorPlaybackConfiguration",
    members = {
        playbackConfigurationArn = {
            type = "string",
        },
    },
}

M.AdConfiguration = {
    type = "structure",
    id = "AdConfiguration",
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
        mediaTailorPlaybackConfigurations = {
            type = "list",
            member = M.MediaTailorPlaybackConfiguration,
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

M.AdConfigurationSummary = {
    type = "structure",
    id = "AdConfigurationSummary",
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
        mediaTailorPlaybackConfigurations = {
            type = "list",
            member = M.MediaTailorPlaybackConfiguration,
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

M.BatchGetChannelInput = {
    type = "structure",
    id = "BatchGetChannelInput",
    members = {
        arns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ContainerFormat = {
    TS = "TS",
    FragmentedMP4 = "FRAGMENTED_MP4",
}

M.ChannelLatencyMode = {
    NormalLatency = "NORMAL",
    LowLatency = "LOW",
}

M.MultitrackMaximumResolution = {
    SD = "SD",
    HD = "HD",
    FULL_HD = "FULL_HD",
}

M.MultitrackPolicy = {
    ALLOW = "ALLOW",
    REQUIRE = "REQUIRE",
}

M.MultitrackInputConfiguration = {
    type = "structure",
    id = "MultitrackInputConfiguration",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        policy = {
            type = "string",
        },
        maximumResolution = {
            type = "string",
        },
    },
}

M.TranscodePreset = {
    HigherBandwidthTranscodePreset = "HIGHER_BANDWIDTH_DELIVERY",
    ConstrainedBandwidthTranscodePreset = "CONSTRAINED_BANDWIDTH_DELIVERY",
}

M.Srt = {
    type = "structure",
    id = "Srt",
    members = {
        endpoint = {
            type = "string",
        },
        passphrase = {
            type = "string",
        },
    },
}

M.ChannelType = {
    BasicChannelType = "BASIC",
    StandardChannelType = "STANDARD",
    AdvancedSDChannelType = "ADVANCED_SD",
    AdvancedHDChannelType = "ADVANCED_HD",
}

M.Channel = {
    type = "structure",
    id = "Channel",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        latencyMode = {
            type = "string",
        },
        type = {
            type = "string",
        },
        recordingConfigurationArn = {
            type = "string",
        },
        ingestEndpoint = {
            type = "string",
        },
        playbackUrl = {
            type = "string",
        },
        authorized = {
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
        insecureIngest = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        preset = {
            type = "string",
        },
        srt = M.Srt,
        playbackRestrictionPolicyArn = {
            type = "string",
        },
        multitrackInputConfiguration = M.MultitrackInputConfiguration,
        containerFormat = {
            type = "string",
        },
        adConfigurationArn = {
            type = "string",
        },
    },
}

M.BatchError = {
    type = "structure",
    id = "BatchError",
    members = {
        arn = {
            type = "string",
        },
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.BatchGetChannelOutput = {
    type = "structure",
    id = "BatchGetChannelOutput",
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
        channels = {
            type = "list",
            member = M.Channel,
        },
        errors = {
            type = "list",
            member = M.BatchError,
        },
    },
}

M.ServiceUnavailable = {
    type = "structure",
    id = "ServiceUnavailable",
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

M.BatchGetStreamKeyInput = {
    type = "structure",
    id = "BatchGetStreamKeyInput",
    members = {
        arns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.StreamKey = {
    type = "structure",
    id = "StreamKey",
    members = {
        arn = {
            type = "string",
        },
        value = {
            type = "string",
        },
        channelArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.BatchGetStreamKeyOutput = {
    type = "structure",
    id = "BatchGetStreamKeyOutput",
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
        streamKeys = {
            type = "list",
            member = M.StreamKey,
        },
        errors = {
            type = "list",
            member = M.BatchError,
        },
    },
}

M.BatchStartViewerSessionRevocationViewerSession = {
    type = "structure",
    id = "BatchStartViewerSessionRevocationViewerSession",
    members = {
        channelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        viewerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        viewerSessionVersionsLessThanOrEqualTo = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.BatchStartViewerSessionRevocationInput = {
    type = "structure",
    id = "BatchStartViewerSessionRevocationInput",
    members = {
        viewerSessions = {
            type = "list",
            member = M.BatchStartViewerSessionRevocationViewerSession,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchStartViewerSessionRevocationError = {
    type = "structure",
    id = "BatchStartViewerSessionRevocationError",
    members = {
        channelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        viewerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.BatchStartViewerSessionRevocationOutput = {
    type = "structure",
    id = "BatchStartViewerSessionRevocationOutput",
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
        errors = {
            type = "list",
            member = M.BatchStartViewerSessionRevocationError,
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

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
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

M.CreateAdConfigurationInput = {
    type = "structure",
    id = "CreateAdConfigurationInput",
    members = {
        name = {
            type = "string",
        },
        mediaTailorPlaybackConfigurations = {
            type = "list",
            member = M.MediaTailorPlaybackConfiguration,
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

M.CreateAdConfigurationOutput = {
    type = "structure",
    id = "CreateAdConfigurationOutput",
    members = {
        adConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AdConfiguration }),
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

M.CreateChannelInput = {
    type = "structure",
    id = "CreateChannelInput",
    members = {
        name = {
            type = "string",
        },
        latencyMode = {
            type = "string",
        },
        type = {
            type = "string",
        },
        authorized = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        recordingConfigurationArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        insecureIngest = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        preset = {
            type = "string",
        },
        playbackRestrictionPolicyArn = {
            type = "string",
        },
        multitrackInputConfiguration = M.MultitrackInputConfiguration,
        containerFormat = {
            type = "string",
        },
        adConfigurationArn = {
            type = "string",
        },
    },
}

M.CreateChannelOutput = {
    type = "structure",
    id = "CreateChannelOutput",
    members = {
        channel = M.Channel,
        streamKey = M.StreamKey,
    },
}

M.CreatePlaybackRestrictionPolicyInput = {
    type = "structure",
    id = "CreatePlaybackRestrictionPolicyInput",
    members = {
        allowedCountries = {
            type = "list",
            member = { type = "string" },
        },
        allowedOrigins = {
            type = "list",
            member = { type = "string" },
        },
        enableStrictOriginEnforcement = {
            type = "boolean",
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

M.PlaybackRestrictionPolicy = {
    type = "structure",
    id = "PlaybackRestrictionPolicy",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        allowedCountries = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        allowedOrigins = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        enableStrictOriginEnforcement = {
            type = "boolean",
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

M.CreatePlaybackRestrictionPolicyOutput = {
    type = "structure",
    id = "CreatePlaybackRestrictionPolicyOutput",
    members = {
        playbackRestrictionPolicy = M.PlaybackRestrictionPolicy,
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
    type = "structure",
    id = "DestinationConfiguration",
    members = {
        s3 = M.S3DestinationConfiguration,
    },
}

M.RenditionConfigurationRendition = {
    SD = "SD",
    HD = "HD",
    FULL_HD = "FULL_HD",
    LOWEST_RESOLUTION = "LOWEST_RESOLUTION",
}

M.RenditionConfigurationRenditionSelection = {
    ALL = "ALL",
    NONE = "NONE",
    CUSTOM = "CUSTOM",
}

M.RenditionConfiguration = {
    type = "structure",
    id = "RenditionConfiguration",
    members = {
        renditionSelection = {
            type = "string",
        },
        renditions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RecordingMode = {
    Disabled = "DISABLED",
    Interval = "INTERVAL",
}

M.ThumbnailConfigurationResolution = {
    SD = "SD",
    HD = "HD",
    FULL_HD = "FULL_HD",
    LOWEST_RESOLUTION = "LOWEST_RESOLUTION",
}

M.ThumbnailConfigurationStorage = {
    SEQUENTIAL = "SEQUENTIAL",
    LATEST = "LATEST",
}

M.ThumbnailConfiguration = {
    type = "structure",
    id = "ThumbnailConfiguration",
    members = {
        recordingMode = {
            type = "string",
        },
        targetIntervalSeconds = {
            type = "long",
        },
        resolution = {
            type = "string",
        },
        storage = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateRecordingConfigurationInput = {
    type = "structure",
    id = "CreateRecordingConfigurationInput",
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
        thumbnailConfiguration = M.ThumbnailConfiguration,
        recordingReconnectWindowSeconds = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        renditionConfiguration = M.RenditionConfiguration,
    },
}

M.RecordingConfigurationState = {
    Creating = "CREATING",
    CreateFailed = "CREATE_FAILED",
    Active = "ACTIVE",
}

M.RecordingConfiguration = {
    type = "structure",
    id = "RecordingConfiguration",
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
        destinationConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DestinationConfiguration }),
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
        thumbnailConfiguration = M.ThumbnailConfiguration,
        recordingReconnectWindowSeconds = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        renditionConfiguration = M.RenditionConfiguration,
    },
}

M.CreateRecordingConfigurationOutput = {
    type = "structure",
    id = "CreateRecordingConfigurationOutput",
    members = {
        recordingConfiguration = M.RecordingConfiguration,
    },
}

M.CreateStreamKeyInput = {
    type = "structure",
    id = "CreateStreamKeyInput",
    members = {
        channelArn = {
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
    },
}

M.CreateStreamKeyOutput = {
    type = "structure",
    id = "CreateStreamKeyOutput",
    members = {
        streamKey = M.StreamKey,
    },
}

M.DeleteAdConfigurationInput = {
    type = "structure",
    id = "DeleteAdConfigurationInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAdConfigurationOutput = {
    type = "structure",
    id = "DeleteAdConfigurationOutput",
}

M.DeleteChannelInput = {
    type = "structure",
    id = "DeleteChannelInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteChannelOutput = {
    type = "structure",
    id = "DeleteChannelOutput",
}

M.DeletePlaybackKeyPairInput = {
    type = "structure",
    id = "DeletePlaybackKeyPairInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePlaybackKeyPairOutput = {
    type = "structure",
    id = "DeletePlaybackKeyPairOutput",
}

M.DeletePlaybackRestrictionPolicyInput = {
    type = "structure",
    id = "DeletePlaybackRestrictionPolicyInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePlaybackRestrictionPolicyOutput = {
    type = "structure",
    id = "DeletePlaybackRestrictionPolicyOutput",
}

M.DeleteRecordingConfigurationInput = {
    type = "structure",
    id = "DeleteRecordingConfigurationInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRecordingConfigurationOutput = {
    type = "structure",
    id = "DeleteRecordingConfigurationOutput",
}

M.DeleteStreamKeyInput = {
    type = "structure",
    id = "DeleteStreamKeyInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteStreamKeyOutput = {
    type = "structure",
    id = "DeleteStreamKeyOutput",
}

M.GetAdConfigurationInput = {
    type = "structure",
    id = "GetAdConfigurationInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAdConfigurationOutput = {
    type = "structure",
    id = "GetAdConfigurationOutput",
    members = {
        adConfiguration = M.AdConfiguration,
    },
}

M.GetChannelInput = {
    type = "structure",
    id = "GetChannelInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetChannelOutput = {
    type = "structure",
    id = "GetChannelOutput",
    members = {
        channel = M.Channel,
    },
}

M.GetPlaybackKeyPairInput = {
    type = "structure",
    id = "GetPlaybackKeyPairInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PlaybackKeyPair = {
    type = "structure",
    id = "PlaybackKeyPair",
    members = {
        arn = {
            type = "string",
        },
        name = {
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

M.GetPlaybackKeyPairOutput = {
    type = "structure",
    id = "GetPlaybackKeyPairOutput",
    members = {
        keyPair = M.PlaybackKeyPair,
    },
}

M.GetPlaybackRestrictionPolicyInput = {
    type = "structure",
    id = "GetPlaybackRestrictionPolicyInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetPlaybackRestrictionPolicyOutput = {
    type = "structure",
    id = "GetPlaybackRestrictionPolicyOutput",
    members = {
        playbackRestrictionPolicy = M.PlaybackRestrictionPolicy,
    },
}

M.GetRecordingConfigurationInput = {
    type = "structure",
    id = "GetRecordingConfigurationInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetRecordingConfigurationOutput = {
    type = "structure",
    id = "GetRecordingConfigurationOutput",
    members = {
        recordingConfiguration = M.RecordingConfiguration,
    },
}

M.ChannelNotBroadcasting = {
    type = "structure",
    id = "ChannelNotBroadcasting",
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

M.GetStreamInput = {
    type = "structure",
    id = "GetStreamInput",
    members = {
        channelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StreamHealth = {
    StreamHealthy = "HEALTHY",
    Starving = "STARVING",
    Unknown = "UNKNOWN",
}

M.StreamState = {
    StreamLive = "LIVE",
    StreamOffline = "OFFLINE",
}

M.Stream = {
    type = "structure",
    id = "Stream",
    members = {
        channelArn = {
            type = "string",
        },
        streamId = {
            type = "string",
        },
        playbackUrl = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        state = {
            type = "string",
        },
        health = {
            type = "string",
        },
        viewerCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.GetStreamOutput = {
    type = "structure",
    id = "GetStreamOutput",
    members = {
        stream = M.Stream,
    },
}

M.GetStreamKeyInput = {
    type = "structure",
    id = "GetStreamKeyInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetStreamKeyOutput = {
    type = "structure",
    id = "GetStreamKeyOutput",
    members = {
        streamKey = M.StreamKey,
    },
}

M.GetStreamSessionInput = {
    type = "structure",
    id = "GetStreamSessionInput",
    members = {
        channelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        streamId = {
            type = "string",
        },
    },
}

M.AudioConfiguration = {
    type = "structure",
    id = "AudioConfiguration",
    members = {
        codec = {
            type = "string",
        },
        targetBitrate = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        sampleRate = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        channels = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        track = {
            type = "string",
        },
    },
}

M.VideoConfiguration = {
    type = "structure",
    id = "VideoConfiguration",
    members = {
        avcProfile = {
            type = "string",
        },
        avcLevel = {
            type = "string",
        },
        codec = {
            type = "string",
        },
        encoder = {
            type = "string",
        },
        targetBitrate = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        targetFramerate = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        videoHeight = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        videoWidth = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        level = {
            type = "string",
        },
        track = {
            type = "string",
        },
        profile = {
            type = "string",
        },
    },
}

M.IngestConfiguration = {
    type = "structure",
    id = "IngestConfiguration",
    members = {
        video = M.VideoConfiguration,
        audio = M.AudioConfiguration,
    },
}

M.IngestConfigurations = {
    type = "structure",
    id = "IngestConfigurations",
    members = {
        videoConfigurations = {
            type = "list",
            member = M.VideoConfiguration,
            traits = {
                required = true,
            },
        },
        audioConfigurations = {
            type = "list",
            member = M.AudioConfiguration,
            traits = {
                required = true,
            },
        },
    },
}

M.StreamEvent = {
    type = "structure",
    id = "StreamEvent",
    members = {
        name = {
            type = "string",
        },
        type = {
            type = "string",
        },
        eventTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        code = {
            type = "string",
        },
    },
}

M.StreamSession = {
    type = "structure",
    id = "StreamSession",
    members = {
        streamId = {
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
        channel = M.Channel,
        ingestConfiguration = M.IngestConfiguration,
        ingestConfigurations = M.IngestConfigurations,
        recordingConfiguration = M.RecordingConfiguration,
        truncatedEvents = {
            type = "list",
            member = M.StreamEvent,
        },
    },
}

M.GetStreamSessionOutput = {
    type = "structure",
    id = "GetStreamSessionOutput",
    members = {
        streamSession = M.StreamSession,
    },
}

M.ImportPlaybackKeyPairInput = {
    type = "structure",
    id = "ImportPlaybackKeyPairInput",
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

M.ImportPlaybackKeyPairOutput = {
    type = "structure",
    id = "ImportPlaybackKeyPairOutput",
    members = {
        keyPair = M.PlaybackKeyPair,
    },
}

M.InsertAdBreakInput = {
    type = "structure",
    id = "InsertAdBreakInput",
    members = {
        channelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        durationSeconds = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.InsertAdBreakOutput = {
    type = "structure",
    id = "InsertAdBreakOutput",
    members = {
        adBreakId = {
            type = "string",
        },
    },
}

M.ListAdConfigurationsInput = {
    type = "structure",
    id = "ListAdConfigurationsInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ListAdConfigurationsOutput = {
    type = "structure",
    id = "ListAdConfigurationsOutput",
    members = {
        adConfigurations = {
            type = "list",
            member = M.AdConfigurationSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListChannelsInput = {
    type = "structure",
    id = "ListChannelsInput",
    members = {
        filterByName = {
            type = "string",
        },
        filterByRecordingConfigurationArn = {
            type = "string",
        },
        filterByPlaybackRestrictionPolicyArn = {
            type = "string",
        },
        filterByAdConfigurationArn = {
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

M.ChannelSummary = {
    type = "structure",
    id = "ChannelSummary",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        latencyMode = {
            type = "string",
        },
        authorized = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        recordingConfigurationArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        insecureIngest = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        type = {
            type = "string",
        },
        preset = {
            type = "string",
        },
        playbackRestrictionPolicyArn = {
            type = "string",
        },
        adConfigurationArn = {
            type = "string",
        },
    },
}

M.ListChannelsOutput = {
    type = "structure",
    id = "ListChannelsOutput",
    members = {
        channels = {
            type = "list",
            member = M.ChannelSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListPlaybackKeyPairsInput = {
    type = "structure",
    id = "ListPlaybackKeyPairsInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.PlaybackKeyPairSummary = {
    type = "structure",
    id = "PlaybackKeyPairSummary",
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

M.ListPlaybackKeyPairsOutput = {
    type = "structure",
    id = "ListPlaybackKeyPairsOutput",
    members = {
        keyPairs = {
            type = "list",
            member = M.PlaybackKeyPairSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListPlaybackRestrictionPoliciesInput = {
    type = "structure",
    id = "ListPlaybackRestrictionPoliciesInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.PlaybackRestrictionPolicySummary = {
    type = "structure",
    id = "PlaybackRestrictionPolicySummary",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        allowedCountries = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        allowedOrigins = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        enableStrictOriginEnforcement = {
            type = "boolean",
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

M.ListPlaybackRestrictionPoliciesOutput = {
    type = "structure",
    id = "ListPlaybackRestrictionPoliciesOutput",
    members = {
        playbackRestrictionPolicies = {
            type = "list",
            member = M.PlaybackRestrictionPolicySummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListRecordingConfigurationsInput = {
    type = "structure",
    id = "ListRecordingConfigurationsInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.RecordingConfigurationSummary = {
    type = "structure",
    id = "RecordingConfigurationSummary",
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
        destinationConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DestinationConfiguration }),
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
    },
}

M.ListRecordingConfigurationsOutput = {
    type = "structure",
    id = "ListRecordingConfigurationsOutput",
    members = {
        recordingConfigurations = {
            type = "list",
            member = M.RecordingConfigurationSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListStreamKeysInput = {
    type = "structure",
    id = "ListStreamKeysInput",
    members = {
        channelArn = {
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

M.StreamKeySummary = {
    type = "structure",
    id = "StreamKeySummary",
    members = {
        arn = {
            type = "string",
        },
        channelArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListStreamKeysOutput = {
    type = "structure",
    id = "ListStreamKeysOutput",
    members = {
        streamKeys = {
            type = "list",
            member = M.StreamKeySummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.StreamFilters = {
    type = "structure",
    id = "StreamFilters",
    members = {
        health = {
            type = "string",
        },
    },
}

M.ListStreamsInput = {
    type = "structure",
    id = "ListStreamsInput",
    members = {
        filterBy = M.StreamFilters,
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.StreamSummary = {
    type = "structure",
    id = "StreamSummary",
    members = {
        channelArn = {
            type = "string",
        },
        streamId = {
            type = "string",
        },
        state = {
            type = "string",
        },
        health = {
            type = "string",
        },
        viewerCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListStreamsOutput = {
    type = "structure",
    id = "ListStreamsOutput",
    members = {
        streams = {
            type = "list",
            member = M.StreamSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListStreamSessionsInput = {
    type = "structure",
    id = "ListStreamSessionsInput",
    members = {
        channelArn = {
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

M.StreamSessionSummary = {
    type = "structure",
    id = "StreamSessionSummary",
    members = {
        streamId = {
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
        hasErrorEvent = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ListStreamSessionsOutput = {
    type = "structure",
    id = "ListStreamSessionsOutput",
    members = {
        streamSessions = {
            type = "list",
            member = M.StreamSessionSummary,
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

M.PutMetadataInput = {
    type = "structure",
    id = "PutMetadataInput",
    members = {
        channelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metadata = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutMetadataOutput = {
    type = "structure",
    id = "PutMetadataOutput",
}

M.StartViewerSessionRevocationInput = {
    type = "structure",
    id = "StartViewerSessionRevocationInput",
    members = {
        channelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        viewerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        viewerSessionVersionsLessThanOrEqualTo = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.StartViewerSessionRevocationOutput = {
    type = "structure",
    id = "StartViewerSessionRevocationOutput",
}

M.StopStreamInput = {
    type = "structure",
    id = "StopStreamInput",
    members = {
        channelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopStreamOutput = {
    type = "structure",
    id = "StopStreamOutput",
}

M.StreamUnavailable = {
    type = "structure",
    id = "StreamUnavailable",
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

M.UpdateChannelInput = {
    type = "structure",
    id = "UpdateChannelInput",
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
        latencyMode = {
            type = "string",
        },
        type = {
            type = "string",
        },
        authorized = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        recordingConfigurationArn = {
            type = "string",
        },
        insecureIngest = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        preset = {
            type = "string",
        },
        playbackRestrictionPolicyArn = {
            type = "string",
        },
        multitrackInputConfiguration = M.MultitrackInputConfiguration,
        containerFormat = {
            type = "string",
        },
        adConfigurationArn = {
            type = "string",
        },
    },
}

M.UpdateChannelOutput = {
    type = "structure",
    id = "UpdateChannelOutput",
    members = {
        channel = M.Channel,
    },
}

M.UpdatePlaybackRestrictionPolicyInput = {
    type = "structure",
    id = "UpdatePlaybackRestrictionPolicyInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        allowedCountries = {
            type = "list",
            member = { type = "string" },
        },
        allowedOrigins = {
            type = "list",
            member = { type = "string" },
        },
        enableStrictOriginEnforcement = {
            type = "boolean",
        },
        name = {
            type = "string",
        },
    },
}

M.UpdatePlaybackRestrictionPolicyOutput = {
    type = "structure",
    id = "UpdatePlaybackRestrictionPolicyOutput",
    members = {
        playbackRestrictionPolicy = M.PlaybackRestrictionPolicy,
    },
}

return M
