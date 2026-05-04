local M = {}

M.OutputLocationRef = {
    type = "structure",
    members = {
        DestinationRefId = {
            type = "string",
            traits = {
                json_name = "destinationRefId",
            },
        },
    },
}

M.AdditionalDestinations = {
    type = "structure",
    members = {
        Destination = {
            type = "structure",
            traits = {
                json_name = "destination",
                required = true,
            },
        },
    },
}

M.InputChannelLevel = {
    type = "structure",
    members = {
        Gain = {
            type = "number",
            traits = {
                json_name = "gain",
                required = true,
            },
        },
        InputChannel = {
            type = "number",
            traits = {
                json_name = "inputChannel",
                required = true,
            },
        },
    },
}

M.AudioChannelMapping = {
    type = "structure",
    members = {
        InputChannelLevels = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "inputChannelLevels",
                required = true,
            },
        },
        OutputChannel = {
            type = "number",
            traits = {
                json_name = "outputChannel",
                required = true,
            },
        },
    },
}

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

M.AudioNormalizationSettings = {
    type = "structure",
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
        TargetLkfs = {
            type = "number",
            traits = {
                json_name = "targetLkfs",
            },
        },
    },
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

M.NielsenCBET = {
    type = "structure",
    members = {
        CbetCheckDigitString = {
            type = "string",
            traits = {
                json_name = "cbetCheckDigitString",
                required = true,
            },
        },
        CbetStepaside = {
            type = "string",
            traits = {
                json_name = "cbetStepaside",
                required = true,
            },
        },
        Csid = {
            type = "string",
            traits = {
                json_name = "csid",
                required = true,
            },
        },
    },
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

M.NielsenNaesIiNw = {
    type = "structure",
    members = {
        CheckDigitString = {
            type = "string",
            traits = {
                json_name = "checkDigitString",
                required = true,
            },
        },
        Sid = {
            type = "number",
            traits = {
                json_name = "sid",
                required = true,
            },
        },
        Timezone = {
            type = "string",
            traits = {
                json_name = "timezone",
            },
        },
    },
}

M.NielsenWatermarksSettings = {
    type = "structure",
    members = {
        NielsenCbetSettings = {
            type = "structure",
            traits = {
                json_name = "nielsenCbetSettings",
            },
        },
        NielsenDistributionType = {
            type = "string",
            traits = {
                json_name = "nielsenDistributionType",
            },
        },
        NielsenNaesIiNwSettings = {
            type = "structure",
            traits = {
                json_name = "nielsenNaesIiNwSettings",
            },
        },
    },
}

M.AudioWatermarkSettings = {
    type = "structure",
    members = {
        NielsenWatermarksSettings = {
            type = "structure",
            traits = {
                json_name = "nielsenWatermarksSettings",
            },
        },
    },
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

M.AacSettings = {
    type = "structure",
    members = {
        Bitrate = {
            type = "number",
            traits = {
                json_name = "bitrate",
            },
        },
        CodingMode = {
            type = "string",
            traits = {
                json_name = "codingMode",
            },
        },
        InputType = {
            type = "string",
            traits = {
                json_name = "inputType",
            },
        },
        Profile = {
            type = "string",
            traits = {
                json_name = "profile",
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
            type = "number",
            traits = {
                json_name = "sampleRate",
            },
        },
        Spec = {
            type = "string",
            traits = {
                json_name = "spec",
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

M.Ac3Settings = {
    type = "structure",
    members = {
        Bitrate = {
            type = "number",
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
            type = "number",
            traits = {
                json_name = "dialnorm",
            },
        },
        DrcProfile = {
            type = "string",
            traits = {
                json_name = "drcProfile",
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
        AttenuationControl = {
            type = "string",
            traits = {
                json_name = "attenuationControl",
            },
        },
    },
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

M.Eac3AtmosSettings = {
    type = "structure",
    members = {
        Bitrate = {
            type = "number",
            traits = {
                json_name = "bitrate",
            },
        },
        CodingMode = {
            type = "string",
            traits = {
                json_name = "codingMode",
            },
        },
        Dialnorm = {
            type = "number",
            traits = {
                json_name = "dialnorm",
            },
        },
        DrcLine = {
            type = "string",
            traits = {
                json_name = "drcLine",
            },
        },
        DrcRf = {
            type = "string",
            traits = {
                json_name = "drcRf",
            },
        },
        HeightTrim = {
            type = "number",
            traits = {
                json_name = "heightTrim",
            },
        },
        SurroundTrim = {
            type = "number",
            traits = {
                json_name = "surroundTrim",
            },
        },
    },
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

M.Eac3Settings = {
    type = "structure",
    members = {
        AttenuationControl = {
            type = "string",
            traits = {
                json_name = "attenuationControl",
            },
        },
        Bitrate = {
            type = "number",
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
            type = "number",
            traits = {
                json_name = "dialnorm",
            },
        },
        DrcLine = {
            type = "string",
            traits = {
                json_name = "drcLine",
            },
        },
        DrcRf = {
            type = "string",
            traits = {
                json_name = "drcRf",
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
            type = "number",
            traits = {
                json_name = "loRoCenterMixLevel",
            },
        },
        LoRoSurroundMixLevel = {
            type = "number",
            traits = {
                json_name = "loRoSurroundMixLevel",
            },
        },
        LtRtCenterMixLevel = {
            type = "number",
            traits = {
                json_name = "ltRtCenterMixLevel",
            },
        },
        LtRtSurroundMixLevel = {
            type = "number",
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

M.Mp2CodingMode = {
    CODING_MODE_1_0 = "CODING_MODE_1_0",
    CODING_MODE_2_0 = "CODING_MODE_2_0",
}

M.Mp2Settings = {
    type = "structure",
    members = {
        Bitrate = {
            type = "number",
            traits = {
                json_name = "bitrate",
            },
        },
        CodingMode = {
            type = "string",
            traits = {
                json_name = "codingMode",
            },
        },
        SampleRate = {
            type = "number",
            traits = {
                json_name = "sampleRate",
            },
        },
    },
}

M.PassThroughSettings = {
    type = "structure",
}

M.WavCodingMode = {
    CODING_MODE_1_0 = "CODING_MODE_1_0",
    CODING_MODE_2_0 = "CODING_MODE_2_0",
    CODING_MODE_4_0 = "CODING_MODE_4_0",
    CODING_MODE_8_0 = "CODING_MODE_8_0",
}

M.WavSettings = {
    type = "structure",
    members = {
        BitDepth = {
            type = "number",
            traits = {
                json_name = "bitDepth",
            },
        },
        CodingMode = {
            type = "string",
            traits = {
                json_name = "codingMode",
            },
        },
        SampleRate = {
            type = "number",
            traits = {
                json_name = "sampleRate",
            },
        },
    },
}

M.AudioCodecSettings = {
    type = "structure",
    members = {
        AacSettings = {
            type = "structure",
            traits = {
                json_name = "aacSettings",
            },
        },
        Ac3Settings = {
            type = "structure",
            traits = {
                json_name = "ac3Settings",
            },
        },
        Eac3AtmosSettings = {
            type = "structure",
            traits = {
                json_name = "eac3AtmosSettings",
            },
        },
        Eac3Settings = {
            type = "structure",
            traits = {
                json_name = "eac3Settings",
            },
        },
        Mp2Settings = {
            type = "structure",
            traits = {
                json_name = "mp2Settings",
            },
        },
        PassThroughSettings = {
            type = "structure",
            traits = {
                json_name = "passThroughSettings",
            },
        },
        WavSettings = {
            type = "structure",
            traits = {
                json_name = "wavSettings",
            },
        },
    },
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

M.RemixSettings = {
    type = "structure",
    members = {
        ChannelMappings = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "channelMappings",
                required = true,
            },
        },
        ChannelsIn = {
            type = "number",
            traits = {
                json_name = "channelsIn",
            },
        },
        ChannelsOut = {
            type = "number",
            traits = {
                json_name = "channelsOut",
            },
        },
    },
}

M.AudioDescription = {
    type = "structure",
    members = {
        AudioNormalizationSettings = {
            type = "structure",
            traits = {
                json_name = "audioNormalizationSettings",
            },
        },
        AudioSelectorName = {
            type = "string",
            traits = {
                json_name = "audioSelectorName",
                required = true,
            },
        },
        AudioType = {
            type = "string",
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
        AudioWatermarkingSettings = {
            type = "structure",
            traits = {
                json_name = "audioWatermarkingSettings",
            },
        },
        CodecSettings = {
            type = "structure",
            traits = {
                json_name = "codecSettings",
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
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        RemixSettings = {
            type = "structure",
            traits = {
                json_name = "remixSettings",
            },
        },
        StreamName = {
            type = "string",
            traits = {
                json_name = "streamName",
            },
        },
        AudioDashRoles = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "audioDashRoles",
            },
        },
        DvbDashAccessibility = {
            type = "string",
            traits = {
                json_name = "dvbDashAccessibility",
            },
        },
    },
}

M.AudioHlsRenditionSelection = {
    type = "structure",
    members = {
        GroupId = {
            type = "string",
            traits = {
                json_name = "groupId",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
    },
}

M.AudioLanguageSelectionPolicy = {
    LOOSE = "LOOSE",
    STRICT = "STRICT",
}

M.AudioLanguageSelection = {
    type = "structure",
    members = {
        LanguageCode = {
            type = "string",
            traits = {
                json_name = "languageCode",
                required = true,
            },
        },
        LanguageSelectionPolicy = {
            type = "string",
            traits = {
                json_name = "languageSelectionPolicy",
            },
        },
    },
}

M.AudioPidSelection = {
    type = "structure",
    members = {
        Pid = {
            type = "number",
            traits = {
                json_name = "pid",
                required = true,
            },
        },
    },
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

M.AudioDolbyEDecode = {
    type = "structure",
    members = {
        ProgramSelection = {
            type = "string",
            traits = {
                json_name = "programSelection",
                required = true,
            },
        },
    },
}

M.AudioTrack = {
    type = "structure",
    members = {
        Track = {
            type = "number",
            traits = {
                json_name = "track",
                required = true,
            },
        },
    },
}

M.AudioTrackSelection = {
    type = "structure",
    members = {
        Tracks = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "tracks",
                required = true,
            },
        },
        DolbyEDecode = {
            type = "structure",
            traits = {
                json_name = "dolbyEDecode",
            },
        },
    },
}

M.AudioSelectorSettings = {
    type = "structure",
    members = {
        AudioHlsRenditionSelection = {
            type = "structure",
            traits = {
                json_name = "audioHlsRenditionSelection",
            },
        },
        AudioLanguageSelection = {
            type = "structure",
            traits = {
                json_name = "audioLanguageSelection",
            },
        },
        AudioPidSelection = {
            type = "structure",
            traits = {
                json_name = "audioPidSelection",
            },
        },
        AudioTrackSelection = {
            type = "structure",
            traits = {
                json_name = "audioTrackSelection",
            },
        },
    },
}

M.AudioSelector = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        SelectorSettings = {
            type = "structure",
            traits = {
                json_name = "selectorSettings",
            },
        },
    },
}

M.BatchFailedResultModel = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Code = {
            type = "string",
            traits = {
                json_name = "code",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.BatchSuccessfulResultModel = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
    },
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

M.AribDestinationSettings = {
    type = "structure",
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

M.InputLocation = {
    type = "structure",
    members = {
        PasswordParam = {
            type = "string",
            traits = {
                json_name = "passwordParam",
            },
        },
        Uri = {
            type = "string",
            traits = {
                json_name = "uri",
                required = true,
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

M.BurnInDestinationSettings = {
    type = "structure",
    members = {
        Alignment = {
            type = "string",
            traits = {
                json_name = "alignment",
            },
        },
        BackgroundColor = {
            type = "string",
            traits = {
                json_name = "backgroundColor",
            },
        },
        BackgroundOpacity = {
            type = "number",
            traits = {
                json_name = "backgroundOpacity",
            },
        },
        Font = {
            type = "structure",
            traits = {
                json_name = "font",
            },
        },
        FontColor = {
            type = "string",
            traits = {
                json_name = "fontColor",
            },
        },
        FontOpacity = {
            type = "number",
            traits = {
                json_name = "fontOpacity",
            },
        },
        FontResolution = {
            type = "number",
            traits = {
                json_name = "fontResolution",
            },
        },
        FontSize = {
            type = "string",
            traits = {
                json_name = "fontSize",
            },
        },
        OutlineColor = {
            type = "string",
            traits = {
                json_name = "outlineColor",
            },
        },
        OutlineSize = {
            type = "number",
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
            type = "number",
            traits = {
                json_name = "shadowOpacity",
            },
        },
        ShadowXOffset = {
            type = "number",
            traits = {
                json_name = "shadowXOffset",
            },
        },
        ShadowYOffset = {
            type = "number",
            traits = {
                json_name = "shadowYOffset",
            },
        },
        TeletextGridControl = {
            type = "string",
            traits = {
                json_name = "teletextGridControl",
            },
        },
        XPosition = {
            type = "number",
            traits = {
                json_name = "xPosition",
            },
        },
        YPosition = {
            type = "number",
            traits = {
                json_name = "yPosition",
            },
        },
        SubtitleRows = {
            type = "string",
            traits = {
                json_name = "subtitleRows",
            },
        },
    },
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

M.DvbSubDestinationSettings = {
    type = "structure",
    members = {
        Alignment = {
            type = "string",
            traits = {
                json_name = "alignment",
            },
        },
        BackgroundColor = {
            type = "string",
            traits = {
                json_name = "backgroundColor",
            },
        },
        BackgroundOpacity = {
            type = "number",
            traits = {
                json_name = "backgroundOpacity",
            },
        },
        Font = {
            type = "structure",
            traits = {
                json_name = "font",
            },
        },
        FontColor = {
            type = "string",
            traits = {
                json_name = "fontColor",
            },
        },
        FontOpacity = {
            type = "number",
            traits = {
                json_name = "fontOpacity",
            },
        },
        FontResolution = {
            type = "number",
            traits = {
                json_name = "fontResolution",
            },
        },
        FontSize = {
            type = "string",
            traits = {
                json_name = "fontSize",
            },
        },
        OutlineColor = {
            type = "string",
            traits = {
                json_name = "outlineColor",
            },
        },
        OutlineSize = {
            type = "number",
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
            type = "number",
            traits = {
                json_name = "shadowOpacity",
            },
        },
        ShadowXOffset = {
            type = "number",
            traits = {
                json_name = "shadowXOffset",
            },
        },
        ShadowYOffset = {
            type = "number",
            traits = {
                json_name = "shadowYOffset",
            },
        },
        TeletextGridControl = {
            type = "string",
            traits = {
                json_name = "teletextGridControl",
            },
        },
        XPosition = {
            type = "number",
            traits = {
                json_name = "xPosition",
            },
        },
        YPosition = {
            type = "number",
            traits = {
                json_name = "yPosition",
            },
        },
        SubtitleRows = {
            type = "string",
            traits = {
                json_name = "subtitleRows",
            },
        },
    },
}

M.EbuTtDFillLineGapControl = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.EbuTtDDestinationStyleControl = {
    EXCLUDE = "EXCLUDE",
    INCLUDE = "INCLUDE",
}

M.EbuTtDDestinationSettings = {
    type = "structure",
    members = {
        CopyrightHolder = {
            type = "string",
            traits = {
                json_name = "copyrightHolder",
            },
        },
        FillLineGap = {
            type = "string",
            traits = {
                json_name = "fillLineGap",
            },
        },
        FontFamily = {
            type = "string",
            traits = {
                json_name = "fontFamily",
            },
        },
        StyleControl = {
            type = "string",
            traits = {
                json_name = "styleControl",
            },
        },
        DefaultFontSize = {
            type = "number",
            traits = {
                json_name = "defaultFontSize",
            },
        },
        DefaultLineHeight = {
            type = "number",
            traits = {
                json_name = "defaultLineHeight",
            },
        },
    },
}

M.EmbeddedDestinationSettings = {
    type = "structure",
}

M.EmbeddedPlusScte20DestinationSettings = {
    type = "structure",
}

M.RtmpCaptionInfoDestinationSettings = {
    type = "structure",
}

M.Scte20PlusEmbeddedDestinationSettings = {
    type = "structure",
}

M.Scte27DestinationSettings = {
    type = "structure",
}

M.SmpteTtDestinationSettings = {
    type = "structure",
}

M.TeletextDestinationSettings = {
    type = "structure",
}

M.TtmlDestinationStyleControl = {
    PASSTHROUGH = "PASSTHROUGH",
    USE_CONFIGURED = "USE_CONFIGURED",
}

M.TtmlDestinationSettings = {
    type = "structure",
    members = {
        StyleControl = {
            type = "string",
            traits = {
                json_name = "styleControl",
            },
        },
    },
}

M.WebvttDestinationStyleControl = {
    NO_STYLE_DATA = "NO_STYLE_DATA",
    PASSTHROUGH = "PASSTHROUGH",
}

M.WebvttDestinationSettings = {
    type = "structure",
    members = {
        StyleControl = {
            type = "string",
            traits = {
                json_name = "styleControl",
            },
        },
    },
}

M.CaptionDestinationSettings = {
    type = "structure",
    members = {
        AribDestinationSettings = {
            type = "structure",
            traits = {
                json_name = "aribDestinationSettings",
            },
        },
        BurnInDestinationSettings = {
            type = "structure",
            traits = {
                json_name = "burnInDestinationSettings",
            },
        },
        DvbSubDestinationSettings = {
            type = "structure",
            traits = {
                json_name = "dvbSubDestinationSettings",
            },
        },
        EbuTtDDestinationSettings = {
            type = "structure",
            traits = {
                json_name = "ebuTtDDestinationSettings",
            },
        },
        EmbeddedDestinationSettings = {
            type = "structure",
            traits = {
                json_name = "embeddedDestinationSettings",
            },
        },
        EmbeddedPlusScte20DestinationSettings = {
            type = "structure",
            traits = {
                json_name = "embeddedPlusScte20DestinationSettings",
            },
        },
        RtmpCaptionInfoDestinationSettings = {
            type = "structure",
            traits = {
                json_name = "rtmpCaptionInfoDestinationSettings",
            },
        },
        Scte20PlusEmbeddedDestinationSettings = {
            type = "structure",
            traits = {
                json_name = "scte20PlusEmbeddedDestinationSettings",
            },
        },
        Scte27DestinationSettings = {
            type = "structure",
            traits = {
                json_name = "scte27DestinationSettings",
            },
        },
        SmpteTtDestinationSettings = {
            type = "structure",
            traits = {
                json_name = "smpteTtDestinationSettings",
            },
        },
        TeletextDestinationSettings = {
            type = "structure",
            traits = {
                json_name = "teletextDestinationSettings",
            },
        },
        TtmlDestinationSettings = {
            type = "structure",
            traits = {
                json_name = "ttmlDestinationSettings",
            },
        },
        WebvttDestinationSettings = {
            type = "structure",
            traits = {
                json_name = "webvttDestinationSettings",
            },
        },
    },
}

M.CaptionDescription = {
    type = "structure",
    members = {
        Accessibility = {
            type = "string",
            traits = {
                json_name = "accessibility",
            },
        },
        CaptionSelectorName = {
            type = "string",
            traits = {
                json_name = "captionSelectorName",
                required = true,
            },
        },
        DestinationSettings = {
            type = "structure",
            traits = {
                json_name = "destinationSettings",
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
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        CaptionDashRoles = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "captionDashRoles",
            },
        },
        DvbDashAccessibility = {
            type = "string",
            traits = {
                json_name = "dvbDashAccessibility",
            },
        },
    },
}

M.CaptionLanguageMapping = {
    type = "structure",
    members = {
        CaptionChannel = {
            type = "number",
            traits = {
                json_name = "captionChannel",
                required = true,
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                json_name = "languageCode",
                required = true,
            },
        },
        LanguageDescription = {
            type = "string",
            traits = {
                json_name = "languageDescription",
                required = true,
            },
        },
    },
}

M.AncillarySourceSettings = {
    type = "structure",
    members = {
        SourceAncillaryChannelNumber = {
            type = "number",
            traits = {
                json_name = "sourceAncillaryChannelNumber",
            },
        },
    },
}

M.AribSourceSettings = {
    type = "structure",
}

M.DvbSubOcrLanguage = {
    DEU = "DEU",
    ENG = "ENG",
    FRA = "FRA",
    NLD = "NLD",
    POR = "POR",
    SPA = "SPA",
}

M.DvbSubSourceSettings = {
    type = "structure",
    members = {
        OcrLanguage = {
            type = "string",
            traits = {
                json_name = "ocrLanguage",
            },
        },
        Pid = {
            type = "number",
            traits = {
                json_name = "pid",
            },
        },
    },
}

M.EmbeddedConvert608To708 = {
    DISABLED = "DISABLED",
    UPCONVERT = "UPCONVERT",
}

M.EmbeddedScte20Detection = {
    AUTO = "AUTO",
    OFF = "OFF",
}

M.EmbeddedSourceSettings = {
    type = "structure",
    members = {
        Convert608To708 = {
            type = "string",
            traits = {
                json_name = "convert608To708",
            },
        },
        Scte20Detection = {
            type = "string",
            traits = {
                json_name = "scte20Detection",
            },
        },
        Source608ChannelNumber = {
            type = "number",
            traits = {
                json_name = "source608ChannelNumber",
            },
        },
        Source608TrackNumber = {
            type = "number",
            traits = {
                json_name = "source608TrackNumber",
            },
        },
    },
}

M.Scte20Convert608To708 = {
    DISABLED = "DISABLED",
    UPCONVERT = "UPCONVERT",
}

M.Scte20SourceSettings = {
    type = "structure",
    members = {
        Convert608To708 = {
            type = "string",
            traits = {
                json_name = "convert608To708",
            },
        },
        Source608ChannelNumber = {
            type = "number",
            traits = {
                json_name = "source608ChannelNumber",
            },
        },
    },
}

M.Scte27OcrLanguage = {
    DEU = "DEU",
    ENG = "ENG",
    FRA = "FRA",
    NLD = "NLD",
    POR = "POR",
    SPA = "SPA",
}

M.Scte27SourceSettings = {
    type = "structure",
    members = {
        OcrLanguage = {
            type = "string",
            traits = {
                json_name = "ocrLanguage",
            },
        },
        Pid = {
            type = "number",
            traits = {
                json_name = "pid",
            },
        },
    },
}

M.CaptionRectangle = {
    type = "structure",
    members = {
        Height = {
            type = "number",
            traits = {
                json_name = "height",
                required = true,
            },
        },
        LeftOffset = {
            type = "number",
            traits = {
                json_name = "leftOffset",
                required = true,
            },
        },
        TopOffset = {
            type = "number",
            traits = {
                json_name = "topOffset",
                required = true,
            },
        },
        Width = {
            type = "number",
            traits = {
                json_name = "width",
                required = true,
            },
        },
    },
}

M.TeletextSourceSettings = {
    type = "structure",
    members = {
        OutputRectangle = {
            type = "structure",
            traits = {
                json_name = "outputRectangle",
            },
        },
        PageNumber = {
            type = "string",
            traits = {
                json_name = "pageNumber",
            },
        },
    },
}

M.CaptionSelectorSettings = {
    type = "structure",
    members = {
        AncillarySourceSettings = {
            type = "structure",
            traits = {
                json_name = "ancillarySourceSettings",
            },
        },
        AribSourceSettings = {
            type = "structure",
            traits = {
                json_name = "aribSourceSettings",
            },
        },
        DvbSubSourceSettings = {
            type = "structure",
            traits = {
                json_name = "dvbSubSourceSettings",
            },
        },
        EmbeddedSourceSettings = {
            type = "structure",
            traits = {
                json_name = "embeddedSourceSettings",
            },
        },
        Scte20SourceSettings = {
            type = "structure",
            traits = {
                json_name = "scte20SourceSettings",
            },
        },
        Scte27SourceSettings = {
            type = "structure",
            traits = {
                json_name = "scte27SourceSettings",
            },
        },
        TeletextSourceSettings = {
            type = "structure",
            traits = {
                json_name = "teletextSourceSettings",
            },
        },
    },
}

M.CaptionSelector = {
    type = "structure",
    members = {
        LanguageCode = {
            type = "string",
            traits = {
                json_name = "languageCode",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        SelectorSettings = {
            type = "structure",
            traits = {
                json_name = "selectorSettings",
            },
        },
    },
}

M.ChannelAlertState = {
    SET = "SET",
    CLEARED = "CLEARED",
}

M.ChannelAlert = {
    type = "structure",
    members = {
        AlertType = {
            type = "string",
            traits = {
                json_name = "alertType",
            },
        },
        ClearedTimestamp = {
            type = "timestamp",
            traits = {
                json_name = "clearedTimestamp",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
        PipelineId = {
            type = "string",
            traits = {
                json_name = "pipelineId",
            },
        },
        SetTimestamp = {
            type = "timestamp",
            traits = {
                json_name = "setTimestamp",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
    },
}

M.ChannelEgressEndpoint = {
    type = "structure",
    members = {
        SourceIp = {
            type = "string",
            traits = {
                json_name = "sourceIp",
            },
        },
    },
}

M.ChannelEngineVersionResponse = {
    type = "structure",
    members = {
        ExpirationDate = {
            type = "timestamp",
            traits = {
                json_name = "expirationDate",
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

M.ChannelPipelineIdToRestart = {
    PIPELINE_0 = "PIPELINE_0",
    PIPELINE_1 = "PIPELINE_1",
}

M.DescribeAnywhereSettings = {
    type = "structure",
    members = {
        ChannelPlacementGroupId = {
            type = "string",
            traits = {
                json_name = "channelPlacementGroupId",
            },
        },
        ClusterId = {
            type = "string",
            traits = {
                json_name = "clusterId",
            },
        },
    },
}

M.CdiInputResolution = {
    SD = "SD",
    HD = "HD",
    FHD = "FHD",
    UHD = "UHD",
}

M.CdiInputSpecification = {
    type = "structure",
    members = {
        Resolution = {
            type = "string",
            traits = {
                json_name = "resolution",
            },
        },
    },
}

M.ChannelClass = {
    STANDARD = "STANDARD",
    SINGLE_PIPELINE = "SINGLE_PIPELINE",
}

M.MediaConnectRouterOutputEncryptionType = {
    AUTOMATIC = "AUTOMATIC",
    SECRETS_MANAGER = "SECRETS_MANAGER",
}

M.MediaConnectRouterOutputDestinationSettings = {
    type = "structure",
    members = {
        EncryptionType = {
            type = "string",
            traits = {
                json_name = "encryptionType",
            },
        },
        SecretArn = {
            type = "string",
            traits = {
                json_name = "secretArn",
            },
        },
    },
}

M.MediaPackageOutputDestinationSettings = {
    type = "structure",
    members = {
        ChannelId = {
            type = "string",
            traits = {
                json_name = "channelId",
            },
        },
        ChannelGroup = {
            type = "string",
            traits = {
                json_name = "channelGroup",
            },
        },
        ChannelName = {
            type = "string",
            traits = {
                json_name = "channelName",
            },
        },
        ChannelEndpointId = {
            type = "string",
            traits = {
                json_name = "channelEndpointId",
            },
        },
        MediaPackageRegionName = {
            type = "string",
            traits = {
                json_name = "mediaPackageRegionName",
            },
        },
    },
}

M.MultiplexProgramChannelDestinationSettings = {
    type = "structure",
    members = {
        MultiplexId = {
            type = "string",
            traits = {
                json_name = "multiplexId",
            },
        },
        ProgramName = {
            type = "string",
            traits = {
                json_name = "programName",
            },
        },
    },
}

M.OutputDestinationSettings = {
    type = "structure",
    members = {
        PasswordParam = {
            type = "string",
            traits = {
                json_name = "passwordParam",
            },
        },
        StreamName = {
            type = "string",
            traits = {
                json_name = "streamName",
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

M.ConnectionMode = {
    CALLER = "CALLER",
    LISTENER = "LISTENER",
}

M.SrtOutputDestinationSettings = {
    type = "structure",
    members = {
        EncryptionPassphraseSecretArn = {
            type = "string",
            traits = {
                json_name = "encryptionPassphraseSecretArn",
            },
        },
        StreamId = {
            type = "string",
            traits = {
                json_name = "streamId",
            },
        },
        Url = {
            type = "string",
            traits = {
                json_name = "url",
            },
        },
        ConnectionMode = {
            type = "string",
            traits = {
                json_name = "connectionMode",
            },
        },
        ListenerPort = {
            type = "number",
            traits = {
                json_name = "listenerPort",
            },
        },
    },
}

M.OutputDestination = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        MediaPackageSettings = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "mediaPackageSettings",
            },
        },
        MultiplexSettings = {
            type = "structure",
            traits = {
                json_name = "multiplexSettings",
            },
        },
        Settings = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "settings",
            },
        },
        SrtSettings = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "srtSettings",
            },
        },
        LogicalInterfaceNames = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "logicalInterfaceNames",
            },
        },
        MediaConnectRouterSettings = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "mediaConnectRouterSettings",
            },
        },
    },
}

M.DescribeInferenceSettings = {
    type = "structure",
    members = {
        FeedArn = {
            type = "string",
            traits = {
                json_name = "feedArn",
            },
        },
    },
}

M.AudioSilenceFailoverSettings = {
    type = "structure",
    members = {
        AudioSelectorName = {
            type = "string",
            traits = {
                json_name = "audioSelectorName",
                required = true,
            },
        },
        AudioSilenceThresholdMsec = {
            type = "number",
            traits = {
                json_name = "audioSilenceThresholdMsec",
            },
        },
    },
}

M.InputLossFailoverSettings = {
    type = "structure",
    members = {
        InputLossThresholdMsec = {
            type = "number",
            traits = {
                json_name = "inputLossThresholdMsec",
            },
        },
    },
}

M.VideoBlackFailoverSettings = {
    type = "structure",
    members = {
        BlackDetectThreshold = {
            type = "number",
            traits = {
                json_name = "blackDetectThreshold",
            },
        },
        VideoBlackThresholdMsec = {
            type = "number",
            traits = {
                json_name = "videoBlackThresholdMsec",
            },
        },
    },
}

M.FailoverConditionSettings = {
    type = "structure",
    members = {
        AudioSilenceSettings = {
            type = "structure",
            traits = {
                json_name = "audioSilenceSettings",
            },
        },
        InputLossSettings = {
            type = "structure",
            traits = {
                json_name = "inputLossSettings",
            },
        },
        VideoBlackSettings = {
            type = "structure",
            traits = {
                json_name = "videoBlackSettings",
            },
        },
    },
}

M.FailoverCondition = {
    type = "structure",
    members = {
        FailoverConditionSettings = {
            type = "structure",
            traits = {
                json_name = "failoverConditionSettings",
            },
        },
    },
}

M.InputPreference = {
    EQUAL_INPUT_PREFERENCE = "EQUAL_INPUT_PREFERENCE",
    PRIMARY_INPUT_PREFERRED = "PRIMARY_INPUT_PREFERRED",
}

M.AutomaticInputFailoverSettings = {
    type = "structure",
    members = {
        ErrorClearTimeMsec = {
            type = "number",
            traits = {
                json_name = "errorClearTimeMsec",
            },
        },
        FailoverConditions = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "failoverConditions",
            },
        },
        InputPreference = {
            type = "string",
            traits = {
                json_name = "inputPreference",
            },
        },
        SecondaryInputId = {
            type = "string",
            traits = {
                json_name = "secondaryInputId",
                required = true,
            },
        },
    },
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

M.HlsInputSettings = {
    type = "structure",
    members = {
        Bandwidth = {
            type = "number",
            traits = {
                json_name = "bandwidth",
            },
        },
        BufferSegments = {
            type = "number",
            traits = {
                json_name = "bufferSegments",
            },
        },
        Retries = {
            type = "number",
            traits = {
                json_name = "retries",
            },
        },
        RetryInterval = {
            type = "number",
            traits = {
                json_name = "retryInterval",
            },
        },
        Scte35Source = {
            type = "string",
            traits = {
                json_name = "scte35Source",
            },
        },
    },
}

M.MulticastInputSettings = {
    type = "structure",
    members = {
        SourceIpAddress = {
            type = "string",
            traits = {
                json_name = "sourceIpAddress",
            },
        },
    },
}

M.NetworkInputServerValidation = {
    CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME = "CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME",
    CHECK_CRYPTOGRAPHY_ONLY = "CHECK_CRYPTOGRAPHY_ONLY",
}

M.NetworkInputSettings = {
    type = "structure",
    members = {
        HlsInputSettings = {
            type = "structure",
            traits = {
                json_name = "hlsInputSettings",
            },
        },
        ServerValidation = {
            type = "string",
            traits = {
                json_name = "serverValidation",
            },
        },
        MulticastInputSettings = {
            type = "structure",
            traits = {
                json_name = "multicastInputSettings",
            },
        },
    },
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

M.Hdr10Settings = {
    type = "structure",
    members = {
        MaxCll = {
            type = "number",
            traits = {
                json_name = "maxCll",
            },
        },
        MaxFall = {
            type = "number",
            traits = {
                json_name = "maxFall",
            },
        },
    },
}

M.VideoSelectorColorSpaceSettings = {
    type = "structure",
    members = {
        Hdr10Settings = {
            type = "structure",
            traits = {
                json_name = "hdr10Settings",
            },
        },
    },
}

M.VideoSelectorColorSpaceUsage = {
    FALLBACK = "FALLBACK",
    FORCE = "FORCE",
}

M.VideoSelectorPid = {
    type = "structure",
    members = {
        Pid = {
            type = "number",
            traits = {
                json_name = "pid",
            },
        },
    },
}

M.VideoSelectorProgramId = {
    type = "structure",
    members = {
        ProgramId = {
            type = "number",
            traits = {
                json_name = "programId",
            },
        },
    },
}

M.VideoSelectorSettings = {
    type = "structure",
    members = {
        VideoSelectorPid = {
            type = "structure",
            traits = {
                json_name = "videoSelectorPid",
            },
        },
        VideoSelectorProgramId = {
            type = "structure",
            traits = {
                json_name = "videoSelectorProgramId",
            },
        },
    },
}

M.VideoSelector = {
    type = "structure",
    members = {
        ColorSpace = {
            type = "string",
            traits = {
                json_name = "colorSpace",
            },
        },
        ColorSpaceSettings = {
            type = "structure",
            traits = {
                json_name = "colorSpaceSettings",
            },
        },
        ColorSpaceUsage = {
            type = "string",
            traits = {
                json_name = "colorSpaceUsage",
            },
        },
        SelectorSettings = {
            type = "structure",
            traits = {
                json_name = "selectorSettings",
            },
        },
    },
}

M.InputSettings = {
    type = "structure",
    members = {
        AudioSelectors = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "audioSelectors",
            },
        },
        CaptionSelectors = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "captionSelectors",
            },
        },
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
        FilterStrength = {
            type = "number",
            traits = {
                json_name = "filterStrength",
            },
        },
        InputFilter = {
            type = "string",
            traits = {
                json_name = "inputFilter",
            },
        },
        NetworkInputSettings = {
            type = "structure",
            traits = {
                json_name = "networkInputSettings",
            },
        },
        Scte35Pid = {
            type = "number",
            traits = {
                json_name = "scte35Pid",
            },
        },
        Smpte2038DataPreference = {
            type = "string",
            traits = {
                json_name = "smpte2038DataPreference",
            },
        },
        SourceEndBehavior = {
            type = "string",
            traits = {
                json_name = "sourceEndBehavior",
            },
        },
        VideoSelector = {
            type = "structure",
            traits = {
                json_name = "videoSelector",
            },
        },
    },
}

M.InputAttachment = {
    type = "structure",
    members = {
        AutomaticInputFailoverSettings = {
            type = "structure",
            traits = {
                json_name = "automaticInputFailoverSettings",
            },
        },
        InputAttachmentName = {
            type = "string",
            traits = {
                json_name = "inputAttachmentName",
            },
        },
        InputId = {
            type = "string",
            traits = {
                json_name = "inputId",
            },
        },
        InputSettings = {
            type = "structure",
            traits = {
                json_name = "inputSettings",
            },
        },
        LogicalInterfaceNames = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "logicalInterfaceNames",
            },
        },
    },
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

M.InputSpecification = {
    type = "structure",
    members = {
        Codec = {
            type = "string",
            traits = {
                json_name = "codec",
            },
        },
        MaximumBitrate = {
            type = "string",
            traits = {
                json_name = "maximumBitrate",
            },
        },
        Resolution = {
            type = "string",
            traits = {
                json_name = "resolution",
            },
        },
    },
}

M.LinkedChannelType = {
    FOLLOWING_CHANNEL = "FOLLOWING_CHANNEL",
    PRIMARY_CHANNEL = "PRIMARY_CHANNEL",
}

M.DescribeFollowerChannelSettings = {
    type = "structure",
    members = {
        LinkedChannelType = {
            type = "string",
            traits = {
                json_name = "linkedChannelType",
            },
        },
        PrimaryChannelArn = {
            type = "string",
            traits = {
                json_name = "primaryChannelArn",
            },
        },
    },
}

M.DescribePrimaryChannelSettings = {
    type = "structure",
    members = {
        FollowingChannelArns = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "followingChannelArns",
            },
        },
        LinkedChannelType = {
            type = "string",
            traits = {
                json_name = "linkedChannelType",
            },
        },
    },
}

M.DescribeLinkedChannelSettings = {
    type = "structure",
    members = {
        FollowerChannelSettings = {
            type = "structure",
            traits = {
                json_name = "followerChannelSettings",
            },
        },
        PrimaryChannelSettings = {
            type = "structure",
            traits = {
                json_name = "primaryChannelSettings",
            },
        },
    },
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

M.MaintenanceStatus = {
    type = "structure",
    members = {
        MaintenanceDay = {
            type = "string",
            traits = {
                json_name = "maintenanceDay",
            },
        },
        MaintenanceDeadline = {
            type = "string",
            traits = {
                json_name = "maintenanceDeadline",
            },
        },
        MaintenanceScheduledDate = {
            type = "string",
            traits = {
                json_name = "maintenanceScheduledDate",
            },
        },
        MaintenanceStartTime = {
            type = "string",
            traits = {
                json_name = "maintenanceStartTime",
            },
        },
    },
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

M.VpcOutputSettingsDescription = {
    type = "structure",
    members = {
        AvailabilityZones = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "availabilityZones",
            },
        },
        NetworkInterfaceIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "networkInterfaceIds",
            },
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "securityGroupIds",
            },
        },
        SubnetIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "subnetIds",
            },
        },
    },
}

M.ChannelSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CdiInputSpecification = {
            type = "structure",
            traits = {
                json_name = "cdiInputSpecification",
            },
        },
        ChannelClass = {
            type = "string",
            traits = {
                json_name = "channelClass",
            },
        },
        Destinations = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "destinations",
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
        InputAttachments = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "inputAttachments",
            },
        },
        InputSpecification = {
            type = "structure",
            traits = {
                json_name = "inputSpecification",
            },
        },
        LogLevel = {
            type = "string",
            traits = {
                json_name = "logLevel",
            },
        },
        Maintenance = {
            type = "structure",
            traits = {
                json_name = "maintenance",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        PipelinesRunningCount = {
            type = "number",
            traits = {
                json_name = "pipelinesRunningCount",
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                json_name = "roleArn",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
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
        Vpc = {
            type = "structure",
            traits = {
                json_name = "vpc",
            },
        },
        AnywhereSettings = {
            type = "structure",
            traits = {
                json_name = "anywhereSettings",
            },
        },
        ChannelEngineVersion = {
            type = "structure",
            traits = {
                json_name = "channelEngineVersion",
            },
        },
        UsedChannelEngineVersions = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "usedChannelEngineVersions",
            },
        },
        LinkedChannelSettings = {
            type = "structure",
            traits = {
                json_name = "linkedChannelSettings",
            },
        },
        ChannelSecurityGroups = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "channelSecurityGroups",
            },
        },
        InferenceSettings = {
            type = "structure",
            traits = {
                json_name = "inferenceSettings",
            },
        },
    },
}

M.CloudWatchAlarmTemplateGroupSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
                required = true,
            },
        },
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
        ModifiedAt = {
            type = "timestamp",
            traits = {
                json_name = "modifiedAt",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
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
        TemplateCount = {
            type = "number",
            traits = {
                json_name = "templateCount",
                required = true,
            },
        },
    },
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

M.CloudWatchAlarmTemplateSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
                required = true,
            },
        },
        ComparisonOperator = {
            type = "string",
            traits = {
                json_name = "comparisonOperator",
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
                required = true,
            },
        },
        DatapointsToAlarm = {
            type = "number",
            traits = {
                json_name = "datapointsToAlarm",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        EvaluationPeriods = {
            type = "number",
            traits = {
                json_name = "evaluationPeriods",
                required = true,
            },
        },
        GroupId = {
            type = "string",
            traits = {
                json_name = "groupId",
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
        MetricName = {
            type = "string",
            traits = {
                json_name = "metricName",
                required = true,
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                json_name = "modifiedAt",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Period = {
            type = "number",
            traits = {
                json_name = "period",
                required = true,
            },
        },
        Statistic = {
            type = "string",
            traits = {
                json_name = "statistic",
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
        TargetResourceType = {
            type = "string",
            traits = {
                json_name = "targetResourceType",
                required = true,
            },
        },
        Threshold = {
            type = "number",
            traits = {
                json_name = "threshold",
                required = true,
            },
        },
        TreatMissingData = {
            type = "string",
            traits = {
                json_name = "treatMissingData",
                required = true,
            },
        },
    },
}

M.ClusterAlertState = {
    SET = "SET",
    CLEARED = "CLEARED",
}

M.ClusterAlert = {
    type = "structure",
    members = {
        AlertType = {
            type = "string",
            traits = {
                json_name = "alertType",
            },
        },
        ChannelId = {
            type = "string",
            traits = {
                json_name = "channelId",
            },
        },
        ClearedTimestamp = {
            type = "timestamp",
            traits = {
                json_name = "clearedTimestamp",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
        NodeId = {
            type = "string",
            traits = {
                json_name = "nodeId",
            },
        },
        SetTimestamp = {
            type = "timestamp",
            traits = {
                json_name = "setTimestamp",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
    },
}

M.CmafIngestCaptionLanguageMapping = {
    type = "structure",
    members = {
        CaptionChannel = {
            type = "number",
            traits = {
                json_name = "captionChannel",
                required = true,
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                json_name = "languageCode",
                required = true,
            },
        },
    },
}

M.ColorSpace = {
    HDR10 = "HDR10",
    HLG_2020 = "HLG_2020",
    REC_601 = "REC_601",
    REC_709 = "REC_709",
}

M.ColorCorrection = {
    type = "structure",
    members = {
        InputColorSpace = {
            type = "string",
            traits = {
                json_name = "inputColorSpace",
                required = true,
            },
        },
        OutputColorSpace = {
            type = "string",
            traits = {
                json_name = "outputColorSpace",
                required = true,
            },
        },
        Uri = {
            type = "string",
            traits = {
                json_name = "uri",
                required = true,
            },
        },
    },
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

M.DescribeChannelPlacementGroupSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Channels = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "channels",
            },
        },
        ClusterId = {
            type = "string",
            traits = {
                json_name = "clusterId",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Nodes = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "nodes",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
    },
}

M.ClusterType = {
    ON_PREMISES = "ON_PREMISES",
}

M.InterfaceMapping = {
    type = "structure",
    members = {
        LogicalInterfaceName = {
            type = "string",
            traits = {
                json_name = "logicalInterfaceName",
            },
        },
        NetworkId = {
            type = "string",
            traits = {
                json_name = "networkId",
            },
        },
    },
}

M.ClusterNetworkSettings = {
    type = "structure",
    members = {
        DefaultRoute = {
            type = "string",
            traits = {
                json_name = "defaultRoute",
            },
        },
        InterfaceMappings = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "interfaceMappings",
            },
        },
    },
}

M.ClusterState = {
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    DELETE_FAILED = "DELETE_FAILED",
    DELETED = "DELETED",
}

M.DescribeClusterSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        ChannelIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "channelIds",
            },
        },
        ClusterType = {
            type = "string",
            traits = {
                json_name = "clusterType",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        InstanceRoleArn = {
            type = "string",
            traits = {
                json_name = "instanceRoleArn",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        NetworkSettings = {
            type = "structure",
            traits = {
                json_name = "networkSettings",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
    },
}

M.IpPool = {
    type = "structure",
    members = {
        Cidr = {
            type = "string",
            traits = {
                json_name = "cidr",
            },
        },
    },
}

M.Route = {
    type = "structure",
    members = {
        Cidr = {
            type = "string",
            traits = {
                json_name = "cidr",
            },
        },
        Gateway = {
            type = "string",
            traits = {
                json_name = "gateway",
            },
        },
    },
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

M.DescribeNetworkSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        AssociatedClusterIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "associatedClusterIds",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        IpPools = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "ipPools",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Routes = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "routes",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
    },
}

M.NodeConnectionState = {
    CONNECTED = "CONNECTED",
    DISCONNECTED = "DISCONNECTED",
}

M.NetworkInterfaceMode = {
    NAT = "NAT",
    BRIDGE = "BRIDGE",
}

M.NodeInterfaceMapping = {
    type = "structure",
    members = {
        LogicalInterfaceName = {
            type = "string",
            traits = {
                json_name = "logicalInterfaceName",
            },
        },
        NetworkInterfaceMode = {
            type = "string",
            traits = {
                json_name = "networkInterfaceMode",
            },
        },
        PhysicalInterfaceName = {
            type = "string",
            traits = {
                json_name = "physicalInterfaceName",
            },
        },
        PhysicalInterfaceIpAddresses = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "physicalInterfaceIpAddresses",
            },
        },
    },
}

M.NodeRole = {
    BACKUP = "BACKUP",
    ACTIVE = "ACTIVE",
}

M.SdiSourceMapping = {
    type = "structure",
    members = {
        CardNumber = {
            type = "number",
            traits = {
                json_name = "cardNumber",
            },
        },
        ChannelNumber = {
            type = "number",
            traits = {
                json_name = "channelNumber",
            },
        },
        SdiSource = {
            type = "string",
            traits = {
                json_name = "sdiSource",
            },
        },
    },
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

M.DescribeNodeSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        ChannelPlacementGroups = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "channelPlacementGroups",
            },
        },
        ClusterId = {
            type = "string",
            traits = {
                json_name = "clusterId",
            },
        },
        ConnectionState = {
            type = "string",
            traits = {
                json_name = "connectionState",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        InstanceArn = {
            type = "string",
            traits = {
                json_name = "instanceArn",
            },
        },
        ManagedInstanceId = {
            type = "string",
            traits = {
                json_name = "managedInstanceId",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        NodeInterfaceMappings = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "nodeInterfaceMappings",
            },
        },
        Role = {
            type = "string",
            traits = {
                json_name = "role",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
        SdiSourceMappings = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "sdiSourceMappings",
            },
        },
    },
}

M.EventBridgeRuleTemplateGroupSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
                required = true,
            },
        },
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
        ModifiedAt = {
            type = "timestamp",
            traits = {
                json_name = "modifiedAt",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
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
        TemplateCount = {
            type = "number",
            traits = {
                json_name = "templateCount",
                required = true,
            },
        },
    },
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

M.EventBridgeRuleTemplateSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        EventTargetCount = {
            type = "number",
            traits = {
                json_name = "eventTargetCount",
                required = true,
            },
        },
        EventType = {
            type = "string",
            traits = {
                json_name = "eventType",
                required = true,
            },
        },
        GroupId = {
            type = "string",
            traits = {
                json_name = "groupId",
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
        ModifiedAt = {
            type = "timestamp",
            traits = {
                json_name = "modifiedAt",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
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

M.EventBridgeRuleTemplateTarget = {
    type = "structure",
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

M.HlsAdMarkers = {
    ADOBE = "ADOBE",
    ELEMENTAL = "ELEMENTAL",
    ELEMENTAL_SCTE35 = "ELEMENTAL_SCTE35",
}

M.InputDestinationRoute = {
    type = "structure",
    members = {
        Cidr = {
            type = "string",
            traits = {
                json_name = "cidr",
            },
        },
        Gateway = {
            type = "string",
            traits = {
                json_name = "gateway",
            },
        },
    },
}

M.InputDestinationVpc = {
    type = "structure",
    members = {
        AvailabilityZone = {
            type = "string",
            traits = {
                json_name = "availabilityZone",
            },
        },
        NetworkInterfaceId = {
            type = "string",
            traits = {
                json_name = "networkInterfaceId",
            },
        },
    },
}

M.InputDestination = {
    type = "structure",
    members = {
        Ip = {
            type = "string",
            traits = {
                json_name = "ip",
            },
        },
        Port = {
            type = "string",
            traits = {
                json_name = "port",
            },
        },
        Url = {
            type = "string",
            traits = {
                json_name = "url",
            },
        },
        Vpc = {
            type = "structure",
            traits = {
                json_name = "vpc",
            },
        },
        Network = {
            type = "string",
            traits = {
                json_name = "network",
            },
        },
        NetworkRoutes = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "networkRoutes",
            },
        },
    },
}

M.InputClass = {
    STANDARD = "STANDARD",
    SINGLE_PIPELINE = "SINGLE_PIPELINE",
}

M.InputDeviceSettings = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
    },
}

M.InputNetworkLocation = {
    AWS = "AWS",
    ON_PREMISES = "ON_PREMISES",
}

M.InputSourceType = {
    STATIC = "STATIC",
    DYNAMIC = "DYNAMIC",
}

M.MediaConnectFlow = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                json_name = "flowArn",
            },
        },
    },
}

M.MulticastSource = {
    type = "structure",
    members = {
        SourceIp = {
            type = "string",
            traits = {
                json_name = "sourceIp",
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

M.MulticastSettings = {
    type = "structure",
    members = {
        Sources = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "sources",
            },
        },
    },
}

M.RouterDestination = {
    type = "structure",
    members = {
        AvailabilityZoneName = {
            type = "string",
            traits = {
                json_name = "availabilityZoneName",
            },
        },
        RouterOutputArn = {
            type = "string",
            traits = {
                json_name = "routerOutputArn",
            },
        },
    },
}

M.RouterEncryptionType = {
    AUTOMATIC = "AUTOMATIC",
    SECRETS_MANAGER = "SECRETS_MANAGER",
}

M.RouterInputSettings = {
    type = "structure",
    members = {
        Destinations = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "destinations",
            },
        },
        EncryptionType = {
            type = "string",
            traits = {
                json_name = "encryptionType",
            },
        },
        SecretArn = {
            type = "string",
            traits = {
                json_name = "secretArn",
            },
        },
    },
}

M.InputSdpLocation = {
    type = "structure",
    members = {
        MediaIndex = {
            type = "number",
            traits = {
                json_name = "mediaIndex",
            },
        },
        SdpUrl = {
            type = "string",
            traits = {
                json_name = "sdpUrl",
            },
        },
    },
}

M.Smpte2110ReceiverGroupSdpSettings = {
    type = "structure",
    members = {
        AncillarySdps = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "ancillarySdps",
            },
        },
        AudioSdps = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "audioSdps",
            },
        },
        VideoSdp = {
            type = "structure",
            traits = {
                json_name = "videoSdp",
            },
        },
    },
}

M.Smpte2110ReceiverGroup = {
    type = "structure",
    members = {
        SdpSettings = {
            type = "structure",
            traits = {
                json_name = "sdpSettings",
            },
        },
    },
}

M.Smpte2110ReceiverGroupSettings = {
    type = "structure",
    members = {
        Smpte2110ReceiverGroups = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "smpte2110ReceiverGroups",
            },
        },
    },
}

