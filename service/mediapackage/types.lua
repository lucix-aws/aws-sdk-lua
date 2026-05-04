local M = {}

M.__AdTriggersElement = {
    SPLICE_INSERT = "SPLICE_INSERT",
    BREAK = "BREAK",
    PROVIDER_ADVERTISEMENT = "PROVIDER_ADVERTISEMENT",
    DISTRIBUTOR_ADVERTISEMENT = "DISTRIBUTOR_ADVERTISEMENT",
    PROVIDER_PLACEMENT_OPPORTUNITY = "PROVIDER_PLACEMENT_OPPORTUNITY",
    DISTRIBUTOR_PLACEMENT_OPPORTUNITY = "DISTRIBUTOR_PLACEMENT_OPPORTUNITY",
    PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY = "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY",
    DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY = "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY",
}

M.__PeriodTriggersElement = {
    ADS = "ADS",
}

M.EgressAccessLogs = {
    type = "structure",
    members = {
        LogGroupName = {
            type = "string",
            traits = {
                json_name = "logGroupName",
            },
        },
    },
}

M.IngestEndpoint = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        Password = {
            type = "string",
            traits = {
                json_name = "password",
            },
        },
        Url = {
            type = "string",
            traits = {
                json_name = "url",
            },
        },
        Username = {
            type = "string",
            traits = {
                json_name = "username",
            },
        },
    },
}

M.HlsIngest = {
    type = "structure",
    members = {
        IngestEndpoints = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "ingestEndpoints",
            },
        },
    },
}

M.IngressAccessLogs = {
    type = "structure",
    members = {
        LogGroupName = {
            type = "string",
            traits = {
                json_name = "logGroupName",
            },
        },
    },
}

