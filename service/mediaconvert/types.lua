local M = {}

M.RequiredFlag = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AudioChannelTag = {
    L = "L",
    R = "R",
    C = "C",
    LFE = "LFE",
    LS = "LS",
    RS = "RS",
    LC = "LC",
    RC = "RC",
    CS = "CS",
    LSD = "LSD",
    RSD = "RSD",
    TCS = "TCS",
    VHL = "VHL",
    VHC = "VHC",
    VHR = "VHR",
    TBL = "TBL",
    TBC = "TBC",
    TBR = "TBR",
    RSL = "RSL",
    RSR = "RSR",
    LW = "LW",
    RW = "RW",
    LFE2 = "LFE2",
    LT = "LT",
    RT = "RT",
    HI = "HI",
    NAR = "NAR",
    M = "M",
}

M.AudioNormalizationAlgorithm = {
    ITU_BS_1770_1 = "ITU_BS_1770_1",
    ITU_BS_1770_2 = "ITU_BS_1770_2",
    ITU_BS_1770_3 = "ITU_BS_1770_3",
    ITU_BS_1770_4 = "ITU_BS_1770_4",
}

M.AudioNormalizationAlgorithmControl = {
    CORRECT_AUDIO = "CORRECT_AUDIO",
    MEASURE_ONLY = "MEASURE_ONLY",
}

M.AudioNormalizationLoudnessLogging = {
    LOG = "LOG",
    DONT_LOG = "DONT_LOG",
}

M.AudioNormalizationPeakCalculation = {
    TRUE_PEAK = "TRUE_PEAK",
    NONE = "NONE",
}

M.SlowPalPitchCorrection = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.AudioTypeControl = {
    FOLLOW_INPUT = "FOLLOW_INPUT",
    USE_CONFIGURED = "USE_CONFIGURED",
}

M.AacAudioDescriptionBroadcasterMix = {
    BROADCASTER_MIXED_AD = "BROADCASTER_MIXED_AD",
    NORMAL = "NORMAL",
}

M.AacCodecProfile = {
    LC = "LC",
    HEV1 = "HEV1",
    HEV2 = "HEV2",
    XHE = "XHE",
}

M.AacCodingMode = {
    AD_RECEIVER_MIX = "AD_RECEIVER_MIX",
    CODING_MODE_1_0 = "CODING_MODE_1_0",
    CODING_MODE_1_1 = "CODING_MODE_1_1",
    CODING_MODE_2_0 = "CODING_MODE_2_0",
    CODING_MODE_5_1 = "CODING_MODE_5_1",
    CODING_MODE_AUTO = "CODING_MODE_AUTO",
}

M.AacLoudnessMeasurementMode = {
    PROGRAM = "PROGRAM",
    ANCHOR = "ANCHOR",
}

M.AacRateControlMode = {
    CBR = "CBR",
    VBR = "VBR",
}

M.AacRawFormat = {
    LATM_LOAS = "LATM_LOAS",
    NONE = "NONE",
}

M.AacSpecification = {
    MPEG2 = "MPEG2",
    MPEG4 = "MPEG4",
}

M.AacVbrQuality = {
    LOW = "LOW",
    MEDIUM_LOW = "MEDIUM_LOW",
    MEDIUM_HIGH = "MEDIUM_HIGH",
    HIGH = "HIGH",
}

M.Ac3BitstreamMode = {
    COMPLETE_MAIN = "COMPLETE_MAIN",
    COMMENTARY = "COMMENTARY",
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
    CODING_MODE_AUTO = "CODING_MODE_AUTO",
}

M.Ac3DynamicRangeCompressionLine = {
    FILM_STANDARD = "FILM_STANDARD",
    FILM_LIGHT = "FILM_LIGHT",
    MUSIC_STANDARD = "MUSIC_STANDARD",
    MUSIC_LIGHT = "MUSIC_LIGHT",
    SPEECH = "SPEECH",
    NONE = "NONE",
}

M.Ac3DynamicRangeCompressionProfile = {
    FILM_STANDARD = "FILM_STANDARD",
    NONE = "NONE",
}

M.Ac3DynamicRangeCompressionRf = {
    FILM_STANDARD = "FILM_STANDARD",
    FILM_LIGHT = "FILM_LIGHT",
    MUSIC_STANDARD = "MUSIC_STANDARD",
    MUSIC_LIGHT = "MUSIC_LIGHT",
    SPEECH = "SPEECH",
    NONE = "NONE",
}

M.Ac3LfeFilter = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.Ac3MetadataControl = {
    FOLLOW_INPUT = "FOLLOW_INPUT",
    USE_CONFIGURED = "USE_CONFIGURED",
}

M.Ac4BitstreamMode = {
    COMPLETE_MAIN = "COMPLETE_MAIN",
    EMERGENCY = "EMERGENCY",
}

M.Ac4CodingMode = {
    CODING_MODE_2_0 = "CODING_MODE_2_0",
    CODING_MODE_3_2_LFE = "CODING_MODE_3_2_LFE",
    CODING_MODE_5_1_4 = "CODING_MODE_5_1_4",
}

M.Ac4DynamicRangeCompressionDrcProfile = {
    NONE = "NONE",
    FILM_STANDARD = "FILM_STANDARD",
    FILM_LIGHT = "FILM_LIGHT",
    MUSIC_STANDARD = "MUSIC_STANDARD",
    MUSIC_LIGHT = "MUSIC_LIGHT",
    SPEECH = "SPEECH",
}

M.Ac4StereoDownmix = {
    NOT_INDICATED = "NOT_INDICATED",
    LO_RO = "LO_RO",
    LT_RT = "LT_RT",
    DPL2 = "DPL2",
}

M.AudioCodec = {
    AAC = "AAC",
    MP2 = "MP2",
    MP3 = "MP3",
    WAV = "WAV",
    AIFF = "AIFF",
    AC3 = "AC3",
    AC4 = "AC4",
    EAC3 = "EAC3",
    EAC3_ATMOS = "EAC3_ATMOS",
    VORBIS = "VORBIS",
    OPUS = "OPUS",
    PASSTHROUGH = "PASSTHROUGH",
    FLAC = "FLAC",
}

M.Eac3AtmosBitstreamMode = {
    COMPLETE_MAIN = "COMPLETE_MAIN",
}

M.Eac3AtmosCodingMode = {
    CODING_MODE_AUTO = "CODING_MODE_AUTO",
    CODING_MODE_5_1_4 = "CODING_MODE_5_1_4",
    CODING_MODE_7_1_4 = "CODING_MODE_7_1_4",
    CODING_MODE_9_1_6 = "CODING_MODE_9_1_6",
}

M.Eac3AtmosDialogueIntelligence = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.Eac3AtmosDownmixControl = {
    SPECIFIED = "SPECIFIED",
    INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE",
}

M.Eac3AtmosDynamicRangeCompressionLine = {
    NONE = "NONE",
    FILM_STANDARD = "FILM_STANDARD",
    FILM_LIGHT = "FILM_LIGHT",
    MUSIC_STANDARD = "MUSIC_STANDARD",
    MUSIC_LIGHT = "MUSIC_LIGHT",
    SPEECH = "SPEECH",
}

M.Eac3AtmosDynamicRangeCompressionRf = {
    NONE = "NONE",
    FILM_STANDARD = "FILM_STANDARD",
    FILM_LIGHT = "FILM_LIGHT",
    MUSIC_STANDARD = "MUSIC_STANDARD",
    MUSIC_LIGHT = "MUSIC_LIGHT",
    SPEECH = "SPEECH",
}

M.Eac3AtmosDynamicRangeControl = {
    SPECIFIED = "SPECIFIED",
    INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE",
}

M.Eac3AtmosMeteringMode = {
    LEQ_A = "LEQ_A",
    ITU_BS_1770_1 = "ITU_BS_1770_1",
    ITU_BS_1770_2 = "ITU_BS_1770_2",
    ITU_BS_1770_3 = "ITU_BS_1770_3",
    ITU_BS_1770_4 = "ITU_BS_1770_4",
}

M.Eac3AtmosStereoDownmix = {
    NOT_INDICATED = "NOT_INDICATED",
    STEREO = "STEREO",
    SURROUND = "SURROUND",
    DPL2 = "DPL2",
}

