local M = {}

M.DashRoleAudio = {
    ALTERNATE = "ALTERNATE",
    COMMENTARY = "COMMENTARY",
    DESCRIPTION = "DESCRIPTION",
    DUB = "DUB",
    EMERGENCY = "EMERGENCY",
    ENHANCED_AUDIO_INTELLIGIBILITY = "ENHANCED-AUDIO-INTELLIGIBILITY",
    KARAOKE = "KARAOKE",
    MAIN = "MAIN",
    SUPPLEMENTARY = "SUPPLEMENTARY",
}

M.AudioNormalizationAlgorithm = {
    ITU_1770_1 = "ITU_1770_1",
    ITU_1770_2 = "ITU_1770_2",
}

M.AudioNormalizationAlgorithmControl = {
    CORRECT_AUDIO = "CORRECT_AUDIO",
}

M.AudioType = {
    CLEAN_EFFECTS = "CLEAN_EFFECTS",
    HEARING_IMPAIRED = "HEARING_IMPAIRED",
    UNDEFINED = "UNDEFINED",
    VISUAL_IMPAIRED_COMMENTARY = "VISUAL_IMPAIRED_COMMENTARY",
}

M.AudioDescriptionAudioTypeControl = {
    FOLLOW_INPUT = "FOLLOW_INPUT",
    USE_CONFIGURED = "USE_CONFIGURED",
}

M.NielsenWatermarksCbetStepaside = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.NielsenWatermarksDistributionTypes = {
    FINAL_DISTRIBUTOR = "FINAL_DISTRIBUTOR",
    PROGRAM_CONTENT = "PROGRAM_CONTENT",
}

M.NielsenWatermarkTimezones = {
    AMERICA_PUERTO_RICO = "AMERICA_PUERTO_RICO",
    US_ALASKA = "US_ALASKA",
    US_ARIZONA = "US_ARIZONA",
    US_CENTRAL = "US_CENTRAL",
    US_EASTERN = "US_EASTERN",
    US_HAWAII = "US_HAWAII",
    US_MOUNTAIN = "US_MOUNTAIN",
    US_PACIFIC = "US_PACIFIC",
    US_SAMOA = "US_SAMOA",
    UTC = "UTC",
}

M.AacCodingMode = {
    AD_RECEIVER_MIX = "AD_RECEIVER_MIX",
    CODING_MODE_1_0 = "CODING_MODE_1_0",
    CODING_MODE_1_1 = "CODING_MODE_1_1",
    CODING_MODE_2_0 = "CODING_MODE_2_0",
    CODING_MODE_5_1 = "CODING_MODE_5_1",
}

M.AacInputType = {
    BROADCASTER_MIXED_AD = "BROADCASTER_MIXED_AD",
    NORMAL = "NORMAL",
}

M.AacProfile = {
    HEV1 = "HEV1",
    HEV2 = "HEV2",
    LC = "LC",
}

M.AacRateControlMode = {
    CBR = "CBR",
    VBR = "VBR",
}

M.AacRawFormat = {
    LATM_LOAS = "LATM_LOAS",
    NONE = "NONE",
}

M.AacSpec = {
    MPEG2 = "MPEG2",
    MPEG4 = "MPEG4",
}

M.AacVbrQuality = {
    HIGH = "HIGH",
    LOW = "LOW",
    MEDIUM_HIGH = "MEDIUM_HIGH",
    MEDIUM_LOW = "MEDIUM_LOW",
}

M.Ac3AttenuationControl = {
    ATTENUATE_3_DB = "ATTENUATE_3_DB",
    NONE = "NONE",
}

M.Ac3BitstreamMode = {
    COMMENTARY = "COMMENTARY",
    COMPLETE_MAIN = "COMPLETE_MAIN",
    DIALOGUE = "DIALOGUE",
    EMERGENCY = "EMERGENCY",
    HEARING_IMPAIRED = "HEARING_IMPAIRED",
    MUSIC_AND_EFFECTS = "MUSIC_AND_EFFECTS",
    VISUALLY_IMPAIRED = "VISUALLY_IMPAIRED",
    VOICE_OVER = "VOICE_OVER",
}

M.Ac3CodingMode = {
    CODING_MODE_1_0 = "CODING_MODE_1_0",
    CODING_MODE_1_1 = "CODING_MODE_1_1",
    CODING_MODE_2_0 = "CODING_MODE_2_0",
    CODING_MODE_3_2_LFE = "CODING_MODE_3_2_LFE",
}

M.Ac3DrcProfile = {
    FILM_STANDARD = "FILM_STANDARD",
    NONE = "NONE",
}

M.Ac3LfeFilter = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.Ac3MetadataControl = {
    FOLLOW_INPUT = "FOLLOW_INPUT",
    USE_CONFIGURED = "USE_CONFIGURED",
}

M.Eac3AtmosCodingMode = {
    CODING_MODE_5_1_4 = "CODING_MODE_5_1_4",
    CODING_MODE_7_1_4 = "CODING_MODE_7_1_4",
    CODING_MODE_9_1_6 = "CODING_MODE_9_1_6",
}

M.Eac3AtmosDrcLine = {
    FILM_LIGHT = "FILM_LIGHT",
    FILM_STANDARD = "FILM_STANDARD",
    MUSIC_LIGHT = "MUSIC_LIGHT",
    MUSIC_STANDARD = "MUSIC_STANDARD",
    NONE = "NONE",
    SPEECH = "SPEECH",
}

M.Eac3AtmosDrcRf = {
    FILM_LIGHT = "FILM_LIGHT",
    FILM_STANDARD = "FILM_STANDARD",
    MUSIC_LIGHT = "MUSIC_LIGHT",
    MUSIC_STANDARD = "MUSIC_STANDARD",
    NONE = "NONE",
    SPEECH = "SPEECH",
}

M.Eac3AttenuationControl = {
    ATTENUATE_3_DB = "ATTENUATE_3_DB",
    NONE = "NONE",
}

M.Eac3BitstreamMode = {
    COMMENTARY = "COMMENTARY",
    COMPLETE_MAIN = "COMPLETE_MAIN",
    EMERGENCY = "EMERGENCY",
    HEARING_IMPAIRED = "HEARING_IMPAIRED",
    VISUALLY_IMPAIRED = "VISUALLY_IMPAIRED",
}

M.Eac3CodingMode = {
    CODING_MODE_1_0 = "CODING_MODE_1_0",
    CODING_MODE_2_0 = "CODING_MODE_2_0",
    CODING_MODE_3_2 = "CODING_MODE_3_2",
}

M.Eac3DcFilter = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.Eac3DrcLine = {
    FILM_LIGHT = "FILM_LIGHT",
    FILM_STANDARD = "FILM_STANDARD",
    MUSIC_LIGHT = "MUSIC_LIGHT",
    MUSIC_STANDARD = "MUSIC_STANDARD",
    NONE = "NONE",
    SPEECH = "SPEECH",
}

M.Eac3DrcRf = {
    FILM_LIGHT = "FILM_LIGHT",
    FILM_STANDARD = "FILM_STANDARD",
    MUSIC_LIGHT = "MUSIC_LIGHT",
    MUSIC_STANDARD = "MUSIC_STANDARD",
    NONE = "NONE",
    SPEECH = "SPEECH",
}

M.Eac3LfeControl = {
    LFE = "LFE",
    NO_LFE = "NO_LFE",
}

M.Eac3LfeFilter = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.Eac3MetadataControl = {
    FOLLOW_INPUT = "FOLLOW_INPUT",
    USE_CONFIGURED = "USE_CONFIGURED",
}

M.Eac3PassthroughControl = {
    NO_PASSTHROUGH = "NO_PASSTHROUGH",
    WHEN_POSSIBLE = "WHEN_POSSIBLE",
}

M.Eac3PhaseControl = {
    NO_SHIFT = "NO_SHIFT",
    SHIFT_90_DEGREES = "SHIFT_90_DEGREES",
}

M.Eac3StereoDownmix = {
    DPL2 = "DPL2",
    LO_RO = "LO_RO",
    LT_RT = "LT_RT",
    NOT_INDICATED = "NOT_INDICATED",
}

M.Eac3SurroundExMode = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
    NOT_INDICATED = "NOT_INDICATED",
}

M.Eac3SurroundMode = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
    NOT_INDICATED = "NOT_INDICATED",
}