M.Channel = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CreatedAt = {
            type = "string",
            traits = {
                json_name = "createdAt",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        EgressAccessLogs = {
            type = "structure",
            traits = {
                json_name = "egressAccessLogs",
            },
        },
        HlsIngest = {
            type = "structure",
            traits = {
                json_name = "hlsIngest",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        IngressAccessLogs = {
            type = "structure",
            traits = {
                json_name = "ingressAccessLogs",
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.S3Destination = {
    type = "structure",
    members = {
        BucketName = {
            type = "string",
            traits = {
                json_name = "bucketName",
                required = true,
            },
        },
        ManifestKey = {
            type = "string",
            traits = {
                json_name = "manifestKey",
                required = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                json_name = "roleArn",
                required = true,
            },
        },
    },
}

M.Status = {
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.HarvestJob = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        ChannelId = {
            type = "string",
            traits = {
                json_name = "channelId",
            },
        },
        CreatedAt = {
            type = "string",
            traits = {
                json_name = "createdAt",
            },
        },
        EndTime = {
            type = "string",
            traits = {
                json_name = "endTime",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        OriginEndpointId = {
            type = "string",
            traits = {
                json_name = "originEndpointId",
            },
        },
        S3Destination = {
            type = "structure",
            traits = {
                json_name = "s3Destination",
            },
        },
        StartTime = {
            type = "string",
            traits = {
                json_name = "startTime",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.AdMarkers = {
    NONE = "NONE",
    SCTE35_ENHANCED = "SCTE35_ENHANCED",
    PASSTHROUGH = "PASSTHROUGH",
    DATERANGE = "DATERANGE",
}

M.AdsOnDeliveryRestrictions = {
    NONE = "NONE",
    RESTRICTED = "RESTRICTED",
    UNRESTRICTED = "UNRESTRICTED",
    BOTH = "BOTH",
}

M.PlaylistType = {
    NONE = "NONE",
    EVENT = "EVENT",
    VOD = "VOD",
}

M.HlsManifest = {
    type = "structure",
    members = {
        AdMarkers = {
            type = "string",
            traits = {
                json_name = "adMarkers",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
                required = true,
            },
        },
        IncludeIframeOnlyStream = {
            type = "boolean",
            traits = {
                json_name = "includeIframeOnlyStream",
            },
        },
        ManifestName = {
            type = "string",
            traits = {
                json_name = "manifestName",
            },
        },
        PlaylistType = {
            type = "string",
            traits = {
                json_name = "playlistType",
            },
        },
        PlaylistWindowSeconds = {
            type = "number",
            traits = {
                json_name = "playlistWindowSeconds",
            },
        },
        ProgramDateTimeIntervalSeconds = {
            type = "number",
            traits = {
                json_name = "programDateTimeIntervalSeconds",
            },
        },
        Url = {
            type = "string",
            traits = {
                json_name = "url",
            },
        },
        AdTriggers = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "adTriggers",
            },
        },
        AdsOnDeliveryRestrictions = {
            type = "string",
            traits = {
                json_name = "adsOnDeliveryRestrictions",
            },
        },
    },
}

M.HlsManifestCreateOrUpdateParameters = {
    type = "structure",
    members = {
        AdMarkers = {
            type = "string",
            traits = {
                json_name = "adMarkers",
            },
        },
        AdTriggers = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "adTriggers",
            },
        },
        AdsOnDeliveryRestrictions = {
            type = "string",
            traits = {
                json_name = "adsOnDeliveryRestrictions",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
                required = true,
            },
        },
        IncludeIframeOnlyStream = {
            type = "boolean",
            traits = {
                json_name = "includeIframeOnlyStream",
            },
        },
        ManifestName = {
            type = "string",
            traits = {
                json_name = "manifestName",
            },
        },
        PlaylistType = {
            type = "string",
            traits = {
                json_name = "playlistType",
            },
        },
        PlaylistWindowSeconds = {
            type = "number",
            traits = {
                json_name = "playlistWindowSeconds",
            },
        },
        ProgramDateTimeIntervalSeconds = {
            type = "number",
            traits = {
                json_name = "programDateTimeIntervalSeconds",
            },
        },
    },
}

M.Authorization = {
    type = "structure",
    members = {
        CdnIdentifierSecret = {
            type = "string",
            traits = {
                json_name = "cdnIdentifierSecret",
                required = true,
            },
        },
        SecretsRoleArn = {
            type = "string",
            traits = {
                json_name = "secretsRoleArn",
                required = true,
            },
        },
    },
}

M.CmafEncryptionMethod = {
    SAMPLE_AES = "SAMPLE_AES",
    AES_CTR = "AES_CTR",
}

M.PresetSpeke20Audio = {
    PRESET_AUDIO_1 = "PRESET-AUDIO-1",
    PRESET_AUDIO_2 = "PRESET-AUDIO-2",
    PRESET_AUDIO_3 = "PRESET-AUDIO-3",
    SHARED = "SHARED",
    UNENCRYPTED = "UNENCRYPTED",
}

M.PresetSpeke20Video = {
    PRESET_VIDEO_1 = "PRESET-VIDEO-1",
    PRESET_VIDEO_2 = "PRESET-VIDEO-2",
    PRESET_VIDEO_3 = "PRESET-VIDEO-3",
    PRESET_VIDEO_4 = "PRESET-VIDEO-4",
    PRESET_VIDEO_5 = "PRESET-VIDEO-5",
    PRESET_VIDEO_6 = "PRESET-VIDEO-6",
    PRESET_VIDEO_7 = "PRESET-VIDEO-7",
    PRESET_VIDEO_8 = "PRESET-VIDEO-8",
    SHARED = "SHARED",
    UNENCRYPTED = "UNENCRYPTED",
}

M.EncryptionContractConfiguration = {
    type = "structure",
    members = {
        PresetSpeke20Audio = {
            type = "string",
            traits = {
                json_name = "presetSpeke20Audio",
                required = true,
            },
        },
        PresetSpeke20Video = {
            type = "string",
            traits = {
                json_name = "presetSpeke20Video",
                required = true,
            },
        },
    },
}

M.SpekeKeyProvider = {
    type = "structure",
    members = {
        CertificateArn = {
            type = "string",
            traits = {
                json_name = "certificateArn",
            },
        },
        EncryptionContractConfiguration = {
            type = "structure",
            traits = {
                json_name = "encryptionContractConfiguration",
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                json_name = "resourceId",
                required = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                json_name = "roleArn",
                required = true,
            },
        },
        SystemIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "systemIds",
                required = true,
            },
        },
        Url = {
            type = "string",
            traits = {
                json_name = "url",
                required = true,
            },
        },
    },
}

M.CmafEncryption = {
    type = "structure",
    members = {
        ConstantInitializationVector = {
            type = "string",
            traits = {
                json_name = "constantInitializationVector",
            },
        },
        EncryptionMethod = {
            type = "string",
            traits = {
                json_name = "encryptionMethod",
            },
        },
        KeyRotationIntervalSeconds = {
            type = "number",
            traits = {
                json_name = "keyRotationIntervalSeconds",
            },
        },
        SpekeKeyProvider = {
            type = "structure",
            traits = {
                json_name = "spekeKeyProvider",
                required = true,
            },
        },
    },
}

M.StreamOrder = {
    ORIGINAL = "ORIGINAL",
    VIDEO_BITRATE_ASCENDING = "VIDEO_BITRATE_ASCENDING",
    VIDEO_BITRATE_DESCENDING = "VIDEO_BITRATE_DESCENDING",
}

M.StreamSelection = {
    type = "structure",
    members = {
        MaxVideoBitsPerSecond = {
            type = "number",
            traits = {
                json_name = "maxVideoBitsPerSecond",
            },
        },
        MinVideoBitsPerSecond = {
            type = "number",
            traits = {
                json_name = "minVideoBitsPerSecond",
            },
        },
        StreamOrder = {
            type = "string",
            traits = {
                json_name = "streamOrder",
            },
        },
    },
}

M.CmafPackage = {
    type = "structure",
    members = {
        Encryption = {
            type = "structure",
            traits = {
                json_name = "encryption",
            },
        },
        HlsManifests = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "hlsManifests",
            },
        },
        SegmentDurationSeconds = {
            type = "number",
            traits = {
                json_name = "segmentDurationSeconds",
            },
        },
        SegmentPrefix = {
            type = "string",
            traits = {
                json_name = "segmentPrefix",
            },
        },
        StreamSelection = {
            type = "structure",
            traits = {
                json_name = "streamSelection",
            },
        },
    },
}

M.DashEncryption = {
    type = "structure",
    members = {
        KeyRotationIntervalSeconds = {
            type = "number",
            traits = {
                json_name = "keyRotationIntervalSeconds",
            },
        },
        SpekeKeyProvider = {
            type = "structure",
            traits = {
                json_name = "spekeKeyProvider",
                required = true,
            },
        },
    },
}

M.ManifestLayout = {
    FULL = "FULL",
    COMPACT = "COMPACT",
    DRM_TOP_LEVEL_COMPACT = "DRM_TOP_LEVEL_COMPACT",
}

M.Profile = {
    NONE = "NONE",
    HBBTV_1_5 = "HBBTV_1_5",
    HYBRIDCAST = "HYBRIDCAST",
    DVB_DASH_2014 = "DVB_DASH_2014",
}

M.SegmentTemplateFormat = {
    NUMBER_WITH_TIMELINE = "NUMBER_WITH_TIMELINE",
    TIME_WITH_TIMELINE = "TIME_WITH_TIMELINE",
    NUMBER_WITH_DURATION = "NUMBER_WITH_DURATION",
}

M.UtcTiming = {
    NONE = "NONE",
    HTTP_HEAD = "HTTP-HEAD",
    HTTP_ISO = "HTTP-ISO",
    HTTP_XSDATE = "HTTP-XSDATE",
}

M.DashPackage = {
    type = "structure",
    members = {
        AdTriggers = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "adTriggers",
            },
        },
        AdsOnDeliveryRestrictions = {
            type = "string",
            traits = {
                json_name = "adsOnDeliveryRestrictions",
            },
        },
        Encryption = {
            type = "structure",
            traits = {
                json_name = "encryption",
            },
        },
        IncludeIframeOnlyStream = {
            type = "boolean",
            traits = {
                json_name = "includeIframeOnlyStream",
            },
        },
        ManifestLayout = {
            type = "string",
            traits = {
                json_name = "manifestLayout",
            },
        },
        ManifestWindowSeconds = {
            type = "number",
            traits = {
                json_name = "manifestWindowSeconds",
            },
        },
        MinBufferTimeSeconds = {
            type = "number",
            traits = {
                json_name = "minBufferTimeSeconds",
            },
        },
        MinUpdatePeriodSeconds = {
            type = "number",
            traits = {
                json_name = "minUpdatePeriodSeconds",
            },
        },
        PeriodTriggers = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "periodTriggers",
            },
        },
        Profile = {
            type = "string",
            traits = {
                json_name = "profile",
            },
        },
        SegmentDurationSeconds = {
            type = "number",
            traits = {
                json_name = "segmentDurationSeconds",
            },
        },
        SegmentTemplateFormat = {
            type = "string",
            traits = {
                json_name = "segmentTemplateFormat",
            },
        },
        StreamSelection = {
            type = "structure",
            traits = {
                json_name = "streamSelection",
            },
        },
        SuggestedPresentationDelaySeconds = {
            type = "number",
            traits = {
                json_name = "suggestedPresentationDelaySeconds",
            },
        },
        UtcTiming = {
            type = "string",
            traits = {
                json_name = "utcTiming",
            },
        },
        UtcTimingUri = {
            type = "string",
            traits = {
                json_name = "utcTimingUri",
            },
        },
    },
}

