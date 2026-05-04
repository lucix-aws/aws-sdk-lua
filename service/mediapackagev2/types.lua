local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AdMarkerDash = {
    BINARY = "BINARY",
    XML = "XML",
}

M.AdMarkerHls = {
    DATERANGE = "DATERANGE",
    SCTE35_ENHANCED = "SCTE35_ENHANCED",
}

M.CancelHarvestJobInput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        OriginEndpointName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        HarvestJobName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "x-amzn-update-if-match",
            },
        },
    },
}

M.CancelHarvestJobOutput = {
    type = "structure",
}

M.ConflictExceptionType = {
    RESOURCE_IN_USE = "RESOURCE_IN_USE",
    RESOURCE_ALREADY_EXISTS = "RESOURCE_ALREADY_EXISTS",
    IDEMPOTENT_PARAMETER_MISMATCH = "IDEMPOTENT_PARAMETER_MISMATCH",
    CONFLICTING_OPERATION = "CONFLICTING_OPERATION",
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ConflictExceptionType = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceTypeNotFound = {
    CHANNEL_GROUP = "CHANNEL_GROUP",
    CHANNEL = "CHANNEL",
    ORIGIN_ENDPOINT = "ORIGIN_ENDPOINT",
    HARVEST_JOB = "HARVEST_JOB",
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ResourceTypeNotFound = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationExceptionType = {
    CONTAINER_TYPE_IMMUTABLE = "CONTAINER_TYPE_IMMUTABLE",
    INVALID_PAGINATION_TOKEN = "INVALID_PAGINATION_TOKEN",
    INVALID_PAGINATION_MAX_RESULTS = "INVALID_PAGINATION_MAX_RESULTS",
    INVALID_POLICY = "INVALID_POLICY",
    INVALID_ROLE_ARN = "INVALID_ROLE_ARN",
    MANIFEST_NAME_COLLISION = "MANIFEST_NAME_COLLISION",
    ENCRYPTION_METHOD_CONTAINER_TYPE_MISMATCH = "ENCRYPTION_METHOD_CONTAINER_TYPE_MISMATCH",
    CENC_IV_INCOMPATIBLE = "CENC_IV_INCOMPATIBLE",
    ENCRYPTION_CONTRACT_WITHOUT_AUDIO_RENDITION_INCOMPATIBLE = "ENCRYPTION_CONTRACT_WITHOUT_AUDIO_RENDITION_INCOMPATIBLE",
    ENCRYPTION_CONTRACT_WITH_ISM_CONTAINER_INCOMPATIBLE = "ENCRYPTION_CONTRACT_WITH_ISM_CONTAINER_INCOMPATIBLE",
    ENCRYPTION_CONTRACT_UNENCRYPTED = "ENCRYPTION_CONTRACT_UNENCRYPTED",
    ENCRYPTION_CONTRACT_SHARED = "ENCRYPTION_CONTRACT_SHARED",
    NUM_MANIFESTS_LOW = "NUM_MANIFESTS_LOW",
    NUM_MANIFESTS_HIGH = "NUM_MANIFESTS_HIGH",
    MANIFEST_DRM_SYSTEMS_INCOMPATIBLE = "MANIFEST_DRM_SYSTEMS_INCOMPATIBLE",
    DRM_SYSTEMS_ENCRYPTION_METHOD_INCOMPATIBLE = "DRM_SYSTEMS_ENCRYPTION_METHOD_INCOMPATIBLE",
    ROLE_ARN_NOT_ASSUMABLE = "ROLE_ARN_NOT_ASSUMABLE",
    ROLE_ARN_LENGTH_OUT_OF_RANGE = "ROLE_ARN_LENGTH_OUT_OF_RANGE",
    ROLE_ARN_INVALID_FORMAT = "ROLE_ARN_INVALID_FORMAT",
    URL_INVALID = "URL_INVALID",
    URL_SCHEME = "URL_SCHEME",
    URL_USER_INFO = "URL_USER_INFO",
    URL_PORT = "URL_PORT",
    URL_UNKNOWN_HOST = "URL_UNKNOWN_HOST",
    URL_LOCAL_ADDRESS = "URL_LOCAL_ADDRESS",
    URL_LOOPBACK_ADDRESS = "URL_LOOPBACK_ADDRESS",
    URL_LINK_LOCAL_ADDRESS = "URL_LINK_LOCAL_ADDRESS",
    URL_MULTICAST_ADDRESS = "URL_MULTICAST_ADDRESS",
    MEMBER_INVALID = "MEMBER_INVALID",
    MEMBER_MISSING = "MEMBER_MISSING",
    MEMBER_MIN_VALUE = "MEMBER_MIN_VALUE",
    MEMBER_MAX_VALUE = "MEMBER_MAX_VALUE",
    MEMBER_MIN_LENGTH = "MEMBER_MIN_LENGTH",
    MEMBER_MAX_LENGTH = "MEMBER_MAX_LENGTH",
    MEMBER_INVALID_ENUM_VALUE = "MEMBER_INVALID_ENUM_VALUE",
    MEMBER_DOES_NOT_MATCH_PATTERN = "MEMBER_DOES_NOT_MATCH_PATTERN",
    INVALID_MANIFEST_FILTER = "INVALID_MANIFEST_FILTER",
    INVALID_DRM_SETTINGS = "INVALID_DRM_SETTINGS",
    INVALID_TIME_DELAY_SECONDS = "INVALID_TIME_DELAY_SECONDS",
    END_TIME_EARLIER_THAN_START_TIME = "END_TIME_EARLIER_THAN_START_TIME",
    TS_CONTAINER_TYPE_WITH_DASH_MANIFEST = "TS_CONTAINER_TYPE_WITH_DASH_MANIFEST",
    DIRECT_MODE_WITH_TIMING_SOURCE = "DIRECT_MODE_WITH_TIMING_SOURCE",
    NONE_MODE_WITH_TIMING_SOURCE = "NONE_MODE_WITH_TIMING_SOURCE",
    TIMING_SOURCE_MISSING = "TIMING_SOURCE_MISSING",
    UPDATE_PERIOD_SMALLER_THAN_SEGMENT_DURATION = "UPDATE_PERIOD_SMALLER_THAN_SEGMENT_DURATION",
    PERIOD_TRIGGERS_NONE_SPECIFIED_WITH_ADDITIONAL_VALUES = "PERIOD_TRIGGERS_NONE_SPECIFIED_WITH_ADDITIONAL_VALUES",
    DRM_SIGNALING_MISMATCH_SEGMENT_ENCRYPTION_STATUS = "DRM_SIGNALING_MISMATCH_SEGMENT_ENCRYPTION_STATUS",
    ONLY_CMAF_INPUT_TYPE_ALLOW_FORCE_ENDPOINT_ERROR_CONFIGURATION = "ONLY_CMAF_INPUT_TYPE_ALLOW_FORCE_ENDPOINT_ERROR_CONFIGURATION",
    SOURCE_DISRUPTIONS_ENABLED_INCORRECTLY = "SOURCE_DISRUPTIONS_ENABLED_INCORRECTLY",
    HARVESTED_MANIFEST_HAS_START_END_FILTER_CONFIGURATION = "HARVESTED_MANIFEST_HAS_START_END_FILTER_CONFIGURATION",
    HARVESTED_MANIFEST_NOT_FOUND_ON_ENDPOINT = "HARVESTED_MANIFEST_NOT_FOUND_ON_ENDPOINT",
    TOO_MANY_IN_PROGRESS_HARVEST_JOBS = "TOO_MANY_IN_PROGRESS_HARVEST_JOBS",
    HARVEST_JOB_INELIGIBLE_FOR_CANCELLATION = "HARVEST_JOB_INELIGIBLE_FOR_CANCELLATION",
    INVALID_HARVEST_JOB_DURATION = "INVALID_HARVEST_JOB_DURATION",
    HARVEST_JOB_S3_DESTINATION_MISSING_OR_INCOMPLETE = "HARVEST_JOB_S3_DESTINATION_MISSING_OR_INCOMPLETE",
    HARVEST_JOB_UNABLE_TO_WRITE_TO_S3_DESTINATION = "HARVEST_JOB_UNABLE_TO_WRITE_TO_S3_DESTINATION",
    HARVEST_JOB_CUSTOMER_ENDPOINT_READ_ACCESS_DENIED = "HARVEST_JOB_CUSTOMER_ENDPOINT_READ_ACCESS_DENIED",
    CLIP_START_TIME_WITH_START_OR_END = "CLIP_START_TIME_WITH_START_OR_END",
    START_TAG_TIME_OFFSET_INVALID = "START_TAG_TIME_OFFSET_INVALID",
    INCOMPATIBLE_DASH_PROFILE_DVB_DASH_CONFIGURATION = "INCOMPATIBLE_DASH_PROFILE_DVB_DASH_CONFIGURATION",
    DASH_DVB_ATTRIBUTES_WITHOUT_DVB_DASH_PROFILE = "DASH_DVB_ATTRIBUTES_WITHOUT_DVB_DASH_PROFILE",
    INCOMPATIBLE_DASH_COMPACTNESS_CONFIGURATION = "INCOMPATIBLE_DASH_COMPACTNESS_CONFIGURATION",
    INCOMPATIBLE_XML_ENCODING = "INCOMPATIBLE_XML_ENCODING",
    CMAF_EXCLUDE_SEGMENT_DRM_METADATA_INCOMPATIBLE_CONTAINER_TYPE = "CMAF_EXCLUDE_SEGMENT_DRM_METADATA_INCOMPATIBLE_CONTAINER_TYPE",
    ONLY_CMAF_INPUT_TYPE_ALLOW_MQCS_INPUT_SWITCHING = "ONLY_CMAF_INPUT_TYPE_ALLOW_MQCS_INPUT_SWITCHING",
    ONLY_CMAF_INPUT_TYPE_ALLOW_MQCS_OUTPUT_CONFIGURATION = "ONLY_CMAF_INPUT_TYPE_ALLOW_MQCS_OUTPUT_CONFIGURATION",
    ONLY_CMAF_INPUT_TYPE_ALLOW_PREFERRED_INPUT_CONFIGURATION = "ONLY_CMAF_INPUT_TYPE_ALLOW_PREFERRED_INPUT_CONFIGURATION",
    TS_CONTAINER_TYPE_WITH_MSS_MANIFEST = "TS_CONTAINER_TYPE_WITH_MSS_MANIFEST",
    CMAF_CONTAINER_TYPE_WITH_MSS_MANIFEST = "CMAF_CONTAINER_TYPE_WITH_MSS_MANIFEST",
    ISM_CONTAINER_TYPE_WITH_HLS_MANIFEST = "ISM_CONTAINER_TYPE_WITH_HLS_MANIFEST",
    ISM_CONTAINER_TYPE_WITH_LL_HLS_MANIFEST = "ISM_CONTAINER_TYPE_WITH_LL_HLS_MANIFEST",
    ISM_CONTAINER_TYPE_WITH_DASH_MANIFEST = "ISM_CONTAINER_TYPE_WITH_DASH_MANIFEST",
    ISM_CONTAINER_TYPE_WITH_SCTE = "ISM_CONTAINER_TYPE_WITH_SCTE",
    ISM_CONTAINER_WITH_KEY_ROTATION = "ISM_CONTAINER_WITH_KEY_ROTATION",
    BATCH_GET_SECRET_VALUE_DENIED = "BATCH_GET_SECRET_VALUE_DENIED",
    GET_SECRET_VALUE_DENIED = "GET_SECRET_VALUE_DENIED",
    DESCRIBE_SECRET_DENIED = "DESCRIBE_SECRET_DENIED",
    INVALID_SECRET_FORMAT = "INVALID_SECRET_FORMAT",
    SECRET_IS_NOT_ONE_KEY_VALUE_PAIR = "SECRET_IS_NOT_ONE_KEY_VALUE_PAIR",
    INVALID_SECRET_KEY = "INVALID_SECRET_KEY",
    INVALID_SECRET_VALUE = "INVALID_SECRET_VALUE",
    SECRET_ARN_RESOURCE_NOT_FOUND = "SECRET_ARN_RESOURCE_NOT_FOUND",
    DECRYPT_SECRET_FAILED = "DECRYPT_SECRET_FAILED",
    TOO_MANY_SECRETS = "TOO_MANY_SECRETS",
    DUPLICATED_SECRET = "DUPLICATED_SECRET",
    MALFORMED_SECRET_ARN = "MALFORMED_SECRET_ARN",
    SECRET_FROM_DIFFERENT_ACCOUNT = "SECRET_FROM_DIFFERENT_ACCOUNT",
    SECRET_FROM_DIFFERENT_REGION = "SECRET_FROM_DIFFERENT_REGION",
    INVALID_SECRET = "INVALID_SECRET",
    RESOURCE_NOT_IN_SAME_REGION = "RESOURCE_NOT_IN_SAME_REGION",
    CERTIFICATE_RESOURCE_NOT_FOUND = "CERTIFICATE_RESOURCE_NOT_FOUND",
    CERTIFICATE_ACCESS_DENIED = "CERTIFICATE_ACCESS_DENIED",
    DESCRIBE_CERTIFICATE_FAILED = "DESCRIBE_CERTIFICATE_FAILED",
    INVALID_CERTIFICATE_STATUS = "INVALID_CERTIFICATE_STATUS",
    INVALID_CERTIFICATE_KEY_ALGORITHM = "INVALID_CERTIFICATE_KEY_ALGORITHM",
    INVALID_CERTIFICATE_SIGNATURE_ALGORITHM = "INVALID_CERTIFICATE_SIGNATURE_ALGORITHM",
    MISSING_CERTIFICATE_DOMAIN_NAME = "MISSING_CERTIFICATE_DOMAIN_NAME",
    INVALID_ARN = "INVALID_ARN",
    SCTE_IN_MANIFESTS_INVALID_CONFIGURATION = "SCTE_IN_MANIFESTS_INVALID_CONFIGURATION",
    CUSTOM_AD_TYPES_INVALID_CONFIGURATION = "CUSTOM_AD_TYPES_INVALID_CONFIGURATION",
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ValidationExceptionType = {
            type = "string",
        },
    },
}

M.CdnAuthConfiguration = {
    type = "structure",
    members = {
        CdnIdentifierSecretArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        SecretsRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ChannelGroupListConfiguration = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
    },
}

M.DeleteChannelPolicyInput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteChannelPolicyOutput = {
    type = "structure",
}

M.GetChannelPolicyInput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetChannelPolicyOutput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutChannelPolicyInput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutChannelPolicyOutput = {
    type = "structure",
}

M.InputSwitchConfiguration = {
    type = "structure",
    members = {
        MQCSInputSwitching = {
            type = "boolean",
        },
        PreferredInput = {
            type = "integer",
        },
    },
}

M.InputType = {
    HLS = "HLS",
    CMAF = "CMAF",
}

M.OutputHeaderConfiguration = {
    type = "structure",
    members = {
        PublishMQCS = {
            type = "boolean",
        },
    },
}

M.CreateChannelInput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                http_header = "x-amzn-client-token",
                idempotency_token = true,
            },
        },
        InputType = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        InputSwitchConfiguration = M.InputSwitchConfiguration,
        OutputHeaderConfiguration = M.OutputHeaderConfiguration,
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