M.Mp2CodingMode = {
    CODING_MODE_1_0 = "CODING_MODE_1_0",
    CODING_MODE_2_0 = "CODING_MODE_2_0",
}

M.WavCodingMode = {
    CODING_MODE_1_0 = "CODING_MODE_1_0",
    CODING_MODE_2_0 = "CODING_MODE_2_0",
    CODING_MODE_4_0 = "CODING_MODE_4_0",
    CODING_MODE_8_0 = "CODING_MODE_8_0",
}

M.DvbDashAccessibility = {
    DVBDASH_1_VISUALLY_IMPAIRED = "DVBDASH_1_VISUALLY_IMPAIRED",
    DVBDASH_2_HARD_OF_HEARING = "DVBDASH_2_HARD_OF_HEARING",
    DVBDASH_3_SUPPLEMENTAL_COMMENTARY = "DVBDASH_3_SUPPLEMENTAL_COMMENTARY",
    DVBDASH_4_DIRECTORS_COMMENTARY = "DVBDASH_4_DIRECTORS_COMMENTARY",
    DVBDASH_5_EDUCATIONAL_NOTES = "DVBDASH_5_EDUCATIONAL_NOTES",
    DVBDASH_6_MAIN_PROGRAM = "DVBDASH_6_MAIN_PROGRAM",
    DVBDASH_7_CLEAN_FEED = "DVBDASH_7_CLEAN_FEED",
}

M.AudioDescriptionLanguageCodeControl = {
    FOLLOW_INPUT = "FOLLOW_INPUT",
    USE_CONFIGURED = "USE_CONFIGURED",
}

M.AudioLanguageSelectionPolicy = {
    LOOSE = "LOOSE",
    STRICT = "STRICT",
}

M.DolbyEProgramSelection = {
    ALL_CHANNELS = "ALL_CHANNELS",
    PROGRAM_1 = "PROGRAM_1",
    PROGRAM_2 = "PROGRAM_2",
    PROGRAM_3 = "PROGRAM_3",
    PROGRAM_4 = "PROGRAM_4",
    PROGRAM_5 = "PROGRAM_5",
    PROGRAM_6 = "PROGRAM_6",
    PROGRAM_7 = "PROGRAM_7",
    PROGRAM_8 = "PROGRAM_8",
}

M.AccessibilityType = {
    DOES_NOT_IMPLEMENT_ACCESSIBILITY_FEATURES = "DOES_NOT_IMPLEMENT_ACCESSIBILITY_FEATURES",
    IMPLEMENTS_ACCESSIBILITY_FEATURES = "IMPLEMENTS_ACCESSIBILITY_FEATURES",
}

M.DashRoleCaption = {
    ALTERNATE = "ALTERNATE",
    CAPTION = "CAPTION",
    COMMENTARY = "COMMENTARY",
    DESCRIPTION = "DESCRIPTION",
    DUB = "DUB",
    EASYREADER = "EASYREADER",
    EMERGENCY = "EMERGENCY",
    FORCED_SUBTITLE = "FORCED-SUBTITLE",
    KARAOKE = "KARAOKE",
    MAIN = "MAIN",
    METADATA = "METADATA",
    SUBTITLE = "SUBTITLE",
    SUPPLEMENTARY = "SUPPLEMENTARY",
}

M.BurnInAlignment = {
    CENTERED = "CENTERED",
    LEFT = "LEFT",
    SMART = "SMART",
}

M.BurnInBackgroundColor = {
    BLACK = "BLACK",
    NONE = "NONE",
    WHITE = "WHITE",
}

M.BurnInFontColor = {
    BLACK = "BLACK",
    BLUE = "BLUE",
    GREEN = "GREEN",
    RED = "RED",
    WHITE = "WHITE",
    YELLOW = "YELLOW",
}

M.BurnInOutlineColor = {
    BLACK = "BLACK",
    BLUE = "BLUE",
    GREEN = "GREEN",
    RED = "RED",
    WHITE = "WHITE",
    YELLOW = "YELLOW",
}

M.BurnInShadowColor = {
    BLACK = "BLACK",
    NONE = "NONE",
    WHITE = "WHITE",
}

M.BurnInDestinationSubtitleRows = {
    ROWS_16 = "ROWS_16",
    ROWS_20 = "ROWS_20",
    ROWS_24 = "ROWS_24",
}

M.BurnInTeletextGridControl = {
    FIXED = "FIXED",
    SCALED = "SCALED",
}

M.DvbSubDestinationAlignment = {
    CENTERED = "CENTERED",
    LEFT = "LEFT",
    SMART = "SMART",
}

M.DvbSubDestinationBackgroundColor = {
    BLACK = "BLACK",
    NONE = "NONE",
    WHITE = "WHITE",
}

M.DvbSubDestinationFontColor = {
    BLACK = "BLACK",
    BLUE = "BLUE",
    GREEN = "GREEN",
    RED = "RED",
    WHITE = "WHITE",
    YELLOW = "YELLOW",
}

M.DvbSubDestinationOutlineColor = {
    BLACK = "BLACK",
    BLUE = "BLUE",
    GREEN = "GREEN",
    RED = "RED",
    WHITE = "WHITE",
    YELLOW = "YELLOW",
}

M.DvbSubDestinationShadowColor = {
    BLACK = "BLACK",
    NONE = "NONE",
    WHITE = "WHITE",
}

M.DvbSubDestinationSubtitleRows = {
    ROWS_16 = "ROWS_16",
    ROWS_20 = "ROWS_20",
    ROWS_24 = "ROWS_24",
}

M.DvbSubDestinationTeletextGridControl = {
    FIXED = "FIXED",
    SCALED = "SCALED",
}

M.EbuTtDFillLineGapControl = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.EbuTtDDestinationStyleControl = {
    EXCLUDE = "EXCLUDE",
    INCLUDE = "INCLUDE",
}

M.TtmlDestinationStyleControl = {
    PASSTHROUGH = "PASSTHROUGH",
    USE_CONFIGURED = "USE_CONFIGURED",
}

M.WebvttDestinationStyleControl = {
    NO_STYLE_DATA = "NO_STYLE_DATA",
    PASSTHROUGH = "PASSTHROUGH",
}

M.DvbSubOcrLanguage = {
    DEU = "DEU",
    ENG = "ENG",
    FRA = "FRA",
    NLD = "NLD",
    POR = "POR",
    SPA = "SPA",
}

M.EmbeddedConvert608To708 = {
    DISABLED = "DISABLED",
    UPCONVERT = "UPCONVERT",
}

M.EmbeddedScte20Detection = {
    AUTO = "AUTO",
    OFF = "OFF",
}

M.Scte20Convert608To708 = {
    DISABLED = "DISABLED",
    UPCONVERT = "UPCONVERT",
}

M.Scte27OcrLanguage = {
    DEU = "DEU",
    ENG = "ENG",
    FRA = "FRA",
    NLD = "NLD",
    POR = "POR",
    SPA = "SPA",
}

M.ChannelAlertState = {
    SET = "SET",
    CLEARED = "CLEARED",
}

M.ChannelPipelineIdToRestart = {
    PIPELINE_0 = "PIPELINE_0",
    PIPELINE_1 = "PIPELINE_1",
}

M.CdiInputResolution = {
    SD = "SD",
    HD = "HD",
    FHD = "FHD",
    UHD = "UHD",
}

M.ChannelClass = {
    STANDARD = "STANDARD",
    SINGLE_PIPELINE = "SINGLE_PIPELINE",
}

M.MediaConnectRouterOutputEncryptionType = {
    AUTOMATIC = "AUTOMATIC",
    SECRETS_MANAGER = "SECRETS_MANAGER",
}

M.ConnectionMode = {
    CALLER = "CALLER",
    LISTENER = "LISTENER",
}

M.InputPreference = {
    EQUAL_INPUT_PREFERENCE = "EQUAL_INPUT_PREFERENCE",
    PRIMARY_INPUT_PREFERRED = "PRIMARY_INPUT_PREFERRED",
}

M.InputDeblockFilter = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.InputDenoiseFilter = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.InputFilter = {
    AUTO = "AUTO",
    DISABLED = "DISABLED",
    FORCED = "FORCED",
}

M.HlsScte35SourceType = {
    MANIFEST = "MANIFEST",
    SEGMENTS = "SEGMENTS",
}