M.InputSource = {
    type = "structure",
    members = {
        PasswordParam = {
            type = "string",
            traits = {
                json_name = "passwordParam",
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

M.Algorithm = {
    AES128 = "AES128",
    AES192 = "AES192",
    AES256 = "AES256",
}

M.SrtCallerDecryption = {
    type = "structure",
    members = {
        Algorithm = {
            type = "string",
            traits = {
                json_name = "algorithm",
            },
        },
        PassphraseSecretArn = {
            type = "string",
            traits = {
                json_name = "passphraseSecretArn",
            },
        },
    },
}

M.SrtCallerSource = {
    type = "structure",
    members = {
        Decryption = {
            type = "structure",
            traits = {
                json_name = "decryption",
            },
        },
        MinimumLatency = {
            type = "number",
            traits = {
                json_name = "minimumLatency",
            },
        },
        SrtListenerAddress = {
            type = "string",
            traits = {
                json_name = "srtListenerAddress",
            },
        },
        SrtListenerPort = {
            type = "string",
            traits = {
                json_name = "srtListenerPort",
            },
        },
        StreamId = {
            type = "string",
            traits = {
                json_name = "streamId",
            },
        },
    },
}

M.SrtListenerDecryption = {
    type = "structure",
    members = {
        Algorithm = {
            type = "string",
            traits = {
                json_name = "algorithm",
                required = true,
            },
        },
        PassphraseSecretArn = {
            type = "string",
            traits = {
                json_name = "passphraseSecretArn",
                required = true,
            },
        },
    },
}

M.SrtListenerSettings = {
    type = "structure",
    members = {
        Decryption = {
            type = "structure",
            traits = {
                json_name = "decryption",
            },
        },
        MinimumLatency = {
            type = "number",
            traits = {
                json_name = "minimumLatency",
            },
        },
        StreamId = {
            type = "string",
            traits = {
                json_name = "streamId",
            },
        },
    },
}

M.SrtSettings = {
    type = "structure",
    members = {
        SrtCallerSources = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "srtCallerSources",
            },
        },
        SrtListenerSettings = {
            type = "structure",
            traits = {
                json_name = "srtListenerSettings",
            },
        },
    },
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

M.Input = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        AttachedChannels = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "attachedChannels",
            },
        },
        Destinations = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "destinations",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        InputClass = {
            type = "string",
            traits = {
                json_name = "inputClass",
            },
        },
        InputDevices = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "inputDevices",
            },
        },
        InputPartnerIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "inputPartnerIds",
            },
        },
        InputSourceType = {
            type = "string",
            traits = {
                json_name = "inputSourceType",
            },
        },
        MediaConnectFlows = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "mediaConnectFlows",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                json_name = "roleArn",
            },
        },
        SecurityGroups = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "securityGroups",
            },
        },
        Sources = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "sources",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
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
        Type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
        SrtSettings = {
            type = "structure",
            traits = {
                json_name = "srtSettings",
            },
        },
        InputNetworkLocation = {
            type = "string",
            traits = {
                json_name = "inputNetworkLocation",
            },
        },
        MulticastSettings = {
            type = "structure",
            traits = {
                json_name = "multicastSettings",
            },
        },
        Smpte2110ReceiverGroupSettings = {
            type = "structure",
            traits = {
                json_name = "smpte2110ReceiverGroupSettings",
            },
        },
        SdiSources = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "sdiSources",
            },
        },
        RouterSettings = {
            type = "structure",
            traits = {
                json_name = "routerSettings",
            },
        },
    },
}

M.InputRequestDestinationRoute = {
    type = "structure",
    members = {
        Cidr = {
            type = "string",
            traits = {
                json_name = "cidr",
            },
        },
        Gateway = {
            type = "string",
            traits = {
                json_name = "gateway",
            },
        },
    },
}

M.InputDestinationRequest = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
            traits = {
                json_name = "streamName",
            },
        },
        Network = {
            type = "string",
            traits = {
                json_name = "network",
            },
        },
        NetworkRoutes = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "networkRoutes",
            },
        },
        StaticIpAddress = {
            type = "string",
            traits = {
                json_name = "staticIpAddress",
            },
        },
    },
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

M.InputDeviceConfigurableAudioChannelPairConfig = {
    type = "structure",
    members = {
        Id = {
            type = "number",
            traits = {
                json_name = "id",
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

M.InputDeviceRequest = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
    },
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

M.InputDeviceHdSettings = {
    type = "structure",
    members = {
        ActiveInput = {
            type = "string",
            traits = {
                json_name = "activeInput",
            },
        },
        ConfiguredInput = {
            type = "string",
            traits = {
                json_name = "configuredInput",
            },
        },
        DeviceState = {
            type = "string",
            traits = {
                json_name = "deviceState",
            },
        },
        Framerate = {
            type = "number",
            traits = {
                json_name = "framerate",
            },
        },
        Height = {
            type = "number",
            traits = {
                json_name = "height",
            },
        },
        MaxBitrate = {
            type = "number",
            traits = {
                json_name = "maxBitrate",
            },
        },
        ScanType = {
            type = "string",
            traits = {
                json_name = "scanType",
            },
        },
        Width = {
            type = "number",
            traits = {
                json_name = "width",
            },
        },
        LatencyMs = {
            type = "number",
            traits = {
                json_name = "latencyMs",
            },
        },
    },
}

M.InputDeviceIpScheme = {
    STATIC = "STATIC",
    DHCP = "DHCP",
}

M.InputDeviceNetworkSettings = {
    type = "structure",
    members = {
        DnsAddresses = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "dnsAddresses",
            },
        },
        Gateway = {
            type = "string",
            traits = {
                json_name = "gateway",
            },
        },
        IpAddress = {
            type = "string",
            traits = {
                json_name = "ipAddress",
            },
        },
        IpScheme = {
            type = "string",
            traits = {
                json_name = "ipScheme",
            },
        },
        SubnetMask = {
            type = "string",
            traits = {
                json_name = "subnetMask",
            },
        },
    },
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

M.InputDeviceUhdAudioChannelPairConfig = {
    type = "structure",
    members = {
        Id = {
            type = "number",
            traits = {
                json_name = "id",
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

M.InputDeviceCodec = {
    HEVC = "HEVC",
    AVC = "AVC",
}

M.InputDeviceMediaConnectSettings = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                json_name = "flowArn",
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                json_name = "roleArn",
            },
        },
        SecretArn = {
            type = "string",
            traits = {
                json_name = "secretArn",
            },
        },
        SourceName = {
            type = "string",
            traits = {
                json_name = "sourceName",
            },
        },
    },
}

M.InputDeviceUhdSettings = {
    type = "structure",
    members = {
        ActiveInput = {
            type = "string",
            traits = {
                json_name = "activeInput",
            },
        },
        ConfiguredInput = {
            type = "string",
            traits = {
                json_name = "configuredInput",
            },
        },
        DeviceState = {
            type = "string",
            traits = {
                json_name = "deviceState",
            },
        },
        Framerate = {
            type = "number",
            traits = {
                json_name = "framerate",
            },
        },
        Height = {
            type = "number",
            traits = {
                json_name = "height",
            },
        },
        MaxBitrate = {
            type = "number",
            traits = {
                json_name = "maxBitrate",
            },
        },
        ScanType = {
            type = "string",
            traits = {
                json_name = "scanType",
            },
        },
        Width = {
            type = "number",
            traits = {
                json_name = "width",
            },
        },
        LatencyMs = {
            type = "number",
            traits = {
                json_name = "latencyMs",
            },
        },
        Codec = {
            type = "string",
            traits = {
                json_name = "codec",
            },
        },
        MediaconnectSettings = {
            type = "structure",
            traits = {
                json_name = "mediaconnectSettings",
            },
        },
        AudioChannelPairs = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "audioChannelPairs",
            },
        },
        InputResolution = {
            type = "string",
            traits = {
                json_name = "inputResolution",
            },
        },
    },
}

M.InputDeviceSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        ConnectionState = {
            type = "string",
            traits = {
                json_name = "connectionState",
            },
        },
        DeviceSettingsSyncState = {
            type = "string",
            traits = {
                json_name = "deviceSettingsSyncState",
            },
        },
        DeviceUpdateStatus = {
            type = "string",
            traits = {
                json_name = "deviceUpdateStatus",
            },
        },
        HdDeviceSettings = {
            type = "structure",
            traits = {
                json_name = "hdDeviceSettings",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        MacAddress = {
            type = "string",
            traits = {
                json_name = "macAddress",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        NetworkSettings = {
            type = "structure",
            traits = {
                json_name = "networkSettings",
            },
        },
        SerialNumber = {
            type = "string",
            traits = {
                json_name = "serialNumber",
            },
        },
        Type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
        UhdDeviceSettings = {
            type = "structure",
            traits = {
                json_name = "uhdDeviceSettings",
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
        AvailabilityZone = {
            type = "string",
            traits = {
                json_name = "availabilityZone",
            },
        },
        MedialiveInputArns = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "medialiveInputArns",
            },
        },
        OutputType = {
            type = "string",
            traits = {
                json_name = "outputType",
            },
        },
    },
}

M.InputSecurityGroupState = {
    IDLE = "IDLE",
    IN_USE = "IN_USE",
    UPDATING = "UPDATING",
    DELETED = "DELETED",
}

M.InputWhitelistRule = {
    type = "structure",
    members = {
        Cidr = {
            type = "string",
            traits = {
                json_name = "cidr",
            },
        },
    },
}

M.InputSecurityGroup = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "inputs",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
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
        WhitelistRules = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "whitelistRules",
            },
        },
        Channels = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "channels",
            },
        },
    },
}