M.IngestEndpoint = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Url = {
            type = "string",
        },
    },
}

M.CreateChannelOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChannelGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        IngestEndpoints = {
            type = "list",
            member = M.IngestEndpoint,
        },
        InputType = {
            type = "string",
        },
        ETag = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        InputSwitchConfiguration = M.InputSwitchConfiguration,
        OutputHeaderConfiguration = M.OutputHeaderConfiguration,
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteChannelInput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChannelName = {
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

M.GetChannelInput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetChannelOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChannelGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ResetAt = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
        IngestEndpoints = {
            type = "list",
            member = M.IngestEndpoint,
        },
        InputType = {
            type = "string",
        },
        ETag = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        InputSwitchConfiguration = M.InputSwitchConfiguration,
        OutputHeaderConfiguration = M.OutputHeaderConfiguration,
    },
}

M.ListChannelsInput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 10,
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

M.ChannelListConfiguration = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChannelGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        InputType = {
            type = "string",
        },
    },
}

M.ListChannelsOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member = M.ChannelListConfiguration,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ContainerType = {
    TS = "TS",
    CMAF = "CMAF",
    ISM = "ISM",
}

M.DashBaseUrl = {
    type = "structure",
    members = {
        Url = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceLocation = {
            type = "string",
        },
        DvbPriority = {
            type = "integer",
        },
        DvbWeight = {
            type = "integer",
        },
    },
}