M.NetworkInputServerValidation = {
    CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME = "CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME",
    CHECK_CRYPTOGRAPHY_ONLY = "CHECK_CRYPTOGRAPHY_ONLY",
}

M.Smpte2038DataPreference = {
    IGNORE = "IGNORE",
    PREFER = "PREFER",
}

M.InputSourceEndBehavior = {
    CONTINUE = "CONTINUE",
    LOOP = "LOOP",
}

M.VideoSelectorColorSpace = {
    FOLLOW = "FOLLOW",
    HDR10 = "HDR10",
    HLG_2020 = "HLG_2020",
    REC_601 = "REC_601",
    REC_709 = "REC_709",
}

M.VideoSelectorColorSpaceUsage = {
    FALLBACK = "FALLBACK",
    FORCE = "FORCE",
}

M.InputCodec = {
    MPEG2 = "MPEG2",
    AVC = "AVC",
    HEVC = "HEVC",
}

M.InputMaximumBitrate = {
    MAX_10_MBPS = "MAX_10_MBPS",
    MAX_20_MBPS = "MAX_20_MBPS",
    MAX_50_MBPS = "MAX_50_MBPS",
}

M.InputResolution = {
    SD = "SD",
    HD = "HD",
    UHD = "UHD",
}

M.LinkedChannelType = {
    FOLLOWING_CHANNEL = "FOLLOWING_CHANNEL",
    PRIMARY_CHANNEL = "PRIMARY_CHANNEL",
}

M.LogLevel = {
    ERROR = "ERROR",
    WARNING = "WARNING",
    INFO = "INFO",
    DEBUG = "DEBUG",
    DISABLED = "DISABLED",
}

M.MaintenanceDay = {
    MONDAY = "MONDAY",
    TUESDAY = "TUESDAY",
    WEDNESDAY = "WEDNESDAY",
    THURSDAY = "THURSDAY",
    FRIDAY = "FRIDAY",
    SATURDAY = "SATURDAY",
    SUNDAY = "SUNDAY",
}

M.ChannelState = {
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
    IDLE = "IDLE",
    STARTING = "STARTING",
    RUNNING = "RUNNING",
    RECOVERING = "RECOVERING",
    STOPPING = "STOPPING",
    DELETING = "DELETING",
    DELETED = "DELETED",
    UPDATING = "UPDATING",
    UPDATE_FAILED = "UPDATE_FAILED",
}

M.CloudWatchAlarmTemplateComparisonOperator = {
    GreaterThanOrEqualToThreshold = "GreaterThanOrEqualToThreshold",
    GreaterThanThreshold = "GreaterThanThreshold",
    LessThanThreshold = "LessThanThreshold",
    LessThanOrEqualToThreshold = "LessThanOrEqualToThreshold",
}

M.CloudWatchAlarmTemplateStatistic = {
    SampleCount = "SampleCount",
    Average = "Average",
    Sum = "Sum",
    Minimum = "Minimum",
    Maximum = "Maximum",
}

M.CloudWatchAlarmTemplateTargetResourceType = {
    CLOUDFRONT_DISTRIBUTION = "CLOUDFRONT_DISTRIBUTION",
    MEDIALIVE_MULTIPLEX = "MEDIALIVE_MULTIPLEX",
    MEDIALIVE_CHANNEL = "MEDIALIVE_CHANNEL",
    MEDIALIVE_INPUT_DEVICE = "MEDIALIVE_INPUT_DEVICE",
    MEDIAPACKAGE_CHANNEL = "MEDIAPACKAGE_CHANNEL",
    MEDIAPACKAGE_ORIGIN_ENDPOINT = "MEDIAPACKAGE_ORIGIN_ENDPOINT",
    MEDIACONNECT_FLOW = "MEDIACONNECT_FLOW",
    S3_BUCKET = "S3_BUCKET",
    MEDIATAILOR_PLAYBACK_CONFIGURATION = "MEDIATAILOR_PLAYBACK_CONFIGURATION",
}

M.CloudWatchAlarmTemplateTreatMissingData = {
    notBreaching = "notBreaching",
    breaching = "breaching",
    ignore = "ignore",
    missing = "missing",
}

M.ClusterAlertState = {
    SET = "SET",
    CLEARED = "CLEARED",
}

M.ColorSpace = {
    HDR10 = "HDR10",
    HLG_2020 = "HLG_2020",
    REC_601 = "REC_601",
    REC_709 = "REC_709",
}

M.ChannelPlacementGroupState = {
    UNASSIGNED = "UNASSIGNED",
    ASSIGNING = "ASSIGNING",
    ASSIGNED = "ASSIGNED",
    DELETING = "DELETING",
    DELETE_FAILED = "DELETE_FAILED",
    DELETED = "DELETED",
    UNASSIGNING = "UNASSIGNING",
}

M.ClusterType = {
    ON_PREMISES = "ON_PREMISES",
}

M.ClusterState = {
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    DELETE_FAILED = "DELETE_FAILED",
    DELETED = "DELETED",
}

M.NetworkState = {
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    IDLE = "IDLE",
    IN_USE = "IN_USE",
    UPDATING = "UPDATING",
    DELETE_FAILED = "DELETE_FAILED",
    DELETED = "DELETED",
}

M.NodeConnectionState = {
    CONNECTED = "CONNECTED",
    DISCONNECTED = "DISCONNECTED",
}

M.NetworkInterfaceMode = {
    NAT = "NAT",
    BRIDGE = "BRIDGE",
}

M.NodeRole = {
    BACKUP = "BACKUP",
    ACTIVE = "ACTIVE",
}

M.NodeState = {
    CREATED = "CREATED",
    REGISTERING = "REGISTERING",
    READY_TO_ACTIVATE = "READY_TO_ACTIVATE",
    REGISTRATION_FAILED = "REGISTRATION_FAILED",
    ACTIVATION_FAILED = "ACTIVATION_FAILED",
    ACTIVE = "ACTIVE",
    READY = "READY",
    IN_USE = "IN_USE",
    DEREGISTERING = "DEREGISTERING",
    DRAINING = "DRAINING",
    DEREGISTRATION_FAILED = "DEREGISTRATION_FAILED",
    DEREGISTERED = "DEREGISTERED",
}

M.EventBridgeRuleTemplateEventType = {
    MEDIALIVE_MULTIPLEX_ALERT = "MEDIALIVE_MULTIPLEX_ALERT",
    MEDIALIVE_MULTIPLEX_STATE_CHANGE = "MEDIALIVE_MULTIPLEX_STATE_CHANGE",
    MEDIALIVE_CHANNEL_ALERT = "MEDIALIVE_CHANNEL_ALERT",
    MEDIALIVE_CHANNEL_INPUT_CHANGE = "MEDIALIVE_CHANNEL_INPUT_CHANGE",
    MEDIALIVE_CHANNEL_STATE_CHANGE = "MEDIALIVE_CHANNEL_STATE_CHANGE",
    MEDIAPACKAGE_INPUT_NOTIFICATION = "MEDIAPACKAGE_INPUT_NOTIFICATION",
    MEDIAPACKAGE_KEY_PROVIDER_NOTIFICATION = "MEDIAPACKAGE_KEY_PROVIDER_NOTIFICATION",
    MEDIAPACKAGE_HARVEST_JOB_NOTIFICATION = "MEDIAPACKAGE_HARVEST_JOB_NOTIFICATION",
    SIGNAL_MAP_ACTIVE_ALARM = "SIGNAL_MAP_ACTIVE_ALARM",
    MEDIACONNECT_ALERT = "MEDIACONNECT_ALERT",
    MEDIACONNECT_SOURCE_HEALTH = "MEDIACONNECT_SOURCE_HEALTH",
    MEDIACONNECT_OUTPUT_HEALTH = "MEDIACONNECT_OUTPUT_HEALTH",
    MEDIACONNECT_FLOW_STATUS_CHANGE = "MEDIACONNECT_FLOW_STATUS_CHANGE",
}

M.HlsAdMarkers = {
    ADOBE = "ADOBE",
    ELEMENTAL = "ELEMENTAL",
    ELEMENTAL_SCTE35 = "ELEMENTAL_SCTE35",
}

M.InputClass = {
    STANDARD = "STANDARD",
    SINGLE_PIPELINE = "SINGLE_PIPELINE",
}

