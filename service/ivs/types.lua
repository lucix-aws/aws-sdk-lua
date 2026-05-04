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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.BatchGetChannelInput = {
    type = "structure",
    members = {
        arns = {
            type = "list",
            member_type = "string",
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
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        insecureIngest = {
            type = "boolean",
        },
        preset = {
            type = "string",
        },
        srt = {
            type = "structure",
        },
        playbackRestrictionPolicyArn = {
            type = "string",
        },
        multitrackInputConfiguration = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        errors = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
        },
        errors = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.BatchStartViewerSessionRevocationInput = {
    type = "structure",
    members = {
        viewerSessions = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateAdConfigurationOutput = {
    type = "structure",
    members = {
        adConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        },
        recordingConfigurationArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        insecureIngest = {
            type = "boolean",
        },
        preset = {
            type = "string",
        },
        playbackRestrictionPolicyArn = {
            type = "string",
        },
        multitrackInputConfiguration = {
            type = "structure",
        },
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
        channel = {
            type = "structure",
        },
        streamKey = {
            type = "structure",
        },
    },
}

M.CreatePlaybackRestrictionPolicyInput = {
    type = "structure",
    members = {
        allowedCountries = {
            type = "list",
            member_type = "string",
        },
        allowedOrigins = {
            type = "list",
            member_type = "string",
        },
        enableStrictOriginEnforcement = {
            type = "boolean",
        },
        name = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        allowedOrigins = {
            type = "list",
            member_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreatePlaybackRestrictionPolicyOutput = {
    type = "structure",
    members = {
        playbackRestrictionPolicy = {
            type = "structure",
        },
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
        s3 = {
            type = "structure",
        },
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
            member_type = "string",
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
            type = "number",
        },
        resolution = {
            type = "string",
        },
        storage = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CreateRecordingConfigurationInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        destinationConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        thumbnailConfiguration = {
            type = "structure",
        },
        recordingReconnectWindowSeconds = {
            type = "number",
        },
        renditionConfiguration = {
            type = "structure",
        },
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
        destinationConfiguration = {
            type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        thumbnailConfiguration = {
            type = "structure",
        },
        recordingReconnectWindowSeconds = {
            type = "number",
        },
        renditionConfiguration = {
            type = "structure",
        },
    },
}

M.CreateRecordingConfigurationOutput = {
    type = "structure",
    members = {
        recordingConfiguration = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateStreamKeyOutput = {
    type = "structure",
    members = {
        streamKey = {
            type = "structure",
        },
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
        adConfiguration = {
            type = "structure",
        },
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
        channel = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetPlaybackKeyPairOutput = {
    type = "structure",
    members = {
        keyPair = {
            type = "structure",
        },
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
        playbackRestrictionPolicy = {
            type = "structure",
        },
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
        recordingConfiguration = {
            type = "structure",
        },
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
            type = "number",
        },
    },
}

M.GetStreamOutput = {
    type = "structure",
    members = {
        stream = {
            type = "structure",
        },
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
        streamKey = {
            type = "structure",
        },
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
            type = "number",
        },
        sampleRate = {
            type = "number",
        },
        channels = {
            type = "number",
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
            type = "number",
        },
        targetFramerate = {
            type = "number",
        },
        videoHeight = {
            type = "number",
        },
        videoWidth = {
            type = "number",
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
        video = {
            type = "structure",
        },
        audio = {
            type = "structure",
        },
    },
}

M.IngestConfigurations = {
    type = "structure",
    members = {
        videoConfigurations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        audioConfigurations = {
            type = "list",
            member_type = "structure",
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
        channel = {
            type = "structure",
        },
        ingestConfiguration = {
            type = "structure",
        },
        ingestConfigurations = {
            type = "structure",
        },
        recordingConfiguration = {
            type = "structure",
        },
        truncatedEvents = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetStreamSessionOutput = {
    type = "structure",
    members = {
        streamSession = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ImportPlaybackKeyPairOutput = {
    type = "structure",
    members = {
        keyPair = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
        },
    },
}

M.ListAdConfigurationsOutput = {
    type = "structure",
    members = {
        adConfigurations = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
        },
        recordingConfigurationArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        insecureIngest = {
            type = "boolean",
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
            member_type = "structure",
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
            type = "number",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListPlaybackKeyPairsOutput = {
    type = "structure",
    members = {
        keyPairs = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        allowedOrigins = {
            type = "list",
            member_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListPlaybackRestrictionPoliciesOutput = {
    type = "structure",
    members = {
        playbackRestrictionPolicies = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
        destinationConfiguration = {
            type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListRecordingConfigurationsOutput = {
    type = "structure",
    members = {
        recordingConfigurations = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListStreamKeysOutput = {
    type = "structure",
    members = {
        streamKeys = {
            type = "list",
            member_type = "structure",
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
        filterBy = {
            type = "structure",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
        },
    },
}

M.ListStreamSessionsOutput = {
    type = "structure",
    members = {
        streamSessions = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
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
            type = "number",
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
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
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
        },
        recordingConfigurationArn = {
            type = "string",
        },
        insecureIngest = {
            type = "boolean",
        },
        preset = {
            type = "string",
        },
        playbackRestrictionPolicyArn = {
            type = "string",
        },
        multitrackInputConfiguration = {
            type = "structure",
        },
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
        channel = {
            type = "structure",
        },
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
            member_type = "string",
        },
        allowedOrigins = {
            type = "list",
            member_type = "string",
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
        playbackRestrictionPolicy = {
            type = "structure",
        },
    },
}

return M