M.DashCompactness = {
    STANDARD = "STANDARD",
    NONE = "NONE",
}

M.DashDrmSignaling = {
    INDIVIDUAL = "INDIVIDUAL",
    REFERENCED = "REFERENCED",
}

M.DashDvbMetricsReporting = {
    type = "structure",
    members = {
        ReportingUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Probability = {
            type = "integer",
        },
    },
}

M.DashDvbFontDownload = {
    type = "structure",
    members = {
        Url = {
            type = "string",
        },
        MimeType = {
            type = "string",
        },
        FontFamily = {
            type = "string",
        },
    },
}

M.DashDvbSettings = {
    type = "structure",
    members = {
        FontDownload = M.DashDvbFontDownload,
        ErrorMetrics = {
            type = "list",
            member = M.DashDvbMetricsReporting,
        },
    },
}

M.FilterConfiguration = {
    type = "structure",
    members = {
        ManifestFilter = {
            type = "string",
        },
        DrmSettings = {
            type = "string",
        },
        Start = {
            type = "timestamp",
        },
        End = {
            type = "timestamp",
        },
        TimeDelaySeconds = {
            type = "integer",
        },
        ClipStartTime = {
            type = "timestamp",
        },
    },
}

M.DashPeriodTrigger = {
    AVAILS = "AVAILS",
    DRM_KEY_ROTATION = "DRM_KEY_ROTATION",
    SOURCE_CHANGES = "SOURCE_CHANGES",
    SOURCE_DISRUPTIONS = "SOURCE_DISRUPTIONS",
    NONE = "NONE",
}