M.InputNetworkLocation = {
    AWS = "AWS",
    ON_PREMISES = "ON_PREMISES",
}

M.InputSourceType = {
    STATIC = "STATIC",
    DYNAMIC = "DYNAMIC",
}

M.RouterEncryptionType = {
    AUTOMATIC = "AUTOMATIC",
    SECRETS_MANAGER = "SECRETS_MANAGER",
}

M.Algorithm = {
    AES128 = "AES128",
    AES192 = "AES192",
    AES256 = "AES256",
}

M.InputState = {
    CREATING = "CREATING",
    DETACHED = "DETACHED",
    ATTACHED = "ATTACHED",
    DELETING = "DELETING",
    DELETED = "DELETED",
}

M.InputType = {
    UDP_PUSH = "UDP_PUSH",
    RTP_PUSH = "RTP_PUSH",
    RTMP_PUSH = "RTMP_PUSH",
    RTMP_PULL = "RTMP_PULL",
    URL_PULL = "URL_PULL",
    MP4_FILE = "MP4_FILE",
    MEDIACONNECT = "MEDIACONNECT",
    INPUT_DEVICE = "INPUT_DEVICE",
    AWS_CDI = "AWS_CDI",
    TS_FILE = "TS_FILE",
    SRT_CALLER = "SRT_CALLER",
    MULTICAST = "MULTICAST",
    SMPTE_2110_RECEIVER_GROUP = "SMPTE_2110_RECEIVER_GROUP",
    SDI = "SDI",
    MEDIACONNECT_ROUTER = "MEDIACONNECT_ROUTER",
    SRT_LISTENER = "SRT_LISTENER",
}

M.InputDeviceConfigurableAudioChannelPairProfile = {
    DISABLED = "DISABLED",
    VBR_AAC_HHE_16000 = "VBR-AAC_HHE-16000",
    VBR_AAC_HE_64000 = "VBR-AAC_HE-64000",
    VBR_AAC_LC_128000 = "VBR-AAC_LC-128000",
    CBR_AAC_HQ_192000 = "CBR-AAC_HQ-192000",
    CBR_AAC_HQ_256000 = "CBR-AAC_HQ-256000",
    CBR_AAC_HQ_384000 = "CBR-AAC_HQ-384000",
    CBR_AAC_HQ_512000 = "CBR-AAC_HQ-512000",
}

M.InputDeviceConnectionState = {
    DISCONNECTED = "DISCONNECTED",
    CONNECTED = "CONNECTED",
}

M.DeviceSettingsSyncState = {
    SYNCED = "SYNCED",
    SYNCING = "SYNCING",
}

M.DeviceUpdateStatus = {
    UP_TO_DATE = "UP_TO_DATE",
    NOT_UP_TO_DATE = "NOT_UP_TO_DATE",
    UPDATING = "UPDATING",
}

M.InputDeviceActiveInput = {
    HDMI = "HDMI",
    SDI = "SDI",
}

M.InputDeviceConfiguredInput = {
    AUTO = "AUTO",
    HDMI = "HDMI",
    SDI = "SDI",
}

M.InputDeviceState = {
    IDLE = "IDLE",
    STREAMING = "STREAMING",
}

M.InputDeviceScanType = {
    INTERLACED = "INTERLACED",
    PROGRESSIVE = "PROGRESSIVE",
}

M.InputDeviceIpScheme = {
    STATIC = "STATIC",
    DHCP = "DHCP",
}

M.InputDeviceOutputType = {
    NONE = "NONE",
    MEDIALIVE_INPUT = "MEDIALIVE_INPUT",
    MEDIACONNECT_FLOW = "MEDIACONNECT_FLOW",
}

M.InputDeviceType = {
    HD = "HD",
    UHD = "UHD",
}

M.InputDeviceUhdAudioChannelPairProfile = {
    DISABLED = "DISABLED",
    VBR_AAC_HHE_16000 = "VBR-AAC_HHE-16000",
    VBR_AAC_HE_64000 = "VBR-AAC_HE-64000",
    VBR_AAC_LC_128000 = "VBR-AAC_LC-128000",
    CBR_AAC_HQ_192000 = "CBR-AAC_HQ-192000",
    CBR_AAC_HQ_256000 = "CBR-AAC_HQ-256000",
    CBR_AAC_HQ_384000 = "CBR-AAC_HQ-384000",
    CBR_AAC_HQ_512000 = "CBR-AAC_HQ-512000",
}

M.InputDeviceCodec = {
    HEVC = "HEVC",
    AVC = "AVC",
}

M.InputSecurityGroupState = {
    IDLE = "IDLE",
    IN_USE = "IN_USE",
    UPDATING = "UPDATING",
    DELETED = "DELETED",
}

M.MultiplexAlertState = {
    SET = "SET",
    CLEARED = "CLEARED",
}

M.MultiplexState = {
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
    IDLE = "IDLE",
    STARTING = "STARTING",
    RUNNING = "RUNNING",
    RECOVERING = "RECOVERING",
    STOPPING = "STOPPING",
    DELETING = "DELETING",
    DELETED = "DELETED",
}

M.OfferingDurationUnits = {
    MONTHS = "MONTHS",
}

M.OfferingType = {
    NO_UPFRONT = "NO_UPFRONT",
}

M.ReservationCodec = {
    MPEG2 = "MPEG2",
    AVC = "AVC",
    HEVC = "HEVC",
    AUDIO = "AUDIO",
    LINK = "LINK",
    AV1 = "AV1",
}

M.ReservationMaximumBitrate = {
    MAX_10_MBPS = "MAX_10_MBPS",
    MAX_20_MBPS = "MAX_20_MBPS",
    MAX_50_MBPS = "MAX_50_MBPS",
}

M.ReservationMaximumFramerate = {
    MAX_30_FPS = "MAX_30_FPS",
    MAX_60_FPS = "MAX_60_FPS",
}

M.ReservationResolution = {
    SD = "SD",
    HD = "HD",
    FHD = "FHD",
    UHD = "UHD",
}

M.ReservationResourceType = {
    INPUT = "INPUT",
    OUTPUT = "OUTPUT",
    MULTIPLEX = "MULTIPLEX",
    CHANNEL = "CHANNEL",
}

M.ReservationSpecialFeature = {
    ADVANCED_AUDIO = "ADVANCED_AUDIO",
    AUDIO_NORMALIZATION = "AUDIO_NORMALIZATION",
    MGHD = "MGHD",
    MGUHD = "MGUHD",
}

M.ReservationVideoQuality = {
    STANDARD = "STANDARD",
    ENHANCED = "ENHANCED",
    PREMIUM = "PREMIUM",
}

M.M2tsAbsentInputAudioBehavior = {
    DROP = "DROP",
    ENCODE_SILENCE = "ENCODE_SILENCE",
}

M.M2tsArib = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.M2tsAribCaptionsPidControl = {
    AUTO = "AUTO",
    USE_CONFIGURED = "USE_CONFIGURED",
}

M.M2tsAudioBufferModel = {
    ATSC = "ATSC",
    DVB = "DVB",
}

M.M2tsAudioStreamType = {
    ATSC = "ATSC",
    DVB = "DVB",
}

M.M2tsBufferModel = {
    MULTIPLEX = "MULTIPLEX",
    NONE = "NONE",
}

M.M2tsCcDescriptor = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.DvbSdtOutputSdt = {
    SDT_FOLLOW = "SDT_FOLLOW",
    SDT_FOLLOW_IF_PRESENT = "SDT_FOLLOW_IF_PRESENT",
    SDT_MANUAL = "SDT_MANUAL",
    SDT_NONE = "SDT_NONE",
}

M.M2tsEbifControl = {
    NONE = "NONE",
    PASSTHROUGH = "PASSTHROUGH",
}

M.M2tsAudioInterval = {
    VIDEO_AND_FIXED_INTERVALS = "VIDEO_AND_FIXED_INTERVALS",
    VIDEO_INTERVAL = "VIDEO_INTERVAL",
}

M.M2tsEbpPlacement = {
    VIDEO_AND_AUDIO_PIDS = "VIDEO_AND_AUDIO_PIDS",
    VIDEO_PID = "VIDEO_PID",
}

M.M2tsEsRateInPes = {
    EXCLUDE = "EXCLUDE",
    INCLUDE = "INCLUDE",
}