M.EncryptionMethod = {
    AES_128 = "AES_128",
    SAMPLE_AES = "SAMPLE_AES",
}

M.HlsEncryption = {
    type = "structure",
    members = {
        ConstantInitializationVector = {
            type = "string",
            traits = {
                json_name = "constantInitializationVector",
            },
        },
        EncryptionMethod = {
            type = "string",
            traits = {
                json_name = "encryptionMethod",
            },
        },
        KeyRotationIntervalSeconds = {
            type = "number",
            traits = {
                json_name = "keyRotationIntervalSeconds",
            },
        },
        RepeatExtXKey = {
            type = "boolean",
            traits = {
                json_name = "repeatExtXKey",
            },
        },
        SpekeKeyProvider = {
            type = "structure",
            traits = {
                json_name = "spekeKeyProvider",
                required = true,
            },
        },
    },
}

M.HlsPackage = {
    type = "structure",
    members = {
        AdMarkers = {
            type = "string",
            traits = {
                json_name = "adMarkers",
            },
        },
        AdTriggers = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "adTriggers",
            },
        },
        AdsOnDeliveryRestrictions = {
            type = "string",
            traits = {
                json_name = "adsOnDeliveryRestrictions",
            },
        },
        Encryption = {
            type = "structure",
            traits = {
                json_name = "encryption",
            },
        },
        IncludeDvbSubtitles = {
            type = "boolean",
            traits = {
                json_name = "includeDvbSubtitles",
            },
        },
        IncludeIframeOnlyStream = {
            type = "boolean",
            traits = {
                json_name = "includeIframeOnlyStream",
            },
        },
        PlaylistType = {
            type = "string",
            traits = {
                json_name = "playlistType",
            },
        },
        PlaylistWindowSeconds = {
            type = "number",
            traits = {
                json_name = "playlistWindowSeconds",
            },
        },
        ProgramDateTimeIntervalSeconds = {
            type = "number",
            traits = {
                json_name = "programDateTimeIntervalSeconds",
            },
        },
        SegmentDurationSeconds = {
            type = "number",
            traits = {
                json_name = "segmentDurationSeconds",
            },
        },
        StreamSelection = {
            type = "structure",
            traits = {
                json_name = "streamSelection",
            },
        },
        UseAudioRenditionGroup = {
            type = "boolean",
            traits = {
                json_name = "useAudioRenditionGroup",
            },
        },
    },
}