M.DashProfile = {
    DVB_DASH = "DVB_DASH",
}

M.DashProgramInformation = {
    type = "structure",
    members = {
        Title = {
            type = "string",
        },
        Source = {
            type = "string",
        },
        Copyright = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
        MoreInformationUrl = {
            type = "string",
        },
    },
}

M.ScteInManifests = {
    ALL = "ALL",
    MATCHES_FILTER = "MATCHES_FILTER",
}

M.ScteDash = {
    type = "structure",
    members = {
        AdMarkerDash = {
            type = "string",
        },
        ScteInManifests = {
            type = "string",
        },
    },
}

M.DashSegmentTemplateFormat = {
    NUMBER_WITH_TIMELINE = "NUMBER_WITH_TIMELINE",
}

M.DashTtmlProfile = {
    IMSC_1 = "IMSC_1",
    EBU_TT_D_101 = "EBU_TT_D_101",
}

M.DashTtmlConfiguration = {
    type = "structure",
    members = {
        TtmlProfile = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DashSubtitleConfiguration = {
    type = "structure",
    members = {
        TtmlConfiguration = M.DashTtmlConfiguration,
    },
}

M.UriPathType = {
    LEAF = "LEAF",
    ROOT = "ROOT",
}

M.DashUtcTimingMode = {
    HTTP_HEAD = "HTTP_HEAD",
    HTTP_ISO = "HTTP_ISO",
    HTTP_XSDATE = "HTTP_XSDATE",
    UTC_DIRECT = "UTC_DIRECT",
}

M.DashUtcTiming = {
    type = "structure",
    members = {
        TimingMode = {
            type = "string",
        },
        TimingSource = {
            type = "string",
        },
    },
}

M.CreateDashManifestConfiguration = {
    type = "structure",
    members = {
        ManifestName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ManifestWindowSeconds = {
            type = "integer",
        },
        FilterConfiguration = M.FilterConfiguration,
        MinUpdatePeriodSeconds = {
            type = "integer",
        },
        MinBufferTimeSeconds = {
            type = "integer",
        },
        SuggestedPresentationDelaySeconds = {
            type = "integer",
        },
        SegmentTemplateFormat = {
            type = "string",
        },
        PeriodTriggers = {
            type = "list",
            member = { type = "string" },
        },
        ScteDash = M.ScteDash,
        DrmSignaling = {
            type = "string",
        },
        UtcTiming = M.DashUtcTiming,
        Profiles = {
            type = "list",
            member = { type = "string" },
        },
        BaseUrls = {
            type = "list",
            member = M.DashBaseUrl,
        },
        ProgramInformation = M.DashProgramInformation,
        DvbSettings = M.DashDvbSettings,
        Compactness = {
            type = "string",
        },
        SubtitleConfiguration = M.DashSubtitleConfiguration,
        UriPathType = {
            type = "string",
        },
    },
}

M.EndpointErrorCondition = {
    STALE_MANIFEST = "STALE_MANIFEST",
    INCOMPLETE_MANIFEST = "INCOMPLETE_MANIFEST",
    MISSING_DRM_KEY = "MISSING_DRM_KEY",
    SLATE_INPUT = "SLATE_INPUT",
}

M.ForceEndpointErrorConfiguration = {
    type = "structure",
    members = {
        EndpointErrorConditions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ScteHls = {
    type = "structure",
    members = {
        AdMarkerHls = {
            type = "string",
        },
        ScteInManifests = {
            type = "string",
        },
    },
}

M.StartTag = {
    type = "structure",
    members = {
        TimeOffset = {
            type = "float",
            traits = {
                required = true,
            },
        },
        Precise = {
            type = "boolean",
        },
    },
}

M.CreateHlsManifestConfiguration = {
    type = "structure",
    members = {
        ManifestName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChildManifestName = {
            type = "string",
        },
        ScteHls = M.ScteHls,
        StartTag = M.StartTag,
        ManifestWindowSeconds = {
            type = "integer",
        },
        ProgramDateTimeIntervalSeconds = {
            type = "integer",
        },
        FilterConfiguration = M.FilterConfiguration,
        UrlEncodeChildManifest = {
            type = "boolean",
        },
        UriPathType = {
            type = "string",
        },
    },
}

M.CreateLowLatencyHlsManifestConfiguration = {
    type = "structure",
    members = {
        ManifestName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChildManifestName = {
            type = "string",
        },
        ScteHls = M.ScteHls,
        StartTag = M.StartTag,
        ManifestWindowSeconds = {
            type = "integer",
        },
        ProgramDateTimeIntervalSeconds = {
            type = "integer",
        },
        FilterConfiguration = M.FilterConfiguration,
        UrlEncodeChildManifest = {
            type = "boolean",
        },
        UriPathType = {
            type = "string",
        },
    },
}

M.MssManifestLayout = {
    FULL = "FULL",
    COMPACT = "COMPACT",
}

M.CreateMssManifestConfiguration = {
    type = "structure",
    members = {
        ManifestName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ManifestWindowSeconds = {
            type = "integer",
        },
        FilterConfiguration = M.FilterConfiguration,
        ManifestLayout = {
            type = "string",
        },
    },
}

M.CmafEncryptionMethod = {
    CENC = "CENC",
    CBCS = "CBCS",
}

M.IsmEncryptionMethod = {
    CENC = "CENC",
}

M.TsEncryptionMethod = {
    AES_128 = "AES_128",
    SAMPLE_AES = "SAMPLE_AES",
}

M.EncryptionMethod = {
    type = "structure",
    members = {
        TsEncryptionMethod = {
            type = "string",
        },
        CmafEncryptionMethod = {
            type = "string",
        },
        IsmEncryptionMethod = {
            type = "string",
        },
    },
}

M.DrmSystem = {
    CLEAR_KEY_AES_128 = "CLEAR_KEY_AES_128",
    FAIRPLAY = "FAIRPLAY",
    PLAYREADY = "PLAYREADY",
    WIDEVINE = "WIDEVINE",
    IRDETO = "IRDETO",
}

M.PresetSpeke20Audio = {
    PRESET_AUDIO_1 = "PRESET_AUDIO_1",
    PRESET_AUDIO_2 = "PRESET_AUDIO_2",
    PRESET_AUDIO_3 = "PRESET_AUDIO_3",
    SHARED = "SHARED",
    UNENCRYPTED = "UNENCRYPTED",
}

M.PresetSpeke20Video = {
    PRESET_VIDEO_1 = "PRESET_VIDEO_1",
    PRESET_VIDEO_2 = "PRESET_VIDEO_2",
    PRESET_VIDEO_3 = "PRESET_VIDEO_3",
    PRESET_VIDEO_4 = "PRESET_VIDEO_4",
    PRESET_VIDEO_5 = "PRESET_VIDEO_5",
    PRESET_VIDEO_6 = "PRESET_VIDEO_6",
    PRESET_VIDEO_7 = "PRESET_VIDEO_7",
    PRESET_VIDEO_8 = "PRESET_VIDEO_8",
    SHARED = "SHARED",
    UNENCRYPTED = "UNENCRYPTED",
}

M.EncryptionContractConfiguration = {
    type = "structure",
    members = {
        PresetSpeke20Audio = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PresetSpeke20Video = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SpekeKeyProvider = {
    type = "structure",
    members = {
        EncryptionContractConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EncryptionContractConfiguration }),
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DrmSystems = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Url = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CertificateArn = {
            type = "string",
        },
    },
}

M.Encryption = {
    type = "structure",
    members = {
        ConstantInitializationVector = {
            type = "string",
        },
        EncryptionMethod = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EncryptionMethod }),
        KeyRotationIntervalSeconds = {
            type = "integer",
        },
        CmafExcludeSegmentDrmMetadata = {
            type = "boolean",
        },
        SpekeKeyProvider = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SpekeKeyProvider }),
    },
}

