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
    id = "KeyValuePair",
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
    id = "SlateSource",
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
    id = "SpliceInsertMessage",
    members = {
        AvailNum = {
            type = "integer",
        },
        AvailsExpected = {
            type = "integer",
        },
        SpliceEventId = {
            type = "integer",
        },
        UniqueProgramId = {
            type = "integer",
        },
    },
}

M.SegmentationDescriptor = {
    type = "structure",
    id = "SegmentationDescriptor",
    members = {
        SegmentationEventId = {
            type = "integer",
        },
        SegmentationUpidType = {
            type = "integer",
        },
        SegmentationUpid = {
            type = "string",
        },
        SegmentationTypeId = {
            type = "integer",
        },
        SegmentNum = {
            type = "integer",
        },
        SegmentsExpected = {
            type = "integer",
        },
        SubSegmentNum = {
            type = "integer",
        },
        SubSegmentsExpected = {
            type = "integer",
        },
    },
}

M.TimeSignalMessage = {
    type = "structure",
    id = "TimeSignalMessage",
    members = {
        SegmentationDescriptors = {
            type = "list",
            member = M.SegmentationDescriptor,
        },
    },
}

M.AdBreak = {
    type = "structure",
    id = "AdBreak",
    members = {
        MessageType = {
            type = "string",
        },
        OffsetMillis = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        Slate = M.SlateSource,
        SpliceInsertMessage = M.SpliceInsertMessage,
        TimeSignalMessage = M.TimeSignalMessage,
        AdBreakMetadata = {
            type = "list",
            member = M.KeyValuePair,
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
    id = "Alert",
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
                timestamp_format = "epoch-seconds",
            },
        },
        RelatedResourceArns = {
            type = "list",
            member = { type = "string" },
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
    id = "ClipRange",
    members = {
        EndOffsetMillis = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        StartOffsetMillis = {
            type = "long",
        },
    },
}

M.AlternateMedia = {
    type = "structure",
    id = "AlternateMedia",
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
        ClipRange = M.ClipRange,
        ScheduledStartTimeMillis = {
            type = "long",
        },
        AdBreaks = {
            type = "list",
            member = M.AdBreak,
        },
        DurationMillis = {
            type = "long",
        },
    },
}

M.AudienceMedia = {
    type = "structure",
    id = "AudienceMedia",
    members = {
        Audience = {
            type = "string",
        },
        AlternateMedia = {
            type = "list",
            member = M.AlternateMedia,
        },
    },
}

M.Operator = {
    EQUALS = "EQUALS",
}

