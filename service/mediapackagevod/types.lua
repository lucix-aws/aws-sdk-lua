local M = {}

M.__PeriodTriggersElement = {
    ADS = "ADS",
}

M.AssetShallow = {
    type = "structure",
    id = "AssetShallow",
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
            key = { type = "string" },
            value = { type = "string" },
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
    id = "StreamSelection",
    members = {
        MaxVideoBitsPerSecond = {
            type = "integer",
            traits = {
                json_name = "maxVideoBitsPerSecond",
            },
        },
        MinVideoBitsPerSecond = {
            type = "integer",
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
    id = "DashManifest",
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
            type = "integer",
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
        StreamSelection = setmetatable({ traits = {
            json_name = "streamSelection",
        } }, { __index = M.StreamSelection }),
    },
}

M.EgressEndpoint = {
    type = "structure",
    id = "EgressEndpoint",
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
    id = "HlsManifest",
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
            type = "integer",
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
        StreamSelection = setmetatable({ traits = {
            json_name = "streamSelection",
        } }, { __index = M.StreamSelection }),
    },
}

M.MssManifest = {
    type = "structure",
    id = "MssManifest",
    members = {
        ManifestName = {
            type = "string",
            traits = {
                json_name = "manifestName",
            },
        },
        StreamSelection = setmetatable({ traits = {
            json_name = "streamSelection",
        } }, { __index = M.StreamSelection }),
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
    id = "EncryptionContractConfiguration",
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
    id = "SpekeKeyProvider",
    members = {
        EncryptionContractConfiguration = setmetatable({ traits = {
            json_name = "encryptionContractConfiguration",
        } }, { __index = M.EncryptionContractConfiguration }),
        RoleArn = {
            type = "string",
            traits = {
                json_name = "roleArn",
                required = true,
            },
        },
        SystemIds = {
            type = "list",
            member = { type = "string" },
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
    id = "CmafEncryption",
    members = {
        ConstantInitializationVector = {
            type = "string",
            traits = {
                json_name = "constantInitializationVector",
            },
        },
        SpekeKeyProvider = setmetatable({ traits = {
            json_name = "spekeKeyProvider",
            required = true,
        } }, { __index = M.SpekeKeyProvider }),
    },
}

M.CmafPackage = {
    type = "structure",
    id = "CmafPackage",
    members = {
        Encryption = setmetatable({ traits = {
            json_name = "encryption",
        } }, { __index = M.CmafEncryption }),
        HlsManifests = {
            type = "list",
            member = M.HlsManifest,
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
            type = "integer",
            traits = {
                json_name = "segmentDurationSeconds",
            },
        },
    },
}

M.DashEncryption = {
    type = "structure",
    id = "DashEncryption",
    members = {
        SpekeKeyProvider = setmetatable({ traits = {
            json_name = "spekeKeyProvider",
            required = true,
        } }, { __index = M.SpekeKeyProvider }),
    },
}

M.SegmentTemplateFormat = {
    NUMBER_WITH_TIMELINE = "NUMBER_WITH_TIMELINE",
    TIME_WITH_TIMELINE = "TIME_WITH_TIMELINE",
    NUMBER_WITH_DURATION = "NUMBER_WITH_DURATION",
}

M.DashPackage = {
    type = "structure",
    id = "DashPackage",
    members = {
        DashManifests = {
            type = "list",
            member = M.DashManifest,
            traits = {
                json_name = "dashManifests",
                required = true,
            },
        },
        Encryption = setmetatable({ traits = {
            json_name = "encryption",
        } }, { __index = M.DashEncryption }),
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
            member = { type = "string" },
            traits = {
                json_name = "periodTriggers",
            },
        },
        SegmentDurationSeconds = {
            type = "integer",
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
    id = "HlsEncryption",
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
        SpekeKeyProvider = setmetatable({ traits = {
            json_name = "spekeKeyProvider",
            required = true,
        } }, { __index = M.SpekeKeyProvider }),
    },
}

M.HlsPackage = {
    type = "structure",
    id = "HlsPackage",
    members = {
        Encryption = setmetatable({ traits = {
            json_name = "encryption",
        } }, { __index = M.HlsEncryption }),
        HlsManifests = {
            type = "list",
            member = M.HlsManifest,
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
            type = "integer",
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
    id = "MssEncryption",
    members = {
        SpekeKeyProvider = setmetatable({ traits = {
            json_name = "spekeKeyProvider",
            required = true,
        } }, { __index = M.SpekeKeyProvider }),
    },
}

M.MssPackage = {
    type = "structure",
    id = "MssPackage",
    members = {
        Encryption = setmetatable({ traits = {
            json_name = "encryption",
        } }, { __index = M.MssEncryption }),
        MssManifests = {
            type = "list",
            member = M.MssManifest,
            traits = {
                json_name = "mssManifests",
                required = true,
            },
        },
        SegmentDurationSeconds = {
            type = "integer",
            traits = {
                json_name = "segmentDurationSeconds",
            },
        },
    },
}

M.PackagingConfiguration = {
    type = "structure",
    id = "PackagingConfiguration",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CmafPackage = setmetatable({ traits = {
            json_name = "cmafPackage",
        } }, { __index = M.CmafPackage }),
        CreatedAt = {
            type = "string",
            traits = {
                json_name = "createdAt",
            },
        },
        DashPackage = setmetatable({ traits = {
            json_name = "dashPackage",
        } }, { __index = M.DashPackage }),
        HlsPackage = setmetatable({ traits = {
            json_name = "hlsPackage",
        } }, { __index = M.HlsPackage }),
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        MssPackage = setmetatable({ traits = {
            json_name = "mssPackage",
        } }, { __index = M.MssPackage }),
        PackagingGroupId = {
            type = "string",
            traits = {
                json_name = "packagingGroupId",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.Authorization = {
    type = "structure",
    id = "Authorization",
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
    id = "EgressAccessLogs",
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
    id = "PackagingGroup",
    members = {
        ApproximateAssetCount = {
            type = "integer",
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
        Authorization = setmetatable({ traits = {
            json_name = "authorization",
        } }, { __index = M.Authorization }),
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
        EgressAccessLogs = setmetatable({ traits = {
            json_name = "egressAccessLogs",
        } }, { __index = M.EgressAccessLogs }),
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.ConfigureLogsInput = {
    type = "structure",
    id = "ConfigureLogsInput",
    members = {
        EgressAccessLogs = setmetatable({ traits = {
            json_name = "egressAccessLogs",
        } }, { __index = M.EgressAccessLogs }),
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
    id = "ConfigureLogsOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Authorization = setmetatable({ traits = {
            json_name = "authorization",
        } }, { __index = M.Authorization }),
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
        EgressAccessLogs = setmetatable({ traits = {
            json_name = "egressAccessLogs",
        } }, { __index = M.EgressAccessLogs }),
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.ForbiddenException = {
    type = "structure",
    id = "ForbiddenException",
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
    id = "InternalServerErrorException",
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
    id = "NotFoundException",
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
    id = "ServiceUnavailableException",
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
    id = "TooManyRequestsException",
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
    id = "UnprocessableEntityException",
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
    id = "CreateAssetInput",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateAssetOutput = {
    type = "structure",
    id = "CreateAssetOutput",
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
            member = M.EgressEndpoint,
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreatePackagingConfigurationInput = {
    type = "structure",
    id = "CreatePackagingConfigurationInput",
    members = {
        CmafPackage = setmetatable({ traits = {
            json_name = "cmafPackage",
        } }, { __index = M.CmafPackage }),
        DashPackage = setmetatable({ traits = {
            json_name = "dashPackage",
        } }, { __index = M.DashPackage }),
        HlsPackage = setmetatable({ traits = {
            json_name = "hlsPackage",
        } }, { __index = M.HlsPackage }),
        Id = {
            type = "string",
            traits = {
                json_name = "id",
                required = true,
            },
        },
        MssPackage = setmetatable({ traits = {
            json_name = "mssPackage",
        } }, { __index = M.MssPackage }),
        PackagingGroupId = {
            type = "string",
            traits = {
                json_name = "packagingGroupId",
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreatePackagingConfigurationOutput = {
    type = "structure",
    id = "CreatePackagingConfigurationOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CmafPackage = setmetatable({ traits = {
            json_name = "cmafPackage",
        } }, { __index = M.CmafPackage }),
        CreatedAt = {
            type = "string",
            traits = {
                json_name = "createdAt",
            },
        },
        DashPackage = setmetatable({ traits = {
            json_name = "dashPackage",
        } }, { __index = M.DashPackage }),
        HlsPackage = setmetatable({ traits = {
            json_name = "hlsPackage",
        } }, { __index = M.HlsPackage }),
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        MssPackage = setmetatable({ traits = {
            json_name = "mssPackage",
        } }, { __index = M.MssPackage }),
        PackagingGroupId = {
            type = "string",
            traits = {
                json_name = "packagingGroupId",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreatePackagingGroupInput = {
    type = "structure",
    id = "CreatePackagingGroupInput",
    members = {
        Authorization = setmetatable({ traits = {
            json_name = "authorization",
        } }, { __index = M.Authorization }),
        EgressAccessLogs = setmetatable({ traits = {
            json_name = "egressAccessLogs",
        } }, { __index = M.EgressAccessLogs }),
        Id = {
            type = "string",
            traits = {
                json_name = "id",
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreatePackagingGroupOutput = {
    type = "structure",
    id = "CreatePackagingGroupOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Authorization = setmetatable({ traits = {
            json_name = "authorization",
        } }, { __index = M.Authorization }),
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
        EgressAccessLogs = setmetatable({ traits = {
            json_name = "egressAccessLogs",
        } }, { __index = M.EgressAccessLogs }),
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.DeleteAssetInput = {
    type = "structure",
    id = "DeleteAssetInput",
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
    id = "DeleteAssetOutput",
}

M.DeletePackagingConfigurationInput = {
    type = "structure",
    id = "DeletePackagingConfigurationInput",
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
    id = "DeletePackagingConfigurationOutput",
}

M.DeletePackagingGroupInput = {
    type = "structure",
    id = "DeletePackagingGroupInput",
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
    id = "DeletePackagingGroupOutput",
}

M.DescribeAssetInput = {
    type = "structure",
    id = "DescribeAssetInput",
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
    id = "DescribeAssetOutput",
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
            member = M.EgressEndpoint,
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.DescribePackagingConfigurationInput = {
    type = "structure",
    id = "DescribePackagingConfigurationInput",
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
    id = "DescribePackagingConfigurationOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CmafPackage = setmetatable({ traits = {
            json_name = "cmafPackage",
        } }, { __index = M.CmafPackage }),
        CreatedAt = {
            type = "string",
            traits = {
                json_name = "createdAt",
            },
        },
        DashPackage = setmetatable({ traits = {
            json_name = "dashPackage",
        } }, { __index = M.DashPackage }),
        HlsPackage = setmetatable({ traits = {
            json_name = "hlsPackage",
        } }, { __index = M.HlsPackage }),
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        MssPackage = setmetatable({ traits = {
            json_name = "mssPackage",
        } }, { __index = M.MssPackage }),
        PackagingGroupId = {
            type = "string",
            traits = {
                json_name = "packagingGroupId",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.DescribePackagingGroupInput = {
    type = "structure",
    id = "DescribePackagingGroupInput",
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
    id = "DescribePackagingGroupOutput",
    members = {
        ApproximateAssetCount = {
            type = "integer",
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
        Authorization = setmetatable({ traits = {
            json_name = "authorization",
        } }, { __index = M.Authorization }),
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
        EgressAccessLogs = setmetatable({ traits = {
            json_name = "egressAccessLogs",
        } }, { __index = M.EgressAccessLogs }),
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.ListAssetsInput = {
    type = "structure",
    id = "ListAssetsInput",
    members = {
        MaxResults = {
            type = "integer",
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
    id = "ListAssetsOutput",
    members = {
        Assets = {
            type = "list",
            member = M.AssetShallow,
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
    id = "ListPackagingConfigurationsInput",
    members = {
        MaxResults = {
            type = "integer",
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
    id = "ListPackagingConfigurationsOutput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        PackagingConfigurations = {
            type = "list",
            member = M.PackagingConfiguration,
            traits = {
                json_name = "packagingConfigurations",
            },
        },
    },
}

M.ListPackagingGroupsInput = {
    type = "structure",
    id = "ListPackagingGroupsInput",
    members = {
        MaxResults = {
            type = "integer",
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
    id = "ListPackagingGroupsOutput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        PackagingGroups = {
            type = "list",
            member = M.PackagingGroup,
            traits = {
                json_name = "packagingGroups",
            },
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
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
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TagKeys = {
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

M.UpdatePackagingGroupInput = {
    type = "structure",
    id = "UpdatePackagingGroupInput",
    members = {
        Authorization = setmetatable({ traits = {
            json_name = "authorization",
        } }, { __index = M.Authorization }),
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
    id = "UpdatePackagingGroupOutput",
    members = {
        ApproximateAssetCount = {
            type = "integer",
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
        Authorization = setmetatable({ traits = {
            json_name = "authorization",
        } }, { __index = M.Authorization }),
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
        EgressAccessLogs = setmetatable({ traits = {
            json_name = "egressAccessLogs",
        } }, { __index = M.EgressAccessLogs }),
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

return M