M.CustomAdType = {
    PROGRAM = "PROGRAM",
    CHAPTER = "CHAPTER",
    UNSCHEDULED_EVENT = "UNSCHEDULED_EVENT",
    ALTERNATE_CONTENT_OPPORTUNITY = "ALTERNATE_CONTENT_OPPORTUNITY",
    NETWORK = "NETWORK",
}

M.ScteFilter = {
    SPLICE_INSERT = "SPLICE_INSERT",
    BREAK = "BREAK",
    PROVIDER_ADVERTISEMENT = "PROVIDER_ADVERTISEMENT",
    DISTRIBUTOR_ADVERTISEMENT = "DISTRIBUTOR_ADVERTISEMENT",
    PROVIDER_PLACEMENT_OPPORTUNITY = "PROVIDER_PLACEMENT_OPPORTUNITY",
    DISTRIBUTOR_PLACEMENT_OPPORTUNITY = "DISTRIBUTOR_PLACEMENT_OPPORTUNITY",
    PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY = "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY",
    DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY = "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY",
    PROGRAM = "PROGRAM",
    CHAPTER = "CHAPTER",
    UNSCHEDULED_EVENT = "UNSCHEDULED_EVENT",
    ALTERNATE_CONTENT_OPPORTUNITY = "ALTERNATE_CONTENT_OPPORTUNITY",
    NETWORK = "NETWORK",
    PROVIDER_PROMO = "PROVIDER_PROMO",
    DISTRIBUTOR_PROMO = "DISTRIBUTOR_PROMO",
    PROVIDER_AD_BLOCK = "PROVIDER_AD_BLOCK",
    DISTRIBUTOR_AD_BLOCK = "DISTRIBUTOR_AD_BLOCK",
}