M.InputSourceRequest = {
    type = "structure",
    members = {
        PasswordParam = {
            type = "string",
            traits = {
                json_name = "passwordParam",
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

M.InputWhitelistRuleCidr = {
    type = "structure",
    members = {
        Cidr = {
            type = "string",
            traits = {
                json_name = "cidr",
            },
        },
    },
}

M.InterfaceMappingCreateRequest = {
    type = "structure",
    members = {
        LogicalInterfaceName = {
            type = "string",
            traits = {
                json_name = "logicalInterfaceName",
            },
        },
        NetworkId = {
            type = "string",
            traits = {
                json_name = "networkId",
            },
        },
    },
}

M.InterfaceMappingUpdateRequest = {
    type = "structure",
    members = {
        LogicalInterfaceName = {
            type = "string",
            traits = {
                json_name = "logicalInterfaceName",
            },
        },
        NetworkId = {
            type = "string",
            traits = {
                json_name = "networkId",
            },
        },
    },
}

M.IpPoolCreateRequest = {
    type = "structure",
    members = {
        Cidr = {
            type = "string",
            traits = {
                json_name = "cidr",
            },
        },
    },
}

M.IpPoolUpdateRequest = {
    type = "structure",
    members = {
        Cidr = {
            type = "string",
            traits = {
                json_name = "cidr",
            },
        },
    },
}

M.MediaConnectFlowRequest = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                json_name = "flowArn",
            },
        },
    },
}

M.MediaPackageAdditionalDestinations = {
    type = "structure",
    members = {
        Destination = {
            type = "structure",
            traits = {
                json_name = "destination",
                required = true,
            },
        },
    },
}

M.MediaResourceNeighbor = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
    },
}

