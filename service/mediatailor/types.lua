local M = {}

M.AdsInteractionExcludeEventType = {
    AD_MARKER_FOUND = "AD_MARKER_FOUND",
    NON_AD_MARKER_FOUND = "NON_AD_MARKER_FOUND",
    MAKING_ADS_REQUEST = "MAKING_ADS_REQUEST",
    MODIFIED_TARGET_URL = "MODIFIED_TARGET_URL",
    VAST_REDIRECT = "VAST_REDIRECT",
    EMPTY_VAST_RESPONSE = "EMPTY_VAST_RESPONSE",
    EMPTY_VMAP_RESPONSE = "EMPTY_VMAP_RESPONSE",
    VAST_RESPONSE = "VAST_RESPONSE",
    REDIRECTED_VAST_RESPONSE = "REDIRECTED_VAST_RESPONSE",
    FILLED_AVAIL = "FILLED_AVAIL",
    FILLED_OVERLAY_AVAIL = "FILLED_OVERLAY_AVAIL",
    BEACON_FIRED = "BEACON_FIRED",
    WARNING_NO_ADVERTISEMENTS = "WARNING_NO_ADVERTISEMENTS",
    WARNING_VPAID_AD_DROPPED = "WARNING_VPAID_AD_DROPPED",
    WARNING_URL_VARIABLE_SUBSTITUTION_FAILED = "WARNING_URL_VARIABLE_SUBSTITUTION_FAILED",
    ERROR_UNKNOWN = "ERROR_UNKNOWN",
    ERROR_UNKNOWN_HOST = "ERROR_UNKNOWN_HOST",
    ERROR_DISALLOWED_HOST = "ERROR_DISALLOWED_HOST",
    ERROR_ADS_IO = "ERROR_ADS_IO",
    ERROR_ADS_TIMEOUT = "ERROR_ADS_TIMEOUT",
    ERROR_ADS_RESPONSE_PARSE = "ERROR_ADS_RESPONSE_PARSE",
    ERROR_ADS_RESPONSE_UNKNOWN_ROOT_ELEMENT = "ERROR_ADS_RESPONSE_UNKNOWN_ROOT_ELEMENT",
    ERROR_ADS_INVALID_RESPONSE = "ERROR_ADS_INVALID_RESPONSE",
    ERROR_VAST_REDIRECT_EMPTY_RESPONSE = "ERROR_VAST_REDIRECT_EMPTY_RESPONSE",
    ERROR_VAST_REDIRECT_MULTIPLE_VAST = "ERROR_VAST_REDIRECT_MULTIPLE_VAST",
    ERROR_VAST_REDIRECT_FAILED = "ERROR_VAST_REDIRECT_FAILED",
    ERROR_VAST_MISSING_MEDIAFILES = "ERROR_VAST_MISSING_MEDIAFILES",
    ERROR_VAST_MISSING_CREATIVES = "ERROR_VAST_MISSING_CREATIVES",
    ERROR_VAST_MISSING_OVERLAYS = "ERROR_VAST_MISSING_OVERLAYS",
    ERROR_VAST_MISSING_IMPRESSION = "ERROR_VAST_MISSING_IMPRESSION",
    ERROR_VAST_INVALID_VAST_AD_TAG_URI = "ERROR_VAST_INVALID_VAST_AD_TAG_URI",
    ERROR_VAST_MULTIPLE_TRACKING_EVENTS = "ERROR_VAST_MULTIPLE_TRACKING_EVENTS",
    ERROR_VAST_MULTIPLE_LINEAR = "ERROR_VAST_MULTIPLE_LINEAR",
    ERROR_VAST_INVALID_MEDIA_FILE = "ERROR_VAST_INVALID_MEDIA_FILE",
    ERROR_FIRING_BEACON_FAILED = "ERROR_FIRING_BEACON_FAILED",
    ERROR_PERSONALIZATION_DISABLED = "ERROR_PERSONALIZATION_DISABLED",
    VOD_TIME_BASED_AVAIL_PLAN_VAST_RESPONSE_FOR_OFFSET = "VOD_TIME_BASED_AVAIL_PLAN_VAST_RESPONSE_FOR_OFFSET",
    VOD_TIME_BASED_AVAIL_PLAN_SUCCESS = "VOD_TIME_BASED_AVAIL_PLAN_SUCCESS",
    VOD_TIME_BASED_AVAIL_PLAN_WARNING_NO_ADVERTISEMENTS = "VOD_TIME_BASED_AVAIL_PLAN_WARNING_NO_ADVERTISEMENTS",
    INTERSTITIAL_VOD_SUCCESS = "INTERSTITIAL_VOD_SUCCESS",
    INTERSTITIAL_VOD_FAILURE = "INTERSTITIAL_VOD_FAILURE",
}

M.AdsInteractionPublishOptInEventType = {
    RAW_ADS_RESPONSE = "RAW_ADS_RESPONSE",
    RAW_ADS_REQUEST = "RAW_ADS_REQUEST",
}