M.M2tsKlv = {
    NONE = "NONE",
    PASSTHROUGH = "PASSTHROUGH",
}

M.M2tsNielsenId3Behavior = {
    NO_PASSTHROUGH = "NO_PASSTHROUGH",
    PASSTHROUGH = "PASSTHROUGH",
}

M.M2tsPcrControl = {
    CONFIGURED_PCR_PERIOD = "CONFIGURED_PCR_PERIOD",
    PCR_EVERY_PES_PACKET = "PCR_EVERY_PES_PACKET",
}

M.M2tsRateMode = {
    CBR = "CBR",
    VBR = "VBR",
}

M.M2tsScte35Control = {
    NONE = "NONE",
    PASSTHROUGH = "PASSTHROUGH",
}

M.M2tsSegmentationMarkers = {
    EBP = "EBP",
    EBP_LEGACY = "EBP_LEGACY",
    NONE = "NONE",
    PSI_SEGSTART = "PSI_SEGSTART",
    RAI_ADAPT = "RAI_ADAPT",
    RAI_SEGSTART = "RAI_SEGSTART",
}

M.M2tsSegmentationStyle = {
    MAINTAIN_CADENCE = "MAINTAIN_CADENCE",
    RESET_CADENCE = "RESET_CADENCE",
}

M.M2tsTimedMetadataBehavior = {
    NO_PASSTHROUGH = "NO_PASSTHROUGH",
    PASSTHROUGH = "PASSTHROUGH",
}

M.HlsH265PackagingType = {
    HEV1 = "HEV1",
    HVC1 = "HVC1",
}

M.AudioOnlyHlsTrackType = {
    ALTERNATE_AUDIO_AUTO_SELECT = "ALTERNATE_AUDIO_AUTO_SELECT",
    ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT = "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT",
    ALTERNATE_AUDIO_NOT_AUTO_SELECT = "ALTERNATE_AUDIO_NOT_AUTO_SELECT",
    AUDIO_ONLY_VARIANT_STREAM = "AUDIO_ONLY_VARIANT_STREAM",
}

M.AudioOnlyHlsSegmentType = {
    AAC = "AAC",
    FMP4 = "FMP4",
}

M.Fmp4NielsenId3Behavior = {
    NO_PASSTHROUGH = "NO_PASSTHROUGH",
    PASSTHROUGH = "PASSTHROUGH",
}

M.Fmp4TimedMetadataBehavior = {
    NO_PASSTHROUGH = "NO_PASSTHROUGH",
    PASSTHROUGH = "PASSTHROUGH",
}

M.M3u8KlvBehavior = {
    NO_PASSTHROUGH = "NO_PASSTHROUGH",
    PASSTHROUGH = "PASSTHROUGH",
}

M.M3u8NielsenId3Behavior = {
    NO_PASSTHROUGH = "NO_PASSTHROUGH",
    PASSTHROUGH = "PASSTHROUGH",
}

M.M3u8PcrControl = {
    CONFIGURED_PCR_PERIOD = "CONFIGURED_PCR_PERIOD",
    PCR_EVERY_PES_PACKET = "PCR_EVERY_PES_PACKET",
}

M.M3u8Scte35Behavior = {
    NO_PASSTHROUGH = "NO_PASSTHROUGH",
    PASSTHROUGH = "PASSTHROUGH",
}

M.M3u8TimedMetadataBehavior = {
    NO_PASSTHROUGH = "NO_PASSTHROUGH",
    PASSTHROUGH = "PASSTHROUGH",
}

M.HlsAutoSelect = {
    NO = "NO",
    OMIT = "OMIT",
    YES = "YES",
}

M.HlsDefault = {
    NO = "NO",
    OMIT = "OMIT",
    YES = "YES",
}

M.MsSmoothH265PackagingType = {
    HEV1 = "HEV1",
    HVC1 = "HVC1",
}

M.RtmpOutputCertificateMode = {
    SELF_SIGNED = "SELF_SIGNED",
    VERIFY_AUTHENTICITY = "VERIFY_AUTHENTICITY",
}

M.SrtEncryptionType = {
    AES128 = "AES128",
    AES192 = "AES192",
    AES256 = "AES256",
}

M.FecOutputIncludeFec = {
    COLUMN = "COLUMN",
    COLUMN_AND_ROW = "COLUMN_AND_ROW",
}

M.S3CannedAcl = {
    AUTHENTICATED_READ = "AUTHENTICATED_READ",
    BUCKET_OWNER_FULL_CONTROL = "BUCKET_OWNER_FULL_CONTROL",
    BUCKET_OWNER_READ = "BUCKET_OWNER_READ",
    PUBLIC_READ = "PUBLIC_READ",
}

M.CmafId3Behavior = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.CmafKLVBehavior = {
    NO_PASSTHROUGH = "NO_PASSTHROUGH",
    PASSTHROUGH = "PASSTHROUGH",
}

M.CmafNielsenId3Behavior = {
    NO_PASSTHROUGH = "NO_PASSTHROUGH",
    PASSTHROUGH = "PASSTHROUGH",
}

M.Scte35Type = {
    NONE = "NONE",
    SCTE_35_WITHOUT_SEGMENTATION = "SCTE_35_WITHOUT_SEGMENTATION",
}

M.CmafIngestSegmentLengthUnits = {
    MILLISECONDS = "MILLISECONDS",
    SECONDS = "SECONDS",
}

M.CmafTimedMetadataId3Frame = {
    NONE = "NONE",
    PRIV = "PRIV",
    TDRL = "TDRL",
}

M.CmafTimedMetadataPassthrough = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.HlsCaptionLanguageSetting = {
    INSERT = "INSERT",
    NONE = "NONE",
    OMIT = "OMIT",
}

M.HlsClientCache = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.HlsCodecSpecification = {
    RFC_4281 = "RFC_4281",
    RFC_6381 = "RFC_6381",
}

M.HlsDirectoryStructure = {
    SINGLE_DIRECTORY = "SINGLE_DIRECTORY",
    SUBDIRECTORY_PER_STREAM = "SUBDIRECTORY_PER_STREAM",
}

M.HlsDiscontinuityTags = {
    INSERT = "INSERT",
    NEVER_INSERT = "NEVER_INSERT",
}

M.HlsEncryptionType = {
    AES128 = "AES128",
    SAMPLE_AES = "SAMPLE_AES",
}

M.HlsAkamaiHttpTransferMode = {
    CHUNKED = "CHUNKED",
    NON_CHUNKED = "NON_CHUNKED",
}

M.HlsMediaStoreStorageClass = {
    TEMPORAL = "TEMPORAL",
}

M.HlsWebdavHttpTransferMode = {
    CHUNKED = "CHUNKED",
    NON_CHUNKED = "NON_CHUNKED",
}

M.HlsId3SegmentTaggingState = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.IFrameOnlyPlaylistType = {
    DISABLED = "DISABLED",
    STANDARD = "STANDARD",
}

M.HlsIncompleteSegmentBehavior = {
    AUTO = "AUTO",
    SUPPRESS = "SUPPRESS",
}

M.InputLossActionForHlsOut = {
    EMIT_OUTPUT = "EMIT_OUTPUT",
    PAUSE_OUTPUT = "PAUSE_OUTPUT",
}

M.HlsIvInManifest = {
    EXCLUDE = "EXCLUDE",
    INCLUDE = "INCLUDE",
}

M.HlsIvSource = {
    EXPLICIT = "EXPLICIT",
    FOLLOWS_SEGMENT_NUMBER = "FOLLOWS_SEGMENT_NUMBER",
}

M.HlsManifestCompression = {
    GZIP = "GZIP",
    NONE = "NONE",
}

M.HlsManifestDurationFormat = {
    FLOATING_POINT = "FLOATING_POINT",
    INTEGER = "INTEGER",
}

M.HlsMode = {
    LIVE = "LIVE",
    VOD = "VOD",
}

M.HlsOutputSelection = {
    MANIFESTS_AND_SEGMENTS = "MANIFESTS_AND_SEGMENTS",
    SEGMENTS_ONLY = "SEGMENTS_ONLY",
    VARIANT_MANIFESTS_AND_SEGMENTS = "VARIANT_MANIFESTS_AND_SEGMENTS",
}