M.MulticastSourceCreateRequest = {
    type = "structure",
    members = {
        SourceIp = {
            type = "string",
            traits = {
                json_name = "sourceIp",
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

M.MulticastSourceUpdateRequest = {
    type = "structure",
    members = {
        SourceIp = {
            type = "string",
            traits = {
                json_name = "sourceIp",
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

M.MultiplexAlertState = {
    SET = "SET",
    CLEARED = "CLEARED",
}

M.MultiplexAlert = {
    type = "structure",
    members = {
        AlertType = {
            type = "string",
            traits = {
                json_name = "alertType",
            },
        },
        ClearedTimestamp = {
            type = "timestamp",
            traits = {
                json_name = "clearedTimestamp",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
        PipelineId = {
            type = "string",
            traits = {
                json_name = "pipelineId",
            },
        },
        SetTimestamp = {
            type = "timestamp",
            traits = {
                json_name = "setTimestamp",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
    },
}

M.MultiplexMediaConnectOutputDestinationSettings = {
    type = "structure",
    members = {
        EntitlementArn = {
            type = "string",
            traits = {
                json_name = "entitlementArn",
            },
        },
    },
}

M.MultiplexOutputDestination = {
    type = "structure",
    members = {
        MediaConnectSettings = {
            type = "structure",
            traits = {
                json_name = "mediaConnectSettings",
            },
        },
    },
}

M.MultiplexProgramPipelineDetail = {
    type = "structure",
    members = {
        ActiveChannelPipeline = {
            type = "string",
            traits = {
                json_name = "activeChannelPipeline",
            },
        },
        PipelineId = {
            type = "string",
            traits = {
                json_name = "pipelineId",
            },
        },
    },
}

M.MultiplexProgramSummary = {
    type = "structure",
    members = {
        ChannelId = {
            type = "string",
            traits = {
                json_name = "channelId",
            },
        },
        ProgramName = {
            type = "string",
            traits = {
                json_name = "programName",
            },
        },
    },
}

M.MultiplexSettingsSummary = {
    type = "structure",
    members = {
        TransportStreamBitrate = {
            type = "number",
            traits = {
                json_name = "transportStreamBitrate",
            },
        },
    },
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

M.MultiplexSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        AvailabilityZones = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "availabilityZones",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        MultiplexSettings = {
            type = "structure",
            traits = {
                json_name = "multiplexSettings",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        PipelinesRunningCount = {
            type = "number",
            traits = {
                json_name = "pipelinesRunningCount",
            },
        },
        ProgramCount = {
            type = "number",
            traits = {
                json_name = "programCount",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
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

M.NodeInterfaceMappingCreateRequest = {
    type = "structure",
    members = {
        LogicalInterfaceName = {
            type = "string",
            traits = {
                json_name = "logicalInterfaceName",
            },
        },
        NetworkInterfaceMode = {
            type = "string",
            traits = {
                json_name = "networkInterfaceMode",
            },
        },
        PhysicalInterfaceName = {
            type = "string",
            traits = {
                json_name = "physicalInterfaceName",
            },
        },
    },
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

M.ReservationResourceSpecification = {
    type = "structure",
    members = {
        ChannelClass = {
            type = "string",
            traits = {
                json_name = "channelClass",
            },
        },
        Codec = {
            type = "string",
            traits = {
                json_name = "codec",
            },
        },
        MaximumBitrate = {
            type = "string",
            traits = {
                json_name = "maximumBitrate",
            },
        },
        MaximumFramerate = {
            type = "string",
            traits = {
                json_name = "maximumFramerate",
            },
        },
        Resolution = {
            type = "string",
            traits = {
                json_name = "resolution",
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                json_name = "resourceType",
            },
        },
        SpecialFeature = {
            type = "string",
            traits = {
                json_name = "specialFeature",
            },
        },
        VideoQuality = {
            type = "string",
            traits = {
                json_name = "videoQuality",
            },
        },
    },
}

M.Offering = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CurrencyCode = {
            type = "string",
            traits = {
                json_name = "currencyCode",
            },
        },
        Duration = {
            type = "number",
            traits = {
                json_name = "duration",
            },
        },
        DurationUnits = {
            type = "string",
            traits = {
                json_name = "durationUnits",
            },
        },
        FixedPrice = {
            type = "number",
            traits = {
                json_name = "fixedPrice",
            },
        },
        OfferingDescription = {
            type = "string",
            traits = {
                json_name = "offeringDescription",
            },
        },
        OfferingId = {
            type = "string",
            traits = {
                json_name = "offeringId",
            },
        },
        OfferingType = {
            type = "string",
            traits = {
                json_name = "offeringType",
            },
        },
        Region = {
            type = "string",
            traits = {
                json_name = "region",
            },
        },
        ResourceSpecification = {
            type = "structure",
            traits = {
                json_name = "resourceSpecification",
            },
        },
        UsagePrice = {
            type = "number",
            traits = {
                json_name = "usagePrice",
            },
        },
    },
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

M.DvbNitSettings = {
    type = "structure",
    members = {
        NetworkId = {
            type = "number",
            traits = {
                json_name = "networkId",
                required = true,
            },
        },
        NetworkName = {
            type = "string",
            traits = {
                json_name = "networkName",
                required = true,
            },
        },
        RepInterval = {
            type = "number",
            traits = {
                json_name = "repInterval",
            },
        },
    },
}

M.DvbSdtOutputSdt = {
    SDT_FOLLOW = "SDT_FOLLOW",
    SDT_FOLLOW_IF_PRESENT = "SDT_FOLLOW_IF_PRESENT",
    SDT_MANUAL = "SDT_MANUAL",
    SDT_NONE = "SDT_NONE",
}

M.DvbSdtSettings = {
    type = "structure",
    members = {
        OutputSdt = {
            type = "string",
            traits = {
                json_name = "outputSdt",
            },
        },
        RepInterval = {
            type = "number",
            traits = {
                json_name = "repInterval",
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
    members = {
        RepInterval = {
            type = "number",
            traits = {
                json_name = "repInterval",
            },
        },
    },
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

M.M2tsSettings = {
    type = "structure",
    members = {
        AbsentInputAudioBehavior = {
            type = "string",
            traits = {
                json_name = "absentInputAudioBehavior",
            },
        },
        Arib = {
            type = "string",
            traits = {
                json_name = "arib",
            },
        },
        AribCaptionsPid = {
            type = "string",
            traits = {
                json_name = "aribCaptionsPid",
            },
        },
        AribCaptionsPidControl = {
            type = "string",
            traits = {
                json_name = "aribCaptionsPidControl",
            },
        },
        AudioBufferModel = {
            type = "string",
            traits = {
                json_name = "audioBufferModel",
            },
        },
        AudioFramesPerPes = {
            type = "number",
            traits = {
                json_name = "audioFramesPerPes",
            },
        },
        AudioPids = {
            type = "string",
            traits = {
                json_name = "audioPids",
            },
        },
        AudioStreamType = {
            type = "string",
            traits = {
                json_name = "audioStreamType",
            },
        },
        Bitrate = {
            type = "number",
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
        CcDescriptor = {
            type = "string",
            traits = {
                json_name = "ccDescriptor",
            },
        },
        DvbNitSettings = {
            type = "structure",
            traits = {
                json_name = "dvbNitSettings",
            },
        },
        DvbSdtSettings = {
            type = "structure",
            traits = {
                json_name = "dvbSdtSettings",
            },
        },
        DvbSubPids = {
            type = "string",
            traits = {
                json_name = "dvbSubPids",
            },
        },
        DvbTdtSettings = {
            type = "structure",
            traits = {
                json_name = "dvbTdtSettings",
            },
        },
        DvbTeletextPid = {
            type = "string",
            traits = {
                json_name = "dvbTeletextPid",
            },
        },
        Ebif = {
            type = "string",
            traits = {
                json_name = "ebif",
            },
        },
        EbpAudioInterval = {
            type = "string",
            traits = {
                json_name = "ebpAudioInterval",
            },
        },
        EbpLookaheadMs = {
            type = "number",
            traits = {
                json_name = "ebpLookaheadMs",
            },
        },
        EbpPlacement = {
            type = "string",
            traits = {
                json_name = "ebpPlacement",
            },
        },
        EcmPid = {
            type = "string",
            traits = {
                json_name = "ecmPid",
            },
        },
        EsRateInPes = {
            type = "string",
            traits = {
                json_name = "esRateInPes",
            },
        },
        EtvPlatformPid = {
            type = "string",
            traits = {
                json_name = "etvPlatformPid",
            },
        },
        EtvSignalPid = {
            type = "string",
            traits = {
                json_name = "etvSignalPid",
            },
        },
        FragmentTime = {
            type = "number",
            traits = {
                json_name = "fragmentTime",
            },
        },
        Klv = {
            type = "string",
            traits = {
                json_name = "klv",
            },
        },
        KlvDataPids = {
            type = "string",
            traits = {
                json_name = "klvDataPids",
            },
        },
        NielsenId3Behavior = {
            type = "string",
            traits = {
                json_name = "nielsenId3Behavior",
            },
        },
        NullPacketBitrate = {
            type = "number",
            traits = {
                json_name = "nullPacketBitrate",
            },
        },
        PatInterval = {
            type = "number",
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
        PcrPeriod = {
            type = "number",
            traits = {
                json_name = "pcrPeriod",
            },
        },
        PcrPid = {
            type = "string",
            traits = {
                json_name = "pcrPid",
            },
        },
        PmtInterval = {
            type = "number",
            traits = {
                json_name = "pmtInterval",
            },
        },
        PmtPid = {
            type = "string",
            traits = {
                json_name = "pmtPid",
            },
        },
        ProgramNum = {
            type = "number",
            traits = {
                json_name = "programNum",
            },
        },
        RateMode = {
            type = "string",
            traits = {
                json_name = "rateMode",
            },
        },
        Scte27Pids = {
            type = "string",
            traits = {
                json_name = "scte27Pids",
            },
        },
        Scte35Control = {
            type = "string",
            traits = {
                json_name = "scte35Control",
            },
        },
        Scte35Pid = {
            type = "string",
            traits = {
                json_name = "scte35Pid",
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
            type = "number",
            traits = {
                json_name = "segmentationTime",
            },
        },
        TimedMetadataBehavior = {
            type = "string",
            traits = {
                json_name = "timedMetadataBehavior",
            },
        },
        TimedMetadataPid = {
            type = "string",
            traits = {
                json_name = "timedMetadataPid",
            },
        },
        TransportStreamId = {
            type = "number",
            traits = {
                json_name = "transportStreamId",
            },
        },
        VideoPid = {
            type = "string",
            traits = {
                json_name = "videoPid",
            },
        },
        Scte35PrerollPullupMilliseconds = {
            type = "number",
            traits = {
                json_name = "scte35PrerollPullupMilliseconds",
            },
        },
    },
}

M.RawSettings = {
    type = "structure",
}

M.ArchiveContainerSettings = {
    type = "structure",
    members = {
        M2tsSettings = {
            type = "structure",
            traits = {
                json_name = "m2tsSettings",
            },
        },
        RawSettings = {
            type = "structure",
            traits = {
                json_name = "rawSettings",
            },
        },
    },
}

M.ArchiveOutputSettings = {
    type = "structure",
    members = {
        ContainerSettings = {
            type = "structure",
            traits = {
                json_name = "containerSettings",
                required = true,
            },
        },
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
    },
}

M.CmafIngestOutputSettings = {
    type = "structure",
    members = {
        NameModifier = {
            type = "string",
            traits = {
                json_name = "nameModifier",
            },
        },
    },
}

M.FrameCaptureOutputSettings = {
    type = "structure",
    members = {
        NameModifier = {
            type = "string",
            traits = {
                json_name = "nameModifier",
            },
        },
    },
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

M.AudioOnlyHlsSettings = {
    type = "structure",
    members = {
        AudioGroupId = {
            type = "string",
            traits = {
                json_name = "audioGroupId",
            },
        },
        AudioOnlyImage = {
            type = "structure",
            traits = {
                json_name = "audioOnlyImage",
            },
        },
        AudioTrackType = {
            type = "string",
            traits = {
                json_name = "audioTrackType",
            },
        },
        SegmentType = {
            type = "string",
            traits = {
                json_name = "segmentType",
            },
        },
    },
}

M.Fmp4NielsenId3Behavior = {
    NO_PASSTHROUGH = "NO_PASSTHROUGH",
    PASSTHROUGH = "PASSTHROUGH",
}

M.Fmp4TimedMetadataBehavior = {
    NO_PASSTHROUGH = "NO_PASSTHROUGH",
    PASSTHROUGH = "PASSTHROUGH",
}

M.Fmp4HlsSettings = {
    type = "structure",
    members = {
        AudioRenditionSets = {
            type = "string",
            traits = {
                json_name = "audioRenditionSets",
            },
        },
        NielsenId3Behavior = {
            type = "string",
            traits = {
                json_name = "nielsenId3Behavior",
            },
        },
        TimedMetadataBehavior = {
            type = "string",
            traits = {
                json_name = "timedMetadataBehavior",
            },
        },
    },
}

M.FrameCaptureHlsSettings = {
    type = "structure",
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

M.M3u8Settings = {
    type = "structure",
    members = {
        AudioFramesPerPes = {
            type = "number",
            traits = {
                json_name = "audioFramesPerPes",
            },
        },
        AudioPids = {
            type = "string",
            traits = {
                json_name = "audioPids",
            },
        },
        EcmPid = {
            type = "string",
            traits = {
                json_name = "ecmPid",
            },
        },
        NielsenId3Behavior = {
            type = "string",
            traits = {
                json_name = "nielsenId3Behavior",
            },
        },
        PatInterval = {
            type = "number",
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
        PcrPeriod = {
            type = "number",
            traits = {
                json_name = "pcrPeriod",
            },
        },
        PcrPid = {
            type = "string",
            traits = {
                json_name = "pcrPid",
            },
        },
        PmtInterval = {
            type = "number",
            traits = {
                json_name = "pmtInterval",
            },
        },
        PmtPid = {
            type = "string",
            traits = {
                json_name = "pmtPid",
            },
        },
        ProgramNum = {
            type = "number",
            traits = {
                json_name = "programNum",
            },
        },
        Scte35Behavior = {
            type = "string",
            traits = {
                json_name = "scte35Behavior",
            },
        },
        Scte35Pid = {
            type = "string",
            traits = {
                json_name = "scte35Pid",
            },
        },
        TimedMetadataBehavior = {
            type = "string",
            traits = {
                json_name = "timedMetadataBehavior",
            },
        },
        TimedMetadataPid = {
            type = "string",
            traits = {
                json_name = "timedMetadataPid",
            },
        },
        TransportStreamId = {
            type = "number",
            traits = {
                json_name = "transportStreamId",
            },
        },
        VideoPid = {
            type = "string",
            traits = {
                json_name = "videoPid",
            },
        },
        KlvBehavior = {
            type = "string",
            traits = {
                json_name = "klvBehavior",
            },
        },
        KlvDataPids = {
            type = "string",
            traits = {
                json_name = "klvDataPids",
            },
        },
    },
}

M.StandardHlsSettings = {
    type = "structure",
    members = {
        AudioRenditionSets = {
            type = "string",
            traits = {
                json_name = "audioRenditionSets",
            },
        },
        M3u8Settings = {
            type = "structure",
            traits = {
                json_name = "m3u8Settings",
                required = true,
            },
        },
    },
}

M.HlsSettings = {
    type = "structure",
    members = {
        AudioOnlyHlsSettings = {
            type = "structure",
            traits = {
                json_name = "audioOnlyHlsSettings",
            },
        },
        Fmp4HlsSettings = {
            type = "structure",
            traits = {
                json_name = "fmp4HlsSettings",
            },
        },
        FrameCaptureHlsSettings = {
            type = "structure",
            traits = {
                json_name = "frameCaptureHlsSettings",
            },
        },
        StandardHlsSettings = {
            type = "structure",
            traits = {
                json_name = "standardHlsSettings",
            },
        },
    },
}

M.HlsOutputSettings = {
    type = "structure",
    members = {
        H265PackagingType = {
            type = "string",
            traits = {
                json_name = "h265PackagingType",
            },
        },
        HlsSettings = {
            type = "structure",
            traits = {
                json_name = "hlsSettings",
                required = true,
            },
        },
        NameModifier = {
            type = "string",
            traits = {
                json_name = "nameModifier",
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

M.MediaConnectRouterOutputConnectionMap = {
    type = "structure",
    members = {
        Pipeline0 = {
            type = "string",
            traits = {
                json_name = "pipeline0",
            },
        },
        Pipeline1 = {
            type = "string",
            traits = {
                json_name = "pipeline1",
            },
        },
    },
}

M.MediaConnectRouterContainerSettings = {
    type = "structure",
    members = {
        M2tsSettings = {
            type = "structure",
            traits = {
                json_name = "m2tsSettings",
            },
        },
    },
}

M.MediaConnectRouterOutputSettings = {
    type = "structure",
    members = {
        ConnectedRouterInputs = {
            type = "structure",
            traits = {
                json_name = "connectedRouterInputs",
            },
        },
        ContainerSettings = {
            type = "structure",
            traits = {
                json_name = "containerSettings",
                required = true,
            },
        },
        Destination = {
            type = "structure",
            traits = {
                json_name = "destination",
                required = true,
            },
        },
    },
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

M.MediaPackageV2DestinationSettings = {
    type = "structure",
    members = {
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
        HlsAutoSelect = {
            type = "string",
            traits = {
                json_name = "hlsAutoSelect",
            },
        },
        HlsDefault = {
            type = "string",
            traits = {
                json_name = "hlsDefault",
            },
        },
    },
}

M.MediaPackageOutputSettings = {
    type = "structure",
    members = {
        MediaPackageV2DestinationSettings = {
            type = "structure",
            traits = {
                json_name = "mediaPackageV2DestinationSettings",
            },
        },
    },
}

M.MsSmoothH265PackagingType = {
    HEV1 = "HEV1",
    HVC1 = "HVC1",
}

M.MsSmoothOutputSettings = {
    type = "structure",
    members = {
        H265PackagingType = {
            type = "string",
            traits = {
                json_name = "h265PackagingType",
            },
        },
        NameModifier = {
            type = "string",
            traits = {
                json_name = "nameModifier",
            },
        },
    },
}

M.MultiplexM2tsSettings = {
    type = "structure",
    members = {
        AbsentInputAudioBehavior = {
            type = "string",
            traits = {
                json_name = "absentInputAudioBehavior",
            },
        },
        Arib = {
            type = "string",
            traits = {
                json_name = "arib",
            },
        },
        AudioBufferModel = {
            type = "string",
            traits = {
                json_name = "audioBufferModel",
            },
        },
        AudioFramesPerPes = {
            type = "number",
            traits = {
                json_name = "audioFramesPerPes",
            },
        },
        AudioStreamType = {
            type = "string",
            traits = {
                json_name = "audioStreamType",
            },
        },
        CcDescriptor = {
            type = "string",
            traits = {
                json_name = "ccDescriptor",
            },
        },
        Ebif = {
            type = "string",
            traits = {
                json_name = "ebif",
            },
        },
        EsRateInPes = {
            type = "string",
            traits = {
                json_name = "esRateInPes",
            },
        },
        Klv = {
            type = "string",
            traits = {
                json_name = "klv",
            },
        },
        NielsenId3Behavior = {
            type = "string",
            traits = {
                json_name = "nielsenId3Behavior",
            },
        },
        PcrControl = {
            type = "string",
            traits = {
                json_name = "pcrControl",
            },
        },
        PcrPeriod = {
            type = "number",
            traits = {
                json_name = "pcrPeriod",
            },
        },
        Scte35Control = {
            type = "string",
            traits = {
                json_name = "scte35Control",
            },
        },
        Scte35PrerollPullupMilliseconds = {
            type = "number",
            traits = {
                json_name = "scte35PrerollPullupMilliseconds",
            },
        },
    },
}

M.MultiplexContainerSettings = {
    type = "structure",
    members = {
        MultiplexM2tsSettings = {
            type = "structure",
            traits = {
                json_name = "multiplexM2tsSettings",
            },
        },
    },
}

M.MultiplexOutputSettings = {
    type = "structure",
    members = {
        Destination = {
            type = "structure",
            traits = {
                json_name = "destination",
                required = true,
            },
        },
        ContainerSettings = {
            type = "structure",
            traits = {
                json_name = "containerSettings",
            },
        },
    },
}

M.RtmpOutputCertificateMode = {
    SELF_SIGNED = "SELF_SIGNED",
    VERIFY_AUTHENTICITY = "VERIFY_AUTHENTICITY",
}

M.RtmpOutputSettings = {
    type = "structure",
    members = {
        CertificateMode = {
            type = "string",
            traits = {
                json_name = "certificateMode",
            },
        },
        ConnectionRetryInterval = {
            type = "number",
            traits = {
                json_name = "connectionRetryInterval",
            },
        },
        Destination = {
            type = "structure",
            traits = {
                json_name = "destination",
                required = true,
            },
        },
        NumRetries = {
            type = "number",
            traits = {
                json_name = "numRetries",
            },
        },
    },
}

M.UdpContainerSettings = {
    type = "structure",
    members = {
        M2tsSettings = {
            type = "structure",
            traits = {
                json_name = "m2tsSettings",
            },
        },
    },
}

M.SrtEncryptionType = {
    AES128 = "AES128",
    AES192 = "AES192",
    AES256 = "AES256",
}

M.SrtOutputSettings = {
    type = "structure",
    members = {
        BufferMsec = {
            type = "number",
            traits = {
                json_name = "bufferMsec",
            },
        },
        ContainerSettings = {
            type = "structure",
            traits = {
                json_name = "containerSettings",
                required = true,
            },
        },
        Destination = {
            type = "structure",
            traits = {
                json_name = "destination",
                required = true,
            },
        },
        EncryptionType = {
            type = "string",
            traits = {
                json_name = "encryptionType",
            },
        },
        Latency = {
            type = "number",
            traits = {
                json_name = "latency",
            },
        },
    },
}

M.FecOutputIncludeFec = {
    COLUMN = "COLUMN",
    COLUMN_AND_ROW = "COLUMN_AND_ROW",
}

M.FecOutputSettings = {
    type = "structure",
    members = {
        ColumnDepth = {
            type = "number",
            traits = {
                json_name = "columnDepth",
            },
        },
        IncludeFec = {
            type = "string",
            traits = {
                json_name = "includeFec",
            },
        },
        RowLength = {
            type = "number",
            traits = {
                json_name = "rowLength",
            },
        },
    },
}

M.UdpOutputSettings = {
    type = "structure",
    members = {
        BufferMsec = {
            type = "number",
            traits = {
                json_name = "bufferMsec",
            },
        },
        ContainerSettings = {
            type = "structure",
            traits = {
                json_name = "containerSettings",
                required = true,
            },
        },
        Destination = {
            type = "structure",
            traits = {
                json_name = "destination",
                required = true,
            },
        },
        FecOutputSettings = {
            type = "structure",
            traits = {
                json_name = "fecOutputSettings",
            },
        },
    },
}

M.OutputSettings = {
    type = "structure",
    members = {
        ArchiveOutputSettings = {
            type = "structure",
            traits = {
                json_name = "archiveOutputSettings",
            },
        },
        FrameCaptureOutputSettings = {
            type = "structure",
            traits = {
                json_name = "frameCaptureOutputSettings",
            },
        },
        HlsOutputSettings = {
            type = "structure",
            traits = {
                json_name = "hlsOutputSettings",
            },
        },
        MediaPackageOutputSettings = {
            type = "structure",
            traits = {
                json_name = "mediaPackageOutputSettings",
            },
        },
        MsSmoothOutputSettings = {
            type = "structure",
            traits = {
                json_name = "msSmoothOutputSettings",
            },
        },
        MultiplexOutputSettings = {
            type = "structure",
            traits = {
                json_name = "multiplexOutputSettings",
            },
        },
        RtmpOutputSettings = {
            type = "structure",
            traits = {
                json_name = "rtmpOutputSettings",
            },
        },
        UdpOutputSettings = {
            type = "structure",
            traits = {
                json_name = "udpOutputSettings",
            },
        },
        CmafIngestOutputSettings = {
            type = "structure",
            traits = {
                json_name = "cmafIngestOutputSettings",
            },
        },
        SrtOutputSettings = {
            type = "structure",
            traits = {
                json_name = "srtOutputSettings",
            },
        },
        MediaConnectRouterOutputSettings = {
            type = "structure",
            traits = {
                json_name = "mediaConnectRouterOutputSettings",
            },
        },
    },
}

M.Output = {
    type = "structure",
    members = {
        AudioDescriptionNames = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "audioDescriptionNames",
            },
        },
        CaptionDescriptionNames = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "captionDescriptionNames",
            },
        },
        OutputName = {
            type = "string",
            traits = {
                json_name = "outputName",
            },
        },
        OutputSettings = {
            type = "structure",
            traits = {
                json_name = "outputSettings",
                required = true,
            },
        },
        VideoDescriptionName = {
            type = "string",
            traits = {
                json_name = "videoDescriptionName",
            },
        },
    },
}

M.S3CannedAcl = {
    AUTHENTICATED_READ = "AUTHENTICATED_READ",
    BUCKET_OWNER_FULL_CONTROL = "BUCKET_OWNER_FULL_CONTROL",
    BUCKET_OWNER_READ = "BUCKET_OWNER_READ",
    PUBLIC_READ = "PUBLIC_READ",
}

M.ArchiveS3Settings = {
    type = "structure",
    members = {
        CannedAcl = {
            type = "string",
            traits = {
                json_name = "cannedAcl",
            },
        },
    },
}

M.ArchiveCdnSettings = {
    type = "structure",
    members = {
        ArchiveS3Settings = {
            type = "structure",
            traits = {
                json_name = "archiveS3Settings",
            },
        },
    },
}

M.ArchiveGroupSettings = {
    type = "structure",
    members = {
        ArchiveCdnSettings = {
            type = "structure",
            traits = {
                json_name = "archiveCdnSettings",
            },
        },
        Destination = {
            type = "structure",
            traits = {
                json_name = "destination",
                required = true,
            },
        },
        RolloverInterval = {
            type = "number",
            traits = {
                json_name = "rolloverInterval",
            },
        },
    },
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

M.CmafIngestGroupSettings = {
    type = "structure",
    members = {
        Destination = {
            type = "structure",
            traits = {
                json_name = "destination",
                required = true,
            },
        },
        NielsenId3Behavior = {
            type = "string",
            traits = {
                json_name = "nielsenId3Behavior",
            },
        },
        Scte35Type = {
            type = "string",
            traits = {
                json_name = "scte35Type",
            },
        },
        SegmentLength = {
            type = "number",
            traits = {
                json_name = "segmentLength",
            },
        },
        SegmentLengthUnits = {
            type = "string",
            traits = {
                json_name = "segmentLengthUnits",
            },
        },
        SendDelayMs = {
            type = "number",
            traits = {
                json_name = "sendDelayMs",
            },
        },
        KlvBehavior = {
            type = "string",
            traits = {
                json_name = "klvBehavior",
            },
        },
        KlvNameModifier = {
            type = "string",
            traits = {
                json_name = "klvNameModifier",
            },
        },
        NielsenId3NameModifier = {
            type = "string",
            traits = {
                json_name = "nielsenId3NameModifier",
            },
        },
        Scte35NameModifier = {
            type = "string",
            traits = {
                json_name = "scte35NameModifier",
            },
        },
        Id3Behavior = {
            type = "string",
            traits = {
                json_name = "id3Behavior",
            },
        },
        Id3NameModifier = {
            type = "string",
            traits = {
                json_name = "id3NameModifier",
            },
        },
        CaptionLanguageMappings = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "captionLanguageMappings",
            },
        },
        TimedMetadataId3Frame = {
            type = "string",
            traits = {
                json_name = "timedMetadataId3Frame",
            },
        },
        TimedMetadataId3Period = {
            type = "number",
            traits = {
                json_name = "timedMetadataId3Period",
            },
        },
        TimedMetadataPassthrough = {
            type = "string",
            traits = {
                json_name = "timedMetadataPassthrough",
            },
        },
        AdditionalDestinations = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "additionalDestinations",
            },
        },
    },
}

M.FrameCaptureS3Settings = {
    type = "structure",
    members = {
        CannedAcl = {
            type = "string",
            traits = {
                json_name = "cannedAcl",
            },
        },
    },
}

M.FrameCaptureCdnSettings = {
    type = "structure",
    members = {
        FrameCaptureS3Settings = {
            type = "structure",
            traits = {
                json_name = "frameCaptureS3Settings",
            },
        },
    },
}

M.FrameCaptureGroupSettings = {
    type = "structure",
    members = {
        Destination = {
            type = "structure",
            traits = {
                json_name = "destination",
                required = true,
            },
        },
        FrameCaptureCdnSettings = {
            type = "structure",
            traits = {
                json_name = "frameCaptureCdnSettings",
            },
        },
    },
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

M.HlsAkamaiSettings = {
    type = "structure",
    members = {
        ConnectionRetryInterval = {
            type = "number",
            traits = {
                json_name = "connectionRetryInterval",
            },
        },
        FilecacheDuration = {
            type = "number",
            traits = {
                json_name = "filecacheDuration",
            },
        },
        HttpTransferMode = {
            type = "string",
            traits = {
                json_name = "httpTransferMode",
            },
        },
        NumRetries = {
            type = "number",
            traits = {
                json_name = "numRetries",
            },
        },
        RestartDelay = {
            type = "number",
            traits = {
                json_name = "restartDelay",
            },
        },
        Salt = {
            type = "string",
            traits = {
                json_name = "salt",
            },
        },
        Token = {
            type = "string",
            traits = {
                json_name = "token",
            },
        },
    },
}

M.HlsBasicPutSettings = {
    type = "structure",
    members = {
        ConnectionRetryInterval = {
            type = "number",
            traits = {
                json_name = "connectionRetryInterval",
            },
        },
        FilecacheDuration = {
            type = "number",
            traits = {
                json_name = "filecacheDuration",
            },
        },
        NumRetries = {
            type = "number",
            traits = {
                json_name = "numRetries",
            },
        },
        RestartDelay = {
            type = "number",
            traits = {
                json_name = "restartDelay",
            },
        },
    },
}

M.HlsMediaStoreStorageClass = {
    TEMPORAL = "TEMPORAL",
}

M.HlsMediaStoreSettings = {
    type = "structure",
    members = {
        ConnectionRetryInterval = {
            type = "number",
            traits = {
                json_name = "connectionRetryInterval",
            },
        },
        FilecacheDuration = {
            type = "number",
            traits = {
                json_name = "filecacheDuration",
            },
        },
        MediaStoreStorageClass = {
            type = "string",
            traits = {
                json_name = "mediaStoreStorageClass",
            },
        },
        NumRetries = {
            type = "number",
            traits = {
                json_name = "numRetries",
            },
        },
        RestartDelay = {
            type = "number",
            traits = {
                json_name = "restartDelay",
            },
        },
    },
}

M.HlsS3Settings = {
    type = "structure",
    members = {
        CannedAcl = {
            type = "string",
            traits = {
                json_name = "cannedAcl",
            },
        },
    },
}

M.HlsWebdavHttpTransferMode = {
    CHUNKED = "CHUNKED",
    NON_CHUNKED = "NON_CHUNKED",
}

M.HlsWebdavSettings = {
    type = "structure",
    members = {
        ConnectionRetryInterval = {
            type = "number",
            traits = {
                json_name = "connectionRetryInterval",
            },
        },
        FilecacheDuration = {
            type = "number",
            traits = {
                json_name = "filecacheDuration",
            },
        },
        HttpTransferMode = {
            type = "string",
            traits = {
                json_name = "httpTransferMode",
            },
        },
        NumRetries = {
            type = "number",
            traits = {
                json_name = "numRetries",
            },
        },
        RestartDelay = {
            type = "number",
            traits = {
                json_name = "restartDelay",
            },
        },
    },
}

M.HlsCdnSettings = {
    type = "structure",
    members = {
        HlsAkamaiSettings = {
            type = "structure",
            traits = {
                json_name = "hlsAkamaiSettings",
            },
        },
        HlsBasicPutSettings = {
            type = "structure",
            traits = {
                json_name = "hlsBasicPutSettings",
            },
        },
        HlsMediaStoreSettings = {
            type = "structure",
            traits = {
                json_name = "hlsMediaStoreSettings",
            },
        },
        HlsS3Settings = {
            type = "structure",
            traits = {
                json_name = "hlsS3Settings",
            },
        },
        HlsWebdavSettings = {
            type = "structure",
            traits = {
                json_name = "hlsWebdavSettings",
            },
        },
    },
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

M.StaticKeySettings = {
    type = "structure",
    members = {
        KeyProviderServer = {
            type = "structure",
            traits = {
                json_name = "keyProviderServer",
            },
        },
        StaticKeyValue = {
            type = "string",
            traits = {
                json_name = "staticKeyValue",
                required = true,
            },
        },
    },
}

M.KeyProviderSettings = {
    type = "structure",
    members = {
        StaticKeySettings = {
            type = "structure",
            traits = {
                json_name = "staticKeySettings",
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

M.HlsGroupSettings = {
    type = "structure",
    members = {
        AdMarkers = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "adMarkers",
            },
        },
        BaseUrlContent = {
            type = "string",
            traits = {
                json_name = "baseUrlContent",
            },
        },
        BaseUrlContent1 = {
            type = "string",
            traits = {
                json_name = "baseUrlContent1",
            },
        },
        BaseUrlManifest = {
            type = "string",
            traits = {
                json_name = "baseUrlManifest",
            },
        },
        BaseUrlManifest1 = {
            type = "string",
            traits = {
                json_name = "baseUrlManifest1",
            },
        },
        CaptionLanguageMappings = {
            type = "list",
            member_type = "structure",
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
        ConstantIv = {
            type = "string",
            traits = {
                json_name = "constantIv",
            },
        },
        Destination = {
            type = "structure",
            traits = {
                json_name = "destination",
                required = true,
            },
        },
        DirectoryStructure = {
            type = "string",
            traits = {
                json_name = "directoryStructure",
            },
        },
        DiscontinuityTags = {
            type = "string",
            traits = {
                json_name = "discontinuityTags",
            },
        },
        EncryptionType = {
            type = "string",
            traits = {
                json_name = "encryptionType",
            },
        },
        HlsCdnSettings = {
            type = "structure",
            traits = {
                json_name = "hlsCdnSettings",
            },
        },
        HlsId3SegmentTagging = {
            type = "string",
            traits = {
                json_name = "hlsId3SegmentTagging",
            },
        },
        IFrameOnlyPlaylists = {
            type = "string",
            traits = {
                json_name = "iFrameOnlyPlaylists",
            },
        },
        IncompleteSegmentBehavior = {
            type = "string",
            traits = {
                json_name = "incompleteSegmentBehavior",
            },
        },
        IndexNSegments = {
            type = "number",
            traits = {
                json_name = "indexNSegments",
            },
        },
        InputLossAction = {
            type = "string",
            traits = {
                json_name = "inputLossAction",
            },
        },
        IvInManifest = {
            type = "string",
            traits = {
                json_name = "ivInManifest",
            },
        },
        IvSource = {
            type = "string",
            traits = {
                json_name = "ivSource",
            },
        },
        KeepSegments = {
            type = "number",
            traits = {
                json_name = "keepSegments",
            },
        },
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
        KeyProviderSettings = {
            type = "structure",
            traits = {
                json_name = "keyProviderSettings",
            },
        },
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
        MinSegmentLength = {
            type = "number",
            traits = {
                json_name = "minSegmentLength",
            },
        },
        Mode = {
            type = "string",
            traits = {
                json_name = "mode",
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
        ProgramDateTimeClock = {
            type = "string",
            traits = {
                json_name = "programDateTimeClock",
            },
        },
        ProgramDateTimePeriod = {
            type = "number",
            traits = {
                json_name = "programDateTimePeriod",
            },
        },
        RedundantManifest = {
            type = "string",
            traits = {
                json_name = "redundantManifest",
            },
        },
        SegmentLength = {
            type = "number",
            traits = {
                json_name = "segmentLength",
            },
        },
        SegmentationMode = {
            type = "string",
            traits = {
                json_name = "segmentationMode",
            },
        },
        SegmentsPerSubdirectory = {
            type = "number",
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
        TimedMetadataId3Frame = {
            type = "string",
            traits = {
                json_name = "timedMetadataId3Frame",
            },
        },
        TimedMetadataId3Period = {
            type = "number",
            traits = {
                json_name = "timedMetadataId3Period",
            },
        },
        TimestampDeltaMilliseconds = {
            type = "number",
            traits = {
                json_name = "timestampDeltaMilliseconds",
            },
        },
        TsFileMode = {
            type = "string",
            traits = {
                json_name = "tsFileMode",
            },
        },
    },
}

M.MediaConnectRouterGroupSettings = {
    type = "structure",
    members = {
        AvailabilityZones = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "availabilityZones",
            },
        },
    },
}

M.MediaPackageV2GroupSettings = {
    type = "structure",
    members = {
        CaptionLanguageMappings = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "captionLanguageMappings",
            },
        },
        Id3Behavior = {
            type = "string",
            traits = {
                json_name = "id3Behavior",
            },
        },
        KlvBehavior = {
            type = "string",
            traits = {
                json_name = "klvBehavior",
            },
        },
        NielsenId3Behavior = {
            type = "string",
            traits = {
                json_name = "nielsenId3Behavior",
            },
        },
        Scte35Type = {
            type = "string",
            traits = {
                json_name = "scte35Type",
            },
        },
        SegmentLength = {
            type = "number",
            traits = {
                json_name = "segmentLength",
            },
        },
        SegmentLengthUnits = {
            type = "string",
            traits = {
                json_name = "segmentLengthUnits",
            },
        },
        TimedMetadataId3Frame = {
            type = "string",
            traits = {
                json_name = "timedMetadataId3Frame",
            },
        },
        TimedMetadataId3Period = {
            type = "number",
            traits = {
                json_name = "timedMetadataId3Period",
            },
        },
        TimedMetadataPassthrough = {
            type = "string",
            traits = {
                json_name = "timedMetadataPassthrough",
            },
        },
        AdditionalDestinations = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "additionalDestinations",
            },
        },
    },
}

M.MediaPackageGroupSettings = {
    type = "structure",
    members = {
        Destination = {
            type = "structure",
            traits = {
                json_name = "destination",
                required = true,
            },
        },
        MediapackageV2GroupSettings = {
            type = "structure",
            traits = {
                json_name = "mediapackageV2GroupSettings",
            },
        },
    },
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

M.MsSmoothGroupSettings = {
    type = "structure",
    members = {
        AcquisitionPointId = {
            type = "string",
            traits = {
                json_name = "acquisitionPointId",
            },
        },
        AudioOnlyTimecodeControl = {
            type = "string",
            traits = {
                json_name = "audioOnlyTimecodeControl",
            },
        },
        CertificateMode = {
            type = "string",
            traits = {
                json_name = "certificateMode",
            },
        },
        ConnectionRetryInterval = {
            type = "number",
            traits = {
                json_name = "connectionRetryInterval",
            },
        },
        Destination = {
            type = "structure",
            traits = {
                json_name = "destination",
                required = true,
            },
        },
        EventId = {
            type = "string",
            traits = {
                json_name = "eventId",
            },
        },
        EventIdMode = {
            type = "string",
            traits = {
                json_name = "eventIdMode",
            },
        },
        EventStopBehavior = {
            type = "string",
            traits = {
                json_name = "eventStopBehavior",
            },
        },
        FilecacheDuration = {
            type = "number",
            traits = {
                json_name = "filecacheDuration",
            },
        },
        FragmentLength = {
            type = "number",
            traits = {
                json_name = "fragmentLength",
            },
        },
        InputLossAction = {
            type = "string",
            traits = {
                json_name = "inputLossAction",
            },
        },
        NumRetries = {
            type = "number",
            traits = {
                json_name = "numRetries",
            },
        },
        RestartDelay = {
            type = "number",
            traits = {
                json_name = "restartDelay",
            },
        },
        SegmentationMode = {
            type = "string",
            traits = {
                json_name = "segmentationMode",
            },
        },
        SendDelayMs = {
            type = "number",
            traits = {
                json_name = "sendDelayMs",
            },
        },
        SparseTrackType = {
            type = "string",
            traits = {
                json_name = "sparseTrackType",
            },
        },
        StreamManifestBehavior = {
            type = "string",
            traits = {
                json_name = "streamManifestBehavior",
            },
        },
        TimestampOffset = {
            type = "string",
            traits = {
                json_name = "timestampOffset",
            },
        },
        TimestampOffsetMode = {
            type = "string",
            traits = {
                json_name = "timestampOffsetMode",
            },
        },
    },
}

M.MultiplexGroupSettings = {
    type = "structure",
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

M.RtmpGroupSettings = {
    type = "structure",
    members = {
        AdMarkers = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "adMarkers",
            },
        },
        AuthenticationScheme = {
            type = "string",
            traits = {
                json_name = "authenticationScheme",
            },
        },
        CacheFullBehavior = {
            type = "string",
            traits = {
                json_name = "cacheFullBehavior",
            },
        },
        CacheLength = {
            type = "number",
            traits = {
                json_name = "cacheLength",
            },
        },
        CaptionData = {
            type = "string",
            traits = {
                json_name = "captionData",
            },
        },
        InputLossAction = {
            type = "string",
            traits = {
                json_name = "inputLossAction",
            },
        },
        RestartDelay = {
            type = "number",
            traits = {
                json_name = "restartDelay",
            },
        },
        IncludeFillerNalUnits = {
            type = "string",
            traits = {
                json_name = "includeFillerNalUnits",
            },
        },
    },
}

M.InputLossActionForUdpOut = {
    DROP_PROGRAM = "DROP_PROGRAM",
    DROP_TS = "DROP_TS",
    EMIT_PROGRAM = "EMIT_PROGRAM",
}

M.SrtGroupSettings = {
    type = "structure",
    members = {
        InputLossAction = {
            type = "string",
            traits = {
                json_name = "inputLossAction",
            },
        },
    },
}

M.UdpTimedMetadataId3Frame = {
    NONE = "NONE",
    PRIV = "PRIV",
    TDRL = "TDRL",
}

M.UdpGroupSettings = {
    type = "structure",
    members = {
        InputLossAction = {
            type = "string",
            traits = {
                json_name = "inputLossAction",
            },
        },
        TimedMetadataId3Frame = {
            type = "string",
            traits = {
                json_name = "timedMetadataId3Frame",
            },
        },
        TimedMetadataId3Period = {
            type = "number",
            traits = {
                json_name = "timedMetadataId3Period",
            },
        },
    },
}

M.OutputGroupSettings = {
    type = "structure",
    members = {
        ArchiveGroupSettings = {
            type = "structure",
            traits = {
                json_name = "archiveGroupSettings",
            },
        },
        FrameCaptureGroupSettings = {
            type = "structure",
            traits = {
                json_name = "frameCaptureGroupSettings",
            },
        },
        HlsGroupSettings = {
            type = "structure",
            traits = {
                json_name = "hlsGroupSettings",
            },
        },
        MediaPackageGroupSettings = {
            type = "structure",
            traits = {
                json_name = "mediaPackageGroupSettings",
            },
        },
        MsSmoothGroupSettings = {
            type = "structure",
            traits = {
                json_name = "msSmoothGroupSettings",
            },
        },
        MultiplexGroupSettings = {
            type = "structure",
            traits = {
                json_name = "multiplexGroupSettings",
            },
        },
        RtmpGroupSettings = {
            type = "structure",
            traits = {
                json_name = "rtmpGroupSettings",
            },
        },
        UdpGroupSettings = {
            type = "structure",
            traits = {
                json_name = "udpGroupSettings",
            },
        },
        CmafIngestGroupSettings = {
            type = "structure",
            traits = {
                json_name = "cmafIngestGroupSettings",
            },
        },
        SrtGroupSettings = {
            type = "structure",
            traits = {
                json_name = "srtGroupSettings",
            },
        },
        MediaConnectRouterGroupSettings = {
            type = "structure",
            traits = {
                json_name = "mediaConnectRouterGroupSettings",
            },
        },
    },
}

M.OutputGroup = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        OutputGroupSettings = {
            type = "structure",
            traits = {
                json_name = "outputGroupSettings",
                required = true,
            },
        },
        Outputs = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "outputs",
                required = true,
            },
        },
    },
}

M.PipelineDetail = {
    type = "structure",
    members = {
        ActiveInputAttachmentName = {
            type = "string",
            traits = {
                json_name = "activeInputAttachmentName",
            },
        },
        ActiveInputSwitchActionName = {
            type = "string",
            traits = {
                json_name = "activeInputSwitchActionName",
            },
        },
        ActiveMotionGraphicsActionName = {
            type = "string",
            traits = {
                json_name = "activeMotionGraphicsActionName",
            },
        },
        ActiveMotionGraphicsUri = {
            type = "string",
            traits = {
                json_name = "activeMotionGraphicsUri",
            },
        },
        PipelineId = {
            type = "string",
            traits = {
                json_name = "pipelineId",
            },
        },
        ChannelEngineVersion = {
            type = "structure",
            traits = {
                json_name = "channelEngineVersion",
            },
        },
    },
}

M.PipelineId = {
    PIPELINE_0 = "PIPELINE_0",
    PIPELINE_1 = "PIPELINE_1",
}

M.PipelinePauseStateSettings = {
    type = "structure",
    members = {
        PipelineId = {
            type = "string",
            traits = {
                json_name = "pipelineId",
                required = true,
            },
        },
    },
}

M.ReservationAutomaticRenewal = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
    UNAVAILABLE = "UNAVAILABLE",
}

M.RenewalSettings = {
    type = "structure",
    members = {
        AutomaticRenewal = {
            type = "string",
            traits = {
                json_name = "automaticRenewal",
            },
        },
        RenewalCount = {
            type = "number",
            traits = {
                json_name = "renewalCount",
            },
        },
    },
}

M.ReservationState = {
    ACTIVE = "ACTIVE",
    EXPIRED = "EXPIRED",
    CANCELED = "CANCELED",
    DELETED = "DELETED",
}

M.Reservation = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Count = {
            type = "number",
            traits = {
                json_name = "count",
            },
        },
        CurrencyCode = {
            type = "string",
            traits = {
                json_name = "currencyCode",
            },
        },
        Duration = {
            type = "number",
            traits = {
                json_name = "duration",
            },
        },
        DurationUnits = {
            type = "string",
            traits = {
                json_name = "durationUnits",
            },
        },
        End = {
            type = "string",
            traits = {
                json_name = "end",
            },
        },
        FixedPrice = {
            type = "number",
            traits = {
                json_name = "fixedPrice",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        OfferingDescription = {
            type = "string",
            traits = {
                json_name = "offeringDescription",
            },
        },
        OfferingId = {
            type = "string",
            traits = {
                json_name = "offeringId",
            },
        },
        OfferingType = {
            type = "string",
            traits = {
                json_name = "offeringType",
            },
        },
        Region = {
            type = "string",
            traits = {
                json_name = "region",
            },
        },
        RenewalSettings = {
            type = "structure",
            traits = {
                json_name = "renewalSettings",
            },
        },
        ReservationId = {
            type = "string",
            traits = {
                json_name = "reservationId",
            },
        },
        ResourceSpecification = {
            type = "structure",
            traits = {
                json_name = "resourceSpecification",
            },
        },
        Start = {
            type = "string",
            traits = {
                json_name = "start",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
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
        UsagePrice = {
            type = "number",
            traits = {
                json_name = "usagePrice",
            },
        },
    },
}

M.RouteCreateRequest = {
    type = "structure",
    members = {
        Cidr = {
            type = "string",
            traits = {
                json_name = "cidr",
            },
        },
        Gateway = {
            type = "string",
            traits = {
                json_name = "gateway",
            },
        },
    },
}

M.RouterDestinationSettings = {
    type = "structure",
    members = {
        AvailabilityZoneName = {
            type = "string",
            traits = {
                json_name = "availabilityZoneName",
                required = true,
            },
        },
    },
}

M.RouteUpdateRequest = {
    type = "structure",
    members = {
        Cidr = {
            type = "string",
            traits = {
                json_name = "cidr",
            },
        },
        Gateway = {
            type = "string",
            traits = {
                json_name = "gateway",
            },
        },
    },
}

M.HlsId3SegmentTaggingScheduleActionSettings = {
    type = "structure",
    members = {
        Tag = {
            type = "string",
            traits = {
                json_name = "tag",
            },
        },
        Id3 = {
            type = "string",
            traits = {
                json_name = "id3",
            },
        },
    },
}

M.HlsTimedMetadataScheduleActionSettings = {
    type = "structure",
    members = {
        Id3 = {
            type = "string",
            traits = {
                json_name = "id3",
                required = true,
            },
        },
    },
}

M.Id3SegmentTaggingScheduleActionSettings = {
    type = "structure",
    members = {
        Id3 = {
            type = "string",
            traits = {
                json_name = "id3",
            },
        },
        Tag = {
            type = "string",
            traits = {
                json_name = "tag",
            },
        },
    },
}

M.InputTimecodeSource = {
    ZEROBASED = "ZEROBASED",
    EMBEDDED = "EMBEDDED",
}

M.StartTimecode = {
    type = "structure",
    members = {
        Timecode = {
            type = "string",
            traits = {
                json_name = "timecode",
            },
        },
    },
}

M.LastFrameClippingBehavior = {
    EXCLUDE_LAST_FRAME = "EXCLUDE_LAST_FRAME",
    INCLUDE_LAST_FRAME = "INCLUDE_LAST_FRAME",
}

M.StopTimecode = {
    type = "structure",
    members = {
        LastFrameClippingBehavior = {
            type = "string",
            traits = {
                json_name = "lastFrameClippingBehavior",
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

M.InputClippingSettings = {
    type = "structure",
    members = {
        InputTimecodeSource = {
            type = "string",
            traits = {
                json_name = "inputTimecodeSource",
                required = true,
            },
        },
        StartTimecode = {
            type = "structure",
            traits = {
                json_name = "startTimecode",
            },
        },
        StopTimecode = {
            type = "structure",
            traits = {
                json_name = "stopTimecode",
            },
        },
    },
}

M.InputPrepareScheduleActionSettings = {
    type = "structure",
    members = {
        InputAttachmentNameReference = {
            type = "string",
            traits = {
                json_name = "inputAttachmentNameReference",
            },
        },
        InputClippingSettings = {
            type = "structure",
            traits = {
                json_name = "inputClippingSettings",
            },
        },
        UrlPath = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "urlPath",
            },
        },
    },
}

M.InputSwitchScheduleActionSettings = {
    type = "structure",
    members = {
        InputAttachmentNameReference = {
            type = "string",
            traits = {
                json_name = "inputAttachmentNameReference",
                required = true,
            },
        },
        InputClippingSettings = {
            type = "structure",
            traits = {
                json_name = "inputClippingSettings",
            },
        },
        UrlPath = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "urlPath",
            },
        },
    },
}

M.MotionGraphicsActivateScheduleActionSettings = {
    type = "structure",
    members = {
        Duration = {
            type = "number",
            traits = {
                json_name = "duration",
            },
        },
        PasswordParam = {
            type = "string",
            traits = {
                json_name = "passwordParam",
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

M.MotionGraphicsDeactivateScheduleActionSettings = {
    type = "structure",
}

M.PauseStateScheduleActionSettings = {
    type = "structure",
    members = {
        Pipelines = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "pipelines",
            },
        },
    },
}

M.Scte35InputMode = {
    FIXED = "FIXED",
    FOLLOW_ACTIVE = "FOLLOW_ACTIVE",
}

M.Scte35InputScheduleActionSettings = {
    type = "structure",
    members = {
        InputAttachmentNameReference = {
            type = "string",
            traits = {
                json_name = "inputAttachmentNameReference",
            },
        },
        Mode = {
            type = "string",
            traits = {
                json_name = "mode",
                required = true,
            },
        },
    },
}

M.Scte35ReturnToNetworkScheduleActionSettings = {
    type = "structure",
    members = {
        SpliceEventId = {
            type = "number",
            traits = {
                json_name = "spliceEventId",
                required = true,
            },
        },
    },
}

M.Scte35SpliceInsertScheduleActionSettings = {
    type = "structure",
    members = {
        Duration = {
            type = "number",
            traits = {
                json_name = "duration",
            },
        },
        SpliceEventId = {
            type = "number",
            traits = {
                json_name = "spliceEventId",
                required = true,
            },
        },
    },
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

M.Scte35DeliveryRestrictions = {
    type = "structure",
    members = {
        ArchiveAllowedFlag = {
            type = "string",
            traits = {
                json_name = "archiveAllowedFlag",
                required = true,
            },
        },
        DeviceRestrictions = {
            type = "string",
            traits = {
                json_name = "deviceRestrictions",
                required = true,
            },
        },
        NoRegionalBlackoutFlag = {
            type = "string",
            traits = {
                json_name = "noRegionalBlackoutFlag",
                required = true,
            },
        },
        WebDeliveryAllowedFlag = {
            type = "string",
            traits = {
                json_name = "webDeliveryAllowedFlag",
                required = true,
            },
        },
    },
}

M.Scte35SegmentationCancelIndicator = {
    SEGMENTATION_EVENT_NOT_CANCELED = "SEGMENTATION_EVENT_NOT_CANCELED",
    SEGMENTATION_EVENT_CANCELED = "SEGMENTATION_EVENT_CANCELED",
}

M.Scte35SegmentationDescriptor = {
    type = "structure",
    members = {
        DeliveryRestrictions = {
            type = "structure",
            traits = {
                json_name = "deliveryRestrictions",
            },
        },
        SegmentNum = {
            type = "number",
            traits = {
                json_name = "segmentNum",
            },
        },
        SegmentationCancelIndicator = {
            type = "string",
            traits = {
                json_name = "segmentationCancelIndicator",
                required = true,
            },
        },
        SegmentationDuration = {
            type = "number",
            traits = {
                json_name = "segmentationDuration",
            },
        },
        SegmentationEventId = {
            type = "number",
            traits = {
                json_name = "segmentationEventId",
                required = true,
            },
        },
        SegmentationTypeId = {
            type = "number",
            traits = {
                json_name = "segmentationTypeId",
            },
        },
        SegmentationUpid = {
            type = "string",
            traits = {
                json_name = "segmentationUpid",
            },
        },
        SegmentationUpidType = {
            type = "number",
            traits = {
                json_name = "segmentationUpidType",
            },
        },
        SegmentsExpected = {
            type = "number",
            traits = {
                json_name = "segmentsExpected",
            },
        },
        SubSegmentNum = {
            type = "number",
            traits = {
                json_name = "subSegmentNum",
            },
        },
        SubSegmentsExpected = {
            type = "number",
            traits = {
                json_name = "subSegmentsExpected",
            },
        },
    },
}

M.Scte35DescriptorSettings = {
    type = "structure",
    members = {
        SegmentationDescriptorScte35DescriptorSettings = {
            type = "structure",
            traits = {
                json_name = "segmentationDescriptorScte35DescriptorSettings",
                required = true,
            },
        },
    },
}

M.Scte35Descriptor = {
    type = "structure",
    members = {
        Scte35DescriptorSettings = {
            type = "structure",
            traits = {
                json_name = "scte35DescriptorSettings",
                required = true,
            },
        },
    },
}

M.Scte35TimeSignalScheduleActionSettings = {
    type = "structure",
    members = {
        Scte35Descriptors = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "scte35Descriptors",
                required = true,
            },
        },
    },
}

M.StaticImageActivateScheduleActionSettings = {
    type = "structure",
    members = {
        Duration = {
            type = "number",
            traits = {
                json_name = "duration",
            },
        },
        FadeIn = {
            type = "number",
            traits = {
                json_name = "fadeIn",
            },
        },
        FadeOut = {
            type = "number",
            traits = {
                json_name = "fadeOut",
            },
        },
        Height = {
            type = "number",
            traits = {
                json_name = "height",
            },
        },
        Image = {
            type = "structure",
            traits = {
                json_name = "image",
                required = true,
            },
        },
        ImageX = {
            type = "number",
            traits = {
                json_name = "imageX",
            },
        },
        ImageY = {
            type = "number",
            traits = {
                json_name = "imageY",
            },
        },
        Layer = {
            type = "number",
            traits = {
                json_name = "layer",
            },
        },
        Opacity = {
            type = "number",
            traits = {
                json_name = "opacity",
            },
        },
        Width = {
            type = "number",
            traits = {
                json_name = "width",
            },
        },
    },
}

M.StaticImageDeactivateScheduleActionSettings = {
    type = "structure",
    members = {
        FadeOut = {
            type = "number",
            traits = {
                json_name = "fadeOut",
            },
        },
        Layer = {
            type = "number",
            traits = {
                json_name = "layer",
            },
        },
    },
}

M.StaticImageOutputActivateScheduleActionSettings = {
    type = "structure",
    members = {
        Duration = {
            type = "number",
            traits = {
                json_name = "duration",
            },
        },
        FadeIn = {
            type = "number",
            traits = {
                json_name = "fadeIn",
            },
        },
        FadeOut = {
            type = "number",
            traits = {
                json_name = "fadeOut",
            },
        },
        Height = {
            type = "number",
            traits = {
                json_name = "height",
            },
        },
        Image = {
            type = "structure",
            traits = {
                json_name = "image",
                required = true,
            },
        },
        ImageX = {
            type = "number",
            traits = {
                json_name = "imageX",
            },
        },
        ImageY = {
            type = "number",
            traits = {
                json_name = "imageY",
            },
        },
        Layer = {
            type = "number",
            traits = {
                json_name = "layer",
            },
        },
        Opacity = {
            type = "number",
            traits = {
                json_name = "opacity",
            },
        },
        OutputNames = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "outputNames",
                required = true,
            },
        },
        Width = {
            type = "number",
            traits = {
                json_name = "width",
            },
        },
    },
}

M.StaticImageOutputDeactivateScheduleActionSettings = {
    type = "structure",
    members = {
        FadeOut = {
            type = "number",
            traits = {
                json_name = "fadeOut",
            },
        },
        Layer = {
            type = "number",
            traits = {
                json_name = "layer",
            },
        },
        OutputNames = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "outputNames",
                required = true,
            },
        },
    },
}

M.TimedMetadataScheduleActionSettings = {
    type = "structure",
    members = {
        Id3 = {
            type = "string",
            traits = {
                json_name = "id3",
                required = true,
            },
        },
    },
}

M.ScheduleActionSettings = {
    type = "structure",
    members = {
        HlsId3SegmentTaggingSettings = {
            type = "structure",
            traits = {
                json_name = "hlsId3SegmentTaggingSettings",
            },
        },
        HlsTimedMetadataSettings = {
            type = "structure",
            traits = {
                json_name = "hlsTimedMetadataSettings",
            },
        },
        InputPrepareSettings = {
            type = "structure",
            traits = {
                json_name = "inputPrepareSettings",
            },
        },
        InputSwitchSettings = {
            type = "structure",
            traits = {
                json_name = "inputSwitchSettings",
            },
        },
        MotionGraphicsImageActivateSettings = {
            type = "structure",
            traits = {
                json_name = "motionGraphicsImageActivateSettings",
            },
        },
        MotionGraphicsImageDeactivateSettings = {
            type = "structure",
            traits = {
                json_name = "motionGraphicsImageDeactivateSettings",
            },
        },
        PauseStateSettings = {
            type = "structure",
            traits = {
                json_name = "pauseStateSettings",
            },
        },
        Scte35InputSettings = {
            type = "structure",
            traits = {
                json_name = "scte35InputSettings",
            },
        },
        Scte35ReturnToNetworkSettings = {
            type = "structure",
            traits = {
                json_name = "scte35ReturnToNetworkSettings",
            },
        },
        Scte35SpliceInsertSettings = {
            type = "structure",
            traits = {
                json_name = "scte35SpliceInsertSettings",
            },
        },
        Scte35TimeSignalSettings = {
            type = "structure",
            traits = {
                json_name = "scte35TimeSignalSettings",
            },
        },
        StaticImageActivateSettings = {
            type = "structure",
            traits = {
                json_name = "staticImageActivateSettings",
            },
        },
        StaticImageDeactivateSettings = {
            type = "structure",
            traits = {
                json_name = "staticImageDeactivateSettings",
            },
        },
        StaticImageOutputActivateSettings = {
            type = "structure",
            traits = {
                json_name = "staticImageOutputActivateSettings",
            },
        },
        StaticImageOutputDeactivateSettings = {
            type = "structure",
            traits = {
                json_name = "staticImageOutputDeactivateSettings",
            },
        },
        Id3SegmentTaggingSettings = {
            type = "structure",
            traits = {
                json_name = "id3SegmentTaggingSettings",
            },
        },
        TimedMetadataSettings = {
            type = "structure",
            traits = {
                json_name = "timedMetadataSettings",
            },
        },
    },
}

M.FixedModeScheduleActionStartSettings = {
    type = "structure",
    members = {
        Time = {
            type = "string",
            traits = {
                json_name = "time",
                required = true,
            },
        },
    },
}

M.FollowPoint = {
    END = "END",
    START = "START",
}

M.FollowModeScheduleActionStartSettings = {
    type = "structure",
    members = {
        FollowPoint = {
            type = "string",
            traits = {
                json_name = "followPoint",
                required = true,
            },
        },
        ReferenceActionName = {
            type = "string",
            traits = {
                json_name = "referenceActionName",
                required = true,
            },
        },
    },
}

M.ImmediateModeScheduleActionStartSettings = {
    type = "structure",
}

M.ScheduleActionStartSettings = {
    type = "structure",
    members = {
        FixedModeScheduleActionStartSettings = {
            type = "structure",
            traits = {
                json_name = "fixedModeScheduleActionStartSettings",
            },
        },
        FollowModeScheduleActionStartSettings = {
            type = "structure",
            traits = {
                json_name = "followModeScheduleActionStartSettings",
            },
        },
        ImmediateModeScheduleActionStartSettings = {
            type = "structure",
            traits = {
                json_name = "immediateModeScheduleActionStartSettings",
            },
        },
    },
}

M.ScheduleAction = {
    type = "structure",
    members = {
        ActionName = {
            type = "string",
            traits = {
                json_name = "actionName",
                required = true,
            },
        },
        ScheduleActionSettings = {
            type = "structure",
            traits = {
                json_name = "scheduleActionSettings",
                required = true,
            },
        },
        ScheduleActionStartSettings = {
            type = "structure",
            traits = {
                json_name = "scheduleActionStartSettings",
                required = true,
            },
        },
    },
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

M.SdiSourceSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "inputs",
            },
        },
        Mode = {
            type = "string",
            traits = {
                json_name = "mode",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
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

M.SignalMapSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
                required = true,
            },
        },
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
        ModifiedAt = {
            type = "timestamp",
            traits = {
                json_name = "modifiedAt",
            },
        },
        MonitorDeploymentStatus = {
            type = "string",
            traits = {
                json_name = "monitorDeploymentStatus",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
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

M.SrtCallerDecryptionRequest = {
    type = "structure",
    members = {
        Algorithm = {
            type = "string",
            traits = {
                json_name = "algorithm",
            },
        },
        PassphraseSecretArn = {
            type = "string",
            traits = {
                json_name = "passphraseSecretArn",
            },
        },
    },
}

M.SrtCallerSourceRequest = {
    type = "structure",
    members = {
        Decryption = {
            type = "structure",
            traits = {
                json_name = "decryption",
            },
        },
        MinimumLatency = {
            type = "number",
            traits = {
                json_name = "minimumLatency",
            },
        },
        SrtListenerAddress = {
            type = "string",
            traits = {
                json_name = "srtListenerAddress",
            },
        },
        SrtListenerPort = {
            type = "string",
            traits = {
                json_name = "srtListenerPort",
            },
        },
        StreamId = {
            type = "string",
            traits = {
                json_name = "streamId",
            },
        },
    },
}

M.ThumbnailType = {
    UNSPECIFIED = "UNSPECIFIED",
    CURRENT_ACTIVE = "CURRENT_ACTIVE",
}

M.Thumbnail = {
    type = "structure",
    members = {
        Body = {
            type = "string",
            traits = {
                json_name = "body",
            },
        },
        ContentType = {
            type = "string",
            traits = {
                json_name = "contentType",
            },
        },
        ThumbnailType = {
            type = "string",
            traits = {
                json_name = "thumbnailType",
            },
        },
        TimeStamp = {
            type = "timestamp",
            traits = {
                json_name = "timeStamp",
            },
        },
    },
}

M.ThumbnailDetail = {
    type = "structure",
    members = {
        PipelineId = {
            type = "string",
            traits = {
                json_name = "pipelineId",
            },
        },
        Thumbnails = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "thumbnails",
            },
        },
    },
}

M.InputDeviceTransferType = {
    OUTGOING = "OUTGOING",
    INCOMING = "INCOMING",
}

M.TransferringInputDeviceSummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
        TargetCustomerId = {
            type = "string",
            traits = {
                json_name = "targetCustomerId",
            },
        },
        TransferType = {
            type = "string",
            traits = {
                json_name = "transferType",
            },
        },
    },
}

M.ValidationError = {
    type = "structure",
    members = {
        ElementPath = {
            type = "string",
            traits = {
                json_name = "elementPath",
            },
        },
        ErrorMessage = {
            type = "string",
            traits = {
                json_name = "errorMessage",
            },
        },
    },
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

M.ColorSpacePassthroughSettings = {
    type = "structure",
}

M.Hlg2020Settings = {
    type = "structure",
}

M.Rec601Settings = {
    type = "structure",
}

M.Rec709Settings = {
    type = "structure",
}

M.Av1ColorSpaceSettings = {
    type = "structure",
    members = {
        ColorSpacePassthroughSettings = {
            type = "structure",
            traits = {
                json_name = "colorSpacePassthroughSettings",
            },
        },
        Hdr10Settings = {
            type = "structure",
            traits = {
                json_name = "hdr10Settings",
            },
        },
        Rec601Settings = {
            type = "structure",
            traits = {
                json_name = "rec601Settings",
            },
        },
        Rec709Settings = {
            type = "structure",
            traits = {
                json_name = "rec709Settings",
            },
        },
        Hlg2020Settings = {
            type = "structure",
            traits = {
                json_name = "hlg2020Settings",
            },
        },
    },
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

M.TimecodeBurninSettings = {
    type = "structure",
    members = {
        FontSize = {
            type = "string",
            traits = {
                json_name = "fontSize",
                required = true,
            },
        },
        Position = {
            type = "string",
            traits = {
                json_name = "position",
                required = true,
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

M.Av1TimecodeInsertionBehavior = {
    DISABLED = "DISABLED",
    METADATA_OBU = "METADATA_OBU",
}

M.Av1Settings = {
    type = "structure",
    members = {
        AfdSignaling = {
            type = "string",
            traits = {
                json_name = "afdSignaling",
            },
        },
        BufSize = {
            type = "number",
            traits = {
                json_name = "bufSize",
            },
        },
        ColorSpaceSettings = {
            type = "structure",
            traits = {
                json_name = "colorSpaceSettings",
            },
        },
        FixedAfd = {
            type = "string",
            traits = {
                json_name = "fixedAfd",
            },
        },
        FramerateDenominator = {
            type = "number",
            traits = {
                json_name = "framerateDenominator",
                required = true,
            },
        },
        FramerateNumerator = {
            type = "number",
            traits = {
                json_name = "framerateNumerator",
                required = true,
            },
        },
        GopSize = {
            type = "number",
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
        Level = {
            type = "string",
            traits = {
                json_name = "level",
            },
        },
        LookAheadRateControl = {
            type = "string",
            traits = {
                json_name = "lookAheadRateControl",
            },
        },
        MaxBitrate = {
            type = "number",
            traits = {
                json_name = "maxBitrate",
            },
        },
        MinIInterval = {
            type = "number",
            traits = {
                json_name = "minIInterval",
            },
        },
        ParDenominator = {
            type = "number",
            traits = {
                json_name = "parDenominator",
            },
        },
        ParNumerator = {
            type = "number",
            traits = {
                json_name = "parNumerator",
            },
        },
        QvbrQualityLevel = {
            type = "number",
            traits = {
                json_name = "qvbrQualityLevel",
            },
        },
        SceneChangeDetect = {
            type = "string",
            traits = {
                json_name = "sceneChangeDetect",
            },
        },
        TimecodeBurninSettings = {
            type = "structure",
            traits = {
                json_name = "timecodeBurninSettings",
            },
        },
        Bitrate = {
            type = "number",
            traits = {
                json_name = "bitrate",
            },
        },
        RateControlMode = {
            type = "string",
            traits = {
                json_name = "rateControlMode",
            },
        },
        MinBitrate = {
            type = "number",
            traits = {
                json_name = "minBitrate",
            },
        },
        SpatialAq = {
            type = "string",
            traits = {
                json_name = "spatialAq",
            },
        },
        TemporalAq = {
            type = "string",
            traits = {
                json_name = "temporalAq",
            },
        },
        TimecodeInsertion = {
            type = "string",
            traits = {
                json_name = "timecodeInsertion",
            },
        },
        BitDepth = {
            type = "string",
            traits = {
                json_name = "bitDepth",
            },
        },
    },
}

M.FrameCaptureIntervalUnit = {
    MILLISECONDS = "MILLISECONDS",
    SECONDS = "SECONDS",
}

M.FrameCaptureSettings = {
    type = "structure",
    members = {
        CaptureInterval = {
            type = "number",
            traits = {
                json_name = "captureInterval",
            },
        },
        CaptureIntervalUnits = {
            type = "string",
            traits = {
                json_name = "captureIntervalUnits",
            },
        },
        TimecodeBurninSettings = {
            type = "structure",
            traits = {
                json_name = "timecodeBurninSettings",
            },
        },
    },
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

M.H264ColorSpaceSettings = {
    type = "structure",
    members = {
        ColorSpacePassthroughSettings = {
            type = "structure",
            traits = {
                json_name = "colorSpacePassthroughSettings",
            },
        },
        Rec601Settings = {
            type = "structure",
            traits = {
                json_name = "rec601Settings",
            },
        },
        Rec709Settings = {
            type = "structure",
            traits = {
                json_name = "rec709Settings",
            },
        },
    },
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

M.BandwidthReductionFilterSettings = {
    type = "structure",
    members = {
        PostFilterSharpening = {
            type = "string",
            traits = {
                json_name = "postFilterSharpening",
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

M.TemporalFilterSettings = {
    type = "structure",
    members = {
        PostFilterSharpening = {
            type = "string",
            traits = {
                json_name = "postFilterSharpening",
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

M.H264FilterSettings = {
    type = "structure",
    members = {
        TemporalFilterSettings = {
            type = "structure",
            traits = {
                json_name = "temporalFilterSettings",
            },
        },
        BandwidthReductionFilterSettings = {
            type = "structure",
            traits = {
                json_name = "bandwidthReductionFilterSettings",
            },
        },
    },
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

M.H264Settings = {
    type = "structure",
    members = {
        AdaptiveQuantization = {
            type = "string",
            traits = {
                json_name = "adaptiveQuantization",
            },
        },
        AfdSignaling = {
            type = "string",
            traits = {
                json_name = "afdSignaling",
            },
        },
        Bitrate = {
            type = "number",
            traits = {
                json_name = "bitrate",
            },
        },
        BufFillPct = {
            type = "number",
            traits = {
                json_name = "bufFillPct",
            },
        },
        BufSize = {
            type = "number",
            traits = {
                json_name = "bufSize",
            },
        },
        ColorMetadata = {
            type = "string",
            traits = {
                json_name = "colorMetadata",
            },
        },
        ColorSpaceSettings = {
            type = "structure",
            traits = {
                json_name = "colorSpaceSettings",
            },
        },
        EntropyEncoding = {
            type = "string",
            traits = {
                json_name = "entropyEncoding",
            },
        },
        FilterSettings = {
            type = "structure",
            traits = {
                json_name = "filterSettings",
            },
        },
        FixedAfd = {
            type = "string",
            traits = {
                json_name = "fixedAfd",
            },
        },
        FlickerAq = {
            type = "string",
            traits = {
                json_name = "flickerAq",
            },
        },
        ForceFieldPictures = {
            type = "string",
            traits = {
                json_name = "forceFieldPictures",
            },
        },
        FramerateControl = {
            type = "string",
            traits = {
                json_name = "framerateControl",
            },
        },
        FramerateDenominator = {
            type = "number",
            traits = {
                json_name = "framerateDenominator",
            },
        },
        FramerateNumerator = {
            type = "number",
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
            type = "number",
            traits = {
                json_name = "gopClosedCadence",
            },
        },
        GopNumBFrames = {
            type = "number",
            traits = {
                json_name = "gopNumBFrames",
            },
        },
        GopSize = {
            type = "number",
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
        Level = {
            type = "string",
            traits = {
                json_name = "level",
            },
        },
        LookAheadRateControl = {
            type = "string",
            traits = {
                json_name = "lookAheadRateControl",
            },
        },
        MaxBitrate = {
            type = "number",
            traits = {
                json_name = "maxBitrate",
            },
        },
        MinIInterval = {
            type = "number",
            traits = {
                json_name = "minIInterval",
            },
        },
        NumRefFrames = {
            type = "number",
            traits = {
                json_name = "numRefFrames",
            },
        },
        ParControl = {
            type = "string",
            traits = {
                json_name = "parControl",
            },
        },
        ParDenominator = {
            type = "number",
            traits = {
                json_name = "parDenominator",
            },
        },
        ParNumerator = {
            type = "number",
            traits = {
                json_name = "parNumerator",
            },
        },
        Profile = {
            type = "string",
            traits = {
                json_name = "profile",
            },
        },
        QualityLevel = {
            type = "string",
            traits = {
                json_name = "qualityLevel",
            },
        },
        QvbrQualityLevel = {
            type = "number",
            traits = {
                json_name = "qvbrQualityLevel",
            },
        },
        RateControlMode = {
            type = "string",
            traits = {
                json_name = "rateControlMode",
            },
        },
        ScanType = {
            type = "string",
            traits = {
                json_name = "scanType",
            },
        },
        SceneChangeDetect = {
            type = "string",
            traits = {
                json_name = "sceneChangeDetect",
            },
        },
        Slices = {
            type = "number",
            traits = {
                json_name = "slices",
            },
        },
        Softness = {
            type = "number",
            traits = {
                json_name = "softness",
            },
        },
        SpatialAq = {
            type = "string",
            traits = {
                json_name = "spatialAq",
            },
        },
        SubgopLength = {
            type = "string",
            traits = {
                json_name = "subgopLength",
            },
        },
        Syntax = {
            type = "string",
            traits = {
                json_name = "syntax",
            },
        },
        TemporalAq = {
            type = "string",
            traits = {
                json_name = "temporalAq",
            },
        },
        TimecodeInsertion = {
            type = "string",
            traits = {
                json_name = "timecodeInsertion",
            },
        },
        TimecodeBurninSettings = {
            type = "structure",
            traits = {
                json_name = "timecodeBurninSettings",
            },
        },
        MinQp = {
            type = "number",
            traits = {
                json_name = "minQp",
            },
        },
        MinBitrate = {
            type = "number",
            traits = {
                json_name = "minBitrate",
            },
        },
    },
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

M.DolbyVision81Settings = {
    type = "structure",
}

M.H265ColorSpaceSettings = {
    type = "structure",
    members = {
        ColorSpacePassthroughSettings = {
            type = "structure",
            traits = {
                json_name = "colorSpacePassthroughSettings",
            },
        },
        DolbyVision81Settings = {
            type = "structure",
            traits = {
                json_name = "dolbyVision81Settings",
            },
        },
        Hdr10Settings = {
            type = "structure",
            traits = {
                json_name = "hdr10Settings",
            },
        },
        Rec601Settings = {
            type = "structure",
            traits = {
                json_name = "rec601Settings",
            },
        },
        Rec709Settings = {
            type = "structure",
            traits = {
                json_name = "rec709Settings",
            },
        },
        Hlg2020Settings = {
            type = "structure",
            traits = {
                json_name = "hlg2020Settings",
            },
        },
    },
}

M.H265Deblocking = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.H265FilterSettings = {
    type = "structure",
    members = {
        TemporalFilterSettings = {
            type = "structure",
            traits = {
                json_name = "temporalFilterSettings",
            },
        },
        BandwidthReductionFilterSettings = {
            type = "structure",
            traits = {
                json_name = "bandwidthReductionFilterSettings",
            },
        },
    },
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

M.H265Settings = {
    type = "structure",
    members = {
        AdaptiveQuantization = {
            type = "string",
            traits = {
                json_name = "adaptiveQuantization",
            },
        },
        AfdSignaling = {
            type = "string",
            traits = {
                json_name = "afdSignaling",
            },
        },
        AlternativeTransferFunction = {
            type = "string",
            traits = {
                json_name = "alternativeTransferFunction",
            },
        },
        Bitrate = {
            type = "number",
            traits = {
                json_name = "bitrate",
            },
        },
        BufSize = {
            type = "number",
            traits = {
                json_name = "bufSize",
            },
        },
        ColorMetadata = {
            type = "string",
            traits = {
                json_name = "colorMetadata",
            },
        },
        ColorSpaceSettings = {
            type = "structure",
            traits = {
                json_name = "colorSpaceSettings",
            },
        },
        FilterSettings = {
            type = "structure",
            traits = {
                json_name = "filterSettings",
            },
        },
        FixedAfd = {
            type = "string",
            traits = {
                json_name = "fixedAfd",
            },
        },
        FlickerAq = {
            type = "string",
            traits = {
                json_name = "flickerAq",
            },
        },
        FramerateDenominator = {
            type = "number",
            traits = {
                json_name = "framerateDenominator",
                required = true,
            },
        },
        FramerateNumerator = {
            type = "number",
            traits = {
                json_name = "framerateNumerator",
                required = true,
            },
        },
        GopClosedCadence = {
            type = "number",
            traits = {
                json_name = "gopClosedCadence",
            },
        },
        GopSize = {
            type = "number",
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
        Level = {
            type = "string",
            traits = {
                json_name = "level",
            },
        },
        LookAheadRateControl = {
            type = "string",
            traits = {
                json_name = "lookAheadRateControl",
            },
        },
        MaxBitrate = {
            type = "number",
            traits = {
                json_name = "maxBitrate",
            },
        },
        MinIInterval = {
            type = "number",
            traits = {
                json_name = "minIInterval",
            },
        },
        ParDenominator = {
            type = "number",
            traits = {
                json_name = "parDenominator",
            },
        },
        ParNumerator = {
            type = "number",
            traits = {
                json_name = "parNumerator",
            },
        },
        Profile = {
            type = "string",
            traits = {
                json_name = "profile",
            },
        },
        QvbrQualityLevel = {
            type = "number",
            traits = {
                json_name = "qvbrQualityLevel",
            },
        },
        RateControlMode = {
            type = "string",
            traits = {
                json_name = "rateControlMode",
            },
        },
        ScanType = {
            type = "string",
            traits = {
                json_name = "scanType",
            },
        },
        SceneChangeDetect = {
            type = "string",
            traits = {
                json_name = "sceneChangeDetect",
            },
        },
        Slices = {
            type = "number",
            traits = {
                json_name = "slices",
            },
        },
        Tier = {
            type = "string",
            traits = {
                json_name = "tier",
            },
        },
        TimecodeInsertion = {
            type = "string",
            traits = {
                json_name = "timecodeInsertion",
            },
        },
        TimecodeBurninSettings = {
            type = "structure",
            traits = {
                json_name = "timecodeBurninSettings",
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
        TileHeight = {
            type = "number",
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
            type = "number",
            traits = {
                json_name = "tileWidth",
            },
        },
        TreeblockSize = {
            type = "string",
            traits = {
                json_name = "treeblockSize",
            },
        },
        MinQp = {
            type = "number",
            traits = {
                json_name = "minQp",
            },
        },
        Deblocking = {
            type = "string",
            traits = {
                json_name = "deblocking",
            },
        },
        GopBReference = {
            type = "string",
            traits = {
                json_name = "gopBReference",
            },
        },
        GopNumBFrames = {
            type = "number",
            traits = {
                json_name = "gopNumBFrames",
            },
        },
        MinBitrate = {
            type = "number",
            traits = {
                json_name = "minBitrate",
            },
        },
        SubgopLength = {
            type = "string",
            traits = {
                json_name = "subgopLength",
            },
        },
    },
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

M.Mpeg2FilterSettings = {
    type = "structure",
    members = {
        TemporalFilterSettings = {
            type = "structure",
            traits = {
                json_name = "temporalFilterSettings",
            },
        },
    },
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

M.Mpeg2Settings = {
    type = "structure",
    members = {
        AdaptiveQuantization = {
            type = "string",
            traits = {
                json_name = "adaptiveQuantization",
            },
        },
        AfdSignaling = {
            type = "string",
            traits = {
                json_name = "afdSignaling",
            },
        },
        ColorMetadata = {
            type = "string",
            traits = {
                json_name = "colorMetadata",
            },
        },
        ColorSpace = {
            type = "string",
            traits = {
                json_name = "colorSpace",
            },
        },
        DisplayAspectRatio = {
            type = "string",
            traits = {
                json_name = "displayAspectRatio",
            },
        },
        FilterSettings = {
            type = "structure",
            traits = {
                json_name = "filterSettings",
            },
        },
        FixedAfd = {
            type = "string",
            traits = {
                json_name = "fixedAfd",
            },
        },
        FramerateDenominator = {
            type = "number",
            traits = {
                json_name = "framerateDenominator",
                required = true,
            },
        },
        FramerateNumerator = {
            type = "number",
            traits = {
                json_name = "framerateNumerator",
                required = true,
            },
        },
        GopClosedCadence = {
            type = "number",
            traits = {
                json_name = "gopClosedCadence",
            },
        },
        GopNumBFrames = {
            type = "number",
            traits = {
                json_name = "gopNumBFrames",
            },
        },
        GopSize = {
            type = "number",
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
        ScanType = {
            type = "string",
            traits = {
                json_name = "scanType",
            },
        },
        SubgopLength = {
            type = "string",
            traits = {
                json_name = "subgopLength",
            },
        },
        TimecodeInsertion = {
            type = "string",
            traits = {
                json_name = "timecodeInsertion",
            },
        },
        TimecodeBurninSettings = {
            type = "structure",
            traits = {
                json_name = "timecodeBurninSettings",
            },
        },
    },
}

M.VideoCodecSettings = {
    type = "structure",
    members = {
        FrameCaptureSettings = {
            type = "structure",
            traits = {
                json_name = "frameCaptureSettings",
            },
        },
        H264Settings = {
            type = "structure",
            traits = {
                json_name = "h264Settings",
            },
        },
        H265Settings = {
            type = "structure",
            traits = {
                json_name = "h265Settings",
            },
        },
        Mpeg2Settings = {
            type = "structure",
            traits = {
                json_name = "mpeg2Settings",
            },
        },
        Av1Settings = {
            type = "structure",
            traits = {
                json_name = "av1Settings",
            },
        },
    },
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

M.VideoDescription = {
    type = "structure",
    members = {
        CodecSettings = {
            type = "structure",
            traits = {
                json_name = "codecSettings",
            },
        },
        Height = {
            type = "number",
            traits = {
                json_name = "height",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
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
            type = "number",
            traits = {
                json_name = "sharpness",
            },
        },
        Width = {
            type = "number",
            traits = {
                json_name = "width",
            },
        },
    },
}

M.AcceptHeader = {
    image_jpeg = "image/jpeg",
}

M.AcceptInputDeviceTransferInput = {
    type = "structure",
    members = {
        InputDeviceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.AcceptInputDeviceTransferOutput = {
    type = "structure",
}

M.BadGatewayException = {
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

M.BadRequestException = {
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

M.ConflictException = {
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

M.GatewayTimeoutException = {
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
        ValidationErrors = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "validationErrors",
            },
        },
    },
}

M.AccountConfiguration = {
    type = "structure",
    members = {
        KmsKeyId = {
            type = "string",
            traits = {
                json_name = "kmsKeyId",
            },
        },
    },
}

M.AnywhereSettings = {
    type = "structure",
    members = {
        ChannelPlacementGroupId = {
            type = "string",
            traits = {
                json_name = "channelPlacementGroupId",
            },
        },
        ClusterId = {
            type = "string",
            traits = {
                json_name = "clusterId",
            },
        },
    },
}

M.AvailBlankingState = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.AvailBlanking = {
    type = "structure",
    members = {
        AvailBlankingImage = {
            type = "structure",
            traits = {
                json_name = "availBlankingImage",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
    },
}

M.Esam = {
    type = "structure",
    members = {
        AcquisitionPointId = {
            type = "string",
            traits = {
                json_name = "acquisitionPointId",
                required = true,
            },
        },
        AdAvailOffset = {
            type = "number",
            traits = {
                json_name = "adAvailOffset",
            },
        },
        PasswordParam = {
            type = "string",
            traits = {
                json_name = "passwordParam",
            },
        },
        PoisEndpoint = {
            type = "string",
            traits = {
                json_name = "poisEndpoint",
                required = true,
            },
        },
        Username = {
            type = "string",
            traits = {
                json_name = "username",
            },
        },
        ZoneIdentity = {
            type = "string",
            traits = {
                json_name = "zoneIdentity",
            },
        },
    },
}

M.Scte35SpliceInsertNoRegionalBlackoutBehavior = {
    FOLLOW = "FOLLOW",
    IGNORE = "IGNORE",
}

M.Scte35SpliceInsertWebDeliveryAllowedBehavior = {
    FOLLOW = "FOLLOW",
    IGNORE = "IGNORE",
}

M.Scte35SpliceInsert = {
    type = "structure",
    members = {
        AdAvailOffset = {
            type = "number",
            traits = {
                json_name = "adAvailOffset",
            },
        },
        NoRegionalBlackoutFlag = {
            type = "string",
            traits = {
                json_name = "noRegionalBlackoutFlag",
            },
        },
        WebDeliveryAllowedFlag = {
            type = "string",
            traits = {
                json_name = "webDeliveryAllowedFlag",
            },
        },
    },
}

M.Scte35AposNoRegionalBlackoutBehavior = {
    FOLLOW = "FOLLOW",
    IGNORE = "IGNORE",
}

M.Scte35AposWebDeliveryAllowedBehavior = {
    FOLLOW = "FOLLOW",
    IGNORE = "IGNORE",
}

M.Scte35TimeSignalApos = {
    type = "structure",
    members = {
        AdAvailOffset = {
            type = "number",
            traits = {
                json_name = "adAvailOffset",
            },
        },
        NoRegionalBlackoutFlag = {
            type = "string",
            traits = {
                json_name = "noRegionalBlackoutFlag",
            },
        },
        WebDeliveryAllowedFlag = {
            type = "string",
            traits = {
                json_name = "webDeliveryAllowedFlag",
            },
        },
    },
}

M.AvailSettings = {
    type = "structure",
    members = {
        Esam = {
            type = "structure",
            traits = {
                json_name = "esam",
            },
        },
        Scte35SpliceInsert = {
            type = "structure",
            traits = {
                json_name = "scte35SpliceInsert",
            },
        },
        Scte35TimeSignalApos = {
            type = "structure",
            traits = {
                json_name = "scte35TimeSignalApos",
            },
        },
    },
}

M.Scte35SegmentationScope = {
    ALL_OUTPUT_GROUPS = "ALL_OUTPUT_GROUPS",
    SCTE35_ENABLED_OUTPUT_GROUPS = "SCTE35_ENABLED_OUTPUT_GROUPS",
}

M.AvailConfiguration = {
    type = "structure",
    members = {
        AvailSettings = {
            type = "structure",
            traits = {
                json_name = "availSettings",
            },
        },
        Scte35SegmentationScope = {
            type = "string",
            traits = {
                json_name = "scte35SegmentationScope",
            },
        },
    },
}

M.BatchDeleteInput = {
    type = "structure",
    members = {
        ChannelIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "channelIds",
            },
        },
        InputIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "inputIds",
            },
        },
        InputSecurityGroupIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "inputSecurityGroupIds",
            },
        },
        MultiplexIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "multiplexIds",
            },
        },
    },
}

M.BatchDeleteOutput = {
    type = "structure",
    members = {
        Failed = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "failed",
            },
        },
        Successful = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "successful",
            },
        },
    },
}

M.BatchScheduleActionCreateRequest = {
    type = "structure",
    members = {
        ScheduleActions = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "scheduleActions",
                required = true,
            },
        },
    },
}

M.BatchScheduleActionCreateResult = {
    type = "structure",
    members = {
        ScheduleActions = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "scheduleActions",
                required = true,
            },
        },
    },
}

M.BatchScheduleActionDeleteRequest = {
    type = "structure",
    members = {
        ActionNames = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "actionNames",
                required = true,
            },
        },
    },
}

M.BatchScheduleActionDeleteResult = {
    type = "structure",
    members = {
        ScheduleActions = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "scheduleActions",
                required = true,
            },
        },
    },
}

M.BatchStartInput = {
    type = "structure",
    members = {
        ChannelIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "channelIds",
            },
        },
        MultiplexIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "multiplexIds",
            },
        },
    },
}

M.BatchStartOutput = {
    type = "structure",
    members = {
        Failed = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "failed",
            },
        },
        Successful = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "successful",
            },
        },
    },
}

M.BatchStopInput = {
    type = "structure",
    members = {
        ChannelIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "channelIds",
            },
        },
        MultiplexIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "multiplexIds",
            },
        },
    },
}

M.BatchStopOutput = {
    type = "structure",
    members = {
        Failed = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "failed",
            },
        },
        Successful = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "successful",
            },
        },
    },
}

M.BatchUpdateScheduleInput = {
    type = "structure",
    members = {
        ChannelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Creates = {
            type = "structure",
            traits = {
                json_name = "creates",
            },
        },
        Deletes = {
            type = "structure",
            traits = {
                json_name = "deletes",
            },
        },
    },
}

M.BatchUpdateScheduleOutput = {
    type = "structure",
    members = {
        Creates = {
            type = "structure",
            traits = {
                json_name = "creates",
            },
        },
        Deletes = {
            type = "structure",
            traits = {
                json_name = "deletes",
            },
        },
    },
}

M.BlackoutSlateNetworkEndBlackout = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.BlackoutSlateState = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.BlackoutSlate = {
    type = "structure",
    members = {
        BlackoutSlateImage = {
            type = "structure",
            traits = {
                json_name = "blackoutSlateImage",
            },
        },
        NetworkEndBlackout = {
            type = "string",
            traits = {
                json_name = "networkEndBlackout",
            },
        },
        NetworkEndBlackoutImage = {
            type = "structure",
            traits = {
                json_name = "networkEndBlackoutImage",
            },
        },
        NetworkId = {
            type = "string",
            traits = {
                json_name = "networkId",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
    },
}

M.CancelInputDeviceTransferInput = {
    type = "structure",
    members = {
        InputDeviceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CancelInputDeviceTransferOutput = {
    type = "structure",
}

M.ColorCorrectionSettings = {
    type = "structure",
    members = {
        GlobalColorCorrections = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "globalColorCorrections",
                required = true,
            },
        },
    },
}

M.FeatureActivationsInputPrepareScheduleActions = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.FeatureActivationsOutputStaticImageOverlayScheduleActions = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.FeatureActivations = {
    type = "structure",
    members = {
        InputPrepareScheduleActions = {
            type = "string",
            traits = {
                json_name = "inputPrepareScheduleActions",
            },
        },
        OutputStaticImageOverlayScheduleActions = {
            type = "string",
            traits = {
                json_name = "outputStaticImageOverlayScheduleActions",
            },
        },
    },
}

M.GlobalConfigurationInputEndAction = {
    NONE = "NONE",
    SWITCH_AND_LOOP_INPUTS = "SWITCH_AND_LOOP_INPUTS",
}

M.InputLossImageType = {
    COLOR = "COLOR",
    SLATE = "SLATE",
}

M.InputLossBehavior = {
    type = "structure",
    members = {
        BlackFrameMsec = {
            type = "number",
            traits = {
                json_name = "blackFrameMsec",
            },
        },
        InputLossImageColor = {
            type = "string",
            traits = {
                json_name = "inputLossImageColor",
            },
        },
        InputLossImageSlate = {
            type = "structure",
            traits = {
                json_name = "inputLossImageSlate",
            },
        },
        InputLossImageType = {
            type = "string",
            traits = {
                json_name = "inputLossImageType",
            },
        },
        RepeatFrameMsec = {
            type = "number",
            traits = {
                json_name = "repeatFrameMsec",
            },
        },
    },
}

M.GlobalConfigurationOutputLockingMode = {
    EPOCH_LOCKING = "EPOCH_LOCKING",
    PIPELINE_LOCKING = "PIPELINE_LOCKING",
    DISABLED = "DISABLED",
}

M.DisabledLockingSettings = {
    type = "structure",
    members = {
        CustomEpoch = {
            type = "string",
            traits = {
                json_name = "customEpoch",
            },
        },
    },
}

M.EpochLockingSettings = {
    type = "structure",
    members = {
        CustomEpoch = {
            type = "string",
            traits = {
                json_name = "customEpoch",
            },
        },
        JamSyncTime = {
            type = "string",
            traits = {
                json_name = "jamSyncTime",
            },
        },
    },
}

M.PipelineLockingMethod = {
    SOURCE_TIMECODE = "SOURCE_TIMECODE",
    VIDEO_ALIGNMENT = "VIDEO_ALIGNMENT",
}

M.PipelineLockingSettings = {
    type = "structure",
    members = {
        PipelineLockingMethod = {
            type = "string",
            traits = {
                json_name = "pipelineLockingMethod",
            },
        },
        CustomEpoch = {
            type = "string",
            traits = {
                json_name = "customEpoch",
            },
        },
    },
}

M.OutputLockingSettings = {
    type = "structure",
    members = {
        EpochLockingSettings = {
            type = "structure",
            traits = {
                json_name = "epochLockingSettings",
            },
        },
        PipelineLockingSettings = {
            type = "structure",
            traits = {
                json_name = "pipelineLockingSettings",
            },
        },
        DisabledLockingSettings = {
            type = "structure",
            traits = {
                json_name = "disabledLockingSettings",
            },
        },
    },
}

M.GlobalConfigurationOutputTimingSource = {
    INPUT_CLOCK = "INPUT_CLOCK",
    SYSTEM_CLOCK = "SYSTEM_CLOCK",
}

M.GlobalConfigurationLowFramerateInputs = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.GlobalConfiguration = {
    type = "structure",
    members = {
        InitialAudioGain = {
            type = "number",
            traits = {
                json_name = "initialAudioGain",
            },
        },
        InputEndAction = {
            type = "string",
            traits = {
                json_name = "inputEndAction",
            },
        },
        InputLossBehavior = {
            type = "structure",
            traits = {
                json_name = "inputLossBehavior",
            },
        },
        OutputLockingMode = {
            type = "string",
            traits = {
                json_name = "outputLockingMode",
            },
        },
        OutputTimingSource = {
            type = "string",
            traits = {
                json_name = "outputTimingSource",
            },
        },
        SupportLowFramerateInputs = {
            type = "string",
            traits = {
                json_name = "supportLowFramerateInputs",
            },
        },
        OutputLockingSettings = {
            type = "structure",
            traits = {
                json_name = "outputLockingSettings",
            },
        },
    },
}

M.MotionGraphicsInsertion = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.HtmlMotionGraphicsSettings = {
    type = "structure",
}

M.MotionGraphicsSettings = {
    type = "structure",
    members = {
        HtmlMotionGraphicsSettings = {
            type = "structure",
            traits = {
                json_name = "htmlMotionGraphicsSettings",
            },
        },
    },
}

M.MotionGraphicsConfiguration = {
    type = "structure",
    members = {
        MotionGraphicsInsertion = {
            type = "string",
            traits = {
                json_name = "motionGraphicsInsertion",
            },
        },
        MotionGraphicsSettings = {
            type = "structure",
            traits = {
                json_name = "motionGraphicsSettings",
                required = true,
            },
        },
    },
}

M.NielsenPcmToId3TaggingState = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.NielsenConfiguration = {
    type = "structure",
    members = {
        DistributorId = {
            type = "string",
            traits = {
                json_name = "distributorId",
            },
        },
        NielsenPcmToId3Tagging = {
            type = "string",
            traits = {
                json_name = "nielsenPcmToId3Tagging",
            },
        },
    },
}

M.ThumbnailState = {
    AUTO = "AUTO",
    DISABLED = "DISABLED",
}

M.ThumbnailConfiguration = {
    type = "structure",
    members = {
        State = {
            type = "string",
            traits = {
                json_name = "state",
                required = true,
            },
        },
    },
}

M.TimecodeConfigSource = {
    EMBEDDED = "EMBEDDED",
    SYSTEMCLOCK = "SYSTEMCLOCK",
    ZEROBASED = "ZEROBASED",
}

M.TimecodeConfig = {
    type = "structure",
    members = {
        Source = {
            type = "string",
            traits = {
                json_name = "source",
                required = true,
            },
        },
        SyncThreshold = {
            type = "number",
            traits = {
                json_name = "syncThreshold",
            },
        },
    },
}

M.EncoderSettings = {
    type = "structure",
    members = {
        AudioDescriptions = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "audioDescriptions",
                required = true,
            },
        },
        AvailBlanking = {
            type = "structure",
            traits = {
                json_name = "availBlanking",
            },
        },
        AvailConfiguration = {
            type = "structure",
            traits = {
                json_name = "availConfiguration",
            },
        },
        BlackoutSlate = {
            type = "structure",
            traits = {
                json_name = "blackoutSlate",
            },
        },
        CaptionDescriptions = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "captionDescriptions",
            },
        },
        FeatureActivations = {
            type = "structure",
            traits = {
                json_name = "featureActivations",
            },
        },
        GlobalConfiguration = {
            type = "structure",
            traits = {
                json_name = "globalConfiguration",
            },
        },
        MotionGraphicsConfiguration = {
            type = "structure",
            traits = {
                json_name = "motionGraphicsConfiguration",
            },
        },
        NielsenConfiguration = {
            type = "structure",
            traits = {
                json_name = "nielsenConfiguration",
            },
        },
        OutputGroups = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "outputGroups",
                required = true,
            },
        },
        TimecodeConfig = {
            type = "structure",
            traits = {
                json_name = "timecodeConfig",
                required = true,
            },
        },
        VideoDescriptions = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "videoDescriptions",
                required = true,
            },
        },
        ThumbnailConfiguration = {
            type = "structure",
            traits = {
                json_name = "thumbnailConfiguration",
            },
        },
        ColorCorrectionSettings = {
            type = "structure",
            traits = {
                json_name = "colorCorrectionSettings",
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
        CdiInputSpecification = {
            type = "structure",
            traits = {
                json_name = "cdiInputSpecification",
            },
        },
        ChannelClass = {
            type = "string",
            traits = {
                json_name = "channelClass",
            },
        },
        Destinations = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "destinations",
            },
        },
        EgressEndpoints = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "egressEndpoints",
            },
        },
        EncoderSettings = {
            type = "structure",
            traits = {
                json_name = "encoderSettings",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        InputAttachments = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "inputAttachments",
            },
        },
        InputSpecification = {
            type = "structure",
            traits = {
                json_name = "inputSpecification",
            },
        },
        LogLevel = {
            type = "string",
            traits = {
                json_name = "logLevel",
            },
        },
        Maintenance = {
            type = "structure",
            traits = {
                json_name = "maintenance",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        PipelineDetails = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "pipelineDetails",
            },
        },
        PipelinesRunningCount = {
            type = "number",
            traits = {
                json_name = "pipelinesRunningCount",
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                json_name = "roleArn",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
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
        Vpc = {
            type = "structure",
            traits = {
                json_name = "vpc",
            },
        },
        AnywhereSettings = {
            type = "structure",
            traits = {
                json_name = "anywhereSettings",
            },
        },
        ChannelEngineVersion = {
            type = "structure",
            traits = {
                json_name = "channelEngineVersion",
            },
        },
        LinkedChannelSettings = {
            type = "structure",
            traits = {
                json_name = "linkedChannelSettings",
            },
        },
        ChannelSecurityGroups = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "channelSecurityGroups",
            },
        },
        InferenceSettings = {
            type = "structure",
            traits = {
                json_name = "inferenceSettings",
            },
        },
    },
}

M.ChannelEngineVersionRequest = {
    type = "structure",
    members = {
        Version = {
            type = "string",
            traits = {
                json_name = "version",
            },
        },
    },
}

M.ClaimDeviceInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
    },
}

M.ClaimDeviceOutput = {
    type = "structure",
}

M.ClusterNetworkSettingsCreateRequest = {
    type = "structure",
    members = {
        DefaultRoute = {
            type = "string",
            traits = {
                json_name = "defaultRoute",
            },
        },
        InterfaceMappings = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "interfaceMappings",
            },
        },
    },
}

M.ClusterNetworkSettingsUpdateRequest = {
    type = "structure",
    members = {
        DefaultRoute = {
            type = "string",
            traits = {
                json_name = "defaultRoute",
            },
        },
        InterfaceMappings = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "interfaceMappings",
            },
        },
    },
}

M.ContentType = {
    image_jpeg = "image/jpeg",
}

M.InferenceSettings = {
    type = "structure",
    members = {
        FeedArn = {
            type = "string",
            traits = {
                json_name = "feedArn",
            },
        },
    },
}

M.FollowerChannelSettings = {
    type = "structure",
    members = {
        LinkedChannelType = {
            type = "string",
            traits = {
                json_name = "linkedChannelType",
            },
        },
        PrimaryChannelArn = {
            type = "string",
            traits = {
                json_name = "primaryChannelArn",
            },
        },
    },
}

M.PrimaryChannelSettings = {
    type = "structure",
    members = {
        LinkedChannelType = {
            type = "string",
            traits = {
                json_name = "linkedChannelType",
            },
        },
    },
}

M.LinkedChannelSettings = {
    type = "structure",
    members = {
        FollowerChannelSettings = {
            type = "structure",
            traits = {
                json_name = "followerChannelSettings",
            },
        },
        PrimaryChannelSettings = {
            type = "structure",
            traits = {
                json_name = "primaryChannelSettings",
            },
        },
    },
}

M.MaintenanceCreateSettings = {
    type = "structure",
    members = {
        MaintenanceDay = {
            type = "string",
            traits = {
                json_name = "maintenanceDay",
            },
        },
        MaintenanceStartTime = {
            type = "string",
            traits = {
                json_name = "maintenanceStartTime",
            },
        },
    },
}

M.VpcOutputSettings = {
    type = "structure",
    members = {
        PublicAddressAllocationIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "publicAddressAllocationIds",
            },
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "securityGroupIds",
            },
        },
        SubnetIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "subnetIds",
                required = true,
            },
        },
    },
}

