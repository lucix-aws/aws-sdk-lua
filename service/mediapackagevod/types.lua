local M = {}

M.__PeriodTriggersElement = {
    ADS = "ADS",
}

M.AssetShallow = {
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
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        PackagingGroupId = {
            type = "string",
            traits = {
                json_name = "packagingGroupId",
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                json_name = "resourceId",
            },
        },
        SourceArn = {
            type = "string",
            traits = {
                json_name = "sourceArn",
            },
        },
        SourceRoleArn = {
            type = "string",
            traits = {
                json_name = "sourceRoleArn",
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

M.ManifestLayout = {
    FULL = "FULL",
    COMPACT = "COMPACT",
}

M.Profile = {
    NONE = "NONE",
    HBBTV_1_5 = "HBBTV_1_5",
}

M.ScteMarkersSource = {
    SEGMENTS = "SEGMENTS",
    MANIFEST = "MANIFEST",
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

M.DashManifest = {
    type = "structure",
    members = {
        ManifestLayout = {
            type = "string",
            traits = {
                json_name = "manifestLayout",
            },
        },
        ManifestName = {
            type = "string",
            traits = {
                json_name = "manifestName",
            },
        },
        MinBufferTimeSeconds = {
            type = "number",
            traits = {
                json_name = "minBufferTimeSeconds",
            },
        },
        Profile = {
            type = "string",
            traits = {
                json_name = "profile",
            },
        },
        ScteMarkersSource = {
            type = "string",
            traits = {
                json_name = "scteMarkersSource",
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

M.EgressEndpoint = {
    type = "structure",
    members = {
        PackagingConfigurationId = {
            type = "string",
            traits = {
                json_name = "packagingConfigurationId",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
        Url = {
            type = "string",
            traits = {
                json_name = "url",
            },
        },
    },
}

M.AdMarkers = {
    NONE = "NONE",
    SCTE35_ENHANCED = "SCTE35_ENHANCED",
    PASSTHROUGH = "PASSTHROUGH",
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
        ProgramDateTimeIntervalSeconds = {
            type = "number",
            traits = {
                json_name = "programDateTimeIntervalSeconds",
            },
        },
        RepeatExtXKey = {
            type = "boolean",
            traits = {
                json_name = "repeatExtXKey",
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

M.MssManifest = {
    type = "structure",
    members = {
        ManifestName = {
            type = "string",
            traits = {
                json_name = "manifestName",
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
        EncryptionContractConfiguration = {
            type = "structure",
            traits = {
                json_name = "encryptionContractConfiguration",
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
        SpekeKeyProvider = {
            type = "structure",
            traits = {
                json_name = "spekeKeyProvider",
                required = true,
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
                required = true,
            },
        },
        IncludeEncoderConfigurationInSegments = {
            type = "boolean",
            traits = {
                json_name = "includeEncoderConfigurationInSegments",
            },
        },
        SegmentDurationSeconds = {
            type = "number",
            traits = {
                json_name = "segmentDurationSeconds",
            },
        },
    },
}

M.DashEncryption = {
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

M.SegmentTemplateFormat = {
    NUMBER_WITH_TIMELINE = "NUMBER_WITH_TIMELINE",
    TIME_WITH_TIMELINE = "TIME_WITH_TIMELINE",
    NUMBER_WITH_DURATION = "NUMBER_WITH_DURATION",
}

M.DashPackage = {
    type = "structure",
    members = {
        DashManifests = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "dashManifests",
                required = true,
            },
        },
        Encryption = {
            type = "structure",
            traits = {
                json_name = "encryption",
            },
        },
        IncludeEncoderConfigurationInSegments = {
            type = "boolean",
            traits = {
                json_name = "includeEncoderConfigurationInSegments",
            },
        },
        IncludeIframeOnlyStream = {
            type = "boolean",
            traits = {
                json_name = "includeIframeOnlyStream",
            },
        },
        PeriodTriggers = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "periodTriggers",
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
                required = true,
            },
        },
        IncludeDvbSubtitles = {
            type = "boolean",
            traits = {
                json_name = "includeDvbSubtitles",
            },
        },
        SegmentDurationSeconds = {
            type = "number",
            traits = {
                json_name = "segmentDurationSeconds",
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
        MssManifests = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "mssManifests",
                required = true,
            },
        },
        SegmentDurationSeconds = {
            type = "number",
            traits = {
                json_name = "segmentDurationSeconds",
            },
        },
    },
}

M.PackagingConfiguration = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
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
        MssPackage = {
            type = "structure",
            traits = {
                json_name = "mssPackage",
            },
        },
        PackagingGroupId = {
            type = "string",
            traits = {
                json_name = "packagingGroupId",
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

M.PackagingGroup = {
    type = "structure",
    members = {
        ApproximateAssetCount = {
            type = "number",
            traits = {
                json_name = "approximateAssetCount",
            },
        },
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
        CreatedAt = {
            type = "string",
            traits = {
                json_name = "createdAt",
            },
        },
        DomainName = {
            type = "string",
            traits = {
                json_name = "domainName",
            },
        },
        EgressAccessLogs = {
            type = "structure",
            traits = {
                json_name = "egressAccessLogs",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
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
        Authorization = {
            type = "structure",
            traits = {
                json_name = "authorization",
            },
        },
        CreatedAt = {
            type = "string",
            traits = {
                json_name = "createdAt",
            },
        },
        DomainName = {
            type = "string",
            traits = {
                json_name = "domainName",
            },
        },
        EgressAccessLogs = {
            type = "structure",
            traits = {
                json_name = "egressAccessLogs",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
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

M.CreateAssetInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                json_name = "id",
                required = true,
            },
        },
        PackagingGroupId = {
            type = "string",
            traits = {
                json_name = "packagingGroupId",
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                json_name = "resourceId",
            },
        },
        SourceArn = {
            type = "string",
            traits = {
                json_name = "sourceArn",
                required = true,
            },
        },
        SourceRoleArn = {
            type = "string",
            traits = {
                json_name = "sourceRoleArn",
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

M.CreateAssetOutput = {
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
        EgressEndpoints = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "egressEndpoints",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        PackagingGroupId = {
            type = "string",
            traits = {
                json_name = "packagingGroupId",
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                json_name = "resourceId",
            },
        },
        SourceArn = {
            type = "string",
            traits = {
                json_name = "sourceArn",
            },
        },
        SourceRoleArn = {
            type = "string",
            traits = {
                json_name = "sourceRoleArn",
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

M.CreatePackagingConfigurationInput = {
    type = "structure",
    members = {
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
        MssPackage = {
            type = "structure",
            traits = {
                json_name = "mssPackage",
            },
        },
        PackagingGroupId = {
            type = "string",
            traits = {
                json_name = "packagingGroupId",
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

M.CreatePackagingConfigurationOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
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
        MssPackage = {
            type = "structure",
            traits = {
                json_name = "mssPackage",
            },
        },
        PackagingGroupId = {
            type = "string",
            traits = {
                json_name = "packagingGroupId",
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

M.CreatePackagingGroupInput = {
    type = "structure",
    members = {
        Authorization = {
            type = "structure",
            traits = {
                json_name = "authorization",
            },
        },
        EgressAccessLogs = {
            type = "structure",
            traits = {
                json_name = "egressAccessLogs",
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

M.CreatePackagingGroupOutput = {
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
        CreatedAt = {
            type = "string",
            traits = {
                json_name = "createdAt",
            },
        },
        DomainName = {
            type = "string",
            traits = {
                json_name = "domainName",
            },
        },
        EgressAccessLogs = {
            type = "structure",
            traits = {
                json_name = "egressAccessLogs",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
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

M.DeleteAssetInput = {
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

M.DeleteAssetOutput = {
    type = "structure",
}

M.DeletePackagingConfigurationInput = {
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

M.DeletePackagingConfigurationOutput = {
    type = "structure",
}

M.DeletePackagingGroupInput = {
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

M.DeletePackagingGroupOutput = {
    type = "structure",
}

M.DescribeAssetInput = {
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

M.DescribeAssetOutput = {
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
        EgressEndpoints = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "egressEndpoints",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        PackagingGroupId = {
            type = "string",
            traits = {
                json_name = "packagingGroupId",
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                json_name = "resourceId",
            },
        },
        SourceArn = {
            type = "string",
            traits = {
                json_name = "sourceArn",
            },
        },
        SourceRoleArn = {
            type = "string",
            traits = {
                json_name = "sourceRoleArn",
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

M.DescribePackagingConfigurationInput = {
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

M.DescribePackagingConfigurationOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
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
        MssPackage = {
            type = "structure",
            traits = {
                json_name = "mssPackage",
            },
        },
        PackagingGroupId = {
            type = "string",
            traits = {
                json_name = "packagingGroupId",
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

M.DescribePackagingGroupInput = {
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

M.DescribePackagingGroupOutput = {
    type = "structure",
    members = {
        ApproximateAssetCount = {
            type = "number",
            traits = {
                json_name = "approximateAssetCount",
            },
        },
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
        CreatedAt = {
            type = "string",
            traits = {
                json_name = "createdAt",
            },
        },
        DomainName = {
            type = "string",
            traits = {
                json_name = "domainName",
            },
        },
        EgressAccessLogs = {
            type = "structure",
            traits = {
                json_name = "egressAccessLogs",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
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

M.ListAssetsInput = {
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
        PackagingGroupId = {
            type = "string",
            traits = {
                http_query = "packagingGroupId",
            },
        },
    },
}

M.ListAssetsOutput = {
    type = "structure",
    members = {
        Assets = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "assets",
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

M.ListPackagingConfigurationsInput = {
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
        PackagingGroupId = {
            type = "string",
            traits = {
                http_query = "packagingGroupId",
            },
        },
    },
}

M.ListPackagingConfigurationsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        PackagingConfigurations = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "packagingConfigurations",
            },
        },
    },
}

M.ListPackagingGroupsInput = {
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

M.ListPackagingGroupsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        PackagingGroups = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "packagingGroups",
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

M.UpdatePackagingGroupInput = {
    type = "structure",
    members = {
        Authorization = {
            type = "structure",
            traits = {
                json_name = "authorization",
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

M.UpdatePackagingGroupOutput = {
    type = "structure",
    members = {
        ApproximateAssetCount = {
            type = "number",
            traits = {
                json_name = "approximateAssetCount",
            },
        },
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
        CreatedAt = {
            type = "string",
            traits = {
                json_name = "createdAt",
            },
        },
        DomainName = {
            type = "string",
            traits = {
                json_name = "domainName",
            },
        },
        EgressAccessLogs = {
            type = "structure",
            traits = {
                json_name = "egressAccessLogs",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
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

return M