M.Eac3AtmosSurroundExMode = {
    NOT_INDICATED = "NOT_INDICATED",
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.Eac3AttenuationControl = {
    ATTENUATE_3_DB = "ATTENUATE_3_DB",
    NONE = "NONE",
}

M.Eac3BitstreamMode = {
    COMPLETE_MAIN = "COMPLETE_MAIN",
    COMMENTARY = "COMMENTARY",
    EMERGENCY = "EMERGENCY",
    HEARING_IMPAIRED = "HEARING_IMPAIRED",
    VISUALLY_IMPAIRED = "VISUALLY_IMPAIRED",
}

M.Eac3CodingMode = {
    CODING_MODE_1_0 = "CODING_MODE_1_0",
    CODING_MODE_2_0 = "CODING_MODE_2_0",
    CODING_MODE_3_2 = "CODING_MODE_3_2",
    CODING_MODE_AUTO = "CODING_MODE_AUTO",
}

M.Eac3DcFilter = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.Eac3DynamicRangeCompressionLine = {
    NONE = "NONE",
    FILM_STANDARD = "FILM_STANDARD",
    FILM_LIGHT = "FILM_LIGHT",
    MUSIC_STANDARD = "MUSIC_STANDARD",
    MUSIC_LIGHT = "MUSIC_LIGHT",
    SPEECH = "SPEECH",
}

M.Eac3DynamicRangeCompressionRf = {
    NONE = "NONE",
    FILM_STANDARD = "FILM_STANDARD",
    FILM_LIGHT = "FILM_LIGHT",
    MUSIC_STANDARD = "MUSIC_STANDARD",
    MUSIC_LIGHT = "MUSIC_LIGHT",
    SPEECH = "SPEECH",
}

M.Eac3LfeControl = {
    LFE = "LFE",
    NO_LFE = "NO_LFE",
}

M.Eac3LfeFilter = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.Eac3MetadataControl = {
    FOLLOW_INPUT = "FOLLOW_INPUT",
    USE_CONFIGURED = "USE_CONFIGURED",
}

M.Eac3PassthroughControl = {
    WHEN_POSSIBLE = "WHEN_POSSIBLE",
    NO_PASSTHROUGH = "NO_PASSTHROUGH",
}

M.Eac3PhaseControl = {
    SHIFT_90_DEGREES = "SHIFT_90_DEGREES",
    NO_SHIFT = "NO_SHIFT",
}

M.Eac3StereoDownmix = {
    NOT_INDICATED = "NOT_INDICATED",
    LO_RO = "LO_RO",
    LT_RT = "LT_RT",
    DPL2 = "DPL2",
}

M.Eac3SurroundExMode = {
    NOT_INDICATED = "NOT_INDICATED",
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.Eac3SurroundMode = {
    NOT_INDICATED = "NOT_INDICATED",
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.Mp2AudioDescriptionMix = {
    BROADCASTER_MIXED_AD = "BROADCASTER_MIXED_AD",
    NONE = "NONE",
}

M.Mp3RateControlMode = {
    CBR = "CBR",
    VBR = "VBR",
}

M.WavFormat = {
    RIFF = "RIFF",
    RF64 = "RF64",
    EXTENSIBLE = "EXTENSIBLE",
}

M.LanguageCode = {
    ENG = "ENG",
    SPA = "SPA",
    FRA = "FRA",
    DEU = "DEU",
    GER = "GER",
    ZHO = "ZHO",
    ARA = "ARA",
    HIN = "HIN",
    JPN = "JPN",
    RUS = "RUS",
    POR = "POR",
    ITA = "ITA",
    URD = "URD",
    VIE = "VIE",
    KOR = "KOR",
    PAN = "PAN",
    ABK = "ABK",
    AAR = "AAR",
    AFR = "AFR",
    AKA = "AKA",
    SQI = "SQI",
    AMH = "AMH",
    ARG = "ARG",
    HYE = "HYE",
    ASM = "ASM",
    AVA = "AVA",
    AVE = "AVE",
    AYM = "AYM",
    AZE = "AZE",
    BAM = "BAM",
    BAK = "BAK",
    EUS = "EUS",
    BEL = "BEL",
    BEN = "BEN",
    BIH = "BIH",
    BIS = "BIS",
    BOS = "BOS",
    BRE = "BRE",
    BUL = "BUL",
    MYA = "MYA",
    CAT = "CAT",
    KHM = "KHM",
    CHA = "CHA",
    CHE = "CHE",
    NYA = "NYA",
    CHU = "CHU",
    CHV = "CHV",
    COR = "COR",
    COS = "COS",
    CRE = "CRE",
    HRV = "HRV",
    CES = "CES",
    DAN = "DAN",
    DIV = "DIV",
    NLD = "NLD",
    DZO = "DZO",
    ENM = "ENM",
    EPO = "EPO",
    EST = "EST",
    EWE = "EWE",
    FAO = "FAO",
    FIJ = "FIJ",
    FIN = "FIN",
    FRM = "FRM",
    FUL = "FUL",
    GLA = "GLA",
    GLG = "GLG",
    LUG = "LUG",
    KAT = "KAT",
    ELL = "ELL",
    GRN = "GRN",
    GUJ = "GUJ",
    HAT = "HAT",
    HAU = "HAU",
    HEB = "HEB",
    HER = "HER",
    HMO = "HMO",
    HUN = "HUN",
    ISL = "ISL",
    IDO = "IDO",
    IBO = "IBO",
    IND = "IND",
    INA = "INA",
    ILE = "ILE",
    IKU = "IKU",
    IPK = "IPK",
    GLE = "GLE",
    JAV = "JAV",
    KAL = "KAL",
    KAN = "KAN",
    KAU = "KAU",
    KAS = "KAS",
    KAZ = "KAZ",
    KIK = "KIK",
    KIN = "KIN",
    KIR = "KIR",
    KOM = "KOM",
    KON = "KON",
    KUA = "KUA",
    KUR = "KUR",
    LAO = "LAO",
    LAT = "LAT",
    LAV = "LAV",
    LIM = "LIM",
    LIN = "LIN",
    LIT = "LIT",
    LUB = "LUB",
    LTZ = "LTZ",
    MKD = "MKD",
    MLG = "MLG",
    MSA = "MSA",
    MAL = "MAL",
    MLT = "MLT",
    GLV = "GLV",
    MRI = "MRI",
    MAR = "MAR",
    MAH = "MAH",
    MON = "MON",
    NAU = "NAU",
    NAV = "NAV",
    NDE = "NDE",
    NBL = "NBL",
    NDO = "NDO",
    NEP = "NEP",
    SME = "SME",
    NOR = "NOR",
    NOB = "NOB",
    NNO = "NNO",
    OCI = "OCI",
    OJI = "OJI",
    ORI = "ORI",
    ORM = "ORM",
    OSS = "OSS",
    PLI = "PLI",
    FAS = "FAS",
    POL = "POL",
    PUS = "PUS",
    QUE = "QUE",
    QAA = "QAA",
    RON = "RON",
    ROH = "ROH",
    RUN = "RUN",
    SMO = "SMO",
    SAG = "SAG",
    SAN = "SAN",
    SRD = "SRD",
    SRB = "SRB",
    SNA = "SNA",
    III = "III",
    SND = "SND",
    SIN = "SIN",
    SLK = "SLK",
    SLV = "SLV",
    SOM = "SOM",
    SOT = "SOT",
    SUN = "SUN",
    SWA = "SWA",
    SSW = "SSW",
    SWE = "SWE",
    TGL = "TGL",
    TAH = "TAH",
    TGK = "TGK",
    TAM = "TAM",
    TAT = "TAT",
    TEL = "TEL",
    THA = "THA",
    BOD = "BOD",
    TIR = "TIR",
    TON = "TON",
    TSO = "TSO",
    TSN = "TSN",
    TUR = "TUR",
    TUK = "TUK",
    TWI = "TWI",
    UIG = "UIG",
    UKR = "UKR",
    UZB = "UZB",
    VEN = "VEN",
    VOL = "VOL",
    WLN = "WLN",
    CYM = "CYM",
    FRY = "FRY",
    WOL = "WOL",
    XHO = "XHO",
    YID = "YID",
    YOR = "YOR",
    ZHA = "ZHA",
    ZUL = "ZUL",
    ORJ = "ORJ",
    QPC = "QPC",
    TNG = "TNG",
    SRP = "SRP",
}

M.AudioLanguageCodeControl = {
    FOLLOW_INPUT = "FOLLOW_INPUT",
    USE_CONFIGURED = "USE_CONFIGURED",
}

M.RuleType = {
    MIN_TOP_RENDITION_SIZE = "MIN_TOP_RENDITION_SIZE",
    MIN_BOTTOM_RENDITION_SIZE = "MIN_BOTTOM_RENDITION_SIZE",
    FORCE_INCLUDE_RENDITIONS = "FORCE_INCLUDE_RENDITIONS",
    ALLOWED_RENDITIONS = "ALLOWED_RENDITIONS",
}

M.BurninSubtitleAlignment = {
    CENTERED = "CENTERED",
    LEFT = "LEFT",
    AUTO = "AUTO",
}

M.BurninSubtitleApplyFontColor = {
    WHITE_TEXT_ONLY = "WHITE_TEXT_ONLY",
    ALL_TEXT = "ALL_TEXT",
}

M.BurninSubtitleBackgroundColor = {
    NONE = "NONE",
    BLACK = "BLACK",
    WHITE = "WHITE",
    AUTO = "AUTO",
}

M.BurninSubtitleFallbackFont = {
    BEST_MATCH = "BEST_MATCH",
    MONOSPACED_SANSSERIF = "MONOSPACED_SANSSERIF",
    MONOSPACED_SERIF = "MONOSPACED_SERIF",
    PROPORTIONAL_SANSSERIF = "PROPORTIONAL_SANSSERIF",
    PROPORTIONAL_SERIF = "PROPORTIONAL_SERIF",
}

M.BurninSubtitleFontColor = {
    WHITE = "WHITE",
    BLACK = "BLACK",
    YELLOW = "YELLOW",
    RED = "RED",
    GREEN = "GREEN",
    BLUE = "BLUE",
    HEX = "HEX",
    AUTO = "AUTO",
}

M.FontScript = {
    AUTOMATIC = "AUTOMATIC",
    HANS = "HANS",
    HANT = "HANT",
}

M.BurninSubtitleOutlineColor = {
    BLACK = "BLACK",
    WHITE = "WHITE",
    YELLOW = "YELLOW",
    RED = "RED",
    GREEN = "GREEN",
    BLUE = "BLUE",
    AUTO = "AUTO",
}

M.RemoveRubyReserveAttributes = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.BurninSubtitleShadowColor = {
    NONE = "NONE",
    BLACK = "BLACK",
    WHITE = "WHITE",
    AUTO = "AUTO",
}

M.BurnInSubtitleStylePassthrough = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.BurninSubtitleTeletextSpacing = {
    FIXED_GRID = "FIXED_GRID",
    PROPORTIONAL = "PROPORTIONAL",
    AUTO = "AUTO",
}

M.CaptionDestinationType = {
    BURN_IN = "BURN_IN",
    DVB_SUB = "DVB_SUB",
    EMBEDDED = "EMBEDDED",
    EMBEDDED_PLUS_SCTE20 = "EMBEDDED_PLUS_SCTE20",
    IMSC = "IMSC",
    SCTE20_PLUS_EMBEDDED = "SCTE20_PLUS_EMBEDDED",
    SCC = "SCC",
    SRT = "SRT",
    SMI = "SMI",
    TELETEXT = "TELETEXT",
    TTML = "TTML",
    WEBVTT = "WEBVTT",
}

M.DvbSubtitleAlignment = {
    CENTERED = "CENTERED",
    LEFT = "LEFT",
    AUTO = "AUTO",
}

M.DvbSubtitleApplyFontColor = {
    WHITE_TEXT_ONLY = "WHITE_TEXT_ONLY",
    ALL_TEXT = "ALL_TEXT",
}

M.DvbSubtitleBackgroundColor = {
    NONE = "NONE",
    BLACK = "BLACK",
    WHITE = "WHITE",
    AUTO = "AUTO",
}

M.DvbddsHandling = {
    NONE = "NONE",
    SPECIFIED = "SPECIFIED",
    NO_DISPLAY_WINDOW = "NO_DISPLAY_WINDOW",
    SPECIFIED_OPTIMAL = "SPECIFIED_OPTIMAL",
}

M.DvbSubSubtitleFallbackFont = {
    BEST_MATCH = "BEST_MATCH",
    MONOSPACED_SANSSERIF = "MONOSPACED_SANSSERIF",
    MONOSPACED_SERIF = "MONOSPACED_SERIF",
    PROPORTIONAL_SANSSERIF = "PROPORTIONAL_SANSSERIF",
    PROPORTIONAL_SERIF = "PROPORTIONAL_SERIF",
}

M.DvbSubtitleFontColor = {
    WHITE = "WHITE",
    BLACK = "BLACK",
    YELLOW = "YELLOW",
    RED = "RED",
    GREEN = "GREEN",
    BLUE = "BLUE",
    HEX = "HEX",
    AUTO = "AUTO",
}

M.DvbSubtitleOutlineColor = {
    BLACK = "BLACK",
    WHITE = "WHITE",
    YELLOW = "YELLOW",
    RED = "RED",
    GREEN = "GREEN",
    BLUE = "BLUE",
    AUTO = "AUTO",
}

M.DvbSubtitleShadowColor = {
    NONE = "NONE",
    BLACK = "BLACK",
    WHITE = "WHITE",
    AUTO = "AUTO",
}

M.DvbSubtitleStylePassthrough = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.DvbSubtitlingType = {
    HEARING_IMPAIRED = "HEARING_IMPAIRED",
    STANDARD = "STANDARD",
}

M.DvbSubtitleTeletextSpacing = {
    FIXED_GRID = "FIXED_GRID",
    PROPORTIONAL = "PROPORTIONAL",
    AUTO = "AUTO",
}

M.ImscAccessibilitySubs = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.ImscStylePassthrough = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.SccDestinationFramerate = {
    FRAMERATE_23_97 = "FRAMERATE_23_97",
    FRAMERATE_24 = "FRAMERATE_24",
    FRAMERATE_25 = "FRAMERATE_25",
    FRAMERATE_29_97_DROPFRAME = "FRAMERATE_29_97_DROPFRAME",
    FRAMERATE_29_97_NON_DROPFRAME = "FRAMERATE_29_97_NON_DROPFRAME",
}

M.SrtStylePassthrough = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.TeletextPageType = {
    PAGE_TYPE_INITIAL = "PAGE_TYPE_INITIAL",
    PAGE_TYPE_SUBTITLE = "PAGE_TYPE_SUBTITLE",
    PAGE_TYPE_ADDL_INFO = "PAGE_TYPE_ADDL_INFO",
    PAGE_TYPE_PROGRAM_SCHEDULE = "PAGE_TYPE_PROGRAM_SCHEDULE",
    PAGE_TYPE_HEARING_IMPAIRED_SUBTITLE = "PAGE_TYPE_HEARING_IMPAIRED_SUBTITLE",
}

M.TtmlStylePassthrough = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.WebvttAccessibilitySubs = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.WebvttStylePassthrough = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
    STRICT = "STRICT",
    MERGE = "MERGE",
}

M.ColorSpace = {
    FOLLOW = "FOLLOW",
    REC_601 = "REC_601",
    REC_709 = "REC_709",
    HDR10 = "HDR10",
    HLG_2020 = "HLG_2020",
    P3DCI = "P3DCI",
    P3D65_SDR = "P3D65_SDR",
    P3D65_HDR = "P3D65_HDR",
}

M.ElementalInferenceFeature = {
    SMART_CROP = "SMART_CROP",
}

M.ElementalInferenceFeedManagementState = {
    CREATED = "CREATED",
    ASSOCIATED = "ASSOCIATED",
    PENDING_DELETION = "PENDING_DELETION",
    DELETED = "DELETED",
}

M.FrameMetricType = {
    PSNR = "PSNR",
    SSIM = "SSIM",
    MS_SSIM = "MS_SSIM",
    PSNR_HVS = "PSNR_HVS",
    VMAF = "VMAF",
    QVBR = "QVBR",
    SHOT_CHANGE = "SHOT_CHANGE",
}

M.HlsAdMarkers = {
    ELEMENTAL = "ELEMENTAL",
    ELEMENTAL_SCTE35 = "ELEMENTAL_SCTE35",
}

M.AdvancedInputFilter = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AdvancedInputFilterAddTexture = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AdvancedInputFilterSharpen = {
    OFF = "OFF",
    LOW = "LOW",
    HIGH = "HIGH",
}

M.AudioDurationCorrection = {
    DISABLED = "DISABLED",
    AUTO = "AUTO",
    TRACK = "TRACK",
    FRAME = "FRAME",
    FORCE = "FORCE",
}

M.AudioDefaultSelection = {
    DEFAULT = "DEFAULT",
    NOT_DEFAULT = "NOT_DEFAULT",
}

M.AudioSelectorType = {
    PID = "PID",
    TRACK = "TRACK",
    LANGUAGE_CODE = "LANGUAGE_CODE",
    HLS_RENDITION_GROUP = "HLS_RENDITION_GROUP",
    ALL_PCM = "ALL_PCM",
    STREAM = "STREAM",
}

M.AncillaryConvert608To708 = {
    UPCONVERT = "UPCONVERT",
    DISABLED = "DISABLED",
}

M.AncillaryTerminateCaptions = {
    END_OF_INPUT = "END_OF_INPUT",
    DISABLED = "DISABLED",
}

M.EmbeddedConvert608To708 = {
    UPCONVERT = "UPCONVERT",
    DISABLED = "DISABLED",
}

M.EmbeddedTerminateCaptions = {
    END_OF_INPUT = "END_OF_INPUT",
    DISABLED = "DISABLED",
}

M.CaptionSourceByteRateLimit = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.FileSourceConvert608To708 = {
    UPCONVERT = "UPCONVERT",
    DISABLED = "DISABLED",
}

M.CaptionSourceConvertPaintOnToPopOn = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.FileSourceTimeDeltaUnits = {
    SECONDS = "SECONDS",
    MILLISECONDS = "MILLISECONDS",
}

M.CaptionSourceUpconvertSTLToTeletext = {
    UPCONVERT = "UPCONVERT",
    DISABLED = "DISABLED",
}

M.CaptionSourceType = {
    ANCILLARY = "ANCILLARY",
    DVB_SUB = "DVB_SUB",
    EMBEDDED = "EMBEDDED",
    SCTE20 = "SCTE20",
    SCC = "SCC",
    TTML = "TTML",
    STL = "STL",
    SRT = "SRT",
    SMI = "SMI",
    SMPTE_TT = "SMPTE_TT",
    TELETEXT = "TELETEXT",
    NULL_SOURCE = "NULL_SOURCE",
    IMSC = "IMSC",
    WEBVTT = "WEBVTT",
    TT_3GPP = "TT_3GPP",
}

M.InputDeblockFilter = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.DecryptionMode = {
    AES_CTR = "AES_CTR",
    AES_CBC = "AES_CBC",
    AES_GCM = "AES_GCM",
}

M.InputDenoiseFilter = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.DynamicAudioSelectorType = {
    ALL_TRACKS = "ALL_TRACKS",
    LANGUAGE_CODE = "LANGUAGE_CODE",
}

M.InputFilterEnable = {
    AUTO = "AUTO",
    DISABLE = "DISABLE",
    FORCE = "FORCE",
}

M.InputScanType = {
    AUTO = "AUTO",
    PSF = "PSF",
}

M.InputPsiControl = {
    IGNORE_PSI = "IGNORE_PSI",
    USE_PSI = "USE_PSI",
}

M.TamsGapHandling = {
    SKIP_GAPS = "SKIP_GAPS",
    FILL_WITH_BLACK = "FILL_WITH_BLACK",
    HOLD_LAST_FRAME = "HOLD_LAST_FRAME",
}

M.InputTimecodeSource = {
    EMBEDDED = "EMBEDDED",
    ZEROBASED = "ZEROBASED",
    SPECIFIEDSTART = "SPECIFIEDSTART",
}

M.VideoOverlayUnit = {
    PIXELS = "PIXELS",
    PERCENTAGE = "PERCENTAGE",
}

M.VideoOverlayPlayBackMode = {
    ONCE = "ONCE",
    REPEAT = "REPEAT",
}

M.AlphaBehavior = {
    DISCARD = "DISCARD",
    REMAP_TO_LUMA = "REMAP_TO_LUMA",
}

M.ColorSpaceUsage = {
    FORCE = "FORCE",
    FALLBACK = "FALLBACK",
}

M.EmbeddedTimecodeOverride = {
    NONE = "NONE",
    USE_MDPM = "USE_MDPM",
}

M.PadVideo = {
    DISABLED = "DISABLED",
    BLACK = "BLACK",
}

M.InputRotate = {
    DEGREE_0 = "DEGREE_0",
    DEGREES_90 = "DEGREES_90",
    DEGREES_180 = "DEGREES_180",
    DEGREES_270 = "DEGREES_270",
    AUTO = "AUTO",
}

M.InputSampleRange = {
    FOLLOW = "FOLLOW",
    FULL_RANGE = "FULL_RANGE",
    LIMITED_RANGE = "LIMITED_RANGE",
}

M.VideoSelectorType = {
    AUTO = "AUTO",
    STREAM = "STREAM",
}

M.AccelerationMode = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
    PREFERRED = "PREFERRED",
}

M.AccelerationStatus = {
    NOT_APPLICABLE = "NOT_APPLICABLE",
    IN_PROGRESS = "IN_PROGRESS",
    ACCELERATED = "ACCELERATED",
    NOT_ACCELERATED = "NOT_ACCELERATED",
}

M.BillingTagsSource = {
    QUEUE = "QUEUE",
    PRESET = "PRESET",
    JOB_TEMPLATE = "JOB_TEMPLATE",
    JOB = "JOB",
}

M.JobPhase = {
    PROBING = "PROBING",
    TRANSCODING = "TRANSCODING",
    UPLOADING = "UPLOADING",
}

M.CopyProtectionAction = {
    PASSTHROUGH = "PASSTHROUGH",
    STRIP = "STRIP",
}

M.VchipAction = {
    PASSTHROUGH = "PASSTHROUGH",
    STRIP = "STRIP",
}

M.MotionImageInsertionMode = {
    MOV = "MOV",
    PNG = "PNG",
}

M.MotionImagePlayback = {
    ONCE = "ONCE",
    REPEAT = "REPEAT",
}

M.NielsenActiveWatermarkProcessType = {
    NAES2_AND_NW = "NAES2_AND_NW",
    CBET = "CBET",
    NAES2_AND_NW_AND_CBET = "NAES2_AND_NW_AND_CBET",
}

M.NielsenSourceWatermarkStatusType = {
    CLEAN = "CLEAN",
    WATERMARKED = "WATERMARKED",
}

M.NielsenUniqueTicPerAudioTrackType = {
    RESERVE_UNIQUE_TICS_PER_TRACK = "RESERVE_UNIQUE_TICS_PER_TRACK",
    SAME_TICS_PER_TRACK = "SAME_TICS_PER_TRACK",
}

M.CmafClientCache = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.CmafCodecSpecification = {
    RFC_6381 = "RFC_6381",
    RFC_4281 = "RFC_4281",
}

M.DashManifestStyle = {
    BASIC = "BASIC",
    COMPACT = "COMPACT",
    DISTINCT = "DISTINCT",
    FULL = "FULL",
}

M.S3ObjectCannedAcl = {
    PUBLIC_READ = "PUBLIC_READ",
    AUTHENTICATED_READ = "AUTHENTICATED_READ",
    BUCKET_OWNER_READ = "BUCKET_OWNER_READ",
    BUCKET_OWNER_FULL_CONTROL = "BUCKET_OWNER_FULL_CONTROL",
}

M.S3ServerSideEncryptionType = {
    SERVER_SIDE_ENCRYPTION_S3 = "SERVER_SIDE_ENCRYPTION_S3",
    SERVER_SIDE_ENCRYPTION_KMS = "SERVER_SIDE_ENCRYPTION_KMS",
}

M.S3StorageClass = {
    STANDARD = "STANDARD",
    REDUCED_REDUNDANCY = "REDUCED_REDUNDANCY",
    STANDARD_IA = "STANDARD_IA",
    ONEZONE_IA = "ONEZONE_IA",
    INTELLIGENT_TIERING = "INTELLIGENT_TIERING",
    GLACIER = "GLACIER",
    DEEP_ARCHIVE = "DEEP_ARCHIVE",
}

M.HlsClearLead = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CmafEncryptionType = {
    SAMPLE_AES = "SAMPLE_AES",
    AES_CTR = "AES_CTR",
}

M.CmafInitializationVectorInManifest = {
    INCLUDE = "INCLUDE",
    EXCLUDE = "EXCLUDE",
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

M.CmafKeyProviderType = {
    SPEKE = "SPEKE",
    STATIC_KEY = "STATIC_KEY",
}

M.CmafImageBasedTrickPlay = {
    NONE = "NONE",
    THUMBNAIL = "THUMBNAIL",
    THUMBNAIL_AND_FULLFRAME = "THUMBNAIL_AND_FULLFRAME",
    ADVANCED = "ADVANCED",
}

M.CmafIntervalCadence = {
    FOLLOW_IFRAME = "FOLLOW_IFRAME",
    FOLLOW_CUSTOM = "FOLLOW_CUSTOM",
    FOLLOW_SEGMENTATION = "FOLLOW_SEGMENTATION",
}

M.CmafManifestCompression = {
    GZIP = "GZIP",
    NONE = "NONE",
}

M.CmafManifestDurationFormat = {
    FLOATING_POINT = "FLOATING_POINT",
    INTEGER = "INTEGER",
}

M.CmafMpdManifestBandwidthType = {
    AVERAGE = "AVERAGE",
    MAX = "MAX",
}

M.CmafMpdProfile = {
    MAIN_PROFILE = "MAIN_PROFILE",
    ON_DEMAND_PROFILE = "ON_DEMAND_PROFILE",
}

M.CmafPtsOffsetHandlingForBFrames = {
    ZERO_BASED = "ZERO_BASED",
    MATCH_INITIAL_PTS = "MATCH_INITIAL_PTS",
}

M.CmafSegmentControl = {
    SINGLE_FILE = "SINGLE_FILE",
    SEGMENTED_FILES = "SEGMENTED_FILES",
}

M.CmafSegmentLengthControl = {
    EXACT = "EXACT",
    GOP_MULTIPLE = "GOP_MULTIPLE",
    MATCH = "MATCH",
}

M.CmafStreamInfResolution = {
    INCLUDE = "INCLUDE",
    EXCLUDE = "EXCLUDE",
}

M.CmafTargetDurationCompatibilityMode = {
    LEGACY = "LEGACY",
    SPEC_COMPLIANT = "SPEC_COMPLIANT",
}

M.CmafVideoCompositionOffsets = {
    SIGNED = "SIGNED",
    UNSIGNED = "UNSIGNED",
}

M.CmafWriteDASHManifest = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.CmafWriteHLSManifest = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.CmafWriteSegmentTimelineInRepresentation = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.DashIsoGroupAudioChannelConfigSchemeIdUri = {
    MPEG_CHANNEL_CONFIGURATION = "MPEG_CHANNEL_CONFIGURATION",
    DOLBY_CHANNEL_CONFIGURATION = "DOLBY_CHANNEL_CONFIGURATION",
}

M.DashIsoPlaybackDeviceCompatibility = {
    CENC_V1 = "CENC_V1",
    UNENCRYPTED_SEI = "UNENCRYPTED_SEI",
}

M.DashIsoHbbtvCompliance = {
    HBBTV_1_5 = "HBBTV_1_5",
    NONE = "NONE",
}

M.DashIsoImageBasedTrickPlay = {
    NONE = "NONE",
    THUMBNAIL = "THUMBNAIL",
    THUMBNAIL_AND_FULLFRAME = "THUMBNAIL_AND_FULLFRAME",
    ADVANCED = "ADVANCED",
}

M.DashIsoIntervalCadence = {
    FOLLOW_IFRAME = "FOLLOW_IFRAME",
    FOLLOW_CUSTOM = "FOLLOW_CUSTOM",
    FOLLOW_SEGMENTATION = "FOLLOW_SEGMENTATION",
}

M.DashIsoMpdManifestBandwidthType = {
    AVERAGE = "AVERAGE",
    MAX = "MAX",
}

M.DashIsoMpdProfile = {
    MAIN_PROFILE = "MAIN_PROFILE",
    ON_DEMAND_PROFILE = "ON_DEMAND_PROFILE",
}

M.DashIsoPtsOffsetHandlingForBFrames = {
    ZERO_BASED = "ZERO_BASED",
    MATCH_INITIAL_PTS = "MATCH_INITIAL_PTS",
}

M.DashIsoSegmentControl = {
    SINGLE_FILE = "SINGLE_FILE",
    SEGMENTED_FILES = "SEGMENTED_FILES",
}

M.DashIsoSegmentLengthControl = {
    EXACT = "EXACT",
    GOP_MULTIPLE = "GOP_MULTIPLE",
    MATCH = "MATCH",
}

M.DashIsoVideoCompositionOffsets = {
    SIGNED = "SIGNED",
    UNSIGNED = "UNSIGNED",
}

M.DashIsoWriteSegmentTimelineInRepresentation = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.HlsAudioOnlyHeader = {
    INCLUDE = "INCLUDE",
    EXCLUDE = "EXCLUDE",
}

M.HlsCaptionLanguageSetting = {
    INSERT = "INSERT",
    OMIT = "OMIT",
    NONE = "NONE",
}

M.HlsCaptionSegmentLengthControl = {
    LARGE_SEGMENTS = "LARGE_SEGMENTS",
    MATCH_VIDEO = "MATCH_VIDEO",
}

M.HlsClientCache = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.HlsCodecSpecification = {
    RFC_6381 = "RFC_6381",
    RFC_4281 = "RFC_4281",
}

M.HlsDirectoryStructure = {
    SINGLE_DIRECTORY = "SINGLE_DIRECTORY",
    SUBDIRECTORY_PER_STREAM = "SUBDIRECTORY_PER_STREAM",
}

M.HlsEncryptionType = {
    AES128 = "AES128",
    SAMPLE_AES = "SAMPLE_AES",
}

M.HlsInitializationVectorInManifest = {
    INCLUDE = "INCLUDE",
    EXCLUDE = "EXCLUDE",
}

M.HlsOfflineEncrypted = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.HlsKeyProviderType = {
    SPEKE = "SPEKE",
    STATIC_KEY = "STATIC_KEY",
}

M.HlsImageBasedTrickPlay = {
    NONE = "NONE",
    THUMBNAIL = "THUMBNAIL",
    THUMBNAIL_AND_FULLFRAME = "THUMBNAIL_AND_FULLFRAME",
    ADVANCED = "ADVANCED",
}

M.HlsIntervalCadence = {
    FOLLOW_IFRAME = "FOLLOW_IFRAME",
    FOLLOW_CUSTOM = "FOLLOW_CUSTOM",
    FOLLOW_SEGMENTATION = "FOLLOW_SEGMENTATION",
}

M.HlsManifestCompression = {
    GZIP = "GZIP",
    NONE = "NONE",
}

M.HlsManifestDurationFormat = {
    FLOATING_POINT = "FLOATING_POINT",
    INTEGER = "INTEGER",
}

M.HlsOutputSelection = {
    MANIFESTS_AND_SEGMENTS = "MANIFESTS_AND_SEGMENTS",
    SEGMENTS_ONLY = "SEGMENTS_ONLY",
}

M.HlsProgramDateTime = {
    INCLUDE = "INCLUDE",
    EXCLUDE = "EXCLUDE",
}

M.HlsProgressiveWriteHlsManifest = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.HlsSegmentControl = {
    SINGLE_FILE = "SINGLE_FILE",
    SEGMENTED_FILES = "SEGMENTED_FILES",
}

M.HlsSegmentLengthControl = {
    EXACT = "EXACT",
    GOP_MULTIPLE = "GOP_MULTIPLE",
    MATCH = "MATCH",
}

M.HlsStreamInfResolution = {
    INCLUDE = "INCLUDE",
    EXCLUDE = "EXCLUDE",
}

M.HlsTargetDurationCompatibilityMode = {
    LEGACY = "LEGACY",
    SPEC_COMPLIANT = "SPEC_COMPLIANT",
}

M.HlsTimedMetadataId3Frame = {
    NONE = "NONE",
    PRIV = "PRIV",
    TDRL = "TDRL",
}

M.MsSmoothAudioDeduplication = {
    COMBINE_DUPLICATE_STREAMS = "COMBINE_DUPLICATE_STREAMS",
    NONE = "NONE",
}

M.MsSmoothFragmentLengthControl = {
    EXACT = "EXACT",
    GOP_MULTIPLE = "GOP_MULTIPLE",
}

M.MsSmoothManifestEncoding = {
    UTF8 = "UTF8",
    UTF16 = "UTF16",
}

M.OutputGroupType = {
    HLS_GROUP_SETTINGS = "HLS_GROUP_SETTINGS",
    DASH_ISO_GROUP_SETTINGS = "DASH_ISO_GROUP_SETTINGS",
    FILE_GROUP_SETTINGS = "FILE_GROUP_SETTINGS",
    MS_SMOOTH_GROUP_SETTINGS = "MS_SMOOTH_GROUP_SETTINGS",
    CMAF_GROUP_SETTINGS = "CMAF_GROUP_SETTINGS",
}

M.CmfcAudioDuration = {
    DEFAULT_CODEC_DURATION = "DEFAULT_CODEC_DURATION",
    MATCH_VIDEO_DURATION = "MATCH_VIDEO_DURATION",
}

M.CmfcAudioTrackType = {
    ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT = "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT",
    ALTERNATE_AUDIO_AUTO_SELECT = "ALTERNATE_AUDIO_AUTO_SELECT",
    ALTERNATE_AUDIO_NOT_AUTO_SELECT = "ALTERNATE_AUDIO_NOT_AUTO_SELECT",
    AUDIO_ONLY_VARIANT_STREAM = "AUDIO_ONLY_VARIANT_STREAM",
}

M.CmfcC2paManifest = {
    INCLUDE = "INCLUDE",
    EXCLUDE = "EXCLUDE",
}

M.CmfcDescriptiveVideoServiceFlag = {
    DONT_FLAG = "DONT_FLAG",
    FLAG = "FLAG",
}

M.CmfcIFrameOnlyManifest = {
    INCLUDE = "INCLUDE",
    EXCLUDE = "EXCLUDE",
}

M.CmfcKlvMetadata = {
    PASSTHROUGH = "PASSTHROUGH",
    NONE = "NONE",
}

M.CmfcManifestMetadataSignaling = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CmfcScte35Esam = {
    INSERT = "INSERT",
    NONE = "NONE",
}

M.CmfcScte35Source = {
    PASSTHROUGH = "PASSTHROUGH",
    NONE = "NONE",
}

M.CmfcTimedMetadata = {
    PASSTHROUGH = "PASSTHROUGH",
    NONE = "NONE",
}

M.CmfcTimedMetadataBoxVersion = {
    VERSION_0 = "VERSION_0",
    VERSION_1 = "VERSION_1",
}

M.ContainerType = {
    F4V = "F4V",
    GIF = "GIF",
    ISMV = "ISMV",
    M2TS = "M2TS",
    M3U8 = "M3U8",
    CMFC = "CMFC",
    MOV = "MOV",
    MP4 = "MP4",
    MPD = "MPD",
    MXF = "MXF",
    OGG = "OGG",
    WEBM = "WEBM",
    RAW = "RAW",
    Y4M = "Y4M",
}

M.F4vMoovPlacement = {
    PROGRESSIVE_DOWNLOAD = "PROGRESSIVE_DOWNLOAD",
    NORMAL = "NORMAL",
}

M.M2tsAudioBufferModel = {
    DVB = "DVB",
    ATSC = "ATSC",
}

M.M2tsAudioDuration = {
    DEFAULT_CODEC_DURATION = "DEFAULT_CODEC_DURATION",
    MATCH_VIDEO_DURATION = "MATCH_VIDEO_DURATION",
}

M.M2tsBufferModel = {
    MULTIPLEX = "MULTIPLEX",
    NONE = "NONE",
}

M.M2tsDataPtsControl = {
    AUTO = "AUTO",
    ALIGN_TO_VIDEO = "ALIGN_TO_VIDEO",
}

M.OutputSdt = {
    SDT_FOLLOW = "SDT_FOLLOW",
    SDT_FOLLOW_IF_PRESENT = "SDT_FOLLOW_IF_PRESENT",
    SDT_MANUAL = "SDT_MANUAL",
    SDT_NONE = "SDT_NONE",
}

M.M2tsEbpAudioInterval = {
    VIDEO_AND_FIXED_INTERVALS = "VIDEO_AND_FIXED_INTERVALS",
    VIDEO_INTERVAL = "VIDEO_INTERVAL",
}

M.M2tsEbpPlacement = {
    VIDEO_AND_AUDIO_PIDS = "VIDEO_AND_AUDIO_PIDS",
    VIDEO_PID = "VIDEO_PID",
}

M.M2tsEsRateInPes = {
    INCLUDE = "INCLUDE",
    EXCLUDE = "EXCLUDE",
}

M.M2tsForceTsVideoEbpOrder = {
    FORCE = "FORCE",
    DEFAULT = "DEFAULT",
}

M.M2tsKlvMetadata = {
    PASSTHROUGH = "PASSTHROUGH",
    NONE = "NONE",
}

M.M2tsNielsenId3 = {
    INSERT = "INSERT",
    NONE = "NONE",
}

M.M2tsPcrControl = {
    PCR_EVERY_PES_PACKET = "PCR_EVERY_PES_PACKET",
    CONFIGURED_PCR_PERIOD = "CONFIGURED_PCR_PERIOD",
}

M.M2tsPreventBufferUnderflow = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.TsPtsOffset = {
    AUTO = "AUTO",
    SECONDS = "SECONDS",
    MILLISECONDS = "MILLISECONDS",
}

M.M2tsRateMode = {
    VBR = "VBR",
    CBR = "CBR",
}

M.M2tsScte35Source = {
    PASSTHROUGH = "PASSTHROUGH",
    NONE = "NONE",
}

M.M2tsSegmentationMarkers = {
    NONE = "NONE",
    RAI_SEGSTART = "RAI_SEGSTART",
    RAI_ADAPT = "RAI_ADAPT",
    PSI_SEGSTART = "PSI_SEGSTART",
    EBP = "EBP",
    EBP_LEGACY = "EBP_LEGACY",
}

M.M2tsSegmentationStyle = {
    MAINTAIN_CADENCE = "MAINTAIN_CADENCE",
    RESET_CADENCE = "RESET_CADENCE",
}

M.M3u8AudioDuration = {
    DEFAULT_CODEC_DURATION = "DEFAULT_CODEC_DURATION",
    MATCH_VIDEO_DURATION = "MATCH_VIDEO_DURATION",
}

M.M3u8DataPtsControl = {
    AUTO = "AUTO",
    ALIGN_TO_VIDEO = "ALIGN_TO_VIDEO",
}

M.M3u8NielsenId3 = {
    INSERT = "INSERT",
    NONE = "NONE",
}

M.M3u8PcrControl = {
    PCR_EVERY_PES_PACKET = "PCR_EVERY_PES_PACKET",
    CONFIGURED_PCR_PERIOD = "CONFIGURED_PCR_PERIOD",
}

M.M3u8Scte35Source = {
    PASSTHROUGH = "PASSTHROUGH",
    NONE = "NONE",
}

M.TimedMetadata = {
    PASSTHROUGH = "PASSTHROUGH",
    NONE = "NONE",
}

M.MovClapAtom = {
    INCLUDE = "INCLUDE",
    EXCLUDE = "EXCLUDE",
}

M.MovCslgAtom = {
    INCLUDE = "INCLUDE",
    EXCLUDE = "EXCLUDE",
}

M.MovMpeg2FourCCControl = {
    XDCAM = "XDCAM",
    MPEG = "MPEG",
}

M.MovPaddingControl = {
    OMNEON = "OMNEON",
    NONE = "NONE",
}

M.MovReference = {
    SELF_CONTAINED = "SELF_CONTAINED",
    EXTERNAL = "EXTERNAL",
}

M.Mp4C2paManifest = {
    INCLUDE = "INCLUDE",
    EXCLUDE = "EXCLUDE",
}

M.Mp4CslgAtom = {
    INCLUDE = "INCLUDE",
    EXCLUDE = "EXCLUDE",
}

M.Mp4FreeSpaceBox = {
    INCLUDE = "INCLUDE",
    EXCLUDE = "EXCLUDE",
}

M.Mp4MoovPlacement = {
    PROGRESSIVE_DOWNLOAD = "PROGRESSIVE_DOWNLOAD",
    NORMAL = "NORMAL",
}

M.MpdAccessibilityCaptionHints = {
    INCLUDE = "INCLUDE",
    EXCLUDE = "EXCLUDE",
}

M.MpdAudioDuration = {
    DEFAULT_CODEC_DURATION = "DEFAULT_CODEC_DURATION",
    MATCH_VIDEO_DURATION = "MATCH_VIDEO_DURATION",
}

M.MpdC2paManifest = {
    INCLUDE = "INCLUDE",
    EXCLUDE = "EXCLUDE",
}

M.MpdCaptionContainerType = {
    RAW = "RAW",
    FRAGMENTED_MP4 = "FRAGMENTED_MP4",
}

M.MpdKlvMetadata = {
    NONE = "NONE",
    PASSTHROUGH = "PASSTHROUGH",
}

M.MpdManifestMetadataSignaling = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.MpdScte35Esam = {
    INSERT = "INSERT",
    NONE = "NONE",
}

M.MpdScte35Source = {
    PASSTHROUGH = "PASSTHROUGH",
    NONE = "NONE",
}

M.MpdTimedMetadata = {
    PASSTHROUGH = "PASSTHROUGH",
    NONE = "NONE",
}

M.MpdTimedMetadataBoxVersion = {
    VERSION_0 = "VERSION_0",
    VERSION_1 = "VERSION_1",
}

M.MxfAfdSignaling = {
    NO_COPY = "NO_COPY",
    COPY_FROM_VIDEO = "COPY_FROM_VIDEO",
}

M.MxfProfile = {
    D_10 = "D_10",
    XDCAM = "XDCAM",
    OP1A = "OP1A",
    XAVC = "XAVC",
    XDCAM_RDD9 = "XDCAM_RDD9",
}

M.MxfUncompressedAudioWrapping = {
    AUTO = "AUTO",
    AES3 = "AES3",
}

M.MxfXavcDurationMode = {
    ALLOW_ANY_DURATION = "ALLOW_ANY_DURATION",
    DROP_FRAMES_FOR_COMPLIANCE = "DROP_FRAMES_FOR_COMPLIANCE",
}

M.HlsAudioOnlyContainer = {
    AUTOMATIC = "AUTOMATIC",
    M2TS = "M2TS",
}

M.HlsAudioTrackType = {
    ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT = "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT",
    ALTERNATE_AUDIO_AUTO_SELECT = "ALTERNATE_AUDIO_AUTO_SELECT",
    ALTERNATE_AUDIO_NOT_AUTO_SELECT = "ALTERNATE_AUDIO_NOT_AUTO_SELECT",
    AUDIO_ONLY_VARIANT_STREAM = "AUDIO_ONLY_VARIANT_STREAM",
}

M.HlsDescriptiveVideoServiceFlag = {
    DONT_FLAG = "DONT_FLAG",
    FLAG = "FLAG",
}

M.HlsIFrameOnlyManifest = {
    INCLUDE = "INCLUDE",
    INCLUDE_AS_TS = "INCLUDE_AS_TS",
    EXCLUDE = "EXCLUDE",
}

M.AfdSignaling = {
    NONE = "NONE",
    AUTO = "AUTO",
    FIXED = "FIXED",
}

M.AntiAlias = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.ChromaPositionMode = {
    AUTO = "AUTO",
    FORCE_CENTER = "FORCE_CENTER",
    FORCE_TOP_LEFT = "FORCE_TOP_LEFT",
}

M.Av1AdaptiveQuantization = {
    OFF = "OFF",
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
    HIGHER = "HIGHER",
    MAX = "MAX",
}

M.Av1BitDepth = {
    BIT_8 = "BIT_8",
    BIT_10 = "BIT_10",
}

M.Av1FilmGrainSynthesis = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.Av1FramerateControl = {
    INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE",
    SPECIFIED = "SPECIFIED",
}

M.Av1FramerateConversionAlgorithm = {
    DUPLICATE_DROP = "DUPLICATE_DROP",
    INTERPOLATE = "INTERPOLATE",
    FRAMEFORMER = "FRAMEFORMER",
    MAINTAIN_FRAME_COUNT = "MAINTAIN_FRAME_COUNT",
}

M.Av1RateControlMode = {
    QVBR = "QVBR",
}

M.Av1SpatialAdaptiveQuantization = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.AvcIntraClass = {
    CLASS_50 = "CLASS_50",
    CLASS_100 = "CLASS_100",
    CLASS_200 = "CLASS_200",
    CLASS_4K_2K = "CLASS_4K_2K",
}

M.AvcIntraUhdQualityTuningLevel = {
    SINGLE_PASS = "SINGLE_PASS",
    MULTI_PASS = "MULTI_PASS",
}

M.AvcIntraFramerateControl = {
    INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE",
    SPECIFIED = "SPECIFIED",
}

M.AvcIntraFramerateConversionAlgorithm = {
    DUPLICATE_DROP = "DUPLICATE_DROP",
    INTERPOLATE = "INTERPOLATE",
    FRAMEFORMER = "FRAMEFORMER",
    MAINTAIN_FRAME_COUNT = "MAINTAIN_FRAME_COUNT",
}

M.AvcIntraInterlaceMode = {
    PROGRESSIVE = "PROGRESSIVE",
    TOP_FIELD = "TOP_FIELD",
    BOTTOM_FIELD = "BOTTOM_FIELD",
    FOLLOW_TOP_FIELD = "FOLLOW_TOP_FIELD",
    FOLLOW_BOTTOM_FIELD = "FOLLOW_BOTTOM_FIELD",
}

M.AvcIntraScanTypeConversionMode = {
    INTERLACED = "INTERLACED",
    INTERLACED_OPTIMIZE = "INTERLACED_OPTIMIZE",
}

M.AvcIntraSlowPal = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.AvcIntraTelecine = {
    NONE = "NONE",
    HARD = "HARD",
}

M.VideoCodec = {
    AV1 = "AV1",
    AVC_INTRA = "AVC_INTRA",
    FRAME_CAPTURE = "FRAME_CAPTURE",
    GIF = "GIF",
    H_264 = "H_264",
    H_265 = "H_265",
    MPEG2 = "MPEG2",
    PASSTHROUGH = "PASSTHROUGH",
    PRORES = "PRORES",
    UNCOMPRESSED = "UNCOMPRESSED",
    VC3 = "VC3",
    VP8 = "VP8",
    VP9 = "VP9",
    XAVC = "XAVC",
}

M.GifFramerateControl = {
    INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE",
    SPECIFIED = "SPECIFIED",
}

M.GifFramerateConversionAlgorithm = {
    DUPLICATE_DROP = "DUPLICATE_DROP",
    INTERPOLATE = "INTERPOLATE",
}

M.H264AdaptiveQuantization = {
    OFF = "OFF",
    AUTO = "AUTO",
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
    HIGHER = "HIGHER",
    MAX = "MAX",
}

M.BandwidthReductionFilterSharpening = {
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
    OFF = "OFF",
}

M.BandwidthReductionFilterStrength = {
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
    AUTO = "AUTO",
    OFF = "OFF",
}

M.H264CodecLevel = {
    AUTO = "AUTO",
    LEVEL_1 = "LEVEL_1",
    LEVEL_1_1 = "LEVEL_1_1",
    LEVEL_1_2 = "LEVEL_1_2",
    LEVEL_1_3 = "LEVEL_1_3",
    LEVEL_2 = "LEVEL_2",
    LEVEL_2_1 = "LEVEL_2_1",
    LEVEL_2_2 = "LEVEL_2_2",
    LEVEL_3 = "LEVEL_3",
    LEVEL_3_1 = "LEVEL_3_1",
    LEVEL_3_2 = "LEVEL_3_2",
    LEVEL_4 = "LEVEL_4",
    LEVEL_4_1 = "LEVEL_4_1",
    LEVEL_4_2 = "LEVEL_4_2",
    LEVEL_5 = "LEVEL_5",
    LEVEL_5_1 = "LEVEL_5_1",
    LEVEL_5_2 = "LEVEL_5_2",
}

M.H264CodecProfile = {
    BASELINE = "BASELINE",
    HIGH = "HIGH",
    HIGH_10BIT = "HIGH_10BIT",
    HIGH_422 = "HIGH_422",
    HIGH_422_10BIT = "HIGH_422_10BIT",
    MAIN = "MAIN",
}

M.H264DynamicSubGop = {
    ADAPTIVE = "ADAPTIVE",
    STATIC = "STATIC",
}

M.H264EndOfStreamMarkers = {
    INCLUDE = "INCLUDE",
    SUPPRESS = "SUPPRESS",
}

M.H264EntropyEncoding = {
    CABAC = "CABAC",
    CAVLC = "CAVLC",
}

M.H264FieldEncoding = {
    PAFF = "PAFF",
    FORCE_FIELD = "FORCE_FIELD",
    MBAFF = "MBAFF",
}

M.H264FlickerAdaptiveQuantization = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.H264FramerateControl = {
    INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE",
    SPECIFIED = "SPECIFIED",
}

M.H264FramerateConversionAlgorithm = {
    DUPLICATE_DROP = "DUPLICATE_DROP",
    INTERPOLATE = "INTERPOLATE",
    FRAMEFORMER = "FRAMEFORMER",
    MAINTAIN_FRAME_COUNT = "MAINTAIN_FRAME_COUNT",
}

M.H264GopBReference = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.H264GopSizeUnits = {
    FRAMES = "FRAMES",
    SECONDS = "SECONDS",
    AUTO = "AUTO",
}

M.H264InterlaceMode = {
    PROGRESSIVE = "PROGRESSIVE",
    TOP_FIELD = "TOP_FIELD",
    BOTTOM_FIELD = "BOTTOM_FIELD",
    FOLLOW_TOP_FIELD = "FOLLOW_TOP_FIELD",
    FOLLOW_BOTTOM_FIELD = "FOLLOW_BOTTOM_FIELD",
}

M.H264ParControl = {
    INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE",
    SPECIFIED = "SPECIFIED",
}

M.H264QualityTuningLevel = {
    SINGLE_PASS = "SINGLE_PASS",
    SINGLE_PASS_HQ = "SINGLE_PASS_HQ",
    MULTI_PASS_HQ = "MULTI_PASS_HQ",
}

M.H264RateControlMode = {
    VBR = "VBR",
    CBR = "CBR",
    QVBR = "QVBR",
}

M.H264RepeatPps = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.H264SaliencyAwareEncoding = {
    DISABLED = "DISABLED",
    PREFERRED = "PREFERRED",
}

M.H264ScanTypeConversionMode = {
    INTERLACED = "INTERLACED",
    INTERLACED_OPTIMIZE = "INTERLACED_OPTIMIZE",
}

M.H264SceneChangeDetect = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
    TRANSITION_DETECTION = "TRANSITION_DETECTION",
}

M.H264SlowPal = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.H264SpatialAdaptiveQuantization = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.H264Syntax = {
    DEFAULT = "DEFAULT",
    RP2027 = "RP2027",
}

M.H264Telecine = {
    NONE = "NONE",
    SOFT = "SOFT",
    HARD = "HARD",
}

M.H264TemporalAdaptiveQuantization = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.H264UnregisteredSeiTimecode = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.H264WriteMp4PackagingType = {
    AVC1 = "AVC1",
    AVC3 = "AVC3",
}

M.H265AdaptiveQuantization = {
    OFF = "OFF",
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
    HIGHER = "HIGHER",
    MAX = "MAX",
    AUTO = "AUTO",
}

M.H265AlternateTransferFunctionSei = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.H265CodecLevel = {
    AUTO = "AUTO",
    LEVEL_1 = "LEVEL_1",
    LEVEL_2 = "LEVEL_2",
    LEVEL_2_1 = "LEVEL_2_1",
    LEVEL_3 = "LEVEL_3",
    LEVEL_3_1 = "LEVEL_3_1",
    LEVEL_4 = "LEVEL_4",
    LEVEL_4_1 = "LEVEL_4_1",
    LEVEL_5 = "LEVEL_5",
    LEVEL_5_1 = "LEVEL_5_1",
    LEVEL_5_2 = "LEVEL_5_2",
    LEVEL_6 = "LEVEL_6",
    LEVEL_6_1 = "LEVEL_6_1",
    LEVEL_6_2 = "LEVEL_6_2",
}

M.H265CodecProfile = {
    MAIN_MAIN = "MAIN_MAIN",
    MAIN_HIGH = "MAIN_HIGH",
    MAIN10_MAIN = "MAIN10_MAIN",
    MAIN10_HIGH = "MAIN10_HIGH",
    MAIN_422_8BIT_MAIN = "MAIN_422_8BIT_MAIN",
    MAIN_422_8BIT_HIGH = "MAIN_422_8BIT_HIGH",
    MAIN_422_10BIT_MAIN = "MAIN_422_10BIT_MAIN",
    MAIN_422_10BIT_HIGH = "MAIN_422_10BIT_HIGH",
}

M.H265Deblocking = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.H265DynamicSubGop = {
    ADAPTIVE = "ADAPTIVE",
    STATIC = "STATIC",
}

M.H265EndOfStreamMarkers = {
    INCLUDE = "INCLUDE",
    SUPPRESS = "SUPPRESS",
}

M.H265FlickerAdaptiveQuantization = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.H265FramerateControl = {
    INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE",
    SPECIFIED = "SPECIFIED",
}

M.H265FramerateConversionAlgorithm = {
    DUPLICATE_DROP = "DUPLICATE_DROP",
    INTERPOLATE = "INTERPOLATE",
    FRAMEFORMER = "FRAMEFORMER",
    MAINTAIN_FRAME_COUNT = "MAINTAIN_FRAME_COUNT",
}

M.H265GopBReference = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.H265GopSizeUnits = {
    FRAMES = "FRAMES",
    SECONDS = "SECONDS",
    AUTO = "AUTO",
}

M.H265InterlaceMode = {
    PROGRESSIVE = "PROGRESSIVE",
    TOP_FIELD = "TOP_FIELD",
    BOTTOM_FIELD = "BOTTOM_FIELD",
    FOLLOW_TOP_FIELD = "FOLLOW_TOP_FIELD",
    FOLLOW_BOTTOM_FIELD = "FOLLOW_BOTTOM_FIELD",
}

M.H265MvOverPictureBoundaries = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.H265MvTemporalPredictor = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.H265ParControl = {
    INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE",
    SPECIFIED = "SPECIFIED",
}

M.H265QualityTuningLevel = {
    SINGLE_PASS = "SINGLE_PASS",
    SINGLE_PASS_HQ = "SINGLE_PASS_HQ",
    MULTI_PASS_HQ = "MULTI_PASS_HQ",
}

M.H265RateControlMode = {
    VBR = "VBR",
    CBR = "CBR",
    QVBR = "QVBR",
}

M.H265SampleAdaptiveOffsetFilterMode = {
    DEFAULT = "DEFAULT",
    ADAPTIVE = "ADAPTIVE",
    OFF = "OFF",
}

M.H265ScanTypeConversionMode = {
    INTERLACED = "INTERLACED",
    INTERLACED_OPTIMIZE = "INTERLACED_OPTIMIZE",
}

M.H265SceneChangeDetect = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
    TRANSITION_DETECTION = "TRANSITION_DETECTION",
}