M.CreateChannelInput = {
    type = "structure",
    members = {
        CdiInputSpecification = {
            type = "structure",
            traits = {
                json_name = "cdiInputSpecification",
            },
        },
        ChannelClass = {
            type = "string",
            traits = {
                json_name = "channelClass",
            },
        },
        Destinations = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "destinations",
            },
        },
        EncoderSettings = {
            type = "structure",
            traits = {
                json_name = "encoderSettings",
            },
        },
        InputAttachments = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "inputAttachments",
            },
        },
        InputSpecification = {
            type = "structure",
            traits = {
                json_name = "inputSpecification",
            },
        },
        LogLevel = {
            type = "string",
            traits = {
                json_name = "logLevel",
            },
        },
        Maintenance = {
            type = "structure",
            traits = {
                json_name = "maintenance",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        RequestId = {
            type = "string",
            traits = {
                json_name = "requestId",
            },
        },
        Reserved = {
            type = "string",
            traits = {
                json_name = "reserved",
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                json_name = "roleArn",
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
        Vpc = {
            type = "structure",
            traits = {
                json_name = "vpc",
            },
        },
        AnywhereSettings = {
            type = "structure",
            traits = {
                json_name = "anywhereSettings",
            },
        },
        ChannelEngineVersion = {
            type = "structure",
            traits = {
                json_name = "channelEngineVersion",
            },
        },
        DryRun = {
            type = "boolean",
            traits = {
                json_name = "dryRun",
            },
        },
        LinkedChannelSettings = {
            type = "structure",
            traits = {
                json_name = "linkedChannelSettings",
            },
        },
        ChannelSecurityGroups = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "channelSecurityGroups",
            },
        },
        InferenceSettings = {
            type = "structure",
            traits = {
                json_name = "inferenceSettings",
            },
        },
    },
}