M.ScteInSegments = {
    NONE = "NONE",
    ALL = "ALL",
    MATCHES_FILTER = "MATCHES_FILTER",
}

M.Scte = {
    type = "structure",
    members = {
        ScteFilter = {
            type = "list",
            member = { type = "string" },
        },
        ScteInSegments = {
            type = "string",
        },
        CustomAdTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.Segment = {
    type = "structure",
    members = {
        SegmentDurationSeconds = {
            type = "integer",
        },
        SegmentName = {
            type = "string",
        },
        TsUseAudioRenditionGroup = {
            type = "boolean",
        },
        IncludeIframeOnlyStreams = {
            type = "boolean",
        },
        TsIncludeDvbSubtitles = {
            type = "boolean",
        },
        Scte = M.Scte,
        Encryption = M.Encryption,
    },
}

M.UriSeparator = {
    UNDERSCORE = "UNDERSCORE",
    HYPHEN = "HYPHEN",
}

M.CreateOriginEndpointInput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        OriginEndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContainerType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Segment = M.Segment,
        ClientToken = {
            type = "string",
            traits = {
                http_header = "x-amzn-client-token",
                idempotency_token = true,
            },
        },
        Description = {
            type = "string",
        },
        StartoverWindowSeconds = {
            type = "integer",
        },
        HlsManifests = {
            type = "list",
            member = M.CreateHlsManifestConfiguration,
        },
        LowLatencyHlsManifests = {
            type = "list",
            member = M.CreateLowLatencyHlsManifestConfiguration,
        },
        DashManifests = {
            type = "list",
            member = M.CreateDashManifestConfiguration,
        },
        MssManifests = {
            type = "list",
            member = M.CreateMssManifestConfiguration,
        },
        ForceEndpointErrorConfiguration = M.ForceEndpointErrorConfiguration,
        UriSeparator = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetDashManifestConfiguration = {
    type = "structure",
    members = {
        ManifestName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Url = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ManifestWindowSeconds = {
            type = "integer",
        },
        FilterConfiguration = M.FilterConfiguration,
        MinUpdatePeriodSeconds = {
            type = "integer",
        },
        MinBufferTimeSeconds = {
            type = "integer",
        },
        SuggestedPresentationDelaySeconds = {
            type = "integer",
        },
        SegmentTemplateFormat = {
            type = "string",
        },
        PeriodTriggers = {
            type = "list",
            member = { type = "string" },
        },
        ScteDash = M.ScteDash,
        DrmSignaling = {
            type = "string",
        },
        UtcTiming = M.DashUtcTiming,
        Profiles = {
            type = "list",
            member = { type = "string" },
        },
        BaseUrls = {
            type = "list",
            member = M.DashBaseUrl,
        },
        ProgramInformation = M.DashProgramInformation,
        DvbSettings = M.DashDvbSettings,
        Compactness = {
            type = "string",
        },
        SubtitleConfiguration = M.DashSubtitleConfiguration,
        UriPathType = {
            type = "string",
        },
    },
}

M.GetHlsManifestConfiguration = {
    type = "structure",
    members = {
        ManifestName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Url = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChildManifestName = {
            type = "string",
        },
        ManifestWindowSeconds = {
            type = "integer",
        },
        ProgramDateTimeIntervalSeconds = {
            type = "integer",
        },
        ScteHls = M.ScteHls,
        FilterConfiguration = M.FilterConfiguration,
        StartTag = M.StartTag,
        UrlEncodeChildManifest = {
            type = "boolean",
        },
        UriPathType = {
            type = "string",
        },
    },
}

M.GetLowLatencyHlsManifestConfiguration = {
    type = "structure",
    members = {
        ManifestName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Url = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChildManifestName = {
            type = "string",
        },
        ManifestWindowSeconds = {
            type = "integer",
        },
        ProgramDateTimeIntervalSeconds = {
            type = "integer",
        },
        ScteHls = M.ScteHls,
        FilterConfiguration = M.FilterConfiguration,
        StartTag = M.StartTag,
        UrlEncodeChildManifest = {
            type = "boolean",
        },
        UriPathType = {
            type = "string",
        },
    },
}

M.GetMssManifestConfiguration = {
    type = "structure",
    members = {
        ManifestName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Url = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FilterConfiguration = M.FilterConfiguration,
        ManifestWindowSeconds = {
            type = "integer",
        },
        ManifestLayout = {
            type = "string",
        },
    },
}

M.CreateOriginEndpointOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChannelGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OriginEndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContainerType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Segment = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Segment }),
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        StartoverWindowSeconds = {
            type = "integer",
        },
        HlsManifests = {
            type = "list",
            member = M.GetHlsManifestConfiguration,
        },
        LowLatencyHlsManifests = {
            type = "list",
            member = M.GetLowLatencyHlsManifestConfiguration,
        },
        DashManifests = {
            type = "list",
            member = M.GetDashManifestConfiguration,
        },
        MssManifests = {
            type = "list",
            member = M.GetMssManifestConfiguration,
        },
        ForceEndpointErrorConfiguration = M.ForceEndpointErrorConfiguration,
        UriSeparator = {
            type = "string",
        },
        ETag = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DeleteOriginEndpointInput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        OriginEndpointName = {
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

M.GetOriginEndpointInput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        OriginEndpointName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetOriginEndpointOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChannelGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OriginEndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContainerType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Segment = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Segment }),
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ResetAt = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
        StartoverWindowSeconds = {
            type = "integer",
        },
        HlsManifests = {
            type = "list",
            member = M.GetHlsManifestConfiguration,
        },
        LowLatencyHlsManifests = {
            type = "list",
            member = M.GetLowLatencyHlsManifestConfiguration,
        },
        DashManifests = {
            type = "list",
            member = M.GetDashManifestConfiguration,
        },
        MssManifests = {
            type = "list",
            member = M.GetMssManifestConfiguration,
        },
        ForceEndpointErrorConfiguration = M.ForceEndpointErrorConfiguration,
        UriSeparator = {
            type = "string",
        },
        ETag = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListOriginEndpointsInput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 10,
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

