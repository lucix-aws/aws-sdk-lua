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

M.MediaTailorPlaybackConfiguration = {
    type = "structure",
    members = {
        playbackConfigurationArn = {
            type = "string",
        },
    },
}

M.AdConfiguration = {
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

M.CreateAdConfigurationInput = {
    type = "structure",
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
    members = {
        adConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AdConfiguration }),
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

M.CreateChannelInput = {
    type = "structure",
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
    members = {
        channel = M.Channel,
        streamKey = M.StreamKey,
    },
}

M.CreatePlaybackRestrictionPolicyInput = {
    type = "structure",
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
    members = {
        playbackRestrictionPolicy = M.PlaybackRestrictionPolicy,
    },
}

M.S3DestinationConfiguration = {
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

M.DestinationConfiguration = {
    type = "structure",
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
    members = {
        recordingConfiguration = M.RecordingConfiguration,
    },
}

M.CreateStreamKeyInput = {
    type = "structure",
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
    members = {
        streamKey = M.StreamKey,
    },
}

M.DeleteAdConfigurationInput = {
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

M.DeleteAdConfigurationOutput = {
    type = "structure",
}

M.DeleteChannelInput = {
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

M.DeleteChannelOutput = {
    type = "structure",
}

M.DeletePlaybackKeyPairInput = {
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

M.DeletePlaybackKeyPairOutput = {
    type = "structure",
}

M.DeletePlaybackRestrictionPolicyInput = {
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

M.DeletePlaybackRestrictionPolicyOutput = {
    type = "structure",
}

M.DeleteRecordingConfigurationInput = {
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

M.DeleteRecordingConfigurationOutput = {
    type = "structure",
}

M.DeleteStreamKeyInput = {
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

M.DeleteStreamKeyOutput = {
    type = "structure",
}

M.GetAdConfigurationInput = {
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

M.GetAdConfigurationOutput = {
    type = "structure",
    members = {
        adConfiguration = M.AdConfiguration,
    },
}

M.GetChannelInput = {
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

M.GetChannelOutput = {
    type = "structure",
    members = {
        channel = M.Channel,
    },
}

M.GetPlaybackKeyPairInput = {
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

M.PlaybackKeyPair = {
    type = "structure",
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
    members = {
        keyPair = M.PlaybackKeyPair,
    },
}

M.GetPlaybackRestrictionPolicyInput = {
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

M.GetPlaybackRestrictionPolicyOutput = {
    type = "structure",
    members = {
        playbackRestrictionPolicy = M.PlaybackRestrictionPolicy,
    },
}

M.GetRecordingConfigurationInput = {
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

M.GetRecordingConfigurationOutput = {
    type = "structure",
    members = {
        recordingConfiguration = M.RecordingConfiguration,
    },
}

M.ChannelNotBroadcasting = {
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

M.GetStreamInput = {
    type = "structure",
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
    members = {
        stream = M.Stream,
    },
}

M.GetStreamKeyInput = {
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

M.GetStreamKeyOutput = {
    type = "structure",
    members = {
        streamKey = M.StreamKey,
    },
}

M.GetStreamSessionInput = {
    type = "structure",
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
    members = {
        video = M.VideoConfiguration,
        audio = M.AudioConfiguration,
    },
}

M.IngestConfigurations = {
    type = "structure",
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
    members = {
        name = {
            type = "string",
        },
        type = {
            type = "string",
        },
        eventTime = {
            type = "timestamp",
        },
        code = {
            type = "string",
        },
    },
}

M.StreamSession = {
    type = "structure",
    members = {
        streamId = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
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
    members = {
        streamSession = M.StreamSession,
    },
}

M.ImportPlaybackKeyPairInput = {
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

M.ImportPlaybackKeyPairOutput = {
    type = "structure",
    members = {
        keyPair = M.PlaybackKeyPair,
    },
}

M.InsertAdBreakInput = {
    type = "structure",
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
    members = {
        adBreakId = {
            type = "string",
        },
    },
}

M.ListAdConfigurationsInput = {
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

M.ListAdConfigurationsOutput = {
    type = "structure",
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
    members = {
        health = {
            type = "string",
        },
    },
}

M.ListStreamsInput = {
    type = "structure",
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
        },
    },
}

M.ListStreamsOutput = {
    type = "structure",
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
    members = {
        streamId = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
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

M.PutMetadataInput = {
    type = "structure",
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
}

M.StartViewerSessionRevocationInput = {
    type = "structure",
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
}

M.StopStreamInput = {
    type = "structure",
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
}

M.StreamUnavailable = {
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

M.UpdateChannelInput = {
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
    members = {
        channel = M.Channel,
    },
}

M.UpdatePlaybackRestrictionPolicyInput = {
    type = "structure",
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
    members = {
        playbackRestrictionPolicy = M.PlaybackRestrictionPolicy,
    },
}

return M