M.H265SlowPal = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.H265SpatialAdaptiveQuantization = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.H265Telecine = {
    NONE = "NONE",
    SOFT = "SOFT",
    HARD = "HARD",
}

M.H265TemporalAdaptiveQuantization = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.H265TemporalIds = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.H265TilePadding = {
    NONE = "NONE",
    PADDED = "PADDED",
}

M.H265Tiles = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.H265TreeBlockSize = {
    AUTO = "AUTO",
    TREE_SIZE_32X32 = "TREE_SIZE_32X32",
}

M.H265UnregisteredSeiTimecode = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.H265WriteMp4PackagingType = {
    HVC1 = "HVC1",
    HEV1 = "HEV1",
}

M.Mpeg2AdaptiveQuantization = {
    OFF = "OFF",
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
}

M.Mpeg2CodecLevel = {
    AUTO = "AUTO",
    LOW = "LOW",
    MAIN = "MAIN",
    HIGH1440 = "HIGH1440",
    HIGH = "HIGH",
}

M.Mpeg2CodecProfile = {
    MAIN = "MAIN",
    PROFILE_422 = "PROFILE_422",
}

M.Mpeg2DynamicSubGop = {
    ADAPTIVE = "ADAPTIVE",
    STATIC = "STATIC",
}

M.Mpeg2FramerateControl = {
    INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE",
    SPECIFIED = "SPECIFIED",
}