M.CreateChannelOutput = {
    type = "structure",
    members = {
        Channel = {
            type = "structure",
            traits = {
                json_name = "channel",
            },
        },
    },
}

M.CreateChannelPlacementGroupInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Nodes = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "nodes",
            },
        },
        RequestId = {
            type = "string",
            traits = {
                json_name = "requestId",
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

M.CreateChannelPlacementGroupOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Channels = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "channels",
            },
        },
        ClusterId = {
            type = "string",
            traits = {
                json_name = "clusterId",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Nodes = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "nodes",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
    },
}

M.CreateCloudWatchAlarmTemplateInput = {
    type = "structure",
    members = {
        ComparisonOperator = {
            type = "string",
            traits = {
                json_name = "comparisonOperator",
                required = true,
            },
        },
        DatapointsToAlarm = {
            type = "number",
            traits = {
                json_name = "datapointsToAlarm",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        EvaluationPeriods = {
            type = "number",
            traits = {
                json_name = "evaluationPeriods",
                required = true,
            },
        },
        GroupIdentifier = {
            type = "string",
            traits = {
                json_name = "groupIdentifier",
                required = true,
            },
        },
        MetricName = {
            type = "string",
            traits = {
                json_name = "metricName",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Period = {
            type = "number",
            traits = {
                json_name = "period",
                required = true,
            },
        },
        Statistic = {
            type = "string",
            traits = {
                json_name = "statistic",
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
        TargetResourceType = {
            type = "string",
            traits = {
                json_name = "targetResourceType",
                required = true,
            },
        },
        Threshold = {
            type = "number",
            traits = {
                json_name = "threshold",
                required = true,
            },
        },
        TreatMissingData = {
            type = "string",
            traits = {
                json_name = "treatMissingData",
                required = true,
            },
        },
        RequestId = {
            type = "string",
            traits = {
                json_name = "requestId",
            },
        },
    },
}

M.CreateCloudWatchAlarmTemplateOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        ComparisonOperator = {
            type = "string",
            traits = {
                json_name = "comparisonOperator",
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
            },
        },
        DatapointsToAlarm = {
            type = "number",
            traits = {
                json_name = "datapointsToAlarm",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        EvaluationPeriods = {
            type = "number",
            traits = {
                json_name = "evaluationPeriods",
            },
        },
        GroupId = {
            type = "string",
            traits = {
                json_name = "groupId",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        MetricName = {
            type = "string",
            traits = {
                json_name = "metricName",
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                json_name = "modifiedAt",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Period = {
            type = "number",
            traits = {
                json_name = "period",
            },
        },
        Statistic = {
            type = "string",
            traits = {
                json_name = "statistic",
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
        TargetResourceType = {
            type = "string",
            traits = {
                json_name = "targetResourceType",
            },
        },
        Threshold = {
            type = "number",
            traits = {
                json_name = "threshold",
            },
        },
        TreatMissingData = {
            type = "string",
            traits = {
                json_name = "treatMissingData",
            },
        },
    },
}

M.CreateCloudWatchAlarmTemplateGroupInput = {
    type = "structure",
    members = {
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
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        RequestId = {
            type = "string",
            traits = {
                json_name = "requestId",
            },
        },
    },
}

M.CreateCloudWatchAlarmTemplateGroupOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CreatedAt = {
            type = "timestamp",
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
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                json_name = "modifiedAt",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
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

M.CreateClusterInput = {
    type = "structure",
    members = {
        ClusterType = {
            type = "string",
            traits = {
                json_name = "clusterType",
            },
        },
        InstanceRoleArn = {
            type = "string",
            traits = {
                json_name = "instanceRoleArn",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        NetworkSettings = {
            type = "structure",
            traits = {
                json_name = "networkSettings",
            },
        },
        RequestId = {
            type = "string",
            traits = {
                json_name = "requestId",
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

M.CreateClusterOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        ChannelIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "channelIds",
            },
        },
        ClusterType = {
            type = "string",
            traits = {
                json_name = "clusterType",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        InstanceRoleArn = {
            type = "string",
            traits = {
                json_name = "instanceRoleArn",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        NetworkSettings = {
            type = "structure",
            traits = {
                json_name = "networkSettings",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
    },
}

M.CreateEventBridgeRuleTemplateInput = {
    type = "structure",
    members = {
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        EventTargets = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "eventTargets",
            },
        },
        EventType = {
            type = "string",
            traits = {
                json_name = "eventType",
                required = true,
            },
        },
        GroupIdentifier = {
            type = "string",
            traits = {
                json_name = "groupIdentifier",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
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
        RequestId = {
            type = "string",
            traits = {
                json_name = "requestId",
            },
        },
    },
}

M.CreateEventBridgeRuleTemplateOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CreatedAt = {
            type = "timestamp",
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
        EventTargets = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "eventTargets",
            },
        },
        EventType = {
            type = "string",
            traits = {
                json_name = "eventType",
            },
        },
        GroupId = {
            type = "string",
            traits = {
                json_name = "groupId",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                json_name = "modifiedAt",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
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

M.CreateEventBridgeRuleTemplateGroupInput = {
    type = "structure",
    members = {
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
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        RequestId = {
            type = "string",
            traits = {
                json_name = "requestId",
            },
        },
    },
}

M.CreateEventBridgeRuleTemplateGroupOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CreatedAt = {
            type = "timestamp",
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
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                json_name = "modifiedAt",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
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

M.MulticastSettingsCreateRequest = {
    type = "structure",
    members = {
        Sources = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "sources",
            },
        },
    },
}

M.RouterSettings = {
    type = "structure",
    members = {
        Destinations = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "destinations",
            },
        },
        EncryptionType = {
            type = "string",
            traits = {
                json_name = "encryptionType",
            },
        },
        SecretArn = {
            type = "string",
            traits = {
                json_name = "secretArn",
            },
        },
    },
}

M.SrtListenerDecryptionRequest = {
    type = "structure",
    members = {
        Algorithm = {
            type = "string",
            traits = {
                json_name = "algorithm",
                required = true,
            },
        },
        PassphraseSecretArn = {
            type = "string",
            traits = {
                json_name = "passphraseSecretArn",
                required = true,
            },
        },
    },
}

M.SrtListenerSettingsRequest = {
    type = "structure",
    members = {
        Decryption = {
            type = "structure",
            traits = {
                json_name = "decryption",
                required = true,
            },
        },
        MinimumLatency = {
            type = "number",
            traits = {
                json_name = "minimumLatency",
                required = true,
            },
        },
        StreamId = {
            type = "string",
            traits = {
                json_name = "streamId",
            },
        },
    },
}

M.SrtSettingsRequest = {
    type = "structure",
    members = {
        SrtCallerSources = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "srtCallerSources",
            },
        },
        SrtListenerSettings = {
            type = "structure",
            traits = {
                json_name = "srtListenerSettings",
            },
        },
    },
}

M.InputVpcRequest = {
    type = "structure",
    members = {
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "securityGroupIds",
            },
        },
        SubnetIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "subnetIds",
                required = true,
            },
        },
    },
}

M.CreateInputInput = {
    type = "structure",
    members = {
        Destinations = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "destinations",
            },
        },
        InputDevices = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "inputDevices",
            },
        },
        InputSecurityGroups = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "inputSecurityGroups",
            },
        },
        MediaConnectFlows = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "mediaConnectFlows",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        RequestId = {
            type = "string",
            traits = {
                json_name = "requestId",
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                json_name = "roleArn",
            },
        },
        Sources = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "sources",
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
        Type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
        Vpc = {
            type = "structure",
            traits = {
                json_name = "vpc",
            },
        },
        SrtSettings = {
            type = "structure",
            traits = {
                json_name = "srtSettings",
            },
        },
        InputNetworkLocation = {
            type = "string",
            traits = {
                json_name = "inputNetworkLocation",
            },
        },
        MulticastSettings = {
            type = "structure",
            traits = {
                json_name = "multicastSettings",
            },
        },
        Smpte2110ReceiverGroupSettings = {
            type = "structure",
            traits = {
                json_name = "smpte2110ReceiverGroupSettings",
            },
        },
        SdiSources = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "sdiSources",
            },
        },
        RouterSettings = {
            type = "structure",
            traits = {
                json_name = "routerSettings",
            },
        },
    },
}

M.CreateInputOutput = {
    type = "structure",
    members = {
        Input = {
            type = "structure",
            traits = {
                json_name = "input",
            },
        },
    },
}

M.CreateInputSecurityGroupInput = {
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
        WhitelistRules = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "whitelistRules",
            },
        },
    },
}

M.CreateInputSecurityGroupOutput = {
    type = "structure",
    members = {
        SecurityGroup = {
            type = "structure",
            traits = {
                json_name = "securityGroup",
            },
        },
    },
}

M.MultiplexSettings = {
    type = "structure",
    members = {
        MaximumVideoBufferDelayMilliseconds = {
            type = "number",
            traits = {
                json_name = "maximumVideoBufferDelayMilliseconds",
            },
        },
        TransportStreamBitrate = {
            type = "number",
            traits = {
                json_name = "transportStreamBitrate",
                required = true,
            },
        },
        TransportStreamId = {
            type = "number",
            traits = {
                json_name = "transportStreamId",
                required = true,
            },
        },
        TransportStreamReservedBitrate = {
            type = "number",
            traits = {
                json_name = "transportStreamReservedBitrate",
            },
        },
    },
}

M.CreateMultiplexInput = {
    type = "structure",
    members = {
        AvailabilityZones = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "availabilityZones",
                required = true,
            },
        },
        MultiplexSettings = {
            type = "structure",
            traits = {
                json_name = "multiplexSettings",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        RequestId = {
            type = "string",
            traits = {
                json_name = "requestId",
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

M.Multiplex = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        AvailabilityZones = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "availabilityZones",
            },
        },
        Destinations = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "destinations",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        MultiplexSettings = {
            type = "structure",
            traits = {
                json_name = "multiplexSettings",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        PipelinesRunningCount = {
            type = "number",
            traits = {
                json_name = "pipelinesRunningCount",
            },
        },
        ProgramCount = {
            type = "number",
            traits = {
                json_name = "programCount",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
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

M.CreateMultiplexOutput = {
    type = "structure",
    members = {
        Multiplex = {
            type = "structure",
            traits = {
                json_name = "multiplex",
            },
        },
    },
}

M.PreferredChannelPipeline = {
    CURRENTLY_ACTIVE = "CURRENTLY_ACTIVE",
    PIPELINE_0 = "PIPELINE_0",
    PIPELINE_1 = "PIPELINE_1",
}

M.MultiplexProgramServiceDescriptor = {
    type = "structure",
    members = {
        ProviderName = {
            type = "string",
            traits = {
                json_name = "providerName",
                required = true,
            },
        },
        ServiceName = {
            type = "string",
            traits = {
                json_name = "serviceName",
                required = true,
            },
        },
    },
}

M.MultiplexStatmuxVideoSettings = {
    type = "structure",
    members = {
        MaximumBitrate = {
            type = "number",
            traits = {
                json_name = "maximumBitrate",
            },
        },
        MinimumBitrate = {
            type = "number",
            traits = {
                json_name = "minimumBitrate",
            },
        },
        Priority = {
            type = "number",
            traits = {
                json_name = "priority",
            },
        },
    },
}

M.MultiplexVideoSettings = {
    type = "structure",
    members = {
        ConstantBitrate = {
            type = "number",
            traits = {
                json_name = "constantBitrate",
            },
        },
        StatmuxSettings = {
            type = "structure",
            traits = {
                json_name = "statmuxSettings",
            },
        },
    },
}

M.MultiplexProgramSettings = {
    type = "structure",
    members = {
        PreferredChannelPipeline = {
            type = "string",
            traits = {
                json_name = "preferredChannelPipeline",
            },
        },
        ProgramNumber = {
            type = "number",
            traits = {
                json_name = "programNumber",
                required = true,
            },
        },
        ServiceDescriptor = {
            type = "structure",
            traits = {
                json_name = "serviceDescriptor",
            },
        },
        VideoSettings = {
            type = "structure",
            traits = {
                json_name = "videoSettings",
            },
        },
    },
}

M.CreateMultiplexProgramInput = {
    type = "structure",
    members = {
        MultiplexId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MultiplexProgramSettings = {
            type = "structure",
            traits = {
                json_name = "multiplexProgramSettings",
                required = true,
            },
        },
        ProgramName = {
            type = "string",
            traits = {
                json_name = "programName",
                required = true,
            },
        },
        RequestId = {
            type = "string",
            traits = {
                json_name = "requestId",
                required = true,
            },
        },
    },
}

M.MultiplexProgramPacketIdentifiersMap = {
    type = "structure",
    members = {
        AudioPids = {
            type = "list",
            member_type = "number",
            traits = {
                json_name = "audioPids",
            },
        },
        DvbSubPids = {
            type = "list",
            member_type = "number",
            traits = {
                json_name = "dvbSubPids",
            },
        },
        DvbTeletextPid = {
            type = "number",
            traits = {
                json_name = "dvbTeletextPid",
            },
        },
        EtvPlatformPid = {
            type = "number",
            traits = {
                json_name = "etvPlatformPid",
            },
        },
        EtvSignalPid = {
            type = "number",
            traits = {
                json_name = "etvSignalPid",
            },
        },
        KlvDataPids = {
            type = "list",
            member_type = "number",
            traits = {
                json_name = "klvDataPids",
            },
        },
        PcrPid = {
            type = "number",
            traits = {
                json_name = "pcrPid",
            },
        },
        PmtPid = {
            type = "number",
            traits = {
                json_name = "pmtPid",
            },
        },
        PrivateMetadataPid = {
            type = "number",
            traits = {
                json_name = "privateMetadataPid",
            },
        },
        Scte27Pids = {
            type = "list",
            member_type = "number",
            traits = {
                json_name = "scte27Pids",
            },
        },
        Scte35Pid = {
            type = "number",
            traits = {
                json_name = "scte35Pid",
            },
        },
        TimedMetadataPid = {
            type = "number",
            traits = {
                json_name = "timedMetadataPid",
            },
        },
        VideoPid = {
            type = "number",
            traits = {
                json_name = "videoPid",
            },
        },
        AribCaptionsPid = {
            type = "number",
            traits = {
                json_name = "aribCaptionsPid",
            },
        },
        DvbTeletextPids = {
            type = "list",
            member_type = "number",
            traits = {
                json_name = "dvbTeletextPids",
            },
        },
        EcmPid = {
            type = "number",
            traits = {
                json_name = "ecmPid",
            },
        },
        Smpte2038Pid = {
            type = "number",
            traits = {
                json_name = "smpte2038Pid",
            },
        },
    },
}

M.MultiplexProgram = {
    type = "structure",
    members = {
        ChannelId = {
            type = "string",
            traits = {
                json_name = "channelId",
            },
        },
        MultiplexProgramSettings = {
            type = "structure",
            traits = {
                json_name = "multiplexProgramSettings",
            },
        },
        PacketIdentifiersMap = {
            type = "structure",
            traits = {
                json_name = "packetIdentifiersMap",
            },
        },
        PipelineDetails = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "pipelineDetails",
            },
        },
        ProgramName = {
            type = "string",
            traits = {
                json_name = "programName",
            },
        },
    },
}

M.CreateMultiplexProgramOutput = {
    type = "structure",
    members = {
        MultiplexProgram = {
            type = "structure",
            traits = {
                json_name = "multiplexProgram",
            },
        },
    },
}

M.CreateNetworkInput = {
    type = "structure",
    members = {
        IpPools = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "ipPools",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        RequestId = {
            type = "string",
            traits = {
                json_name = "requestId",
            },
        },
        Routes = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "routes",
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

M.CreateNetworkOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        AssociatedClusterIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "associatedClusterIds",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        IpPools = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "ipPools",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Routes = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "routes",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
    },
}

M.CreateNodeInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        NodeInterfaceMappings = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "nodeInterfaceMappings",
            },
        },
        RequestId = {
            type = "string",
            traits = {
                json_name = "requestId",
            },
        },
        Role = {
            type = "string",
            traits = {
                json_name = "role",
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

M.CreateNodeOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        ChannelPlacementGroups = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "channelPlacementGroups",
            },
        },
        ClusterId = {
            type = "string",
            traits = {
                json_name = "clusterId",
            },
        },
        ConnectionState = {
            type = "string",
            traits = {
                json_name = "connectionState",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        InstanceArn = {
            type = "string",
            traits = {
                json_name = "instanceArn",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        NodeInterfaceMappings = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "nodeInterfaceMappings",
            },
        },
        Role = {
            type = "string",
            traits = {
                json_name = "role",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
        SdiSourceMappings = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "sdiSourceMappings",
            },
        },
    },
}

M.CreateNodeRegistrationScriptInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        NodeInterfaceMappings = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "nodeInterfaceMappings",
            },
        },
        RequestId = {
            type = "string",
            traits = {
                json_name = "requestId",
            },
        },
        Role = {
            type = "string",
            traits = {
                json_name = "role",
            },
        },
    },
}

M.CreateNodeRegistrationScriptOutput = {
    type = "structure",
    members = {
        NodeRegistrationScript = {
            type = "string",
            traits = {
                json_name = "nodeRegistrationScript",
            },
        },
    },
}