M.ListDashManifestConfiguration = {
    type = "structure",
    members = {
        ManifestName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Url = {
            type = "string",
        },
    },
}

M.ListHlsManifestConfiguration = {
    type = "structure",
    members = {
        ManifestName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChildManifestName = {
            type = "string",
        },
        Url = {
            type = "string",
        },
    },
}

M.ListLowLatencyHlsManifestConfiguration = {
    type = "structure",
    members = {
        ManifestName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChildManifestName = {
            type = "string",
        },
        Url = {
            type = "string",
        },
    },
}

M.ListMssManifestConfiguration = {
    type = "structure",
    members = {
        ManifestName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Url = {
            type = "string",
        },
    },
}

M.OriginEndpointListConfiguration = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChannelGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OriginEndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContainerType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        ModifiedAt = {
            type = "timestamp",
        },
        HlsManifests = {
            type = "list",
            member = M.ListHlsManifestConfiguration,
        },
        LowLatencyHlsManifests = {
            type = "list",
            member = M.ListLowLatencyHlsManifestConfiguration,
        },
        DashManifests = {
            type = "list",
            member = M.ListDashManifestConfiguration,
        },
        MssManifests = {
            type = "list",
            member = M.ListMssManifestConfiguration,
        },
        ForceEndpointErrorConfiguration = M.ForceEndpointErrorConfiguration,
        UriSeparator = {
            type = "string",
        },
    },
}

M.ListOriginEndpointsOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member = M.OriginEndpointListConfiguration,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DeleteOriginEndpointPolicyInput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        OriginEndpointName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteOriginEndpointPolicyOutput = {
    type = "structure",
}

M.GetOriginEndpointPolicyInput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        OriginEndpointName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetOriginEndpointPolicyOutput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OriginEndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CdnAuthConfiguration = M.CdnAuthConfiguration,
    },
}

M.PutOriginEndpointPolicyInput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        OriginEndpointName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CdnAuthConfiguration = M.CdnAuthConfiguration,
    },
}

M.PutOriginEndpointPolicyOutput = {
    type = "structure",
}