M.Mpeg2FramerateConversionAlgorithm = {
    DUPLICATE_DROP = "DUPLICATE_DROP",
    INTERPOLATE = "INTERPOLATE",
    FRAMEFORMER = "FRAMEFORMER",
    MAINTAIN_FRAME_COUNT = "MAINTAIN_FRAME_COUNT",
}

M.Mpeg2GopSizeUnits = {
    FRAMES = "FRAMES",
    SECONDS = "SECONDS",
}

M.Mpeg2InterlaceMode = {
    PROGRESSIVE = "PROGRESSIVE",
    TOP_FIELD = "TOP_FIELD",
    BOTTOM_FIELD = "BOTTOM_FIELD",
    FOLLOW_TOP_FIELD = "FOLLOW_TOP_FIELD",
    FOLLOW_BOTTOM_FIELD = "FOLLOW_BOTTOM_FIELD",
}

M.Mpeg2IntraDcPrecision = {
    AUTO = "AUTO",
    INTRA_DC_PRECISION_8 = "INTRA_DC_PRECISION_8",
    INTRA_DC_PRECISION_9 = "INTRA_DC_PRECISION_9",
    INTRA_DC_PRECISION_10 = "INTRA_DC_PRECISION_10",
    INTRA_DC_PRECISION_11 = "INTRA_DC_PRECISION_11",
}

