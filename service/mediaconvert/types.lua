local M = {}

M.RequiredFlag = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AllowedRenditionSize = {
    type = "structure",
    id = "AllowedRenditionSize",
    members = {
        Height = {
            type = "integer",
            traits = {
                json_name = "height",
            },
        },
        Required = {
            type = "string",
            traits = {
                json_name = "required",
            },
        },
        Width = {
            type = "integer",
            traits = {
                json_name = "width",
            },
        },
    },
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

M.AudioChannelTaggingSettings = {
    type = "structure",
    id = "AudioChannelTaggingSettings",
    members = {
        ChannelTag = {
            type = "string",
            traits = {
                json_name = "channelTag",
            },
        },
        ChannelTags = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "channelTags",
            },
        },
    },
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

M.AudioNormalizationSettings = {
    type = "structure",
    id = "AudioNormalizationSettings",
    members = {
        Algorithm = {
            type = "string",
            traits = {
                json_name = "algorithm",
            },
        },
        AlgorithmControl = {
            type = "string",
            traits = {
                json_name = "algorithmControl",
            },
        },
        CorrectionGateLevel = {
            type = "integer",
            traits = {
                json_name = "correctionGateLevel",
            },
        },
        LoudnessLogging = {
            type = "string",
            traits = {
                json_name = "loudnessLogging",
            },
        },
        PeakCalculation = {
            type = "string",
            traits = {
                json_name = "peakCalculation",
            },
        },
        TargetLkfs = {
            type = "double",
            traits = {
                json_name = "targetLkfs",
            },
        },
        TruePeakLimiterThreshold = {
            type = "double",
            traits = {
                json_name = "truePeakLimiterThreshold",
            },
        },
    },
}