M.MssEncryption = {
    type = "structure",
    members = {
        SpekeKeyProvider = {
            type = "structure",
            traits = {
                json_name = "spekeKeyProvider",
                required = true,
            },
        },
    },
}

M.MssPackage = {
    type = "structure",
    members = {
        Encryption = {
            type = "structure",
            traits = {
                json_name = "encryption",
            },
        },
        ManifestWindowSeconds = {
            type = "number",
            traits = {
                json_name = "manifestWindowSeconds",
            },
        },
        SegmentDurationSeconds = {
            type = "number",
            traits = {
                json_name = "segmentDurationSeconds",
            },
        },
        StreamSelection = {
            type = "structure",
            traits = {
                json_name = "streamSelection",
            },
        },
    },
}

M.Origination = {
    ALLOW = "ALLOW",
    DENY = "DENY",
}

M.OriginEndpoint = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Authorization = {
            type = "structure",
            traits = {
                json_name = "authorization",
            },
        },
        ChannelId = {
            type = "string",
            traits = {
                json_name = "channelId",
            },
        },
        CmafPackage = {
            type = "structure",
            traits = {
                json_name = "cmafPackage",
            },
        },
        CreatedAt = {
            type = "string",
            traits = {
                json_name = "createdAt",
            },
        },
        DashPackage = {
            type = "structure",
            traits = {
                json_name = "dashPackage",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        HlsPackage = {
            type = "structure",
            traits = {
                json_name = "hlsPackage",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        ManifestName = {
            type = "string",
            traits = {
                json_name = "manifestName",
            },
        },
        MssPackage = {
            type = "structure",
            traits = {
                json_name = "mssPackage",
            },
        },
        Origination = {
            type = "string",
            traits = {
                json_name = "origination",
            },
        },
        StartoverWindowSeconds = {
            type = "number",
            traits = {
                json_name = "startoverWindowSeconds",
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        TimeDelaySeconds = {
            type = "number",
            traits = {
                json_name = "timeDelaySeconds",
            },
        },
        Url = {
            type = "string",
            traits = {
                json_name = "url",
            },
        },
        Whitelist = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "whitelist",
            },
        },
    },
}

M.CmafPackageCreateOrUpdateParameters = {
    type = "structure",
    members = {
        Encryption = {
            type = "structure",
            traits = {
                json_name = "encryption",
            },
        },
        HlsManifests = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "hlsManifests",
            },
        },
        SegmentDurationSeconds = {
            type = "number",
            traits = {
                json_name = "segmentDurationSeconds",
            },
        },
        SegmentPrefix = {
            type = "string",
            traits = {
                json_name = "segmentPrefix",
            },
        },
        StreamSelection = {
            type = "structure",
            traits = {
                json_name = "streamSelection",
            },
        },
    },
}