M.AvailMatchingCriteria = {
    type = "structure",
    id = "AvailMatchingCriteria",
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
    id = "LogConfigurationForChannel",
    members = {
        LogTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DashPlaylistSettings = {
    type = "structure",
    id = "DashPlaylistSettings",
    members = {
        ManifestWindowSeconds = {
            type = "integer",
        },
        MinBufferTimeSeconds = {
            type = "integer",
        },
        MinUpdatePeriodSeconds = {
            type = "integer",
        },
        SuggestedPresentationDelaySeconds = {
            type = "integer",
        },
    },
}

M.AdMarkupType = {
    DATERANGE = "DATERANGE",
    SCTE35_ENHANCED = "SCTE35_ENHANCED",
}

M.HlsPlaylistSettings = {
    type = "structure",
    id = "HlsPlaylistSettings",
    members = {
        ManifestWindowSeconds = {
            type = "integer",
        },
        AdMarkupType = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ResponseOutputItem = {
    type = "structure",
    id = "ResponseOutputItem",
    members = {
        DashPlaylistSettings = M.DashPlaylistSettings,
        HlsPlaylistSettings = M.HlsPlaylistSettings,
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
    id = "Channel",
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
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        FillerSlate = M.SlateSource,
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        Outputs = {
            type = "list",
            member = M.ResponseOutputItem,
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
            key = { type = "string" },
            value = { type = "string" },
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
        LogConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LogConfigurationForChannel }),
        Audiences = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.Type = {
    DASH = "DASH",
    HLS = "HLS",
}

M.HttpPackageConfiguration = {
    type = "structure",
    id = "HttpPackageConfiguration",
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
    id = "LiveSource",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        HttpPackageConfigurations = {
            type = "list",
            member = M.HttpPackageConfiguration,
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
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
            key = { type = "string" },
            value = { type = "string" },
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
    id = "AdConditioningConfiguration",
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
    id = "HttpRequest",
    members = {
        Method = {
            type = "string",
        },
        Body = {
            type = "string",
        },
        Headers = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        CompressRequest = {
            type = "string",
        },
    },
}

M.AdDecisionServerConfiguration = {
    type = "structure",
    id = "AdDecisionServerConfiguration",
    members = {
        HttpRequest = M.HttpRequest,
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
    id = "AvailSuppression",
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
    id = "Bumper",
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
    id = "CdnConfiguration",
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
    id = "DashConfiguration",
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
    id = "HlsConfiguration",
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
    id = "LivePreRollConfiguration",
    members = {
        AdDecisionServerUrl = {
            type = "string",
        },
        MaxDurationSeconds = {
            type = "integer",
        },
    },
}

M.AdsInteractionLog = {
    type = "structure",
    id = "AdsInteractionLog",
    members = {
        PublishOptInEventTypes = {
            type = "list",
            member = { type = "string" },
        },
        ExcludeEventTypes = {
            type = "list",
            member = { type = "string" },
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
    id = "ManifestServiceInteractionLog",
    members = {
        ExcludeEventTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.LogConfiguration = {
    type = "structure",
    id = "LogConfiguration",
    members = {
        PercentEnabled = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        EnabledLoggingStrategies = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        AdsInteractionLog = M.AdsInteractionLog,
        ManifestServiceInteractionLog = M.ManifestServiceInteractionLog,
    },
}

M.AdMarkerPassthrough = {
    type = "structure",
    id = "AdMarkerPassthrough",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ManifestProcessingRules = {
    type = "structure",
    id = "ManifestProcessingRules",
    members = {
        AdMarkerPassthrough = M.AdMarkerPassthrough,
    },
}

M.PlaybackConfiguration = {
    type = "structure",
    id = "PlaybackConfiguration",
    members = {
        AdDecisionServerUrl = {
            type = "string",
        },
        AvailSuppression = M.AvailSuppression,
        Bumper = M.Bumper,
        CdnConfiguration = M.CdnConfiguration,
        ConfigurationAliases = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
        },
        DashConfiguration = M.DashConfiguration,
        HlsConfiguration = M.HlsConfiguration,
        InsertionMode = {
            type = "string",
            traits = {
                default = "STITCHED_ONLY",
            },
        },
        LivePreRollConfiguration = M.LivePreRollConfiguration,
        LogConfiguration = M.LogConfiguration,
        ManifestProcessingRules = M.ManifestProcessingRules,
        Name = {
            type = "string",
        },
        PersonalizationThresholdSeconds = {
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
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
        AdConditioningConfiguration = M.AdConditioningConfiguration,
        AdDecisionServerConfiguration = M.AdDecisionServerConfiguration,
    },
}

M.PrefetchConsumption = {
    type = "structure",
    id = "PrefetchConsumption",
    members = {
        AvailMatchingCriteria = {
            type = "list",
            member = M.AvailMatchingCriteria,
        },
        EndTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "epoch-seconds",
            },
        },
        StartTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
    },
}

M.RecurringConsumption = {
    type = "structure",
    id = "RecurringConsumption",
    members = {
        RetrievedAdExpirationSeconds = {
            type = "integer",
        },
        AvailMatchingCriteria = {
            type = "list",
            member = M.AvailMatchingCriteria,
        },
    },
}

M.TrafficShapingRetrievalWindow = {
    type = "structure",
    id = "TrafficShapingRetrievalWindow",
    members = {
        RetrievalWindowDurationSeconds = {
            type = "integer",
        },
    },
}

M.TrafficShapingTpsConfiguration = {
    type = "structure",
    id = "TrafficShapingTpsConfiguration",
    members = {
        PeakTps = {
            type = "integer",
        },
        PeakConcurrentUsers = {
            type = "integer",
        },
    },
}

M.TrafficShapingType = {
    RETRIEVAL_WINDOW = "RETRIEVAL_WINDOW",
    TPS = "TPS",
}

M.RecurringRetrieval = {
    type = "structure",
    id = "RecurringRetrieval",
    members = {
        DynamicVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        DelayAfterAvailEndSeconds = {
            type = "integer",
        },
        TrafficShapingType = {
            type = "string",
        },
        TrafficShapingRetrievalWindow = M.TrafficShapingRetrievalWindow,
        TrafficShapingTpsConfiguration = M.TrafficShapingTpsConfiguration,
    },
}

M.RecurringPrefetchConfiguration = {
    type = "structure",
    id = "RecurringPrefetchConfiguration",
    members = {
        StartTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "epoch-seconds",
            },
        },
        RecurringConsumption = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RecurringConsumption }),
        RecurringRetrieval = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RecurringRetrieval }),
    },
}

M.PrefetchRetrieval = {
    type = "structure",
    id = "PrefetchRetrieval",
    members = {
        DynamicVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "epoch-seconds",
            },
        },
        StartTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        TrafficShapingType = {
            type = "string",
        },
        TrafficShapingRetrievalWindow = M.TrafficShapingRetrievalWindow,
        TrafficShapingTpsConfiguration = M.TrafficShapingTpsConfiguration,
    },
}

M.PrefetchScheduleType = {
    SINGLE = "SINGLE",
    RECURRING = "RECURRING",
}

M.PrefetchSchedule = {
    type = "structure",
    id = "PrefetchSchedule",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Consumption = M.PrefetchConsumption,
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
        Retrieval = M.PrefetchRetrieval,
        ScheduleType = {
            type = "string",
        },
        RecurringPrefetchConfiguration = M.RecurringPrefetchConfiguration,
        StreamId = {
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

M.ScheduleAdBreak = {
    type = "structure",
    id = "ScheduleAdBreak",
    members = {
        ApproximateDurationSeconds = {
            type = "long",
        },
        ApproximateStartTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
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
    id = "ScheduleEntry",
    members = {
        ApproximateDurationSeconds = {
            type = "long",
        },
        ApproximateStartTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
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
            member = M.ScheduleAdBreak,
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
            member = { type = "string" },
        },
    },
}

M.SegmentDeliveryConfiguration = {
    type = "structure",
    id = "SegmentDeliveryConfiguration",
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
    id = "SecretsManagerAccessTokenConfiguration",
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
    id = "AccessConfiguration",
    members = {
        AccessType = {
            type = "string",
        },
        SecretsManagerAccessTokenConfiguration = M.SecretsManagerAccessTokenConfiguration,
    },
}

M.DefaultSegmentDeliveryConfiguration = {
    type = "structure",
    id = "DefaultSegmentDeliveryConfiguration",
    members = {
        BaseUrl = {
            type = "string",
        },
    },
}

M.HttpConfiguration = {
    type = "structure",
    id = "HttpConfiguration",
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
    id = "SourceLocation",
    members = {
        AccessConfiguration = M.AccessConfiguration,
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        DefaultSegmentDeliveryConfiguration = M.DefaultSegmentDeliveryConfiguration,
        HttpConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HttpConfiguration }),
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        SegmentDeliveryConfigurations = {
            type = "list",
            member = M.SegmentDeliveryConfiguration,
        },
        SourceLocationName = {
            type = "string",
            traits = {
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

M.VodSource = {
    type = "structure",
    id = "VodSource",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        HttpPackageConfigurations = {
            type = "list",
            member = M.HttpPackageConfiguration,
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
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
            key = { type = "string" },
            value = { type = "string" },
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
    id = "AdBreakOpportunity",
    members = {
        OffsetMillis = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.BadRequestException = {
    type = "structure",
    id = "BadRequestException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteChannelPolicyInput = {
    type = "structure",
    id = "DeleteChannelPolicyInput",
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
    id = "DeleteChannelPolicyOutput",
}

M.GetChannelPolicyInput = {
    type = "structure",
    id = "GetChannelPolicyInput",
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
    id = "GetChannelPolicyOutput",
    members = {
        Policy = {
            type = "string",
        },
    },
}

M.PutChannelPolicyInput = {
    type = "structure",
    id = "PutChannelPolicyInput",
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
    id = "PutChannelPolicyOutput",
}

M.ConfigureLogsForChannelInput = {
    type = "structure",
    id = "ConfigureLogsForChannelInput",
    members = {
        ChannelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ConfigureLogsForChannelOutput = {
    type = "structure",
    id = "ConfigureLogsForChannelOutput",
    members = {
        ChannelName = {
            type = "string",
        },
        LogTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RequestOutputItem = {
    type = "structure",
    id = "RequestOutputItem",
    members = {
        DashPlaylistSettings = M.DashPlaylistSettings,
        HlsPlaylistSettings = M.HlsPlaylistSettings,
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
    id = "TimeShiftConfiguration",
    members = {
        MaxTimeDelaySeconds = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateChannelInput = {
    type = "structure",
    id = "CreateChannelInput",
    members = {
        ChannelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FillerSlate = M.SlateSource,
        Outputs = {
            type = "list",
            member = M.RequestOutputItem,
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        Tier = {
            type = "string",
        },
        TimeShiftConfiguration = M.TimeShiftConfiguration,
        Audiences = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ChannelState = {
    RUNNING = "RUNNING",
    STOPPED = "STOPPED",
}

M.CreateChannelOutput = {
    type = "structure",
    id = "CreateChannelOutput",
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
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        FillerSlate = M.SlateSource,
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        Outputs = {
            type = "list",
            member = M.ResponseOutputItem,
        },
        PlaybackMode = {
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
        Tier = {
            type = "string",
        },
        TimeShiftConfiguration = M.TimeShiftConfiguration,
        Audiences = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DeleteChannelInput = {
    type = "structure",
    id = "DeleteChannelInput",
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
    id = "DeleteChannelOutput",
}

M.DescribeChannelInput = {
    type = "structure",
    id = "DescribeChannelInput",
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
    id = "DescribeChannelOutput",
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
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        FillerSlate = M.SlateSource,
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        Outputs = {
            type = "list",
            member = M.ResponseOutputItem,
        },
        PlaybackMode = {
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
        Tier = {
            type = "string",
        },
        LogConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LogConfigurationForChannel }),
        TimeShiftConfiguration = M.TimeShiftConfiguration,
        Audiences = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetChannelScheduleInput = {
    type = "structure",
    id = "GetChannelScheduleInput",
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
    id = "GetChannelScheduleOutput",
    members = {
        Items = {
            type = "list",
            member = M.ScheduleEntry,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListChannelsInput = {
    type = "structure",
    id = "ListChannelsInput",
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

M.ListChannelsOutput = {
    type = "structure",
    id = "ListChannelsOutput",
    members = {
        Items = {
            type = "list",
            member = M.Channel,
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
    id = "Transition",
    members = {
        DurationMillis = {
            type = "long",
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
            type = "long",
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
    id = "ScheduleConfiguration",
    members = {
        Transition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Transition }),
        ClipRange = M.ClipRange,
    },
}

M.CreateProgramInput = {
    type = "structure",
    id = "CreateProgramInput",
    members = {
        AdBreaks = {
            type = "list",
            member = M.AdBreak,
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
        ScheduleConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScheduleConfiguration }),
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
            member = M.AudienceMedia,
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

M.CreateProgramOutput = {
    type = "structure",
    id = "CreateProgramOutput",
    members = {
        AdBreaks = {
            type = "list",
            member = M.AdBreak,
        },
        Arn = {
            type = "string",
        },
        ChannelName = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        LiveSourceName = {
            type = "string",
        },
        ProgramName = {
            type = "string",
        },
        ScheduledStartTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        SourceLocationName = {
            type = "string",
        },
        VodSourceName = {
            type = "string",
        },
        ClipRange = M.ClipRange,
        DurationMillis = {
            type = "long",
        },
        AudienceMedia = {
            type = "list",
            member = M.AudienceMedia,
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

M.DeleteProgramInput = {
    type = "structure",
    id = "DeleteProgramInput",
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
    id = "DeleteProgramOutput",
}

M.DescribeProgramInput = {
    type = "structure",
    id = "DescribeProgramInput",
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
    id = "DescribeProgramOutput",
    members = {
        AdBreaks = {
            type = "list",
            member = M.AdBreak,
        },
        Arn = {
            type = "string",
        },
        ChannelName = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        LiveSourceName = {
            type = "string",
        },
        ProgramName = {
            type = "string",
        },
        ScheduledStartTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        SourceLocationName = {
            type = "string",
        },
        VodSourceName = {
            type = "string",
        },
        ClipRange = M.ClipRange,
        DurationMillis = {
            type = "long",
        },
        AudienceMedia = {
            type = "list",
            member = M.AudienceMedia,
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

M.UpdateProgramTransition = {
    type = "structure",
    id = "UpdateProgramTransition",
    members = {
        ScheduledStartTimeMillis = {
            type = "long",
        },
        DurationMillis = {
            type = "long",
        },
    },
}

M.UpdateProgramScheduleConfiguration = {
    type = "structure",
    id = "UpdateProgramScheduleConfiguration",
    members = {
        Transition = M.UpdateProgramTransition,
        ClipRange = M.ClipRange,
    },
}

M.UpdateProgramInput = {
    type = "structure",
    id = "UpdateProgramInput",
    members = {
        AdBreaks = {
            type = "list",
            member = M.AdBreak,
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
        ScheduleConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UpdateProgramScheduleConfiguration }),
        AudienceMedia = {
            type = "list",
            member = M.AudienceMedia,
        },
    },
}

M.UpdateProgramOutput = {
    type = "structure",
    id = "UpdateProgramOutput",
    members = {
        AdBreaks = {
            type = "list",
            member = M.AdBreak,
        },
        Arn = {
            type = "string",
        },
        ChannelName = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
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
        ClipRange = M.ClipRange,
        DurationMillis = {
            type = "long",
        },
        ScheduledStartTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        AudienceMedia = {
            type = "list",
            member = M.AudienceMedia,
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

M.StartChannelInput = {
    type = "structure",
    id = "StartChannelInput",
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
    id = "StartChannelOutput",
}

M.StopChannelInput = {
    type = "structure",
    id = "StopChannelInput",
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
    id = "StopChannelOutput",
}

M.UpdateChannelInput = {
    type = "structure",
    id = "UpdateChannelInput",
    members = {
        ChannelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FillerSlate = M.SlateSource,
        Outputs = {
            type = "list",
            member = M.RequestOutputItem,
            traits = {
                required = true,
            },
        },
        TimeShiftConfiguration = M.TimeShiftConfiguration,
        Audiences = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateChannelOutput = {
    type = "structure",
    id = "UpdateChannelOutput",
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
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        FillerSlate = M.SlateSource,
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        Outputs = {
            type = "list",
            member = M.ResponseOutputItem,
        },
        PlaybackMode = {
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
        Tier = {
            type = "string",
        },
        TimeShiftConfiguration = M.TimeShiftConfiguration,
        Audiences = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ConfigureLogsForPlaybackConfigurationInput = {
    type = "structure",
    id = "ConfigureLogsForPlaybackConfigurationInput",
    members = {
        PercentEnabled = {
            type = "integer",
            traits = {
                default = 0,
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
            member = { type = "string" },
        },
        AdsInteractionLog = M.AdsInteractionLog,
        ManifestServiceInteractionLog = M.ManifestServiceInteractionLog,
    },
}

M.ConfigureLogsForPlaybackConfigurationOutput = {
    type = "structure",
    id = "ConfigureLogsForPlaybackConfigurationOutput",
    members = {
        PercentEnabled = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        PlaybackConfigurationName = {
            type = "string",
        },
        EnabledLoggingStrategies = {
            type = "list",
            member = { type = "string" },
        },
        AdsInteractionLog = M.AdsInteractionLog,
        ManifestServiceInteractionLog = M.ManifestServiceInteractionLog,
    },
}

M.CreateLiveSourceInput = {
    type = "structure",
    id = "CreateLiveSourceInput",
    members = {
        HttpPackageConfigurations = {
            type = "list",
            member = M.HttpPackageConfiguration,
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateLiveSourceOutput = {
    type = "structure",
    id = "CreateLiveSourceOutput",
    members = {
        Arn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        HttpPackageConfigurations = {
            type = "list",
            member = M.HttpPackageConfiguration,
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        LiveSourceName = {
            type = "string",
        },
        SourceLocationName = {
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

M.CreatePrefetchScheduleInput = {
    type = "structure",
    id = "CreatePrefetchScheduleInput",
    members = {
        Consumption = M.PrefetchConsumption,
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
        Retrieval = M.PrefetchRetrieval,
        RecurringPrefetchConfiguration = M.RecurringPrefetchConfiguration,
        ScheduleType = {
            type = "string",
        },
        StreamId = {
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

M.CreatePrefetchScheduleOutput = {
    type = "structure",
    id = "CreatePrefetchScheduleOutput",
    members = {
        Arn = {
            type = "string",
        },
        Consumption = M.PrefetchConsumption,
        Name = {
            type = "string",
        },
        PlaybackConfigurationName = {
            type = "string",
        },
        Retrieval = M.PrefetchRetrieval,
        RecurringPrefetchConfiguration = M.RecurringPrefetchConfiguration,
        ScheduleType = {
            type = "string",
        },
        StreamId = {
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

M.CreateSourceLocationInput = {
    type = "structure",
    id = "CreateSourceLocationInput",
    members = {
        AccessConfiguration = M.AccessConfiguration,
        DefaultSegmentDeliveryConfiguration = M.DefaultSegmentDeliveryConfiguration,
        HttpConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HttpConfiguration }),
        SegmentDeliveryConfigurations = {
            type = "list",
            member = M.SegmentDeliveryConfiguration,
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateSourceLocationOutput = {
    type = "structure",
    id = "CreateSourceLocationOutput",
    members = {
        AccessConfiguration = M.AccessConfiguration,
        Arn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        DefaultSegmentDeliveryConfiguration = M.DefaultSegmentDeliveryConfiguration,
        HttpConfiguration = M.HttpConfiguration,
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        SegmentDeliveryConfigurations = {
            type = "list",
            member = M.SegmentDeliveryConfiguration,
        },
        SourceLocationName = {
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

M.CreateVodSourceInput = {
    type = "structure",
    id = "CreateVodSourceInput",
    members = {
        HttpPackageConfigurations = {
            type = "list",
            member = M.HttpPackageConfiguration,
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
            key = { type = "string" },
            value = { type = "string" },
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
    id = "CreateVodSourceOutput",
    members = {
        Arn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        HttpPackageConfigurations = {
            type = "list",
            member = M.HttpPackageConfiguration,
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        SourceLocationName = {
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
        VodSourceName = {
            type = "string",
        },
    },
}

M.DashConfigurationForPut = {
    type = "structure",
    id = "DashConfigurationForPut",
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
    id = "DeleteLiveSourceInput",
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
    id = "DeleteLiveSourceOutput",
}

M.DeletePlaybackConfigurationInput = {
    type = "structure",
    id = "DeletePlaybackConfigurationInput",
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
    id = "DeletePlaybackConfigurationOutput",
}

M.DeletePrefetchScheduleInput = {
    type = "structure",
    id = "DeletePrefetchScheduleInput",
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
    id = "DeletePrefetchScheduleOutput",
}

M.DeleteSourceLocationInput = {
    type = "structure",
    id = "DeleteSourceLocationInput",
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
    id = "DeleteSourceLocationOutput",
}

M.DeleteVodSourceInput = {
    type = "structure",
    id = "DeleteVodSourceInput",
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
    id = "DeleteVodSourceOutput",
}

M.DescribeLiveSourceInput = {
    type = "structure",
    id = "DescribeLiveSourceInput",
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
    id = "DescribeLiveSourceOutput",
    members = {
        Arn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        HttpPackageConfigurations = {
            type = "list",
            member = M.HttpPackageConfiguration,
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        LiveSourceName = {
            type = "string",
        },
        SourceLocationName = {
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

M.DescribeSourceLocationInput = {
    type = "structure",
    id = "DescribeSourceLocationInput",
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
    id = "DescribeSourceLocationOutput",
    members = {
        AccessConfiguration = M.AccessConfiguration,
        Arn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        DefaultSegmentDeliveryConfiguration = M.DefaultSegmentDeliveryConfiguration,
        HttpConfiguration = M.HttpConfiguration,
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        SegmentDeliveryConfigurations = {
            type = "list",
            member = M.SegmentDeliveryConfiguration,
        },
        SourceLocationName = {
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

M.DescribeVodSourceInput = {
    type = "structure",
    id = "DescribeVodSourceInput",
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
    id = "DescribeVodSourceOutput",
    members = {
        AdBreakOpportunities = {
            type = "list",
            member = M.AdBreakOpportunity,
        },
        Arn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        HttpPackageConfigurations = {
            type = "list",
            member = M.HttpPackageConfiguration,
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        SourceLocationName = {
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
        VodSourceName = {
            type = "string",
        },
    },
}

M.GetPlaybackConfigurationInput = {
    type = "structure",
    id = "GetPlaybackConfigurationInput",
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
    id = "GetPlaybackConfigurationOutput",
    members = {
        AdDecisionServerUrl = {
            type = "string",
        },
        AvailSuppression = M.AvailSuppression,
        Bumper = M.Bumper,
        CdnConfiguration = M.CdnConfiguration,
        ConfigurationAliases = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
        },
        DashConfiguration = M.DashConfiguration,
        HlsConfiguration = M.HlsConfiguration,
        InsertionMode = {
            type = "string",
            traits = {
                default = "STITCHED_ONLY",
            },
        },
        LivePreRollConfiguration = M.LivePreRollConfiguration,
        LogConfiguration = M.LogConfiguration,
        ManifestProcessingRules = M.ManifestProcessingRules,
        Name = {
            type = "string",
        },
        PersonalizationThresholdSeconds = {
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
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
        AdConditioningConfiguration = M.AdConditioningConfiguration,
        AdDecisionServerConfiguration = M.AdDecisionServerConfiguration,
    },
}

M.GetPrefetchScheduleInput = {
    type = "structure",
    id = "GetPrefetchScheduleInput",
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
    id = "GetPrefetchScheduleOutput",
    members = {
        Arn = {
            type = "string",
        },
        Consumption = M.PrefetchConsumption,
        Name = {
            type = "string",
        },
        PlaybackConfigurationName = {
            type = "string",
        },
        Retrieval = M.PrefetchRetrieval,
        ScheduleType = {
            type = "string",
        },
        RecurringPrefetchConfiguration = M.RecurringPrefetchConfiguration,
        StreamId = {
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

M.ListAlertsInput = {
    type = "structure",
    id = "ListAlertsInput",
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
    id = "ListAlertsOutput",
    members = {
        Items = {
            type = "list",
            member = M.Alert,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLiveSourcesInput = {
    type = "structure",
    id = "ListLiveSourcesInput",
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
    id = "ListLiveSourcesOutput",
    members = {
        Items = {
            type = "list",
            member = M.LiveSource,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPlaybackConfigurationsInput = {
    type = "structure",
    id = "ListPlaybackConfigurationsInput",
    members = {
        MaxResults = {
            type = "integer",
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
    id = "ListPlaybackConfigurationsOutput",
    members = {
        Items = {
            type = "list",
            member = M.PlaybackConfiguration,
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
    id = "ListPrefetchSchedulesInput",
    members = {
        MaxResults = {
            type = "integer",
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
    id = "ListPrefetchSchedulesOutput",
    members = {
        Items = {
            type = "list",
            member = M.PrefetchSchedule,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSourceLocationsInput = {
    type = "structure",
    id = "ListSourceLocationsInput",
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

M.ListSourceLocationsOutput = {
    type = "structure",
    id = "ListSourceLocationsOutput",
    members = {
        Items = {
            type = "list",
            member = M.SourceLocation,
        },
        NextToken = {
            type = "string",
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

M.ListVodSourcesInput = {
    type = "structure",
    id = "ListVodSourcesInput",
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
    id = "ListVodSourcesOutput",
    members = {
        Items = {
            type = "list",
            member = M.VodSource,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateLiveSourceInput = {
    type = "structure",
    id = "UpdateLiveSourceInput",
    members = {
        HttpPackageConfigurations = {
            type = "list",
            member = M.HttpPackageConfiguration,
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
    id = "UpdateLiveSourceOutput",
    members = {
        Arn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        HttpPackageConfigurations = {
            type = "list",
            member = M.HttpPackageConfiguration,
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        LiveSourceName = {
            type = "string",
        },
        SourceLocationName = {
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

M.PutPlaybackConfigurationInput = {
    type = "structure",
    id = "PutPlaybackConfigurationInput",
    members = {
        AdDecisionServerUrl = {
            type = "string",
        },
        AvailSuppression = M.AvailSuppression,
        Bumper = M.Bumper,
        CdnConfiguration = M.CdnConfiguration,
        ConfigurationAliases = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
        },
        DashConfiguration = M.DashConfigurationForPut,
        InsertionMode = {
            type = "string",
            traits = {
                default = "STITCHED_ONLY",
            },
        },
        LivePreRollConfiguration = M.LivePreRollConfiguration,
        ManifestProcessingRules = M.ManifestProcessingRules,
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PersonalizationThresholdSeconds = {
            type = "integer",
        },
        SlateAdUrl = {
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
        TranscodeProfileName = {
            type = "string",
        },
        VideoContentSourceUrl = {
            type = "string",
        },
        AdConditioningConfiguration = M.AdConditioningConfiguration,
        AdDecisionServerConfiguration = M.AdDecisionServerConfiguration,
    },
}

M.PutPlaybackConfigurationOutput = {
    type = "structure",
    id = "PutPlaybackConfigurationOutput",
    members = {
        AdDecisionServerUrl = {
            type = "string",
        },
        AvailSuppression = M.AvailSuppression,
        Bumper = M.Bumper,
        CdnConfiguration = M.CdnConfiguration,
        ConfigurationAliases = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
        },
        DashConfiguration = M.DashConfiguration,
        HlsConfiguration = M.HlsConfiguration,
        InsertionMode = {
            type = "string",
            traits = {
                default = "STITCHED_ONLY",
            },
        },
        LivePreRollConfiguration = M.LivePreRollConfiguration,
        LogConfiguration = M.LogConfiguration,
        ManifestProcessingRules = M.ManifestProcessingRules,
        Name = {
            type = "string",
        },
        PersonalizationThresholdSeconds = {
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
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
        AdConditioningConfiguration = M.AdConditioningConfiguration,
        AdDecisionServerConfiguration = M.AdDecisionServerConfiguration,
    },
}

M.UpdateSourceLocationInput = {
    type = "structure",
    id = "UpdateSourceLocationInput",
    members = {
        AccessConfiguration = M.AccessConfiguration,
        DefaultSegmentDeliveryConfiguration = M.DefaultSegmentDeliveryConfiguration,
        HttpConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HttpConfiguration }),
        SegmentDeliveryConfigurations = {
            type = "list",
            member = M.SegmentDeliveryConfiguration,
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
    id = "UpdateSourceLocationOutput",
    members = {
        AccessConfiguration = M.AccessConfiguration,
        Arn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        DefaultSegmentDeliveryConfiguration = M.DefaultSegmentDeliveryConfiguration,
        HttpConfiguration = M.HttpConfiguration,
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        SegmentDeliveryConfigurations = {
            type = "list",
            member = M.SegmentDeliveryConfiguration,
        },
        SourceLocationName = {
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

M.UpdateVodSourceInput = {
    type = "structure",
    id = "UpdateVodSourceInput",
    members = {
        HttpPackageConfigurations = {
            type = "list",
            member = M.HttpPackageConfiguration,
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
    id = "UpdateVodSourceOutput",
    members = {
        Arn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        HttpPackageConfigurations = {
            type = "list",
            member = M.HttpPackageConfiguration,
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        SourceLocationName = {
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
        VodSourceName = {
            type = "string",
        },
    },
}

return M