M.HlsProgramDateTime = {
    EXCLUDE = "EXCLUDE",
    INCLUDE = "INCLUDE",
}

M.HlsProgramDateTimeClock = {
    INITIALIZE_FROM_OUTPUT_TIMECODE = "INITIALIZE_FROM_OUTPUT_TIMECODE",
    SYSTEM_CLOCK = "SYSTEM_CLOCK",
}

M.HlsRedundantManifest = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.HlsSegmentationMode = {
    USE_INPUT_SEGMENTATION = "USE_INPUT_SEGMENTATION",
    USE_SEGMENT_DURATION = "USE_SEGMENT_DURATION",
}

M.HlsStreamInfResolution = {
    EXCLUDE = "EXCLUDE",
    INCLUDE = "INCLUDE",
}

M.HlsTimedMetadataId3Frame = {
    NONE = "NONE",
    PRIV = "PRIV",
    TDRL = "TDRL",
}

M.HlsTsFileMode = {
    SEGMENTED_FILES = "SEGMENTED_FILES",
    SINGLE_FILE = "SINGLE_FILE",
}

M.SmoothGroupAudioOnlyTimecodeControl = {
    PASSTHROUGH = "PASSTHROUGH",
    USE_CONFIGURED_CLOCK = "USE_CONFIGURED_CLOCK",
}

M.SmoothGroupCertificateMode = {
    SELF_SIGNED = "SELF_SIGNED",
    VERIFY_AUTHENTICITY = "VERIFY_AUTHENTICITY",
}

M.SmoothGroupEventIdMode = {
    NO_EVENT_ID = "NO_EVENT_ID",
    USE_CONFIGURED = "USE_CONFIGURED",
    USE_TIMESTAMP = "USE_TIMESTAMP",
}

M.SmoothGroupEventStopBehavior = {
    NONE = "NONE",
    SEND_EOS = "SEND_EOS",
}

M.InputLossActionForMsSmoothOut = {
    EMIT_OUTPUT = "EMIT_OUTPUT",
    PAUSE_OUTPUT = "PAUSE_OUTPUT",
}

M.SmoothGroupSegmentationMode = {
    USE_INPUT_SEGMENTATION = "USE_INPUT_SEGMENTATION",
    USE_SEGMENT_DURATION = "USE_SEGMENT_DURATION",
}

M.SmoothGroupSparseTrackType = {
    NONE = "NONE",
    SCTE_35 = "SCTE_35",
    SCTE_35_WITHOUT_SEGMENTATION = "SCTE_35_WITHOUT_SEGMENTATION",
}

M.SmoothGroupStreamManifestBehavior = {
    DO_NOT_SEND = "DO_NOT_SEND",
    SEND = "SEND",
}

M.SmoothGroupTimestampOffsetMode = {
    USE_CONFIGURED_OFFSET = "USE_CONFIGURED_OFFSET",
    USE_EVENT_START_DATE = "USE_EVENT_START_DATE",
}

M.RtmpAdMarkers = {
    ON_CUE_POINT_SCTE35 = "ON_CUE_POINT_SCTE35",
}

M.AuthenticationScheme = {
    AKAMAI = "AKAMAI",
    COMMON = "COMMON",
}

M.RtmpCacheFullBehavior = {
    DISCONNECT_IMMEDIATELY = "DISCONNECT_IMMEDIATELY",
    WAIT_FOR_SERVER = "WAIT_FOR_SERVER",
}

M.RtmpCaptionData = {
    ALL = "ALL",
    FIELD1_608 = "FIELD1_608",
    FIELD1_AND_FIELD2_608 = "FIELD1_AND_FIELD2_608",
}

M.IncludeFillerNalUnits = {
    AUTO = "AUTO",
    DROP = "DROP",
    INCLUDE = "INCLUDE",
}

M.InputLossActionForRtmpOut = {
    EMIT_OUTPUT = "EMIT_OUTPUT",
    PAUSE_OUTPUT = "PAUSE_OUTPUT",
}

M.InputLossActionForUdpOut = {
    DROP_PROGRAM = "DROP_PROGRAM",
    DROP_TS = "DROP_TS",
    EMIT_PROGRAM = "EMIT_PROGRAM",
}

M.UdpTimedMetadataId3Frame = {
    NONE = "NONE",
    PRIV = "PRIV",
    TDRL = "TDRL",
}

M.PipelineId = {
    PIPELINE_0 = "PIPELINE_0",
    PIPELINE_1 = "PIPELINE_1",
}

M.ReservationAutomaticRenewal = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
    UNAVAILABLE = "UNAVAILABLE",
}

M.ReservationState = {
    ACTIVE = "ACTIVE",
    EXPIRED = "EXPIRED",
    CANCELED = "CANCELED",
    DELETED = "DELETED",
}

M.InputTimecodeSource = {
    ZEROBASED = "ZEROBASED",
    EMBEDDED = "EMBEDDED",
}

M.LastFrameClippingBehavior = {
    EXCLUDE_LAST_FRAME = "EXCLUDE_LAST_FRAME",
    INCLUDE_LAST_FRAME = "INCLUDE_LAST_FRAME",
}

M.Scte35InputMode = {
    FIXED = "FIXED",
    FOLLOW_ACTIVE = "FOLLOW_ACTIVE",
}

M.Scte35ArchiveAllowedFlag = {
    ARCHIVE_NOT_ALLOWED = "ARCHIVE_NOT_ALLOWED",
    ARCHIVE_ALLOWED = "ARCHIVE_ALLOWED",
}

M.Scte35DeviceRestrictions = {
    NONE = "NONE",
    RESTRICT_GROUP0 = "RESTRICT_GROUP0",
    RESTRICT_GROUP1 = "RESTRICT_GROUP1",
    RESTRICT_GROUP2 = "RESTRICT_GROUP2",
}

M.Scte35NoRegionalBlackoutFlag = {
    REGIONAL_BLACKOUT = "REGIONAL_BLACKOUT",
    NO_REGIONAL_BLACKOUT = "NO_REGIONAL_BLACKOUT",
}

M.Scte35WebDeliveryAllowedFlag = {
    WEB_DELIVERY_NOT_ALLOWED = "WEB_DELIVERY_NOT_ALLOWED",
    WEB_DELIVERY_ALLOWED = "WEB_DELIVERY_ALLOWED",
}

M.Scte35SegmentationCancelIndicator = {
    SEGMENTATION_EVENT_NOT_CANCELED = "SEGMENTATION_EVENT_NOT_CANCELED",
    SEGMENTATION_EVENT_CANCELED = "SEGMENTATION_EVENT_CANCELED",
}

M.FollowPoint = {
    END = "END",
    START = "START",
}

M.SdiSourceMode = {
    QUADRANT = "QUADRANT",
    INTERLEAVE = "INTERLEAVE",
}

M.SdiSourceState = {
    IDLE = "IDLE",
    IN_USE = "IN_USE",
    DELETED = "DELETED",
}

M.SdiSourceType = {
    SINGLE = "SINGLE",
    QUAD = "QUAD",
}

M.SignalMapMonitorDeploymentStatus = {
    NOT_DEPLOYED = "NOT_DEPLOYED",
    DRY_RUN_DEPLOYMENT_COMPLETE = "DRY_RUN_DEPLOYMENT_COMPLETE",
    DRY_RUN_DEPLOYMENT_FAILED = "DRY_RUN_DEPLOYMENT_FAILED",
    DRY_RUN_DEPLOYMENT_IN_PROGRESS = "DRY_RUN_DEPLOYMENT_IN_PROGRESS",
    DEPLOYMENT_COMPLETE = "DEPLOYMENT_COMPLETE",
    DEPLOYMENT_FAILED = "DEPLOYMENT_FAILED",
    DEPLOYMENT_IN_PROGRESS = "DEPLOYMENT_IN_PROGRESS",
    DELETE_COMPLETE = "DELETE_COMPLETE",
    DELETE_FAILED = "DELETE_FAILED",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
}

M.SignalMapStatus = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_COMPLETE = "CREATE_COMPLETE",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    UPDATE_COMPLETE = "UPDATE_COMPLETE",
    UPDATE_REVERTED = "UPDATE_REVERTED",
    UPDATE_FAILED = "UPDATE_FAILED",
    READY = "READY",
    NOT_READY = "NOT_READY",
}