M.ResetOriginEndpointStateInput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        OriginEndpointName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ResetOriginEndpointStateOutput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OriginEndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResetAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateOriginEndpointInput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        OriginEndpointName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContainerType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Segment = M.Segment,
        Description = {
            type = "string",
        },
        StartoverWindowSeconds = {
            type = "integer",
        },
        HlsManifests = {
            type = "list",
            member = M.CreateHlsManifestConfiguration,
        },
        LowLatencyHlsManifests = {
            type = "list",
            member = M.CreateLowLatencyHlsManifestConfiguration,
        },
        DashManifests = {
            type = "list",
            member = M.CreateDashManifestConfiguration,
        },
        MssManifests = {
            type = "list",
            member = M.CreateMssManifestConfiguration,
        },
        ForceEndpointErrorConfiguration = M.ForceEndpointErrorConfiguration,
        UriSeparator = {
            type = "string",
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "x-amzn-update-if-match",
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
                required = true,
            },
        },
        ChannelGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OriginEndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContainerType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Segment = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Segment }),
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        StartoverWindowSeconds = {
            type = "integer",
        },
        HlsManifests = {
            type = "list",
            member = M.GetHlsManifestConfiguration,
        },
        LowLatencyHlsManifests = {
            type = "list",
            member = M.GetLowLatencyHlsManifestConfiguration,
        },
        MssManifests = {
            type = "list",
            member = M.GetMssManifestConfiguration,
        },
        ForceEndpointErrorConfiguration = M.ForceEndpointErrorConfiguration,
        UriSeparator = {
            type = "string",
        },
        ETag = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        DashManifests = {
            type = "list",
            member = M.GetDashManifestConfiguration,
        },
    },
}

M.ResetChannelStateInput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ResetChannelStateOutput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResetAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateChannelInput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "x-amzn-update-if-match",
            },
        },
        Description = {
            type = "string",
        },
        InputSwitchConfiguration = M.InputSwitchConfiguration,
        OutputHeaderConfiguration = M.OutputHeaderConfiguration,
    },
}

M.UpdateChannelOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChannelGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        IngestEndpoints = {
            type = "list",
            member = M.IngestEndpoint,
        },
        InputType = {
            type = "string",
        },
        ETag = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        InputSwitchConfiguration = M.InputSwitchConfiguration,
        OutputHeaderConfiguration = M.OutputHeaderConfiguration,
    },
}

M.CreateChannelGroupInput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                http_header = "x-amzn-client-token",
                idempotency_token = true,
            },
        },
        Description = {
            type = "string",
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

M.CreateChannelGroupOutput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EgressDomain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ETag = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DeleteChannelGroupInput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteChannelGroupOutput = {
    type = "structure",
}

M.GetChannelGroupInput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetChannelGroupOutput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EgressDomain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        ETag = {
            type = "string",
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

M.S3DestinationConfig = {
    type = "structure",
    members = {
        BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Destination = {
    type = "structure",
    members = {
        S3Destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3DestinationConfig }),
    },
}

M.HarvestedDashManifest = {
    type = "structure",
    members = {
        ManifestName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HarvestedHlsManifest = {
    type = "structure",
    members = {
        ManifestName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HarvestedLowLatencyHlsManifest = {
    type = "structure",
    members = {
        ManifestName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HarvestedManifests = {
    type = "structure",
    members = {
        HlsManifests = {
            type = "list",
            member = M.HarvestedHlsManifest,
        },
        DashManifests = {
            type = "list",
            member = M.HarvestedDashManifest,
        },
        LowLatencyHlsManifests = {
            type = "list",
            member = M.HarvestedLowLatencyHlsManifest,
        },
    },
}

M.HarvesterScheduleConfiguration = {
    type = "structure",
    members = {
        StartTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateHarvestJobInput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        OriginEndpointName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        HarvestedManifests = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HarvestedManifests }),
        ScheduleConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HarvesterScheduleConfiguration }),
        Destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Destination }),
        ClientToken = {
            type = "string",
            traits = {
                http_header = "x-amzn-client-token",
                idempotency_token = true,
            },
        },
        HarvestJobName = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.HarvestJobStatus = {
    QUEUED = "QUEUED",
    IN_PROGRESS = "IN_PROGRESS",
    CANCELLED = "CANCELLED",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.CreateHarvestJobOutput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OriginEndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Destination }),
        HarvestJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HarvestedManifests = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HarvestedManifests }),
        Description = {
            type = "string",
        },
        ScheduleConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HarvesterScheduleConfiguration }),
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorMessage = {
            type = "string",
        },
        ETag = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetHarvestJobInput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        OriginEndpointName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        HarvestJobName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetHarvestJobOutput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OriginEndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Destination }),
        HarvestJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HarvestedManifests = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HarvestedManifests }),
        Description = {
            type = "string",
        },
        ScheduleConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HarvesterScheduleConfiguration }),
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorMessage = {
            type = "string",
        },
        ETag = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListHarvestJobsInput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                http_query = "channelName",
            },
        },
        OriginEndpointName = {
            type = "string",
            traits = {
                http_query = "originEndpointName",
            },
        },
        Status = {
            type = "string",
            traits = {
                http_query = "includeStatus",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 10,
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

M.HarvestJob = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OriginEndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Destination }),
        HarvestJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HarvestedManifests = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HarvestedManifests }),
        Description = {
            type = "string",
        },
        ScheduleConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HarvesterScheduleConfiguration }),
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorMessage = {
            type = "string",
        },
        ETag = {
            type = "string",
        },
    },
}

M.ListHarvestJobsOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member = M.HarvestJob,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListChannelGroupsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                default = 10,
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

M.ListChannelGroupsOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member = M.ChannelGroupListConfiguration,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateChannelGroupInput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "x-amzn-update-if-match",
            },
        },
        Description = {
            type = "string",
        },
    },
}

M.UpdateChannelGroupOutput = {
    type = "structure",
    members = {
        ChannelGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EgressDomain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        ETag = {
            type = "string",
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

return M