M.SlowPalPitchCorrection = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.AudioPitchCorrectionSettings = {
    type = "structure",
    id = "AudioPitchCorrectionSettings",
    members = {
        SlowPalPitchCorrection = {
            type = "string",
            traits = {
                json_name = "slowPalPitchCorrection",
            },
        },
    },
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

M.AacSettings = {
    type = "structure",
    id = "AacSettings",
    members = {
        AudioDescriptionBroadcasterMix = {
            type = "string",
            traits = {
                json_name = "audioDescriptionBroadcasterMix",
            },
        },
        Bitrate = {
            type = "integer",
            traits = {
                json_name = "bitrate",
            },
        },
        CodecProfile = {
            type = "string",
            traits = {
                json_name = "codecProfile",
            },
        },
        CodingMode = {
            type = "string",
            traits = {
                json_name = "codingMode",
            },
        },
        LoudnessMeasurementMode = {
            type = "string",
            traits = {
                json_name = "loudnessMeasurementMode",
            },
        },
        RapInterval = {
            type = "integer",
            traits = {
                json_name = "rapInterval",
            },
        },
        RateControlMode = {
            type = "string",
            traits = {
                json_name = "rateControlMode",
            },
        },
        RawFormat = {
            type = "string",
            traits = {
                json_name = "rawFormat",
            },
        },
        SampleRate = {
            type = "integer",
            traits = {
                json_name = "sampleRate",
            },
        },
        Specification = {
            type = "string",
            traits = {
                json_name = "specification",
            },
        },
        TargetLoudnessRange = {
            type = "integer",
            traits = {
                json_name = "targetLoudnessRange",
            },
        },
        VbrQuality = {
            type = "string",
            traits = {
                json_name = "vbrQuality",
            },
        },
    },
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

M.Ac3Settings = {
    type = "structure",
    id = "Ac3Settings",
    members = {
        Bitrate = {
            type = "integer",
            traits = {
                json_name = "bitrate",
            },
        },
        BitstreamMode = {
            type = "string",
            traits = {
                json_name = "bitstreamMode",
            },
        },
        CodingMode = {
            type = "string",
            traits = {
                json_name = "codingMode",
            },
        },
        Dialnorm = {
            type = "integer",
            traits = {
                json_name = "dialnorm",
            },
        },
        DynamicRangeCompressionLine = {
            type = "string",
            traits = {
                json_name = "dynamicRangeCompressionLine",
            },
        },
        DynamicRangeCompressionProfile = {
            type = "string",
            traits = {
                json_name = "dynamicRangeCompressionProfile",
            },
        },
        DynamicRangeCompressionRf = {
            type = "string",
            traits = {
                json_name = "dynamicRangeCompressionRf",
            },
        },
        LfeFilter = {
            type = "string",
            traits = {
                json_name = "lfeFilter",
            },
        },
        MetadataControl = {
            type = "string",
            traits = {
                json_name = "metadataControl",
            },
        },
        SampleRate = {
            type = "integer",
            traits = {
                json_name = "sampleRate",
            },
        },
    },
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

M.Ac4Settings = {
    type = "structure",
    id = "Ac4Settings",
    members = {
        Bitrate = {
            type = "integer",
            traits = {
                json_name = "bitrate",
            },
        },
        BitstreamMode = {
            type = "string",
            traits = {
                json_name = "bitstreamMode",
            },
        },
        CodingMode = {
            type = "string",
            traits = {
                json_name = "codingMode",
            },
        },
        DynamicRangeCompressionFlatPanelTv = {
            type = "string",
            traits = {
                json_name = "dynamicRangeCompressionFlatPanelTv",
            },
        },
        DynamicRangeCompressionHomeTheater = {
            type = "string",
            traits = {
                json_name = "dynamicRangeCompressionHomeTheater",
            },
        },
        DynamicRangeCompressionPortableHeadphones = {
            type = "string",
            traits = {
                json_name = "dynamicRangeCompressionPortableHeadphones",
            },
        },
        DynamicRangeCompressionPortableSpeakers = {
            type = "string",
            traits = {
                json_name = "dynamicRangeCompressionPortableSpeakers",
            },
        },
        LoRoCenterMixLevel = {
            type = "double",
            traits = {
                json_name = "loRoCenterMixLevel",
            },
        },
        LoRoSurroundMixLevel = {
            type = "double",
            traits = {
                json_name = "loRoSurroundMixLevel",
            },
        },
        LtRtCenterMixLevel = {
            type = "double",
            traits = {
                json_name = "ltRtCenterMixLevel",
            },
        },
        LtRtSurroundMixLevel = {
            type = "double",
            traits = {
                json_name = "ltRtSurroundMixLevel",
            },
        },
        SampleRate = {
            type = "integer",
            traits = {
                json_name = "sampleRate",
            },
        },
        StereoDownmix = {
            type = "string",
            traits = {
                json_name = "stereoDownmix",
            },
        },
    },
}

M.AiffSettings = {
    type = "structure",
    id = "AiffSettings",
    members = {
        BitDepth = {
            type = "integer",
            traits = {
                json_name = "bitDepth",
            },
        },
        Channels = {
            type = "integer",
            traits = {
                json_name = "channels",
            },
        },
        SampleRate = {
            type = "integer",
            traits = {
                json_name = "sampleRate",
            },
        },
    },
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

M.Eac3AtmosSettings = {
    type = "structure",
    id = "Eac3AtmosSettings",
    members = {
        Bitrate = {
            type = "integer",
            traits = {
                json_name = "bitrate",
            },
        },
        BitstreamMode = {
            type = "string",
            traits = {
                json_name = "bitstreamMode",
            },
        },
        CodingMode = {
            type = "string",
            traits = {
                json_name = "codingMode",
            },
        },
        DialogueIntelligence = {
            type = "string",
            traits = {
                json_name = "dialogueIntelligence",
            },
        },
        DownmixControl = {
            type = "string",
            traits = {
                json_name = "downmixControl",
            },
        },
        DynamicRangeCompressionLine = {
            type = "string",
            traits = {
                json_name = "dynamicRangeCompressionLine",
            },
        },
        DynamicRangeCompressionRf = {
            type = "string",
            traits = {
                json_name = "dynamicRangeCompressionRf",
            },
        },
        DynamicRangeControl = {
            type = "string",
            traits = {
                json_name = "dynamicRangeControl",
            },
        },
        LoRoCenterMixLevel = {
            type = "double",
            traits = {
                json_name = "loRoCenterMixLevel",
            },
        },
        LoRoSurroundMixLevel = {
            type = "double",
            traits = {
                json_name = "loRoSurroundMixLevel",
            },
        },
        LtRtCenterMixLevel = {
            type = "double",
            traits = {
                json_name = "ltRtCenterMixLevel",
            },
        },
        LtRtSurroundMixLevel = {
            type = "double",
            traits = {
                json_name = "ltRtSurroundMixLevel",
            },
        },
        MeteringMode = {
            type = "string",
            traits = {
                json_name = "meteringMode",
            },
        },
        SampleRate = {
            type = "integer",
            traits = {
                json_name = "sampleRate",
            },
        },
        SpeechThreshold = {
            type = "integer",
            traits = {
                json_name = "speechThreshold",
            },
        },
        StereoDownmix = {
            type = "string",
            traits = {
                json_name = "stereoDownmix",
            },
        },
        SurroundExMode = {
            type = "string",
            traits = {
                json_name = "surroundExMode",
            },
        },
    },
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

M.Eac3Settings = {
    type = "structure",
    id = "Eac3Settings",
    members = {
        AttenuationControl = {
            type = "string",
            traits = {
                json_name = "attenuationControl",
            },
        },
        Bitrate = {
            type = "integer",
            traits = {
                json_name = "bitrate",
            },
        },
        BitstreamMode = {
            type = "string",
            traits = {
                json_name = "bitstreamMode",
            },
        },
        CodingMode = {
            type = "string",
            traits = {
                json_name = "codingMode",
            },
        },
        DcFilter = {
            type = "string",
            traits = {
                json_name = "dcFilter",
            },
        },
        Dialnorm = {
            type = "integer",
            traits = {
                json_name = "dialnorm",
            },
        },
        DynamicRangeCompressionLine = {
            type = "string",
            traits = {
                json_name = "dynamicRangeCompressionLine",
            },
        },
        DynamicRangeCompressionRf = {
            type = "string",
            traits = {
                json_name = "dynamicRangeCompressionRf",
            },
        },
        LfeControl = {
            type = "string",
            traits = {
                json_name = "lfeControl",
            },
        },
        LfeFilter = {
            type = "string",
            traits = {
                json_name = "lfeFilter",
            },
        },
        LoRoCenterMixLevel = {
            type = "double",
            traits = {
                json_name = "loRoCenterMixLevel",
            },
        },
        LoRoSurroundMixLevel = {
            type = "double",
            traits = {
                json_name = "loRoSurroundMixLevel",
            },
        },
        LtRtCenterMixLevel = {
            type = "double",
            traits = {
                json_name = "ltRtCenterMixLevel",
            },
        },
        LtRtSurroundMixLevel = {
            type = "double",
            traits = {
                json_name = "ltRtSurroundMixLevel",
            },
        },
        MetadataControl = {
            type = "string",
            traits = {
                json_name = "metadataControl",
            },
        },
        PassthroughControl = {
            type = "string",
            traits = {
                json_name = "passthroughControl",
            },
        },
        PhaseControl = {
            type = "string",
            traits = {
                json_name = "phaseControl",
            },
        },
        SampleRate = {
            type = "integer",
            traits = {
                json_name = "sampleRate",
            },
        },
        StereoDownmix = {
            type = "string",
            traits = {
                json_name = "stereoDownmix",
            },
        },
        SurroundExMode = {
            type = "string",
            traits = {
                json_name = "surroundExMode",
            },
        },
        SurroundMode = {
            type = "string",
            traits = {
                json_name = "surroundMode",
            },
        },
    },
}

M.FlacSettings = {
    type = "structure",
    id = "FlacSettings",
    members = {
        BitDepth = {
            type = "integer",
            traits = {
                json_name = "bitDepth",
            },
        },
        Channels = {
            type = "integer",
            traits = {
                json_name = "channels",
            },
        },
        SampleRate = {
            type = "integer",
            traits = {
                json_name = "sampleRate",
            },
        },
    },
}

M.Mp2AudioDescriptionMix = {
    BROADCASTER_MIXED_AD = "BROADCASTER_MIXED_AD",
    NONE = "NONE",
}

M.Mp2Settings = {
    type = "structure",
    id = "Mp2Settings",
    members = {
        AudioDescriptionMix = {
            type = "string",
            traits = {
                json_name = "audioDescriptionMix",
            },
        },
        Bitrate = {
            type = "integer",
            traits = {
                json_name = "bitrate",
            },
        },
        Channels = {
            type = "integer",
            traits = {
                json_name = "channels",
            },
        },
        SampleRate = {
            type = "integer",
            traits = {
                json_name = "sampleRate",
            },
        },
    },
}

M.Mp3RateControlMode = {
    CBR = "CBR",
    VBR = "VBR",
}

M.Mp3Settings = {
    type = "structure",
    id = "Mp3Settings",
    members = {
        Bitrate = {
            type = "integer",
            traits = {
                json_name = "bitrate",
            },
        },
        Channels = {
            type = "integer",
            traits = {
                json_name = "channels",
            },
        },
        RateControlMode = {
            type = "string",
            traits = {
                json_name = "rateControlMode",
            },
        },
        SampleRate = {
            type = "integer",
            traits = {
                json_name = "sampleRate",
            },
        },
        VbrQuality = {
            type = "integer",
            traits = {
                json_name = "vbrQuality",
            },
        },
    },
}

M.OpusSettings = {
    type = "structure",
    id = "OpusSettings",
    members = {
        Bitrate = {
            type = "integer",
            traits = {
                json_name = "bitrate",
            },
        },
        Channels = {
            type = "integer",
            traits = {
                json_name = "channels",
            },
        },
        SampleRate = {
            type = "integer",
            traits = {
                json_name = "sampleRate",
            },
        },
    },
}

M.VorbisSettings = {
    type = "structure",
    id = "VorbisSettings",
    members = {
        Channels = {
            type = "integer",
            traits = {
                json_name = "channels",
            },
        },
        SampleRate = {
            type = "integer",
            traits = {
                json_name = "sampleRate",
            },
        },
        VbrQuality = {
            type = "integer",
            traits = {
                json_name = "vbrQuality",
            },
        },
    },
}

M.WavFormat = {
    RIFF = "RIFF",
    RF64 = "RF64",
    EXTENSIBLE = "EXTENSIBLE",
}

M.WavSettings = {
    type = "structure",
    id = "WavSettings",
    members = {
        BitDepth = {
            type = "integer",
            traits = {
                json_name = "bitDepth",
            },
        },
        Channels = {
            type = "integer",
            traits = {
                json_name = "channels",
            },
        },
        Format = {
            type = "string",
            traits = {
                json_name = "format",
            },
        },
        SampleRate = {
            type = "integer",
            traits = {
                json_name = "sampleRate",
            },
        },
    },
}

M.AudioCodecSettings = {
    type = "structure",
    id = "AudioCodecSettings",
    members = {
        AacSettings = setmetatable({ traits = {
            json_name = "aacSettings",
        } }, { __index = M.AacSettings }),
        Ac3Settings = setmetatable({ traits = {
            json_name = "ac3Settings",
        } }, { __index = M.Ac3Settings }),
        Ac4Settings = setmetatable({ traits = {
            json_name = "ac4Settings",
        } }, { __index = M.Ac4Settings }),
        AiffSettings = setmetatable({ traits = {
            json_name = "aiffSettings",
        } }, { __index = M.AiffSettings }),
        Codec = {
            type = "string",
            traits = {
                json_name = "codec",
            },
        },
        Eac3AtmosSettings = setmetatable({ traits = {
            json_name = "eac3AtmosSettings",
        } }, { __index = M.Eac3AtmosSettings }),
        Eac3Settings = setmetatable({ traits = {
            json_name = "eac3Settings",
        } }, { __index = M.Eac3Settings }),
        FlacSettings = setmetatable({ traits = {
            json_name = "flacSettings",
        } }, { __index = M.FlacSettings }),
        Mp2Settings = setmetatable({ traits = {
            json_name = "mp2Settings",
        } }, { __index = M.Mp2Settings }),
        Mp3Settings = setmetatable({ traits = {
            json_name = "mp3Settings",
        } }, { __index = M.Mp3Settings }),
        OpusSettings = setmetatable({ traits = {
            json_name = "opusSettings",
        } }, { __index = M.OpusSettings }),
        VorbisSettings = setmetatable({ traits = {
            json_name = "vorbisSettings",
        } }, { __index = M.VorbisSettings }),
        WavSettings = setmetatable({ traits = {
            json_name = "wavSettings",
        } }, { __index = M.WavSettings }),
    },
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

M.OutputChannelMapping = {
    type = "structure",
    id = "OutputChannelMapping",
    members = {
        InputChannels = {
            type = "list",
            member = { type = "integer" },
            traits = {
                json_name = "inputChannels",
            },
        },
        InputChannelsFineTune = {
            type = "list",
            member = { type = "double" },
            traits = {
                json_name = "inputChannelsFineTune",
            },
        },
    },
}

M.ChannelMapping = {
    type = "structure",
    id = "ChannelMapping",
    members = {
        OutputChannels = {
            type = "list",
            member = M.OutputChannelMapping,
            traits = {
                json_name = "outputChannels",
            },
        },
    },
}

M.RemixSettings = {
    type = "structure",
    id = "RemixSettings",
    members = {
        AudioDescriptionAudioChannel = {
            type = "integer",
            traits = {
                json_name = "audioDescriptionAudioChannel",
            },
        },
        AudioDescriptionDataChannel = {
            type = "integer",
            traits = {
                json_name = "audioDescriptionDataChannel",
            },
        },
        ChannelMapping = setmetatable({ traits = {
            json_name = "channelMapping",
        } }, { __index = M.ChannelMapping }),
        ChannelsIn = {
            type = "integer",
            traits = {
                json_name = "channelsIn",
            },
        },
        ChannelsOut = {
            type = "integer",
            traits = {
                json_name = "channelsOut",
            },
        },
    },
}

M.AudioDescription = {
    type = "structure",
    id = "AudioDescription",
    members = {
        AudioChannelTaggingSettings = setmetatable({ traits = {
            json_name = "audioChannelTaggingSettings",
        } }, { __index = M.AudioChannelTaggingSettings }),
        AudioNormalizationSettings = setmetatable({ traits = {
            json_name = "audioNormalizationSettings",
        } }, { __index = M.AudioNormalizationSettings }),
        AudioPitchCorrectionSettings = setmetatable({ traits = {
            json_name = "audioPitchCorrectionSettings",
        } }, { __index = M.AudioPitchCorrectionSettings }),
        AudioSourceName = {
            type = "string",
            traits = {
                json_name = "audioSourceName",
            },
        },
        AudioType = {
            type = "integer",
            traits = {
                json_name = "audioType",
            },
        },
        AudioTypeControl = {
            type = "string",
            traits = {
                json_name = "audioTypeControl",
            },
        },
        CodecSettings = setmetatable({ traits = {
            json_name = "codecSettings",
        } }, { __index = M.AudioCodecSettings }),
        CustomLanguageCode = {
            type = "string",
            traits = {
                json_name = "customLanguageCode",
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                json_name = "languageCode",
            },
        },
        LanguageCodeControl = {
            type = "string",
            traits = {
                json_name = "languageCodeControl",
            },
        },
        RemixSettings = setmetatable({ traits = {
            json_name = "remixSettings",
        } }, { __index = M.RemixSettings }),
        StreamName = {
            type = "string",
            traits = {
                json_name = "streamName",
            },
        },
    },
}

M.ForceIncludeRenditionSize = {
    type = "structure",
    id = "ForceIncludeRenditionSize",
    members = {
        Height = {
            type = "integer",
            traits = {
                json_name = "height",
            },
        },
        Width = {
            type = "integer",
            traits = {
                json_name = "width",
            },
        },
    },
}

M.MinBottomRenditionSize = {
    type = "structure",
    id = "MinBottomRenditionSize",
    members = {
        Height = {
            type = "integer",
            traits = {
                json_name = "height",
            },
        },
        Width = {
            type = "integer",
            traits = {
                json_name = "width",
            },
        },
    },
}

M.MinTopRenditionSize = {
    type = "structure",
    id = "MinTopRenditionSize",
    members = {
        Height = {
            type = "integer",
            traits = {
                json_name = "height",
            },
        },
        Width = {
            type = "integer",
            traits = {
                json_name = "width",
            },
        },
    },
}

M.RuleType = {
    MIN_TOP_RENDITION_SIZE = "MIN_TOP_RENDITION_SIZE",
    MIN_BOTTOM_RENDITION_SIZE = "MIN_BOTTOM_RENDITION_SIZE",
    FORCE_INCLUDE_RENDITIONS = "FORCE_INCLUDE_RENDITIONS",
    ALLOWED_RENDITIONS = "ALLOWED_RENDITIONS",
}

M.AutomatedAbrRule = {
    type = "structure",
    id = "AutomatedAbrRule",
    members = {
        AllowedRenditions = {
            type = "list",
            member = M.AllowedRenditionSize,
            traits = {
                json_name = "allowedRenditions",
            },
        },
        ForceIncludeRenditions = {
            type = "list",
            member = M.ForceIncludeRenditionSize,
            traits = {
                json_name = "forceIncludeRenditions",
            },
        },
        MinBottomRenditionSize = setmetatable({ traits = {
            json_name = "minBottomRenditionSize",
        } }, { __index = M.MinBottomRenditionSize }),
        MinTopRenditionSize = setmetatable({ traits = {
            json_name = "minTopRenditionSize",
        } }, { __index = M.MinTopRenditionSize }),
        Type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
    },
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

M.BurninDestinationSettings = {
    type = "structure",
    id = "BurninDestinationSettings",
    members = {
        Alignment = {
            type = "string",
            traits = {
                json_name = "alignment",
            },
        },
        ApplyFontColor = {
            type = "string",
            traits = {
                json_name = "applyFontColor",
            },
        },
        BackgroundColor = {
            type = "string",
            traits = {
                json_name = "backgroundColor",
            },
        },
        BackgroundOpacity = {
            type = "integer",
            traits = {
                json_name = "backgroundOpacity",
            },
        },
        FallbackFont = {
            type = "string",
            traits = {
                json_name = "fallbackFont",
            },
        },
        FontColor = {
            type = "string",
            traits = {
                json_name = "fontColor",
            },
        },
        FontFileBold = {
            type = "string",
            traits = {
                json_name = "fontFileBold",
            },
        },
        FontFileBoldItalic = {
            type = "string",
            traits = {
                json_name = "fontFileBoldItalic",
            },
        },
        FontFileItalic = {
            type = "string",
            traits = {
                json_name = "fontFileItalic",
            },
        },
        FontFileRegular = {
            type = "string",
            traits = {
                json_name = "fontFileRegular",
            },
        },
        FontOpacity = {
            type = "integer",
            traits = {
                json_name = "fontOpacity",
            },
        },
        FontResolution = {
            type = "integer",
            traits = {
                json_name = "fontResolution",
            },
        },
        FontScript = {
            type = "string",
            traits = {
                json_name = "fontScript",
            },
        },
        FontSize = {
            type = "integer",
            traits = {
                json_name = "fontSize",
            },
        },
        HexFontColor = {
            type = "string",
            traits = {
                json_name = "hexFontColor",
            },
        },
        OutlineColor = {
            type = "string",
            traits = {
                json_name = "outlineColor",
            },
        },
        OutlineSize = {
            type = "integer",
            traits = {
                json_name = "outlineSize",
            },
        },
        RemoveRubyReserveAttributes = {
            type = "string",
            traits = {
                json_name = "removeRubyReserveAttributes",
            },
        },
        ShadowColor = {
            type = "string",
            traits = {
                json_name = "shadowColor",
            },
        },
        ShadowOpacity = {
            type = "integer",
            traits = {
                json_name = "shadowOpacity",
            },
        },
        ShadowXOffset = {
            type = "integer",
            traits = {
                json_name = "shadowXOffset",
            },
        },
        ShadowYOffset = {
            type = "integer",
            traits = {
                json_name = "shadowYOffset",
            },
        },
        StylePassthrough = {
            type = "string",
            traits = {
                json_name = "stylePassthrough",
            },
        },
        TeletextSpacing = {
            type = "string",
            traits = {
                json_name = "teletextSpacing",
            },
        },
        XPosition = {
            type = "integer",
            traits = {
                json_name = "xPosition",
            },
        },
        YPosition = {
            type = "integer",
            traits = {
                json_name = "yPosition",
            },
        },
    },
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

M.DvbSubDestinationSettings = {
    type = "structure",
    id = "DvbSubDestinationSettings",
    members = {
        Alignment = {
            type = "string",
            traits = {
                json_name = "alignment",
            },
        },
        ApplyFontColor = {
            type = "string",
            traits = {
                json_name = "applyFontColor",
            },
        },
        BackgroundColor = {
            type = "string",
            traits = {
                json_name = "backgroundColor",
            },
        },
        BackgroundOpacity = {
            type = "integer",
            traits = {
                json_name = "backgroundOpacity",
            },
        },
        DdsHandling = {
            type = "string",
            traits = {
                json_name = "ddsHandling",
            },
        },
        DdsXCoordinate = {
            type = "integer",
            traits = {
                json_name = "ddsXCoordinate",
            },
        },
        DdsYCoordinate = {
            type = "integer",
            traits = {
                json_name = "ddsYCoordinate",
            },
        },
        FallbackFont = {
            type = "string",
            traits = {
                json_name = "fallbackFont",
            },
        },
        FontColor = {
            type = "string",
            traits = {
                json_name = "fontColor",
            },
        },
        FontFileBold = {
            type = "string",
            traits = {
                json_name = "fontFileBold",
            },
        },
        FontFileBoldItalic = {
            type = "string",
            traits = {
                json_name = "fontFileBoldItalic",
            },
        },
        FontFileItalic = {
            type = "string",
            traits = {
                json_name = "fontFileItalic",
            },
        },
        FontFileRegular = {
            type = "string",
            traits = {
                json_name = "fontFileRegular",
            },
        },
        FontOpacity = {
            type = "integer",
            traits = {
                json_name = "fontOpacity",
            },
        },
        FontResolution = {
            type = "integer",
            traits = {
                json_name = "fontResolution",
            },
        },
        FontScript = {
            type = "string",
            traits = {
                json_name = "fontScript",
            },
        },
        FontSize = {
            type = "integer",
            traits = {
                json_name = "fontSize",
            },
        },
        Height = {
            type = "integer",
            traits = {
                json_name = "height",
            },
        },
        HexFontColor = {
            type = "string",
            traits = {
                json_name = "hexFontColor",
            },
        },
        OutlineColor = {
            type = "string",
            traits = {
                json_name = "outlineColor",
            },
        },
        OutlineSize = {
            type = "integer",
            traits = {
                json_name = "outlineSize",
            },
        },
        ShadowColor = {
            type = "string",
            traits = {
                json_name = "shadowColor",
            },
        },
        ShadowOpacity = {
            type = "integer",
            traits = {
                json_name = "shadowOpacity",
            },
        },
        ShadowXOffset = {
            type = "integer",
            traits = {
                json_name = "shadowXOffset",
            },
        },
        ShadowYOffset = {
            type = "integer",
            traits = {
                json_name = "shadowYOffset",
            },
        },
        StylePassthrough = {
            type = "string",
            traits = {
                json_name = "stylePassthrough",
            },
        },
        SubtitlingType = {
            type = "string",
            traits = {
                json_name = "subtitlingType",
            },
        },
        TeletextSpacing = {
            type = "string",
            traits = {
                json_name = "teletextSpacing",
            },
        },
        Width = {
            type = "integer",
            traits = {
                json_name = "width",
            },
        },
        XPosition = {
            type = "integer",
            traits = {
                json_name = "xPosition",
            },
        },
        YPosition = {
            type = "integer",
            traits = {
                json_name = "yPosition",
            },
        },
    },
}

M.EmbeddedDestinationSettings = {
    type = "structure",
    id = "EmbeddedDestinationSettings",
    members = {
        Destination608ChannelNumber = {
            type = "integer",
            traits = {
                json_name = "destination608ChannelNumber",
            },
        },
        Destination708ServiceNumber = {
            type = "integer",
            traits = {
                json_name = "destination708ServiceNumber",
            },
        },
    },
}

M.ImscAccessibilitySubs = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.ImscStylePassthrough = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ImscDestinationSettings = {
    type = "structure",
    id = "ImscDestinationSettings",
    members = {
        Accessibility = {
            type = "string",
            traits = {
                json_name = "accessibility",
            },
        },
        StylePassthrough = {
            type = "string",
            traits = {
                json_name = "stylePassthrough",
            },
        },
    },
}

M.SccDestinationFramerate = {
    FRAMERATE_23_97 = "FRAMERATE_23_97",
    FRAMERATE_24 = "FRAMERATE_24",
    FRAMERATE_25 = "FRAMERATE_25",
    FRAMERATE_29_97_DROPFRAME = "FRAMERATE_29_97_DROPFRAME",
    FRAMERATE_29_97_NON_DROPFRAME = "FRAMERATE_29_97_NON_DROPFRAME",
}

M.SccDestinationSettings = {
    type = "structure",
    id = "SccDestinationSettings",
    members = {
        Framerate = {
            type = "string",
            traits = {
                json_name = "framerate",
            },
        },
    },
}

M.SrtStylePassthrough = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.SrtDestinationSettings = {
    type = "structure",
    id = "SrtDestinationSettings",
    members = {
        StylePassthrough = {
            type = "string",
            traits = {
                json_name = "stylePassthrough",
            },
        },
    },
}

M.TeletextPageType = {
    PAGE_TYPE_INITIAL = "PAGE_TYPE_INITIAL",
    PAGE_TYPE_SUBTITLE = "PAGE_TYPE_SUBTITLE",
    PAGE_TYPE_ADDL_INFO = "PAGE_TYPE_ADDL_INFO",
    PAGE_TYPE_PROGRAM_SCHEDULE = "PAGE_TYPE_PROGRAM_SCHEDULE",
    PAGE_TYPE_HEARING_IMPAIRED_SUBTITLE = "PAGE_TYPE_HEARING_IMPAIRED_SUBTITLE",
}

M.TeletextDestinationSettings = {
    type = "structure",
    id = "TeletextDestinationSettings",
    members = {
        PageNumber = {
            type = "string",
            traits = {
                json_name = "pageNumber",
            },
        },
        PageTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "pageTypes",
            },
        },
    },
}

M.TtmlStylePassthrough = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.TtmlDestinationSettings = {
    type = "structure",
    id = "TtmlDestinationSettings",
    members = {
        StylePassthrough = {
            type = "string",
            traits = {
                json_name = "stylePassthrough",
            },
        },
    },
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

M.WebvttDestinationSettings = {
    type = "structure",
    id = "WebvttDestinationSettings",
    members = {
        Accessibility = {
            type = "string",
            traits = {
                json_name = "accessibility",
            },
        },
        StylePassthrough = {
            type = "string",
            traits = {
                json_name = "stylePassthrough",
            },
        },
    },
}

M.CaptionDestinationSettings = {
    type = "structure",
    id = "CaptionDestinationSettings",
    members = {
        BurninDestinationSettings = setmetatable({ traits = {
            json_name = "burninDestinationSettings",
        } }, { __index = M.BurninDestinationSettings }),
        DestinationType = {
            type = "string",
            traits = {
                json_name = "destinationType",
            },
        },
        DvbSubDestinationSettings = setmetatable({ traits = {
            json_name = "dvbSubDestinationSettings",
        } }, { __index = M.DvbSubDestinationSettings }),
        EmbeddedDestinationSettings = setmetatable({ traits = {
            json_name = "embeddedDestinationSettings",
        } }, { __index = M.EmbeddedDestinationSettings }),
        ImscDestinationSettings = setmetatable({ traits = {
            json_name = "imscDestinationSettings",
        } }, { __index = M.ImscDestinationSettings }),
        SccDestinationSettings = setmetatable({ traits = {
            json_name = "sccDestinationSettings",
        } }, { __index = M.SccDestinationSettings }),
        SrtDestinationSettings = setmetatable({ traits = {
            json_name = "srtDestinationSettings",
        } }, { __index = M.SrtDestinationSettings }),
        TeletextDestinationSettings = setmetatable({ traits = {
            json_name = "teletextDestinationSettings",
        } }, { __index = M.TeletextDestinationSettings }),
        TtmlDestinationSettings = setmetatable({ traits = {
            json_name = "ttmlDestinationSettings",
        } }, { __index = M.TtmlDestinationSettings }),
        WebvttDestinationSettings = setmetatable({ traits = {
            json_name = "webvttDestinationSettings",
        } }, { __index = M.WebvttDestinationSettings }),
    },
}

M.CaptionDescription = {
    type = "structure",
    id = "CaptionDescription",
    members = {
        CaptionSelectorName = {
            type = "string",
            traits = {
                json_name = "captionSelectorName",
            },
        },
        CustomLanguageCode = {
            type = "string",
            traits = {
                json_name = "customLanguageCode",
            },
        },
        DestinationSettings = setmetatable({ traits = {
            json_name = "destinationSettings",
        } }, { __index = M.CaptionDestinationSettings }),
        LanguageCode = {
            type = "string",
            traits = {
                json_name = "languageCode",
            },
        },
        LanguageDescription = {
            type = "string",
            traits = {
                json_name = "languageDescription",
            },
        },
    },
}

M.CaptionDescriptionPreset = {
    type = "structure",
    id = "CaptionDescriptionPreset",
    members = {
        CustomLanguageCode = {
            type = "string",
            traits = {
                json_name = "customLanguageCode",
            },
        },
        DestinationSettings = setmetatable({ traits = {
            json_name = "destinationSettings",
        } }, { __index = M.CaptionDestinationSettings }),
        LanguageCode = {
            type = "string",
            traits = {
                json_name = "languageCode",
            },
        },
        LanguageDescription = {
            type = "string",
            traits = {
                json_name = "languageDescription",
            },
        },
    },
}

M.CmafAdditionalManifest = {
    type = "structure",
    id = "CmafAdditionalManifest",
    members = {
        ManifestNameModifier = {
            type = "string",
            traits = {
                json_name = "manifestNameModifier",
            },
        },
        SelectedOutputs = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "selectedOutputs",
            },
        },
    },
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

M.ColorConversion3DLUTSetting = {
    type = "structure",
    id = "ColorConversion3DLUTSetting",
    members = {
        FileInput = {
            type = "string",
            traits = {
                json_name = "fileInput",
            },
        },
        InputColorSpace = {
            type = "string",
            traits = {
                json_name = "inputColorSpace",
            },
        },
        InputMasteringLuminance = {
            type = "integer",
            traits = {
                json_name = "inputMasteringLuminance",
            },
        },
        OutputColorSpace = {
            type = "string",
            traits = {
                json_name = "outputColorSpace",
            },
        },
        OutputMasteringLuminance = {
            type = "integer",
            traits = {
                json_name = "outputMasteringLuminance",
            },
        },
    },
}

M.DashAdditionalManifest = {
    type = "structure",
    id = "DashAdditionalManifest",
    members = {
        ManifestNameModifier = {
            type = "string",
            traits = {
                json_name = "manifestNameModifier",
            },
        },
        SelectedOutputs = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "selectedOutputs",
            },
        },
    },
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

M.ElementalInferenceFeed = {
    type = "structure",
    id = "ElementalInferenceFeed",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        FeedManagementState = {
            type = "string",
            traits = {
                json_name = "feedManagementState",
            },
        },
    },
}

M.Endpoint = {
    type = "structure",
    id = "Endpoint",
    members = {
        Url = {
            type = "string",
            traits = {
                json_name = "url",
            },
        },
    },
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

M.HlsAdditionalManifest = {
    type = "structure",
    id = "HlsAdditionalManifest",
    members = {
        ManifestNameModifier = {
            type = "string",
            traits = {
                json_name = "manifestNameModifier",
            },
        },
        SelectedOutputs = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "selectedOutputs",
            },
        },
    },
}

M.HlsAdMarkers = {
    ELEMENTAL = "ELEMENTAL",
    ELEMENTAL_SCTE35 = "ELEMENTAL_SCTE35",
}

M.HlsCaptionLanguageMapping = {
    type = "structure",
    id = "HlsCaptionLanguageMapping",
    members = {
        CaptionChannel = {
            type = "integer",
            traits = {
                json_name = "captionChannel",
            },
        },
        CustomLanguageCode = {
            type = "string",
            traits = {
                json_name = "customLanguageCode",
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                json_name = "languageCode",
            },
        },
        LanguageDescription = {
            type = "string",
            traits = {
                json_name = "languageDescription",
            },
        },
    },
}

M.HopDestination = {
    type = "structure",
    id = "HopDestination",
    members = {
        Priority = {
            type = "integer",
            traits = {
                json_name = "priority",
            },
        },
        Queue = {
            type = "string",
            traits = {
                json_name = "queue",
            },
        },
        WaitMinutes = {
            type = "integer",
            traits = {
                json_name = "waitMinutes",
            },
        },
    },
}

M.Id3Insertion = {
    type = "structure",
    id = "Id3Insertion",
    members = {
        Id3 = {
            type = "string",
            traits = {
                json_name = "id3",
            },
        },
        Timecode = {
            type = "string",
            traits = {
                json_name = "timecode",
            },
        },
    },
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

M.AdvancedInputFilterSettings = {
    type = "structure",
    id = "AdvancedInputFilterSettings",
    members = {
        AddTexture = {
            type = "string",
            traits = {
                json_name = "addTexture",
            },
        },
        Sharpening = {
            type = "string",
            traits = {
                json_name = "sharpening",
            },
        },
    },
}

M.AudioSelectorGroup = {
    type = "structure",
    id = "AudioSelectorGroup",
    members = {
        AudioSelectorNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "audioSelectorNames",
            },
        },
    },
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

M.HlsRenditionGroupSettings = {
    type = "structure",
    id = "HlsRenditionGroupSettings",
    members = {
        RenditionGroupId = {
            type = "string",
            traits = {
                json_name = "renditionGroupId",
            },
        },
        RenditionLanguageCode = {
            type = "string",
            traits = {
                json_name = "renditionLanguageCode",
            },
        },
        RenditionName = {
            type = "string",
            traits = {
                json_name = "renditionName",
            },
        },
    },
}

M.AudioSelectorType = {
    PID = "PID",
    TRACK = "TRACK",
    LANGUAGE_CODE = "LANGUAGE_CODE",
    HLS_RENDITION_GROUP = "HLS_RENDITION_GROUP",
    ALL_PCM = "ALL_PCM",
    STREAM = "STREAM",
}

M.AudioSelector = {
    type = "structure",
    id = "AudioSelector",
    members = {
        AudioDurationCorrection = {
            type = "string",
            traits = {
                json_name = "audioDurationCorrection",
            },
        },
        CustomLanguageCode = {
            type = "string",
            traits = {
                json_name = "customLanguageCode",
            },
        },
        DefaultSelection = {
            type = "string",
            traits = {
                json_name = "defaultSelection",
            },
        },
        ExternalAudioFileInput = {
            type = "string",
            traits = {
                json_name = "externalAudioFileInput",
            },
        },
        HlsRenditionGroupSettings = setmetatable({ traits = {
            json_name = "hlsRenditionGroupSettings",
        } }, { __index = M.HlsRenditionGroupSettings }),
        LanguageCode = {
            type = "string",
            traits = {
                json_name = "languageCode",
            },
        },
        Offset = {
            type = "integer",
            traits = {
                json_name = "offset",
            },
        },
        Pids = {
            type = "list",
            member = { type = "integer" },
            traits = {
                json_name = "pids",
            },
        },
        ProgramSelection = {
            type = "integer",
            traits = {
                json_name = "programSelection",
            },
        },
        RemixSettings = setmetatable({ traits = {
            json_name = "remixSettings",
        } }, { __index = M.RemixSettings }),
        SelectorType = {
            type = "string",
            traits = {
                json_name = "selectorType",
            },
        },
        Streams = {
            type = "list",
            member = { type = "integer" },
            traits = {
                json_name = "streams",
            },
        },
        Tracks = {
            type = "list",
            member = { type = "integer" },
            traits = {
                json_name = "tracks",
            },
        },
    },
}

M.AncillaryConvert608To708 = {
    UPCONVERT = "UPCONVERT",
    DISABLED = "DISABLED",
}

M.AncillaryTerminateCaptions = {
    END_OF_INPUT = "END_OF_INPUT",
    DISABLED = "DISABLED",
}

M.AncillarySourceSettings = {
    type = "structure",
    id = "AncillarySourceSettings",
    members = {
        Convert608To708 = {
            type = "string",
            traits = {
                json_name = "convert608To708",
            },
        },
        SourceAncillaryChannelNumber = {
            type = "integer",
            traits = {
                json_name = "sourceAncillaryChannelNumber",
            },
        },
        TerminateCaptions = {
            type = "string",
            traits = {
                json_name = "terminateCaptions",
            },
        },
    },
}

M.DvbSubSourceSettings = {
    type = "structure",
    id = "DvbSubSourceSettings",
    members = {
        Pid = {
            type = "integer",
            traits = {
                json_name = "pid",
            },
        },
    },
}

M.EmbeddedConvert608To708 = {
    UPCONVERT = "UPCONVERT",
    DISABLED = "DISABLED",
}

M.EmbeddedTerminateCaptions = {
    END_OF_INPUT = "END_OF_INPUT",
    DISABLED = "DISABLED",
}

M.EmbeddedSourceSettings = {
    type = "structure",
    id = "EmbeddedSourceSettings",
    members = {
        Convert608To708 = {
            type = "string",
            traits = {
                json_name = "convert608To708",
            },
        },
        Source608ChannelNumber = {
            type = "integer",
            traits = {
                json_name = "source608ChannelNumber",
            },
        },
        Source608TrackNumber = {
            type = "integer",
            traits = {
                json_name = "source608TrackNumber",
            },
        },
        TerminateCaptions = {
            type = "string",
            traits = {
                json_name = "terminateCaptions",
            },
        },
    },
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

M.CaptionSourceFramerate = {
    type = "structure",
    id = "CaptionSourceFramerate",
    members = {
        FramerateDenominator = {
            type = "integer",
            traits = {
                json_name = "framerateDenominator",
            },
        },
        FramerateNumerator = {
            type = "integer",
            traits = {
                json_name = "framerateNumerator",
            },
        },
    },
}

M.FileSourceTimeDeltaUnits = {
    SECONDS = "SECONDS",
    MILLISECONDS = "MILLISECONDS",
}

M.CaptionSourceUpconvertSTLToTeletext = {
    UPCONVERT = "UPCONVERT",
    DISABLED = "DISABLED",
}

M.FileSourceSettings = {
    type = "structure",
    id = "FileSourceSettings",
    members = {
        ByteRateLimit = {
            type = "string",
            traits = {
                json_name = "byteRateLimit",
            },
        },
        Convert608To708 = {
            type = "string",
            traits = {
                json_name = "convert608To708",
            },
        },
        ConvertPaintToPop = {
            type = "string",
            traits = {
                json_name = "convertPaintToPop",
            },
        },
        Framerate = setmetatable({ traits = {
            json_name = "framerate",
        } }, { __index = M.CaptionSourceFramerate }),
        SourceFile = {
            type = "string",
            traits = {
                json_name = "sourceFile",
            },
        },
        TimeDelta = {
            type = "integer",
            traits = {
                json_name = "timeDelta",
            },
        },
        TimeDeltaUnits = {
            type = "string",
            traits = {
                json_name = "timeDeltaUnits",
            },
        },
        UpconvertSTLToTeletext = {
            type = "string",
            traits = {
                json_name = "upconvertSTLToTeletext",
            },
        },
    },
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

M.TeletextSourceSettings = {
    type = "structure",
    id = "TeletextSourceSettings",
    members = {
        PageNumber = {
            type = "string",
            traits = {
                json_name = "pageNumber",
            },
        },
    },
}

M.TrackSourceSettings = {
    type = "structure",
    id = "TrackSourceSettings",
    members = {
        StreamNumber = {
            type = "integer",
            traits = {
                json_name = "streamNumber",
            },
        },
        TrackNumber = {
            type = "integer",
            traits = {
                json_name = "trackNumber",
            },
        },
    },
}

M.WebvttHlsSourceSettings = {
    type = "structure",
    id = "WebvttHlsSourceSettings",
    members = {
        RenditionGroupId = {
            type = "string",
            traits = {
                json_name = "renditionGroupId",
            },
        },
        RenditionLanguageCode = {
            type = "string",
            traits = {
                json_name = "renditionLanguageCode",
            },
        },
        RenditionName = {
            type = "string",
            traits = {
                json_name = "renditionName",
            },
        },
    },
}

M.CaptionSourceSettings = {
    type = "structure",
    id = "CaptionSourceSettings",
    members = {
        AncillarySourceSettings = setmetatable({ traits = {
            json_name = "ancillarySourceSettings",
        } }, { __index = M.AncillarySourceSettings }),
        DvbSubSourceSettings = setmetatable({ traits = {
            json_name = "dvbSubSourceSettings",
        } }, { __index = M.DvbSubSourceSettings }),
        EmbeddedSourceSettings = setmetatable({ traits = {
            json_name = "embeddedSourceSettings",
        } }, { __index = M.EmbeddedSourceSettings }),
        FileSourceSettings = setmetatable({ traits = {
            json_name = "fileSourceSettings",
        } }, { __index = M.FileSourceSettings }),
        SourceType = {
            type = "string",
            traits = {
                json_name = "sourceType",
            },
        },
        TeletextSourceSettings = setmetatable({ traits = {
            json_name = "teletextSourceSettings",
        } }, { __index = M.TeletextSourceSettings }),
        TrackSourceSettings = setmetatable({ traits = {
            json_name = "trackSourceSettings",
        } }, { __index = M.TrackSourceSettings }),
        WebvttHlsSourceSettings = setmetatable({ traits = {
            json_name = "webvttHlsSourceSettings",
        } }, { __index = M.WebvttHlsSourceSettings }),
    },
}

M.CaptionSelector = {
    type = "structure",
    id = "CaptionSelector",
    members = {
        CustomLanguageCode = {
            type = "string",
            traits = {
                json_name = "customLanguageCode",
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                json_name = "languageCode",
            },
        },
        SourceSettings = setmetatable({ traits = {
            json_name = "sourceSettings",
        } }, { __index = M.CaptionSourceSettings }),
    },
}

M.Rectangle = {
    type = "structure",
    id = "Rectangle",
    members = {
        Height = {
            type = "integer",
            traits = {
                json_name = "height",
            },
        },
        Width = {
            type = "integer",
            traits = {
                json_name = "width",
            },
        },
        X = {
            type = "integer",
            traits = {
                json_name = "x",
            },
        },
        Y = {
            type = "integer",
            traits = {
                json_name = "y",
            },
        },
    },
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

M.InputDecryptionSettings = {
    type = "structure",
    id = "InputDecryptionSettings",
    members = {
        DecryptionMode = {
            type = "string",
            traits = {
                json_name = "decryptionMode",
            },
        },
        EncryptedDecryptionKey = {
            type = "string",
            traits = {
                json_name = "encryptedDecryptionKey",
            },
        },
        InitializationVector = {
            type = "string",
            traits = {
                json_name = "initializationVector",
            },
        },
        KmsKeyRegion = {
            type = "string",
            traits = {
                json_name = "kmsKeyRegion",
            },
        },
    },
}

M.InputDenoiseFilter = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.DynamicAudioSelectorType = {
    ALL_TRACKS = "ALL_TRACKS",
    LANGUAGE_CODE = "LANGUAGE_CODE",
}

M.DynamicAudioSelector = {
    type = "structure",
    id = "DynamicAudioSelector",
    members = {
        AudioDurationCorrection = {
            type = "string",
            traits = {
                json_name = "audioDurationCorrection",
            },
        },
        ExternalAudioFileInput = {
            type = "string",
            traits = {
                json_name = "externalAudioFileInput",
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                json_name = "languageCode",
            },
        },
        Offset = {
            type = "integer",
            traits = {
                json_name = "offset",
            },
        },
        SelectorType = {
            type = "string",
            traits = {
                json_name = "selectorType",
            },
        },
    },
}

M.InputFilterEnable = {
    AUTO = "AUTO",
    DISABLE = "DISABLE",
    FORCE = "FORCE",
}

M.InsertableImage = {
    type = "structure",
    id = "InsertableImage",
    members = {
        Duration = {
            type = "integer",
            traits = {
                json_name = "duration",
            },
        },
        FadeIn = {
            type = "integer",
            traits = {
                json_name = "fadeIn",
            },
        },
        FadeOut = {
            type = "integer",
            traits = {
                json_name = "fadeOut",
            },
        },
        Height = {
            type = "integer",
            traits = {
                json_name = "height",
            },
        },
        ImageInserterInput = {
            type = "string",
            traits = {
                json_name = "imageInserterInput",
            },
        },
        ImageX = {
            type = "integer",
            traits = {
                json_name = "imageX",
            },
        },
        ImageY = {
            type = "integer",
            traits = {
                json_name = "imageY",
            },
        },
        Layer = {
            type = "integer",
            traits = {
                json_name = "layer",
            },
        },
        Opacity = {
            type = "integer",
            traits = {
                json_name = "opacity",
            },
        },
        StartTime = {
            type = "string",
            traits = {
                json_name = "startTime",
            },
        },
        Width = {
            type = "integer",
            traits = {
                json_name = "width",
            },
        },
    },
}

M.ImageInserter = {
    type = "structure",
    id = "ImageInserter",
    members = {
        InsertableImages = {
            type = "list",
            member = M.InsertableImage,
            traits = {
                json_name = "insertableImages",
            },
        },
        SdrReferenceWhiteLevel = {
            type = "integer",
            traits = {
                json_name = "sdrReferenceWhiteLevel",
            },
        },
    },
}

M.InputClipping = {
    type = "structure",
    id = "InputClipping",
    members = {
        EndTimecode = {
            type = "string",
            traits = {
                json_name = "endTimecode",
            },
        },
        StartTimecode = {
            type = "string",
            traits = {
                json_name = "startTimecode",
            },
        },
    },
}

M.InputScanType = {
    AUTO = "AUTO",
    PSF = "PSF",
}

M.MultiViewInput = {
    type = "structure",
    id = "MultiViewInput",
    members = {
        FileInput = {
            type = "string",
            traits = {
                json_name = "fileInput",
            },
        },
    },
}

M.MultiViewSettings = {
    type = "structure",
    id = "MultiViewSettings",
    members = {
        Input = setmetatable({ traits = {
            json_name = "input",
        } }, { __index = M.MultiViewInput }),
    },
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

M.InputTamsSettings = {
    type = "structure",
    id = "InputTamsSettings",
    members = {
        AuthConnectionArn = {
            type = "string",
            traits = {
                json_name = "authConnectionArn",
            },
        },
        GapHandling = {
            type = "string",
            traits = {
                json_name = "gapHandling",
            },
        },
        SourceId = {
            type = "string",
            traits = {
                json_name = "sourceId",
            },
        },
        Timerange = {
            type = "string",
            traits = {
                json_name = "timerange",
            },
        },
    },
}

M.InputTimecodeSource = {
    EMBEDDED = "EMBEDDED",
    ZEROBASED = "ZEROBASED",
    SPECIFIEDSTART = "SPECIFIEDSTART",
}

M.InputVideoGenerator = {
    type = "structure",
    id = "InputVideoGenerator",
    members = {
        Channels = {
            type = "integer",
            traits = {
                json_name = "channels",
            },
        },
        Duration = {
            type = "integer",
            traits = {
                json_name = "duration",
            },
        },
        FramerateDenominator = {
            type = "integer",
            traits = {
                json_name = "framerateDenominator",
            },
        },
        FramerateNumerator = {
            type = "integer",
            traits = {
                json_name = "framerateNumerator",
            },
        },
        Height = {
            type = "integer",
            traits = {
                json_name = "height",
            },
        },
        ImageInput = {
            type = "string",
            traits = {
                json_name = "imageInput",
            },
        },
        SampleRate = {
            type = "integer",
            traits = {
                json_name = "sampleRate",
            },
        },
        Width = {
            type = "integer",
            traits = {
                json_name = "width",
            },
        },
    },
}

M.VideoOverlayUnit = {
    PIXELS = "PIXELS",
    PERCENTAGE = "PERCENTAGE",
}

M.VideoOverlayCrop = {
    type = "structure",
    id = "VideoOverlayCrop",
    members = {
        Height = {
            type = "integer",
            traits = {
                json_name = "height",
            },
        },
        Unit = {
            type = "string",
            traits = {
                json_name = "unit",
            },
        },
        Width = {
            type = "integer",
            traits = {
                json_name = "width",
            },
        },
        X = {
            type = "integer",
            traits = {
                json_name = "x",
            },
        },
        Y = {
            type = "integer",
            traits = {
                json_name = "y",
            },
        },
    },
}

M.VideoOverlayPosition = {
    type = "structure",
    id = "VideoOverlayPosition",
    members = {
        Height = {
            type = "integer",
            traits = {
                json_name = "height",
            },
        },
        Opacity = {
            type = "integer",
            traits = {
                json_name = "opacity",
            },
        },
        Unit = {
            type = "string",
            traits = {
                json_name = "unit",
            },
        },
        Width = {
            type = "integer",
            traits = {
                json_name = "width",
            },
        },
        XPosition = {
            type = "integer",
            traits = {
                json_name = "xPosition",
            },
        },
        YPosition = {
            type = "integer",
            traits = {
                json_name = "yPosition",
            },
        },
    },
}

M.VideoOverlayInputClipping = {
    type = "structure",
    id = "VideoOverlayInputClipping",
    members = {
        EndTimecode = {
            type = "string",
            traits = {
                json_name = "endTimecode",
            },
        },
        StartTimecode = {
            type = "string",
            traits = {
                json_name = "startTimecode",
            },
        },
    },
}

M.VideoOverlayInput = {
    type = "structure",
    id = "VideoOverlayInput",
    members = {
        AudioSelectors = {
            type = "map",
            key = { type = "string" },
            value = M.AudioSelector,
            traits = {
                json_name = "audioSelectors",
            },
        },
        FileInput = {
            type = "string",
            traits = {
                json_name = "fileInput",
            },
        },
        InputClippings = {
            type = "list",
            member = M.VideoOverlayInputClipping,
            traits = {
                json_name = "inputClippings",
            },
        },
        TimecodeSource = {
            type = "string",
            traits = {
                json_name = "timecodeSource",
            },
        },
        TimecodeStart = {
            type = "string",
            traits = {
                json_name = "timecodeStart",
            },
        },
    },
}

M.VideoOverlayPlayBackMode = {
    ONCE = "ONCE",
    REPEAT = "REPEAT",
}

M.VideoOverlayTransition = {
    type = "structure",
    id = "VideoOverlayTransition",
    members = {
        EndPosition = setmetatable({ traits = {
            json_name = "endPosition",
        } }, { __index = M.VideoOverlayPosition }),
        EndTimecode = {
            type = "string",
            traits = {
                json_name = "endTimecode",
            },
        },
        StartTimecode = {
            type = "string",
            traits = {
                json_name = "startTimecode",
            },
        },
    },
}

M.VideoOverlay = {
    type = "structure",
    id = "VideoOverlay",
    members = {
        Crop = setmetatable({ traits = {
            json_name = "crop",
        } }, { __index = M.VideoOverlayCrop }),
        EndTimecode = {
            type = "string",
            traits = {
                json_name = "endTimecode",
            },
        },
        InitialPosition = setmetatable({ traits = {
            json_name = "initialPosition",
        } }, { __index = M.VideoOverlayPosition }),
        Input = setmetatable({ traits = {
            json_name = "input",
        } }, { __index = M.VideoOverlayInput }),
        Playback = {
            type = "string",
            traits = {
                json_name = "playback",
            },
        },
        StartTimecode = {
            type = "string",
            traits = {
                json_name = "startTimecode",
            },
        },
        Transitions = {
            type = "list",
            member = M.VideoOverlayTransition,
            traits = {
                json_name = "transitions",
            },
        },
    },
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

M.Hdr10Metadata = {
    type = "structure",
    id = "Hdr10Metadata",
    members = {
        BluePrimaryX = {
            type = "integer",
            traits = {
                json_name = "bluePrimaryX",
            },
        },
        BluePrimaryY = {
            type = "integer",
            traits = {
                json_name = "bluePrimaryY",
            },
        },
        GreenPrimaryX = {
            type = "integer",
            traits = {
                json_name = "greenPrimaryX",
            },
        },
        GreenPrimaryY = {
            type = "integer",
            traits = {
                json_name = "greenPrimaryY",
            },
        },
        MaxContentLightLevel = {
            type = "integer",
            traits = {
                json_name = "maxContentLightLevel",
            },
        },
        MaxFrameAverageLightLevel = {
            type = "integer",
            traits = {
                json_name = "maxFrameAverageLightLevel",
            },
        },
        MaxLuminance = {
            type = "integer",
            traits = {
                json_name = "maxLuminance",
            },
        },
        MinLuminance = {
            type = "integer",
            traits = {
                json_name = "minLuminance",
            },
        },
        RedPrimaryX = {
            type = "integer",
            traits = {
                json_name = "redPrimaryX",
            },
        },
        RedPrimaryY = {
            type = "integer",
            traits = {
                json_name = "redPrimaryY",
            },
        },
        WhitePointX = {
            type = "integer",
            traits = {
                json_name = "whitePointX",
            },
        },
        WhitePointY = {
            type = "integer",
            traits = {
                json_name = "whitePointY",
            },
        },
    },
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

M.VideoSelector = {
    type = "structure",
    id = "VideoSelector",
    members = {
        AlphaBehavior = {
            type = "string",
            traits = {
                json_name = "alphaBehavior",
            },
        },
        ColorSpace = {
            type = "string",
            traits = {
                json_name = "colorSpace",
            },
        },
        ColorSpaceUsage = {
            type = "string",
            traits = {
                json_name = "colorSpaceUsage",
            },
        },
        EmbeddedTimecodeOverride = {
            type = "string",
            traits = {
                json_name = "embeddedTimecodeOverride",
            },
        },
        Hdr10Metadata = setmetatable({ traits = {
            json_name = "hdr10Metadata",
        } }, { __index = M.Hdr10Metadata }),
        MaxLuminance = {
            type = "integer",
            traits = {
                json_name = "maxLuminance",
            },
        },
        PadVideo = {
            type = "string",
            traits = {
                json_name = "padVideo",
            },
        },
        Pid = {
            type = "integer",
            traits = {
                json_name = "pid",
            },
        },
        ProgramNumber = {
            type = "integer",
            traits = {
                json_name = "programNumber",
            },
        },
        Rotate = {
            type = "string",
            traits = {
                json_name = "rotate",
            },
        },
        SampleRange = {
            type = "string",
            traits = {
                json_name = "sampleRange",
            },
        },
        SelectorType = {
            type = "string",
            traits = {
                json_name = "selectorType",
            },
        },
        Streams = {
            type = "list",
            member = { type = "integer" },
            traits = {
                json_name = "streams",
            },
        },
    },
}

M.Input = {
    type = "structure",
    id = "Input",
    members = {
        AdvancedInputFilter = {
            type = "string",
            traits = {
                json_name = "advancedInputFilter",
            },
        },
        AdvancedInputFilterSettings = setmetatable({ traits = {
            json_name = "advancedInputFilterSettings",
        } }, { __index = M.AdvancedInputFilterSettings }),
        AudioSelectorGroups = {
            type = "map",
            key = { type = "string" },
            value = M.AudioSelectorGroup,
            traits = {
                json_name = "audioSelectorGroups",
            },
        },
        AudioSelectors = {
            type = "map",
            key = { type = "string" },
            value = M.AudioSelector,
            traits = {
                json_name = "audioSelectors",
            },
        },
        CaptionSelectors = {
            type = "map",
            key = { type = "string" },
            value = M.CaptionSelector,
            traits = {
                json_name = "captionSelectors",
            },
        },
        Crop = setmetatable({ traits = {
            json_name = "crop",
        } }, { __index = M.Rectangle }),
        DeblockFilter = {
            type = "string",
            traits = {
                json_name = "deblockFilter",
            },
        },
        DecryptionSettings = setmetatable({ traits = {
            json_name = "decryptionSettings",
        } }, { __index = M.InputDecryptionSettings }),
        DenoiseFilter = {
            type = "string",
            traits = {
                json_name = "denoiseFilter",
            },
        },
        DolbyVisionMetadataXml = {
            type = "string",
            traits = {
                json_name = "dolbyVisionMetadataXml",
            },
        },
        DynamicAudioSelectors = {
            type = "map",
            key = { type = "string" },
            value = M.DynamicAudioSelector,
            traits = {
                json_name = "dynamicAudioSelectors",
            },
        },
        FileInput = {
            type = "string",
            traits = {
                json_name = "fileInput",
            },
        },
        FilterEnable = {
            type = "string",
            traits = {
                json_name = "filterEnable",
            },
        },
        FilterStrength = {
            type = "integer",
            traits = {
                json_name = "filterStrength",
            },
        },
        ImageInserter = setmetatable({ traits = {
            json_name = "imageInserter",
        } }, { __index = M.ImageInserter }),
        InputClippings = {
            type = "list",
            member = M.InputClipping,
            traits = {
                json_name = "inputClippings",
            },
        },
        InputScanType = {
            type = "string",
            traits = {
                json_name = "inputScanType",
            },
        },
        MultiViewSettings = {
            type = "list",
            member = M.MultiViewSettings,
            traits = {
                json_name = "multiViewSettings",
            },
        },
        Position = setmetatable({ traits = {
            json_name = "position",
        } }, { __index = M.Rectangle }),
        ProgramNumber = {
            type = "integer",
            traits = {
                json_name = "programNumber",
            },
        },
        PsiControl = {
            type = "string",
            traits = {
                json_name = "psiControl",
            },
        },
        SupplementalImps = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "supplementalImps",
            },
        },
        TamsSettings = setmetatable({ traits = {
            json_name = "tamsSettings",
        } }, { __index = M.InputTamsSettings }),
        TimecodeSource = {
            type = "string",
            traits = {
                json_name = "timecodeSource",
            },
        },
        TimecodeStart = {
            type = "string",
            traits = {
                json_name = "timecodeStart",
            },
        },
        VideoGenerator = setmetatable({ traits = {
            json_name = "videoGenerator",
        } }, { __index = M.InputVideoGenerator }),
        VideoOverlays = {
            type = "list",
            member = M.VideoOverlay,
            traits = {
                json_name = "videoOverlays",
            },
        },
        VideoSelector = setmetatable({ traits = {
            json_name = "videoSelector",
        } }, { __index = M.VideoSelector }),
    },
}

M.InputTemplate = {
    type = "structure",
    id = "InputTemplate",
    members = {
        AdvancedInputFilter = {
            type = "string",
            traits = {
                json_name = "advancedInputFilter",
            },
        },
        AdvancedInputFilterSettings = setmetatable({ traits = {
            json_name = "advancedInputFilterSettings",
        } }, { __index = M.AdvancedInputFilterSettings }),
        AudioSelectorGroups = {
            type = "map",
            key = { type = "string" },
            value = M.AudioSelectorGroup,
            traits = {
                json_name = "audioSelectorGroups",
            },
        },
        AudioSelectors = {
            type = "map",
            key = { type = "string" },
            value = M.AudioSelector,
            traits = {
                json_name = "audioSelectors",
            },
        },
        CaptionSelectors = {
            type = "map",
            key = { type = "string" },
            value = M.CaptionSelector,
            traits = {
                json_name = "captionSelectors",
            },
        },
        Crop = setmetatable({ traits = {
            json_name = "crop",
        } }, { __index = M.Rectangle }),
        DeblockFilter = {
            type = "string",
            traits = {
                json_name = "deblockFilter",
            },
        },
        DenoiseFilter = {
            type = "string",
            traits = {
                json_name = "denoiseFilter",
            },
        },
        DolbyVisionMetadataXml = {
            type = "string",
            traits = {
                json_name = "dolbyVisionMetadataXml",
            },
        },
        DynamicAudioSelectors = {
            type = "map",
            key = { type = "string" },
            value = M.DynamicAudioSelector,
            traits = {
                json_name = "dynamicAudioSelectors",
            },
        },
        FilterEnable = {
            type = "string",
            traits = {
                json_name = "filterEnable",
            },
        },
        FilterStrength = {
            type = "integer",
            traits = {
                json_name = "filterStrength",
            },
        },
        ImageInserter = setmetatable({ traits = {
            json_name = "imageInserter",
        } }, { __index = M.ImageInserter }),
        InputClippings = {
            type = "list",
            member = M.InputClipping,
            traits = {
                json_name = "inputClippings",
            },
        },
        InputScanType = {
            type = "string",
            traits = {
                json_name = "inputScanType",
            },
        },
        MultiViewSettings = {
            type = "list",
            member = M.MultiViewSettings,
            traits = {
                json_name = "multiViewSettings",
            },
        },
        Position = setmetatable({ traits = {
            json_name = "position",
        } }, { __index = M.Rectangle }),
        ProgramNumber = {
            type = "integer",
            traits = {
                json_name = "programNumber",
            },
        },
        PsiControl = {
            type = "string",
            traits = {
                json_name = "psiControl",
            },
        },
        TimecodeSource = {
            type = "string",
            traits = {
                json_name = "timecodeSource",
            },
        },
        TimecodeStart = {
            type = "string",
            traits = {
                json_name = "timecodeStart",
            },
        },
        VideoOverlays = {
            type = "list",
            member = M.VideoOverlay,
            traits = {
                json_name = "videoOverlays",
            },
        },
        VideoSelector = setmetatable({ traits = {
            json_name = "videoSelector",
        } }, { __index = M.VideoSelector }),
    },
}

M.AccelerationMode = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
    PREFERRED = "PREFERRED",
}

M.AccelerationSettings = {
    type = "structure",
    id = "AccelerationSettings",
    members = {
        Mode = {
            type = "string",
            traits = {
                json_name = "mode",
                required = true,
            },
        },
    },
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

M.ElementalInferenceConfiguration = {
    type = "structure",
    id = "ElementalInferenceConfiguration",
    members = {
        Features = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "features",
            },
        },
        Feeds = {
            type = "list",
            member = M.ElementalInferenceFeed,
            traits = {
                json_name = "feeds",
            },
        },
    },
}

M.JobMessages = {
    type = "structure",
    id = "JobMessages",
    members = {
        Info = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "info",
            },
        },
        Warning = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "warning",
            },
        },
    },
}

M.VideoDetail = {
    type = "structure",
    id = "VideoDetail",
    members = {
        HeightInPx = {
            type = "integer",
            traits = {
                json_name = "heightInPx",
            },
        },
        WidthInPx = {
            type = "integer",
            traits = {
                json_name = "widthInPx",
            },
        },
    },
}

M.OutputDetail = {
    type = "structure",
    id = "OutputDetail",
    members = {
        DurationInMs = {
            type = "integer",
            traits = {
                json_name = "durationInMs",
            },
        },
        VideoDetails = setmetatable({ traits = {
            json_name = "videoDetails",
        } }, { __index = M.VideoDetail }),
    },
}

M.OutputGroupDetail = {
    type = "structure",
    id = "OutputGroupDetail",
    members = {
        OutputDetails = {
            type = "list",
            member = M.OutputDetail,
            traits = {
                json_name = "outputDetails",
            },
        },
    },
}

M.QueueTransition = {
    type = "structure",
    id = "QueueTransition",
    members = {
        DestinationQueue = {
            type = "string",
            traits = {
                json_name = "destinationQueue",
            },
        },
        SourceQueue = {
            type = "string",
            traits = {
                json_name = "sourceQueue",
            },
        },
        Timestamp = {
            type = "timestamp",
            traits = {
                json_name = "timestamp",
                timestamp_format = "epoch-seconds",
            },
        },
    },
}

M.AvailBlanking = {
    type = "structure",
    id = "AvailBlanking",
    members = {
        AvailBlankingImage = {
            type = "string",
            traits = {
                json_name = "availBlankingImage",
            },
        },
    },
}

M.EsamManifestConfirmConditionNotification = {
    type = "structure",
    id = "EsamManifestConfirmConditionNotification",
    members = {
        MccXml = {
            type = "string",
            traits = {
                json_name = "mccXml",
            },
        },
    },
}

M.EsamSignalProcessingNotification = {
    type = "structure",
    id = "EsamSignalProcessingNotification",
    members = {
        SccXml = {
            type = "string",
            traits = {
                json_name = "sccXml",
            },
        },
    },
}

M.EsamSettings = {
    type = "structure",
    id = "EsamSettings",
    members = {
        ManifestConfirmConditionNotification = setmetatable({ traits = {
            json_name = "manifestConfirmConditionNotification",
        } }, { __index = M.EsamManifestConfirmConditionNotification }),
        ResponseSignalPreroll = {
            type = "integer",
            traits = {
                json_name = "responseSignalPreroll",
            },
        },
        SignalProcessingNotification = setmetatable({ traits = {
            json_name = "signalProcessingNotification",
        } }, { __index = M.EsamSignalProcessingNotification }),
    },
}

M.CopyProtectionAction = {
    PASSTHROUGH = "PASSTHROUGH",
    STRIP = "STRIP",
}

M.VchipAction = {
    PASSTHROUGH = "PASSTHROUGH",
    STRIP = "STRIP",
}

M.ExtendedDataServices = {
    type = "structure",
    id = "ExtendedDataServices",
    members = {
        CopyProtectionAction = {
            type = "string",
            traits = {
                json_name = "copyProtectionAction",
            },
        },
        VchipAction = {
            type = "string",
            traits = {
                json_name = "vchipAction",
            },
        },
    },
}

M.KantarWatermarkSettings = {
    type = "structure",
    id = "KantarWatermarkSettings",
    members = {
        ChannelName = {
            type = "string",
            traits = {
                json_name = "channelName",
            },
        },
        ContentReference = {
            type = "string",
            traits = {
                json_name = "contentReference",
            },
        },
        CredentialsSecretName = {
            type = "string",
            traits = {
                json_name = "credentialsSecretName",
            },
        },
        FileOffset = {
            type = "double",
            traits = {
                json_name = "fileOffset",
            },
        },
        KantarLicenseId = {
            type = "integer",
            traits = {
                json_name = "kantarLicenseId",
            },
        },
        KantarServerUrl = {
            type = "string",
            traits = {
                json_name = "kantarServerUrl",
            },
        },
        LogDestination = {
            type = "string",
            traits = {
                json_name = "logDestination",
            },
        },
        Metadata3 = {
            type = "string",
            traits = {
                json_name = "metadata3",
            },
        },
        Metadata4 = {
            type = "string",
            traits = {
                json_name = "metadata4",
            },
        },
        Metadata5 = {
            type = "string",
            traits = {
                json_name = "metadata5",
            },
        },
        Metadata6 = {
            type = "string",
            traits = {
                json_name = "metadata6",
            },
        },
        Metadata7 = {
            type = "string",
            traits = {
                json_name = "metadata7",
            },
        },
        Metadata8 = {
            type = "string",
            traits = {
                json_name = "metadata8",
            },
        },
    },
}

M.MotionImageInsertionFramerate = {
    type = "structure",
    id = "MotionImageInsertionFramerate",
    members = {
        FramerateDenominator = {
            type = "integer",
            traits = {
                json_name = "framerateDenominator",
            },
        },
        FramerateNumerator = {
            type = "integer",
            traits = {
                json_name = "framerateNumerator",
            },
        },
    },
}

M.MotionImageInsertionMode = {
    MOV = "MOV",
    PNG = "PNG",
}

M.MotionImageInsertionOffset = {
    type = "structure",
    id = "MotionImageInsertionOffset",
    members = {
        ImageX = {
            type = "integer",
            traits = {
                json_name = "imageX",
            },
        },
        ImageY = {
            type = "integer",
            traits = {
                json_name = "imageY",
            },
        },
    },
}

M.MotionImagePlayback = {
    ONCE = "ONCE",
    REPEAT = "REPEAT",
}

M.MotionImageInserter = {
    type = "structure",
    id = "MotionImageInserter",
    members = {
        Framerate = setmetatable({ traits = {
            json_name = "framerate",
        } }, { __index = M.MotionImageInsertionFramerate }),
        Input = {
            type = "string",
            traits = {
                json_name = "input",
            },
        },
        InsertionMode = {
            type = "string",
            traits = {
                json_name = "insertionMode",
            },
        },
        Offset = setmetatable({ traits = {
            json_name = "offset",
        } }, { __index = M.MotionImageInsertionOffset }),
        Playback = {
            type = "string",
            traits = {
                json_name = "playback",
            },
        },
        StartTime = {
            type = "string",
            traits = {
                json_name = "startTime",
            },
        },
    },
}

M.NielsenConfiguration = {
    type = "structure",
    id = "NielsenConfiguration",
    members = {
        BreakoutCode = {
            type = "integer",
            traits = {
                json_name = "breakoutCode",
            },
        },
        DistributorId = {
            type = "string",
            traits = {
                json_name = "distributorId",
            },
        },
    },
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

M.NielsenNonLinearWatermarkSettings = {
    type = "structure",
    id = "NielsenNonLinearWatermarkSettings",
    members = {
        ActiveWatermarkProcess = {
            type = "string",
            traits = {
                json_name = "activeWatermarkProcess",
            },
        },
        AdiFilename = {
            type = "string",
            traits = {
                json_name = "adiFilename",
            },
        },
        AssetId = {
            type = "string",
            traits = {
                json_name = "assetId",
            },
        },
        AssetName = {
            type = "string",
            traits = {
                json_name = "assetName",
            },
        },
        CbetSourceId = {
            type = "string",
            traits = {
                json_name = "cbetSourceId",
            },
        },
        EpisodeId = {
            type = "string",
            traits = {
                json_name = "episodeId",
            },
        },
        MetadataDestination = {
            type = "string",
            traits = {
                json_name = "metadataDestination",
            },
        },
        SourceId = {
            type = "integer",
            traits = {
                json_name = "sourceId",
            },
        },
        SourceWatermarkStatus = {
            type = "string",
            traits = {
                json_name = "sourceWatermarkStatus",
            },
        },
        TicServerUrl = {
            type = "string",
            traits = {
                json_name = "ticServerUrl",
            },
        },
        UniqueTicPerAudioTrack = {
            type = "string",
            traits = {
                json_name = "uniqueTicPerAudioTrack",
            },
        },
    },
}

M.AutomatedAbrSettings = {
    type = "structure",
    id = "AutomatedAbrSettings",
    members = {
        MaxAbrBitrate = {
            type = "integer",
            traits = {
                json_name = "maxAbrBitrate",
            },
        },
        MaxQualityLevel = {
            type = "double",
            traits = {
                json_name = "maxQualityLevel",
            },
        },
        MaxRenditions = {
            type = "integer",
            traits = {
                json_name = "maxRenditions",
            },
        },
        MinAbrBitrate = {
            type = "integer",
            traits = {
                json_name = "minAbrBitrate",
            },
        },
        Rules = {
            type = "list",
            member = M.AutomatedAbrRule,
            traits = {
                json_name = "rules",
            },
        },
    },
}

M.AutomatedEncodingSettings = {
    type = "structure",
    id = "AutomatedEncodingSettings",
    members = {
        AbrSettings = setmetatable({ traits = {
            json_name = "abrSettings",
        } }, { __index = M.AutomatedAbrSettings }),
    },
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

M.S3DestinationAccessControl = {
    type = "structure",
    id = "S3DestinationAccessControl",
    members = {
        CannedAcl = {
            type = "string",
            traits = {
                json_name = "cannedAcl",
            },
        },
    },
}

M.S3ServerSideEncryptionType = {
    SERVER_SIDE_ENCRYPTION_S3 = "SERVER_SIDE_ENCRYPTION_S3",
    SERVER_SIDE_ENCRYPTION_KMS = "SERVER_SIDE_ENCRYPTION_KMS",
}

M.S3EncryptionSettings = {
    type = "structure",
    id = "S3EncryptionSettings",
    members = {
        EncryptionType = {
            type = "string",
            traits = {
                json_name = "encryptionType",
            },
        },
        KmsEncryptionContext = {
            type = "string",
            traits = {
                json_name = "kmsEncryptionContext",
            },
        },
        KmsKeyArn = {
            type = "string",
            traits = {
                json_name = "kmsKeyArn",
            },
        },
    },
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

M.S3DestinationSettings = {
    type = "structure",
    id = "S3DestinationSettings",
    members = {
        AccessControl = setmetatable({ traits = {
            json_name = "accessControl",
        } }, { __index = M.S3DestinationAccessControl }),
        Encryption = setmetatable({ traits = {
            json_name = "encryption",
        } }, { __index = M.S3EncryptionSettings }),
        StorageClass = {
            type = "string",
            traits = {
                json_name = "storageClass",
            },
        },
    },
}

M.DestinationSettings = {
    type = "structure",
    id = "DestinationSettings",
    members = {
        S3Settings = setmetatable({ traits = {
            json_name = "s3Settings",
        } }, { __index = M.S3DestinationSettings }),
    },
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

M.EncryptionContractConfiguration = {
    type = "structure",
    id = "EncryptionContractConfiguration",
    members = {
        SpekeAudioPreset = {
            type = "string",
            traits = {
                json_name = "spekeAudioPreset",
            },
        },
        SpekeVideoPreset = {
            type = "string",
            traits = {
                json_name = "spekeVideoPreset",
            },
        },
    },
}

M.SpekeKeyProviderCmaf = {
    type = "structure",
    id = "SpekeKeyProviderCmaf",
    members = {
        CertificateArn = {
            type = "string",
            traits = {
                json_name = "certificateArn",
            },
        },
        DashSignaledSystemIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "dashSignaledSystemIds",
            },
        },
        EncryptionContractConfiguration = setmetatable({ traits = {
            json_name = "encryptionContractConfiguration",
        } }, { __index = M.EncryptionContractConfiguration }),
        HlsSignaledSystemIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "hlsSignaledSystemIds",
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                json_name = "resourceId",
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

M.StaticKeyProvider = {
    type = "structure",
    id = "StaticKeyProvider",
    members = {
        KeyFormat = {
            type = "string",
            traits = {
                json_name = "keyFormat",
            },
        },
        KeyFormatVersions = {
            type = "string",
            traits = {
                json_name = "keyFormatVersions",
            },
        },
        StaticKeyValue = {
            type = "string",
            traits = {
                json_name = "staticKeyValue",
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

M.CmafKeyProviderType = {
    SPEKE = "SPEKE",
    STATIC_KEY = "STATIC_KEY",
}

M.CmafEncryptionSettings = {
    type = "structure",
    id = "CmafEncryptionSettings",
    members = {
        ClearLead = {
            type = "string",
            traits = {
                json_name = "clearLead",
            },
        },
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
        InitializationVectorInManifest = {
            type = "string",
            traits = {
                json_name = "initializationVectorInManifest",
            },
        },
        SpekeKeyProvider = setmetatable({ traits = {
            json_name = "spekeKeyProvider",
        } }, { __index = M.SpekeKeyProviderCmaf }),
        StaticKeyProvider = setmetatable({ traits = {
            json_name = "staticKeyProvider",
        } }, { __index = M.StaticKeyProvider }),
        Type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
    },
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

M.CmafImageBasedTrickPlaySettings = {
    type = "structure",
    id = "CmafImageBasedTrickPlaySettings",
    members = {
        IntervalCadence = {
            type = "string",
            traits = {
                json_name = "intervalCadence",
            },
        },
        ThumbnailHeight = {
            type = "integer",
            traits = {
                json_name = "thumbnailHeight",
            },
        },
        ThumbnailInterval = {
            type = "double",
            traits = {
                json_name = "thumbnailInterval",
            },
        },
        ThumbnailWidth = {
            type = "integer",
            traits = {
                json_name = "thumbnailWidth",
            },
        },
        TileHeight = {
            type = "integer",
            traits = {
                json_name = "tileHeight",
            },
        },
        TileWidth = {
            type = "integer",
            traits = {
                json_name = "tileWidth",
            },
        },
    },
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

M.CmafGroupSettings = {
    type = "structure",
    id = "CmafGroupSettings",
    members = {
        AdditionalManifests = {
            type = "list",
            member = M.CmafAdditionalManifest,
            traits = {
                json_name = "additionalManifests",
            },
        },
        BaseUrl = {
            type = "string",
            traits = {
                json_name = "baseUrl",
            },
        },
        ClientCache = {
            type = "string",
            traits = {
                json_name = "clientCache",
            },
        },
        CodecSpecification = {
            type = "string",
            traits = {
                json_name = "codecSpecification",
            },
        },
        DashIFrameTrickPlayNameModifier = {
            type = "string",
            traits = {
                json_name = "dashIFrameTrickPlayNameModifier",
            },
        },
        DashManifestStyle = {
            type = "string",
            traits = {
                json_name = "dashManifestStyle",
            },
        },
        Destination = {
            type = "string",
            traits = {
                json_name = "destination",
            },
        },
        DestinationSettings = setmetatable({ traits = {
            json_name = "destinationSettings",
        } }, { __index = M.DestinationSettings }),
        Encryption = setmetatable({ traits = {
            json_name = "encryption",
        } }, { __index = M.CmafEncryptionSettings }),
        FragmentLength = {
            type = "integer",
            traits = {
                json_name = "fragmentLength",
            },
        },
        ImageBasedTrickPlay = {
            type = "string",
            traits = {
                json_name = "imageBasedTrickPlay",
            },
        },
        ImageBasedTrickPlaySettings = setmetatable({ traits = {
            json_name = "imageBasedTrickPlaySettings",
        } }, { __index = M.CmafImageBasedTrickPlaySettings }),
        ManifestCompression = {
            type = "string",
            traits = {
                json_name = "manifestCompression",
            },
        },
        ManifestDurationFormat = {
            type = "string",
            traits = {
                json_name = "manifestDurationFormat",
            },
        },
        MinBufferTime = {
            type = "integer",
            traits = {
                json_name = "minBufferTime",
            },
        },
        MinFinalSegmentLength = {
            type = "double",
            traits = {
                json_name = "minFinalSegmentLength",
            },
        },
        MpdManifestBandwidthType = {
            type = "string",
            traits = {
                json_name = "mpdManifestBandwidthType",
            },
        },
        MpdProfile = {
            type = "string",
            traits = {
                json_name = "mpdProfile",
            },
        },
        PtsOffsetHandlingForBFrames = {
            type = "string",
            traits = {
                json_name = "ptsOffsetHandlingForBFrames",
            },
        },
        SegmentControl = {
            type = "string",
            traits = {
                json_name = "segmentControl",
            },
        },
        SegmentLength = {
            type = "integer",
            traits = {
                json_name = "segmentLength",
            },
        },
        SegmentLengthControl = {
            type = "string",
            traits = {
                json_name = "segmentLengthControl",
            },
        },
        StreamInfResolution = {
            type = "string",
            traits = {
                json_name = "streamInfResolution",
            },
        },
        TargetDurationCompatibilityMode = {
            type = "string",
            traits = {
                json_name = "targetDurationCompatibilityMode",
            },
        },
        VideoCompositionOffsets = {
            type = "string",
            traits = {
                json_name = "videoCompositionOffsets",
            },
        },
        WriteDashManifest = {
            type = "string",
            traits = {
                json_name = "writeDashManifest",
            },
        },
        WriteHlsManifest = {
            type = "string",
            traits = {
                json_name = "writeHlsManifest",
            },
        },
        WriteSegmentTimelineInRepresentation = {
            type = "string",
            traits = {
                json_name = "writeSegmentTimelineInRepresentation",
            },
        },
    },
}

M.DashIsoGroupAudioChannelConfigSchemeIdUri = {
    MPEG_CHANNEL_CONFIGURATION = "MPEG_CHANNEL_CONFIGURATION",
    DOLBY_CHANNEL_CONFIGURATION = "DOLBY_CHANNEL_CONFIGURATION",
}

M.DashIsoPlaybackDeviceCompatibility = {
    CENC_V1 = "CENC_V1",
    UNENCRYPTED_SEI = "UNENCRYPTED_SEI",
}

M.SpekeKeyProvider = {
    type = "structure",
    id = "SpekeKeyProvider",
    members = {
        CertificateArn = {
            type = "string",
            traits = {
                json_name = "certificateArn",
            },
        },
        EncryptionContractConfiguration = setmetatable({ traits = {
            json_name = "encryptionContractConfiguration",
        } }, { __index = M.EncryptionContractConfiguration }),
        ResourceId = {
            type = "string",
            traits = {
                json_name = "resourceId",
            },
        },
        SystemIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "systemIds",
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

M.DashIsoEncryptionSettings = {
    type = "structure",
    id = "DashIsoEncryptionSettings",
    members = {
        PlaybackDeviceCompatibility = {
            type = "string",
            traits = {
                json_name = "playbackDeviceCompatibility",
            },
        },
        SpekeKeyProvider = setmetatable({ traits = {
            json_name = "spekeKeyProvider",
        } }, { __index = M.SpekeKeyProvider }),
    },
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

M.DashIsoImageBasedTrickPlaySettings = {
    type = "structure",
    id = "DashIsoImageBasedTrickPlaySettings",
    members = {
        IntervalCadence = {
            type = "string",
            traits = {
                json_name = "intervalCadence",
            },
        },
        ThumbnailHeight = {
            type = "integer",
            traits = {
                json_name = "thumbnailHeight",
            },
        },
        ThumbnailInterval = {
            type = "double",
            traits = {
                json_name = "thumbnailInterval",
            },
        },
        ThumbnailWidth = {
            type = "integer",
            traits = {
                json_name = "thumbnailWidth",
            },
        },
        TileHeight = {
            type = "integer",
            traits = {
                json_name = "tileHeight",
            },
        },
        TileWidth = {
            type = "integer",
            traits = {
                json_name = "tileWidth",
            },
        },
    },
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

M.DashIsoGroupSettings = {
    type = "structure",
    id = "DashIsoGroupSettings",
    members = {
        AdditionalManifests = {
            type = "list",
            member = M.DashAdditionalManifest,
            traits = {
                json_name = "additionalManifests",
            },
        },
        AudioChannelConfigSchemeIdUri = {
            type = "string",
            traits = {
                json_name = "audioChannelConfigSchemeIdUri",
            },
        },
        BaseUrl = {
            type = "string",
            traits = {
                json_name = "baseUrl",
            },
        },
        DashIFrameTrickPlayNameModifier = {
            type = "string",
            traits = {
                json_name = "dashIFrameTrickPlayNameModifier",
            },
        },
        DashManifestStyle = {
            type = "string",
            traits = {
                json_name = "dashManifestStyle",
            },
        },
        Destination = {
            type = "string",
            traits = {
                json_name = "destination",
            },
        },
        DestinationSettings = setmetatable({ traits = {
            json_name = "destinationSettings",
        } }, { __index = M.DestinationSettings }),
        Encryption = setmetatable({ traits = {
            json_name = "encryption",
        } }, { __index = M.DashIsoEncryptionSettings }),
        FragmentLength = {
            type = "integer",
            traits = {
                json_name = "fragmentLength",
            },
        },
        HbbtvCompliance = {
            type = "string",
            traits = {
                json_name = "hbbtvCompliance",
            },
        },
        ImageBasedTrickPlay = {
            type = "string",
            traits = {
                json_name = "imageBasedTrickPlay",
            },
        },
        ImageBasedTrickPlaySettings = setmetatable({ traits = {
            json_name = "imageBasedTrickPlaySettings",
        } }, { __index = M.DashIsoImageBasedTrickPlaySettings }),
        MinBufferTime = {
            type = "integer",
            traits = {
                json_name = "minBufferTime",
            },
        },
        MinFinalSegmentLength = {
            type = "double",
            traits = {
                json_name = "minFinalSegmentLength",
            },
        },
        MpdManifestBandwidthType = {
            type = "string",
            traits = {
                json_name = "mpdManifestBandwidthType",
            },
        },
        MpdProfile = {
            type = "string",
            traits = {
                json_name = "mpdProfile",
            },
        },
        PtsOffsetHandlingForBFrames = {
            type = "string",
            traits = {
                json_name = "ptsOffsetHandlingForBFrames",
            },
        },
        SegmentControl = {
            type = "string",
            traits = {
                json_name = "segmentControl",
            },
        },
        SegmentLength = {
            type = "integer",
            traits = {
                json_name = "segmentLength",
            },
        },
        SegmentLengthControl = {
            type = "string",
            traits = {
                json_name = "segmentLengthControl",
            },
        },
        VideoCompositionOffsets = {
            type = "string",
            traits = {
                json_name = "videoCompositionOffsets",
            },
        },
        WriteSegmentTimelineInRepresentation = {
            type = "string",
            traits = {
                json_name = "writeSegmentTimelineInRepresentation",
            },
        },
    },
}

M.FileGroupSettings = {
    type = "structure",
    id = "FileGroupSettings",
    members = {
        Destination = {
            type = "string",
            traits = {
                json_name = "destination",
            },
        },
        DestinationSettings = setmetatable({ traits = {
            json_name = "destinationSettings",
        } }, { __index = M.DestinationSettings }),
    },
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

M.HlsEncryptionSettings = {
    type = "structure",
    id = "HlsEncryptionSettings",
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
        InitializationVectorInManifest = {
            type = "string",
            traits = {
                json_name = "initializationVectorInManifest",
            },
        },
        OfflineEncrypted = {
            type = "string",
            traits = {
                json_name = "offlineEncrypted",
            },
        },
        SpekeKeyProvider = setmetatable({ traits = {
            json_name = "spekeKeyProvider",
        } }, { __index = M.SpekeKeyProvider }),
        StaticKeyProvider = setmetatable({ traits = {
            json_name = "staticKeyProvider",
        } }, { __index = M.StaticKeyProvider }),
        Type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
    },
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

M.HlsImageBasedTrickPlaySettings = {
    type = "structure",
    id = "HlsImageBasedTrickPlaySettings",
    members = {
        IntervalCadence = {
            type = "string",
            traits = {
                json_name = "intervalCadence",
            },
        },
        ThumbnailHeight = {
            type = "integer",
            traits = {
                json_name = "thumbnailHeight",
            },
        },
        ThumbnailInterval = {
            type = "double",
            traits = {
                json_name = "thumbnailInterval",
            },
        },
        ThumbnailWidth = {
            type = "integer",
            traits = {
                json_name = "thumbnailWidth",
            },
        },
        TileHeight = {
            type = "integer",
            traits = {
                json_name = "tileHeight",
            },
        },
        TileWidth = {
            type = "integer",
            traits = {
                json_name = "tileWidth",
            },
        },
    },
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

M.HlsGroupSettings = {
    type = "structure",
    id = "HlsGroupSettings",
    members = {
        AdMarkers = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "adMarkers",
            },
        },
        AdditionalManifests = {
            type = "list",
            member = M.HlsAdditionalManifest,
            traits = {
                json_name = "additionalManifests",
            },
        },
        AudioOnlyHeader = {
            type = "string",
            traits = {
                json_name = "audioOnlyHeader",
            },
        },
        BaseUrl = {
            type = "string",
            traits = {
                json_name = "baseUrl",
            },
        },
        CaptionLanguageMappings = {
            type = "list",
            member = M.HlsCaptionLanguageMapping,
            traits = {
                json_name = "captionLanguageMappings",
            },
        },
        CaptionLanguageSetting = {
            type = "string",
            traits = {
                json_name = "captionLanguageSetting",
            },
        },
        CaptionSegmentLengthControl = {
            type = "string",
            traits = {
                json_name = "captionSegmentLengthControl",
            },
        },
        ClientCache = {
            type = "string",
            traits = {
                json_name = "clientCache",
            },
        },
        CodecSpecification = {
            type = "string",
            traits = {
                json_name = "codecSpecification",
            },
        },
        Destination = {
            type = "string",
            traits = {
                json_name = "destination",
            },
        },
        DestinationSettings = setmetatable({ traits = {
            json_name = "destinationSettings",
        } }, { __index = M.DestinationSettings }),
        DirectoryStructure = {
            type = "string",
            traits = {
                json_name = "directoryStructure",
            },
        },
        Encryption = setmetatable({ traits = {
            json_name = "encryption",
        } }, { __index = M.HlsEncryptionSettings }),
        ImageBasedTrickPlay = {
            type = "string",
            traits = {
                json_name = "imageBasedTrickPlay",
            },
        },
        ImageBasedTrickPlaySettings = setmetatable({ traits = {
            json_name = "imageBasedTrickPlaySettings",
        } }, { __index = M.HlsImageBasedTrickPlaySettings }),
        ManifestCompression = {
            type = "string",
            traits = {
                json_name = "manifestCompression",
            },
        },
        ManifestDurationFormat = {
            type = "string",
            traits = {
                json_name = "manifestDurationFormat",
            },
        },
        MinFinalSegmentLength = {
            type = "double",
            traits = {
                json_name = "minFinalSegmentLength",
            },
        },
        MinSegmentLength = {
            type = "integer",
            traits = {
                json_name = "minSegmentLength",
            },
        },
        OutputSelection = {
            type = "string",
            traits = {
                json_name = "outputSelection",
            },
        },
        ProgramDateTime = {
            type = "string",
            traits = {
                json_name = "programDateTime",
            },
        },
        ProgramDateTimePeriod = {
            type = "integer",
            traits = {
                json_name = "programDateTimePeriod",
            },
        },
        ProgressiveWriteHlsManifest = {
            type = "string",
            traits = {
                json_name = "progressiveWriteHlsManifest",
            },
        },
        SegmentControl = {
            type = "string",
            traits = {
                json_name = "segmentControl",
            },
        },
        SegmentLength = {
            type = "integer",
            traits = {
                json_name = "segmentLength",
            },
        },
        SegmentLengthControl = {
            type = "string",
            traits = {
                json_name = "segmentLengthControl",
            },
        },
        SegmentsPerSubdirectory = {
            type = "integer",
            traits = {
                json_name = "segmentsPerSubdirectory",
            },
        },
        StreamInfResolution = {
            type = "string",
            traits = {
                json_name = "streamInfResolution",
            },
        },
        TargetDurationCompatibilityMode = {
            type = "string",
            traits = {
                json_name = "targetDurationCompatibilityMode",
            },
        },
        TimedMetadataId3Frame = {
            type = "string",
            traits = {
                json_name = "timedMetadataId3Frame",
            },
        },
        TimedMetadataId3Period = {
            type = "integer",
            traits = {
                json_name = "timedMetadataId3Period",
            },
        },
        TimestampDeltaMilliseconds = {
            type = "integer",
            traits = {
                json_name = "timestampDeltaMilliseconds",
            },
        },
    },
}

M.MsSmoothAdditionalManifest = {
    type = "structure",
    id = "MsSmoothAdditionalManifest",
    members = {
        ManifestNameModifier = {
            type = "string",
            traits = {
                json_name = "manifestNameModifier",
            },
        },
        SelectedOutputs = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "selectedOutputs",
            },
        },
    },
}

M.MsSmoothAudioDeduplication = {
    COMBINE_DUPLICATE_STREAMS = "COMBINE_DUPLICATE_STREAMS",
    NONE = "NONE",
}

M.MsSmoothEncryptionSettings = {
    type = "structure",
    id = "MsSmoothEncryptionSettings",
    members = {
        SpekeKeyProvider = setmetatable({ traits = {
            json_name = "spekeKeyProvider",
        } }, { __index = M.SpekeKeyProvider }),
    },
}

M.MsSmoothFragmentLengthControl = {
    EXACT = "EXACT",
    GOP_MULTIPLE = "GOP_MULTIPLE",
}

M.MsSmoothManifestEncoding = {
    UTF8 = "UTF8",
    UTF16 = "UTF16",
}

M.MsSmoothGroupSettings = {
    type = "structure",
    id = "MsSmoothGroupSettings",
    members = {
        AdditionalManifests = {
            type = "list",
            member = M.MsSmoothAdditionalManifest,
            traits = {
                json_name = "additionalManifests",
            },
        },
        AudioDeduplication = {
            type = "string",
            traits = {
                json_name = "audioDeduplication",
            },
        },
        Destination = {
            type = "string",
            traits = {
                json_name = "destination",
            },
        },
        DestinationSettings = setmetatable({ traits = {
            json_name = "destinationSettings",
        } }, { __index = M.DestinationSettings }),
        Encryption = setmetatable({ traits = {
            json_name = "encryption",
        } }, { __index = M.MsSmoothEncryptionSettings }),
        FragmentLength = {
            type = "integer",
            traits = {
                json_name = "fragmentLength",
            },
        },
        FragmentLengthControl = {
            type = "string",
            traits = {
                json_name = "fragmentLengthControl",
            },
        },
        ManifestEncoding = {
            type = "string",
            traits = {
                json_name = "manifestEncoding",
            },
        },
    },
}

M.OutputGroupType = {
    HLS_GROUP_SETTINGS = "HLS_GROUP_SETTINGS",
    DASH_ISO_GROUP_SETTINGS = "DASH_ISO_GROUP_SETTINGS",
    FILE_GROUP_SETTINGS = "FILE_GROUP_SETTINGS",
    MS_SMOOTH_GROUP_SETTINGS = "MS_SMOOTH_GROUP_SETTINGS",
    CMAF_GROUP_SETTINGS = "CMAF_GROUP_SETTINGS",
}

M.OutputGroupSettings = {
    type = "structure",
    id = "OutputGroupSettings",
    members = {
        CmafGroupSettings = setmetatable({ traits = {
            json_name = "cmafGroupSettings",
        } }, { __index = M.CmafGroupSettings }),
        DashIsoGroupSettings = setmetatable({ traits = {
            json_name = "dashIsoGroupSettings",
        } }, { __index = M.DashIsoGroupSettings }),
        FileGroupSettings = setmetatable({ traits = {
            json_name = "fileGroupSettings",
        } }, { __index = M.FileGroupSettings }),
        HlsGroupSettings = setmetatable({ traits = {
            json_name = "hlsGroupSettings",
        } }, { __index = M.HlsGroupSettings }),
        MsSmoothGroupSettings = setmetatable({ traits = {
            json_name = "msSmoothGroupSettings",
        } }, { __index = M.MsSmoothGroupSettings }),
        PerFrameMetrics = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "perFrameMetrics",
            },
        },
        Type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
    },
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

M.CmfcSettings = {
    type = "structure",
    id = "CmfcSettings",
    members = {
        AudioDuration = {
            type = "string",
            traits = {
                json_name = "audioDuration",
            },
        },
        AudioGroupId = {
            type = "string",
            traits = {
                json_name = "audioGroupId",
            },
        },
        AudioRenditionSets = {
            type = "string",
            traits = {
                json_name = "audioRenditionSets",
            },
        },
        AudioTrackType = {
            type = "string",
            traits = {
                json_name = "audioTrackType",
            },
        },
        C2paManifest = {
            type = "string",
            traits = {
                json_name = "c2paManifest",
            },
        },
        CertificateSecret = {
            type = "string",
            traits = {
                json_name = "certificateSecret",
            },
        },
        DescriptiveVideoServiceFlag = {
            type = "string",
            traits = {
                json_name = "descriptiveVideoServiceFlag",
            },
        },
        IFrameOnlyManifest = {
            type = "string",
            traits = {
                json_name = "iFrameOnlyManifest",
            },
        },
        KlvMetadata = {
            type = "string",
            traits = {
                json_name = "klvMetadata",
            },
        },
        ManifestMetadataSignaling = {
            type = "string",
            traits = {
                json_name = "manifestMetadataSignaling",
            },
        },
        Scte35Esam = {
            type = "string",
            traits = {
                json_name = "scte35Esam",
            },
        },
        Scte35Source = {
            type = "string",
            traits = {
                json_name = "scte35Source",
            },
        },
        SigningKmsKey = {
            type = "string",
            traits = {
                json_name = "signingKmsKey",
            },
        },
        TimedMetadata = {
            type = "string",
            traits = {
                json_name = "timedMetadata",
            },
        },
        TimedMetadataBoxVersion = {
            type = "string",
            traits = {
                json_name = "timedMetadataBoxVersion",
            },
        },
        TimedMetadataSchemeIdUri = {
            type = "string",
            traits = {
                json_name = "timedMetadataSchemeIdUri",
            },
        },
        TimedMetadataValue = {
            type = "string",
            traits = {
                json_name = "timedMetadataValue",
            },
        },
    },
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

M.F4vSettings = {
    type = "structure",
    id = "F4vSettings",
    members = {
        MoovPlacement = {
            type = "string",
            traits = {
                json_name = "moovPlacement",
            },
        },
    },
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

M.DvbNitSettings = {
    type = "structure",
    id = "DvbNitSettings",
    members = {
        NetworkId = {
            type = "integer",
            traits = {
                json_name = "networkId",
            },
        },
        NetworkName = {
            type = "string",
            traits = {
                json_name = "networkName",
            },
        },
        NitInterval = {
            type = "integer",
            traits = {
                json_name = "nitInterval",
            },
        },
    },
}

M.OutputSdt = {
    SDT_FOLLOW = "SDT_FOLLOW",
    SDT_FOLLOW_IF_PRESENT = "SDT_FOLLOW_IF_PRESENT",
    SDT_MANUAL = "SDT_MANUAL",
    SDT_NONE = "SDT_NONE",
}

M.DvbSdtSettings = {
    type = "structure",
    id = "DvbSdtSettings",
    members = {
        OutputSdt = {
            type = "string",
            traits = {
                json_name = "outputSdt",
            },
        },
        SdtInterval = {
            type = "integer",
            traits = {
                json_name = "sdtInterval",
            },
        },
        ServiceName = {
            type = "string",
            traits = {
                json_name = "serviceName",
            },
        },
        ServiceProviderName = {
            type = "string",
            traits = {
                json_name = "serviceProviderName",
            },
        },
    },
}

M.DvbTdtSettings = {
    type = "structure",
    id = "DvbTdtSettings",
    members = {
        TdtInterval = {
            type = "integer",
            traits = {
                json_name = "tdtInterval",
            },
        },
    },
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

M.M2tsScte35Esam = {
    type = "structure",
    id = "M2tsScte35Esam",
    members = {
        Scte35EsamPid = {
            type = "integer",
            traits = {
                json_name = "scte35EsamPid",
            },
        },
    },
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

M.M2tsSettings = {
    type = "structure",
    id = "M2tsSettings",
    members = {
        AudioBufferModel = {
            type = "string",
            traits = {
                json_name = "audioBufferModel",
            },
        },
        AudioDuration = {
            type = "string",
            traits = {
                json_name = "audioDuration",
            },
        },
        AudioFramesPerPes = {
            type = "integer",
            traits = {
                json_name = "audioFramesPerPes",
            },
        },
        AudioPids = {
            type = "list",
            member = { type = "integer" },
            traits = {
                json_name = "audioPids",
            },
        },
        AudioPtsOffsetDelta = {
            type = "integer",
            traits = {
                json_name = "audioPtsOffsetDelta",
            },
        },
        Bitrate = {
            type = "integer",
            traits = {
                json_name = "bitrate",
            },
        },
        BufferModel = {
            type = "string",
            traits = {
                json_name = "bufferModel",
            },
        },
        DataPTSControl = {
            type = "string",
            traits = {
                json_name = "dataPTSControl",
            },
        },
        DvbNitSettings = setmetatable({ traits = {
            json_name = "dvbNitSettings",
        } }, { __index = M.DvbNitSettings }),
        DvbSdtSettings = setmetatable({ traits = {
            json_name = "dvbSdtSettings",
        } }, { __index = M.DvbSdtSettings }),
        DvbSubPids = {
            type = "list",
            member = { type = "integer" },
            traits = {
                json_name = "dvbSubPids",
            },
        },
        DvbTdtSettings = setmetatable({ traits = {
            json_name = "dvbTdtSettings",
        } }, { __index = M.DvbTdtSettings }),
        DvbTeletextPid = {
            type = "integer",
            traits = {
                json_name = "dvbTeletextPid",
            },
        },
        EbpAudioInterval = {
            type = "string",
            traits = {
                json_name = "ebpAudioInterval",
            },
        },
        EbpPlacement = {
            type = "string",
            traits = {
                json_name = "ebpPlacement",
            },
        },
        EsRateInPes = {
            type = "string",
            traits = {
                json_name = "esRateInPes",
            },
        },
        ForceTsVideoEbpOrder = {
            type = "string",
            traits = {
                json_name = "forceTsVideoEbpOrder",
            },
        },
        FragmentTime = {
            type = "double",
            traits = {
                json_name = "fragmentTime",
            },
        },
        KlvMetadata = {
            type = "string",
            traits = {
                json_name = "klvMetadata",
            },
        },
        MaxPcrInterval = {
            type = "integer",
            traits = {
                json_name = "maxPcrInterval",
            },
        },
        MinEbpInterval = {
            type = "integer",
            traits = {
                json_name = "minEbpInterval",
            },
        },
        NielsenId3 = {
            type = "string",
            traits = {
                json_name = "nielsenId3",
            },
        },
        NullPacketBitrate = {
            type = "double",
            traits = {
                json_name = "nullPacketBitrate",
            },
        },
        PatInterval = {
            type = "integer",
            traits = {
                json_name = "patInterval",
            },
        },
        PcrControl = {
            type = "string",
            traits = {
                json_name = "pcrControl",
            },
        },
        PcrPid = {
            type = "integer",
            traits = {
                json_name = "pcrPid",
            },
        },
        PmtInterval = {
            type = "integer",
            traits = {
                json_name = "pmtInterval",
            },
        },
        PmtPid = {
            type = "integer",
            traits = {
                json_name = "pmtPid",
            },
        },
        PreventBufferUnderflow = {
            type = "string",
            traits = {
                json_name = "preventBufferUnderflow",
            },
        },
        PrivateMetadataPid = {
            type = "integer",
            traits = {
                json_name = "privateMetadataPid",
            },
        },
        ProgramNumber = {
            type = "integer",
            traits = {
                json_name = "programNumber",
            },
        },
        PtsOffset = {
            type = "integer",
            traits = {
                json_name = "ptsOffset",
            },
        },
        PtsOffsetMode = {
            type = "string",
            traits = {
                json_name = "ptsOffsetMode",
            },
        },
        RateMode = {
            type = "string",
            traits = {
                json_name = "rateMode",
            },
        },
        Scte35Esam = setmetatable({ traits = {
            json_name = "scte35Esam",
        } }, { __index = M.M2tsScte35Esam }),
        Scte35Pid = {
            type = "integer",
            traits = {
                json_name = "scte35Pid",
            },
        },
        Scte35Source = {
            type = "string",
            traits = {
                json_name = "scte35Source",
            },
        },
        SegmentationMarkers = {
            type = "string",
            traits = {
                json_name = "segmentationMarkers",
            },
        },
        SegmentationStyle = {
            type = "string",
            traits = {
                json_name = "segmentationStyle",
            },
        },
        SegmentationTime = {
            type = "double",
            traits = {
                json_name = "segmentationTime",
            },
        },
        TimedMetadataPid = {
            type = "integer",
            traits = {
                json_name = "timedMetadataPid",
            },
        },
        TransportStreamId = {
            type = "integer",
            traits = {
                json_name = "transportStreamId",
            },
        },
        VideoPid = {
            type = "integer",
            traits = {
                json_name = "videoPid",
            },
        },
    },
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

M.M3u8Settings = {
    type = "structure",
    id = "M3u8Settings",
    members = {
        AudioDuration = {
            type = "string",
            traits = {
                json_name = "audioDuration",
            },
        },
        AudioFramesPerPes = {
            type = "integer",
            traits = {
                json_name = "audioFramesPerPes",
            },
        },
        AudioPids = {
            type = "list",
            member = { type = "integer" },
            traits = {
                json_name = "audioPids",
            },
        },
        AudioPtsOffsetDelta = {
            type = "integer",
            traits = {
                json_name = "audioPtsOffsetDelta",
            },
        },
        DataPTSControl = {
            type = "string",
            traits = {
                json_name = "dataPTSControl",
            },
        },
        MaxPcrInterval = {
            type = "integer",
            traits = {
                json_name = "maxPcrInterval",
            },
        },
        NielsenId3 = {
            type = "string",
            traits = {
                json_name = "nielsenId3",
            },
        },
        PatInterval = {
            type = "integer",
            traits = {
                json_name = "patInterval",
            },
        },
        PcrControl = {
            type = "string",
            traits = {
                json_name = "pcrControl",
            },
        },
        PcrPid = {
            type = "integer",
            traits = {
                json_name = "pcrPid",
            },
        },
        PmtInterval = {
            type = "integer",
            traits = {
                json_name = "pmtInterval",
            },
        },
        PmtPid = {
            type = "integer",
            traits = {
                json_name = "pmtPid",
            },
        },
        PrivateMetadataPid = {
            type = "integer",
            traits = {
                json_name = "privateMetadataPid",
            },
        },
        ProgramNumber = {
            type = "integer",
            traits = {
                json_name = "programNumber",
            },
        },
        PtsOffset = {
            type = "integer",
            traits = {
                json_name = "ptsOffset",
            },
        },
        PtsOffsetMode = {
            type = "string",
            traits = {
                json_name = "ptsOffsetMode",
            },
        },
        Scte35Pid = {
            type = "integer",
            traits = {
                json_name = "scte35Pid",
            },
        },
        Scte35Source = {
            type = "string",
            traits = {
                json_name = "scte35Source",
            },
        },
        TimedMetadata = {
            type = "string",
            traits = {
                json_name = "timedMetadata",
            },
        },
        TimedMetadataPid = {
            type = "integer",
            traits = {
                json_name = "timedMetadataPid",
            },
        },
        TransportStreamId = {
            type = "integer",
            traits = {
                json_name = "transportStreamId",
            },
        },
        VideoPid = {
            type = "integer",
            traits = {
                json_name = "videoPid",
            },
        },
    },
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

M.MovSettings = {
    type = "structure",
    id = "MovSettings",
    members = {
        ClapAtom = {
            type = "string",
            traits = {
                json_name = "clapAtom",
            },
        },
        CslgAtom = {
            type = "string",
            traits = {
                json_name = "cslgAtom",
            },
        },
        Mpeg2FourCCControl = {
            type = "string",
            traits = {
                json_name = "mpeg2FourCCControl",
            },
        },
        PaddingControl = {
            type = "string",
            traits = {
                json_name = "paddingControl",
            },
        },
        Reference = {
            type = "string",
            traits = {
                json_name = "reference",
            },
        },
    },
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

M.Mp4Settings = {
    type = "structure",
    id = "Mp4Settings",
    members = {
        AudioDuration = {
            type = "string",
            traits = {
                json_name = "audioDuration",
            },
        },
        C2paManifest = {
            type = "string",
            traits = {
                json_name = "c2paManifest",
            },
        },
        CertificateSecret = {
            type = "string",
            traits = {
                json_name = "certificateSecret",
            },
        },
        CslgAtom = {
            type = "string",
            traits = {
                json_name = "cslgAtom",
            },
        },
        CttsVersion = {
            type = "integer",
            traits = {
                json_name = "cttsVersion",
            },
        },
        FreeSpaceBox = {
            type = "string",
            traits = {
                json_name = "freeSpaceBox",
            },
        },
        MoovPlacement = {
            type = "string",
            traits = {
                json_name = "moovPlacement",
            },
        },
        Mp4MajorBrand = {
            type = "string",
            traits = {
                json_name = "mp4MajorBrand",
            },
        },
        SigningKmsKey = {
            type = "string",
            traits = {
                json_name = "signingKmsKey",
            },
        },
    },
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

M.MpdSettings = {
    type = "structure",
    id = "MpdSettings",
    members = {
        AccessibilityCaptionHints = {
            type = "string",
            traits = {
                json_name = "accessibilityCaptionHints",
            },
        },
        AudioDuration = {
            type = "string",
            traits = {
                json_name = "audioDuration",
            },
        },
        C2paManifest = {
            type = "string",
            traits = {
                json_name = "c2paManifest",
            },
        },
        CaptionContainerType = {
            type = "string",
            traits = {
                json_name = "captionContainerType",
            },
        },
        CertificateSecret = {
            type = "string",
            traits = {
                json_name = "certificateSecret",
            },
        },
        KlvMetadata = {
            type = "string",
            traits = {
                json_name = "klvMetadata",
            },
        },
        ManifestMetadataSignaling = {
            type = "string",
            traits = {
                json_name = "manifestMetadataSignaling",
            },
        },
        Scte35Esam = {
            type = "string",
            traits = {
                json_name = "scte35Esam",
            },
        },
        Scte35Source = {
            type = "string",
            traits = {
                json_name = "scte35Source",
            },
        },
        SigningKmsKey = {
            type = "string",
            traits = {
                json_name = "signingKmsKey",
            },
        },
        TimedMetadata = {
            type = "string",
            traits = {
                json_name = "timedMetadata",
            },
        },
        TimedMetadataBoxVersion = {
            type = "string",
            traits = {
                json_name = "timedMetadataBoxVersion",
            },
        },
        TimedMetadataSchemeIdUri = {
            type = "string",
            traits = {
                json_name = "timedMetadataSchemeIdUri",
            },
        },
        TimedMetadataValue = {
            type = "string",
            traits = {
                json_name = "timedMetadataValue",
            },
        },
    },
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

M.MxfXavcProfileSettings = {
    type = "structure",
    id = "MxfXavcProfileSettings",
    members = {
        DurationMode = {
            type = "string",
            traits = {
                json_name = "durationMode",
            },
        },
        MaxAncDataSize = {
            type = "integer",
            traits = {
                json_name = "maxAncDataSize",
            },
        },
    },
}

M.MxfSettings = {
    type = "structure",
    id = "MxfSettings",
    members = {
        AfdSignaling = {
            type = "string",
            traits = {
                json_name = "afdSignaling",
            },
        },
        Profile = {
            type = "string",
            traits = {
                json_name = "profile",
            },
        },
        UncompressedAudioWrapping = {
            type = "string",
            traits = {
                json_name = "uncompressedAudioWrapping",
            },
        },
        XavcProfileSettings = setmetatable({ traits = {
            json_name = "xavcProfileSettings",
        } }, { __index = M.MxfXavcProfileSettings }),
    },
}

M.ContainerSettings = {
    type = "structure",
    id = "ContainerSettings",
    members = {
        CmfcSettings = setmetatable({ traits = {
            json_name = "cmfcSettings",
        } }, { __index = M.CmfcSettings }),
        Container = {
            type = "string",
            traits = {
                json_name = "container",
            },
        },
        F4vSettings = setmetatable({ traits = {
            json_name = "f4vSettings",
        } }, { __index = M.F4vSettings }),
        M2tsSettings = setmetatable({ traits = {
            json_name = "m2tsSettings",
        } }, { __index = M.M2tsSettings }),
        M3u8Settings = setmetatable({ traits = {
            json_name = "m3u8Settings",
        } }, { __index = M.M3u8Settings }),
        MovSettings = setmetatable({ traits = {
            json_name = "movSettings",
        } }, { __index = M.MovSettings }),
        Mp4Settings = setmetatable({ traits = {
            json_name = "mp4Settings",
        } }, { __index = M.Mp4Settings }),
        MpdSettings = setmetatable({ traits = {
            json_name = "mpdSettings",
        } }, { __index = M.MpdSettings }),
        MxfSettings = setmetatable({ traits = {
            json_name = "mxfSettings",
        } }, { __index = M.MxfSettings }),
    },
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

M.HlsSettings = {
    type = "structure",
    id = "HlsSettings",
    members = {
        AudioGroupId = {
            type = "string",
            traits = {
                json_name = "audioGroupId",
            },
        },
        AudioOnlyContainer = {
            type = "string",
            traits = {
                json_name = "audioOnlyContainer",
            },
        },
        AudioRenditionSets = {
            type = "string",
            traits = {
                json_name = "audioRenditionSets",
            },
        },
        AudioTrackType = {
            type = "string",
            traits = {
                json_name = "audioTrackType",
            },
        },
        DescriptiveVideoServiceFlag = {
            type = "string",
            traits = {
                json_name = "descriptiveVideoServiceFlag",
            },
        },
        IFrameOnlyManifest = {
            type = "string",
            traits = {
                json_name = "iFrameOnlyManifest",
            },
        },
        SegmentModifier = {
            type = "string",
            traits = {
                json_name = "segmentModifier",
            },
        },
    },
}

M.OutputSettings = {
    type = "structure",
    id = "OutputSettings",
    members = {
        HlsSettings = setmetatable({ traits = {
            json_name = "hlsSettings",
        } }, { __index = M.HlsSettings }),
    },
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

M.Av1QvbrSettings = {
    type = "structure",
    id = "Av1QvbrSettings",
    members = {
        QvbrQualityLevel = {
            type = "integer",
            traits = {
                json_name = "qvbrQualityLevel",
            },
        },
        QvbrQualityLevelFineTune = {
            type = "double",
            traits = {
                json_name = "qvbrQualityLevelFineTune",
            },
        },
    },
}

M.Av1RateControlMode = {
    QVBR = "QVBR",
}

M.Av1SpatialAdaptiveQuantization = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.Av1Settings = {
    type = "structure",
    id = "Av1Settings",
    members = {
        AdaptiveQuantization = {
            type = "string",
            traits = {
                json_name = "adaptiveQuantization",
            },
        },
        BitDepth = {
            type = "string",
            traits = {
                json_name = "bitDepth",
            },
        },
        FilmGrainSynthesis = {
            type = "string",
            traits = {
                json_name = "filmGrainSynthesis",
            },
        },
        FramerateControl = {
            type = "string",
            traits = {
                json_name = "framerateControl",
            },
        },
        FramerateConversionAlgorithm = {
            type = "string",
            traits = {
                json_name = "framerateConversionAlgorithm",
            },
        },
        FramerateDenominator = {
            type = "integer",
            traits = {
                json_name = "framerateDenominator",
            },
        },
        FramerateNumerator = {
            type = "integer",
            traits = {
                json_name = "framerateNumerator",
            },
        },
        GopSize = {
            type = "double",
            traits = {
                json_name = "gopSize",
            },
        },
        MaxBitrate = {
            type = "integer",
            traits = {
                json_name = "maxBitrate",
            },
        },
        NumberBFramesBetweenReferenceFrames = {
            type = "integer",
            traits = {
                json_name = "numberBFramesBetweenReferenceFrames",
            },
        },
        PerFrameMetrics = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "perFrameMetrics",
            },
        },
        QvbrSettings = setmetatable({ traits = {
            json_name = "qvbrSettings",
        } }, { __index = M.Av1QvbrSettings }),
        RateControlMode = {
            type = "string",
            traits = {
                json_name = "rateControlMode",
            },
        },
        Slices = {
            type = "integer",
            traits = {
                json_name = "slices",
            },
        },
        SpatialAdaptiveQuantization = {
            type = "string",
            traits = {
                json_name = "spatialAdaptiveQuantization",
            },
        },
    },
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

M.AvcIntraUhdSettings = {
    type = "structure",
    id = "AvcIntraUhdSettings",
    members = {
        QualityTuningLevel = {
            type = "string",
            traits = {
                json_name = "qualityTuningLevel",
            },
        },
    },
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

M.AvcIntraSettings = {
    type = "structure",
    id = "AvcIntraSettings",
    members = {
        AvcIntraClass = {
            type = "string",
            traits = {
                json_name = "avcIntraClass",
            },
        },
        AvcIntraUhdSettings = setmetatable({ traits = {
            json_name = "avcIntraUhdSettings",
        } }, { __index = M.AvcIntraUhdSettings }),
        FramerateControl = {
            type = "string",
            traits = {
                json_name = "framerateControl",
            },
        },
        FramerateConversionAlgorithm = {
            type = "string",
            traits = {
                json_name = "framerateConversionAlgorithm",
            },
        },
        FramerateDenominator = {
            type = "integer",
            traits = {
                json_name = "framerateDenominator",
            },
        },
        FramerateNumerator = {
            type = "integer",
            traits = {
                json_name = "framerateNumerator",
            },
        },
        InterlaceMode = {
            type = "string",
            traits = {
                json_name = "interlaceMode",
            },
        },
        PerFrameMetrics = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "perFrameMetrics",
            },
        },
        ScanTypeConversionMode = {
            type = "string",
            traits = {
                json_name = "scanTypeConversionMode",
            },
        },
        SlowPal = {
            type = "string",
            traits = {
                json_name = "slowPal",
            },
        },
        Telecine = {
            type = "string",
            traits = {
                json_name = "telecine",
            },
        },
    },
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

M.FrameCaptureSettings = {
    type = "structure",
    id = "FrameCaptureSettings",
    members = {
        FramerateDenominator = {
            type = "integer",
            traits = {
                json_name = "framerateDenominator",
            },
        },
        FramerateNumerator = {
            type = "integer",
            traits = {
                json_name = "framerateNumerator",
            },
        },
        MaxCaptures = {
            type = "integer",
            traits = {
                json_name = "maxCaptures",
            },
        },
        Quality = {
            type = "integer",
            traits = {
                json_name = "quality",
            },
        },
    },
}

M.GifFramerateControl = {
    INITIALIZE_FROM_SOURCE = "INITIALIZE_FROM_SOURCE",
    SPECIFIED = "SPECIFIED",
}

M.GifFramerateConversionAlgorithm = {
    DUPLICATE_DROP = "DUPLICATE_DROP",
    INTERPOLATE = "INTERPOLATE",
}

M.GifSettings = {
    type = "structure",
    id = "GifSettings",
    members = {
        FramerateControl = {
            type = "string",
            traits = {
                json_name = "framerateControl",
            },
        },
        FramerateConversionAlgorithm = {
            type = "string",
            traits = {
                json_name = "framerateConversionAlgorithm",
            },
        },
        FramerateDenominator = {
            type = "integer",
            traits = {
                json_name = "framerateDenominator",
            },
        },
        FramerateNumerator = {
            type = "integer",
            traits = {
                json_name = "framerateNumerator",
            },
        },
    },
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

M.BandwidthReductionFilter = {
    type = "structure",
    id = "BandwidthReductionFilter",
    members = {
        Sharpening = {
            type = "string",
            traits = {
                json_name = "sharpening",
            },
        },
        Strength = {
            type = "string",
            traits = {
                json_name = "strength",
            },
        },
    },
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

M.H264QvbrSettings = {
    type = "structure",
    id = "H264QvbrSettings",
    members = {
        MaxAverageBitrate = {
            type = "integer",
            traits = {
                json_name = "maxAverageBitrate",
            },
        },
        QvbrQualityLevel = {
            type = "integer",
            traits = {
                json_name = "qvbrQualityLevel",
            },
        },
        QvbrQualityLevelFineTune = {
            type = "double",
            traits = {
                json_name = "qvbrQualityLevelFineTune",
            },
        },
    },
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

M.H264Settings = {
    type = "structure",
    id = "H264Settings",
    members = {
        AdaptiveQuantization = {
            type = "string",
            traits = {
                json_name = "adaptiveQuantization",
            },
        },
        BandwidthReductionFilter = setmetatable({ traits = {
            json_name = "bandwidthReductionFilter",
        } }, { __index = M.BandwidthReductionFilter }),
        Bitrate = {
            type = "integer",
            traits = {
                json_name = "bitrate",
            },
        },
        CodecLevel = {
            type = "string",
            traits = {
                json_name = "codecLevel",
            },
        },
        CodecProfile = {
            type = "string",
            traits = {
                json_name = "codecProfile",
            },
        },
        DynamicSubGop = {
            type = "string",
            traits = {
                json_name = "dynamicSubGop",
            },
        },
        EndOfStreamMarkers = {
            type = "string",
            traits = {
                json_name = "endOfStreamMarkers",
            },
        },
        EntropyEncoding = {
            type = "string",
            traits = {
                json_name = "entropyEncoding",
            },
        },
        FieldEncoding = {
            type = "string",
            traits = {
                json_name = "fieldEncoding",
            },
        },
        FlickerAdaptiveQuantization = {
            type = "string",
            traits = {
                json_name = "flickerAdaptiveQuantization",
            },
        },
        FramerateControl = {
            type = "string",
            traits = {
                json_name = "framerateControl",
            },
        },
        FramerateConversionAlgorithm = {
            type = "string",
            traits = {
                json_name = "framerateConversionAlgorithm",
            },
        },
        FramerateDenominator = {
            type = "integer",
            traits = {
                json_name = "framerateDenominator",
            },
        },
        FramerateNumerator = {
            type = "integer",
            traits = {
                json_name = "framerateNumerator",
            },
        },
        GopBReference = {
            type = "string",
            traits = {
                json_name = "gopBReference",
            },
        },
        GopClosedCadence = {
            type = "integer",
            traits = {
                json_name = "gopClosedCadence",
            },
        },
        GopSize = {
            type = "double",
            traits = {
                json_name = "gopSize",
            },
        },
        GopSizeUnits = {
            type = "string",
            traits = {
                json_name = "gopSizeUnits",
            },
        },
        HrdBufferFinalFillPercentage = {
            type = "integer",
            traits = {
                json_name = "hrdBufferFinalFillPercentage",
            },
        },
        HrdBufferInitialFillPercentage = {
            type = "integer",
            traits = {
                json_name = "hrdBufferInitialFillPercentage",
            },
        },
        HrdBufferSize = {
            type = "integer",
            traits = {
                json_name = "hrdBufferSize",
            },
        },
        InterlaceMode = {
            type = "string",
            traits = {
                json_name = "interlaceMode",
            },
        },
        MaxBitrate = {
            type = "integer",
            traits = {
                json_name = "maxBitrate",
            },
        },
        MinIInterval = {
            type = "integer",
            traits = {
                json_name = "minIInterval",
            },
        },
        NumberBFramesBetweenReferenceFrames = {
            type = "integer",
            traits = {
                json_name = "numberBFramesBetweenReferenceFrames",
            },
        },
        NumberReferenceFrames = {
            type = "integer",
            traits = {
                json_name = "numberReferenceFrames",
            },
        },
        ParControl = {
            type = "string",
            traits = {
                json_name = "parControl",
            },
        },
        ParDenominator = {
            type = "integer",
            traits = {
                json_name = "parDenominator",
            },
        },
        ParNumerator = {
            type = "integer",
            traits = {
                json_name = "parNumerator",
            },
        },
        PerFrameMetrics = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "perFrameMetrics",
            },
        },
        QualityTuningLevel = {
            type = "string",
            traits = {
                json_name = "qualityTuningLevel",
            },
        },
        QvbrSettings = setmetatable({ traits = {
            json_name = "qvbrSettings",
        } }, { __index = M.H264QvbrSettings }),
        RateControlMode = {
            type = "string",
            traits = {
                json_name = "rateControlMode",
            },
        },
        RepeatPps = {
            type = "string",
            traits = {
                json_name = "repeatPps",
            },
        },
        SaliencyAwareEncoding = {
            type = "string",
            traits = {
                json_name = "saliencyAwareEncoding",
            },
        },
        ScanTypeConversionMode = {
            type = "string",
            traits = {
                json_name = "scanTypeConversionMode",
            },
        },
        SceneChangeDetect = {
            type = "string",
            traits = {
                json_name = "sceneChangeDetect",
            },
        },
        Slices = {
            type = "integer",
            traits = {
                json_name = "slices",
            },
        },
        SlowPal = {
            type = "string",
            traits = {
                json_name = "slowPal",
            },
        },
        Softness = {
            type = "integer",
            traits = {
                json_name = "softness",
            },
        },
        SpatialAdaptiveQuantization = {
            type = "string",
            traits = {
                json_name = "spatialAdaptiveQuantization",
            },
        },
        Syntax = {
            type = "string",
            traits = {
                json_name = "syntax",
            },
        },
        Telecine = {
            type = "string",
            traits = {
                json_name = "telecine",
            },
        },
        TemporalAdaptiveQuantization = {
            type = "string",
            traits = {
                json_name = "temporalAdaptiveQuantization",
            },
        },
        UnregisteredSeiTimecode = {
            type = "string",
            traits = {
                json_name = "unregisteredSeiTimecode",
            },
        },
        WriteMp4PackagingType = {
            type = "string",
            traits = {
                json_name = "writeMp4PackagingType",
            },
        },
    },
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

M.H265QvbrSettings = {
    type = "structure",
    id = "H265QvbrSettings",
    members = {
        MaxAverageBitrate = {
            type = "integer",
            traits = {
                json_name = "maxAverageBitrate",
            },
        },
        QvbrQualityLevel = {
            type = "integer",
            traits = {
                json_name = "qvbrQualityLevel",
            },
        },
        QvbrQualityLevelFineTune = {
            type = "double",
            traits = {
                json_name = "qvbrQualityLevelFineTune",
            },
        },
    },
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

M.H265Settings = {
    type = "structure",
    id = "H265Settings",
    members = {
        AdaptiveQuantization = {
            type = "string",
            traits = {
                json_name = "adaptiveQuantization",
            },
        },
        AlternateTransferFunctionSei = {
            type = "string",
            traits = {
                json_name = "alternateTransferFunctionSei",
            },
        },
        BandwidthReductionFilter = setmetatable({ traits = {
            json_name = "bandwidthReductionFilter",
        } }, { __index = M.BandwidthReductionFilter }),
        Bitrate = {
            type = "integer",
            traits = {
                json_name = "bitrate",
            },
        },
        CodecLevel = {
            type = "string",
            traits = {
                json_name = "codecLevel",
            },
        },
        CodecProfile = {
            type = "string",
            traits = {
                json_name = "codecProfile",
            },
        },
        Deblocking = {
            type = "string",
            traits = {
                json_name = "deblocking",
            },
        },
        DynamicSubGop = {
            type = "string",
            traits = {
                json_name = "dynamicSubGop",
            },
        },
        EndOfStreamMarkers = {
            type = "string",
            traits = {
                json_name = "endOfStreamMarkers",
            },
        },
        FlickerAdaptiveQuantization = {
            type = "string",
            traits = {
                json_name = "flickerAdaptiveQuantization",
            },
        },
        FramerateControl = {
            type = "string",
            traits = {
                json_name = "framerateControl",
            },
        },
        FramerateConversionAlgorithm = {
            type = "string",
            traits = {
                json_name = "framerateConversionAlgorithm",
            },
        },
        FramerateDenominator = {
            type = "integer",
            traits = {
                json_name = "framerateDenominator",
            },
        },
        FramerateNumerator = {
            type = "integer",
            traits = {
                json_name = "framerateNumerator",
            },
        },
        GopBReference = {
            type = "string",
            traits = {
                json_name = "gopBReference",
            },
        },
        GopClosedCadence = {
            type = "integer",
            traits = {
                json_name = "gopClosedCadence",
            },
        },
        GopSize = {
            type = "double",
            traits = {
                json_name = "gopSize",
            },
        },
        GopSizeUnits = {
            type = "string",
            traits = {
                json_name = "gopSizeUnits",
            },
        },
        HrdBufferFinalFillPercentage = {
            type = "integer",
            traits = {
                json_name = "hrdBufferFinalFillPercentage",
            },
        },
        HrdBufferInitialFillPercentage = {
            type = "integer",
            traits = {
                json_name = "hrdBufferInitialFillPercentage",
            },
        },
        HrdBufferSize = {
            type = "integer",
            traits = {
                json_name = "hrdBufferSize",
            },
        },
        InterlaceMode = {
            type = "string",
            traits = {
                json_name = "interlaceMode",
            },
        },
        MaxBitrate = {
            type = "integer",
            traits = {
                json_name = "maxBitrate",
            },
        },
        MinIInterval = {
            type = "integer",
            traits = {
                json_name = "minIInterval",
            },
        },
        MvOverPictureBoundaries = {
            type = "string",
            traits = {
                json_name = "mvOverPictureBoundaries",
            },
        },
        MvTemporalPredictor = {
            type = "string",
            traits = {
                json_name = "mvTemporalPredictor",
            },
        },
        NumberBFramesBetweenReferenceFrames = {
            type = "integer",
            traits = {
                json_name = "numberBFramesBetweenReferenceFrames",
            },
        },
        NumberReferenceFrames = {
            type = "integer",
            traits = {
                json_name = "numberReferenceFrames",
            },
        },
        ParControl = {
            type = "string",
            traits = {
                json_name = "parControl",
            },
        },
        ParDenominator = {
            type = "integer",
            traits = {
                json_name = "parDenominator",
            },
        },
        ParNumerator = {
            type = "integer",
            traits = {
                json_name = "parNumerator",
            },
        },
        PerFrameMetrics = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "perFrameMetrics",
            },
        },
        QualityTuningLevel = {
            type = "string",
            traits = {
                json_name = "qualityTuningLevel",
            },
        },
        QvbrSettings = setmetatable({ traits = {
            json_name = "qvbrSettings",
        } }, { __index = M.H265QvbrSettings }),
        RateControlMode = {
            type = "string",
            traits = {
                json_name = "rateControlMode",
            },
        },
        SampleAdaptiveOffsetFilterMode = {
            type = "string",
            traits = {
                json_name = "sampleAdaptiveOffsetFilterMode",
            },
        },
        ScanTypeConversionMode = {
            type = "string",
            traits = {
                json_name = "scanTypeConversionMode",
            },
        },
        SceneChangeDetect = {
            type = "string",
            traits = {
                json_name = "sceneChangeDetect",
            },
        },
        Slices = {
            type = "integer",
            traits = {
                json_name = "slices",
            },
        },
        SlowPal = {
            type = "string",
            traits = {
                json_name = "slowPal",
            },
        },
        SpatialAdaptiveQuantization = {
            type = "string",
            traits = {
                json_name = "spatialAdaptiveQuantization",
            },
        },
        Telecine = {
            type = "string",
            traits = {
                json_name = "telecine",
            },
        },
        TemporalAdaptiveQuantization = {
            type = "string",
            traits = {
                json_name = "temporalAdaptiveQuantization",
            },
        },
        TemporalIds = {
            type = "string",
            traits = {
                json_name = "temporalIds",
            },
        },
        TileHeight = {
            type = "integer",
            traits = {
                json_name = "tileHeight",
            },
        },
        TilePadding = {
            type = "string",
            traits = {
                json_name = "tilePadding",
            },
        },
        TileWidth = {
            type = "integer",
            traits = {
                json_name = "tileWidth",
            },
        },
        Tiles = {
            type = "string",
            traits = {
                json_name = "tiles",
            },
        },
        TreeBlockSize = {
            type = "string",
            traits = {
                json_name = "treeBlockSize",
            },
        },
        UnregisteredSeiTimecode = {
            type = "string",
            traits = {
                json_name = "unregisteredSeiTimecode",
            },
        },
        WriteMp4PackagingType = {
            type = "string",
            traits = {
                json_name = "writeMp4PackagingType",
            },
        },
    },
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

M.Mpeg2Settings = {
    type = "structure",
    id = "Mpeg2Settings",
    members = {
        AdaptiveQuantization = {
            type = "string",
            traits = {
                json_name = "adaptiveQuantization",
            },
        },
        Bitrate = {
            type = "integer",
            traits = {
                json_name = "bitrate",
            },
        },
        CodecLevel = {
            type = "string",
            traits = {
                json_name = "codecLevel",
            },
        },
        CodecProfile = {
            type = "string",
            traits = {
                json_name = "codecProfile",
            },
        },
        DynamicSubGop = {
            type = "string",
            traits = {
                json_name = "dynamicSubGop",
            },
        },
        FramerateControl = {
            type = "string",
            traits = {
                json_name = "framerateControl",
            },
        },
        FramerateConversionAlgorithm = {
            type = "string",
            traits = {
                json_name = "framerateConversionAlgorithm",
            },
        },
        FramerateDenominator = {
            type = "integer",
            traits = {
                json_name = "framerateDenominator",
            },
        },
        FramerateNumerator = {
            type = "integer",
            traits = {
                json_name = "framerateNumerator",
            },
        },
        GopClosedCadence = {
            type = "integer",
            traits = {
                json_name = "gopClosedCadence",
            },
        },
        GopSize = {
            type = "double",
            traits = {
                json_name = "gopSize",
            },
        },
        GopSizeUnits = {
            type = "string",
            traits = {
                json_name = "gopSizeUnits",
            },
        },
        HrdBufferFinalFillPercentage = {
            type = "integer",
            traits = {
                json_name = "hrdBufferFinalFillPercentage",
            },
        },
        HrdBufferInitialFillPercentage = {
            type = "integer",
            traits = {
                json_name = "hrdBufferInitialFillPercentage",
            },
        },
        HrdBufferSize = {
            type = "integer",
            traits = {
                json_name = "hrdBufferSize",
            },
        },
        InterlaceMode = {
            type = "string",
            traits = {
                json_name = "interlaceMode",
            },
        },
        IntraDcPrecision = {
            type = "string",
            traits = {
                json_name = "intraDcPrecision",
            },
        },
        MaxBitrate = {
            type = "integer",
            traits = {
                json_name = "maxBitrate",
            },
        },
        MinIInterval = {
            type = "integer",
            traits = {
                json_name = "minIInterval",
            },
        },
        NumberBFramesBetweenReferenceFrames = {
            type = "integer",
            traits = {
                json_name = "numberBFramesBetweenReferenceFrames",
            },
        },
        ParControl = {
            type = "string",
            traits = {
                json_name = "parControl",
            },
        },
        ParDenominator = {
            type = "integer",
            traits = {
                json_name = "parDenominator",
            },
        },
        ParNumerator = {
            type = "integer",
            traits = {
                json_name = "parNumerator",
            },
        },
        PerFrameMetrics = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "perFrameMetrics",
            },
        },
        QualityTuningLevel = {
            type = "string",
            traits = {
                json_name = "qualityTuningLevel",
            },
        },
        RateControlMode = {
            type = "string",
            traits = {
                json_name = "rateControlMode",
            },
        },
        ScanTypeConversionMode = {
            type = "string",
            traits = {
                json_name = "scanTypeConversionMode",
            },
        },
        SceneChangeDetect = {
            type = "string",
            traits = {
                json_name = "sceneChangeDetect",
            },
        },
        SlowPal = {
            type = "string",
            traits = {
                json_name = "slowPal",
            },
        },
        Softness = {
            type = "integer",
            traits = {
                json_name = "softness",
            },
        },
        SpatialAdaptiveQuantization = {
            type = "string",
            traits = {
                json_name = "spatialAdaptiveQuantization",
            },
        },
        Syntax = {
            type = "string",
            traits = {
                json_name = "syntax",
            },
        },
        Telecine = {
            type = "string",
            traits = {
                json_name = "telecine",
            },
        },
        TemporalAdaptiveQuantization = {
            type = "string",
            traits = {
                json_name = "temporalAdaptiveQuantization",
            },
        },
    },
}

M.FrameControl = {
    NEAREST_IDRFRAME = "NEAREST_IDRFRAME",
    NEAREST_IFRAME = "NEAREST_IFRAME",
}

M.VideoSelectorMode = {
    AUTO = "AUTO",
    REMUX_ALL = "REMUX_ALL",
}

M.PassthroughSettings = {
    type = "structure",
    id = "PassthroughSettings",
    members = {
        FrameControl = {
            type = "string",
            traits = {
                json_name = "frameControl",
            },
        },
        VideoSelectorMode = {
            type = "string",
            traits = {
                json_name = "videoSelectorMode",
            },
        },
    },
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

M.ProresSettings = {
    type = "structure",
    id = "ProresSettings",
    members = {
        ChromaSampling = {
            type = "string",
            traits = {
                json_name = "chromaSampling",
            },
        },
        CodecProfile = {
            type = "string",
            traits = {
                json_name = "codecProfile",
            },
        },
        FramerateControl = {
            type = "string",
            traits = {
                json_name = "framerateControl",
            },
        },
        FramerateConversionAlgorithm = {
            type = "string",
            traits = {
                json_name = "framerateConversionAlgorithm",
            },
        },
        FramerateDenominator = {
            type = "integer",
            traits = {
                json_name = "framerateDenominator",
            },
        },
        FramerateNumerator = {
            type = "integer",
            traits = {
                json_name = "framerateNumerator",
            },
        },
        InterlaceMode = {
            type = "string",
            traits = {
                json_name = "interlaceMode",
            },
        },
        ParControl = {
            type = "string",
            traits = {
                json_name = "parControl",
            },
        },
        ParDenominator = {
            type = "integer",
            traits = {
                json_name = "parDenominator",
            },
        },
        ParNumerator = {
            type = "integer",
            traits = {
                json_name = "parNumerator",
            },
        },
        PerFrameMetrics = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "perFrameMetrics",
            },
        },
        ScanTypeConversionMode = {
            type = "string",
            traits = {
                json_name = "scanTypeConversionMode",
            },
        },
        SlowPal = {
            type = "string",
            traits = {
                json_name = "slowPal",
            },
        },
        Telecine = {
            type = "string",
            traits = {
                json_name = "telecine",
            },
        },
    },
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

M.UncompressedSettings = {
    type = "structure",
    id = "UncompressedSettings",
    members = {
        Fourcc = {
            type = "string",
            traits = {
                json_name = "fourcc",
            },
        },
        FramerateControl = {
            type = "string",
            traits = {
                json_name = "framerateControl",
            },
        },
        FramerateConversionAlgorithm = {
            type = "string",
            traits = {
                json_name = "framerateConversionAlgorithm",
            },
        },
        FramerateDenominator = {
            type = "integer",
            traits = {
                json_name = "framerateDenominator",
            },
        },
        FramerateNumerator = {
            type = "integer",
            traits = {
                json_name = "framerateNumerator",
            },
        },
        InterlaceMode = {
            type = "string",
            traits = {
                json_name = "interlaceMode",
            },
        },
        ScanTypeConversionMode = {
            type = "string",
            traits = {
                json_name = "scanTypeConversionMode",
            },
        },
        SlowPal = {
            type = "string",
            traits = {
                json_name = "slowPal",
            },
        },
        Telecine = {
            type = "string",
            traits = {
                json_name = "telecine",
            },
        },
    },
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

M.Vc3Settings = {
    type = "structure",
    id = "Vc3Settings",
    members = {
        FramerateControl = {
            type = "string",
            traits = {
                json_name = "framerateControl",
            },
        },
        FramerateConversionAlgorithm = {
            type = "string",
            traits = {
                json_name = "framerateConversionAlgorithm",
            },
        },
        FramerateDenominator = {
            type = "integer",
            traits = {
                json_name = "framerateDenominator",
            },
        },
        FramerateNumerator = {
            type = "integer",
            traits = {
                json_name = "framerateNumerator",
            },
        },
        InterlaceMode = {
            type = "string",
            traits = {
                json_name = "interlaceMode",
            },
        },
        ScanTypeConversionMode = {
            type = "string",
            traits = {
                json_name = "scanTypeConversionMode",
            },
        },
        SlowPal = {
            type = "string",
            traits = {
                json_name = "slowPal",
            },
        },
        Telecine = {
            type = "string",
            traits = {
                json_name = "telecine",
            },
        },
        Vc3Class = {
            type = "string",
            traits = {
                json_name = "vc3Class",
            },
        },
    },
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

M.Vp8Settings = {
    type = "structure",
    id = "Vp8Settings",
    members = {
        Bitrate = {
            type = "integer",
            traits = {
                json_name = "bitrate",
            },
        },
        FramerateControl = {
            type = "string",
            traits = {
                json_name = "framerateControl",
            },
        },
        FramerateConversionAlgorithm = {
            type = "string",
            traits = {
                json_name = "framerateConversionAlgorithm",
            },
        },
        FramerateDenominator = {
            type = "integer",
            traits = {
                json_name = "framerateDenominator",
            },
        },
        FramerateNumerator = {
            type = "integer",
            traits = {
                json_name = "framerateNumerator",
            },
        },
        GopSize = {
            type = "double",
            traits = {
                json_name = "gopSize",
            },
        },
        HrdBufferSize = {
            type = "integer",
            traits = {
                json_name = "hrdBufferSize",
            },
        },
        MaxBitrate = {
            type = "integer",
            traits = {
                json_name = "maxBitrate",
            },
        },
        ParControl = {
            type = "string",
            traits = {
                json_name = "parControl",
            },
        },
        ParDenominator = {
            type = "integer",
            traits = {
                json_name = "parDenominator",
            },
        },
        ParNumerator = {
            type = "integer",
            traits = {
                json_name = "parNumerator",
            },
        },
        QualityTuningLevel = {
            type = "string",
            traits = {
                json_name = "qualityTuningLevel",
            },
        },
        RateControlMode = {
            type = "string",
            traits = {
                json_name = "rateControlMode",
            },
        },
    },
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

M.Vp9Settings = {
    type = "structure",
    id = "Vp9Settings",
    members = {
        Bitrate = {
            type = "integer",
            traits = {
                json_name = "bitrate",
            },
        },
        FramerateControl = {
            type = "string",
            traits = {
                json_name = "framerateControl",
            },
        },
        FramerateConversionAlgorithm = {
            type = "string",
            traits = {
                json_name = "framerateConversionAlgorithm",
            },
        },
        FramerateDenominator = {
            type = "integer",
            traits = {
                json_name = "framerateDenominator",
            },
        },
        FramerateNumerator = {
            type = "integer",
            traits = {
                json_name = "framerateNumerator",
            },
        },
        GopSize = {
            type = "double",
            traits = {
                json_name = "gopSize",
            },
        },
        HrdBufferSize = {
            type = "integer",
            traits = {
                json_name = "hrdBufferSize",
            },
        },
        MaxBitrate = {
            type = "integer",
            traits = {
                json_name = "maxBitrate",
            },
        },
        ParControl = {
            type = "string",
            traits = {
                json_name = "parControl",
            },
        },
        ParDenominator = {
            type = "integer",
            traits = {
                json_name = "parDenominator",
            },
        },
        ParNumerator = {
            type = "integer",
            traits = {
                json_name = "parNumerator",
            },
        },
        QualityTuningLevel = {
            type = "string",
            traits = {
                json_name = "qualityTuningLevel",
            },
        },
        RateControlMode = {
            type = "string",
            traits = {
                json_name = "rateControlMode",
            },
        },
    },
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

M.Xavc4kIntraCbgProfileSettings = {
    type = "structure",
    id = "Xavc4kIntraCbgProfileSettings",
    members = {
        XavcClass = {
            type = "string",
            traits = {
                json_name = "xavcClass",
            },
        },
    },
}

M.Xavc4kIntraVbrProfileClass = {
    CLASS_100 = "CLASS_100",
    CLASS_300 = "CLASS_300",
    CLASS_480 = "CLASS_480",
}

M.Xavc4kIntraVbrProfileSettings = {
    type = "structure",
    id = "Xavc4kIntraVbrProfileSettings",
    members = {
        XavcClass = {
            type = "string",
            traits = {
                json_name = "xavcClass",
            },
        },
    },
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

M.Xavc4kProfileSettings = {
    type = "structure",
    id = "Xavc4kProfileSettings",
    members = {
        BitrateClass = {
            type = "string",
            traits = {
                json_name = "bitrateClass",
            },
        },
        CodecProfile = {
            type = "string",
            traits = {
                json_name = "codecProfile",
            },
        },
        FlickerAdaptiveQuantization = {
            type = "string",
            traits = {
                json_name = "flickerAdaptiveQuantization",
            },
        },
        GopBReference = {
            type = "string",
            traits = {
                json_name = "gopBReference",
            },
        },
        GopClosedCadence = {
            type = "integer",
            traits = {
                json_name = "gopClosedCadence",
            },
        },
        HrdBufferSize = {
            type = "integer",
            traits = {
                json_name = "hrdBufferSize",
            },
        },
        QualityTuningLevel = {
            type = "string",
            traits = {
                json_name = "qualityTuningLevel",
            },
        },
        Slices = {
            type = "integer",
            traits = {
                json_name = "slices",
            },
        },
    },
}

M.XavcHdIntraCbgProfileClass = {
    CLASS_50 = "CLASS_50",
    CLASS_100 = "CLASS_100",
    CLASS_200 = "CLASS_200",
}

M.XavcHdIntraCbgProfileSettings = {
    type = "structure",
    id = "XavcHdIntraCbgProfileSettings",
    members = {
        XavcClass = {
            type = "string",
            traits = {
                json_name = "xavcClass",
            },
        },
    },
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

M.XavcHdProfileSettings = {
    type = "structure",
    id = "XavcHdProfileSettings",
    members = {
        BitrateClass = {
            type = "string",
            traits = {
                json_name = "bitrateClass",
            },
        },
        FlickerAdaptiveQuantization = {
            type = "string",
            traits = {
                json_name = "flickerAdaptiveQuantization",
            },
        },
        GopBReference = {
            type = "string",
            traits = {
                json_name = "gopBReference",
            },
        },
        GopClosedCadence = {
            type = "integer",
            traits = {
                json_name = "gopClosedCadence",
            },
        },
        HrdBufferSize = {
            type = "integer",
            traits = {
                json_name = "hrdBufferSize",
            },
        },
        InterlaceMode = {
            type = "string",
            traits = {
                json_name = "interlaceMode",
            },
        },
        QualityTuningLevel = {
            type = "string",
            traits = {
                json_name = "qualityTuningLevel",
            },
        },
        Slices = {
            type = "integer",
            traits = {
                json_name = "slices",
            },
        },
        Telecine = {
            type = "string",
            traits = {
                json_name = "telecine",
            },
        },
    },
}

M.XavcSettings = {
    type = "structure",
    id = "XavcSettings",
    members = {
        AdaptiveQuantization = {
            type = "string",
            traits = {
                json_name = "adaptiveQuantization",
            },
        },
        EntropyEncoding = {
            type = "string",
            traits = {
                json_name = "entropyEncoding",
            },
        },
        FramerateControl = {
            type = "string",
            traits = {
                json_name = "framerateControl",
            },
        },
        FramerateConversionAlgorithm = {
            type = "string",
            traits = {
                json_name = "framerateConversionAlgorithm",
            },
        },
        FramerateDenominator = {
            type = "integer",
            traits = {
                json_name = "framerateDenominator",
            },
        },
        FramerateNumerator = {
            type = "integer",
            traits = {
                json_name = "framerateNumerator",
            },
        },
        PerFrameMetrics = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "perFrameMetrics",
            },
        },
        Profile = {
            type = "string",
            traits = {
                json_name = "profile",
            },
        },
        SlowPal = {
            type = "string",
            traits = {
                json_name = "slowPal",
            },
        },
        Softness = {
            type = "integer",
            traits = {
                json_name = "softness",
            },
        },
        SpatialAdaptiveQuantization = {
            type = "string",
            traits = {
                json_name = "spatialAdaptiveQuantization",
            },
        },
        TemporalAdaptiveQuantization = {
            type = "string",
            traits = {
                json_name = "temporalAdaptiveQuantization",
            },
        },
        Xavc4kIntraCbgProfileSettings = setmetatable({ traits = {
            json_name = "xavc4kIntraCbgProfileSettings",
        } }, { __index = M.Xavc4kIntraCbgProfileSettings }),
        Xavc4kIntraVbrProfileSettings = setmetatable({ traits = {
            json_name = "xavc4kIntraVbrProfileSettings",
        } }, { __index = M.Xavc4kIntraVbrProfileSettings }),
        Xavc4kProfileSettings = setmetatable({ traits = {
            json_name = "xavc4kProfileSettings",
        } }, { __index = M.Xavc4kProfileSettings }),
        XavcHdIntraCbgProfileSettings = setmetatable({ traits = {
            json_name = "xavcHdIntraCbgProfileSettings",
        } }, { __index = M.XavcHdIntraCbgProfileSettings }),
        XavcHdProfileSettings = setmetatable({ traits = {
            json_name = "xavcHdProfileSettings",
        } }, { __index = M.XavcHdProfileSettings }),
    },
}

M.VideoCodecSettings = {
    type = "structure",
    id = "VideoCodecSettings",
    members = {
        Av1Settings = setmetatable({ traits = {
            json_name = "av1Settings",
        } }, { __index = M.Av1Settings }),
        AvcIntraSettings = setmetatable({ traits = {
            json_name = "avcIntraSettings",
        } }, { __index = M.AvcIntraSettings }),
        Codec = {
            type = "string",
            traits = {
                json_name = "codec",
            },
        },
        FrameCaptureSettings = setmetatable({ traits = {
            json_name = "frameCaptureSettings",
        } }, { __index = M.FrameCaptureSettings }),
        GifSettings = setmetatable({ traits = {
            json_name = "gifSettings",
        } }, { __index = M.GifSettings }),
        H264Settings = setmetatable({ traits = {
            json_name = "h264Settings",
        } }, { __index = M.H264Settings }),
        H265Settings = setmetatable({ traits = {
            json_name = "h265Settings",
        } }, { __index = M.H265Settings }),
        Mpeg2Settings = setmetatable({ traits = {
            json_name = "mpeg2Settings",
        } }, { __index = M.Mpeg2Settings }),
        PassthroughSettings = setmetatable({ traits = {
            json_name = "passthroughSettings",
        } }, { __index = M.PassthroughSettings }),
        ProresSettings = setmetatable({ traits = {
            json_name = "proresSettings",
        } }, { __index = M.ProresSettings }),
        UncompressedSettings = setmetatable({ traits = {
            json_name = "uncompressedSettings",
        } }, { __index = M.UncompressedSettings }),
        Vc3Settings = setmetatable({ traits = {
            json_name = "vc3Settings",
        } }, { __index = M.Vc3Settings }),
        Vp8Settings = setmetatable({ traits = {
            json_name = "vp8Settings",
        } }, { __index = M.Vp8Settings }),
        Vp9Settings = setmetatable({ traits = {
            json_name = "vp9Settings",
        } }, { __index = M.Vp9Settings }),
        XavcSettings = setmetatable({ traits = {
            json_name = "xavcSettings",
        } }, { __index = M.XavcSettings }),
    },
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

M.ClipLimits = {
    type = "structure",
    id = "ClipLimits",
    members = {
        MaximumRGBTolerance = {
            type = "integer",
            traits = {
                json_name = "maximumRGBTolerance",
            },
        },
        MaximumYUV = {
            type = "integer",
            traits = {
                json_name = "maximumYUV",
            },
        },
        MinimumRGBTolerance = {
            type = "integer",
            traits = {
                json_name = "minimumRGBTolerance",
            },
        },
        MinimumYUV = {
            type = "integer",
            traits = {
                json_name = "minimumYUV",
            },
        },
    },
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

M.ColorCorrector = {
    type = "structure",
    id = "ColorCorrector",
    members = {
        Brightness = {
            type = "integer",
            traits = {
                json_name = "brightness",
            },
        },
        ClipLimits = setmetatable({ traits = {
            json_name = "clipLimits",
        } }, { __index = M.ClipLimits }),
        ColorSpaceConversion = {
            type = "string",
            traits = {
                json_name = "colorSpaceConversion",
            },
        },
        Contrast = {
            type = "integer",
            traits = {
                json_name = "contrast",
            },
        },
        Hdr10Metadata = setmetatable({ traits = {
            json_name = "hdr10Metadata",
        } }, { __index = M.Hdr10Metadata }),
        HdrToSdrToneMapper = {
            type = "string",
            traits = {
                json_name = "hdrToSdrToneMapper",
            },
        },
        Hue = {
            type = "integer",
            traits = {
                json_name = "hue",
            },
        },
        MaxLuminance = {
            type = "integer",
            traits = {
                json_name = "maxLuminance",
            },
        },
        SampleRangeConversion = {
            type = "string",
            traits = {
                json_name = "sampleRangeConversion",
            },
        },
        Saturation = {
            type = "integer",
            traits = {
                json_name = "saturation",
            },
        },
        SdrReferenceWhiteLevel = {
            type = "integer",
            traits = {
                json_name = "sdrReferenceWhiteLevel",
            },
        },
    },
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

M.Deinterlacer = {
    type = "structure",
    id = "Deinterlacer",
    members = {
        Algorithm = {
            type = "string",
            traits = {
                json_name = "algorithm",
            },
        },
        Control = {
            type = "string",
            traits = {
                json_name = "control",
            },
        },
        Mode = {
            type = "string",
            traits = {
                json_name = "mode",
            },
        },
    },
}

M.DolbyVisionCompatibility = {
    DUPLICATE_STREAM = "DUPLICATE_STREAM",
    SUPPLEMENTAL_CODECS = "SUPPLEMENTAL_CODECS",
}

M.DolbyVisionLevel6Metadata = {
    type = "structure",
    id = "DolbyVisionLevel6Metadata",
    members = {
        MaxCll = {
            type = "integer",
            traits = {
                json_name = "maxCll",
            },
        },
        MaxFall = {
            type = "integer",
            traits = {
                json_name = "maxFall",
            },
        },
    },
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

M.DolbyVision = {
    type = "structure",
    id = "DolbyVision",
    members = {
        Compatibility = {
            type = "string",
            traits = {
                json_name = "compatibility",
            },
        },
        L6Metadata = setmetatable({ traits = {
            json_name = "l6Metadata",
        } }, { __index = M.DolbyVisionLevel6Metadata }),
        L6Mode = {
            type = "string",
            traits = {
                json_name = "l6Mode",
            },
        },
        Mapping = {
            type = "string",
            traits = {
                json_name = "mapping",
            },
        },
        Profile = {
            type = "string",
            traits = {
                json_name = "profile",
            },
        },
    },
}

M.Hdr10Plus = {
    type = "structure",
    id = "Hdr10Plus",
    members = {
        MasteringMonitorNits = {
            type = "integer",
            traits = {
                json_name = "masteringMonitorNits",
            },
        },
        TargetMonitorNits = {
            type = "integer",
            traits = {
                json_name = "targetMonitorNits",
            },
        },
    },
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

M.NoiseReducerFilterSettings = {
    type = "structure",
    id = "NoiseReducerFilterSettings",
    members = {
        Strength = {
            type = "integer",
            traits = {
                json_name = "strength",
            },
        },
    },
}

M.NoiseReducerSpatialFilterSettings = {
    type = "structure",
    id = "NoiseReducerSpatialFilterSettings",
    members = {
        PostFilterSharpenStrength = {
            type = "integer",
            traits = {
                json_name = "postFilterSharpenStrength",
            },
        },
        Speed = {
            type = "integer",
            traits = {
                json_name = "speed",
            },
        },
        Strength = {
            type = "integer",
            traits = {
                json_name = "strength",
            },
        },
    },
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

M.NoiseReducerTemporalFilterSettings = {
    type = "structure",
    id = "NoiseReducerTemporalFilterSettings",
    members = {
        AggressiveMode = {
            type = "integer",
            traits = {
                json_name = "aggressiveMode",
            },
        },
        PostTemporalSharpening = {
            type = "string",
            traits = {
                json_name = "postTemporalSharpening",
            },
        },
        PostTemporalSharpeningStrength = {
            type = "string",
            traits = {
                json_name = "postTemporalSharpeningStrength",
            },
        },
        Speed = {
            type = "integer",
            traits = {
                json_name = "speed",
            },
        },
        Strength = {
            type = "integer",
            traits = {
                json_name = "strength",
            },
        },
    },
}

M.NoiseReducer = {
    type = "structure",
    id = "NoiseReducer",
    members = {
        Filter = {
            type = "string",
            traits = {
                json_name = "filter",
            },
        },
        FilterSettings = setmetatable({ traits = {
            json_name = "filterSettings",
        } }, { __index = M.NoiseReducerFilterSettings }),
        SpatialFilterSettings = setmetatable({ traits = {
            json_name = "spatialFilterSettings",
        } }, { __index = M.NoiseReducerSpatialFilterSettings }),
        TemporalFilterSettings = setmetatable({ traits = {
            json_name = "temporalFilterSettings",
        } }, { __index = M.NoiseReducerTemporalFilterSettings }),
    },
}

M.WatermarkingStrength = {
    LIGHTEST = "LIGHTEST",
    LIGHTER = "LIGHTER",
    DEFAULT = "DEFAULT",
    STRONGER = "STRONGER",
    STRONGEST = "STRONGEST",
}

M.NexGuardFileMarkerSettings = {
    type = "structure",
    id = "NexGuardFileMarkerSettings",
    members = {
        License = {
            type = "string",
            traits = {
                json_name = "license",
            },
        },
        Payload = {
            type = "integer",
            traits = {
                json_name = "payload",
            },
        },
        Preset = {
            type = "string",
            traits = {
                json_name = "preset",
            },
        },
        Strength = {
            type = "string",
            traits = {
                json_name = "strength",
            },
        },
    },
}

M.PartnerWatermarking = {
    type = "structure",
    id = "PartnerWatermarking",
    members = {
        NexguardFileMarkerSettings = setmetatable({ traits = {
            json_name = "nexguardFileMarkerSettings",
        } }, { __index = M.NexGuardFileMarkerSettings }),
    },
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

M.TimecodeBurnin = {
    type = "structure",
    id = "TimecodeBurnin",
    members = {
        FontSize = {
            type = "integer",
            traits = {
                json_name = "fontSize",
            },
        },
        Position = {
            type = "string",
            traits = {
                json_name = "position",
            },
        },
        Prefix = {
            type = "string",
            traits = {
                json_name = "prefix",
            },
        },
    },
}

M.VideoPreprocessor = {
    type = "structure",
    id = "VideoPreprocessor",
    members = {
        ColorCorrector = setmetatable({ traits = {
            json_name = "colorCorrector",
        } }, { __index = M.ColorCorrector }),
        Deinterlacer = setmetatable({ traits = {
            json_name = "deinterlacer",
        } }, { __index = M.Deinterlacer }),
        DolbyVision = setmetatable({ traits = {
            json_name = "dolbyVision",
        } }, { __index = M.DolbyVision }),
        Hdr10Plus = setmetatable({ traits = {
            json_name = "hdr10Plus",
        } }, { __index = M.Hdr10Plus }),
        ImageInserter = setmetatable({ traits = {
            json_name = "imageInserter",
        } }, { __index = M.ImageInserter }),
        NoiseReducer = setmetatable({ traits = {
            json_name = "noiseReducer",
        } }, { __index = M.NoiseReducer }),
        PartnerWatermarking = setmetatable({ traits = {
            json_name = "partnerWatermarking",
        } }, { __index = M.PartnerWatermarking }),
        TimecodeBurnin = setmetatable({ traits = {
            json_name = "timecodeBurnin",
        } }, { __index = M.TimecodeBurnin }),
    },
}

M.VideoDescription = {
    type = "structure",
    id = "VideoDescription",
    members = {
        AfdSignaling = {
            type = "string",
            traits = {
                json_name = "afdSignaling",
            },
        },
        AntiAlias = {
            type = "string",
            traits = {
                json_name = "antiAlias",
            },
        },
        ChromaPositionMode = {
            type = "string",
            traits = {
                json_name = "chromaPositionMode",
            },
        },
        CodecSettings = setmetatable({ traits = {
            json_name = "codecSettings",
        } }, { __index = M.VideoCodecSettings }),
        ColorMetadata = {
            type = "string",
            traits = {
                json_name = "colorMetadata",
            },
        },
        Crop = setmetatable({ traits = {
            json_name = "crop",
        } }, { __index = M.Rectangle }),
        DropFrameTimecode = {
            type = "string",
            traits = {
                json_name = "dropFrameTimecode",
            },
        },
        FixedAfd = {
            type = "integer",
            traits = {
                json_name = "fixedAfd",
            },
        },
        Height = {
            type = "integer",
            traits = {
                json_name = "height",
            },
        },
        Position = setmetatable({ traits = {
            json_name = "position",
        } }, { __index = M.Rectangle }),
        RespondToAfd = {
            type = "string",
            traits = {
                json_name = "respondToAfd",
            },
        },
        ScalingBehavior = {
            type = "string",
            traits = {
                json_name = "scalingBehavior",
            },
        },
        Sharpness = {
            type = "integer",
            traits = {
                json_name = "sharpness",
            },
        },
        TimecodeInsertion = {
            type = "string",
            traits = {
                json_name = "timecodeInsertion",
            },
        },
        TimecodeTrack = {
            type = "string",
            traits = {
                json_name = "timecodeTrack",
            },
        },
        VideoPreprocessors = setmetatable({ traits = {
            json_name = "videoPreprocessors",
        } }, { __index = M.VideoPreprocessor }),
        Width = {
            type = "integer",
            traits = {
                json_name = "width",
            },
        },
    },
}

M.Output = {
    type = "structure",
    id = "Output",
    members = {
        AudioDescriptions = {
            type = "list",
            member = M.AudioDescription,
            traits = {
                json_name = "audioDescriptions",
            },
        },
        CaptionDescriptions = {
            type = "list",
            member = M.CaptionDescription,
            traits = {
                json_name = "captionDescriptions",
            },
        },
        ContainerSettings = setmetatable({ traits = {
            json_name = "containerSettings",
        } }, { __index = M.ContainerSettings }),
        Extension = {
            type = "string",
            traits = {
                json_name = "extension",
            },
        },
        NameModifier = {
            type = "string",
            traits = {
                json_name = "nameModifier",
            },
        },
        OutputSettings = setmetatable({ traits = {
            json_name = "outputSettings",
        } }, { __index = M.OutputSettings }),
        Preset = {
            type = "string",
            traits = {
                json_name = "preset",
            },
        },
        VideoDescription = setmetatable({ traits = {
            json_name = "videoDescription",
        } }, { __index = M.VideoDescription }),
    },
}

M.OutputGroup = {
    type = "structure",
    id = "OutputGroup",
    members = {
        AutomatedEncodingSettings = setmetatable({ traits = {
            json_name = "automatedEncodingSettings",
        } }, { __index = M.AutomatedEncodingSettings }),
        CustomName = {
            type = "string",
            traits = {
                json_name = "customName",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        OutputGroupSettings = setmetatable({ traits = {
            json_name = "outputGroupSettings",
        } }, { __index = M.OutputGroupSettings }),
        Outputs = {
            type = "list",
            member = M.Output,
            traits = {
                json_name = "outputs",
            },
        },
    },
}

M.TimecodeSource = {
    EMBEDDED = "EMBEDDED",
    ZEROBASED = "ZEROBASED",
    SPECIFIEDSTART = "SPECIFIEDSTART",
}

M.TimecodeConfig = {
    type = "structure",
    id = "TimecodeConfig",
    members = {
        Anchor = {
            type = "string",
            traits = {
                json_name = "anchor",
            },
        },
        Source = {
            type = "string",
            traits = {
                json_name = "source",
            },
        },
        Start = {
            type = "string",
            traits = {
                json_name = "start",
            },
        },
        TimestampOffset = {
            type = "string",
            traits = {
                json_name = "timestampOffset",
            },
        },
    },
}

M.TimedMetadataInsertion = {
    type = "structure",
    id = "TimedMetadataInsertion",
    members = {
        Id3Insertions = {
            type = "list",
            member = M.Id3Insertion,
            traits = {
                json_name = "id3Insertions",
            },
        },
    },
}

M.JobSettings = {
    type = "structure",
    id = "JobSettings",
    members = {
        AdAvailOffset = {
            type = "integer",
            traits = {
                json_name = "adAvailOffset",
            },
        },
        AvailBlanking = setmetatable({ traits = {
            json_name = "availBlanking",
        } }, { __index = M.AvailBlanking }),
        ColorConversion3DLUTSettings = {
            type = "list",
            member = M.ColorConversion3DLUTSetting,
            traits = {
                json_name = "colorConversion3DLUTSettings",
            },
        },
        Esam = setmetatable({ traits = {
            json_name = "esam",
        } }, { __index = M.EsamSettings }),
        ExtendedDataServices = setmetatable({ traits = {
            json_name = "extendedDataServices",
        } }, { __index = M.ExtendedDataServices }),
        FollowSource = {
            type = "integer",
            traits = {
                json_name = "followSource",
            },
        },
        Inputs = {
            type = "list",
            member = M.Input,
            traits = {
                json_name = "inputs",
            },
        },
        KantarWatermark = setmetatable({ traits = {
            json_name = "kantarWatermark",
        } }, { __index = M.KantarWatermarkSettings }),
        MotionImageInserter = setmetatable({ traits = {
            json_name = "motionImageInserter",
        } }, { __index = M.MotionImageInserter }),
        NielsenConfiguration = setmetatable({ traits = {
            json_name = "nielsenConfiguration",
        } }, { __index = M.NielsenConfiguration }),
        NielsenNonLinearWatermark = setmetatable({ traits = {
            json_name = "nielsenNonLinearWatermark",
        } }, { __index = M.NielsenNonLinearWatermarkSettings }),
        OutputGroups = {
            type = "list",
            member = M.OutputGroup,
            traits = {
                json_name = "outputGroups",
            },
        },
        TimecodeConfig = setmetatable({ traits = {
            json_name = "timecodeConfig",
        } }, { __index = M.TimecodeConfig }),
        TimedMetadataInsertion = setmetatable({ traits = {
            json_name = "timedMetadataInsertion",
        } }, { __index = M.TimedMetadataInsertion }),
    },
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

M.Timing = {
    type = "structure",
    id = "Timing",
    members = {
        FinishTime = {
            type = "timestamp",
            traits = {
                json_name = "finishTime",
                timestamp_format = "epoch-seconds",
            },
        },
        StartTime = {
            type = "timestamp",
            traits = {
                json_name = "startTime",
                timestamp_format = "epoch-seconds",
            },
        },
        SubmitTime = {
            type = "timestamp",
            traits = {
                json_name = "submitTime",
                timestamp_format = "epoch-seconds",
            },
        },
    },
}

M.WarningGroup = {
    type = "structure",
    id = "WarningGroup",
    members = {
        Code = {
            type = "integer",
            traits = {
                json_name = "code",
                required = true,
            },
        },
        Count = {
            type = "integer",
            traits = {
                json_name = "count",
                required = true,
            },
        },
    },
}

M.Job = {
    type = "structure",
    id = "Job",
    members = {
        AccelerationSettings = setmetatable({ traits = {
            json_name = "accelerationSettings",
        } }, { __index = M.AccelerationSettings }),
        AccelerationStatus = {
            type = "string",
            traits = {
                json_name = "accelerationStatus",
            },
        },
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        BillingTagsSource = {
            type = "string",
            traits = {
                json_name = "billingTagsSource",
            },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                json_name = "clientRequestToken",
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
                timestamp_format = "epoch-seconds",
            },
        },
        CurrentPhase = {
            type = "string",
            traits = {
                json_name = "currentPhase",
            },
        },
        ElementalInferenceConfiguration = setmetatable({ traits = {
            json_name = "elementalInferenceConfiguration",
        } }, { __index = M.ElementalInferenceConfiguration }),
        ErrorCode = {
            type = "integer",
            traits = {
                json_name = "errorCode",
            },
        },
        ErrorMessage = {
            type = "string",
            traits = {
                json_name = "errorMessage",
            },
        },
        HopDestinations = {
            type = "list",
            member = M.HopDestination,
            traits = {
                json_name = "hopDestinations",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        JobEngineVersionRequested = {
            type = "string",
            traits = {
                json_name = "jobEngineVersionRequested",
            },
        },
        JobEngineVersionUsed = {
            type = "string",
            traits = {
                json_name = "jobEngineVersionUsed",
            },
        },
        JobPercentComplete = {
            type = "integer",
            traits = {
                json_name = "jobPercentComplete",
            },
        },
        JobTemplate = {
            type = "string",
            traits = {
                json_name = "jobTemplate",
            },
        },
        LastShareDetails = {
            type = "string",
            traits = {
                json_name = "lastShareDetails",
            },
        },
        Messages = setmetatable({ traits = {
            json_name = "messages",
        } }, { __index = M.JobMessages }),
        OutputGroupDetails = {
            type = "list",
            member = M.OutputGroupDetail,
            traits = {
                json_name = "outputGroupDetails",
            },
        },
        Priority = {
            type = "integer",
            traits = {
                json_name = "priority",
            },
        },
        Queue = {
            type = "string",
            traits = {
                json_name = "queue",
            },
        },
        QueueTransitions = {
            type = "list",
            member = M.QueueTransition,
            traits = {
                json_name = "queueTransitions",
            },
        },
        RetryCount = {
            type = "integer",
            traits = {
                json_name = "retryCount",
            },
        },
        Role = {
            type = "string",
            traits = {
                json_name = "role",
                required = true,
            },
        },
        Settings = setmetatable({ traits = {
            json_name = "settings",
            required = true,
        } }, { __index = M.JobSettings }),
        ShareStatus = {
            type = "string",
            traits = {
                json_name = "shareStatus",
            },
        },
        SimulateReservedQueue = {
            type = "string",
            traits = {
                json_name = "simulateReservedQueue",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
        StatusUpdateInterval = {
            type = "string",
            traits = {
                json_name = "statusUpdateInterval",
            },
        },
        Timing = setmetatable({ traits = {
            json_name = "timing",
        } }, { __index = M.Timing }),
        UserMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "userMetadata",
            },
        },
        Warnings = {
            type = "list",
            member = M.WarningGroup,
            traits = {
                json_name = "warnings",
            },
        },
    },
}

M.JobEngineVersion = {
    type = "structure",
    id = "JobEngineVersion",
    members = {
        ExpirationDate = {
            type = "timestamp",
            traits = {
                json_name = "expirationDate",
                timestamp_format = "epoch-seconds",
            },
        },
        Version = {
            type = "string",
            traits = {
                json_name = "version",
            },
        },
    },
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

M.JobsQueryFilter = {
    type = "structure",
    id = "JobsQueryFilter",
    members = {
        Key = {
            type = "string",
            traits = {
                json_name = "key",
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "values",
            },
        },
    },
}

M.JobTemplateSettings = {
    type = "structure",
    id = "JobTemplateSettings",
    members = {
        AdAvailOffset = {
            type = "integer",
            traits = {
                json_name = "adAvailOffset",
            },
        },
        AvailBlanking = setmetatable({ traits = {
            json_name = "availBlanking",
        } }, { __index = M.AvailBlanking }),
        ColorConversion3DLUTSettings = {
            type = "list",
            member = M.ColorConversion3DLUTSetting,
            traits = {
                json_name = "colorConversion3DLUTSettings",
            },
        },
        Esam = setmetatable({ traits = {
            json_name = "esam",
        } }, { __index = M.EsamSettings }),
        ExtendedDataServices = setmetatable({ traits = {
            json_name = "extendedDataServices",
        } }, { __index = M.ExtendedDataServices }),
        FollowSource = {
            type = "integer",
            traits = {
                json_name = "followSource",
            },
        },
        Inputs = {
            type = "list",
            member = M.InputTemplate,
            traits = {
                json_name = "inputs",
            },
        },
        KantarWatermark = setmetatable({ traits = {
            json_name = "kantarWatermark",
        } }, { __index = M.KantarWatermarkSettings }),
        MotionImageInserter = setmetatable({ traits = {
            json_name = "motionImageInserter",
        } }, { __index = M.MotionImageInserter }),
        NielsenConfiguration = setmetatable({ traits = {
            json_name = "nielsenConfiguration",
        } }, { __index = M.NielsenConfiguration }),
        NielsenNonLinearWatermark = setmetatable({ traits = {
            json_name = "nielsenNonLinearWatermark",
        } }, { __index = M.NielsenNonLinearWatermarkSettings }),
        OutputGroups = {
            type = "list",
            member = M.OutputGroup,
            traits = {
                json_name = "outputGroups",
            },
        },
        TimecodeConfig = setmetatable({ traits = {
            json_name = "timecodeConfig",
        } }, { __index = M.TimecodeConfig }),
        TimedMetadataInsertion = setmetatable({ traits = {
            json_name = "timedMetadataInsertion",
        } }, { __index = M.TimedMetadataInsertion }),
    },
}

M.Type = {
    SYSTEM = "SYSTEM",
    CUSTOM = "CUSTOM",
}

M.JobTemplate = {
    type = "structure",
    id = "JobTemplate",
    members = {
        AccelerationSettings = setmetatable({ traits = {
            json_name = "accelerationSettings",
        } }, { __index = M.AccelerationSettings }),
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Category = {
            type = "string",
            traits = {
                json_name = "category",
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
                timestamp_format = "epoch-seconds",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        HopDestinations = {
            type = "list",
            member = M.HopDestination,
            traits = {
                json_name = "hopDestinations",
            },
        },
        LastUpdated = {
            type = "timestamp",
            traits = {
                json_name = "lastUpdated",
                timestamp_format = "epoch-seconds",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Priority = {
            type = "integer",
            traits = {
                json_name = "priority",
            },
        },
        Queue = {
            type = "string",
            traits = {
                json_name = "queue",
            },
        },
        Settings = setmetatable({ traits = {
            json_name = "settings",
            required = true,
        } }, { __index = M.JobTemplateSettings }),
        StatusUpdateInterval = {
            type = "string",
            traits = {
                json_name = "statusUpdateInterval",
            },
        },
        Type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
    },
}

M.PresetSettings = {
    type = "structure",
    id = "PresetSettings",
    members = {
        AudioDescriptions = {
            type = "list",
            member = M.AudioDescription,
            traits = {
                json_name = "audioDescriptions",
            },
        },
        CaptionDescriptions = {
            type = "list",
            member = M.CaptionDescriptionPreset,
            traits = {
                json_name = "captionDescriptions",
            },
        },
        ContainerSettings = setmetatable({ traits = {
            json_name = "containerSettings",
        } }, { __index = M.ContainerSettings }),
        VideoDescription = setmetatable({ traits = {
            json_name = "videoDescription",
        } }, { __index = M.VideoDescription }),
    },
}

M.Preset = {
    type = "structure",
    id = "Preset",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Category = {
            type = "string",
            traits = {
                json_name = "category",
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
                timestamp_format = "epoch-seconds",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        LastUpdated = {
            type = "timestamp",
            traits = {
                json_name = "lastUpdated",
                timestamp_format = "epoch-seconds",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Settings = setmetatable({ traits = {
            json_name = "settings",
            required = true,
        } }, { __index = M.PresetSettings }),
        Type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
    },
}

M.ProbeInputFile = {
    type = "structure",
    id = "ProbeInputFile",
    members = {
        FileUrl = {
            type = "string",
            traits = {
                json_name = "fileUrl",
            },
        },
    },
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

M.FrameRate = {
    type = "structure",
    id = "FrameRate",
    members = {
        Denominator = {
            type = "integer",
            traits = {
                json_name = "denominator",
            },
        },
        Numerator = {
            type = "integer",
            traits = {
                json_name = "numerator",
            },
        },
    },
}

M.AudioProperties = {
    type = "structure",
    id = "AudioProperties",
    members = {
        BitDepth = {
            type = "integer",
            traits = {
                json_name = "bitDepth",
            },
        },
        BitRate = {
            type = "long",
            traits = {
                json_name = "bitRate",
            },
        },
        Channels = {
            type = "integer",
            traits = {
                json_name = "channels",
            },
        },
        FrameRate = setmetatable({ traits = {
            json_name = "frameRate",
        } }, { __index = M.FrameRate }),
        LanguageCode = {
            type = "string",
            traits = {
                json_name = "languageCode",
            },
        },
        SampleRate = {
            type = "integer",
            traits = {
                json_name = "sampleRate",
            },
        },
    },
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

M.DataProperties = {
    type = "structure",
    id = "DataProperties",
    members = {
        LanguageCode = {
            type = "string",
            traits = {
                json_name = "languageCode",
            },
        },
    },
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

M.CodecMetadata = {
    type = "structure",
    id = "CodecMetadata",
    members = {
        BitDepth = {
            type = "integer",
            traits = {
                json_name = "bitDepth",
            },
        },
        ChromaSubsampling = {
            type = "string",
            traits = {
                json_name = "chromaSubsampling",
            },
        },
        CodedFrameRate = setmetatable({ traits = {
            json_name = "codedFrameRate",
        } }, { __index = M.FrameRate }),
        ColorPrimaries = {
            type = "string",
            traits = {
                json_name = "colorPrimaries",
            },
        },
        Height = {
            type = "integer",
            traits = {
                json_name = "height",
            },
        },
        Level = {
            type = "string",
            traits = {
                json_name = "level",
            },
        },
        MatrixCoefficients = {
            type = "string",
            traits = {
                json_name = "matrixCoefficients",
            },
        },
        Profile = {
            type = "string",
            traits = {
                json_name = "profile",
            },
        },
        ScanType = {
            type = "string",
            traits = {
                json_name = "scanType",
            },
        },
        TransferCharacteristics = {
            type = "string",
            traits = {
                json_name = "transferCharacteristics",
            },
        },
        Width = {
            type = "integer",
            traits = {
                json_name = "width",
            },
        },
    },
}

M.VideoProperties = {
    type = "structure",
    id = "VideoProperties",
    members = {
        BitDepth = {
            type = "integer",
            traits = {
                json_name = "bitDepth",
            },
        },
        BitRate = {
            type = "long",
            traits = {
                json_name = "bitRate",
            },
        },
        CodecMetadata = setmetatable({ traits = {
            json_name = "codecMetadata",
        } }, { __index = M.CodecMetadata }),
        ColorPrimaries = {
            type = "string",
            traits = {
                json_name = "colorPrimaries",
            },
        },
        FrameRate = setmetatable({ traits = {
            json_name = "frameRate",
        } }, { __index = M.FrameRate }),
        Height = {
            type = "integer",
            traits = {
                json_name = "height",
            },
        },
        MatrixCoefficients = {
            type = "string",
            traits = {
                json_name = "matrixCoefficients",
            },
        },
        TransferCharacteristics = {
            type = "string",
            traits = {
                json_name = "transferCharacteristics",
            },
        },
        Width = {
            type = "integer",
            traits = {
                json_name = "width",
            },
        },
    },
}

M.Track = {
    type = "structure",
    id = "Track",
    members = {
        AudioProperties = setmetatable({ traits = {
            json_name = "audioProperties",
        } }, { __index = M.AudioProperties }),
        Codec = {
            type = "string",
            traits = {
                json_name = "codec",
            },
        },
        DataProperties = setmetatable({ traits = {
            json_name = "dataProperties",
        } }, { __index = M.DataProperties }),
        Duration = {
            type = "double",
            traits = {
                json_name = "duration",
            },
        },
        Index = {
            type = "integer",
            traits = {
                json_name = "index",
            },
        },
        TrackType = {
            type = "string",
            traits = {
                json_name = "trackType",
            },
        },
        VideoProperties = setmetatable({ traits = {
            json_name = "videoProperties",
        } }, { __index = M.VideoProperties }),
    },
}

M.Container = {
    type = "structure",
    id = "Container",
    members = {
        Duration = {
            type = "double",
            traits = {
                json_name = "duration",
            },
        },
        Format = {
            type = "string",
            traits = {
                json_name = "format",
            },
        },
        StartTimecode = {
            type = "string",
            traits = {
                json_name = "startTimecode",
            },
        },
        Tracks = {
            type = "list",
            member = M.Track,
            traits = {
                json_name = "tracks",
            },
        },
    },
}

M.Metadata = {
    type = "structure",
    id = "Metadata",
    members = {
        ETag = {
            type = "string",
            traits = {
                json_name = "eTag",
            },
        },
        FileSize = {
            type = "long",
            traits = {
                json_name = "fileSize",
            },
        },
        LastModified = {
            type = "timestamp",
            traits = {
                json_name = "lastModified",
                timestamp_format = "epoch-seconds",
            },
        },
        MimeType = {
            type = "string",
            traits = {
                json_name = "mimeType",
            },
        },
    },
}

M.TrackMapping = {
    type = "structure",
    id = "TrackMapping",
    members = {
        AudioTrackIndexes = {
            type = "list",
            member = { type = "integer" },
            traits = {
                json_name = "audioTrackIndexes",
            },
        },
        DataTrackIndexes = {
            type = "list",
            member = { type = "integer" },
            traits = {
                json_name = "dataTrackIndexes",
            },
        },
        VideoTrackIndexes = {
            type = "list",
            member = { type = "integer" },
            traits = {
                json_name = "videoTrackIndexes",
            },
        },
    },
}

M.ProbeResult = {
    type = "structure",
    id = "ProbeResult",
    members = {
        Container = setmetatable({ traits = {
            json_name = "container",
        } }, { __index = M.Container }),
        Metadata = setmetatable({ traits = {
            json_name = "metadata",
        } }, { __index = M.Metadata }),
        TrackMappings = {
            type = "list",
            member = M.TrackMapping,
            traits = {
                json_name = "trackMappings",
            },
        },
    },
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

M.ReservationPlan = {
    type = "structure",
    id = "ReservationPlan",
    members = {
        Commitment = {
            type = "string",
            traits = {
                json_name = "commitment",
            },
        },
        ExpiresAt = {
            type = "timestamp",
            traits = {
                json_name = "expiresAt",
                timestamp_format = "epoch-seconds",
            },
        },
        PurchasedAt = {
            type = "timestamp",
            traits = {
                json_name = "purchasedAt",
                timestamp_format = "epoch-seconds",
            },
        },
        RenewalType = {
            type = "string",
            traits = {
                json_name = "renewalType",
            },
        },
        ReservedSlots = {
            type = "integer",
            traits = {
                json_name = "reservedSlots",
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

M.ServiceOverride = {
    type = "structure",
    id = "ServiceOverride",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        OverrideValue = {
            type = "string",
            traits = {
                json_name = "overrideValue",
            },
        },
        Value = {
            type = "string",
            traits = {
                json_name = "value",
            },
        },
    },
}

M.QueueStatus = {
    ACTIVE = "ACTIVE",
    PAUSED = "PAUSED",
}

M.Queue = {
    type = "structure",
    id = "Queue",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        ConcurrentJobs = {
            type = "integer",
            traits = {
                json_name = "concurrentJobs",
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
                timestamp_format = "epoch-seconds",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        LastUpdated = {
            type = "timestamp",
            traits = {
                json_name = "lastUpdated",
                timestamp_format = "epoch-seconds",
            },
        },
        MaximumConcurrentFeeds = {
            type = "integer",
            traits = {
                json_name = "maximumConcurrentFeeds",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        PricingPlan = {
            type = "string",
            traits = {
                json_name = "pricingPlan",
            },
        },
        ProgressingJobsCount = {
            type = "integer",
            traits = {
                json_name = "progressingJobsCount",
            },
        },
        ReservationPlan = setmetatable({ traits = {
            json_name = "reservationPlan",
        } }, { __index = M.ReservationPlan }),
        ServiceOverrides = {
            type = "list",
            member = M.ServiceOverride,
            traits = {
                json_name = "serviceOverrides",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
        SubmittedJobsCount = {
            type = "integer",
            traits = {
                json_name = "submittedJobsCount",
            },
        },
        Type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
    },
}

M.AssociateCertificateInput = {
    type = "structure",
    id = "AssociateCertificateInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
                required = true,
            },
        },
    },
}

M.AssociateCertificateOutput = {
    type = "structure",
    id = "AssociateCertificateOutput",
}

M.BadRequestException = {
    type = "structure",
    id = "BadRequestException",
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

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
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

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
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

M.CancelJobInput = {
    type = "structure",
    id = "CancelJobInput",
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

M.CancelJobOutput = {
    type = "structure",
    id = "CancelJobOutput",
}

M.CreateJobInput = {
    type = "structure",
    id = "CreateJobInput",
    members = {
        AccelerationSettings = setmetatable({ traits = {
            json_name = "accelerationSettings",
        } }, { __index = M.AccelerationSettings }),
        BillingTagsSource = {
            type = "string",
            traits = {
                json_name = "billingTagsSource",
            },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                json_name = "clientRequestToken",
            },
        },
        HopDestinations = {
            type = "list",
            member = M.HopDestination,
            traits = {
                json_name = "hopDestinations",
            },
        },
        JobEngineVersion = {
            type = "string",
            traits = {
                json_name = "jobEngineVersion",
            },
        },
        JobTemplate = {
            type = "string",
            traits = {
                json_name = "jobTemplate",
            },
        },
        Priority = {
            type = "integer",
            traits = {
                json_name = "priority",
            },
        },
        Queue = {
            type = "string",
            traits = {
                json_name = "queue",
            },
        },
        Role = {
            type = "string",
            traits = {
                json_name = "role",
                required = true,
            },
        },
        Settings = setmetatable({ traits = {
            json_name = "settings",
            required = true,
        } }, { __index = M.JobSettings }),
        SimulateReservedQueue = {
            type = "string",
            traits = {
                json_name = "simulateReservedQueue",
            },
        },
        StatusUpdateInterval = {
            type = "string",
            traits = {
                json_name = "statusUpdateInterval",
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
        UserMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "userMetadata",
            },
        },
    },
}

M.CreateJobOutput = {
    type = "structure",
    id = "CreateJobOutput",
    members = {
        Job = setmetatable({ traits = {
            json_name = "job",
        } }, { __index = M.Job }),
    },
}

M.CreateJobTemplateInput = {
    type = "structure",
    id = "CreateJobTemplateInput",
    members = {
        AccelerationSettings = setmetatable({ traits = {
            json_name = "accelerationSettings",
        } }, { __index = M.AccelerationSettings }),
        Category = {
            type = "string",
            traits = {
                json_name = "category",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        HopDestinations = {
            type = "list",
            member = M.HopDestination,
            traits = {
                json_name = "hopDestinations",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Priority = {
            type = "integer",
            traits = {
                json_name = "priority",
            },
        },
        Queue = {
            type = "string",
            traits = {
                json_name = "queue",
            },
        },
        Settings = setmetatable({ traits = {
            json_name = "settings",
            required = true,
        } }, { __index = M.JobTemplateSettings }),
        StatusUpdateInterval = {
            type = "string",
            traits = {
                json_name = "statusUpdateInterval",
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

M.CreateJobTemplateOutput = {
    type = "structure",
    id = "CreateJobTemplateOutput",
    members = {
        JobTemplate = setmetatable({ traits = {
            json_name = "jobTemplate",
        } }, { __index = M.JobTemplate }),
    },
}

M.CreatePresetInput = {
    type = "structure",
    id = "CreatePresetInput",
    members = {
        Category = {
            type = "string",
            traits = {
                json_name = "category",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Settings = setmetatable({ traits = {
            json_name = "settings",
            required = true,
        } }, { __index = M.PresetSettings }),
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

M.CreatePresetOutput = {
    type = "structure",
    id = "CreatePresetOutput",
    members = {
        Preset = setmetatable({ traits = {
            json_name = "preset",
        } }, { __index = M.Preset }),
    },
}

M.ReservationPlanSettings = {
    type = "structure",
    id = "ReservationPlanSettings",
    members = {
        Commitment = {
            type = "string",
            traits = {
                json_name = "commitment",
                required = true,
            },
        },
        RenewalType = {
            type = "string",
            traits = {
                json_name = "renewalType",
                required = true,
            },
        },
        ReservedSlots = {
            type = "integer",
            traits = {
                json_name = "reservedSlots",
                required = true,
            },
        },
    },
}

M.CreateQueueInput = {
    type = "structure",
    id = "CreateQueueInput",
    members = {
        ConcurrentJobs = {
            type = "integer",
            traits = {
                json_name = "concurrentJobs",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        MaximumConcurrentFeeds = {
            type = "integer",
            traits = {
                json_name = "maximumConcurrentFeeds",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        PricingPlan = {
            type = "string",
            traits = {
                json_name = "pricingPlan",
            },
        },
        ReservationPlanSettings = setmetatable({ traits = {
            json_name = "reservationPlanSettings",
        } }, { __index = M.ReservationPlanSettings }),
        Status = {
            type = "string",
            traits = {
                json_name = "status",
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

M.CreateQueueOutput = {
    type = "structure",
    id = "CreateQueueOutput",
    members = {
        Queue = setmetatable({ traits = {
            json_name = "queue",
        } }, { __index = M.Queue }),
    },
}

M.CreateResourceShareInput = {
    type = "structure",
    id = "CreateResourceShareInput",
    members = {
        JobId = {
            type = "string",
            traits = {
                json_name = "jobId",
                required = true,
            },
        },
        SupportCaseId = {
            type = "string",
            traits = {
                json_name = "supportCaseId",
                required = true,
            },
        },
    },
}

M.CreateResourceShareOutput = {
    type = "structure",
    id = "CreateResourceShareOutput",
}

M.DeleteJobTemplateInput = {
    type = "structure",
    id = "DeleteJobTemplateInput",
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

M.DeleteJobTemplateOutput = {
    type = "structure",
    id = "DeleteJobTemplateOutput",
}

M.DeletePolicyInput = {
    type = "structure",
    id = "DeletePolicyInput",
}

M.DeletePolicyOutput = {
    type = "structure",
    id = "DeletePolicyOutput",
}

M.DeletePresetInput = {
    type = "structure",
    id = "DeletePresetInput",
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

M.DeletePresetOutput = {
    type = "structure",
    id = "DeletePresetOutput",
}

M.DeleteQueueInput = {
    type = "structure",
    id = "DeleteQueueInput",
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

M.DeleteQueueOutput = {
    type = "structure",
    id = "DeleteQueueOutput",
}

M.DescribeEndpointsMode = {
    DEFAULT = "DEFAULT",
    GET_ONLY = "GET_ONLY",
}

M.DescribeEndpointsInput = {
    type = "structure",
    id = "DescribeEndpointsInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                json_name = "maxResults",
            },
        },
        Mode = {
            type = "string",
            traits = {
                json_name = "mode",
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

M.DescribeEndpointsOutput = {
    type = "structure",
    id = "DescribeEndpointsOutput",
    members = {
        Endpoints = {
            type = "list",
            member = M.Endpoint,
            traits = {
                json_name = "endpoints",
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

M.DisassociateCertificateInput = {
    type = "structure",
    id = "DisassociateCertificateInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateCertificateOutput = {
    type = "structure",
    id = "DisassociateCertificateOutput",
}

M.GetJobInput = {
    type = "structure",
    id = "GetJobInput",
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

M.GetJobOutput = {
    type = "structure",
    id = "GetJobOutput",
    members = {
        Job = setmetatable({ traits = {
            json_name = "job",
        } }, { __index = M.Job }),
    },
}

M.GetJobsQueryResultsInput = {
    type = "structure",
    id = "GetJobsQueryResultsInput",
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

M.JobsQueryStatus = {
    SUBMITTED = "SUBMITTED",
    PROGRESSING = "PROGRESSING",
    COMPLETE = "COMPLETE",
    ERROR = "ERROR",
}

M.GetJobsQueryResultsOutput = {
    type = "structure",
    id = "GetJobsQueryResultsOutput",
    members = {
        Jobs = {
            type = "list",
            member = M.Job,
            traits = {
                json_name = "jobs",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
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

M.GetJobTemplateInput = {
    type = "structure",
    id = "GetJobTemplateInput",
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

M.GetJobTemplateOutput = {
    type = "structure",
    id = "GetJobTemplateOutput",
    members = {
        JobTemplate = setmetatable({ traits = {
            json_name = "jobTemplate",
        } }, { __index = M.JobTemplate }),
    },
}

M.GetPolicyInput = {
    type = "structure",
    id = "GetPolicyInput",
}

M.InputPolicy = {
    ALLOWED = "ALLOWED",
    DISALLOWED = "DISALLOWED",
}

M.Policy = {
    type = "structure",
    id = "Policy",
    members = {
        HttpInputs = {
            type = "string",
            traits = {
                json_name = "httpInputs",
            },
        },
        HttpsInputs = {
            type = "string",
            traits = {
                json_name = "httpsInputs",
            },
        },
        S3Inputs = {
            type = "string",
            traits = {
                json_name = "s3Inputs",
            },
        },
    },
}

M.GetPolicyOutput = {
    type = "structure",
    id = "GetPolicyOutput",
    members = {
        Policy = setmetatable({ traits = {
            json_name = "policy",
        } }, { __index = M.Policy }),
    },
}

M.GetPresetInput = {
    type = "structure",
    id = "GetPresetInput",
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

M.GetPresetOutput = {
    type = "structure",
    id = "GetPresetOutput",
    members = {
        Preset = setmetatable({ traits = {
            json_name = "preset",
        } }, { __index = M.Preset }),
    },
}

M.GetQueueInput = {
    type = "structure",
    id = "GetQueueInput",
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

M.GetQueueOutput = {
    type = "structure",
    id = "GetQueueOutput",
    members = {
        Queue = setmetatable({ traits = {
            json_name = "queue",
        } }, { __index = M.Queue }),
    },
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

M.ListJobsInput = {
    type = "structure",
    id = "ListJobsInput",
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
        Order = {
            type = "string",
            traits = {
                http_query = "order",
            },
        },
        Queue = {
            type = "string",
            traits = {
                http_query = "queue",
            },
        },
        Status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
    },
}

M.ListJobsOutput = {
    type = "structure",
    id = "ListJobsOutput",
    members = {
        Jobs = {
            type = "list",
            member = M.Job,
            traits = {
                json_name = "jobs",
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

M.ListJobTemplatesInput = {
    type = "structure",
    id = "ListJobTemplatesInput",
    members = {
        Category = {
            type = "string",
            traits = {
                http_query = "category",
            },
        },
        ListBy = {
            type = "string",
            traits = {
                http_query = "listBy",
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
        Order = {
            type = "string",
            traits = {
                http_query = "order",
            },
        },
    },
}

M.ListJobTemplatesOutput = {
    type = "structure",
    id = "ListJobTemplatesOutput",
    members = {
        JobTemplates = {
            type = "list",
            member = M.JobTemplate,
            traits = {
                json_name = "jobTemplates",
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

M.PresetListBy = {
    NAME = "NAME",
    CREATION_DATE = "CREATION_DATE",
    SYSTEM = "SYSTEM",
}

M.ListPresetsInput = {
    type = "structure",
    id = "ListPresetsInput",
    members = {
        Category = {
            type = "string",
            traits = {
                http_query = "category",
            },
        },
        ListBy = {
            type = "string",
            traits = {
                http_query = "listBy",
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
        Order = {
            type = "string",
            traits = {
                http_query = "order",
            },
        },
    },
}

M.ListPresetsOutput = {
    type = "structure",
    id = "ListPresetsOutput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        Presets = {
            type = "list",
            member = M.Preset,
            traits = {
                json_name = "presets",
            },
        },
    },
}

M.QueueListBy = {
    NAME = "NAME",
    CREATION_DATE = "CREATION_DATE",
}

M.ListQueuesInput = {
    type = "structure",
    id = "ListQueuesInput",
    members = {
        ListBy = {
            type = "string",
            traits = {
                http_query = "listBy",
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
        Order = {
            type = "string",
            traits = {
                http_query = "order",
            },
        },
    },
}

M.ListQueuesOutput = {
    type = "structure",
    id = "ListQueuesOutput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        Queues = {
            type = "list",
            member = M.Queue,
            traits = {
                json_name = "queues",
            },
        },
        TotalConcurrentJobs = {
            type = "integer",
            traits = {
                json_name = "totalConcurrentJobs",
            },
        },
        UnallocatedConcurrentJobs = {
            type = "integer",
            traits = {
                json_name = "unallocatedConcurrentJobs",
            },
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ResourceTags = {
    type = "structure",
    id = "ResourceTags",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
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

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        ResourceTags = setmetatable({ traits = {
            json_name = "resourceTags",
        } }, { __index = M.ResourceTags }),
    },
}

M.ListVersionsInput = {
    type = "structure",
    id = "ListVersionsInput",
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

M.ListVersionsOutput = {
    type = "structure",
    id = "ListVersionsOutput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        Versions = {
            type = "list",
            member = M.JobEngineVersion,
            traits = {
                json_name = "versions",
            },
        },
    },
}

M.ProbeInput = {
    type = "structure",
    id = "ProbeInput",
    members = {
        InputFiles = {
            type = "list",
            member = M.ProbeInputFile,
            traits = {
                json_name = "inputFiles",
            },
        },
    },
}

M.ProbeOutput = {
    type = "structure",
    id = "ProbeOutput",
    members = {
        ProbeResults = {
            type = "list",
            member = M.ProbeResult,
            traits = {
                json_name = "probeResults",
            },
        },
    },
}

M.PutPolicyInput = {
    type = "structure",
    id = "PutPolicyInput",
    members = {
        Policy = setmetatable({ traits = {
            json_name = "policy",
            required = true,
        } }, { __index = M.Policy }),
    },
}

M.PutPolicyOutput = {
    type = "structure",
    id = "PutPolicyOutput",
    members = {
        Policy = setmetatable({ traits = {
            json_name = "policy",
        } }, { __index = M.Policy }),
    },
}

M.SearchJobsInput = {
    type = "structure",
    id = "SearchJobsInput",
    members = {
        InputFile = {
            type = "string",
            traits = {
                http_query = "inputFile",
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
        Order = {
            type = "string",
            traits = {
                http_query = "order",
            },
        },
        Queue = {
            type = "string",
            traits = {
                http_query = "queue",
            },
        },
        Status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
    },
}

M.SearchJobsOutput = {
    type = "structure",
    id = "SearchJobsOutput",
    members = {
        Jobs = {
            type = "list",
            member = M.Job,
            traits = {
                json_name = "jobs",
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

M.StartJobsQueryInput = {
    type = "structure",
    id = "StartJobsQueryInput",
    members = {
        FilterList = {
            type = "list",
            member = M.JobsQueryFilter,
            traits = {
                json_name = "filterList",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                json_name = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        Order = {
            type = "string",
            traits = {
                json_name = "order",
            },
        },
    },
}

M.StartJobsQueryOutput = {
    type = "structure",
    id = "StartJobsQueryOutput",
    members = {
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
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
        Arn = {
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
                json_name = "tagKeys",
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.UpdateJobTemplateInput = {
    type = "structure",
    id = "UpdateJobTemplateInput",
    members = {
        AccelerationSettings = setmetatable({ traits = {
            json_name = "accelerationSettings",
        } }, { __index = M.AccelerationSettings }),
        Category = {
            type = "string",
            traits = {
                json_name = "category",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        HopDestinations = {
            type = "list",
            member = M.HopDestination,
            traits = {
                json_name = "hopDestinations",
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Priority = {
            type = "integer",
            traits = {
                json_name = "priority",
            },
        },
        Queue = {
            type = "string",
            traits = {
                json_name = "queue",
            },
        },
        Settings = setmetatable({ traits = {
            json_name = "settings",
        } }, { __index = M.JobTemplateSettings }),
        StatusUpdateInterval = {
            type = "string",
            traits = {
                json_name = "statusUpdateInterval",
            },
        },
    },
}

M.UpdateJobTemplateOutput = {
    type = "structure",
    id = "UpdateJobTemplateOutput",
    members = {
        JobTemplate = setmetatable({ traits = {
            json_name = "jobTemplate",
        } }, { __index = M.JobTemplate }),
    },
}

M.UpdatePresetInput = {
    type = "structure",
    id = "UpdatePresetInput",
    members = {
        Category = {
            type = "string",
            traits = {
                json_name = "category",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Settings = setmetatable({ traits = {
            json_name = "settings",
        } }, { __index = M.PresetSettings }),
    },
}

M.UpdatePresetOutput = {
    type = "structure",
    id = "UpdatePresetOutput",
    members = {
        Preset = setmetatable({ traits = {
            json_name = "preset",
        } }, { __index = M.Preset }),
    },
}

M.UpdateQueueInput = {
    type = "structure",
    id = "UpdateQueueInput",
    members = {
        ConcurrentJobs = {
            type = "integer",
            traits = {
                json_name = "concurrentJobs",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        MaximumConcurrentFeeds = {
            type = "integer",
            traits = {
                json_name = "maximumConcurrentFeeds",
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ReservationPlanSettings = setmetatable({ traits = {
            json_name = "reservationPlanSettings",
        } }, { __index = M.ReservationPlanSettings }),
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.UpdateQueueOutput = {
    type = "structure",
    id = "UpdateQueueOutput",
    members = {
        Queue = setmetatable({ traits = {
            json_name = "queue",
        } }, { __index = M.Queue }),
    },
}

return M