M.ThumbnailType = {
    UNSPECIFIED = "UNSPECIFIED",
    CURRENT_ACTIVE = "CURRENT_ACTIVE",
}

M.InputDeviceTransferType = {
    OUTGOING = "OUTGOING",
    INCOMING = "INCOMING",
}

M.AfdSignaling = {
    AUTO = "AUTO",
    FIXED = "FIXED",
    NONE = "NONE",
}

M.Av1BitDepth = {
    DEPTH_10 = "DEPTH_10",
    DEPTH_8 = "DEPTH_8",
}

M.FixedAfd = {
    AFD_0000 = "AFD_0000",
    AFD_0010 = "AFD_0010",
    AFD_0011 = "AFD_0011",
    AFD_0100 = "AFD_0100",
    AFD_1000 = "AFD_1000",
    AFD_1001 = "AFD_1001",
    AFD_1010 = "AFD_1010",
    AFD_1011 = "AFD_1011",
    AFD_1101 = "AFD_1101",
    AFD_1110 = "AFD_1110",
    AFD_1111 = "AFD_1111",
}

M.Av1GopSizeUnits = {
    FRAMES = "FRAMES",
    SECONDS = "SECONDS",
}

M.Av1Level = {
    AV1_LEVEL_2 = "AV1_LEVEL_2",
    AV1_LEVEL_2_1 = "AV1_LEVEL_2_1",
    AV1_LEVEL_3 = "AV1_LEVEL_3",
    AV1_LEVEL_3_1 = "AV1_LEVEL_3_1",
    AV1_LEVEL_4 = "AV1_LEVEL_4",
    AV1_LEVEL_4_1 = "AV1_LEVEL_4_1",
    AV1_LEVEL_5 = "AV1_LEVEL_5",
    AV1_LEVEL_5_1 = "AV1_LEVEL_5_1",
    AV1_LEVEL_5_2 = "AV1_LEVEL_5_2",
    AV1_LEVEL_5_3 = "AV1_LEVEL_5_3",
    AV1_LEVEL_6 = "AV1_LEVEL_6",
    AV1_LEVEL_6_1 = "AV1_LEVEL_6_1",
    AV1_LEVEL_6_2 = "AV1_LEVEL_6_2",
    AV1_LEVEL_6_3 = "AV1_LEVEL_6_3",
    AV1_LEVEL_AUTO = "AV1_LEVEL_AUTO",
}

M.Av1LookAheadRateControl = {
    HIGH = "HIGH",
    LOW = "LOW",
    MEDIUM = "MEDIUM",
}

M.Av1RateControlMode = {
    CBR = "CBR",
    QVBR = "QVBR",
}

M.Av1SceneChangeDetect = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.Av1SpatialAq = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.Av1TemporalAq = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.TimecodeBurninFontSize = {
    EXTRA_SMALL_10 = "EXTRA_SMALL_10",
    LARGE_48 = "LARGE_48",
    MEDIUM_32 = "MEDIUM_32",
    SMALL_16 = "SMALL_16",
}

M.TimecodeBurninPosition = {
    BOTTOM_CENTER = "BOTTOM_CENTER",
    BOTTOM_LEFT = "BOTTOM_LEFT",
    BOTTOM_RIGHT = "BOTTOM_RIGHT",
    MIDDLE_CENTER = "MIDDLE_CENTER",
    MIDDLE_LEFT = "MIDDLE_LEFT",
    MIDDLE_RIGHT = "MIDDLE_RIGHT",
    TOP_CENTER = "TOP_CENTER",
    TOP_LEFT = "TOP_LEFT",
    TOP_RIGHT = "TOP_RIGHT",
}

M.Av1TimecodeInsertionBehavior = {
    DISABLED = "DISABLED",
    METADATA_OBU = "METADATA_OBU",
}

M.FrameCaptureIntervalUnit = {
    MILLISECONDS = "MILLISECONDS",
    SECONDS = "SECONDS",
}

M.H264AdaptiveQuantization = {
    AUTO = "AUTO",
    HIGH = "HIGH",
    HIGHER = "HIGHER",
    LOW = "LOW",
    MAX = "MAX",
    MEDIUM = "MEDIUM",
    OFF = "OFF",
}

M.H264ColorMetadata = {
    IGNORE = "IGNORE",
    INSERT = "INSERT",
}

M.H264EntropyEncoding = {
    CABAC = "CABAC",
    CAVLC = "CAVLC",
}

M.BandwidthReductionPostFilterSharpening = {
    DISABLED = "DISABLED",
    SHARPENING_1 = "SHARPENING_1",
    SHARPENING_2 = "SHARPENING_2",
    SHARPENING_3 = "SHARPENING_3",
}

M.BandwidthReductionFilterStrength = {
    AUTO = "AUTO",
    STRENGTH_1 = "STRENGTH_1",
    STRENGTH_2 = "STRENGTH_2",
    STRENGTH_3 = "STRENGTH_3",
    STRENGTH_4 = "STRENGTH_4",
}