M.ConfigureLogsInput = {
    type = "structure",
    members = {
        EgressAccessLogs = {
            type = "structure",
            traits = {
                json_name = "egressAccessLogs",
            },
        },
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IngressAccessLogs = {
            type = "structure",
            traits = {
                json_name = "ingressAccessLogs",
            },
        },
    },
}

M.ConfigureLogsOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CreatedAt = {
            type = "string",
            traits = {
                json_name = "createdAt",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        EgressAccessLogs = {
            type = "structure",
            traits = {
                json_name = "egressAccessLogs",
            },
        },
        HlsIngest = {
            type = "structure",
            traits = {
                json_name = "hlsIngest",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        IngressAccessLogs = {
            type = "structure",
            traits = {
                json_name = "ingressAccessLogs",
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.ForbiddenException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.InternalServerErrorException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.NotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.UnprocessableEntityException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.CreateChannelInput = {
    type = "structure",
    members = {
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateChannelOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CreatedAt = {
            type = "string",
            traits = {
                json_name = "createdAt",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        EgressAccessLogs = {
            type = "structure",
            traits = {
                json_name = "egressAccessLogs",
            },
        },
        HlsIngest = {
            type = "structure",
            traits = {
                json_name = "hlsIngest",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        IngressAccessLogs = {
            type = "structure",
            traits = {
                json_name = "ingressAccessLogs",
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateHarvestJobInput = {
    type = "structure",
    members = {
        EndTime = {
            type = "string",
            traits = {
                json_name = "endTime",
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
                required = true,
            },
        },
        OriginEndpointId = {
            type = "string",
            traits = {
                json_name = "originEndpointId",
                required = true,
            },
        },
        S3Destination = {
            type = "structure",
            traits = {
                json_name = "s3Destination",
                required = true,
            },
        },
        StartTime = {
            type = "string",
            traits = {
                json_name = "startTime",
                required = true,
            },
        },
    },
}

M.CreateHarvestJobOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        ChannelId = {
            type = "string",
            traits = {
                json_name = "channelId",
            },
        },
        CreatedAt = {
            type = "string",
            traits = {
                json_name = "createdAt",
            },
        },
        EndTime = {
            type = "string",
            traits = {
                json_name = "endTime",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        OriginEndpointId = {
            type = "string",
            traits = {
                json_name = "originEndpointId",
            },
        },
        S3Destination = {
            type = "structure",
            traits = {
                json_name = "s3Destination",
            },
        },
        StartTime = {
            type = "string",
            traits = {
                json_name = "startTime",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.CreateOriginEndpointInput = {
    type = "structure",
    members = {
        Authorization = {
            type = "structure",
            traits = {
                json_name = "authorization",
            },
        },
        ChannelId = {
            type = "string",
            traits = {
                json_name = "channelId",
                required = true,
            },
        },
        CmafPackage = {
            type = "structure",
            traits = {
                json_name = "cmafPackage",
            },
        },
        DashPackage = {
            type = "structure",
            traits = {
                json_name = "dashPackage",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        HlsPackage = {
            type = "structure",
            traits = {
                json_name = "hlsPackage",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
                required = true,
            },
        },
        ManifestName = {
            type = "string",
            traits = {
                json_name = "manifestName",
            },
        },
        MssPackage = {
            type = "structure",
            traits = {
                json_name = "mssPackage",
            },
        },
        Origination = {
            type = "string",
            traits = {
                json_name = "origination",
            },
        },
        StartoverWindowSeconds = {
            type = "number",
            traits = {
                json_name = "startoverWindowSeconds",
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        TimeDelaySeconds = {
            type = "number",
            traits = {
                json_name = "timeDelaySeconds",
            },
        },
        Whitelist = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "whitelist",
            },
        },
    },
}

M.CreateOriginEndpointOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Authorization = {
            type = "structure",
            traits = {
                json_name = "authorization",
            },
        },
        ChannelId = {
            type = "string",
            traits = {
                json_name = "channelId",
            },
        },
        CmafPackage = {
            type = "structure",
            traits = {
                json_name = "cmafPackage",
            },
        },
        CreatedAt = {
            type = "string",
            traits = {
                json_name = "createdAt",
            },
        },
        DashPackage = {
            type = "structure",
            traits = {
                json_name = "dashPackage",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        HlsPackage = {
            type = "structure",
            traits = {
                json_name = "hlsPackage",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        ManifestName = {
            type = "string",
            traits = {
                json_name = "manifestName",
            },
        },
        MssPackage = {
            type = "structure",
            traits = {
                json_name = "mssPackage",
            },
        },
        Origination = {
            type = "string",
            traits = {
                json_name = "origination",
            },
        },
        StartoverWindowSeconds = {
            type = "number",
            traits = {
                json_name = "startoverWindowSeconds",
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        TimeDelaySeconds = {
            type = "number",
            traits = {
                json_name = "timeDelaySeconds",
            },
        },
        Url = {
            type = "string",
            traits = {
                json_name = "url",
            },
        },
        Whitelist = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "whitelist",
            },
        },
    },
}

M.DeleteChannelInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteChannelOutput = {
    type = "structure",
}

M.DeleteOriginEndpointInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteOriginEndpointOutput = {
    type = "structure",
}

M.DescribeChannelInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeChannelOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CreatedAt = {
            type = "string",
            traits = {
                json_name = "createdAt",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        EgressAccessLogs = {
            type = "structure",
            traits = {
                json_name = "egressAccessLogs",
            },
        },
        HlsIngest = {
            type = "structure",
            traits = {
                json_name = "hlsIngest",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        IngressAccessLogs = {
            type = "structure",
            traits = {
                json_name = "ingressAccessLogs",
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.DescribeHarvestJobInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeHarvestJobOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        ChannelId = {
            type = "string",
            traits = {
                json_name = "channelId",
            },
        },
        CreatedAt = {
            type = "string",
            traits = {
                json_name = "createdAt",
            },
        },
        EndTime = {
            type = "string",
            traits = {
                json_name = "endTime",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        OriginEndpointId = {
            type = "string",
            traits = {
                json_name = "originEndpointId",
            },
        },
        S3Destination = {
            type = "structure",
            traits = {
                json_name = "s3Destination",
            },
        },
        StartTime = {
            type = "string",
            traits = {
                json_name = "startTime",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.DescribeOriginEndpointInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeOriginEndpointOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Authorization = {
            type = "structure",
            traits = {
                json_name = "authorization",
            },
        },
        ChannelId = {
            type = "string",
            traits = {
                json_name = "channelId",
            },
        },
        CmafPackage = {
            type = "structure",
            traits = {
                json_name = "cmafPackage",
            },
        },
        CreatedAt = {
            type = "string",
            traits = {
                json_name = "createdAt",
            },
        },
        DashPackage = {
            type = "structure",
            traits = {
                json_name = "dashPackage",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        HlsPackage = {
            type = "structure",
            traits = {
                json_name = "hlsPackage",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        ManifestName = {
            type = "string",
            traits = {
                json_name = "manifestName",
            },
        },
        MssPackage = {
            type = "structure",
            traits = {
                json_name = "mssPackage",
            },
        },
        Origination = {
            type = "string",
            traits = {
                json_name = "origination",
            },
        },
        StartoverWindowSeconds = {
            type = "number",
            traits = {
                json_name = "startoverWindowSeconds",
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        TimeDelaySeconds = {
            type = "number",
            traits = {
                json_name = "timeDelaySeconds",
            },
        },
        Url = {
            type = "string",
            traits = {
                json_name = "url",
            },
        },
        Whitelist = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "whitelist",
            },
        },
    },
}

M.ListChannelsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListChannelsOutput = {
    type = "structure",
    members = {
        Channels = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "channels",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListHarvestJobsInput = {
    type = "structure",
    members = {
        IncludeChannelId = {
            type = "string",
            traits = {
                http_query = "includeChannelId",
            },
        },
        IncludeStatus = {
            type = "string",
            traits = {
                http_query = "includeStatus",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListHarvestJobsOutput = {
    type = "structure",
    members = {
        HarvestJobs = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "harvestJobs",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListOriginEndpointsInput = {
    type = "structure",
    members = {
        ChannelId = {
            type = "string",
            traits = {
                http_query = "channelId",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListOriginEndpointsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        OriginEndpoints = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "originEndpoints",
            },
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
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
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.RotateChannelCredentialsInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RotateChannelCredentialsOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CreatedAt = {
            type = "string",
            traits = {
                json_name = "createdAt",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        EgressAccessLogs = {
            type = "structure",
            traits = {
                json_name = "egressAccessLogs",
            },
        },
        HlsIngest = {
            type = "structure",
            traits = {
                json_name = "hlsIngest",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        IngressAccessLogs = {
            type = "structure",
            traits = {
                json_name = "ingressAccessLogs",
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.RotateIngestEndpointCredentialsInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IngestEndpointId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RotateIngestEndpointCredentialsOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CreatedAt = {
            type = "string",
            traits = {
                json_name = "createdAt",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        EgressAccessLogs = {
            type = "structure",
            traits = {
                json_name = "egressAccessLogs",
            },
        },
        HlsIngest = {
            type = "structure",
            traits = {
                json_name = "hlsIngest",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        IngressAccessLogs = {
            type = "structure",
            traits = {
                json_name = "ingressAccessLogs",
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
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
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TagKeys = {
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
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateChannelOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CreatedAt = {
            type = "string",
            traits = {
                json_name = "createdAt",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        EgressAccessLogs = {
            type = "structure",
            traits = {
                json_name = "egressAccessLogs",
            },
        },
        HlsIngest = {
            type = "structure",
            traits = {
                json_name = "hlsIngest",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        IngressAccessLogs = {
            type = "structure",
            traits = {
                json_name = "ingressAccessLogs",
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.UpdateOriginEndpointInput = {
    type = "structure",
    members = {
        Authorization = {
            type = "structure",
            traits = {
                json_name = "authorization",
            },
        },
        CmafPackage = {
            type = "structure",
            traits = {
                json_name = "cmafPackage",
            },
        },
        DashPackage = {
            type = "structure",
            traits = {
                json_name = "dashPackage",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        HlsPackage = {
            type = "structure",
            traits = {
                json_name = "hlsPackage",
            },
        },
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ManifestName = {
            type = "string",
            traits = {
                json_name = "manifestName",
            },
        },
        MssPackage = {
            type = "structure",
            traits = {
                json_name = "mssPackage",
            },
        },
        Origination = {
            type = "string",
            traits = {
                json_name = "origination",
            },
        },
        StartoverWindowSeconds = {
            type = "number",
            traits = {
                json_name = "startoverWindowSeconds",
            },
        },
        TimeDelaySeconds = {
            type = "number",
            traits = {
                json_name = "timeDelaySeconds",
            },
        },
        Whitelist = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "whitelist",
            },
        },
    },
}

M.UpdateOriginEndpointOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Authorization = {
            type = "structure",
            traits = {
                json_name = "authorization",
            },
        },
        ChannelId = {
            type = "string",
            traits = {
                json_name = "channelId",
            },
        },
        CmafPackage = {
            type = "structure",
            traits = {
                json_name = "cmafPackage",
            },
        },
        CreatedAt = {
            type = "string",
            traits = {
                json_name = "createdAt",
            },
        },
        DashPackage = {
            type = "structure",
            traits = {
                json_name = "dashPackage",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        HlsPackage = {
            type = "structure",
            traits = {
                json_name = "hlsPackage",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        ManifestName = {
            type = "string",
            traits = {
                json_name = "manifestName",
            },
        },
        MssPackage = {
            type = "structure",
            traits = {
                json_name = "mssPackage",
            },
        },
        Origination = {
            type = "string",
            traits = {
                json_name = "origination",
            },
        },
        StartoverWindowSeconds = {
            type = "number",
            traits = {
                json_name = "startoverWindowSeconds",
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        TimeDelaySeconds = {
            type = "number",
            traits = {
                json_name = "timeDelaySeconds",
            },
        },
        Url = {
            type = "string",
            traits = {
                json_name = "url",
            },
        },
        Whitelist = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "whitelist",
            },
        },
    },
}

return M