M.Mpeg2ParControl = {
    INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE",
    SPECIFIED = "SPECIFIED",
}

M.Mpeg2QualityTuningLevel = {
    SINGLE_PASS = "SINGLE_PASS",
    MULTI_PASS = "MULTI_PASS",
}

M.Mpeg2RateControlMode = {
    VBR = "VBR",
    CBR = "CBR",
}

M.Mpeg2ScanTypeConversionMode = {
    INTERLACED = "INTERLACED",
    INTERLACED_OPTIMIZE = "INTERLACED_OPTIMIZE",
}

M.Mpeg2SceneChangeDetect = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.Mpeg2SlowPal = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.Mpeg2SpatialAdaptiveQuantization = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.Mpeg2Syntax = {
    DEFAULT = "DEFAULT",
    D_10 = "D_10",
}

M.Mpeg2Telecine = {
    NONE = "NONE",
    SOFT = "SOFT",
    HARD = "HARD",
}

M.Mpeg2TemporalAdaptiveQuantization = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.FrameControl = {
    NEAREST_IDRFRAME = "NEAREST_IDRFRAME",
    NEAREST_IFRAME = "NEAREST_IFRAME",
}

M.VideoSelectorMode = {
    AUTO = "AUTO",
    REMUX_ALL = "REMUX_ALL",
}