M.TemporalFilterPostFilterSharpening = {
    AUTO = "AUTO",
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.TemporalFilterStrength = {
    AUTO = "AUTO",
    STRENGTH_1 = "STRENGTH_1",
    STRENGTH_2 = "STRENGTH_2",
    STRENGTH_3 = "STRENGTH_3",
    STRENGTH_4 = "STRENGTH_4",
    STRENGTH_5 = "STRENGTH_5",
    STRENGTH_6 = "STRENGTH_6",
    STRENGTH_7 = "STRENGTH_7",
    STRENGTH_8 = "STRENGTH_8",
    STRENGTH_9 = "STRENGTH_9",
    STRENGTH_10 = "STRENGTH_10",
    STRENGTH_11 = "STRENGTH_11",
    STRENGTH_12 = "STRENGTH_12",
    STRENGTH_13 = "STRENGTH_13",
    STRENGTH_14 = "STRENGTH_14",
    STRENGTH_15 = "STRENGTH_15",
    STRENGTH_16 = "STRENGTH_16",
}

M.H264FlickerAq = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.H264ForceFieldPictures = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.H264FramerateControl = {
    INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE",
    SPECIFIED = "SPECIFIED",
}

M.H264GopBReference = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.H264GopSizeUnits = {
    FRAMES = "FRAMES",
    SECONDS = "SECONDS",
}

M.H264Level = {
    H264_LEVEL_1 = "H264_LEVEL_1",
    H264_LEVEL_1_1 = "H264_LEVEL_1_1",
    H264_LEVEL_1_2 = "H264_LEVEL_1_2",
    H264_LEVEL_1_3 = "H264_LEVEL_1_3",
    H264_LEVEL_2 = "H264_LEVEL_2",
    H264_LEVEL_2_1 = "H264_LEVEL_2_1",
    H264_LEVEL_2_2 = "H264_LEVEL_2_2",
    H264_LEVEL_3 = "H264_LEVEL_3",
    H264_LEVEL_3_1 = "H264_LEVEL_3_1",
    H264_LEVEL_3_2 = "H264_LEVEL_3_2",
    H264_LEVEL_4 = "H264_LEVEL_4",
    H264_LEVEL_4_1 = "H264_LEVEL_4_1",
    H264_LEVEL_4_2 = "H264_LEVEL_4_2",
    H264_LEVEL_5 = "H264_LEVEL_5",
    H264_LEVEL_5_1 = "H264_LEVEL_5_1",
    H264_LEVEL_5_2 = "H264_LEVEL_5_2",
    H264_LEVEL_AUTO = "H264_LEVEL_AUTO",
}

M.H264LookAheadRateControl = {
    HIGH = "HIGH",
    LOW = "LOW",
    MEDIUM = "MEDIUM",
}

M.H264ParControl = {
    INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE",
    SPECIFIED = "SPECIFIED",
}

M.H264Profile = {
    BASELINE = "BASELINE",
    HIGH = "HIGH",
    HIGH_10BIT = "HIGH_10BIT",
    HIGH_422 = "HIGH_422",
    HIGH_422_10BIT = "HIGH_422_10BIT",
    MAIN = "MAIN",
}

M.H264QualityLevel = {
    ENHANCED_QUALITY = "ENHANCED_QUALITY",
    STANDARD_QUALITY = "STANDARD_QUALITY",
}

M.H264RateControlMode = {
    CBR = "CBR",
    MULTIPLEX = "MULTIPLEX",
    QVBR = "QVBR",
    VBR = "VBR",
}

M.H264ScanType = {
    INTERLACED = "INTERLACED",
    PROGRESSIVE = "PROGRESSIVE",
}

M.H264SceneChangeDetect = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.H264SpatialAq = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.H264SubGopLength = {
    DYNAMIC = "DYNAMIC",
    FIXED = "FIXED",
}

M.H264Syntax = {
    DEFAULT = "DEFAULT",
    RP2027 = "RP2027",
}

M.H264TemporalAq = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.H264TimecodeInsertionBehavior = {
    DISABLED = "DISABLED",
    PIC_TIMING_SEI = "PIC_TIMING_SEI",
}

M.H265AdaptiveQuantization = {
    AUTO = "AUTO",
    HIGH = "HIGH",
    HIGHER = "HIGHER",
    LOW = "LOW",
    MAX = "MAX",
    MEDIUM = "MEDIUM",
    OFF = "OFF",
}

M.H265AlternativeTransferFunction = {
    INSERT = "INSERT",
    OMIT = "OMIT",
}

M.H265ColorMetadata = {
    IGNORE = "IGNORE",
    INSERT = "INSERT",
}

M.H265Deblocking = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.H265FlickerAq = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.H265GopBReference = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.H265GopSizeUnits = {
    FRAMES = "FRAMES",
    SECONDS = "SECONDS",
}

M.H265Level = {
    H265_LEVEL_1 = "H265_LEVEL_1",
    H265_LEVEL_2 = "H265_LEVEL_2",
    H265_LEVEL_2_1 = "H265_LEVEL_2_1",
    H265_LEVEL_3 = "H265_LEVEL_3",
    H265_LEVEL_3_1 = "H265_LEVEL_3_1",
    H265_LEVEL_4 = "H265_LEVEL_4",
    H265_LEVEL_4_1 = "H265_LEVEL_4_1",
    H265_LEVEL_5 = "H265_LEVEL_5",
    H265_LEVEL_5_1 = "H265_LEVEL_5_1",
    H265_LEVEL_5_2 = "H265_LEVEL_5_2",
    H265_LEVEL_6 = "H265_LEVEL_6",
    H265_LEVEL_6_1 = "H265_LEVEL_6_1",
    H265_LEVEL_6_2 = "H265_LEVEL_6_2",
    H265_LEVEL_AUTO = "H265_LEVEL_AUTO",
}

M.H265LookAheadRateControl = {
    HIGH = "HIGH",
    LOW = "LOW",
    MEDIUM = "MEDIUM",
}

M.H265MvOverPictureBoundaries = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.H265MvTemporalPredictor = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.H265Profile = {
    MAIN = "MAIN",
    MAIN_10BIT = "MAIN_10BIT",
}

M.H265RateControlMode = {
    CBR = "CBR",
    MULTIPLEX = "MULTIPLEX",
    QVBR = "QVBR",
}

M.H265ScanType = {
    INTERLACED = "INTERLACED",
    PROGRESSIVE = "PROGRESSIVE",
}

M.H265SceneChangeDetect = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.H265SubGopLength = {
    DYNAMIC = "DYNAMIC",
    FIXED = "FIXED",
}

M.H265Tier = {
    HIGH = "HIGH",
    MAIN = "MAIN",
}

M.H265TilePadding = {
    NONE = "NONE",
    PADDED = "PADDED",
}

M.H265TimecodeInsertionBehavior = {
    DISABLED = "DISABLED",
    PIC_TIMING_SEI = "PIC_TIMING_SEI",
}

M.H265TreeblockSize = {
    AUTO = "AUTO",
    TREE_SIZE_32X32 = "TREE_SIZE_32X32",
}

M.Mpeg2AdaptiveQuantization = {
    AUTO = "AUTO",
    HIGH = "HIGH",
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    OFF = "OFF",
}

M.Mpeg2ColorMetadata = {
    IGNORE = "IGNORE",
    INSERT = "INSERT",
}

M.Mpeg2ColorSpace = {
    AUTO = "AUTO",
    PASSTHROUGH = "PASSTHROUGH",
}

M.Mpeg2DisplayRatio = {
    DISPLAYRATIO16X9 = "DISPLAYRATIO16X9",
    DISPLAYRATIO4X3 = "DISPLAYRATIO4X3",
}

M.Mpeg2GopSizeUnits = {
    FRAMES = "FRAMES",
    SECONDS = "SECONDS",
}

M.Mpeg2ScanType = {
    INTERLACED = "INTERLACED",
    PROGRESSIVE = "PROGRESSIVE",
}

M.Mpeg2SubGopLength = {
    DYNAMIC = "DYNAMIC",
    FIXED = "FIXED",
}

M.Mpeg2TimecodeInsertionBehavior = {
    DISABLED = "DISABLED",
    GOP_TIMECODE = "GOP_TIMECODE",
}

M.VideoDescriptionRespondToAfd = {
    NONE = "NONE",
    PASSTHROUGH = "PASSTHROUGH",
    RESPOND = "RESPOND",
}

M.VideoDescriptionScalingBehavior = {
    DEFAULT = "DEFAULT",
    STRETCH_TO_OUTPUT = "STRETCH_TO_OUTPUT",
    SMART_CROP = "SMART_CROP",
}

M.AcceptHeader = {
    image_jpeg = "image/jpeg",
}

M.AvailBlankingState = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.Scte35SpliceInsertNoRegionalBlackoutBehavior = {
    FOLLOW = "FOLLOW",
    IGNORE = "IGNORE",
}

M.Scte35SpliceInsertWebDeliveryAllowedBehavior = {
    FOLLOW = "FOLLOW",
    IGNORE = "IGNORE",
}

M.Scte35AposNoRegionalBlackoutBehavior = {
    FOLLOW = "FOLLOW",
    IGNORE = "IGNORE",
}

M.Scte35AposWebDeliveryAllowedBehavior = {
    FOLLOW = "FOLLOW",
    IGNORE = "IGNORE",
}

M.Scte35SegmentationScope = {
    ALL_OUTPUT_GROUPS = "ALL_OUTPUT_GROUPS",
    SCTE35_ENABLED_OUTPUT_GROUPS = "SCTE35_ENABLED_OUTPUT_GROUPS",
}

M.BlackoutSlateNetworkEndBlackout = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.BlackoutSlateState = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.FeatureActivationsInputPrepareScheduleActions = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.FeatureActivationsOutputStaticImageOverlayScheduleActions = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.GlobalConfigurationInputEndAction = {
    NONE = "NONE",
    SWITCH_AND_LOOP_INPUTS = "SWITCH_AND_LOOP_INPUTS",
}

M.InputLossImageType = {
    COLOR = "COLOR",
    SLATE = "SLATE",
}

M.GlobalConfigurationOutputLockingMode = {
    EPOCH_LOCKING = "EPOCH_LOCKING",
    PIPELINE_LOCKING = "PIPELINE_LOCKING",
    DISABLED = "DISABLED",
}

M.PipelineLockingMethod = {
    SOURCE_TIMECODE = "SOURCE_TIMECODE",
    VIDEO_ALIGNMENT = "VIDEO_ALIGNMENT",
}

M.GlobalConfigurationOutputTimingSource = {
    INPUT_CLOCK = "INPUT_CLOCK",
    SYSTEM_CLOCK = "SYSTEM_CLOCK",
}

M.GlobalConfigurationLowFramerateInputs = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.MotionGraphicsInsertion = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.NielsenPcmToId3TaggingState = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.ThumbnailState = {
    AUTO = "AUTO",
    DISABLED = "DISABLED",
}

M.TimecodeConfigSource = {
    EMBEDDED = "EMBEDDED",
    SYSTEMCLOCK = "SYSTEMCLOCK",
    ZEROBASED = "ZEROBASED",
}

M.ContentType = {
    image_jpeg = "image/jpeg",
}

M.PreferredChannelPipeline = {
    CURRENTLY_ACTIVE = "CURRENTLY_ACTIVE",
    PIPELINE_0 = "PIPELINE_0",
    PIPELINE_1 = "PIPELINE_1",
}

M.RebootInputDeviceForce = {
    NO = "NO",
    YES = "YES",
}

M.UpdateNodeStateShape = {
    ACTIVE = "ACTIVE",
    DRAINING = "DRAINING",
}

return M