M.CreatePartnerInputInput = {
    type = "structure",
    members = {
        InputId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RequestId = {
            type = "string",
            traits = {
                json_name = "requestId",
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

M.CreatePartnerInputOutput = {
    type = "structure",
    members = {
        Input = {
            type = "structure",
            traits = {
                json_name = "input",
            },
        },
    },
}

M.CreateSdiSourceInput = {
    type = "structure",
    members = {
        Mode = {
            type = "string",
            traits = {
                json_name = "mode",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        RequestId = {
            type = "string",
            traits = {
                json_name = "requestId",
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
        Type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
    },
}

M.SdiSource = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "inputs",
            },
        },
        Mode = {
            type = "string",
            traits = {
                json_name = "mode",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
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

M.CreateSdiSourceOutput = {
    type = "structure",
    members = {
        SdiSource = {
            type = "structure",
            traits = {
                json_name = "sdiSource",
            },
        },
    },
}

M.CreateSignalMapInput = {
    type = "structure",
    members = {
        CloudWatchAlarmTemplateGroupIdentifiers = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "cloudWatchAlarmTemplateGroupIdentifiers",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        DiscoveryEntryPointArn = {
            type = "string",
            traits = {
                json_name = "discoveryEntryPointArn",
                required = true,
            },
        },
        EventBridgeRuleTemplateGroupIdentifiers = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "eventBridgeRuleTemplateGroupIdentifiers",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
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
        RequestId = {
            type = "string",
            traits = {
                json_name = "requestId",
            },
        },
    },
}

M.MediaResource = {
    type = "structure",
    members = {
        Destinations = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "destinations",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Sources = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "sources",
            },
        },
    },
}

M.SuccessfulMonitorDeployment = {
    type = "structure",
    members = {
        DetailsUri = {
            type = "string",
            traits = {
                json_name = "detailsUri",
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
                required = true,
            },
        },
    },
}

M.MonitorDeployment = {
    type = "structure",
    members = {
        DetailsUri = {
            type = "string",
            traits = {
                json_name = "detailsUri",
            },
        },
        ErrorMessage = {
            type = "string",
            traits = {
                json_name = "errorMessage",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
                required = true,
            },
        },
    },
}

M.CreateSignalMapOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CloudWatchAlarmTemplateGroupIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "cloudWatchAlarmTemplateGroupIds",
            },
        },
        CreatedAt = {
            type = "timestamp",
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
        DiscoveryEntryPointArn = {
            type = "string",
            traits = {
                json_name = "discoveryEntryPointArn",
            },
        },
        ErrorMessage = {
            type = "string",
            traits = {
                json_name = "errorMessage",
            },
        },
        EventBridgeRuleTemplateGroupIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "eventBridgeRuleTemplateGroupIds",
            },
        },
        FailedMediaResourceMap = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                json_name = "failedMediaResourceMap",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        LastDiscoveredAt = {
            type = "timestamp",
            traits = {
                json_name = "lastDiscoveredAt",
            },
        },
        LastSuccessfulMonitorDeployment = {
            type = "structure",
            traits = {
                json_name = "lastSuccessfulMonitorDeployment",
            },
        },
        MediaResourceMap = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                json_name = "mediaResourceMap",
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                json_name = "modifiedAt",
            },
        },
        MonitorChangesPendingDeployment = {
            type = "boolean",
            traits = {
                json_name = "monitorChangesPendingDeployment",
            },
        },
        MonitorDeployment = {
            type = "structure",
            traits = {
                json_name = "monitorDeployment",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
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

M.CreateTagsInput = {
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
            },
        },
    },
}

M.CreateTagsOutput = {
    type = "structure",
}

M.DeleteChannelInput = {
    type = "structure",
    members = {
        ChannelId = {
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
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CdiInputSpecification = {
            type = "structure",
            traits = {
                json_name = "cdiInputSpecification",
            },
        },
        ChannelClass = {
            type = "string",
            traits = {
                json_name = "channelClass",
            },
        },
        Destinations = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "destinations",
            },
        },
        EgressEndpoints = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "egressEndpoints",
            },
        },
        EncoderSettings = {
            type = "structure",
            traits = {
                json_name = "encoderSettings",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        InputAttachments = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "inputAttachments",
            },
        },
        InputSpecification = {
            type = "structure",
            traits = {
                json_name = "inputSpecification",
            },
        },
        LogLevel = {
            type = "string",
            traits = {
                json_name = "logLevel",
            },
        },
        Maintenance = {
            type = "structure",
            traits = {
                json_name = "maintenance",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        PipelineDetails = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "pipelineDetails",
            },
        },
        PipelinesRunningCount = {
            type = "number",
            traits = {
                json_name = "pipelinesRunningCount",
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                json_name = "roleArn",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
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
        Vpc = {
            type = "structure",
            traits = {
                json_name = "vpc",
            },
        },
        AnywhereSettings = {
            type = "structure",
            traits = {
                json_name = "anywhereSettings",
            },
        },
        ChannelEngineVersion = {
            type = "structure",
            traits = {
                json_name = "channelEngineVersion",
            },
        },
        LinkedChannelSettings = {
            type = "structure",
            traits = {
                json_name = "linkedChannelSettings",
            },
        },
        ChannelSecurityGroups = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "channelSecurityGroups",
            },
        },
        InferenceSettings = {
            type = "structure",
            traits = {
                json_name = "inferenceSettings",
            },
        },
    },
}

M.DeleteChannelPlacementGroupInput = {
    type = "structure",
    members = {
        ChannelPlacementGroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteChannelPlacementGroupOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Channels = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "channels",
            },
        },
        ClusterId = {
            type = "string",
            traits = {
                json_name = "clusterId",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Nodes = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "nodes",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
    },
}

M.DeleteCloudWatchAlarmTemplateInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCloudWatchAlarmTemplateOutput = {
    type = "structure",
}

M.DeleteCloudWatchAlarmTemplateGroupInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCloudWatchAlarmTemplateGroupOutput = {
    type = "structure",
}