M.ProresChromaSampling = {
    PRESERVE_444_SAMPLING = "PRESERVE_444_SAMPLING",
    SUBSAMPLE_TO_422 = "SUBSAMPLE_TO_422",
}

M.ProresCodecProfile = {
    APPLE_PRORES_422 = "APPLE_PRORES_422",
    APPLE_PRORES_422_HQ = "APPLE_PRORES_422_HQ",
    APPLE_PRORES_422_LT = "APPLE_PRORES_422_LT",
    APPLE_PRORES_422_PROXY = "APPLE_PRORES_422_PROXY",
    APPLE_PRORES_4444 = "APPLE_PRORES_4444",
    APPLE_PRORES_4444_XQ = "APPLE_PRORES_4444_XQ",
}

M.ProresFramerateControl = {
    INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE",
    SPECIFIED = "SPECIFIED",
}

M.ProresFramerateConversionAlgorithm = {
    DUPLICATE_DROP = "DUPLICATE_DROP",
    INTERPOLATE = "INTERPOLATE",
    FRAMEFORMER = "FRAMEFORMER",
    MAINTAIN_FRAME_COUNT = "MAINTAIN_FRAME_COUNT",
}

M.ProresInterlaceMode = {
    PROGRESSIVE = "PROGRESSIVE",
    TOP_FIELD = "TOP_FIELD",
    BOTTOM_FIELD = "BOTTOM_FIELD",
    FOLLOW_TOP_FIELD = "FOLLOW_TOP_FIELD",
    FOLLOW_BOTTOM_FIELD = "FOLLOW_BOTTOM_FIELD",
}