M.KeyValuePair = {
    type = "structure",
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

M.MessageType = {
    SPLICE_INSERT = "SPLICE_INSERT",
    TIME_SIGNAL = "TIME_SIGNAL",
}

M.SlateSource = {
    type = "structure",
    members = {
        SourceLocationName = {
            type = "string",
        },
        VodSourceName = {
            type = "string",
        },
    },
}

M.SpliceInsertMessage = {
    type = "structure",
    members = {
        AvailNum = {
            type = "number",
        },
        AvailsExpected = {
            type = "number",
        },
        SpliceEventId = {
            type = "number",
        },
        UniqueProgramId = {
            type = "number",
        },
    },
}

M.SegmentationDescriptor = {
    type = "structure",
    members = {
        SegmentationEventId = {
            type = "number",
        },
        SegmentationUpidType = {
            type = "number",
        },
        SegmentationUpid = {
            type = "string",
        },
        SegmentationTypeId = {
            type = "number",
        },
        SegmentNum = {
            type = "number",
        },
        SegmentsExpected = {
            type = "number",
        },
        SubSegmentNum = {
            type = "number",
        },
        SubSegmentsExpected = {
            type = "number",
        },
    },
}

M.TimeSignalMessage = {
    type = "structure",
    members = {
        SegmentationDescriptors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AdBreak = {
    type = "structure",
    members = {
        MessageType = {
            type = "string",
        },
        OffsetMillis = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Slate = {
            type = "structure",
        },
        SpliceInsertMessage = {
            type = "structure",
        },
        TimeSignalMessage = {
            type = "structure",
        },
        AdBreakMetadata = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AlertCategory = {
    SCHEDULING_ERROR = "SCHEDULING_ERROR",
    PLAYBACK_WARNING = "PLAYBACK_WARNING",
    INFO = "INFO",
}

M.Alert = {
    type = "structure",
    members = {
        AlertCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AlertMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        RelatedResourceArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Category = {
            type = "string",
        },
    },
}

M.ClipRange = {
    type = "structure",
    members = {
        EndOffsetMillis = {
            type = "number",
        },
        StartOffsetMillis = {
            type = "number",
        },
    },
}

M.AlternateMedia = {
    type = "structure",
    members = {
        SourceLocationName = {
            type = "string",
        },
        LiveSourceName = {
            type = "string",
        },
        VodSourceName = {
            type = "string",
        },
        ClipRange = {
            type = "structure",
        },
        ScheduledStartTimeMillis = {
            type = "number",
        },
        AdBreaks = {
            type = "list",
            member_type = "structure",
        },
        DurationMillis = {
            type = "number",
        },
    },
}

M.AudienceMedia = {
    type = "structure",
    members = {
        Audience = {
            type = "string",
        },
        AlternateMedia = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Operator = {
    EQUALS = "EQUALS",
}

M.AvailMatchingCriteria = {
    type = "structure",
    members = {
        DynamicVariable = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LogType = {
    AS_RUN = "AS_RUN",
}

M.LogConfigurationForChannel = {
    type = "structure",
    members = {
        LogTypes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DashPlaylistSettings = {
    type = "structure",
    members = {
        ManifestWindowSeconds = {
            type = "number",
        },
        MinBufferTimeSeconds = {
            type = "number",
        },
        MinUpdatePeriodSeconds = {
            type = "number",
        },
        SuggestedPresentationDelaySeconds = {
            type = "number",
        },
    },
}

M.AdMarkupType = {
    DATERANGE = "DATERANGE",
    SCTE35_ENHANCED = "SCTE35_ENHANCED",
}

M.HlsPlaylistSettings = {
    type = "structure",
    members = {
        ManifestWindowSeconds = {
            type = "number",
        },
        AdMarkupType = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ResponseOutputItem = {
    type = "structure",
    members = {
        DashPlaylistSettings = {
            type = "structure",
        },
        HlsPlaylistSettings = {
            type = "structure",
        },
        ManifestName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PlaybackUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceGroup = {
            type = "string",
            traits = {
                required = true,
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
                required = true,
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChannelState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
        },
        FillerSlate = {
            type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        Outputs = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        PlaybackMode = {
            type = "string",
            traits = {
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
        Tier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Audiences = {
            type = "list",
            member_type = "string",
        },
    },
}

M.Type = {
    DASH = "DASH",
    HLS = "HLS",
}

M.HttpPackageConfiguration = {
    type = "structure",
    members = {
        Path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceGroup = {
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
    },
}

M.LiveSource = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
        },
        HttpPackageConfigurations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LiveSourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceLocationName = {
            type = "string",
            traits = {
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

M.LoggingStrategy = {
    VENDED_LOGS = "VENDED_LOGS",
    LEGACY_CLOUDWATCH = "LEGACY_CLOUDWATCH",
}

M.StreamingMediaFileConditioning = {
    TRANSCODE = "TRANSCODE",
    NONE = "NONE",
}

M.AdConditioningConfiguration = {
    type = "structure",
    members = {
        StreamingMediaFileConditioning = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CompressionMethod = {
    NONE = "NONE",
    GZIP = "GZIP",
}

M.Method = {
    GET = "GET",
    POST = "POST",
}

M.HttpRequest = {
    type = "structure",
    members = {
        Method = {
            type = "string",
        },
        Body = {
            type = "string",
        },
        Headers = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        CompressRequest = {
            type = "string",
        },
    },
}

M.AdDecisionServerConfiguration = {
    type = "structure",
    members = {
        HttpRequest = {
            type = "structure",
        },
    },
}

M.FillPolicy = {
    FULL_AVAIL_ONLY = "FULL_AVAIL_ONLY",
    PARTIAL_AVAIL = "PARTIAL_AVAIL",
}

M.Mode = {
    OFF = "OFF",
    BEHIND_LIVE_EDGE = "BEHIND_LIVE_EDGE",
    AFTER_LIVE_EDGE = "AFTER_LIVE_EDGE",
}

M.AvailSuppression = {
    type = "structure",
    members = {
        Mode = {
            type = "string",
        },
        Value = {
            type = "string",
        },
        FillPolicy = {
            type = "string",
        },
    },
}

M.Bumper = {
    type = "structure",
    members = {
        EndUrl = {
            type = "string",
        },
        StartUrl = {
            type = "string",
        },
    },
}

M.CdnConfiguration = {
    type = "structure",
    members = {
        AdSegmentUrlPrefix = {
            type = "string",
        },
        ContentSegmentUrlPrefix = {
            type = "string",
        },
    },
}

M.OriginManifestType = {
    SINGLE_PERIOD = "SINGLE_PERIOD",
    MULTI_PERIOD = "MULTI_PERIOD",
}

M.DashConfiguration = {
    type = "structure",
    members = {
        ManifestEndpointPrefix = {
            type = "string",
        },
        MpdLocation = {
            type = "string",
        },
        OriginManifestType = {
            type = "string",
        },
    },
}

M.HlsConfiguration = {
    type = "structure",
    members = {
        ManifestEndpointPrefix = {
            type = "string",
        },
    },
}

M.InsertionMode = {
    STITCHED_ONLY = "STITCHED_ONLY",
    PLAYER_SELECT = "PLAYER_SELECT",
}

M.LivePreRollConfiguration = {
    type = "structure",
    members = {
        AdDecisionServerUrl = {
            type = "string",
        },
        MaxDurationSeconds = {
            type = "number",
        },
    },
}

M.AdsInteractionLog = {
    type = "structure",
    members = {
        PublishOptInEventTypes = {
            type = "list",
            member_type = "string",
        },
        ExcludeEventTypes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ManifestServiceExcludeEventType = {
    GENERATED_MANIFEST = "GENERATED_MANIFEST",
    ORIGIN_MANIFEST = "ORIGIN_MANIFEST",
    SESSION_INITIALIZED = "SESSION_INITIALIZED",
    TRACKING_RESPONSE = "TRACKING_RESPONSE",
    CONFIG_SYNTAX_ERROR = "CONFIG_SYNTAX_ERROR",
    CONFIG_SECURITY_ERROR = "CONFIG_SECURITY_ERROR",
    UNKNOWN_HOST = "UNKNOWN_HOST",
    TIMEOUT_ERROR = "TIMEOUT_ERROR",
    CONNECTION_ERROR = "CONNECTION_ERROR",
    IO_ERROR = "IO_ERROR",
    UNKNOWN_ERROR = "UNKNOWN_ERROR",
    HOST_DISALLOWED = "HOST_DISALLOWED",
    PARSING_ERROR = "PARSING_ERROR",
    MANIFEST_ERROR = "MANIFEST_ERROR",
    NO_MASTER_OR_MEDIA_PLAYLIST = "NO_MASTER_OR_MEDIA_PLAYLIST",
    NO_MASTER_PLAYLIST = "NO_MASTER_PLAYLIST",
    NO_MEDIA_PLAYLIST = "NO_MEDIA_PLAYLIST",
    INCOMPATIBLE_HLS_VERSION = "INCOMPATIBLE_HLS_VERSION",
    SCTE35_PARSING_ERROR = "SCTE35_PARSING_ERROR",
    INVALID_SINGLE_PERIOD_DASH_MANIFEST = "INVALID_SINGLE_PERIOD_DASH_MANIFEST",
    UNSUPPORTED_SINGLE_PERIOD_DASH_MANIFEST = "UNSUPPORTED_SINGLE_PERIOD_DASH_MANIFEST",
    LAST_PERIOD_MISSING_AUDIO = "LAST_PERIOD_MISSING_AUDIO",
    LAST_PERIOD_MISSING_AUDIO_WARNING = "LAST_PERIOD_MISSING_AUDIO_WARNING",
    ERROR_ORIGIN_PREFIX_INTERPOLATION = "ERROR_ORIGIN_PREFIX_INTERPOLATION",
    ERROR_ADS_INTERPOLATION = "ERROR_ADS_INTERPOLATION",
    ERROR_LIVE_PRE_ROLL_ADS_INTERPOLATION = "ERROR_LIVE_PRE_ROLL_ADS_INTERPOLATION",
    ERROR_CDN_AD_SEGMENT_INTERPOLATION = "ERROR_CDN_AD_SEGMENT_INTERPOLATION",
    ERROR_CDN_CONTENT_SEGMENT_INTERPOLATION = "ERROR_CDN_CONTENT_SEGMENT_INTERPOLATION",
    ERROR_SLATE_AD_URL_INTERPOLATION = "ERROR_SLATE_AD_URL_INTERPOLATION",
    ERROR_PROFILE_NAME_INTERPOLATION = "ERROR_PROFILE_NAME_INTERPOLATION",
    ERROR_BUMPER_START_INTERPOLATION = "ERROR_BUMPER_START_INTERPOLATION",
    ERROR_BUMPER_END_INTERPOLATION = "ERROR_BUMPER_END_INTERPOLATION",
}

M.ManifestServiceInteractionLog = {
    type = "structure",
    members = {
        ExcludeEventTypes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.LogConfiguration = {
    type = "structure",
    members = {
        PercentEnabled = {
            type = "number",
            traits = {
                required = true,
            },
        },
        EnabledLoggingStrategies = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        AdsInteractionLog = {
            type = "structure",
        },
        ManifestServiceInteractionLog = {
            type = "structure",
        },
    },
}

M.AdMarkerPassthrough = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.ManifestProcessingRules = {
    type = "structure",
    members = {
        AdMarkerPassthrough = {
            type = "structure",
        },
    },
}

M.PlaybackConfiguration = {
    type = "structure",
    members = {
        AdDecisionServerUrl = {
            type = "string",
        },
        AvailSuppression = {
            type = "structure",
        },
        Bumper = {
            type = "structure",
        },
        CdnConfiguration = {
            type = "structure",
        },
        ConfigurationAliases = {
            type = "map",
            key_type = "string",
            value_type = "map",
        },
        DashConfiguration = {
            type = "structure",
        },
        HlsConfiguration = {
            type = "structure",
        },
        InsertionMode = {
            type = "string",
        },
        LivePreRollConfiguration = {
            type = "structure",
        },
        LogConfiguration = {
            type = "structure",
        },
        ManifestProcessingRules = {
            type = "structure",
        },
        Name = {
            type = "string",
        },
        PersonalizationThresholdSeconds = {
            type = "number",
        },
        PlaybackConfigurationArn = {
            type = "string",
        },
        PlaybackEndpointPrefix = {
            type = "string",
        },
        SessionInitializationEndpointPrefix = {
            type = "string",
        },
        SlateAdUrl = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        TranscodeProfileName = {
            type = "string",
        },
        VideoContentSourceUrl = {
            type = "string",
        },
        AdConditioningConfiguration = {
            type = "structure",
        },
        AdDecisionServerConfiguration = {
            type = "structure",
        },
    },
}

M.PrefetchConsumption = {
    type = "structure",
    members = {
        AvailMatchingCriteria = {
            type = "list",
            member_type = "structure",
        },
        EndTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        StartTime = {
            type = "timestamp",
        },
    },
}

M.RecurringConsumption = {
    type = "structure",
    members = {
        RetrievedAdExpirationSeconds = {
            type = "number",
        },
        AvailMatchingCriteria = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TrafficShapingRetrievalWindow = {
    type = "structure",
    members = {
        RetrievalWindowDurationSeconds = {
            type = "number",
        },
    },
}

M.TrafficShapingTpsConfiguration = {
    type = "structure",
    members = {
        PeakTps = {
            type = "number",
        },
        PeakConcurrentUsers = {
            type = "number",
        },
    },
}

M.TrafficShapingType = {
    RETRIEVAL_WINDOW = "RETRIEVAL_WINDOW",
    TPS = "TPS",
}

M.RecurringRetrieval = {
    type = "structure",
    members = {
        DynamicVariables = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        DelayAfterAvailEndSeconds = {
            type = "number",
        },
        TrafficShapingType = {
            type = "string",
        },
        TrafficShapingRetrievalWindow = {
            type = "structure",
        },
        TrafficShapingTpsConfiguration = {
            type = "structure",
        },
    },
}

M.RecurringPrefetchConfiguration = {
    type = "structure",
    members = {
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        RecurringConsumption = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        RecurringRetrieval = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PrefetchRetrieval = {
    type = "structure",
    members = {
        DynamicVariables = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        EndTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        StartTime = {
            type = "timestamp",
        },
        TrafficShapingType = {
            type = "string",
        },
        TrafficShapingRetrievalWindow = {
            type = "structure",
        },
        TrafficShapingTpsConfiguration = {
            type = "structure",
        },
    },
}

M.PrefetchScheduleType = {
    SINGLE = "SINGLE",
    RECURRING = "RECURRING",
}

M.PrefetchSchedule = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Consumption = {
            type = "structure",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PlaybackConfigurationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Retrieval = {
            type = "structure",
        },
        ScheduleType = {
            type = "string",
        },
        RecurringPrefetchConfiguration = {
            type = "structure",
        },
        StreamId = {
            type = "string",
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

M.ScheduleAdBreak = {
    type = "structure",
    members = {
        ApproximateDurationSeconds = {
            type = "number",
        },
        ApproximateStartTime = {
            type = "timestamp",
        },
        SourceLocationName = {
            type = "string",
        },
        VodSourceName = {
            type = "string",
        },
    },
}

M.ScheduleEntryType = {
    PROGRAM = "PROGRAM",
    FILLER_SLATE = "FILLER_SLATE",
    ALTERNATE_MEDIA = "ALTERNATE_MEDIA",
}

M.ScheduleEntry = {
    type = "structure",
    members = {
        ApproximateDurationSeconds = {
            type = "number",
        },
        ApproximateStartTime = {
            type = "timestamp",
        },
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
        LiveSourceName = {
            type = "string",
        },
        ProgramName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScheduleAdBreaks = {
            type = "list",
            member_type = "structure",
        },
        ScheduleEntryType = {
            type = "string",
        },
        SourceLocationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VodSourceName = {
            type = "string",
        },
        Audiences = {
            type = "list",
            member_type = "string",
        },
    },
}

M.SegmentDeliveryConfiguration = {
    type = "structure",
    members = {
        BaseUrl = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.AccessType = {
    S3_SIGV4 = "S3_SIGV4",
    SECRETS_MANAGER_ACCESS_TOKEN = "SECRETS_MANAGER_ACCESS_TOKEN",
    AUTODETECT_SIGV4 = "AUTODETECT_SIGV4",
}

M.SecretsManagerAccessTokenConfiguration = {
    type = "structure",
    members = {
        HeaderName = {
            type = "string",
        },
        SecretArn = {
            type = "string",
        },
        SecretStringKey = {
            type = "string",
        },
    },
}

M.AccessConfiguration = {
    type = "structure",
    members = {
        AccessType = {
            type = "string",
        },
        SecretsManagerAccessTokenConfiguration = {
            type = "structure",
        },
    },
}

M.DefaultSegmentDeliveryConfiguration = {
    type = "structure",
    members = {
        BaseUrl = {
            type = "string",
        },
    },
}

M.HttpConfiguration = {
    type = "structure",
    members = {
        BaseUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SourceLocation = {
    type = "structure",
    members = {
        AccessConfiguration = {
            type = "structure",
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
        },
        DefaultSegmentDeliveryConfiguration = {
            type = "structure",
        },
        HttpConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        SegmentDeliveryConfigurations = {
            type = "list",
            member_type = "structure",
        },
        SourceLocationName = {
            type = "string",
            traits = {
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

M.VodSource = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
        },
        HttpPackageConfigurations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        SourceLocationName = {
            type = "string",
            traits = {
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
        VodSourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AdBreakOpportunity = {
    type = "structure",
    members = {
        OffsetMillis = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.BadRequestException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteChannelPolicyInput = {
    type = "structure",
    members = {
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
        Policy = {
            type = "string",
        },
    },
}

M.PutChannelPolicyInput = {
    type = "structure",
    members = {
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

M.ConfigureLogsForChannelInput = {
    type = "structure",
    members = {
        ChannelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConfigureLogsForChannelOutput = {
    type = "structure",
    members = {
        ChannelName = {
            type = "string",
        },
        LogTypes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.RequestOutputItem = {
    type = "structure",
    members = {
        DashPlaylistSettings = {
            type = "structure",
        },
        HlsPlaylistSettings = {
            type = "structure",
        },
        ManifestName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PlaybackMode = {
    LOOP = "LOOP",
    LINEAR = "LINEAR",
}

M.Tier = {
    BASIC = "BASIC",
    STANDARD = "STANDARD",
}

M.TimeShiftConfiguration = {
    type = "structure",
    members = {
        MaxTimeDelaySeconds = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateChannelInput = {
    type = "structure",
    members = {
        ChannelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FillerSlate = {
            type = "structure",
        },
        Outputs = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        PlaybackMode = {
            type = "string",
            traits = {
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
        Tier = {
            type = "string",
        },
        TimeShiftConfiguration = {
            type = "structure",
        },
        Audiences = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ChannelState = {
    RUNNING = "RUNNING",
    STOPPED = "STOPPED",
}

M.CreateChannelOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        ChannelName = {
            type = "string",
        },
        ChannelState = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        FillerSlate = {
            type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        Outputs = {
            type = "list",
            member_type = "structure",
        },
        PlaybackMode = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        Tier = {
            type = "string",
        },
        TimeShiftConfiguration = {
            type = "structure",
        },
        Audiences = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DeleteChannelInput = {
    type = "structure",
    members = {
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

M.DescribeChannelInput = {
    type = "structure",
    members = {
        ChannelName = {
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
        },
        ChannelName = {
            type = "string",
        },
        ChannelState = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        FillerSlate = {
            type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        Outputs = {
            type = "list",
            member_type = "structure",
        },
        PlaybackMode = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        Tier = {
            type = "string",
        },
        LogConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TimeShiftConfiguration = {
            type = "structure",
        },
        Audiences = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GetChannelScheduleInput = {
    type = "structure",
    members = {
        ChannelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DurationMinutes = {
            type = "string",
            traits = {
                http_query = "durationMinutes",
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
        Audience = {
            type = "string",
            traits = {
                http_query = "audience",
            },
        },
    },
}

M.GetChannelScheduleOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
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
        Items = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RelativePosition = {
    BEFORE_PROGRAM = "BEFORE_PROGRAM",
    AFTER_PROGRAM = "AFTER_PROGRAM",
}

M.Transition = {
    type = "structure",
    members = {
        DurationMillis = {
            type = "number",
        },
        RelativePosition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RelativeProgram = {
            type = "string",
        },
        ScheduledStartTimeMillis = {
            type = "number",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ScheduleConfiguration = {
    type = "structure",
    members = {
        Transition = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ClipRange = {
            type = "structure",
        },
    },
}

M.CreateProgramInput = {
    type = "structure",
    members = {
        AdBreaks = {
            type = "list",
            member_type = "structure",
        },
        ChannelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LiveSourceName = {
            type = "string",
        },
        ProgramName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ScheduleConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SourceLocationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VodSourceName = {
            type = "string",
        },
        AudienceMedia = {
            type = "list",
            member_type = "structure",
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

M.CreateProgramOutput = {
    type = "structure",
    members = {
        AdBreaks = {
            type = "list",
            member_type = "structure",
        },
        Arn = {
            type = "string",
        },
        ChannelName = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LiveSourceName = {
            type = "string",
        },
        ProgramName = {
            type = "string",
        },
        ScheduledStartTime = {
            type = "timestamp",
        },
        SourceLocationName = {
            type = "string",
        },
        VodSourceName = {
            type = "string",
        },
        ClipRange = {
            type = "structure",
        },
        DurationMillis = {
            type = "number",
        },
        AudienceMedia = {
            type = "list",
            member_type = "structure",
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

M.DeleteProgramInput = {
    type = "structure",
    members = {
        ChannelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ProgramName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteProgramOutput = {
    type = "structure",
}

M.DescribeProgramInput = {
    type = "structure",
    members = {
        ChannelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ProgramName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeProgramOutput = {
    type = "structure",
    members = {
        AdBreaks = {
            type = "list",
            member_type = "structure",
        },
        Arn = {
            type = "string",
        },
        ChannelName = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LiveSourceName = {
            type = "string",
        },
        ProgramName = {
            type = "string",
        },
        ScheduledStartTime = {
            type = "timestamp",
        },
        SourceLocationName = {
            type = "string",
        },
        VodSourceName = {
            type = "string",
        },
        ClipRange = {
            type = "structure",
        },
        DurationMillis = {
            type = "number",
        },
        AudienceMedia = {
            type = "list",
            member_type = "structure",
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

M.UpdateProgramTransition = {
    type = "structure",
    members = {
        ScheduledStartTimeMillis = {
            type = "number",
        },
        DurationMillis = {
            type = "number",
        },
    },
}

M.UpdateProgramScheduleConfiguration = {
    type = "structure",
    members = {
        Transition = {
            type = "structure",
        },
        ClipRange = {
            type = "structure",
        },
    },
}

M.UpdateProgramInput = {
    type = "structure",
    members = {
        AdBreaks = {
            type = "list",
            member_type = "structure",
        },
        ChannelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ProgramName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ScheduleConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AudienceMedia = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateProgramOutput = {
    type = "structure",
    members = {
        AdBreaks = {
            type = "list",
            member_type = "structure",
        },
        Arn = {
            type = "string",
        },
        ChannelName = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        ProgramName = {
            type = "string",
        },
        SourceLocationName = {
            type = "string",
        },
        VodSourceName = {
            type = "string",
        },
        LiveSourceName = {
            type = "string",
        },
        ClipRange = {
            type = "structure",
        },
        DurationMillis = {
            type = "number",
        },
        ScheduledStartTime = {
            type = "timestamp",
        },
        AudienceMedia = {
            type = "list",
            member_type = "structure",
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

M.StartChannelInput = {
    type = "structure",
    members = {
        ChannelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StartChannelOutput = {
    type = "structure",
}

M.StopChannelInput = {
    type = "structure",
    members = {
        ChannelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopChannelOutput = {
    type = "structure",
}

M.UpdateChannelInput = {
    type = "structure",
    members = {
        ChannelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FillerSlate = {
            type = "structure",
        },
        Outputs = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        TimeShiftConfiguration = {
            type = "structure",
        },
        Audiences = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UpdateChannelOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        ChannelName = {
            type = "string",
        },
        ChannelState = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        FillerSlate = {
            type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        Outputs = {
            type = "list",
            member_type = "structure",
        },
        PlaybackMode = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        Tier = {
            type = "string",
        },
        TimeShiftConfiguration = {
            type = "structure",
        },
        Audiences = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ConfigureLogsForPlaybackConfigurationInput = {
    type = "structure",
    members = {
        PercentEnabled = {
            type = "number",
            traits = {
                required = true,
            },
        },
        PlaybackConfigurationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EnabledLoggingStrategies = {
            type = "list",
            member_type = "string",
        },
        AdsInteractionLog = {
            type = "structure",
        },
        ManifestServiceInteractionLog = {
            type = "structure",
        },
    },
}

M.ConfigureLogsForPlaybackConfigurationOutput = {
    type = "structure",
    members = {
        PercentEnabled = {
            type = "number",
            traits = {
                required = true,
            },
        },
        PlaybackConfigurationName = {
            type = "string",
        },
        EnabledLoggingStrategies = {
            type = "list",
            member_type = "string",
        },
        AdsInteractionLog = {
            type = "structure",
        },
        ManifestServiceInteractionLog = {
            type = "structure",
        },
    },
}

M.CreateLiveSourceInput = {
    type = "structure",
    members = {
        HttpPackageConfigurations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        LiveSourceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SourceLocationName = {
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
            },
        },
    },
}

M.CreateLiveSourceOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        HttpPackageConfigurations = {
            type = "list",
            member_type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LiveSourceName = {
            type = "string",
        },
        SourceLocationName = {
            type = "string",
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

M.CreatePrefetchScheduleInput = {
    type = "structure",
    members = {
        Consumption = {
            type = "structure",
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PlaybackConfigurationName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Retrieval = {
            type = "structure",
        },
        RecurringPrefetchConfiguration = {
            type = "structure",
        },
        ScheduleType = {
            type = "string",
        },
        StreamId = {
            type = "string",
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

M.CreatePrefetchScheduleOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Consumption = {
            type = "structure",
        },
        Name = {
            type = "string",
        },
        PlaybackConfigurationName = {
            type = "string",
        },
        Retrieval = {
            type = "structure",
        },
        RecurringPrefetchConfiguration = {
            type = "structure",
        },
        ScheduleType = {
            type = "string",
        },
        StreamId = {
            type = "string",
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

M.CreateSourceLocationInput = {
    type = "structure",
    members = {
        AccessConfiguration = {
            type = "structure",
        },
        DefaultSegmentDeliveryConfiguration = {
            type = "structure",
        },
        HttpConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SegmentDeliveryConfigurations = {
            type = "list",
            member_type = "structure",
        },
        SourceLocationName = {
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
            },
        },
    },
}

M.CreateSourceLocationOutput = {
    type = "structure",
    members = {
        AccessConfiguration = {
            type = "structure",
        },
        Arn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        DefaultSegmentDeliveryConfiguration = {
            type = "structure",
        },
        HttpConfiguration = {
            type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        SegmentDeliveryConfigurations = {
            type = "list",
            member_type = "structure",
        },
        SourceLocationName = {
            type = "string",
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

M.CreateVodSourceInput = {
    type = "structure",
    members = {
        HttpPackageConfigurations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        SourceLocationName = {
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
            },
        },
        VodSourceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CreateVodSourceOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        HttpPackageConfigurations = {
            type = "list",
            member_type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        SourceLocationName = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        VodSourceName = {
            type = "string",
        },
    },
}

M.DashConfigurationForPut = {
    type = "structure",
    members = {
        MpdLocation = {
            type = "string",
        },
        OriginManifestType = {
            type = "string",
        },
    },
}

M.DeleteLiveSourceInput = {
    type = "structure",
    members = {
        LiveSourceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SourceLocationName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteLiveSourceOutput = {
    type = "structure",
}

M.DeletePlaybackConfigurationInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeletePlaybackConfigurationOutput = {
    type = "structure",
}

M.DeletePrefetchScheduleInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PlaybackConfigurationName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeletePrefetchScheduleOutput = {
    type = "structure",
}

M.DeleteSourceLocationInput = {
    type = "structure",
    members = {
        SourceLocationName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSourceLocationOutput = {
    type = "structure",
}

M.DeleteVodSourceInput = {
    type = "structure",
    members = {
        SourceLocationName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VodSourceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteVodSourceOutput = {
    type = "structure",
}

M.DescribeLiveSourceInput = {
    type = "structure",
    members = {
        LiveSourceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SourceLocationName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeLiveSourceOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        HttpPackageConfigurations = {
            type = "list",
            member_type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LiveSourceName = {
            type = "string",
        },
        SourceLocationName = {
            type = "string",
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

M.DescribeSourceLocationInput = {
    type = "structure",
    members = {
        SourceLocationName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeSourceLocationOutput = {
    type = "structure",
    members = {
        AccessConfiguration = {
            type = "structure",
        },
        Arn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        DefaultSegmentDeliveryConfiguration = {
            type = "structure",
        },
        HttpConfiguration = {
            type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        SegmentDeliveryConfigurations = {
            type = "list",
            member_type = "structure",
        },
        SourceLocationName = {
            type = "string",
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

M.DescribeVodSourceInput = {
    type = "structure",
    members = {
        SourceLocationName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VodSourceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeVodSourceOutput = {
    type = "structure",
    members = {
        AdBreakOpportunities = {
            type = "list",
            member_type = "structure",
        },
        Arn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        HttpPackageConfigurations = {
            type = "list",
            member_type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        SourceLocationName = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        VodSourceName = {
            type = "string",
        },
    },
}

M.GetPlaybackConfigurationInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetPlaybackConfigurationOutput = {
    type = "structure",
    members = {
        AdDecisionServerUrl = {
            type = "string",
        },
        AvailSuppression = {
            type = "structure",
        },
        Bumper = {
            type = "structure",
        },
        CdnConfiguration = {
            type = "structure",
        },
        ConfigurationAliases = {
            type = "map",
            key_type = "string",
            value_type = "map",
        },
        DashConfiguration = {
            type = "structure",
        },
        HlsConfiguration = {
            type = "structure",
        },
        InsertionMode = {
            type = "string",
        },
        LivePreRollConfiguration = {
            type = "structure",
        },
        LogConfiguration = {
            type = "structure",
        },
        ManifestProcessingRules = {
            type = "structure",
        },
        Name = {
            type = "string",
        },
        PersonalizationThresholdSeconds = {
            type = "number",
        },
        PlaybackConfigurationArn = {
            type = "string",
        },
        PlaybackEndpointPrefix = {
            type = "string",
        },
        SessionInitializationEndpointPrefix = {
            type = "string",
        },
        SlateAdUrl = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        TranscodeProfileName = {
            type = "string",
        },
        VideoContentSourceUrl = {
            type = "string",
        },
        AdConditioningConfiguration = {
            type = "structure",
        },
        AdDecisionServerConfiguration = {
            type = "structure",
        },
    },
}

M.GetPrefetchScheduleInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PlaybackConfigurationName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetPrefetchScheduleOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Consumption = {
            type = "structure",
        },
        Name = {
            type = "string",
        },
        PlaybackConfigurationName = {
            type = "string",
        },
        Retrieval = {
            type = "structure",
        },
        ScheduleType = {
            type = "string",
        },
        RecurringPrefetchConfiguration = {
            type = "structure",
        },
        StreamId = {
            type = "string",
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

M.ListAlertsInput = {
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
        ResourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
                required = true,
            },
        },
    },
}

M.ListAlertsOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLiveSourcesInput = {
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
        SourceLocationName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListLiveSourcesOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPlaybackConfigurationsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListPlaybackConfigurationsOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPrefetchScheduleType = {
    SINGLE = "SINGLE",
    RECURRING = "RECURRING",
    ALL = "ALL",
}

M.ListPrefetchSchedulesInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        PlaybackConfigurationName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ScheduleType = {
            type = "string",
        },
        StreamId = {
            type = "string",
        },
    },
}

M.ListPrefetchSchedulesOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSourceLocationsInput = {
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

M.ListSourceLocationsOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
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

M.ListVodSourcesInput = {
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
        SourceLocationName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListVodSourcesOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateLiveSourceInput = {
    type = "structure",
    members = {
        HttpPackageConfigurations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        LiveSourceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SourceLocationName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateLiveSourceOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        HttpPackageConfigurations = {
            type = "list",
            member_type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LiveSourceName = {
            type = "string",
        },
        SourceLocationName = {
            type = "string",
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

M.PutPlaybackConfigurationInput = {
    type = "structure",
    members = {
        AdDecisionServerUrl = {
            type = "string",
        },
        AvailSuppression = {
            type = "structure",
        },
        Bumper = {
            type = "structure",
        },
        CdnConfiguration = {
            type = "structure",
        },
        ConfigurationAliases = {
            type = "map",
            key_type = "string",
            value_type = "map",
        },
        DashConfiguration = {
            type = "structure",
        },
        InsertionMode = {
            type = "string",
        },
        LivePreRollConfiguration = {
            type = "structure",
        },
        ManifestProcessingRules = {
            type = "structure",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PersonalizationThresholdSeconds = {
            type = "number",
        },
        SlateAdUrl = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        TranscodeProfileName = {
            type = "string",
        },
        VideoContentSourceUrl = {
            type = "string",
        },
        AdConditioningConfiguration = {
            type = "structure",
        },
        AdDecisionServerConfiguration = {
            type = "structure",
        },
    },
}

M.PutPlaybackConfigurationOutput = {
    type = "structure",
    members = {
        AdDecisionServerUrl = {
            type = "string",
        },
        AvailSuppression = {
            type = "structure",
        },
        Bumper = {
            type = "structure",
        },
        CdnConfiguration = {
            type = "structure",
        },
        ConfigurationAliases = {
            type = "map",
            key_type = "string",
            value_type = "map",
        },
        DashConfiguration = {
            type = "structure",
        },
        HlsConfiguration = {
            type = "structure",
        },
        InsertionMode = {
            type = "string",
        },
        LivePreRollConfiguration = {
            type = "structure",
        },
        LogConfiguration = {
            type = "structure",
        },
        ManifestProcessingRules = {
            type = "structure",
        },
        Name = {
            type = "string",
        },
        PersonalizationThresholdSeconds = {
            type = "number",
        },
        PlaybackConfigurationArn = {
            type = "string",
        },
        PlaybackEndpointPrefix = {
            type = "string",
        },
        SessionInitializationEndpointPrefix = {
            type = "string",
        },
        SlateAdUrl = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        TranscodeProfileName = {
            type = "string",
        },
        VideoContentSourceUrl = {
            type = "string",
        },
        AdConditioningConfiguration = {
            type = "structure",
        },
        AdDecisionServerConfiguration = {
            type = "structure",
        },
    },
}

M.UpdateSourceLocationInput = {
    type = "structure",
    members = {
        AccessConfiguration = {
            type = "structure",
        },
        DefaultSegmentDeliveryConfiguration = {
            type = "structure",
        },
        HttpConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SegmentDeliveryConfigurations = {
            type = "list",
            member_type = "structure",
        },
        SourceLocationName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateSourceLocationOutput = {
    type = "structure",
    members = {
        AccessConfiguration = {
            type = "structure",
        },
        Arn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        DefaultSegmentDeliveryConfiguration = {
            type = "structure",
        },
        HttpConfiguration = {
            type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        SegmentDeliveryConfigurations = {
            type = "list",
            member_type = "structure",
        },
        SourceLocationName = {
            type = "string",
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

M.UpdateVodSourceInput = {
    type = "structure",
    members = {
        HttpPackageConfigurations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        SourceLocationName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VodSourceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateVodSourceOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        HttpPackageConfigurations = {
            type = "list",
            member_type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        SourceLocationName = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        VodSourceName = {
            type = "string",
        },
    },
}

return M