M.DeleteClusterInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteClusterOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        ChannelIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "channelIds",
            },
        },
        ClusterType = {
            type = "string",
            traits = {
                json_name = "clusterType",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        InstanceRoleArn = {
            type = "string",
            traits = {
                json_name = "instanceRoleArn",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        NetworkSettings = {
            type = "structure",
            traits = {
                json_name = "networkSettings",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
    },
}

M.DeleteEventBridgeRuleTemplateInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteEventBridgeRuleTemplateOutput = {
    type = "structure",
}

M.DeleteEventBridgeRuleTemplateGroupInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteEventBridgeRuleTemplateGroupOutput = {
    type = "structure",
}

M.DeleteInputInput = {
    type = "structure",
    members = {
        InputId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteInputOutput = {
    type = "structure",
}

M.DeleteInputSecurityGroupInput = {
    type = "structure",
    members = {
        InputSecurityGroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteInputSecurityGroupOutput = {
    type = "structure",
}

M.DeleteMultiplexInput = {
    type = "structure",
    members = {
        MultiplexId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMultiplexOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        AvailabilityZones = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "availabilityZones",
            },
        },
        Destinations = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "destinations",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        MultiplexSettings = {
            type = "structure",
            traits = {
                json_name = "multiplexSettings",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        PipelinesRunningCount = {
            type = "number",
            traits = {
                json_name = "pipelinesRunningCount",
            },
        },
        ProgramCount = {
            type = "number",
            traits = {
                json_name = "programCount",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
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

M.DeleteMultiplexProgramInput = {
    type = "structure",
    members = {
        MultiplexId = {
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

M.DeleteMultiplexProgramOutput = {
    type = "structure",
    members = {
        ChannelId = {
            type = "string",
            traits = {
                json_name = "channelId",
            },
        },
        MultiplexProgramSettings = {
            type = "structure",
            traits = {
                json_name = "multiplexProgramSettings",
            },
        },
        PacketIdentifiersMap = {
            type = "structure",
            traits = {
                json_name = "packetIdentifiersMap",
            },
        },
        PipelineDetails = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "pipelineDetails",
            },
        },
        ProgramName = {
            type = "string",
            traits = {
                json_name = "programName",
            },
        },
    },
}

M.DeleteNetworkInput = {
    type = "structure",
    members = {
        NetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteNetworkOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        AssociatedClusterIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "associatedClusterIds",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        IpPools = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "ipPools",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Routes = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "routes",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
    },
}

M.DeleteNodeInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NodeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteNodeOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        ChannelPlacementGroups = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "channelPlacementGroups",
            },
        },
        ClusterId = {
            type = "string",
            traits = {
                json_name = "clusterId",
            },
        },
        ConnectionState = {
            type = "string",
            traits = {
                json_name = "connectionState",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        InstanceArn = {
            type = "string",
            traits = {
                json_name = "instanceArn",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        NodeInterfaceMappings = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "nodeInterfaceMappings",
            },
        },
        Role = {
            type = "string",
            traits = {
                json_name = "role",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
        SdiSourceMappings = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "sdiSourceMappings",
            },
        },
    },
}

M.DeleteReservationInput = {
    type = "structure",
    members = {
        ReservationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteReservationOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Count = {
            type = "number",
            traits = {
                json_name = "count",
            },
        },
        CurrencyCode = {
            type = "string",
            traits = {
                json_name = "currencyCode",
            },
        },
        Duration = {
            type = "number",
            traits = {
                json_name = "duration",
            },
        },
        DurationUnits = {
            type = "string",
            traits = {
                json_name = "durationUnits",
            },
        },
        End = {
            type = "string",
            traits = {
                json_name = "end",
            },
        },
        FixedPrice = {
            type = "number",
            traits = {
                json_name = "fixedPrice",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        OfferingDescription = {
            type = "string",
            traits = {
                json_name = "offeringDescription",
            },
        },
        OfferingId = {
            type = "string",
            traits = {
                json_name = "offeringId",
            },
        },
        OfferingType = {
            type = "string",
            traits = {
                json_name = "offeringType",
            },
        },
        Region = {
            type = "string",
            traits = {
                json_name = "region",
            },
        },
        RenewalSettings = {
            type = "structure",
            traits = {
                json_name = "renewalSettings",
            },
        },
        ReservationId = {
            type = "string",
            traits = {
                json_name = "reservationId",
            },
        },
        ResourceSpecification = {
            type = "structure",
            traits = {
                json_name = "resourceSpecification",
            },
        },
        Start = {
            type = "string",
            traits = {
                json_name = "start",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
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
        UsagePrice = {
            type = "number",
            traits = {
                json_name = "usagePrice",
            },
        },
    },
}

M.DeleteScheduleInput = {
    type = "structure",
    members = {
        ChannelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteScheduleOutput = {
    type = "structure",
}

M.DeleteSdiSourceInput = {
    type = "structure",
    members = {
        SdiSourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSdiSourceOutput = {
    type = "structure",
    members = {
        SdiSource = {
            type = "structure",
            traits = {
                json_name = "sdiSource",
            },
        },
    },
}

M.DeleteSignalMapInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSignalMapOutput = {
    type = "structure",
}

M.DeleteTagsInput = {
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

M.DeleteTagsOutput = {
    type = "structure",
}

M.DescribeAccountConfigurationInput = {
    type = "structure",
}

M.DescribeAccountConfigurationOutput = {
    type = "structure",
    members = {
        AccountConfiguration = {
            type = "structure",
            traits = {
                json_name = "accountConfiguration",
            },
        },
    },
}

M.DescribeChannelInput = {
    type = "structure",
    members = {
        ChannelId = {
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
        CdiInputSpecification = {
            type = "structure",
            traits = {
                json_name = "cdiInputSpecification",
            },
        },
        ChannelClass = {
            type = "string",
            traits = {
                json_name = "channelClass",
            },
        },
        Destinations = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "destinations",
            },
        },
        EgressEndpoints = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "egressEndpoints",
            },
        },
        EncoderSettings = {
            type = "structure",
            traits = {
                json_name = "encoderSettings",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        InputAttachments = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "inputAttachments",
            },
        },
        InputSpecification = {
            type = "structure",
            traits = {
                json_name = "inputSpecification",
            },
        },
        LogLevel = {
            type = "string",
            traits = {
                json_name = "logLevel",
            },
        },
        Maintenance = {
            type = "structure",
            traits = {
                json_name = "maintenance",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        PipelineDetails = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "pipelineDetails",
            },
        },
        PipelinesRunningCount = {
            type = "number",
            traits = {
                json_name = "pipelinesRunningCount",
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                json_name = "roleArn",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
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
        Vpc = {
            type = "structure",
            traits = {
                json_name = "vpc",
            },
        },
        AnywhereSettings = {
            type = "structure",
            traits = {
                json_name = "anywhereSettings",
            },
        },
        ChannelEngineVersion = {
            type = "structure",
            traits = {
                json_name = "channelEngineVersion",
            },
        },
        LinkedChannelSettings = {
            type = "structure",
            traits = {
                json_name = "linkedChannelSettings",
            },
        },
        ChannelSecurityGroups = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "channelSecurityGroups",
            },
        },
        InferenceSettings = {
            type = "structure",
            traits = {
                json_name = "inferenceSettings",
            },
        },
    },
}

M.DescribeChannelPlacementGroupInput = {
    type = "structure",
    members = {
        ChannelPlacementGroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeChannelPlacementGroupOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Channels = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "channels",
            },
        },
        ClusterId = {
            type = "string",
            traits = {
                json_name = "clusterId",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Nodes = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "nodes",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
    },
}

M.DescribeClusterInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeClusterOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        ChannelIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "channelIds",
            },
        },
        ClusterType = {
            type = "string",
            traits = {
                json_name = "clusterType",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        InstanceRoleArn = {
            type = "string",
            traits = {
                json_name = "instanceRoleArn",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        NetworkSettings = {
            type = "structure",
            traits = {
                json_name = "networkSettings",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
    },
}

M.DescribeInputInput = {
    type = "structure",
    members = {
        InputId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeInputOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        AttachedChannels = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "attachedChannels",
            },
        },
        Destinations = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "destinations",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        InputClass = {
            type = "string",
            traits = {
                json_name = "inputClass",
            },
        },
        InputDevices = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "inputDevices",
            },
        },
        InputPartnerIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "inputPartnerIds",
            },
        },
        InputSourceType = {
            type = "string",
            traits = {
                json_name = "inputSourceType",
            },
        },
        MediaConnectFlows = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "mediaConnectFlows",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                json_name = "roleArn",
            },
        },
        SecurityGroups = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "securityGroups",
            },
        },
        Sources = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "sources",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
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
        Type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
        SrtSettings = {
            type = "structure",
            traits = {
                json_name = "srtSettings",
            },
        },
        InputNetworkLocation = {
            type = "string",
            traits = {
                json_name = "inputNetworkLocation",
            },
        },
        MulticastSettings = {
            type = "structure",
            traits = {
                json_name = "multicastSettings",
            },
        },
        Smpte2110ReceiverGroupSettings = {
            type = "structure",
            traits = {
                json_name = "smpte2110ReceiverGroupSettings",
            },
        },
        SdiSources = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "sdiSources",
            },
        },
        RouterSettings = {
            type = "structure",
            traits = {
                json_name = "routerSettings",
            },
        },
    },
}

M.DescribeInputDeviceInput = {
    type = "structure",
    members = {
        InputDeviceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeInputDeviceOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        ConnectionState = {
            type = "string",
            traits = {
                json_name = "connectionState",
            },
        },
        DeviceSettingsSyncState = {
            type = "string",
            traits = {
                json_name = "deviceSettingsSyncState",
            },
        },
        DeviceUpdateStatus = {
            type = "string",
            traits = {
                json_name = "deviceUpdateStatus",
            },
        },
        HdDeviceSettings = {
            type = "structure",
            traits = {
                json_name = "hdDeviceSettings",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        MacAddress = {
            type = "string",
            traits = {
                json_name = "macAddress",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        NetworkSettings = {
            type = "structure",
            traits = {
                json_name = "networkSettings",
            },
        },
        SerialNumber = {
            type = "string",
            traits = {
                json_name = "serialNumber",
            },
        },
        Type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
        UhdDeviceSettings = {
            type = "structure",
            traits = {
                json_name = "uhdDeviceSettings",
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
        AvailabilityZone = {
            type = "string",
            traits = {
                json_name = "availabilityZone",
            },
        },
        MedialiveInputArns = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "medialiveInputArns",
            },
        },
        OutputType = {
            type = "string",
            traits = {
                json_name = "outputType",
            },
        },
    },
}

M.DescribeInputDeviceThumbnailInput = {
    type = "structure",
    members = {
        InputDeviceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Accept = {
            type = "string",
            traits = {
                http_header = "accept",
                required = true,
            },
        },
    },
}

M.DescribeInputDeviceThumbnailOutput = {
    type = "structure",
    members = {
        Body = {
            type = "blob",
            traits = {
                http_payload = true,
                json_name = "body",
            },
        },
        ContentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        ContentLength = {
            type = "number",
            traits = {
                http_header = "Content-Length",
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
        LastModified = {
            type = "timestamp",
            traits = {
                http_header = "Last-Modified",
            },
        },
    },
}

M.DescribeInputSecurityGroupInput = {
    type = "structure",
    members = {
        InputSecurityGroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeInputSecurityGroupOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "inputs",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
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
        WhitelistRules = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "whitelistRules",
            },
        },
        Channels = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "channels",
            },
        },
    },
}

M.DescribeMultiplexInput = {
    type = "structure",
    members = {
        MultiplexId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeMultiplexOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        AvailabilityZones = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "availabilityZones",
            },
        },
        Destinations = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "destinations",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        MultiplexSettings = {
            type = "structure",
            traits = {
                json_name = "multiplexSettings",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        PipelinesRunningCount = {
            type = "number",
            traits = {
                json_name = "pipelinesRunningCount",
            },
        },
        ProgramCount = {
            type = "number",
            traits = {
                json_name = "programCount",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
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

M.DescribeMultiplexProgramInput = {
    type = "structure",
    members = {
        MultiplexId = {
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

M.DescribeMultiplexProgramOutput = {
    type = "structure",
    members = {
        ChannelId = {
            type = "string",
            traits = {
                json_name = "channelId",
            },
        },
        MultiplexProgramSettings = {
            type = "structure",
            traits = {
                json_name = "multiplexProgramSettings",
            },
        },
        PacketIdentifiersMap = {
            type = "structure",
            traits = {
                json_name = "packetIdentifiersMap",
            },
        },
        PipelineDetails = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "pipelineDetails",
            },
        },
        ProgramName = {
            type = "string",
            traits = {
                json_name = "programName",
            },
        },
    },
}

M.DescribeNetworkInput = {
    type = "structure",
    members = {
        NetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeNetworkOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        AssociatedClusterIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "associatedClusterIds",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        IpPools = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "ipPools",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Routes = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "routes",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
    },
}

M.DescribeNodeInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NodeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeNodeOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        ChannelPlacementGroups = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "channelPlacementGroups",
            },
        },
        ClusterId = {
            type = "string",
            traits = {
                json_name = "clusterId",
            },
        },
        ConnectionState = {
            type = "string",
            traits = {
                json_name = "connectionState",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        InstanceArn = {
            type = "string",
            traits = {
                json_name = "instanceArn",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        NodeInterfaceMappings = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "nodeInterfaceMappings",
            },
        },
        Role = {
            type = "string",
            traits = {
                json_name = "role",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
        SdiSourceMappings = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "sdiSourceMappings",
            },
        },
    },
}

M.DescribeOfferingInput = {
    type = "structure",
    members = {
        OfferingId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeOfferingOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CurrencyCode = {
            type = "string",
            traits = {
                json_name = "currencyCode",
            },
        },
        Duration = {
            type = "number",
            traits = {
                json_name = "duration",
            },
        },
        DurationUnits = {
            type = "string",
            traits = {
                json_name = "durationUnits",
            },
        },
        FixedPrice = {
            type = "number",
            traits = {
                json_name = "fixedPrice",
            },
        },
        OfferingDescription = {
            type = "string",
            traits = {
                json_name = "offeringDescription",
            },
        },
        OfferingId = {
            type = "string",
            traits = {
                json_name = "offeringId",
            },
        },
        OfferingType = {
            type = "string",
            traits = {
                json_name = "offeringType",
            },
        },
        Region = {
            type = "string",
            traits = {
                json_name = "region",
            },
        },
        ResourceSpecification = {
            type = "structure",
            traits = {
                json_name = "resourceSpecification",
            },
        },
        UsagePrice = {
            type = "number",
            traits = {
                json_name = "usagePrice",
            },
        },
    },
}

M.DescribeReservationInput = {
    type = "structure",
    members = {
        ReservationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeReservationOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Count = {
            type = "number",
            traits = {
                json_name = "count",
            },
        },
        CurrencyCode = {
            type = "string",
            traits = {
                json_name = "currencyCode",
            },
        },
        Duration = {
            type = "number",
            traits = {
                json_name = "duration",
            },
        },
        DurationUnits = {
            type = "string",
            traits = {
                json_name = "durationUnits",
            },
        },
        End = {
            type = "string",
            traits = {
                json_name = "end",
            },
        },
        FixedPrice = {
            type = "number",
            traits = {
                json_name = "fixedPrice",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        OfferingDescription = {
            type = "string",
            traits = {
                json_name = "offeringDescription",
            },
        },
        OfferingId = {
            type = "string",
            traits = {
                json_name = "offeringId",
            },
        },
        OfferingType = {
            type = "string",
            traits = {
                json_name = "offeringType",
            },
        },
        Region = {
            type = "string",
            traits = {
                json_name = "region",
            },
        },
        RenewalSettings = {
            type = "structure",
            traits = {
                json_name = "renewalSettings",
            },
        },
        ReservationId = {
            type = "string",
            traits = {
                json_name = "reservationId",
            },
        },
        ResourceSpecification = {
            type = "structure",
            traits = {
                json_name = "resourceSpecification",
            },
        },
        Start = {
            type = "string",
            traits = {
                json_name = "start",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
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
        UsagePrice = {
            type = "number",
            traits = {
                json_name = "usagePrice",
            },
        },
    },
}

M.DescribeScheduleInput = {
    type = "structure",
    members = {
        ChannelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
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

M.DescribeScheduleOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        ScheduleActions = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "scheduleActions",
            },
        },
    },
}

M.DescribeSdiSourceInput = {
    type = "structure",
    members = {
        SdiSourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeSdiSourceOutput = {
    type = "structure",
    members = {
        SdiSource = {
            type = "structure",
            traits = {
                json_name = "sdiSource",
            },
        },
    },
}

M.DescribeThumbnailsInput = {
    type = "structure",
    members = {
        ChannelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PipelineId = {
            type = "string",
            traits = {
                http_query = "pipelineId",
                required = true,
            },
        },
        ThumbnailType = {
            type = "string",
            traits = {
                http_query = "thumbnailType",
                required = true,
            },
        },
    },
}

M.DescribeThumbnailsOutput = {
    type = "structure",
    members = {
        ThumbnailDetails = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "thumbnailDetails",
            },
        },
    },
}

M.GetCloudWatchAlarmTemplateInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCloudWatchAlarmTemplateOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        ComparisonOperator = {
            type = "string",
            traits = {
                json_name = "comparisonOperator",
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
            },
        },
        DatapointsToAlarm = {
            type = "number",
            traits = {
                json_name = "datapointsToAlarm",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        EvaluationPeriods = {
            type = "number",
            traits = {
                json_name = "evaluationPeriods",
            },
        },
        GroupId = {
            type = "string",
            traits = {
                json_name = "groupId",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        MetricName = {
            type = "string",
            traits = {
                json_name = "metricName",
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                json_name = "modifiedAt",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Period = {
            type = "number",
            traits = {
                json_name = "period",
            },
        },
        Statistic = {
            type = "string",
            traits = {
                json_name = "statistic",
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
        TargetResourceType = {
            type = "string",
            traits = {
                json_name = "targetResourceType",
            },
        },
        Threshold = {
            type = "number",
            traits = {
                json_name = "threshold",
            },
        },
        TreatMissingData = {
            type = "string",
            traits = {
                json_name = "treatMissingData",
            },
        },
    },
}

M.GetCloudWatchAlarmTemplateGroupInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCloudWatchAlarmTemplateGroupOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CreatedAt = {
            type = "timestamp",
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
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                json_name = "modifiedAt",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
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

M.GetEventBridgeRuleTemplateInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetEventBridgeRuleTemplateOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CreatedAt = {
            type = "timestamp",
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
        EventTargets = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "eventTargets",
            },
        },
        EventType = {
            type = "string",
            traits = {
                json_name = "eventType",
            },
        },
        GroupId = {
            type = "string",
            traits = {
                json_name = "groupId",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                json_name = "modifiedAt",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
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

M.GetEventBridgeRuleTemplateGroupInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetEventBridgeRuleTemplateGroupOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CreatedAt = {
            type = "timestamp",
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
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                json_name = "modifiedAt",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
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

M.GetSignalMapInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSignalMapOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CloudWatchAlarmTemplateGroupIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "cloudWatchAlarmTemplateGroupIds",
            },
        },
        CreatedAt = {
            type = "timestamp",
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
        DiscoveryEntryPointArn = {
            type = "string",
            traits = {
                json_name = "discoveryEntryPointArn",
            },
        },
        ErrorMessage = {
            type = "string",
            traits = {
                json_name = "errorMessage",
            },
        },
        EventBridgeRuleTemplateGroupIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "eventBridgeRuleTemplateGroupIds",
            },
        },
        FailedMediaResourceMap = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                json_name = "failedMediaResourceMap",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        LastDiscoveredAt = {
            type = "timestamp",
            traits = {
                json_name = "lastDiscoveredAt",
            },
        },
        LastSuccessfulMonitorDeployment = {
            type = "structure",
            traits = {
                json_name = "lastSuccessfulMonitorDeployment",
            },
        },
        MediaResourceMap = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                json_name = "mediaResourceMap",
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                json_name = "modifiedAt",
            },
        },
        MonitorChangesPendingDeployment = {
            type = "boolean",
            traits = {
                json_name = "monitorChangesPendingDeployment",
            },
        },
        MonitorDeployment = {
            type = "structure",
            traits = {
                json_name = "monitorDeployment",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
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

M.InputDeviceMediaConnectConfigurableSettings = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                json_name = "flowArn",
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                json_name = "roleArn",
            },
        },
        SecretArn = {
            type = "string",
            traits = {
                json_name = "secretArn",
            },
        },
        SourceName = {
            type = "string",
            traits = {
                json_name = "sourceName",
            },
        },
    },
}

M.InputDeviceConfigurableSettings = {
    type = "structure",
    members = {
        ConfiguredInput = {
            type = "string",
            traits = {
                json_name = "configuredInput",
            },
        },
        MaxBitrate = {
            type = "number",
            traits = {
                json_name = "maxBitrate",
            },
        },
        LatencyMs = {
            type = "number",
            traits = {
                json_name = "latencyMs",
            },
        },
        Codec = {
            type = "string",
            traits = {
                json_name = "codec",
            },
        },
        MediaconnectSettings = {
            type = "structure",
            traits = {
                json_name = "mediaconnectSettings",
            },
        },
        AudioChannelPairs = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "audioChannelPairs",
            },
        },
        InputResolution = {
            type = "string",
            traits = {
                json_name = "inputResolution",
            },
        },
    },
}

M.ListAlertsInput = {
    type = "structure",
    members = {
        ChannelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
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
        StateFilter = {
            type = "string",
            traits = {
                http_query = "stateFilter",
            },
        },
    },
}

M.ListAlertsOutput = {
    type = "structure",
    members = {
        Alerts = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "alerts",
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

M.ListChannelPlacementGroupsInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
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

M.ListChannelPlacementGroupsOutput = {
    type = "structure",
    members = {
        ChannelPlacementGroups = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "channelPlacementGroups",
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

M.ListCloudWatchAlarmTemplateGroupsInput = {
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
        Scope = {
            type = "string",
            traits = {
                http_query = "scope",
            },
        },
        SignalMapIdentifier = {
            type = "string",
            traits = {
                http_query = "signalMapIdentifier",
            },
        },
    },
}

M.ListCloudWatchAlarmTemplateGroupsOutput = {
    type = "structure",
    members = {
        CloudWatchAlarmTemplateGroups = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "cloudWatchAlarmTemplateGroups",
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

M.ListCloudWatchAlarmTemplatesInput = {
    type = "structure",
    members = {
        GroupIdentifier = {
            type = "string",
            traits = {
                http_query = "groupIdentifier",
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
        Scope = {
            type = "string",
            traits = {
                http_query = "scope",
            },
        },
        SignalMapIdentifier = {
            type = "string",
            traits = {
                http_query = "signalMapIdentifier",
            },
        },
    },
}

M.ListCloudWatchAlarmTemplatesOutput = {
    type = "structure",
    members = {
        CloudWatchAlarmTemplates = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "cloudWatchAlarmTemplates",
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

M.ListClusterAlertsInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
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
        StateFilter = {
            type = "string",
            traits = {
                http_query = "stateFilter",
            },
        },
    },
}

M.ListClusterAlertsOutput = {
    type = "structure",
    members = {
        Alerts = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "alerts",
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

M.ListClustersInput = {
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

M.ListClustersOutput = {
    type = "structure",
    members = {
        Clusters = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "clusters",
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

M.ListEventBridgeRuleTemplateGroupsInput = {
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
        SignalMapIdentifier = {
            type = "string",
            traits = {
                http_query = "signalMapIdentifier",
            },
        },
    },
}

M.ListEventBridgeRuleTemplateGroupsOutput = {
    type = "structure",
    members = {
        EventBridgeRuleTemplateGroups = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "eventBridgeRuleTemplateGroups",
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

M.ListEventBridgeRuleTemplatesInput = {
    type = "structure",
    members = {
        GroupIdentifier = {
            type = "string",
            traits = {
                http_query = "groupIdentifier",
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
        SignalMapIdentifier = {
            type = "string",
            traits = {
                http_query = "signalMapIdentifier",
            },
        },
    },
}

M.ListEventBridgeRuleTemplatesOutput = {
    type = "structure",
    members = {
        EventBridgeRuleTemplates = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "eventBridgeRuleTemplates",
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

M.ListInputDevicesInput = {
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

M.ListInputDevicesOutput = {
    type = "structure",
    members = {
        InputDevices = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "inputDevices",
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

M.ListInputDeviceTransfersInput = {
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
        TransferType = {
            type = "string",
            traits = {
                http_query = "transferType",
                required = true,
            },
        },
    },
}

M.ListInputDeviceTransfersOutput = {
    type = "structure",
    members = {
        InputDeviceTransfers = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "inputDeviceTransfers",
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

M.ListInputsInput = {
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

M.ListInputsOutput = {
    type = "structure",
    members = {
        Inputs = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "inputs",
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

M.ListInputSecurityGroupsInput = {
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

M.ListInputSecurityGroupsOutput = {
    type = "structure",
    members = {
        InputSecurityGroups = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "inputSecurityGroups",
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

M.ListMultiplexAlertsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        MultiplexId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        StateFilter = {
            type = "string",
            traits = {
                http_query = "stateFilter",
            },
        },
    },
}

M.ListMultiplexAlertsOutput = {
    type = "structure",
    members = {
        Alerts = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "alerts",
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

M.ListMultiplexesInput = {
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

M.ListMultiplexesOutput = {
    type = "structure",
    members = {
        Multiplexes = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "multiplexes",
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

M.ListMultiplexProgramsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        MultiplexId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
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

M.ListMultiplexProgramsOutput = {
    type = "structure",
    members = {
        MultiplexPrograms = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "multiplexPrograms",
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

M.ListNetworksInput = {
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

M.ListNetworksOutput = {
    type = "structure",
    members = {
        Networks = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "networks",
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

M.ListNodesInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
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

M.ListNodesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        Nodes = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "nodes",
            },
        },
    },
}

M.ListOfferingsInput = {
    type = "structure",
    members = {
        ChannelClass = {
            type = "string",
            traits = {
                http_query = "channelClass",
            },
        },
        ChannelConfiguration = {
            type = "string",
            traits = {
                http_query = "channelConfiguration",
            },
        },
        Codec = {
            type = "string",
            traits = {
                http_query = "codec",
            },
        },
        Duration = {
            type = "string",
            traits = {
                http_query = "duration",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        MaximumBitrate = {
            type = "string",
            traits = {
                http_query = "maximumBitrate",
            },
        },
        MaximumFramerate = {
            type = "string",
            traits = {
                http_query = "maximumFramerate",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        Resolution = {
            type = "string",
            traits = {
                http_query = "resolution",
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                http_query = "resourceType",
            },
        },
        SpecialFeature = {
            type = "string",
            traits = {
                http_query = "specialFeature",
            },
        },
        VideoQuality = {
            type = "string",
            traits = {
                http_query = "videoQuality",
            },
        },
    },
}

M.ListOfferingsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        Offerings = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "offerings",
            },
        },
    },
}

M.ListReservationsInput = {
    type = "structure",
    members = {
        ChannelClass = {
            type = "string",
            traits = {
                http_query = "channelClass",
            },
        },
        Codec = {
            type = "string",
            traits = {
                http_query = "codec",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        MaximumBitrate = {
            type = "string",
            traits = {
                http_query = "maximumBitrate",
            },
        },
        MaximumFramerate = {
            type = "string",
            traits = {
                http_query = "maximumFramerate",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        Resolution = {
            type = "string",
            traits = {
                http_query = "resolution",
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                http_query = "resourceType",
            },
        },
        SpecialFeature = {
            type = "string",
            traits = {
                http_query = "specialFeature",
            },
        },
        VideoQuality = {
            type = "string",
            traits = {
                http_query = "videoQuality",
            },
        },
    },
}

M.ListReservationsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        Reservations = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "reservations",
            },
        },
    },
}

M.ListSdiSourcesInput = {
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

M.ListSdiSourcesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        SdiSources = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "sdiSources",
            },
        },
    },
}

M.ListSignalMapsInput = {
    type = "structure",
    members = {
        CloudWatchAlarmTemplateGroupIdentifier = {
            type = "string",
            traits = {
                http_query = "cloudWatchAlarmTemplateGroupIdentifier",
            },
        },
        EventBridgeRuleTemplateGroupIdentifier = {
            type = "string",
            traits = {
                http_query = "eventBridgeRuleTemplateGroupIdentifier",
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

M.ListSignalMapsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        SignalMaps = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "signalMaps",
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

M.ListVersionsInput = {
    type = "structure",
}

M.ListVersionsOutput = {
    type = "structure",
    members = {
        Versions = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "versions",
            },
        },
    },
}

M.MaintenanceUpdateSettings = {
    type = "structure",
    members = {
        MaintenanceDay = {
            type = "string",
            traits = {
                json_name = "maintenanceDay",
            },
        },
        MaintenanceScheduledDate = {
            type = "string",
            traits = {
                json_name = "maintenanceScheduledDate",
            },
        },
        MaintenanceStartTime = {
            type = "string",
            traits = {
                json_name = "maintenanceStartTime",
            },
        },
    },
}

M.PurchaseOfferingInput = {
    type = "structure",
    members = {
        Count = {
            type = "number",
            traits = {
                json_name = "count",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        OfferingId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RenewalSettings = {
            type = "structure",
            traits = {
                json_name = "renewalSettings",
            },
        },
        RequestId = {
            type = "string",
            traits = {
                json_name = "requestId",
            },
        },
        Start = {
            type = "string",
            traits = {
                json_name = "start",
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

M.PurchaseOfferingOutput = {
    type = "structure",
    members = {
        Reservation = {
            type = "structure",
            traits = {
                json_name = "reservation",
            },
        },
    },
}

M.RebootInputDeviceForce = {
    NO = "NO",
    YES = "YES",
}

M.RebootInputDeviceInput = {
    type = "structure",
    members = {
        Force = {
            type = "string",
            traits = {
                json_name = "force",
            },
        },
        InputDeviceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RebootInputDeviceOutput = {
    type = "structure",
}

M.RejectInputDeviceTransferInput = {
    type = "structure",
    members = {
        InputDeviceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RejectInputDeviceTransferOutput = {
    type = "structure",
}

M.RestartChannelPipelinesInput = {
    type = "structure",
    members = {
        ChannelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PipelineIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "pipelineIds",
            },
        },
    },
}

M.RestartChannelPipelinesOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CdiInputSpecification = {
            type = "structure",
            traits = {
                json_name = "cdiInputSpecification",
            },
        },
        ChannelClass = {
            type = "string",
            traits = {
                json_name = "channelClass",
            },
        },
        Destinations = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "destinations",
            },
        },
        EgressEndpoints = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "egressEndpoints",
            },
        },
        EncoderSettings = {
            type = "structure",
            traits = {
                json_name = "encoderSettings",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        InputAttachments = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "inputAttachments",
            },
        },
        InputSpecification = {
            type = "structure",
            traits = {
                json_name = "inputSpecification",
            },
        },
        LogLevel = {
            type = "string",
            traits = {
                json_name = "logLevel",
            },
        },
        Maintenance = {
            type = "structure",
            traits = {
                json_name = "maintenance",
            },
        },
        MaintenanceStatus = {
            type = "string",
            traits = {
                json_name = "maintenanceStatus",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        PipelineDetails = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "pipelineDetails",
            },
        },
        PipelinesRunningCount = {
            type = "number",
            traits = {
                json_name = "pipelinesRunningCount",
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                json_name = "roleArn",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
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
        Vpc = {
            type = "structure",
            traits = {
                json_name = "vpc",
            },
        },
        AnywhereSettings = {
            type = "structure",
            traits = {
                json_name = "anywhereSettings",
            },
        },
        ChannelEngineVersion = {
            type = "structure",
            traits = {
                json_name = "channelEngineVersion",
            },
        },
        LinkedChannelSettings = {
            type = "structure",
            traits = {
                json_name = "linkedChannelSettings",
            },
        },
        ChannelSecurityGroups = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "channelSecurityGroups",
            },
        },
        InferenceSettings = {
            type = "structure",
            traits = {
                json_name = "inferenceSettings",
            },
        },
    },
}

M.StartChannelInput = {
    type = "structure",
    members = {
        ChannelId = {
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
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CdiInputSpecification = {
            type = "structure",
            traits = {
                json_name = "cdiInputSpecification",
            },
        },
        ChannelClass = {
            type = "string",
            traits = {
                json_name = "channelClass",
            },
        },
        Destinations = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "destinations",
            },
        },
        EgressEndpoints = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "egressEndpoints",
            },
        },
        EncoderSettings = {
            type = "structure",
            traits = {
                json_name = "encoderSettings",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        InputAttachments = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "inputAttachments",
            },
        },
        InputSpecification = {
            type = "structure",
            traits = {
                json_name = "inputSpecification",
            },
        },
        LogLevel = {
            type = "string",
            traits = {
                json_name = "logLevel",
            },
        },
        Maintenance = {
            type = "structure",
            traits = {
                json_name = "maintenance",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        PipelineDetails = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "pipelineDetails",
            },
        },
        PipelinesRunningCount = {
            type = "number",
            traits = {
                json_name = "pipelinesRunningCount",
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                json_name = "roleArn",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
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
        Vpc = {
            type = "structure",
            traits = {
                json_name = "vpc",
            },
        },
        AnywhereSettings = {
            type = "structure",
            traits = {
                json_name = "anywhereSettings",
            },
        },
        ChannelEngineVersion = {
            type = "structure",
            traits = {
                json_name = "channelEngineVersion",
            },
        },
        LinkedChannelSettings = {
            type = "structure",
            traits = {
                json_name = "linkedChannelSettings",
            },
        },
        ChannelSecurityGroups = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "channelSecurityGroups",
            },
        },
        InferenceSettings = {
            type = "structure",
            traits = {
                json_name = "inferenceSettings",
            },
        },
    },
}

M.StartDeleteMonitorDeploymentInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StartDeleteMonitorDeploymentOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CloudWatchAlarmTemplateGroupIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "cloudWatchAlarmTemplateGroupIds",
            },
        },
        CreatedAt = {
            type = "timestamp",
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
        DiscoveryEntryPointArn = {
            type = "string",
            traits = {
                json_name = "discoveryEntryPointArn",
            },
        },
        ErrorMessage = {
            type = "string",
            traits = {
                json_name = "errorMessage",
            },
        },
        EventBridgeRuleTemplateGroupIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "eventBridgeRuleTemplateGroupIds",
            },
        },
        FailedMediaResourceMap = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                json_name = "failedMediaResourceMap",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        LastDiscoveredAt = {
            type = "timestamp",
            traits = {
                json_name = "lastDiscoveredAt",
            },
        },
        LastSuccessfulMonitorDeployment = {
            type = "structure",
            traits = {
                json_name = "lastSuccessfulMonitorDeployment",
            },
        },
        MediaResourceMap = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                json_name = "mediaResourceMap",
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                json_name = "modifiedAt",
            },
        },
        MonitorChangesPendingDeployment = {
            type = "boolean",
            traits = {
                json_name = "monitorChangesPendingDeployment",
            },
        },
        MonitorDeployment = {
            type = "structure",
            traits = {
                json_name = "monitorDeployment",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
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

M.StartInputDeviceInput = {
    type = "structure",
    members = {
        InputDeviceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StartInputDeviceOutput = {
    type = "structure",
}

M.StartInputDeviceMaintenanceWindowInput = {
    type = "structure",
    members = {
        InputDeviceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StartInputDeviceMaintenanceWindowOutput = {
    type = "structure",
}

M.StartMonitorDeploymentInput = {
    type = "structure",
    members = {
        DryRun = {
            type = "boolean",
            traits = {
                json_name = "dryRun",
            },
        },
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StartMonitorDeploymentOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CloudWatchAlarmTemplateGroupIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "cloudWatchAlarmTemplateGroupIds",
            },
        },
        CreatedAt = {
            type = "timestamp",
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
        DiscoveryEntryPointArn = {
            type = "string",
            traits = {
                json_name = "discoveryEntryPointArn",
            },
        },
        ErrorMessage = {
            type = "string",
            traits = {
                json_name = "errorMessage",
            },
        },
        EventBridgeRuleTemplateGroupIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "eventBridgeRuleTemplateGroupIds",
            },
        },
        FailedMediaResourceMap = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                json_name = "failedMediaResourceMap",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        LastDiscoveredAt = {
            type = "timestamp",
            traits = {
                json_name = "lastDiscoveredAt",
            },
        },
        LastSuccessfulMonitorDeployment = {
            type = "structure",
            traits = {
                json_name = "lastSuccessfulMonitorDeployment",
            },
        },
        MediaResourceMap = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                json_name = "mediaResourceMap",
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                json_name = "modifiedAt",
            },
        },
        MonitorChangesPendingDeployment = {
            type = "boolean",
            traits = {
                json_name = "monitorChangesPendingDeployment",
            },
        },
        MonitorDeployment = {
            type = "structure",
            traits = {
                json_name = "monitorDeployment",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
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

M.StartMultiplexInput = {
    type = "structure",
    members = {
        MultiplexId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StartMultiplexOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        AvailabilityZones = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "availabilityZones",
            },
        },
        Destinations = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "destinations",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        MultiplexSettings = {
            type = "structure",
            traits = {
                json_name = "multiplexSettings",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        PipelinesRunningCount = {
            type = "number",
            traits = {
                json_name = "pipelinesRunningCount",
            },
        },
        ProgramCount = {
            type = "number",
            traits = {
                json_name = "programCount",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
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

M.StartUpdateSignalMapInput = {
    type = "structure",
    members = {
        CloudWatchAlarmTemplateGroupIdentifiers = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "cloudWatchAlarmTemplateGroupIdentifiers",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        DiscoveryEntryPointArn = {
            type = "string",
            traits = {
                json_name = "discoveryEntryPointArn",
            },
        },
        EventBridgeRuleTemplateGroupIdentifiers = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "eventBridgeRuleTemplateGroupIdentifiers",
            },
        },
        ForceRediscovery = {
            type = "boolean",
            traits = {
                json_name = "forceRediscovery",
            },
        },
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
    },
}

M.StartUpdateSignalMapOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CloudWatchAlarmTemplateGroupIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "cloudWatchAlarmTemplateGroupIds",
            },
        },
        CreatedAt = {
            type = "timestamp",
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
        DiscoveryEntryPointArn = {
            type = "string",
            traits = {
                json_name = "discoveryEntryPointArn",
            },
        },
        ErrorMessage = {
            type = "string",
            traits = {
                json_name = "errorMessage",
            },
        },
        EventBridgeRuleTemplateGroupIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "eventBridgeRuleTemplateGroupIds",
            },
        },
        FailedMediaResourceMap = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                json_name = "failedMediaResourceMap",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        LastDiscoveredAt = {
            type = "timestamp",
            traits = {
                json_name = "lastDiscoveredAt",
            },
        },
        LastSuccessfulMonitorDeployment = {
            type = "structure",
            traits = {
                json_name = "lastSuccessfulMonitorDeployment",
            },
        },
        MediaResourceMap = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                json_name = "mediaResourceMap",
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                json_name = "modifiedAt",
            },
        },
        MonitorChangesPendingDeployment = {
            type = "boolean",
            traits = {
                json_name = "monitorChangesPendingDeployment",
            },
        },
        MonitorDeployment = {
            type = "structure",
            traits = {
                json_name = "monitorDeployment",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
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

M.StopChannelInput = {
    type = "structure",
    members = {
        ChannelId = {
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
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CdiInputSpecification = {
            type = "structure",
            traits = {
                json_name = "cdiInputSpecification",
            },
        },
        ChannelClass = {
            type = "string",
            traits = {
                json_name = "channelClass",
            },
        },
        Destinations = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "destinations",
            },
        },
        EgressEndpoints = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "egressEndpoints",
            },
        },
        EncoderSettings = {
            type = "structure",
            traits = {
                json_name = "encoderSettings",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        InputAttachments = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "inputAttachments",
            },
        },
        InputSpecification = {
            type = "structure",
            traits = {
                json_name = "inputSpecification",
            },
        },
        LogLevel = {
            type = "string",
            traits = {
                json_name = "logLevel",
            },
        },
        Maintenance = {
            type = "structure",
            traits = {
                json_name = "maintenance",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        PipelineDetails = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "pipelineDetails",
            },
        },
        PipelinesRunningCount = {
            type = "number",
            traits = {
                json_name = "pipelinesRunningCount",
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                json_name = "roleArn",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
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
        Vpc = {
            type = "structure",
            traits = {
                json_name = "vpc",
            },
        },
        AnywhereSettings = {
            type = "structure",
            traits = {
                json_name = "anywhereSettings",
            },
        },
        ChannelEngineVersion = {
            type = "structure",
            traits = {
                json_name = "channelEngineVersion",
            },
        },
        LinkedChannelSettings = {
            type = "structure",
            traits = {
                json_name = "linkedChannelSettings",
            },
        },
        ChannelSecurityGroups = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "channelSecurityGroups",
            },
        },
        InferenceSettings = {
            type = "structure",
            traits = {
                json_name = "inferenceSettings",
            },
        },
    },
}

M.StopInputDeviceInput = {
    type = "structure",
    members = {
        InputDeviceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopInputDeviceOutput = {
    type = "structure",
}

M.StopMultiplexInput = {
    type = "structure",
    members = {
        MultiplexId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopMultiplexOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        AvailabilityZones = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "availabilityZones",
            },
        },
        Destinations = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "destinations",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        MultiplexSettings = {
            type = "structure",
            traits = {
                json_name = "multiplexSettings",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        PipelinesRunningCount = {
            type = "number",
            traits = {
                json_name = "pipelinesRunningCount",
            },
        },
        ProgramCount = {
            type = "number",
            traits = {
                json_name = "programCount",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
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

M.TransferInputDeviceInput = {
    type = "structure",
    members = {
        InputDeviceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TargetCustomerId = {
            type = "string",
            traits = {
                json_name = "targetCustomerId",
            },
        },
        TargetRegion = {
            type = "string",
            traits = {
                json_name = "targetRegion",
            },
        },
        TransferMessage = {
            type = "string",
            traits = {
                json_name = "transferMessage",
            },
        },
    },
}

M.TransferInputDeviceOutput = {
    type = "structure",
}

M.UpdateAccountConfigurationInput = {
    type = "structure",
    members = {
        AccountConfiguration = {
            type = "structure",
            traits = {
                json_name = "accountConfiguration",
            },
        },
    },
}

M.UpdateAccountConfigurationOutput = {
    type = "structure",
    members = {
        AccountConfiguration = {
            type = "structure",
            traits = {
                json_name = "accountConfiguration",
            },
        },
    },
}

M.SpecialRouterSettings = {
    type = "structure",
    members = {
        RouterArn = {
            type = "string",
            traits = {
                json_name = "routerArn",
            },
        },
    },
}

M.UpdateChannelInput = {
    type = "structure",
    members = {
        CdiInputSpecification = {
            type = "structure",
            traits = {
                json_name = "cdiInputSpecification",
            },
        },
        ChannelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Destinations = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "destinations",
            },
        },
        EncoderSettings = {
            type = "structure",
            traits = {
                json_name = "encoderSettings",
            },
        },
        InputAttachments = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "inputAttachments",
            },
        },
        InputSpecification = {
            type = "structure",
            traits = {
                json_name = "inputSpecification",
            },
        },
        LogLevel = {
            type = "string",
            traits = {
                json_name = "logLevel",
            },
        },
        Maintenance = {
            type = "structure",
            traits = {
                json_name = "maintenance",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                json_name = "roleArn",
            },
        },
        ChannelEngineVersion = {
            type = "structure",
            traits = {
                json_name = "channelEngineVersion",
            },
        },
        DryRun = {
            type = "boolean",
            traits = {
                json_name = "dryRun",
            },
        },
        AnywhereSettings = {
            type = "structure",
            traits = {
                json_name = "anywhereSettings",
            },
        },
        LinkedChannelSettings = {
            type = "structure",
            traits = {
                json_name = "linkedChannelSettings",
            },
        },
        ChannelSecurityGroups = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "channelSecurityGroups",
            },
        },
        InferenceSettings = {
            type = "structure",
            traits = {
                json_name = "inferenceSettings",
            },
        },
        SpecialRouterSettings = {
            type = "structure",
            traits = {
                json_name = "specialRouterSettings",
            },
        },
    },
}

M.UpdateChannelOutput = {
    type = "structure",
    members = {
        Channel = {
            type = "structure",
            traits = {
                json_name = "channel",
            },
        },
    },
}

M.UpdateChannelClassInput = {
    type = "structure",
    members = {
        ChannelClass = {
            type = "string",
            traits = {
                json_name = "channelClass",
                required = true,
            },
        },
        ChannelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Destinations = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "destinations",
            },
        },
    },
}

M.UpdateChannelClassOutput = {
    type = "structure",
    members = {
        Channel = {
            type = "structure",
            traits = {
                json_name = "channel",
            },
        },
    },
}

M.UpdateChannelPlacementGroupInput = {
    type = "structure",
    members = {
        ChannelPlacementGroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Nodes = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "nodes",
            },
        },
    },
}

M.UpdateChannelPlacementGroupOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Channels = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "channels",
            },
        },
        ClusterId = {
            type = "string",
            traits = {
                json_name = "clusterId",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Nodes = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "nodes",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
    },
}

M.UpdateCloudWatchAlarmTemplateInput = {
    type = "structure",
    members = {
        ComparisonOperator = {
            type = "string",
            traits = {
                json_name = "comparisonOperator",
            },
        },
        DatapointsToAlarm = {
            type = "number",
            traits = {
                json_name = "datapointsToAlarm",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        EvaluationPeriods = {
            type = "number",
            traits = {
                json_name = "evaluationPeriods",
            },
        },
        GroupIdentifier = {
            type = "string",
            traits = {
                json_name = "groupIdentifier",
            },
        },
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MetricName = {
            type = "string",
            traits = {
                json_name = "metricName",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Period = {
            type = "number",
            traits = {
                json_name = "period",
            },
        },
        Statistic = {
            type = "string",
            traits = {
                json_name = "statistic",
            },
        },
        TargetResourceType = {
            type = "string",
            traits = {
                json_name = "targetResourceType",
            },
        },
        Threshold = {
            type = "number",
            traits = {
                json_name = "threshold",
            },
        },
        TreatMissingData = {
            type = "string",
            traits = {
                json_name = "treatMissingData",
            },
        },
    },
}

M.UpdateCloudWatchAlarmTemplateOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        ComparisonOperator = {
            type = "string",
            traits = {
                json_name = "comparisonOperator",
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
            },
        },
        DatapointsToAlarm = {
            type = "number",
            traits = {
                json_name = "datapointsToAlarm",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        EvaluationPeriods = {
            type = "number",
            traits = {
                json_name = "evaluationPeriods",
            },
        },
        GroupId = {
            type = "string",
            traits = {
                json_name = "groupId",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        MetricName = {
            type = "string",
            traits = {
                json_name = "metricName",
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                json_name = "modifiedAt",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Period = {
            type = "number",
            traits = {
                json_name = "period",
            },
        },
        Statistic = {
            type = "string",
            traits = {
                json_name = "statistic",
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
        TargetResourceType = {
            type = "string",
            traits = {
                json_name = "targetResourceType",
            },
        },
        Threshold = {
            type = "number",
            traits = {
                json_name = "threshold",
            },
        },
        TreatMissingData = {
            type = "string",
            traits = {
                json_name = "treatMissingData",
            },
        },
    },
}

M.UpdateCloudWatchAlarmTemplateGroupInput = {
    type = "structure",
    members = {
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateCloudWatchAlarmTemplateGroupOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CreatedAt = {
            type = "timestamp",
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
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                json_name = "modifiedAt",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
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

M.UpdateClusterInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        NetworkSettings = {
            type = "structure",
            traits = {
                json_name = "networkSettings",
            },
        },
    },
}

M.UpdateClusterOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        ChannelIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "channelIds",
            },
        },
        ClusterType = {
            type = "string",
            traits = {
                json_name = "clusterType",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        NetworkSettings = {
            type = "structure",
            traits = {
                json_name = "networkSettings",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
    },
}

M.UpdateEventBridgeRuleTemplateInput = {
    type = "structure",
    members = {
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        EventTargets = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "eventTargets",
            },
        },
        EventType = {
            type = "string",
            traits = {
                json_name = "eventType",
            },
        },
        GroupIdentifier = {
            type = "string",
            traits = {
                json_name = "groupIdentifier",
            },
        },
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
    },
}

M.UpdateEventBridgeRuleTemplateOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CreatedAt = {
            type = "timestamp",
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
        EventTargets = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "eventTargets",
            },
        },
        EventType = {
            type = "string",
            traits = {
                json_name = "eventType",
            },
        },
        GroupId = {
            type = "string",
            traits = {
                json_name = "groupId",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                json_name = "modifiedAt",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
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

M.UpdateEventBridgeRuleTemplateGroupInput = {
    type = "structure",
    members = {
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateEventBridgeRuleTemplateGroupOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CreatedAt = {
            type = "timestamp",
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
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                json_name = "modifiedAt",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
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

M.MulticastSettingsUpdateRequest = {
    type = "structure",
    members = {
        Sources = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "sources",
            },
        },
    },
}

M.UpdateInputInput = {
    type = "structure",
    members = {
        Destinations = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "destinations",
            },
        },
        InputDevices = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "inputDevices",
            },
        },
        InputId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InputSecurityGroups = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "inputSecurityGroups",
            },
        },
        MediaConnectFlows = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "mediaConnectFlows",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                json_name = "roleArn",
            },
        },
        Sources = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "sources",
            },
        },
        SrtSettings = {
            type = "structure",
            traits = {
                json_name = "srtSettings",
            },
        },
        MulticastSettings = {
            type = "structure",
            traits = {
                json_name = "multicastSettings",
            },
        },
        Smpte2110ReceiverGroupSettings = {
            type = "structure",
            traits = {
                json_name = "smpte2110ReceiverGroupSettings",
            },
        },
        SdiSources = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "sdiSources",
            },
        },
        SpecialRouterSettings = {
            type = "structure",
            traits = {
                json_name = "specialRouterSettings",
            },
        },
    },
}

M.UpdateInputOutput = {
    type = "structure",
    members = {
        Input = {
            type = "structure",
            traits = {
                json_name = "input",
            },
        },
    },
}

M.UpdateInputDeviceInput = {
    type = "structure",
    members = {
        HdDeviceSettings = {
            type = "structure",
            traits = {
                json_name = "hdDeviceSettings",
            },
        },
        InputDeviceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        UhdDeviceSettings = {
            type = "structure",
            traits = {
                json_name = "uhdDeviceSettings",
            },
        },
        AvailabilityZone = {
            type = "string",
            traits = {
                json_name = "availabilityZone",
            },
        },
    },
}

M.UpdateInputDeviceOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        ConnectionState = {
            type = "string",
            traits = {
                json_name = "connectionState",
            },
        },
        DeviceSettingsSyncState = {
            type = "string",
            traits = {
                json_name = "deviceSettingsSyncState",
            },
        },
        DeviceUpdateStatus = {
            type = "string",
            traits = {
                json_name = "deviceUpdateStatus",
            },
        },
        HdDeviceSettings = {
            type = "structure",
            traits = {
                json_name = "hdDeviceSettings",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        MacAddress = {
            type = "string",
            traits = {
                json_name = "macAddress",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        NetworkSettings = {
            type = "structure",
            traits = {
                json_name = "networkSettings",
            },
        },
        SerialNumber = {
            type = "string",
            traits = {
                json_name = "serialNumber",
            },
        },
        Type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
        UhdDeviceSettings = {
            type = "structure",
            traits = {
                json_name = "uhdDeviceSettings",
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
        AvailabilityZone = {
            type = "string",
            traits = {
                json_name = "availabilityZone",
            },
        },
        MedialiveInputArns = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "medialiveInputArns",
            },
        },
        OutputType = {
            type = "string",
            traits = {
                json_name = "outputType",
            },
        },
    },
}

M.UpdateInputSecurityGroupInput = {
    type = "structure",
    members = {
        InputSecurityGroupId = {
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
        WhitelistRules = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "whitelistRules",
            },
        },
    },
}

M.UpdateInputSecurityGroupOutput = {
    type = "structure",
    members = {
        SecurityGroup = {
            type = "structure",
            traits = {
                json_name = "securityGroup",
            },
        },
    },
}

M.UpdateMultiplexInput = {
    type = "structure",
    members = {
        MultiplexId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MultiplexSettings = {
            type = "structure",
            traits = {
                json_name = "multiplexSettings",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        PacketIdentifiersMapping = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                json_name = "packetIdentifiersMapping",
            },
        },
    },
}

M.UpdateMultiplexOutput = {
    type = "structure",
    members = {
        Multiplex = {
            type = "structure",
            traits = {
                json_name = "multiplex",
            },
        },
    },
}

M.UpdateMultiplexProgramInput = {
    type = "structure",
    members = {
        MultiplexId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MultiplexProgramSettings = {
            type = "structure",
            traits = {
                json_name = "multiplexProgramSettings",
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

M.UpdateMultiplexProgramOutput = {
    type = "structure",
    members = {
        MultiplexProgram = {
            type = "structure",
            traits = {
                json_name = "multiplexProgram",
            },
        },
    },
}

M.UpdateNetworkInput = {
    type = "structure",
    members = {
        IpPools = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "ipPools",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        NetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Routes = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "routes",
            },
        },
    },
}

M.UpdateNetworkOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        AssociatedClusterIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "associatedClusterIds",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        IpPools = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "ipPools",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Routes = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "routes",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
    },
}

M.SdiSourceMappingUpdateRequest = {
    type = "structure",
    members = {
        CardNumber = {
            type = "number",
            traits = {
                json_name = "cardNumber",
            },
        },
        ChannelNumber = {
            type = "number",
            traits = {
                json_name = "channelNumber",
            },
        },
        SdiSource = {
            type = "string",
            traits = {
                json_name = "sdiSource",
            },
        },
    },
}

M.UpdateNodeInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        NodeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Role = {
            type = "string",
            traits = {
                json_name = "role",
            },
        },
        SdiSourceMappings = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "sdiSourceMappings",
            },
        },
    },
}

M.UpdateNodeOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        ChannelPlacementGroups = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "channelPlacementGroups",
            },
        },
        ClusterId = {
            type = "string",
            traits = {
                json_name = "clusterId",
            },
        },
        ConnectionState = {
            type = "string",
            traits = {
                json_name = "connectionState",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        InstanceArn = {
            type = "string",
            traits = {
                json_name = "instanceArn",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        NodeInterfaceMappings = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "nodeInterfaceMappings",
            },
        },
        Role = {
            type = "string",
            traits = {
                json_name = "role",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
        SdiSourceMappings = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "sdiSourceMappings",
            },
        },
    },
}

M.UpdateNodeStateShape = {
    ACTIVE = "ACTIVE",
    DRAINING = "DRAINING",
}

M.UpdateNodeStateInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NodeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
    },
}

M.UpdateNodeStateOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        ChannelPlacementGroups = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "channelPlacementGroups",
            },
        },
        ClusterId = {
            type = "string",
            traits = {
                json_name = "clusterId",
            },
        },
        ConnectionState = {
            type = "string",
            traits = {
                json_name = "connectionState",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        InstanceArn = {
            type = "string",
            traits = {
                json_name = "instanceArn",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        NodeInterfaceMappings = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "nodeInterfaceMappings",
            },
        },
        Role = {
            type = "string",
            traits = {
                json_name = "role",
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
        SdiSourceMappings = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "sdiSourceMappings",
            },
        },
    },
}

M.UpdateReservationInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        RenewalSettings = {
            type = "structure",
            traits = {
                json_name = "renewalSettings",
            },
        },
        ReservationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateReservationOutput = {
    type = "structure",
    members = {
        Reservation = {
            type = "structure",
            traits = {
                json_name = "reservation",
            },
        },
    },
}

M.UpdateSdiSourceInput = {
    type = "structure",
    members = {
        Mode = {
            type = "string",
            traits = {
                json_name = "mode",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        SdiSourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
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

M.UpdateSdiSourceOutput = {
    type = "structure",
    members = {
        SdiSource = {
            type = "structure",
            traits = {
                json_name = "sdiSource",
            },
        },
    },
}

return M