M.ProresParControl = {
    INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE",
    SPECIFIED = "SPECIFIED",
}

M.ProresScanTypeConversionMode = {
    INTERLACED = "INTERLACED",
    INTERLACED_OPTIMIZE = "INTERLACED_OPTIMIZE",
}

M.ProresSlowPal = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.ProresTelecine = {
    NONE = "NONE",
    HARD = "HARD",
}

M.UncompressedFourcc = {
    I420 = "I420",
    I422 = "I422",
    I444 = "I444",
}

M.UncompressedFramerateControl = {
    INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE",
    SPECIFIED = "SPECIFIED",
}

M.UncompressedFramerateConversionAlgorithm = {
    DUPLICATE_DROP = "DUPLICATE_DROP",
    INTERPOLATE = "INTERPOLATE",
    FRAMEFORMER = "FRAMEFORMER",
    MAINTAIN_FRAME_COUNT = "MAINTAIN_FRAME_COUNT",
}

M.UncompressedInterlaceMode = {
    INTERLACED = "INTERLACED",
    PROGRESSIVE = "PROGRESSIVE",
}

M.UncompressedScanTypeConversionMode = {
    INTERLACED = "INTERLACED",
    INTERLACED_OPTIMIZE = "INTERLACED_OPTIMIZE",
}

M.UncompressedSlowPal = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.UncompressedTelecine = {
    NONE = "NONE",
    HARD = "HARD",
}

M.Vc3FramerateControl = {
    INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE",
    SPECIFIED = "SPECIFIED",
}

M.Vc3FramerateConversionAlgorithm = {
    DUPLICATE_DROP = "DUPLICATE_DROP",
    INTERPOLATE = "INTERPOLATE",
    FRAMEFORMER = "FRAMEFORMER",
    MAINTAIN_FRAME_COUNT = "MAINTAIN_FRAME_COUNT",
}

M.Vc3InterlaceMode = {
    INTERLACED = "INTERLACED",
    PROGRESSIVE = "PROGRESSIVE",
}

M.Vc3ScanTypeConversionMode = {
    INTERLACED = "INTERLACED",
    INTERLACED_OPTIMIZE = "INTERLACED_OPTIMIZE",
}

M.Vc3SlowPal = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.Vc3Telecine = {
    NONE = "NONE",
    HARD = "HARD",
}

M.Vc3Class = {
    CLASS_145_8BIT = "CLASS_145_8BIT",
    CLASS_220_8BIT = "CLASS_220_8BIT",
    CLASS_220_10BIT = "CLASS_220_10BIT",
}

M.Vp8FramerateControl = {
    INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE",
    SPECIFIED = "SPECIFIED",
}

M.Vp8FramerateConversionAlgorithm = {
    DUPLICATE_DROP = "DUPLICATE_DROP",
    INTERPOLATE = "INTERPOLATE",
    FRAMEFORMER = "FRAMEFORMER",
    MAINTAIN_FRAME_COUNT = "MAINTAIN_FRAME_COUNT",
}

M.Vp8ParControl = {
    INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE",
    SPECIFIED = "SPECIFIED",
}

M.Vp8QualityTuningLevel = {
    MULTI_PASS = "MULTI_PASS",
    MULTI_PASS_HQ = "MULTI_PASS_HQ",
}

M.Vp8RateControlMode = {
    VBR = "VBR",
}

M.Vp9FramerateControl = {
    INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE",
    SPECIFIED = "SPECIFIED",
}

M.Vp9FramerateConversionAlgorithm = {
    DUPLICATE_DROP = "DUPLICATE_DROP",
    INTERPOLATE = "INTERPOLATE",
    FRAMEFORMER = "FRAMEFORMER",
    MAINTAIN_FRAME_COUNT = "MAINTAIN_FRAME_COUNT",
}

M.Vp9ParControl = {
    INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE",
    SPECIFIED = "SPECIFIED",
}

M.Vp9QualityTuningLevel = {
    MULTI_PASS = "MULTI_PASS",
    MULTI_PASS_HQ = "MULTI_PASS_HQ",
}

M.Vp9RateControlMode = {
    VBR = "VBR",
}

M.XavcAdaptiveQuantization = {
    OFF = "OFF",
    AUTO = "AUTO",
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
    HIGHER = "HIGHER",
    MAX = "MAX",
}

M.XavcEntropyEncoding = {
    AUTO = "AUTO",
    CABAC = "CABAC",
    CAVLC = "CAVLC",
}

M.XavcFramerateControl = {
    INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE",
    SPECIFIED = "SPECIFIED",
}

M.XavcFramerateConversionAlgorithm = {
    DUPLICATE_DROP = "DUPLICATE_DROP",
    INTERPOLATE = "INTERPOLATE",
    FRAMEFORMER = "FRAMEFORMER",
    MAINTAIN_FRAME_COUNT = "MAINTAIN_FRAME_COUNT",
}

M.XavcProfile = {
    XAVC_HD_INTRA_CBG = "XAVC_HD_INTRA_CBG",
    XAVC_4K_INTRA_CBG = "XAVC_4K_INTRA_CBG",
    XAVC_4K_INTRA_VBR = "XAVC_4K_INTRA_VBR",
    XAVC_HD = "XAVC_HD",
    XAVC_4K = "XAVC_4K",
}

M.XavcSlowPal = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.XavcSpatialAdaptiveQuantization = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.XavcTemporalAdaptiveQuantization = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.Xavc4kIntraCbgProfileClass = {
    CLASS_100 = "CLASS_100",
    CLASS_300 = "CLASS_300",
    CLASS_480 = "CLASS_480",
}

M.Xavc4kIntraVbrProfileClass = {
    CLASS_100 = "CLASS_100",
    CLASS_300 = "CLASS_300",
    CLASS_480 = "CLASS_480",
}

M.Xavc4kProfileBitrateClass = {
    BITRATE_CLASS_100 = "BITRATE_CLASS_100",
    BITRATE_CLASS_140 = "BITRATE_CLASS_140",
    BITRATE_CLASS_200 = "BITRATE_CLASS_200",
}

M.Xavc4kProfileCodecProfile = {
    HIGH = "HIGH",
    HIGH_422 = "HIGH_422",
}

M.XavcFlickerAdaptiveQuantization = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.XavcGopBReference = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.Xavc4kProfileQualityTuningLevel = {
    SINGLE_PASS = "SINGLE_PASS",
    SINGLE_PASS_HQ = "SINGLE_PASS_HQ",
    MULTI_PASS_HQ = "MULTI_PASS_HQ",
}

M.XavcHdIntraCbgProfileClass = {
    CLASS_50 = "CLASS_50",
    CLASS_100 = "CLASS_100",
    CLASS_200 = "CLASS_200",
}

M.XavcHdProfileBitrateClass = {
    BITRATE_CLASS_25 = "BITRATE_CLASS_25",
    BITRATE_CLASS_35 = "BITRATE_CLASS_35",
    BITRATE_CLASS_50 = "BITRATE_CLASS_50",
}

M.XavcInterlaceMode = {
    PROGRESSIVE = "PROGRESSIVE",
    TOP_FIELD = "TOP_FIELD",
    BOTTOM_FIELD = "BOTTOM_FIELD",
    FOLLOW_TOP_FIELD = "FOLLOW_TOP_FIELD",
    FOLLOW_BOTTOM_FIELD = "FOLLOW_BOTTOM_FIELD",
}

M.XavcHdProfileQualityTuningLevel = {
    SINGLE_PASS = "SINGLE_PASS",
    SINGLE_PASS_HQ = "SINGLE_PASS_HQ",
    MULTI_PASS_HQ = "MULTI_PASS_HQ",
}

M.XavcHdProfileTelecine = {
    NONE = "NONE",
    HARD = "HARD",
}

M.ColorMetadata = {
    IGNORE = "IGNORE",
    INSERT = "INSERT",
}

M.DropFrameTimecode = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.RespondToAfd = {
    NONE = "NONE",
    RESPOND = "RESPOND",
    PASSTHROUGH = "PASSTHROUGH",
}

M.ScalingBehavior = {
    DEFAULT = "DEFAULT",
    STRETCH_TO_OUTPUT = "STRETCH_TO_OUTPUT",
    FIT = "FIT",
    FIT_NO_UPSCALE = "FIT_NO_UPSCALE",
    FILL = "FILL",
    SMART_CROP = "SMART_CROP",
}

M.VideoTimecodeInsertion = {
    DISABLED = "DISABLED",
    PIC_TIMING_SEI = "PIC_TIMING_SEI",
}

M.TimecodeTrack = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.ColorSpaceConversion = {
    NONE = "NONE",
    FORCE_601 = "FORCE_601",
    FORCE_709 = "FORCE_709",
    FORCE_HDR10 = "FORCE_HDR10",
    FORCE_HLG_2020 = "FORCE_HLG_2020",
    FORCE_P3DCI = "FORCE_P3DCI",
    FORCE_P3D65_SDR = "FORCE_P3D65_SDR",
    FORCE_P3D65_HDR = "FORCE_P3D65_HDR",
}

M.HDRToSDRToneMapper = {
    PRESERVE_DETAILS = "PRESERVE_DETAILS",
    VIBRANT = "VIBRANT",
}

M.SampleRangeConversion = {
    LIMITED_RANGE_SQUEEZE = "LIMITED_RANGE_SQUEEZE",
    NONE = "NONE",
    LIMITED_RANGE_CLIP = "LIMITED_RANGE_CLIP",
}

M.DeinterlaceAlgorithm = {
    INTERPOLATE = "INTERPOLATE",
    INTERPOLATE_TICKER = "INTERPOLATE_TICKER",
    BLEND = "BLEND",
    BLEND_TICKER = "BLEND_TICKER",
    LINEAR_INTERPOLATION = "LINEAR_INTERPOLATION",
}

M.DeinterlacerControl = {
    FORCE_ALL_FRAMES = "FORCE_ALL_FRAMES",
    NORMAL = "NORMAL",
}

M.DeinterlacerMode = {
    DEINTERLACE = "DEINTERLACE",
    INVERSE_TELECINE = "INVERSE_TELECINE",
    ADAPTIVE = "ADAPTIVE",
}

M.DolbyVisionCompatibility = {
    DUPLICATE_STREAM = "DUPLICATE_STREAM",
    SUPPLEMENTAL_CODECS = "SUPPLEMENTAL_CODECS",
}

M.DolbyVisionLevel6Mode = {
    PASSTHROUGH = "PASSTHROUGH",
    RECALCULATE = "RECALCULATE",
    SPECIFY = "SPECIFY",
}

M.DolbyVisionMapping = {
    HDR10_NOMAP = "HDR10_NOMAP",
    HDR10_1000 = "HDR10_1000",
}

M.DolbyVisionProfile = {
    PROFILE_5 = "PROFILE_5",
    PROFILE_8_1 = "PROFILE_8_1",
}

M.NoiseReducerFilter = {
    BILATERAL = "BILATERAL",
    MEAN = "MEAN",
    GAUSSIAN = "GAUSSIAN",
    LANCZOS = "LANCZOS",
    SHARPEN = "SHARPEN",
    CONSERVE = "CONSERVE",
    SPATIAL = "SPATIAL",
    TEMPORAL = "TEMPORAL",
}

M.NoiseFilterPostTemporalSharpening = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
    AUTO = "AUTO",
}

M.NoiseFilterPostTemporalSharpeningStrength = {
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
}

M.WatermarkingStrength = {
    LIGHTEST = "LIGHTEST",
    LIGHTER = "LIGHTER",
    DEFAULT = "DEFAULT",
    STRONGER = "STRONGER",
    STRONGEST = "STRONGEST",
}

M.TimecodeBurninPosition = {
    TOP_CENTER = "TOP_CENTER",
    TOP_LEFT = "TOP_LEFT",
    TOP_RIGHT = "TOP_RIGHT",
    MIDDLE_LEFT = "MIDDLE_LEFT",
    MIDDLE_CENTER = "MIDDLE_CENTER",
    MIDDLE_RIGHT = "MIDDLE_RIGHT",
    BOTTOM_LEFT = "BOTTOM_LEFT",
    BOTTOM_CENTER = "BOTTOM_CENTER",
    BOTTOM_RIGHT = "BOTTOM_RIGHT",
}

M.TimecodeSource = {
    EMBEDDED = "EMBEDDED",
    ZEROBASED = "ZEROBASED",
    SPECIFIEDSTART = "SPECIFIEDSTART",
}

M.ShareStatus = {
    NOT_SHARED = "NOT_SHARED",
    INITIATED = "INITIATED",
    SHARED = "SHARED",
}

M.SimulateReservedQueue = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.JobStatus = {
    SUBMITTED = "SUBMITTED",
    PROGRESSING = "PROGRESSING",
    COMPLETE = "COMPLETE",
    CANCELED = "CANCELED",
    ERROR = "ERROR",
}

M.StatusUpdateInterval = {
    SECONDS_10 = "SECONDS_10",
    SECONDS_12 = "SECONDS_12",
    SECONDS_15 = "SECONDS_15",
    SECONDS_20 = "SECONDS_20",
    SECONDS_30 = "SECONDS_30",
    SECONDS_60 = "SECONDS_60",
    SECONDS_120 = "SECONDS_120",
    SECONDS_180 = "SECONDS_180",
    SECONDS_240 = "SECONDS_240",
    SECONDS_300 = "SECONDS_300",
    SECONDS_360 = "SECONDS_360",
    SECONDS_420 = "SECONDS_420",
    SECONDS_480 = "SECONDS_480",
    SECONDS_540 = "SECONDS_540",
    SECONDS_600 = "SECONDS_600",
}

M.JobsQueryFilterKey = {
    queue = "queue",
    status = "status",
    fileInput = "fileInput",
    jobEngineVersionRequested = "jobEngineVersionRequested",
    jobEngineVersionUsed = "jobEngineVersionUsed",
    audioCodec = "audioCodec",
    videoCodec = "videoCodec",
}

M.Type = {
    SYSTEM = "SYSTEM",
    CUSTOM = "CUSTOM",
}

M.Format = {
    mp4 = "mp4",
    quicktime = "quicktime",
    matroska = "matroska",
    webm = "webm",
    mxf = "mxf",
    wave = "wave",
    avi = "avi",
    mpegts = "mpegts",
}

M.Codec = {
    UNKNOWN = "UNKNOWN",
    AAC = "AAC",
    AC3 = "AC3",
    EAC3 = "EAC3",
    FLAC = "FLAC",
    MP3 = "MP3",
    OPUS = "OPUS",
    PCM = "PCM",
    VORBIS = "VORBIS",
    AV1 = "AV1",
    AVC = "AVC",
    HEVC = "HEVC",
    JPEG2000 = "JPEG2000",
    MJPEG = "MJPEG",
    MPEG1 = "MPEG1",
    MP4V = "MP4V",
    MPEG2 = "MPEG2",
    PRORES = "PRORES",
    QTRLE = "QTRLE",
    THEORA = "THEORA",
    UNCOMPRESSED = "UNCOMPRESSED",
    VFW = "VFW",
    VP8 = "VP8",
    VP9 = "VP9",
    C608 = "C608",
    C708 = "C708",
    WEBVTT = "WEBVTT",
}

M.TrackType = {
    video = "video",
    audio = "audio",
    data = "data",
}

M.ColorPrimaries = {
    ITU_709 = "ITU_709",
    UNSPECIFIED = "UNSPECIFIED",
    RESERVED = "RESERVED",
    ITU_470M = "ITU_470M",
    ITU_470BG = "ITU_470BG",
    SMPTE_170M = "SMPTE_170M",
    SMPTE_240M = "SMPTE_240M",
    GENERIC_FILM = "GENERIC_FILM",
    ITU_2020 = "ITU_2020",
    SMPTE_428_1 = "SMPTE_428_1",
    SMPTE_431_2 = "SMPTE_431_2",
    SMPTE_EG_432_1 = "SMPTE_EG_432_1",
    IPT = "IPT",
    SMPTE_2067XYZ = "SMPTE_2067XYZ",
    EBU_3213_E = "EBU_3213_E",
    LAST = "LAST",
}

M.MatrixCoefficients = {
    RGB = "RGB",
    ITU_709 = "ITU_709",
    UNSPECIFIED = "UNSPECIFIED",
    RESERVED = "RESERVED",
    FCC = "FCC",
    ITU_470BG = "ITU_470BG",
    SMPTE_170M = "SMPTE_170M",
    SMPTE_240M = "SMPTE_240M",
    YCgCo = "YCgCo",
    ITU_2020_NCL = "ITU_2020_NCL",
    ITU_2020_CL = "ITU_2020_CL",
    SMPTE_2085 = "SMPTE_2085",
    CD_NCL = "CD_NCL",
    CD_CL = "CD_CL",
    ITU_2100ICtCp = "ITU_2100ICtCp",
    IPT = "IPT",
    EBU3213 = "EBU3213",
    LAST = "LAST",
}

M.TransferCharacteristics = {
    ITU_709 = "ITU_709",
    UNSPECIFIED = "UNSPECIFIED",
    RESERVED = "RESERVED",
    ITU_470M = "ITU_470M",
    ITU_470BG = "ITU_470BG",
    SMPTE_170M = "SMPTE_170M",
    SMPTE_240M = "SMPTE_240M",
    LINEAR = "LINEAR",
    LOG10_2 = "LOG10_2",
    LOC10_2_5 = "LOC10_2_5",
    IEC_61966_2_4 = "IEC_61966_2_4",
    ITU_1361 = "ITU_1361",
    IEC_61966_2_1 = "IEC_61966_2_1",
    ITU_2020_10bit = "ITU_2020_10bit",
    ITU_2020_12bit = "ITU_2020_12bit",
    SMPTE_2084 = "SMPTE_2084",
    SMPTE_428_1 = "SMPTE_428_1",
    ARIB_B67 = "ARIB_B67",
    LAST = "LAST",
}

M.PricingPlan = {
    ON_DEMAND = "ON_DEMAND",
    RESERVED = "RESERVED",
}

M.Commitment = {
    ONE_YEAR = "ONE_YEAR",
}

M.RenewalType = {
    AUTO_RENEW = "AUTO_RENEW",
    EXPIRE = "EXPIRE",
}

M.ReservationPlanStatus = {
    ACTIVE = "ACTIVE",
    EXPIRED = "EXPIRED",
}

M.QueueStatus = {
    ACTIVE = "ACTIVE",
    PAUSED = "PAUSED",
}

M.DescribeEndpointsMode = {
    DEFAULT = "DEFAULT",
    GET_ONLY = "GET_ONLY",
}

M.JobsQueryStatus = {
    SUBMITTED = "SUBMITTED",
    PROGRESSING = "PROGRESSING",
    COMPLETE = "COMPLETE",
    ERROR = "ERROR",
}

M.InputPolicy = {
    ALLOWED = "ALLOWED",
    DISALLOWED = "DISALLOWED",
}

M.JobTemplateListBy = {
    NAME = "NAME",
    CREATION_DATE = "CREATION_DATE",
    SYSTEM = "SYSTEM",
}

M.Order = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.PresetListBy = {
    NAME = "NAME",
    CREATION_DATE = "CREATION_DATE",
    SYSTEM = "SYSTEM",
}

M.QueueListBy = {
    NAME = "NAME",
    CREATION_DATE = "CREATION_DATE",
}

return M
