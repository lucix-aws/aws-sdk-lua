local M = {}

M.OutputLocationRef = {
    type = "structure",
    id = "OutputLocationRef",
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
    id = "AdditionalDestinations",
    members = {
        Destination = setmetatable({ traits = {
            json_name = "destination",
            required = true,
        } }, { __index = M.OutputLocationRef }),
    },
}

M.InputChannelLevel = {
    type = "structure",
    id = "InputChannelLevel",
    members = {
        Gain = {
            type = "integer",
            traits = {
                json_name = "gain",
                required = true,
            },
        },
        InputChannel = {
            type = "integer",
            traits = {
                json_name = "inputChannel",
                required = true,
            },
        },
    },
}

M.AudioChannelMapping = {
    type = "structure",
    id = "AudioChannelMapping",
    members = {
        InputChannelLevels = {
            type = "list",
            member = M.InputChannelLevel,
            traits = {
                json_name = "inputChannelLevels",
                required = true,
            },
        },
        OutputChannel = {
            type = "integer",
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
        TargetLkfs = {
            type = "double",
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
    id = "NielsenCBET",
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
    id = "NielsenNaesIiNw",
    members = {
        CheckDigitString = {
            type = "string",
            traits = {
                json_name = "checkDigitString",
                required = true,
            },
        },
        Sid = {
            type = "double",
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
    id = "NielsenWatermarksSettings",
    members = {
        NielsenCbetSettings = setmetatable({ traits = {
            json_name = "nielsenCbetSettings",
        } }, { __index = M.NielsenCBET }),
        NielsenDistributionType = {
            type = "string",
            traits = {
                json_name = "nielsenDistributionType",
            },
        },
        NielsenNaesIiNwSettings = setmetatable({ traits = {
            json_name = "nielsenNaesIiNwSettings",
        } }, { __index = M.NielsenNaesIiNw }),
    },
}

M.AudioWatermarkSettings = {
    type = "structure",
    id = "AudioWatermarkSettings",
    members = {
        NielsenWatermarksSettings = setmetatable({ traits = {
            json_name = "nielsenWatermarksSettings",
        } }, { __index = M.NielsenWatermarksSettings }),
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
    id = "AacSettings",
    members = {
        Bitrate = {
            type = "double",
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
            type = "double",
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
    id = "Ac3Settings",
    members = {
        Bitrate = {
            type = "double",
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
    id = "Eac3AtmosSettings",
    members = {
        Bitrate = {
            type = "double",
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
            type = "integer",
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
            type = "double",
            traits = {
                json_name = "heightTrim",
            },
        },
        SurroundTrim = {
            type = "double",
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
    id = "Eac3Settings",
    members = {
        AttenuationControl = {
            type = "string",
            traits = {
                json_name = "attenuationControl",
            },
        },
        Bitrate = {
            type = "double",
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
    id = "Mp2Settings",
    members = {
        Bitrate = {
            type = "double",
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
            type = "double",
            traits = {
                json_name = "sampleRate",
            },
        },
    },
}

M.PassThroughSettings = {
    type = "structure",
    id = "PassThroughSettings",
}

M.WavCodingMode = {
    CODING_MODE_1_0 = "CODING_MODE_1_0",
    CODING_MODE_2_0 = "CODING_MODE_2_0",
    CODING_MODE_4_0 = "CODING_MODE_4_0",
    CODING_MODE_8_0 = "CODING_MODE_8_0",
}

M.WavSettings = {
    type = "structure",
    id = "WavSettings",
    members = {
        BitDepth = {
            type = "double",
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
            type = "double",
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
        Eac3AtmosSettings = setmetatable({ traits = {
            json_name = "eac3AtmosSettings",
        } }, { __index = M.Eac3AtmosSettings }),
        Eac3Settings = setmetatable({ traits = {
            json_name = "eac3Settings",
        } }, { __index = M.Eac3Settings }),
        Mp2Settings = setmetatable({ traits = {
            json_name = "mp2Settings",
        } }, { __index = M.Mp2Settings }),
        PassThroughSettings = setmetatable({ traits = {
            json_name = "passThroughSettings",
        } }, { __index = M.PassThroughSettings }),
        WavSettings = setmetatable({ traits = {
            json_name = "wavSettings",
        } }, { __index = M.WavSettings }),
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
    id = "RemixSettings",
    members = {
        ChannelMappings = {
            type = "list",
            member = M.AudioChannelMapping,
            traits = {
                json_name = "channelMappings",
                required = true,
            },
        },
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
        AudioNormalizationSettings = setmetatable({ traits = {
            json_name = "audioNormalizationSettings",
        } }, { __index = M.AudioNormalizationSettings }),
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
        AudioWatermarkingSettings = setmetatable({ traits = {
            json_name = "audioWatermarkingSettings",
        } }, { __index = M.AudioWatermarkSettings }),
        CodecSettings = setmetatable({ traits = {
            json_name = "codecSettings",
        } }, { __index = M.AudioCodecSettings }),
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
        RemixSettings = setmetatable({ traits = {
            json_name = "remixSettings",
        } }, { __index = M.RemixSettings }),
        StreamName = {
            type = "string",
            traits = {
                json_name = "streamName",
            },
        },
        AudioDashRoles = {
            type = "list",
            member = { type = "string" },
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
    id = "AudioHlsRenditionSelection",
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
    id = "AudioLanguageSelection",
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
    id = "AudioPidSelection",
    members = {
        Pid = {
            type = "integer",
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
    id = "AudioDolbyEDecode",
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
    id = "AudioTrack",
    members = {
        Track = {
            type = "integer",
            traits = {
                json_name = "track",
                required = true,
            },
        },
    },
}

M.AudioTrackSelection = {
    type = "structure",
    id = "AudioTrackSelection",
    members = {
        Tracks = {
            type = "list",
            member = M.AudioTrack,
            traits = {
                json_name = "tracks",
                required = true,
            },
        },
        DolbyEDecode = setmetatable({ traits = {
            json_name = "dolbyEDecode",
        } }, { __index = M.AudioDolbyEDecode }),
    },
}

M.AudioSelectorSettings = {
    type = "structure",
    id = "AudioSelectorSettings",
    members = {
        AudioHlsRenditionSelection = setmetatable({ traits = {
            json_name = "audioHlsRenditionSelection",
        } }, { __index = M.AudioHlsRenditionSelection }),
        AudioLanguageSelection = setmetatable({ traits = {
            json_name = "audioLanguageSelection",
        } }, { __index = M.AudioLanguageSelection }),
        AudioPidSelection = setmetatable({ traits = {
            json_name = "audioPidSelection",
        } }, { __index = M.AudioPidSelection }),
        AudioTrackSelection = setmetatable({ traits = {
            json_name = "audioTrackSelection",
        } }, { __index = M.AudioTrackSelection }),
    },
}

M.AudioSelector = {
    type = "structure",
    id = "AudioSelector",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        SelectorSettings = setmetatable({ traits = {
            json_name = "selectorSettings",
        } }, { __index = M.AudioSelectorSettings }),
    },
}

M.BatchFailedResultModel = {
    type = "structure",
    id = "BatchFailedResultModel",
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
    id = "BatchSuccessfulResultModel",
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
    id = "AribDestinationSettings",
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
    id = "InputLocation",
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
    id = "BurnInDestinationSettings",
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
            type = "integer",
            traits = {
                json_name = "backgroundOpacity",
            },
        },
        Font = setmetatable({ traits = {
            json_name = "font",
        } }, { __index = M.InputLocation }),
        FontColor = {
            type = "string",
            traits = {
                json_name = "fontColor",
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
        TeletextGridControl = {
            type = "string",
            traits = {
                json_name = "teletextGridControl",
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
    id = "DvbSubDestinationSettings",
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
            type = "integer",
            traits = {
                json_name = "backgroundOpacity",
            },
        },
        Font = setmetatable({ traits = {
            json_name = "font",
        } }, { __index = M.InputLocation }),
        FontColor = {
            type = "string",
            traits = {
                json_name = "fontColor",
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
        TeletextGridControl = {
            type = "string",
            traits = {
                json_name = "teletextGridControl",
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
    id = "EbuTtDDestinationSettings",
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
            type = "integer",
            traits = {
                json_name = "defaultFontSize",
            },
        },
        DefaultLineHeight = {
            type = "integer",
            traits = {
                json_name = "defaultLineHeight",
            },
        },
    },
}

M.EmbeddedDestinationSettings = {
    type = "structure",
    id = "EmbeddedDestinationSettings",
}

M.EmbeddedPlusScte20DestinationSettings = {
    type = "structure",
    id = "EmbeddedPlusScte20DestinationSettings",
}

M.RtmpCaptionInfoDestinationSettings = {
    type = "structure",
    id = "RtmpCaptionInfoDestinationSettings",
}

M.Scte20PlusEmbeddedDestinationSettings = {
    type = "structure",
    id = "Scte20PlusEmbeddedDestinationSettings",
}

M.Scte27DestinationSettings = {
    type = "structure",
    id = "Scte27DestinationSettings",
}

M.SmpteTtDestinationSettings = {
    type = "structure",
    id = "SmpteTtDestinationSettings",
}

M.TeletextDestinationSettings = {
    type = "structure",
    id = "TeletextDestinationSettings",
}

M.TtmlDestinationStyleControl = {
    PASSTHROUGH = "PASSTHROUGH",
    USE_CONFIGURED = "USE_CONFIGURED",
}

M.TtmlDestinationSettings = {
    type = "structure",
    id = "TtmlDestinationSettings",
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
    id = "WebvttDestinationSettings",
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
    id = "CaptionDestinationSettings",
    members = {
        AribDestinationSettings = setmetatable({ traits = {
            json_name = "aribDestinationSettings",
        } }, { __index = M.AribDestinationSettings }),
        BurnInDestinationSettings = setmetatable({ traits = {
            json_name = "burnInDestinationSettings",
        } }, { __index = M.BurnInDestinationSettings }),
        DvbSubDestinationSettings = setmetatable({ traits = {
            json_name = "dvbSubDestinationSettings",
        } }, { __index = M.DvbSubDestinationSettings }),
        EbuTtDDestinationSettings = setmetatable({ traits = {
            json_name = "ebuTtDDestinationSettings",
        } }, { __index = M.EbuTtDDestinationSettings }),
        EmbeddedDestinationSettings = setmetatable({ traits = {
            json_name = "embeddedDestinationSettings",
        } }, { __index = M.EmbeddedDestinationSettings }),
        EmbeddedPlusScte20DestinationSettings = setmetatable({ traits = {
            json_name = "embeddedPlusScte20DestinationSettings",
        } }, { __index = M.EmbeddedPlusScte20DestinationSettings }),
        RtmpCaptionInfoDestinationSettings = setmetatable({ traits = {
            json_name = "rtmpCaptionInfoDestinationSettings",
        } }, { __index = M.RtmpCaptionInfoDestinationSettings }),
        Scte20PlusEmbeddedDestinationSettings = setmetatable({ traits = {
            json_name = "scte20PlusEmbeddedDestinationSettings",
        } }, { __index = M.Scte20PlusEmbeddedDestinationSettings }),
        Scte27DestinationSettings = setmetatable({ traits = {
            json_name = "scte27DestinationSettings",
        } }, { __index = M.Scte27DestinationSettings }),
        SmpteTtDestinationSettings = setmetatable({ traits = {
            json_name = "smpteTtDestinationSettings",
        } }, { __index = M.SmpteTtDestinationSettings }),
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
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        CaptionDashRoles = {
            type = "list",
            member = { type = "string" },
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
    id = "CaptionLanguageMapping",
    members = {
        CaptionChannel = {
            type = "integer",
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
    id = "AncillarySourceSettings",
    members = {
        SourceAncillaryChannelNumber = {
            type = "integer",
            traits = {
                json_name = "sourceAncillaryChannelNumber",
            },
        },
    },
}

M.AribSourceSettings = {
    type = "structure",
    id = "AribSourceSettings",
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
    id = "DvbSubSourceSettings",
    members = {
        OcrLanguage = {
            type = "string",
            traits = {
                json_name = "ocrLanguage",
            },
        },
        Pid = {
            type = "integer",
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
    id = "EmbeddedSourceSettings",
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
    },
}

M.Scte20Convert608To708 = {
    DISABLED = "DISABLED",
    UPCONVERT = "UPCONVERT",
}

M.Scte20SourceSettings = {
    type = "structure",
    id = "Scte20SourceSettings",
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
    id = "Scte27SourceSettings",
    members = {
        OcrLanguage = {
            type = "string",
            traits = {
                json_name = "ocrLanguage",
            },
        },
        Pid = {
            type = "integer",
            traits = {
                json_name = "pid",
            },
        },
    },
}

M.CaptionRectangle = {
    type = "structure",
    id = "CaptionRectangle",
    members = {
        Height = {
            type = "double",
            traits = {
                json_name = "height",
                required = true,
            },
        },
        LeftOffset = {
            type = "double",
            traits = {
                json_name = "leftOffset",
                required = true,
            },
        },
        TopOffset = {
            type = "double",
            traits = {
                json_name = "topOffset",
                required = true,
            },
        },
        Width = {
            type = "double",
            traits = {
                json_name = "width",
                required = true,
            },
        },
    },
}

M.TeletextSourceSettings = {
    type = "structure",
    id = "TeletextSourceSettings",
    members = {
        OutputRectangle = setmetatable({ traits = {
            json_name = "outputRectangle",
        } }, { __index = M.CaptionRectangle }),
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
    id = "CaptionSelectorSettings",
    members = {
        AncillarySourceSettings = setmetatable({ traits = {
            json_name = "ancillarySourceSettings",
        } }, { __index = M.AncillarySourceSettings }),
        AribSourceSettings = setmetatable({ traits = {
            json_name = "aribSourceSettings",
        } }, { __index = M.AribSourceSettings }),
        DvbSubSourceSettings = setmetatable({ traits = {
            json_name = "dvbSubSourceSettings",
        } }, { __index = M.DvbSubSourceSettings }),
        EmbeddedSourceSettings = setmetatable({ traits = {
            json_name = "embeddedSourceSettings",
        } }, { __index = M.EmbeddedSourceSettings }),
        Scte20SourceSettings = setmetatable({ traits = {
            json_name = "scte20SourceSettings",
        } }, { __index = M.Scte20SourceSettings }),
        Scte27SourceSettings = setmetatable({ traits = {
            json_name = "scte27SourceSettings",
        } }, { __index = M.Scte27SourceSettings }),
        TeletextSourceSettings = setmetatable({ traits = {
            json_name = "teletextSourceSettings",
        } }, { __index = M.TeletextSourceSettings }),
    },
}

M.CaptionSelector = {
    type = "structure",
    id = "CaptionSelector",
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
        SelectorSettings = setmetatable({ traits = {
            json_name = "selectorSettings",
        } }, { __index = M.CaptionSelectorSettings }),
    },
}

M.ChannelAlertState = {
    SET = "SET",
    CLEARED = "CLEARED",
}

M.ChannelAlert = {
    type = "structure",
    id = "ChannelAlert",
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
                timestamp_format = "date-time",
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
                timestamp_format = "date-time",
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
    id = "ChannelEgressEndpoint",
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
    id = "ChannelEngineVersionResponse",
    members = {
        ExpirationDate = {
            type = "timestamp",
            traits = {
                json_name = "expirationDate",
                timestamp_format = "date-time",
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
    id = "DescribeAnywhereSettings",
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
    id = "CdiInputSpecification",
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
    id = "MediaConnectRouterOutputDestinationSettings",
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
    id = "MediaPackageOutputDestinationSettings",
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
    id = "MultiplexProgramChannelDestinationSettings",
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
    id = "OutputDestinationSettings",
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
    id = "SrtOutputDestinationSettings",
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
            type = "integer",
            traits = {
                json_name = "listenerPort",
            },
        },
    },
}

M.OutputDestination = {
    type = "structure",
    id = "OutputDestination",
    members = {
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        MediaPackageSettings = {
            type = "list",
            member = M.MediaPackageOutputDestinationSettings,
            traits = {
                json_name = "mediaPackageSettings",
            },
        },
        MultiplexSettings = setmetatable({ traits = {
            json_name = "multiplexSettings",
        } }, { __index = M.MultiplexProgramChannelDestinationSettings }),
        Settings = {
            type = "list",
            member = M.OutputDestinationSettings,
            traits = {
                json_name = "settings",
            },
        },
        SrtSettings = {
            type = "list",
            member = M.SrtOutputDestinationSettings,
            traits = {
                json_name = "srtSettings",
            },
        },
        LogicalInterfaceNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "logicalInterfaceNames",
            },
        },
        MediaConnectRouterSettings = {
            type = "list",
            member = M.MediaConnectRouterOutputDestinationSettings,
            traits = {
                json_name = "mediaConnectRouterSettings",
            },
        },
    },
}

M.DescribeInferenceSettings = {
    type = "structure",
    id = "DescribeInferenceSettings",
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
    id = "AudioSilenceFailoverSettings",
    members = {
        AudioSelectorName = {
            type = "string",
            traits = {
                json_name = "audioSelectorName",
                required = true,
            },
        },
        AudioSilenceThresholdMsec = {
            type = "integer",
            traits = {
                json_name = "audioSilenceThresholdMsec",
            },
        },
    },
}

M.InputLossFailoverSettings = {
    type = "structure",
    id = "InputLossFailoverSettings",
    members = {
        InputLossThresholdMsec = {
            type = "integer",
            traits = {
                json_name = "inputLossThresholdMsec",
            },
        },
    },
}

M.VideoBlackFailoverSettings = {
    type = "structure",
    id = "VideoBlackFailoverSettings",
    members = {
        BlackDetectThreshold = {
            type = "double",
            traits = {
                json_name = "blackDetectThreshold",
            },
        },
        VideoBlackThresholdMsec = {
            type = "integer",
            traits = {
                json_name = "videoBlackThresholdMsec",
            },
        },
    },
}

M.FailoverConditionSettings = {
    type = "structure",
    id = "FailoverConditionSettings",
    members = {
        AudioSilenceSettings = setmetatable({ traits = {
            json_name = "audioSilenceSettings",
        } }, { __index = M.AudioSilenceFailoverSettings }),
        InputLossSettings = setmetatable({ traits = {
            json_name = "inputLossSettings",
        } }, { __index = M.InputLossFailoverSettings }),
        VideoBlackSettings = setmetatable({ traits = {
            json_name = "videoBlackSettings",
        } }, { __index = M.VideoBlackFailoverSettings }),
    },
}

M.FailoverCondition = {
    type = "structure",
    id = "FailoverCondition",
    members = {
        FailoverConditionSettings = setmetatable({ traits = {
            json_name = "failoverConditionSettings",
        } }, { __index = M.FailoverConditionSettings }),
    },
}

M.InputPreference = {
    EQUAL_INPUT_PREFERENCE = "EQUAL_INPUT_PREFERENCE",
    PRIMARY_INPUT_PREFERRED = "PRIMARY_INPUT_PREFERRED",
}

M.AutomaticInputFailoverSettings = {
    type = "structure",
    id = "AutomaticInputFailoverSettings",
    members = {
        ErrorClearTimeMsec = {
            type = "integer",
            traits = {
                json_name = "errorClearTimeMsec",
            },
        },
        FailoverConditions = {
            type = "list",
            member = M.FailoverCondition,
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
    id = "HlsInputSettings",
    members = {
        Bandwidth = {
            type = "integer",
            traits = {
                json_name = "bandwidth",
            },
        },
        BufferSegments = {
            type = "integer",
            traits = {
                json_name = "bufferSegments",
            },
        },
        Retries = {
            type = "integer",
            traits = {
                json_name = "retries",
            },
        },
        RetryInterval = {
            type = "integer",
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
    id = "MulticastInputSettings",
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
    id = "NetworkInputSettings",
    members = {
        HlsInputSettings = setmetatable({ traits = {
            json_name = "hlsInputSettings",
        } }, { __index = M.HlsInputSettings }),
        ServerValidation = {
            type = "string",
            traits = {
                json_name = "serverValidation",
            },
        },
        MulticastInputSettings = setmetatable({ traits = {
            json_name = "multicastInputSettings",
        } }, { __index = M.MulticastInputSettings }),
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
    id = "Hdr10Settings",
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

M.VideoSelectorColorSpaceSettings = {
    type = "structure",
    id = "VideoSelectorColorSpaceSettings",
    members = {
        Hdr10Settings = setmetatable({ traits = {
            json_name = "hdr10Settings",
        } }, { __index = M.Hdr10Settings }),
    },
}

M.VideoSelectorColorSpaceUsage = {
    FALLBACK = "FALLBACK",
    FORCE = "FORCE",
}

M.VideoSelectorPid = {
    type = "structure",
    id = "VideoSelectorPid",
    members = {
        Pid = {
            type = "integer",
            traits = {
                json_name = "pid",
            },
        },
    },
}

M.VideoSelectorProgramId = {
    type = "structure",
    id = "VideoSelectorProgramId",
    members = {
        ProgramId = {
            type = "integer",
            traits = {
                json_name = "programId",
            },
        },
    },
}

M.VideoSelectorSettings = {
    type = "structure",
    id = "VideoSelectorSettings",
    members = {
        VideoSelectorPid = setmetatable({ traits = {
            json_name = "videoSelectorPid",
        } }, { __index = M.VideoSelectorPid }),
        VideoSelectorProgramId = setmetatable({ traits = {
            json_name = "videoSelectorProgramId",
        } }, { __index = M.VideoSelectorProgramId }),
    },
}

M.VideoSelector = {
    type = "structure",
    id = "VideoSelector",
    members = {
        ColorSpace = {
            type = "string",
            traits = {
                json_name = "colorSpace",
            },
        },
        ColorSpaceSettings = setmetatable({ traits = {
            json_name = "colorSpaceSettings",
        } }, { __index = M.VideoSelectorColorSpaceSettings }),
        ColorSpaceUsage = {
            type = "string",
            traits = {
                json_name = "colorSpaceUsage",
            },
        },
        SelectorSettings = setmetatable({ traits = {
            json_name = "selectorSettings",
        } }, { __index = M.VideoSelectorSettings }),
    },
}

M.InputSettings = {
    type = "structure",
    id = "InputSettings",
    members = {
        AudioSelectors = {
            type = "list",
            member = M.AudioSelector,
            traits = {
                json_name = "audioSelectors",
            },
        },
        CaptionSelectors = {
            type = "list",
            member = M.CaptionSelector,
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
            type = "integer",
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
        NetworkInputSettings = setmetatable({ traits = {
            json_name = "networkInputSettings",
        } }, { __index = M.NetworkInputSettings }),
        Scte35Pid = {
            type = "integer",
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
        VideoSelector = setmetatable({ traits = {
            json_name = "videoSelector",
        } }, { __index = M.VideoSelector }),
    },
}

M.InputAttachment = {
    type = "structure",
    id = "InputAttachment",
    members = {
        AutomaticInputFailoverSettings = setmetatable({ traits = {
            json_name = "automaticInputFailoverSettings",
        } }, { __index = M.AutomaticInputFailoverSettings }),
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
        InputSettings = setmetatable({ traits = {
            json_name = "inputSettings",
        } }, { __index = M.InputSettings }),
        LogicalInterfaceNames = {
            type = "list",
            member = { type = "string" },
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
    id = "InputSpecification",
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
    id = "DescribeFollowerChannelSettings",
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
    id = "DescribePrimaryChannelSettings",
    members = {
        FollowingChannelArns = {
            type = "list",
            member = { type = "string" },
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
    id = "DescribeLinkedChannelSettings",
    members = {
        FollowerChannelSettings = setmetatable({ traits = {
            json_name = "followerChannelSettings",
        } }, { __index = M.DescribeFollowerChannelSettings }),
        PrimaryChannelSettings = setmetatable({ traits = {
            json_name = "primaryChannelSettings",
        } }, { __index = M.DescribePrimaryChannelSettings }),
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
    id = "MaintenanceStatus",
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
    id = "VpcOutputSettingsDescription",
    members = {
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "availabilityZones",
            },
        },
        NetworkInterfaceIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "networkInterfaceIds",
            },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "securityGroupIds",
            },
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "subnetIds",
            },
        },
    },
}

M.ChannelSummary = {
    type = "structure",
    id = "ChannelSummary",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CdiInputSpecification = setmetatable({ traits = {
            json_name = "cdiInputSpecification",
        } }, { __index = M.CdiInputSpecification }),
        ChannelClass = {
            type = "string",
            traits = {
                json_name = "channelClass",
            },
        },
        Destinations = {
            type = "list",
            member = M.OutputDestination,
            traits = {
                json_name = "destinations",
            },
        },
        EgressEndpoints = {
            type = "list",
            member = M.ChannelEgressEndpoint,
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
            member = M.InputAttachment,
            traits = {
                json_name = "inputAttachments",
            },
        },
        InputSpecification = setmetatable({ traits = {
            json_name = "inputSpecification",
        } }, { __index = M.InputSpecification }),
        LogLevel = {
            type = "string",
            traits = {
                json_name = "logLevel",
            },
        },
        Maintenance = setmetatable({ traits = {
            json_name = "maintenance",
        } }, { __index = M.MaintenanceStatus }),
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        PipelinesRunningCount = {
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        Vpc = setmetatable({ traits = {
            json_name = "vpc",
        } }, { __index = M.VpcOutputSettingsDescription }),
        AnywhereSettings = setmetatable({ traits = {
            json_name = "anywhereSettings",
        } }, { __index = M.DescribeAnywhereSettings }),
        ChannelEngineVersion = setmetatable({ traits = {
            json_name = "channelEngineVersion",
        } }, { __index = M.ChannelEngineVersionResponse }),
        UsedChannelEngineVersions = {
            type = "list",
            member = M.ChannelEngineVersionResponse,
            traits = {
                json_name = "usedChannelEngineVersions",
            },
        },
        LinkedChannelSettings = setmetatable({ traits = {
            json_name = "linkedChannelSettings",
        } }, { __index = M.DescribeLinkedChannelSettings }),
        ChannelSecurityGroups = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "channelSecurityGroups",
            },
        },
        InferenceSettings = setmetatable({ traits = {
            json_name = "inferenceSettings",
        } }, { __index = M.DescribeInferenceSettings }),
    },
}

M.CloudWatchAlarmTemplateGroupSummary = {
    type = "structure",
    id = "CloudWatchAlarmTemplateGroupSummary",
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
                timestamp_format = "date-time",
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
                timestamp_format = "date-time",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        TemplateCount = {
            type = "integer",
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
    id = "CloudWatchAlarmTemplateSummary",
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
                timestamp_format = "date-time",
            },
        },
        DatapointsToAlarm = {
            type = "integer",
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
            type = "integer",
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
                timestamp_format = "date-time",
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
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
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
            type = "double",
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
    id = "ClusterAlert",
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
                timestamp_format = "date-time",
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
                timestamp_format = "date-time",
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
    id = "CmafIngestCaptionLanguageMapping",
    members = {
        CaptionChannel = {
            type = "integer",
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
    id = "ColorCorrection",
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
    id = "DescribeChannelPlacementGroupSummary",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Channels = {
            type = "list",
            member = { type = "string" },
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
            member = { type = "string" },
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
    id = "InterfaceMapping",
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
    id = "ClusterNetworkSettings",
    members = {
        DefaultRoute = {
            type = "string",
            traits = {
                json_name = "defaultRoute",
            },
        },
        InterfaceMappings = {
            type = "list",
            member = M.InterfaceMapping,
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
    id = "DescribeClusterSummary",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        ChannelIds = {
            type = "list",
            member = { type = "string" },
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
        NetworkSettings = setmetatable({ traits = {
            json_name = "networkSettings",
        } }, { __index = M.ClusterNetworkSettings }),
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
    id = "IpPool",
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
    id = "Route",
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
    id = "DescribeNetworkSummary",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        AssociatedClusterIds = {
            type = "list",
            member = { type = "string" },
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
            member = M.IpPool,
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
            member = M.Route,
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
    id = "NodeInterfaceMapping",
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
            member = { type = "string" },
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
    id = "SdiSourceMapping",
    members = {
        CardNumber = {
            type = "integer",
            traits = {
                json_name = "cardNumber",
            },
        },
        ChannelNumber = {
            type = "integer",
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
    id = "DescribeNodeSummary",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        ChannelPlacementGroups = {
            type = "list",
            member = { type = "string" },
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
            member = M.NodeInterfaceMapping,
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
            member = M.SdiSourceMapping,
            traits = {
                json_name = "sdiSourceMappings",
            },
        },
    },
}

M.EventBridgeRuleTemplateGroupSummary = {
    type = "structure",
    id = "EventBridgeRuleTemplateGroupSummary",
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
                timestamp_format = "date-time",
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
                timestamp_format = "date-time",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        TemplateCount = {
            type = "integer",
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
    id = "EventBridgeRuleTemplateSummary",
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
                timestamp_format = "date-time",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        EventTargetCount = {
            type = "integer",
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
                timestamp_format = "date-time",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.EventBridgeRuleTemplateTarget = {
    type = "structure",
    id = "EventBridgeRuleTemplateTarget",
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
    id = "InputDestinationRoute",
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
    id = "InputDestinationVpc",
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
    id = "InputDestination",
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
        Vpc = setmetatable({ traits = {
            json_name = "vpc",
        } }, { __index = M.InputDestinationVpc }),
        Network = {
            type = "string",
            traits = {
                json_name = "network",
            },
        },
        NetworkRoutes = {
            type = "list",
            member = M.InputDestinationRoute,
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
    id = "InputDeviceSettings",
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
    id = "MediaConnectFlow",
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
    id = "MulticastSource",
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
    id = "MulticastSettings",
    members = {
        Sources = {
            type = "list",
            member = M.MulticastSource,
            traits = {
                json_name = "sources",
            },
        },
    },
}

M.RouterDestination = {
    type = "structure",
    id = "RouterDestination",
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
    id = "RouterInputSettings",
    members = {
        Destinations = {
            type = "list",
            member = M.RouterDestination,
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
    id = "InputSdpLocation",
    members = {
        MediaIndex = {
            type = "integer",
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
    id = "Smpte2110ReceiverGroupSdpSettings",
    members = {
        AncillarySdps = {
            type = "list",
            member = M.InputSdpLocation,
            traits = {
                json_name = "ancillarySdps",
            },
        },
        AudioSdps = {
            type = "list",
            member = M.InputSdpLocation,
            traits = {
                json_name = "audioSdps",
            },
        },
        VideoSdp = setmetatable({ traits = {
            json_name = "videoSdp",
        } }, { __index = M.InputSdpLocation }),
    },
}

M.Smpte2110ReceiverGroup = {
    type = "structure",
    id = "Smpte2110ReceiverGroup",
    members = {
        SdpSettings = setmetatable({ traits = {
            json_name = "sdpSettings",
        } }, { __index = M.Smpte2110ReceiverGroupSdpSettings }),
    },
}

M.Smpte2110ReceiverGroupSettings = {
    type = "structure",
    id = "Smpte2110ReceiverGroupSettings",
    members = {
        Smpte2110ReceiverGroups = {
            type = "list",
            member = M.Smpte2110ReceiverGroup,
            traits = {
                json_name = "smpte2110ReceiverGroups",
            },
        },
    },
}

M.InputSource = {
    type = "structure",
    id = "InputSource",
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
    id = "SrtCallerDecryption",
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
    id = "SrtCallerSource",
    members = {
        Decryption = setmetatable({ traits = {
            json_name = "decryption",
        } }, { __index = M.SrtCallerDecryption }),
        MinimumLatency = {
            type = "integer",
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
    id = "SrtListenerDecryption",
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
    id = "SrtListenerSettings",
    members = {
        Decryption = setmetatable({ traits = {
            json_name = "decryption",
        } }, { __index = M.SrtListenerDecryption }),
        MinimumLatency = {
            type = "integer",
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
    id = "SrtSettings",
    members = {
        SrtCallerSources = {
            type = "list",
            member = M.SrtCallerSource,
            traits = {
                json_name = "srtCallerSources",
            },
        },
        SrtListenerSettings = setmetatable({ traits = {
            json_name = "srtListenerSettings",
        } }, { __index = M.SrtListenerSettings }),
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
    id = "Input",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        AttachedChannels = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "attachedChannels",
            },
        },
        Destinations = {
            type = "list",
            member = M.InputDestination,
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
            member = M.InputDeviceSettings,
            traits = {
                json_name = "inputDevices",
            },
        },
        InputPartnerIds = {
            type = "list",
            member = { type = "string" },
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
            member = M.MediaConnectFlow,
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
            member = { type = "string" },
            traits = {
                json_name = "securityGroups",
            },
        },
        Sources = {
            type = "list",
            member = M.InputSource,
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
            key = { type = "string" },
            value = { type = "string" },
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
        SrtSettings = setmetatable({ traits = {
            json_name = "srtSettings",
        } }, { __index = M.SrtSettings }),
        InputNetworkLocation = {
            type = "string",
            traits = {
                json_name = "inputNetworkLocation",
            },
        },
        MulticastSettings = setmetatable({ traits = {
            json_name = "multicastSettings",
        } }, { __index = M.MulticastSettings }),
        Smpte2110ReceiverGroupSettings = setmetatable({ traits = {
            json_name = "smpte2110ReceiverGroupSettings",
        } }, { __index = M.Smpte2110ReceiverGroupSettings }),
        SdiSources = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "sdiSources",
            },
        },
        RouterSettings = setmetatable({ traits = {
            json_name = "routerSettings",
        } }, { __index = M.RouterInputSettings }),
    },
}

M.InputRequestDestinationRoute = {
    type = "structure",
    id = "InputRequestDestinationRoute",
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
    id = "InputDestinationRequest",
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
            member = M.InputRequestDestinationRoute,
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
    id = "InputDeviceConfigurableAudioChannelPairConfig",
    members = {
        Id = {
            type = "integer",
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
    id = "InputDeviceRequest",
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
    id = "InputDeviceHdSettings",
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
            type = "double",
            traits = {
                json_name = "framerate",
            },
        },
        Height = {
            type = "integer",
            traits = {
                json_name = "height",
            },
        },
        MaxBitrate = {
            type = "integer",
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
            type = "integer",
            traits = {
                json_name = "width",
            },
        },
        LatencyMs = {
            type = "integer",
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
    id = "InputDeviceNetworkSettings",
    members = {
        DnsAddresses = {
            type = "list",
            member = { type = "string" },
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
    id = "InputDeviceUhdAudioChannelPairConfig",
    members = {
        Id = {
            type = "integer",
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
    id = "InputDeviceMediaConnectSettings",
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
    id = "InputDeviceUhdSettings",
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
            type = "double",
            traits = {
                json_name = "framerate",
            },
        },
        Height = {
            type = "integer",
            traits = {
                json_name = "height",
            },
        },
        MaxBitrate = {
            type = "integer",
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
            type = "integer",
            traits = {
                json_name = "width",
            },
        },
        LatencyMs = {
            type = "integer",
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
        MediaconnectSettings = setmetatable({ traits = {
            json_name = "mediaconnectSettings",
        } }, { __index = M.InputDeviceMediaConnectSettings }),
        AudioChannelPairs = {
            type = "list",
            member = M.InputDeviceUhdAudioChannelPairConfig,
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
    id = "InputDeviceSummary",
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
        HdDeviceSettings = setmetatable({ traits = {
            json_name = "hdDeviceSettings",
        } }, { __index = M.InputDeviceHdSettings }),
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
        NetworkSettings = setmetatable({ traits = {
            json_name = "networkSettings",
        } }, { __index = M.InputDeviceNetworkSettings }),
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
        UhdDeviceSettings = setmetatable({ traits = {
            json_name = "uhdDeviceSettings",
        } }, { __index = M.InputDeviceUhdSettings }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            member = { type = "string" },
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
    id = "InputWhitelistRule",
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
    id = "InputSecurityGroup",
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
            member = { type = "string" },
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        WhitelistRules = {
            type = "list",
            member = M.InputWhitelistRule,
            traits = {
                json_name = "whitelistRules",
            },
        },
        Channels = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "channels",
            },
        },
    },
}

M.InputSourceRequest = {
    type = "structure",
    id = "InputSourceRequest",
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
    id = "InputWhitelistRuleCidr",
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
    id = "InterfaceMappingCreateRequest",
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
    id = "InterfaceMappingUpdateRequest",
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
    id = "IpPoolCreateRequest",
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
    id = "IpPoolUpdateRequest",
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
    id = "MediaConnectFlowRequest",
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
    id = "MediaPackageAdditionalDestinations",
    members = {
        Destination = setmetatable({ traits = {
            json_name = "destination",
            required = true,
        } }, { __index = M.OutputLocationRef }),
    },
}

M.MediaResourceNeighbor = {
    type = "structure",
    id = "MediaResourceNeighbor",
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
    id = "MulticastSourceCreateRequest",
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
    id = "MulticastSourceUpdateRequest",
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
    id = "MultiplexAlert",
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
                timestamp_format = "date-time",
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
                timestamp_format = "date-time",
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
    id = "MultiplexMediaConnectOutputDestinationSettings",
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
    id = "MultiplexOutputDestination",
    members = {
        MediaConnectSettings = setmetatable({ traits = {
            json_name = "mediaConnectSettings",
        } }, { __index = M.MultiplexMediaConnectOutputDestinationSettings }),
    },
}

M.MultiplexProgramPipelineDetail = {
    type = "structure",
    id = "MultiplexProgramPipelineDetail",
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
    id = "MultiplexProgramSummary",
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
    id = "MultiplexSettingsSummary",
    members = {
        TransportStreamBitrate = {
            type = "integer",
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
    id = "MultiplexSummary",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
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
        MultiplexSettings = setmetatable({ traits = {
            json_name = "multiplexSettings",
        } }, { __index = M.MultiplexSettingsSummary }),
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        PipelinesRunningCount = {
            type = "integer",
            traits = {
                json_name = "pipelinesRunningCount",
            },
        },
        ProgramCount = {
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.NodeInterfaceMappingCreateRequest = {
    type = "structure",
    id = "NodeInterfaceMappingCreateRequest",
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
    id = "ReservationResourceSpecification",
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
    id = "Offering",
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
            type = "integer",
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
            type = "double",
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
        ResourceSpecification = setmetatable({ traits = {
            json_name = "resourceSpecification",
        } }, { __index = M.ReservationResourceSpecification }),
        UsagePrice = {
            type = "double",
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
    id = "DvbNitSettings",
    members = {
        NetworkId = {
            type = "integer",
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
            type = "integer",
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
    id = "DvbSdtSettings",
    members = {
        OutputSdt = {
            type = "string",
            traits = {
                json_name = "outputSdt",
            },
        },
        RepInterval = {
            type = "integer",
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
    id = "DvbTdtSettings",
    members = {
        RepInterval = {
            type = "integer",
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
    id = "M2tsSettings",
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
            type = "integer",
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
        CcDescriptor = {
            type = "string",
            traits = {
                json_name = "ccDescriptor",
            },
        },
        DvbNitSettings = setmetatable({ traits = {
            json_name = "dvbNitSettings",
        } }, { __index = M.DvbNitSettings }),
        DvbSdtSettings = setmetatable({ traits = {
            json_name = "dvbSdtSettings",
        } }, { __index = M.DvbSdtSettings }),
        DvbSubPids = {
            type = "string",
            traits = {
                json_name = "dvbSubPids",
            },
        },
        DvbTdtSettings = setmetatable({ traits = {
            json_name = "dvbTdtSettings",
        } }, { __index = M.DvbTdtSettings }),
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
            type = "integer",
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
            type = "double",
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
        PcrPeriod = {
            type = "integer",
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
            type = "integer",
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
            type = "integer",
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
            type = "double",
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
            type = "integer",
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
            type = "double",
            traits = {
                json_name = "scte35PrerollPullupMilliseconds",
            },
        },
    },
}

M.RawSettings = {
    type = "structure",
    id = "RawSettings",
}

M.ArchiveContainerSettings = {
    type = "structure",
    id = "ArchiveContainerSettings",
    members = {
        M2tsSettings = setmetatable({ traits = {
            json_name = "m2tsSettings",
        } }, { __index = M.M2tsSettings }),
        RawSettings = setmetatable({ traits = {
            json_name = "rawSettings",
        } }, { __index = M.RawSettings }),
    },
}

M.ArchiveOutputSettings = {
    type = "structure",
    id = "ArchiveOutputSettings",
    members = {
        ContainerSettings = setmetatable({ traits = {
            json_name = "containerSettings",
            required = true,
        } }, { __index = M.ArchiveContainerSettings }),
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
    id = "CmafIngestOutputSettings",
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
    id = "FrameCaptureOutputSettings",
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
    id = "AudioOnlyHlsSettings",
    members = {
        AudioGroupId = {
            type = "string",
            traits = {
                json_name = "audioGroupId",
            },
        },
        AudioOnlyImage = setmetatable({ traits = {
            json_name = "audioOnlyImage",
        } }, { __index = M.InputLocation }),
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
    id = "Fmp4HlsSettings",
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
    id = "FrameCaptureHlsSettings",
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
    id = "M3u8Settings",
    members = {
        AudioFramesPerPes = {
            type = "integer",
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
        PcrPeriod = {
            type = "integer",
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
            type = "integer",
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
            type = "integer",
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
            type = "integer",
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
    id = "StandardHlsSettings",
    members = {
        AudioRenditionSets = {
            type = "string",
            traits = {
                json_name = "audioRenditionSets",
            },
        },
        M3u8Settings = setmetatable({ traits = {
            json_name = "m3u8Settings",
            required = true,
        } }, { __index = M.M3u8Settings }),
    },
}

M.HlsSettings = {
    type = "structure",
    id = "HlsSettings",
    members = {
        AudioOnlyHlsSettings = setmetatable({ traits = {
            json_name = "audioOnlyHlsSettings",
        } }, { __index = M.AudioOnlyHlsSettings }),
        Fmp4HlsSettings = setmetatable({ traits = {
            json_name = "fmp4HlsSettings",
        } }, { __index = M.Fmp4HlsSettings }),
        FrameCaptureHlsSettings = setmetatable({ traits = {
            json_name = "frameCaptureHlsSettings",
        } }, { __index = M.FrameCaptureHlsSettings }),
        StandardHlsSettings = setmetatable({ traits = {
            json_name = "standardHlsSettings",
        } }, { __index = M.StandardHlsSettings }),
    },
}

M.HlsOutputSettings = {
    type = "structure",
    id = "HlsOutputSettings",
    members = {
        H265PackagingType = {
            type = "string",
            traits = {
                json_name = "h265PackagingType",
            },
        },
        HlsSettings = setmetatable({ traits = {
            json_name = "hlsSettings",
            required = true,
        } }, { __index = M.HlsSettings }),
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
    id = "MediaConnectRouterOutputConnectionMap",
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
    id = "MediaConnectRouterContainerSettings",
    members = {
        M2tsSettings = setmetatable({ traits = {
            json_name = "m2tsSettings",
        } }, { __index = M.M2tsSettings }),
    },
}

M.MediaConnectRouterOutputSettings = {
    type = "structure",
    id = "MediaConnectRouterOutputSettings",
    members = {
        ConnectedRouterInputs = setmetatable({ traits = {
            json_name = "connectedRouterInputs",
        } }, { __index = M.MediaConnectRouterOutputConnectionMap }),
        ContainerSettings = setmetatable({ traits = {
            json_name = "containerSettings",
            required = true,
        } }, { __index = M.MediaConnectRouterContainerSettings }),
        Destination = setmetatable({ traits = {
            json_name = "destination",
            required = true,
        } }, { __index = M.OutputLocationRef }),
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
    id = "MediaPackageV2DestinationSettings",
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
    id = "MediaPackageOutputSettings",
    members = {
        MediaPackageV2DestinationSettings = setmetatable({ traits = {
            json_name = "mediaPackageV2DestinationSettings",
        } }, { __index = M.MediaPackageV2DestinationSettings }),
    },
}

M.MsSmoothH265PackagingType = {
    HEV1 = "HEV1",
    HVC1 = "HVC1",
}

M.MsSmoothOutputSettings = {
    type = "structure",
    id = "MsSmoothOutputSettings",
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
    id = "MultiplexM2tsSettings",
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
            type = "integer",
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
            type = "integer",
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
            type = "double",
            traits = {
                json_name = "scte35PrerollPullupMilliseconds",
            },
        },
    },
}

M.MultiplexContainerSettings = {
    type = "structure",
    id = "MultiplexContainerSettings",
    members = {
        MultiplexM2tsSettings = setmetatable({ traits = {
            json_name = "multiplexM2tsSettings",
        } }, { __index = M.MultiplexM2tsSettings }),
    },
}

M.MultiplexOutputSettings = {
    type = "structure",
    id = "MultiplexOutputSettings",
    members = {
        Destination = setmetatable({ traits = {
            json_name = "destination",
            required = true,
        } }, { __index = M.OutputLocationRef }),
        ContainerSettings = setmetatable({ traits = {
            json_name = "containerSettings",
        } }, { __index = M.MultiplexContainerSettings }),
    },
}

M.RtmpOutputCertificateMode = {
    SELF_SIGNED = "SELF_SIGNED",
    VERIFY_AUTHENTICITY = "VERIFY_AUTHENTICITY",
}

M.RtmpOutputSettings = {
    type = "structure",
    id = "RtmpOutputSettings",
    members = {
        CertificateMode = {
            type = "string",
            traits = {
                json_name = "certificateMode",
            },
        },
        ConnectionRetryInterval = {
            type = "integer",
            traits = {
                json_name = "connectionRetryInterval",
            },
        },
        Destination = setmetatable({ traits = {
            json_name = "destination",
            required = true,
        } }, { __index = M.OutputLocationRef }),
        NumRetries = {
            type = "integer",
            traits = {
                json_name = "numRetries",
            },
        },
    },
}

M.UdpContainerSettings = {
    type = "structure",
    id = "UdpContainerSettings",
    members = {
        M2tsSettings = setmetatable({ traits = {
            json_name = "m2tsSettings",
        } }, { __index = M.M2tsSettings }),
    },
}

M.SrtEncryptionType = {
    AES128 = "AES128",
    AES192 = "AES192",
    AES256 = "AES256",
}

M.SrtOutputSettings = {
    type = "structure",
    id = "SrtOutputSettings",
    members = {
        BufferMsec = {
            type = "integer",
            traits = {
                json_name = "bufferMsec",
            },
        },
        ContainerSettings = setmetatable({ traits = {
            json_name = "containerSettings",
            required = true,
        } }, { __index = M.UdpContainerSettings }),
        Destination = setmetatable({ traits = {
            json_name = "destination",
            required = true,
        } }, { __index = M.OutputLocationRef }),
        EncryptionType = {
            type = "string",
            traits = {
                json_name = "encryptionType",
            },
        },
        Latency = {
            type = "integer",
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
    id = "FecOutputSettings",
    members = {
        ColumnDepth = {
            type = "integer",
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
            type = "integer",
            traits = {
                json_name = "rowLength",
            },
        },
    },
}

M.UdpOutputSettings = {
    type = "structure",
    id = "UdpOutputSettings",
    members = {
        BufferMsec = {
            type = "integer",
            traits = {
                json_name = "bufferMsec",
            },
        },
        ContainerSettings = setmetatable({ traits = {
            json_name = "containerSettings",
            required = true,
        } }, { __index = M.UdpContainerSettings }),
        Destination = setmetatable({ traits = {
            json_name = "destination",
            required = true,
        } }, { __index = M.OutputLocationRef }),
        FecOutputSettings = setmetatable({ traits = {
            json_name = "fecOutputSettings",
        } }, { __index = M.FecOutputSettings }),
    },
}

M.OutputSettings = {
    type = "structure",
    id = "OutputSettings",
    members = {
        ArchiveOutputSettings = setmetatable({ traits = {
            json_name = "archiveOutputSettings",
        } }, { __index = M.ArchiveOutputSettings }),
        FrameCaptureOutputSettings = setmetatable({ traits = {
            json_name = "frameCaptureOutputSettings",
        } }, { __index = M.FrameCaptureOutputSettings }),
        HlsOutputSettings = setmetatable({ traits = {
            json_name = "hlsOutputSettings",
        } }, { __index = M.HlsOutputSettings }),
        MediaPackageOutputSettings = setmetatable({ traits = {
            json_name = "mediaPackageOutputSettings",
        } }, { __index = M.MediaPackageOutputSettings }),
        MsSmoothOutputSettings = setmetatable({ traits = {
            json_name = "msSmoothOutputSettings",
        } }, { __index = M.MsSmoothOutputSettings }),
        MultiplexOutputSettings = setmetatable({ traits = {
            json_name = "multiplexOutputSettings",
        } }, { __index = M.MultiplexOutputSettings }),
        RtmpOutputSettings = setmetatable({ traits = {
            json_name = "rtmpOutputSettings",
        } }, { __index = M.RtmpOutputSettings }),
        UdpOutputSettings = setmetatable({ traits = {
            json_name = "udpOutputSettings",
        } }, { __index = M.UdpOutputSettings }),
        CmafIngestOutputSettings = setmetatable({ traits = {
            json_name = "cmafIngestOutputSettings",
        } }, { __index = M.CmafIngestOutputSettings }),
        SrtOutputSettings = setmetatable({ traits = {
            json_name = "srtOutputSettings",
        } }, { __index = M.SrtOutputSettings }),
        MediaConnectRouterOutputSettings = setmetatable({ traits = {
            json_name = "mediaConnectRouterOutputSettings",
        } }, { __index = M.MediaConnectRouterOutputSettings }),
    },
}

M.Output = {
    type = "structure",
    id = "Output",
    members = {
        AudioDescriptionNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "audioDescriptionNames",
            },
        },
        CaptionDescriptionNames = {
            type = "list",
            member = { type = "string" },
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
        OutputSettings = setmetatable({ traits = {
            json_name = "outputSettings",
            required = true,
        } }, { __index = M.OutputSettings }),
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
    id = "ArchiveS3Settings",
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
    id = "ArchiveCdnSettings",
    members = {
        ArchiveS3Settings = setmetatable({ traits = {
            json_name = "archiveS3Settings",
        } }, { __index = M.ArchiveS3Settings }),
    },
}

M.ArchiveGroupSettings = {
    type = "structure",
    id = "ArchiveGroupSettings",
    members = {
        ArchiveCdnSettings = setmetatable({ traits = {
            json_name = "archiveCdnSettings",
        } }, { __index = M.ArchiveCdnSettings }),
        Destination = setmetatable({ traits = {
            json_name = "destination",
            required = true,
        } }, { __index = M.OutputLocationRef }),
        RolloverInterval = {
            type = "integer",
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
    id = "CmafIngestGroupSettings",
    members = {
        Destination = setmetatable({ traits = {
            json_name = "destination",
            required = true,
        } }, { __index = M.OutputLocationRef }),
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
            type = "integer",
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
            type = "integer",
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
            member = M.CmafIngestCaptionLanguageMapping,
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
            type = "integer",
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
            member = M.AdditionalDestinations,
            traits = {
                json_name = "additionalDestinations",
            },
        },
    },
}

M.FrameCaptureS3Settings = {
    type = "structure",
    id = "FrameCaptureS3Settings",
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
    id = "FrameCaptureCdnSettings",
    members = {
        FrameCaptureS3Settings = setmetatable({ traits = {
            json_name = "frameCaptureS3Settings",
        } }, { __index = M.FrameCaptureS3Settings }),
    },
}

M.FrameCaptureGroupSettings = {
    type = "structure",
    id = "FrameCaptureGroupSettings",
    members = {
        Destination = setmetatable({ traits = {
            json_name = "destination",
            required = true,
        } }, { __index = M.OutputLocationRef }),
        FrameCaptureCdnSettings = setmetatable({ traits = {
            json_name = "frameCaptureCdnSettings",
        } }, { __index = M.FrameCaptureCdnSettings }),
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
    id = "HlsAkamaiSettings",
    members = {
        ConnectionRetryInterval = {
            type = "integer",
            traits = {
                json_name = "connectionRetryInterval",
            },
        },
        FilecacheDuration = {
            type = "integer",
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
            type = "integer",
            traits = {
                json_name = "numRetries",
            },
        },
        RestartDelay = {
            type = "integer",
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
    id = "HlsBasicPutSettings",
    members = {
        ConnectionRetryInterval = {
            type = "integer",
            traits = {
                json_name = "connectionRetryInterval",
            },
        },
        FilecacheDuration = {
            type = "integer",
            traits = {
                json_name = "filecacheDuration",
            },
        },
        NumRetries = {
            type = "integer",
            traits = {
                json_name = "numRetries",
            },
        },
        RestartDelay = {
            type = "integer",
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
    id = "HlsMediaStoreSettings",
    members = {
        ConnectionRetryInterval = {
            type = "integer",
            traits = {
                json_name = "connectionRetryInterval",
            },
        },
        FilecacheDuration = {
            type = "integer",
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
            type = "integer",
            traits = {
                json_name = "numRetries",
            },
        },
        RestartDelay = {
            type = "integer",
            traits = {
                json_name = "restartDelay",
            },
        },
    },
}

M.HlsS3Settings = {
    type = "structure",
    id = "HlsS3Settings",
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
    id = "HlsWebdavSettings",
    members = {
        ConnectionRetryInterval = {
            type = "integer",
            traits = {
                json_name = "connectionRetryInterval",
            },
        },
        FilecacheDuration = {
            type = "integer",
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
            type = "integer",
            traits = {
                json_name = "numRetries",
            },
        },
        RestartDelay = {
            type = "integer",
            traits = {
                json_name = "restartDelay",
            },
        },
    },
}

M.HlsCdnSettings = {
    type = "structure",
    id = "HlsCdnSettings",
    members = {
        HlsAkamaiSettings = setmetatable({ traits = {
            json_name = "hlsAkamaiSettings",
        } }, { __index = M.HlsAkamaiSettings }),
        HlsBasicPutSettings = setmetatable({ traits = {
            json_name = "hlsBasicPutSettings",
        } }, { __index = M.HlsBasicPutSettings }),
        HlsMediaStoreSettings = setmetatable({ traits = {
            json_name = "hlsMediaStoreSettings",
        } }, { __index = M.HlsMediaStoreSettings }),
        HlsS3Settings = setmetatable({ traits = {
            json_name = "hlsS3Settings",
        } }, { __index = M.HlsS3Settings }),
        HlsWebdavSettings = setmetatable({ traits = {
            json_name = "hlsWebdavSettings",
        } }, { __index = M.HlsWebdavSettings }),
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
    id = "StaticKeySettings",
    members = {
        KeyProviderServer = setmetatable({ traits = {
            json_name = "keyProviderServer",
        } }, { __index = M.InputLocation }),
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
    id = "KeyProviderSettings",
    members = {
        StaticKeySettings = setmetatable({ traits = {
            json_name = "staticKeySettings",
        } }, { __index = M.StaticKeySettings }),
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
    id = "HlsGroupSettings",
    members = {
        AdMarkers = {
            type = "list",
            member = { type = "string" },
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
            member = M.CaptionLanguageMapping,
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
        Destination = setmetatable({ traits = {
            json_name = "destination",
            required = true,
        } }, { __index = M.OutputLocationRef }),
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
        HlsCdnSettings = setmetatable({ traits = {
            json_name = "hlsCdnSettings",
        } }, { __index = M.HlsCdnSettings }),
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
            type = "integer",
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
            type = "integer",
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
        KeyProviderSettings = setmetatable({ traits = {
            json_name = "keyProviderSettings",
        } }, { __index = M.KeyProviderSettings }),
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
            type = "integer",
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
            type = "integer",
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
            type = "integer",
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
    id = "MediaConnectRouterGroupSettings",
    members = {
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "availabilityZones",
            },
        },
    },
}

M.MediaPackageV2GroupSettings = {
    type = "structure",
    id = "MediaPackageV2GroupSettings",
    members = {
        CaptionLanguageMappings = {
            type = "list",
            member = M.CaptionLanguageMapping,
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
            type = "integer",
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
            type = "integer",
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
            member = M.MediaPackageAdditionalDestinations,
            traits = {
                json_name = "additionalDestinations",
            },
        },
    },
}

M.MediaPackageGroupSettings = {
    type = "structure",
    id = "MediaPackageGroupSettings",
    members = {
        Destination = setmetatable({ traits = {
            json_name = "destination",
            required = true,
        } }, { __index = M.OutputLocationRef }),
        MediapackageV2GroupSettings = setmetatable({ traits = {
            json_name = "mediapackageV2GroupSettings",
        } }, { __index = M.MediaPackageV2GroupSettings }),
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
    id = "MsSmoothGroupSettings",
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
            type = "integer",
            traits = {
                json_name = "connectionRetryInterval",
            },
        },
        Destination = setmetatable({ traits = {
            json_name = "destination",
            required = true,
        } }, { __index = M.OutputLocationRef }),
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
            type = "integer",
            traits = {
                json_name = "filecacheDuration",
            },
        },
        FragmentLength = {
            type = "integer",
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
            type = "integer",
            traits = {
                json_name = "numRetries",
            },
        },
        RestartDelay = {
            type = "integer",
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
            type = "integer",
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
    id = "MultiplexGroupSettings",
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
    id = "RtmpGroupSettings",
    members = {
        AdMarkers = {
            type = "list",
            member = { type = "string" },
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
            type = "integer",
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
            type = "integer",
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
    id = "SrtGroupSettings",
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
    id = "UdpGroupSettings",
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
            type = "integer",
            traits = {
                json_name = "timedMetadataId3Period",
            },
        },
    },
}

M.OutputGroupSettings = {
    type = "structure",
    id = "OutputGroupSettings",
    members = {
        ArchiveGroupSettings = setmetatable({ traits = {
            json_name = "archiveGroupSettings",
        } }, { __index = M.ArchiveGroupSettings }),
        FrameCaptureGroupSettings = setmetatable({ traits = {
            json_name = "frameCaptureGroupSettings",
        } }, { __index = M.FrameCaptureGroupSettings }),
        HlsGroupSettings = setmetatable({ traits = {
            json_name = "hlsGroupSettings",
        } }, { __index = M.HlsGroupSettings }),
        MediaPackageGroupSettings = setmetatable({ traits = {
            json_name = "mediaPackageGroupSettings",
        } }, { __index = M.MediaPackageGroupSettings }),
        MsSmoothGroupSettings = setmetatable({ traits = {
            json_name = "msSmoothGroupSettings",
        } }, { __index = M.MsSmoothGroupSettings }),
        MultiplexGroupSettings = setmetatable({ traits = {
            json_name = "multiplexGroupSettings",
        } }, { __index = M.MultiplexGroupSettings }),
        RtmpGroupSettings = setmetatable({ traits = {
            json_name = "rtmpGroupSettings",
        } }, { __index = M.RtmpGroupSettings }),
        UdpGroupSettings = setmetatable({ traits = {
            json_name = "udpGroupSettings",
        } }, { __index = M.UdpGroupSettings }),
        CmafIngestGroupSettings = setmetatable({ traits = {
            json_name = "cmafIngestGroupSettings",
        } }, { __index = M.CmafIngestGroupSettings }),
        SrtGroupSettings = setmetatable({ traits = {
            json_name = "srtGroupSettings",
        } }, { __index = M.SrtGroupSettings }),
        MediaConnectRouterGroupSettings = setmetatable({ traits = {
            json_name = "mediaConnectRouterGroupSettings",
        } }, { __index = M.MediaConnectRouterGroupSettings }),
    },
}

M.OutputGroup = {
    type = "structure",
    id = "OutputGroup",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        OutputGroupSettings = setmetatable({ traits = {
            json_name = "outputGroupSettings",
            required = true,
        } }, { __index = M.OutputGroupSettings }),
        Outputs = {
            type = "list",
            member = M.Output,
            traits = {
                json_name = "outputs",
                required = true,
            },
        },
    },
}

M.PipelineDetail = {
    type = "structure",
    id = "PipelineDetail",
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
        ChannelEngineVersion = setmetatable({ traits = {
            json_name = "channelEngineVersion",
        } }, { __index = M.ChannelEngineVersionResponse }),
    },
}

M.PipelineId = {
    PIPELINE_0 = "PIPELINE_0",
    PIPELINE_1 = "PIPELINE_1",
}

M.PipelinePauseStateSettings = {
    type = "structure",
    id = "PipelinePauseStateSettings",
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
    id = "RenewalSettings",
    members = {
        AutomaticRenewal = {
            type = "string",
            traits = {
                json_name = "automaticRenewal",
            },
        },
        RenewalCount = {
            type = "integer",
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
    id = "Reservation",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Count = {
            type = "integer",
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
            type = "integer",
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
            type = "double",
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
        RenewalSettings = setmetatable({ traits = {
            json_name = "renewalSettings",
        } }, { __index = M.RenewalSettings }),
        ReservationId = {
            type = "string",
            traits = {
                json_name = "reservationId",
            },
        },
        ResourceSpecification = setmetatable({ traits = {
            json_name = "resourceSpecification",
        } }, { __index = M.ReservationResourceSpecification }),
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        UsagePrice = {
            type = "double",
            traits = {
                json_name = "usagePrice",
            },
        },
    },
}

M.RouteCreateRequest = {
    type = "structure",
    id = "RouteCreateRequest",
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
    id = "RouterDestinationSettings",
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
    id = "RouteUpdateRequest",
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
    id = "HlsId3SegmentTaggingScheduleActionSettings",
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
    id = "HlsTimedMetadataScheduleActionSettings",
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
    id = "Id3SegmentTaggingScheduleActionSettings",
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
    id = "StartTimecode",
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
    id = "StopTimecode",
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
    id = "InputClippingSettings",
    members = {
        InputTimecodeSource = {
            type = "string",
            traits = {
                json_name = "inputTimecodeSource",
                required = true,
            },
        },
        StartTimecode = setmetatable({ traits = {
            json_name = "startTimecode",
        } }, { __index = M.StartTimecode }),
        StopTimecode = setmetatable({ traits = {
            json_name = "stopTimecode",
        } }, { __index = M.StopTimecode }),
    },
}

M.InputPrepareScheduleActionSettings = {
    type = "structure",
    id = "InputPrepareScheduleActionSettings",
    members = {
        InputAttachmentNameReference = {
            type = "string",
            traits = {
                json_name = "inputAttachmentNameReference",
            },
        },
        InputClippingSettings = setmetatable({ traits = {
            json_name = "inputClippingSettings",
        } }, { __index = M.InputClippingSettings }),
        UrlPath = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "urlPath",
            },
        },
    },
}

M.InputSwitchScheduleActionSettings = {
    type = "structure",
    id = "InputSwitchScheduleActionSettings",
    members = {
        InputAttachmentNameReference = {
            type = "string",
            traits = {
                json_name = "inputAttachmentNameReference",
                required = true,
            },
        },
        InputClippingSettings = setmetatable({ traits = {
            json_name = "inputClippingSettings",
        } }, { __index = M.InputClippingSettings }),
        UrlPath = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "urlPath",
            },
        },
    },
}

M.MotionGraphicsActivateScheduleActionSettings = {
    type = "structure",
    id = "MotionGraphicsActivateScheduleActionSettings",
    members = {
        Duration = {
            type = "long",
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
    id = "MotionGraphicsDeactivateScheduleActionSettings",
}

M.PauseStateScheduleActionSettings = {
    type = "structure",
    id = "PauseStateScheduleActionSettings",
    members = {
        Pipelines = {
            type = "list",
            member = M.PipelinePauseStateSettings,
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
    id = "Scte35InputScheduleActionSettings",
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
    id = "Scte35ReturnToNetworkScheduleActionSettings",
    members = {
        SpliceEventId = {
            type = "long",
            traits = {
                json_name = "spliceEventId",
                required = true,
            },
        },
    },
}

M.Scte35SpliceInsertScheduleActionSettings = {
    type = "structure",
    id = "Scte35SpliceInsertScheduleActionSettings",
    members = {
        Duration = {
            type = "long",
            traits = {
                json_name = "duration",
            },
        },
        SpliceEventId = {
            type = "long",
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
    id = "Scte35DeliveryRestrictions",
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
    id = "Scte35SegmentationDescriptor",
    members = {
        DeliveryRestrictions = setmetatable({ traits = {
            json_name = "deliveryRestrictions",
        } }, { __index = M.Scte35DeliveryRestrictions }),
        SegmentNum = {
            type = "integer",
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
            type = "long",
            traits = {
                json_name = "segmentationDuration",
            },
        },
        SegmentationEventId = {
            type = "long",
            traits = {
                json_name = "segmentationEventId",
                required = true,
            },
        },
        SegmentationTypeId = {
            type = "integer",
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
            type = "integer",
            traits = {
                json_name = "segmentationUpidType",
            },
        },
        SegmentsExpected = {
            type = "integer",
            traits = {
                json_name = "segmentsExpected",
            },
        },
        SubSegmentNum = {
            type = "integer",
            traits = {
                json_name = "subSegmentNum",
            },
        },
        SubSegmentsExpected = {
            type = "integer",
            traits = {
                json_name = "subSegmentsExpected",
            },
        },
    },
}

M.Scte35DescriptorSettings = {
    type = "structure",
    id = "Scte35DescriptorSettings",
    members = {
        SegmentationDescriptorScte35DescriptorSettings = setmetatable({ traits = {
            json_name = "segmentationDescriptorScte35DescriptorSettings",
            required = true,
        } }, { __index = M.Scte35SegmentationDescriptor }),
    },
}

M.Scte35Descriptor = {
    type = "structure",
    id = "Scte35Descriptor",
    members = {
        Scte35DescriptorSettings = setmetatable({ traits = {
            json_name = "scte35DescriptorSettings",
            required = true,
        } }, { __index = M.Scte35DescriptorSettings }),
    },
}

M.Scte35TimeSignalScheduleActionSettings = {
    type = "structure",
    id = "Scte35TimeSignalScheduleActionSettings",
    members = {
        Scte35Descriptors = {
            type = "list",
            member = M.Scte35Descriptor,
            traits = {
                json_name = "scte35Descriptors",
                required = true,
            },
        },
    },
}

M.StaticImageActivateScheduleActionSettings = {
    type = "structure",
    id = "StaticImageActivateScheduleActionSettings",
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
        Image = setmetatable({ traits = {
            json_name = "image",
            required = true,
        } }, { __index = M.InputLocation }),
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
        Width = {
            type = "integer",
            traits = {
                json_name = "width",
            },
        },
    },
}

M.StaticImageDeactivateScheduleActionSettings = {
    type = "structure",
    id = "StaticImageDeactivateScheduleActionSettings",
    members = {
        FadeOut = {
            type = "integer",
            traits = {
                json_name = "fadeOut",
            },
        },
        Layer = {
            type = "integer",
            traits = {
                json_name = "layer",
            },
        },
    },
}

M.StaticImageOutputActivateScheduleActionSettings = {
    type = "structure",
    id = "StaticImageOutputActivateScheduleActionSettings",
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
        Image = setmetatable({ traits = {
            json_name = "image",
            required = true,
        } }, { __index = M.InputLocation }),
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
        OutputNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "outputNames",
                required = true,
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

M.StaticImageOutputDeactivateScheduleActionSettings = {
    type = "structure",
    id = "StaticImageOutputDeactivateScheduleActionSettings",
    members = {
        FadeOut = {
            type = "integer",
            traits = {
                json_name = "fadeOut",
            },
        },
        Layer = {
            type = "integer",
            traits = {
                json_name = "layer",
            },
        },
        OutputNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "outputNames",
                required = true,
            },
        },
    },
}

M.TimedMetadataScheduleActionSettings = {
    type = "structure",
    id = "TimedMetadataScheduleActionSettings",
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
    id = "ScheduleActionSettings",
    members = {
        HlsId3SegmentTaggingSettings = setmetatable({ traits = {
            json_name = "hlsId3SegmentTaggingSettings",
        } }, { __index = M.HlsId3SegmentTaggingScheduleActionSettings }),
        HlsTimedMetadataSettings = setmetatable({ traits = {
            json_name = "hlsTimedMetadataSettings",
        } }, { __index = M.HlsTimedMetadataScheduleActionSettings }),
        InputPrepareSettings = setmetatable({ traits = {
            json_name = "inputPrepareSettings",
        } }, { __index = M.InputPrepareScheduleActionSettings }),
        InputSwitchSettings = setmetatable({ traits = {
            json_name = "inputSwitchSettings",
        } }, { __index = M.InputSwitchScheduleActionSettings }),
        MotionGraphicsImageActivateSettings = setmetatable({ traits = {
            json_name = "motionGraphicsImageActivateSettings",
        } }, { __index = M.MotionGraphicsActivateScheduleActionSettings }),
        MotionGraphicsImageDeactivateSettings = setmetatable({ traits = {
            json_name = "motionGraphicsImageDeactivateSettings",
        } }, { __index = M.MotionGraphicsDeactivateScheduleActionSettings }),
        PauseStateSettings = setmetatable({ traits = {
            json_name = "pauseStateSettings",
        } }, { __index = M.PauseStateScheduleActionSettings }),
        Scte35InputSettings = setmetatable({ traits = {
            json_name = "scte35InputSettings",
        } }, { __index = M.Scte35InputScheduleActionSettings }),
        Scte35ReturnToNetworkSettings = setmetatable({ traits = {
            json_name = "scte35ReturnToNetworkSettings",
        } }, { __index = M.Scte35ReturnToNetworkScheduleActionSettings }),
        Scte35SpliceInsertSettings = setmetatable({ traits = {
            json_name = "scte35SpliceInsertSettings",
        } }, { __index = M.Scte35SpliceInsertScheduleActionSettings }),
        Scte35TimeSignalSettings = setmetatable({ traits = {
            json_name = "scte35TimeSignalSettings",
        } }, { __index = M.Scte35TimeSignalScheduleActionSettings }),
        StaticImageActivateSettings = setmetatable({ traits = {
            json_name = "staticImageActivateSettings",
        } }, { __index = M.StaticImageActivateScheduleActionSettings }),
        StaticImageDeactivateSettings = setmetatable({ traits = {
            json_name = "staticImageDeactivateSettings",
        } }, { __index = M.StaticImageDeactivateScheduleActionSettings }),
        StaticImageOutputActivateSettings = setmetatable({ traits = {
            json_name = "staticImageOutputActivateSettings",
        } }, { __index = M.StaticImageOutputActivateScheduleActionSettings }),
        StaticImageOutputDeactivateSettings = setmetatable({ traits = {
            json_name = "staticImageOutputDeactivateSettings",
        } }, { __index = M.StaticImageOutputDeactivateScheduleActionSettings }),
        Id3SegmentTaggingSettings = setmetatable({ traits = {
            json_name = "id3SegmentTaggingSettings",
        } }, { __index = M.Id3SegmentTaggingScheduleActionSettings }),
        TimedMetadataSettings = setmetatable({ traits = {
            json_name = "timedMetadataSettings",
        } }, { __index = M.TimedMetadataScheduleActionSettings }),
    },
}

M.FixedModeScheduleActionStartSettings = {
    type = "structure",
    id = "FixedModeScheduleActionStartSettings",
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
    id = "FollowModeScheduleActionStartSettings",
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
    id = "ImmediateModeScheduleActionStartSettings",
}

M.ScheduleActionStartSettings = {
    type = "structure",
    id = "ScheduleActionStartSettings",
    members = {
        FixedModeScheduleActionStartSettings = setmetatable({ traits = {
            json_name = "fixedModeScheduleActionStartSettings",
        } }, { __index = M.FixedModeScheduleActionStartSettings }),
        FollowModeScheduleActionStartSettings = setmetatable({ traits = {
            json_name = "followModeScheduleActionStartSettings",
        } }, { __index = M.FollowModeScheduleActionStartSettings }),
        ImmediateModeScheduleActionStartSettings = setmetatable({ traits = {
            json_name = "immediateModeScheduleActionStartSettings",
        } }, { __index = M.ImmediateModeScheduleActionStartSettings }),
    },
}

M.ScheduleAction = {
    type = "structure",
    id = "ScheduleAction",
    members = {
        ActionName = {
            type = "string",
            traits = {
                json_name = "actionName",
                required = true,
            },
        },
        ScheduleActionSettings = setmetatable({ traits = {
            json_name = "scheduleActionSettings",
            required = true,
        } }, { __index = M.ScheduleActionSettings }),
        ScheduleActionStartSettings = setmetatable({ traits = {
            json_name = "scheduleActionStartSettings",
            required = true,
        } }, { __index = M.ScheduleActionStartSettings }),
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
    id = "SdiSourceSummary",
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
            member = { type = "string" },
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
    id = "SignalMapSummary",
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
                timestamp_format = "date-time",
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
                timestamp_format = "date-time",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.SrtCallerDecryptionRequest = {
    type = "structure",
    id = "SrtCallerDecryptionRequest",
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
    id = "SrtCallerSourceRequest",
    members = {
        Decryption = setmetatable({ traits = {
            json_name = "decryption",
        } }, { __index = M.SrtCallerDecryptionRequest }),
        MinimumLatency = {
            type = "integer",
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
    id = "Thumbnail",
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
                timestamp_format = "date-time",
            },
        },
    },
}

M.ThumbnailDetail = {
    type = "structure",
    id = "ThumbnailDetail",
    members = {
        PipelineId = {
            type = "string",
            traits = {
                json_name = "pipelineId",
            },
        },
        Thumbnails = {
            type = "list",
            member = M.Thumbnail,
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
    id = "TransferringInputDeviceSummary",
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
    id = "ValidationError",
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
    id = "ColorSpacePassthroughSettings",
}

M.Hlg2020Settings = {
    type = "structure",
    id = "Hlg2020Settings",
}

M.Rec601Settings = {
    type = "structure",
    id = "Rec601Settings",
}

M.Rec709Settings = {
    type = "structure",
    id = "Rec709Settings",
}

M.Av1ColorSpaceSettings = {
    type = "structure",
    id = "Av1ColorSpaceSettings",
    members = {
        ColorSpacePassthroughSettings = setmetatable({ traits = {
            json_name = "colorSpacePassthroughSettings",
        } }, { __index = M.ColorSpacePassthroughSettings }),
        Hdr10Settings = setmetatable({ traits = {
            json_name = "hdr10Settings",
        } }, { __index = M.Hdr10Settings }),
        Rec601Settings = setmetatable({ traits = {
            json_name = "rec601Settings",
        } }, { __index = M.Rec601Settings }),
        Rec709Settings = setmetatable({ traits = {
            json_name = "rec709Settings",
        } }, { __index = M.Rec709Settings }),
        Hlg2020Settings = setmetatable({ traits = {
            json_name = "hlg2020Settings",
        } }, { __index = M.Hlg2020Settings }),
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
    id = "TimecodeBurninSettings",
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
    id = "Av1Settings",
    members = {
        AfdSignaling = {
            type = "string",
            traits = {
                json_name = "afdSignaling",
            },
        },
        BufSize = {
            type = "integer",
            traits = {
                json_name = "bufSize",
            },
        },
        ColorSpaceSettings = setmetatable({ traits = {
            json_name = "colorSpaceSettings",
        } }, { __index = M.Av1ColorSpaceSettings }),
        FixedAfd = {
            type = "string",
            traits = {
                json_name = "fixedAfd",
            },
        },
        FramerateDenominator = {
            type = "integer",
            traits = {
                json_name = "framerateDenominator",
                required = true,
            },
        },
        FramerateNumerator = {
            type = "integer",
            traits = {
                json_name = "framerateNumerator",
                required = true,
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
        QvbrQualityLevel = {
            type = "integer",
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
        TimecodeBurninSettings = setmetatable({ traits = {
            json_name = "timecodeBurninSettings",
        } }, { __index = M.TimecodeBurninSettings }),
        Bitrate = {
            type = "integer",
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
            type = "integer",
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
    id = "FrameCaptureSettings",
    members = {
        CaptureInterval = {
            type = "integer",
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
        TimecodeBurninSettings = setmetatable({ traits = {
            json_name = "timecodeBurninSettings",
        } }, { __index = M.TimecodeBurninSettings }),
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
    id = "H264ColorSpaceSettings",
    members = {
        ColorSpacePassthroughSettings = setmetatable({ traits = {
            json_name = "colorSpacePassthroughSettings",
        } }, { __index = M.ColorSpacePassthroughSettings }),
        Rec601Settings = setmetatable({ traits = {
            json_name = "rec601Settings",
        } }, { __index = M.Rec601Settings }),
        Rec709Settings = setmetatable({ traits = {
            json_name = "rec709Settings",
        } }, { __index = M.Rec709Settings }),
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
    id = "BandwidthReductionFilterSettings",
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
    id = "TemporalFilterSettings",
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
    id = "H264FilterSettings",
    members = {
        TemporalFilterSettings = setmetatable({ traits = {
            json_name = "temporalFilterSettings",
        } }, { __index = M.TemporalFilterSettings }),
        BandwidthReductionFilterSettings = setmetatable({ traits = {
            json_name = "bandwidthReductionFilterSettings",
        } }, { __index = M.BandwidthReductionFilterSettings }),
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
    id = "H264Settings",
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
            type = "integer",
            traits = {
                json_name = "bitrate",
            },
        },
        BufFillPct = {
            type = "integer",
            traits = {
                json_name = "bufFillPct",
            },
        },
        BufSize = {
            type = "integer",
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
        ColorSpaceSettings = setmetatable({ traits = {
            json_name = "colorSpaceSettings",
        } }, { __index = M.H264ColorSpaceSettings }),
        EntropyEncoding = {
            type = "string",
            traits = {
                json_name = "entropyEncoding",
            },
        },
        FilterSettings = setmetatable({ traits = {
            json_name = "filterSettings",
        } }, { __index = M.H264FilterSettings }),
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
        GopNumBFrames = {
            type = "integer",
            traits = {
                json_name = "gopNumBFrames",
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
        NumRefFrames = {
            type = "integer",
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
            type = "integer",
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
            type = "integer",
            traits = {
                json_name = "slices",
            },
        },
        Softness = {
            type = "integer",
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
        TimecodeBurninSettings = setmetatable({ traits = {
            json_name = "timecodeBurninSettings",
        } }, { __index = M.TimecodeBurninSettings }),
        MinQp = {
            type = "integer",
            traits = {
                json_name = "minQp",
            },
        },
        MinBitrate = {
            type = "integer",
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
    id = "DolbyVision81Settings",
}

M.H265ColorSpaceSettings = {
    type = "structure",
    id = "H265ColorSpaceSettings",
    members = {
        ColorSpacePassthroughSettings = setmetatable({ traits = {
            json_name = "colorSpacePassthroughSettings",
        } }, { __index = M.ColorSpacePassthroughSettings }),
        DolbyVision81Settings = setmetatable({ traits = {
            json_name = "dolbyVision81Settings",
        } }, { __index = M.DolbyVision81Settings }),
        Hdr10Settings = setmetatable({ traits = {
            json_name = "hdr10Settings",
        } }, { __index = M.Hdr10Settings }),
        Rec601Settings = setmetatable({ traits = {
            json_name = "rec601Settings",
        } }, { __index = M.Rec601Settings }),
        Rec709Settings = setmetatable({ traits = {
            json_name = "rec709Settings",
        } }, { __index = M.Rec709Settings }),
        Hlg2020Settings = setmetatable({ traits = {
            json_name = "hlg2020Settings",
        } }, { __index = M.Hlg2020Settings }),
    },
}

M.H265Deblocking = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.H265FilterSettings = {
    type = "structure",
    id = "H265FilterSettings",
    members = {
        TemporalFilterSettings = setmetatable({ traits = {
            json_name = "temporalFilterSettings",
        } }, { __index = M.TemporalFilterSettings }),
        BandwidthReductionFilterSettings = setmetatable({ traits = {
            json_name = "bandwidthReductionFilterSettings",
        } }, { __index = M.BandwidthReductionFilterSettings }),
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
    id = "H265Settings",
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
            type = "integer",
            traits = {
                json_name = "bitrate",
            },
        },
        BufSize = {
            type = "integer",
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
        ColorSpaceSettings = setmetatable({ traits = {
            json_name = "colorSpaceSettings",
        } }, { __index = M.H265ColorSpaceSettings }),
        FilterSettings = setmetatable({ traits = {
            json_name = "filterSettings",
        } }, { __index = M.H265FilterSettings }),
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
            type = "integer",
            traits = {
                json_name = "framerateDenominator",
                required = true,
            },
        },
        FramerateNumerator = {
            type = "integer",
            traits = {
                json_name = "framerateNumerator",
                required = true,
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
        Profile = {
            type = "string",
            traits = {
                json_name = "profile",
            },
        },
        QvbrQualityLevel = {
            type = "integer",
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
            type = "integer",
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
        TimecodeBurninSettings = setmetatable({ traits = {
            json_name = "timecodeBurninSettings",
        } }, { __index = M.TimecodeBurninSettings }),
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
        TreeblockSize = {
            type = "string",
            traits = {
                json_name = "treeblockSize",
            },
        },
        MinQp = {
            type = "integer",
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
            type = "integer",
            traits = {
                json_name = "gopNumBFrames",
            },
        },
        MinBitrate = {
            type = "integer",
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
    id = "Mpeg2FilterSettings",
    members = {
        TemporalFilterSettings = setmetatable({ traits = {
            json_name = "temporalFilterSettings",
        } }, { __index = M.TemporalFilterSettings }),
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
    id = "Mpeg2Settings",
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
        FilterSettings = setmetatable({ traits = {
            json_name = "filterSettings",
        } }, { __index = M.Mpeg2FilterSettings }),
        FixedAfd = {
            type = "string",
            traits = {
                json_name = "fixedAfd",
            },
        },
        FramerateDenominator = {
            type = "integer",
            traits = {
                json_name = "framerateDenominator",
                required = true,
            },
        },
        FramerateNumerator = {
            type = "integer",
            traits = {
                json_name = "framerateNumerator",
                required = true,
            },
        },
        GopClosedCadence = {
            type = "integer",
            traits = {
                json_name = "gopClosedCadence",
            },
        },
        GopNumBFrames = {
            type = "integer",
            traits = {
                json_name = "gopNumBFrames",
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
        TimecodeBurninSettings = setmetatable({ traits = {
            json_name = "timecodeBurninSettings",
        } }, { __index = M.TimecodeBurninSettings }),
    },
}

M.VideoCodecSettings = {
    type = "structure",
    id = "VideoCodecSettings",
    members = {
        FrameCaptureSettings = setmetatable({ traits = {
            json_name = "frameCaptureSettings",
        } }, { __index = M.FrameCaptureSettings }),
        H264Settings = setmetatable({ traits = {
            json_name = "h264Settings",
        } }, { __index = M.H264Settings }),
        H265Settings = setmetatable({ traits = {
            json_name = "h265Settings",
        } }, { __index = M.H265Settings }),
        Mpeg2Settings = setmetatable({ traits = {
            json_name = "mpeg2Settings",
        } }, { __index = M.Mpeg2Settings }),
        Av1Settings = setmetatable({ traits = {
            json_name = "av1Settings",
        } }, { __index = M.Av1Settings }),
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
    id = "VideoDescription",
    members = {
        CodecSettings = setmetatable({ traits = {
            json_name = "codecSettings",
        } }, { __index = M.VideoCodecSettings }),
        Height = {
            type = "integer",
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
            type = "integer",
            traits = {
                json_name = "sharpness",
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

M.AcceptHeader = {
    image_jpeg = "image/jpeg",
}

M.AcceptInputDeviceTransferInput = {
    type = "structure",
    id = "AcceptInputDeviceTransferInput",
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
    id = "AcceptInputDeviceTransferOutput",
}

M.BadGatewayException = {
    type = "structure",
    id = "BadGatewayException",
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

M.GatewayTimeoutException = {
    type = "structure",
    id = "GatewayTimeoutException",
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
        ValidationErrors = {
            type = "list",
            member = M.ValidationError,
            traits = {
                json_name = "validationErrors",
            },
        },
    },
}

M.AccountConfiguration = {
    type = "structure",
    id = "AccountConfiguration",
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
    id = "AnywhereSettings",
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
    id = "AvailBlanking",
    members = {
        AvailBlankingImage = setmetatable({ traits = {
            json_name = "availBlankingImage",
        } }, { __index = M.InputLocation }),
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
    id = "Esam",
    members = {
        AcquisitionPointId = {
            type = "string",
            traits = {
                json_name = "acquisitionPointId",
                required = true,
            },
        },
        AdAvailOffset = {
            type = "integer",
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
    id = "Scte35SpliceInsert",
    members = {
        AdAvailOffset = {
            type = "integer",
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
    id = "Scte35TimeSignalApos",
    members = {
        AdAvailOffset = {
            type = "integer",
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
    id = "AvailSettings",
    members = {
        Esam = setmetatable({ traits = {
            json_name = "esam",
        } }, { __index = M.Esam }),
        Scte35SpliceInsert = setmetatable({ traits = {
            json_name = "scte35SpliceInsert",
        } }, { __index = M.Scte35SpliceInsert }),
        Scte35TimeSignalApos = setmetatable({ traits = {
            json_name = "scte35TimeSignalApos",
        } }, { __index = M.Scte35TimeSignalApos }),
    },
}

M.Scte35SegmentationScope = {
    ALL_OUTPUT_GROUPS = "ALL_OUTPUT_GROUPS",
    SCTE35_ENABLED_OUTPUT_GROUPS = "SCTE35_ENABLED_OUTPUT_GROUPS",
}

M.AvailConfiguration = {
    type = "structure",
    id = "AvailConfiguration",
    members = {
        AvailSettings = setmetatable({ traits = {
            json_name = "availSettings",
        } }, { __index = M.AvailSettings }),
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
    id = "BatchDeleteInput",
    members = {
        ChannelIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "channelIds",
            },
        },
        InputIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "inputIds",
            },
        },
        InputSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "inputSecurityGroupIds",
            },
        },
        MultiplexIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "multiplexIds",
            },
        },
    },
}

M.BatchDeleteOutput = {
    type = "structure",
    id = "BatchDeleteOutput",
    members = {
        Failed = {
            type = "list",
            member = M.BatchFailedResultModel,
            traits = {
                json_name = "failed",
            },
        },
        Successful = {
            type = "list",
            member = M.BatchSuccessfulResultModel,
            traits = {
                json_name = "successful",
            },
        },
    },
}

M.BatchScheduleActionCreateRequest = {
    type = "structure",
    id = "BatchScheduleActionCreateRequest",
    members = {
        ScheduleActions = {
            type = "list",
            member = M.ScheduleAction,
            traits = {
                json_name = "scheduleActions",
                required = true,
            },
        },
    },
}

M.BatchScheduleActionCreateResult = {
    type = "structure",
    id = "BatchScheduleActionCreateResult",
    members = {
        ScheduleActions = {
            type = "list",
            member = M.ScheduleAction,
            traits = {
                json_name = "scheduleActions",
                required = true,
            },
        },
    },
}

M.BatchScheduleActionDeleteRequest = {
    type = "structure",
    id = "BatchScheduleActionDeleteRequest",
    members = {
        ActionNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "actionNames",
                required = true,
            },
        },
    },
}

M.BatchScheduleActionDeleteResult = {
    type = "structure",
    id = "BatchScheduleActionDeleteResult",
    members = {
        ScheduleActions = {
            type = "list",
            member = M.ScheduleAction,
            traits = {
                json_name = "scheduleActions",
                required = true,
            },
        },
    },
}

M.BatchStartInput = {
    type = "structure",
    id = "BatchStartInput",
    members = {
        ChannelIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "channelIds",
            },
        },
        MultiplexIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "multiplexIds",
            },
        },
    },
}

M.BatchStartOutput = {
    type = "structure",
    id = "BatchStartOutput",
    members = {
        Failed = {
            type = "list",
            member = M.BatchFailedResultModel,
            traits = {
                json_name = "failed",
            },
        },
        Successful = {
            type = "list",
            member = M.BatchSuccessfulResultModel,
            traits = {
                json_name = "successful",
            },
        },
    },
}

M.BatchStopInput = {
    type = "structure",
    id = "BatchStopInput",
    members = {
        ChannelIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "channelIds",
            },
        },
        MultiplexIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "multiplexIds",
            },
        },
    },
}

M.BatchStopOutput = {
    type = "structure",
    id = "BatchStopOutput",
    members = {
        Failed = {
            type = "list",
            member = M.BatchFailedResultModel,
            traits = {
                json_name = "failed",
            },
        },
        Successful = {
            type = "list",
            member = M.BatchSuccessfulResultModel,
            traits = {
                json_name = "successful",
            },
        },
    },
}

M.BatchUpdateScheduleInput = {
    type = "structure",
    id = "BatchUpdateScheduleInput",
    members = {
        ChannelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Creates = setmetatable({ traits = {
            json_name = "creates",
        } }, { __index = M.BatchScheduleActionCreateRequest }),
        Deletes = setmetatable({ traits = {
            json_name = "deletes",
        } }, { __index = M.BatchScheduleActionDeleteRequest }),
    },
}

M.BatchUpdateScheduleOutput = {
    type = "structure",
    id = "BatchUpdateScheduleOutput",
    members = {
        Creates = setmetatable({ traits = {
            json_name = "creates",
        } }, { __index = M.BatchScheduleActionCreateResult }),
        Deletes = setmetatable({ traits = {
            json_name = "deletes",
        } }, { __index = M.BatchScheduleActionDeleteResult }),
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
    id = "BlackoutSlate",
    members = {
        BlackoutSlateImage = setmetatable({ traits = {
            json_name = "blackoutSlateImage",
        } }, { __index = M.InputLocation }),
        NetworkEndBlackout = {
            type = "string",
            traits = {
                json_name = "networkEndBlackout",
            },
        },
        NetworkEndBlackoutImage = setmetatable({ traits = {
            json_name = "networkEndBlackoutImage",
        } }, { __index = M.InputLocation }),
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
    id = "CancelInputDeviceTransferInput",
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
    id = "CancelInputDeviceTransferOutput",
}

M.ColorCorrectionSettings = {
    type = "structure",
    id = "ColorCorrectionSettings",
    members = {
        GlobalColorCorrections = {
            type = "list",
            member = M.ColorCorrection,
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
    id = "FeatureActivations",
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
    id = "InputLossBehavior",
    members = {
        BlackFrameMsec = {
            type = "integer",
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
        InputLossImageSlate = setmetatable({ traits = {
            json_name = "inputLossImageSlate",
        } }, { __index = M.InputLocation }),
        InputLossImageType = {
            type = "string",
            traits = {
                json_name = "inputLossImageType",
            },
        },
        RepeatFrameMsec = {
            type = "integer",
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
    id = "DisabledLockingSettings",
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
    id = "EpochLockingSettings",
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
    id = "PipelineLockingSettings",
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
    id = "OutputLockingSettings",
    members = {
        EpochLockingSettings = setmetatable({ traits = {
            json_name = "epochLockingSettings",
        } }, { __index = M.EpochLockingSettings }),
        PipelineLockingSettings = setmetatable({ traits = {
            json_name = "pipelineLockingSettings",
        } }, { __index = M.PipelineLockingSettings }),
        DisabledLockingSettings = setmetatable({ traits = {
            json_name = "disabledLockingSettings",
        } }, { __index = M.DisabledLockingSettings }),
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
    id = "GlobalConfiguration",
    members = {
        InitialAudioGain = {
            type = "integer",
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
        InputLossBehavior = setmetatable({ traits = {
            json_name = "inputLossBehavior",
        } }, { __index = M.InputLossBehavior }),
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
        OutputLockingSettings = setmetatable({ traits = {
            json_name = "outputLockingSettings",
        } }, { __index = M.OutputLockingSettings }),
    },
}

M.MotionGraphicsInsertion = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.HtmlMotionGraphicsSettings = {
    type = "structure",
    id = "HtmlMotionGraphicsSettings",
}

M.MotionGraphicsSettings = {
    type = "structure",
    id = "MotionGraphicsSettings",
    members = {
        HtmlMotionGraphicsSettings = setmetatable({ traits = {
            json_name = "htmlMotionGraphicsSettings",
        } }, { __index = M.HtmlMotionGraphicsSettings }),
    },
}

M.MotionGraphicsConfiguration = {
    type = "structure",
    id = "MotionGraphicsConfiguration",
    members = {
        MotionGraphicsInsertion = {
            type = "string",
            traits = {
                json_name = "motionGraphicsInsertion",
            },
        },
        MotionGraphicsSettings = setmetatable({ traits = {
            json_name = "motionGraphicsSettings",
            required = true,
        } }, { __index = M.MotionGraphicsSettings }),
    },
}

M.NielsenPcmToId3TaggingState = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.NielsenConfiguration = {
    type = "structure",
    id = "NielsenConfiguration",
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
    id = "ThumbnailConfiguration",
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
    id = "TimecodeConfig",
    members = {
        Source = {
            type = "string",
            traits = {
                json_name = "source",
                required = true,
            },
        },
        SyncThreshold = {
            type = "integer",
            traits = {
                json_name = "syncThreshold",
            },
        },
    },
}

M.EncoderSettings = {
    type = "structure",
    id = "EncoderSettings",
    members = {
        AudioDescriptions = {
            type = "list",
            member = M.AudioDescription,
            traits = {
                json_name = "audioDescriptions",
                required = true,
            },
        },
        AvailBlanking = setmetatable({ traits = {
            json_name = "availBlanking",
        } }, { __index = M.AvailBlanking }),
        AvailConfiguration = setmetatable({ traits = {
            json_name = "availConfiguration",
        } }, { __index = M.AvailConfiguration }),
        BlackoutSlate = setmetatable({ traits = {
            json_name = "blackoutSlate",
        } }, { __index = M.BlackoutSlate }),
        CaptionDescriptions = {
            type = "list",
            member = M.CaptionDescription,
            traits = {
                json_name = "captionDescriptions",
            },
        },
        FeatureActivations = setmetatable({ traits = {
            json_name = "featureActivations",
        } }, { __index = M.FeatureActivations }),
        GlobalConfiguration = setmetatable({ traits = {
            json_name = "globalConfiguration",
        } }, { __index = M.GlobalConfiguration }),
        MotionGraphicsConfiguration = setmetatable({ traits = {
            json_name = "motionGraphicsConfiguration",
        } }, { __index = M.MotionGraphicsConfiguration }),
        NielsenConfiguration = setmetatable({ traits = {
            json_name = "nielsenConfiguration",
        } }, { __index = M.NielsenConfiguration }),
        OutputGroups = {
            type = "list",
            member = M.OutputGroup,
            traits = {
                json_name = "outputGroups",
                required = true,
            },
        },
        TimecodeConfig = setmetatable({ traits = {
            json_name = "timecodeConfig",
            required = true,
        } }, { __index = M.TimecodeConfig }),
        VideoDescriptions = {
            type = "list",
            member = M.VideoDescription,
            traits = {
                json_name = "videoDescriptions",
                required = true,
            },
        },
        ThumbnailConfiguration = setmetatable({ traits = {
            json_name = "thumbnailConfiguration",
        } }, { __index = M.ThumbnailConfiguration }),
        ColorCorrectionSettings = setmetatable({ traits = {
            json_name = "colorCorrectionSettings",
        } }, { __index = M.ColorCorrectionSettings }),
    },
}

M.Channel = {
    type = "structure",
    id = "Channel",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CdiInputSpecification = setmetatable({ traits = {
            json_name = "cdiInputSpecification",
        } }, { __index = M.CdiInputSpecification }),
        ChannelClass = {
            type = "string",
            traits = {
                json_name = "channelClass",
            },
        },
        Destinations = {
            type = "list",
            member = M.OutputDestination,
            traits = {
                json_name = "destinations",
            },
        },
        EgressEndpoints = {
            type = "list",
            member = M.ChannelEgressEndpoint,
            traits = {
                json_name = "egressEndpoints",
            },
        },
        EncoderSettings = setmetatable({ traits = {
            json_name = "encoderSettings",
        } }, { __index = M.EncoderSettings }),
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        InputAttachments = {
            type = "list",
            member = M.InputAttachment,
            traits = {
                json_name = "inputAttachments",
            },
        },
        InputSpecification = setmetatable({ traits = {
            json_name = "inputSpecification",
        } }, { __index = M.InputSpecification }),
        LogLevel = {
            type = "string",
            traits = {
                json_name = "logLevel",
            },
        },
        Maintenance = setmetatable({ traits = {
            json_name = "maintenance",
        } }, { __index = M.MaintenanceStatus }),
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        PipelineDetails = {
            type = "list",
            member = M.PipelineDetail,
            traits = {
                json_name = "pipelineDetails",
            },
        },
        PipelinesRunningCount = {
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        Vpc = setmetatable({ traits = {
            json_name = "vpc",
        } }, { __index = M.VpcOutputSettingsDescription }),
        AnywhereSettings = setmetatable({ traits = {
            json_name = "anywhereSettings",
        } }, { __index = M.DescribeAnywhereSettings }),
        ChannelEngineVersion = setmetatable({ traits = {
            json_name = "channelEngineVersion",
        } }, { __index = M.ChannelEngineVersionResponse }),
        LinkedChannelSettings = setmetatable({ traits = {
            json_name = "linkedChannelSettings",
        } }, { __index = M.DescribeLinkedChannelSettings }),
        ChannelSecurityGroups = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "channelSecurityGroups",
            },
        },
        InferenceSettings = setmetatable({ traits = {
            json_name = "inferenceSettings",
        } }, { __index = M.DescribeInferenceSettings }),
    },
}

M.ChannelEngineVersionRequest = {
    type = "structure",
    id = "ChannelEngineVersionRequest",
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
    id = "ClaimDeviceInput",
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
    id = "ClaimDeviceOutput",
}

M.ClusterNetworkSettingsCreateRequest = {
    type = "structure",
    id = "ClusterNetworkSettingsCreateRequest",
    members = {
        DefaultRoute = {
            type = "string",
            traits = {
                json_name = "defaultRoute",
            },
        },
        InterfaceMappings = {
            type = "list",
            member = M.InterfaceMappingCreateRequest,
            traits = {
                json_name = "interfaceMappings",
            },
        },
    },
}

M.ClusterNetworkSettingsUpdateRequest = {
    type = "structure",
    id = "ClusterNetworkSettingsUpdateRequest",
    members = {
        DefaultRoute = {
            type = "string",
            traits = {
                json_name = "defaultRoute",
            },
        },
        InterfaceMappings = {
            type = "list",
            member = M.InterfaceMappingUpdateRequest,
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
    id = "InferenceSettings",
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
    id = "FollowerChannelSettings",
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
    id = "PrimaryChannelSettings",
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
    id = "LinkedChannelSettings",
    members = {
        FollowerChannelSettings = setmetatable({ traits = {
            json_name = "followerChannelSettings",
        } }, { __index = M.FollowerChannelSettings }),
        PrimaryChannelSettings = setmetatable({ traits = {
            json_name = "primaryChannelSettings",
        } }, { __index = M.PrimaryChannelSettings }),
    },
}

M.MaintenanceCreateSettings = {
    type = "structure",
    id = "MaintenanceCreateSettings",
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
    id = "VpcOutputSettings",
    members = {
        PublicAddressAllocationIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "publicAddressAllocationIds",
            },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "securityGroupIds",
            },
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "subnetIds",
                required = true,
            },
        },
    },
}

M.CreateChannelInput = {
    type = "structure",
    id = "CreateChannelInput",
    members = {
        CdiInputSpecification = setmetatable({ traits = {
            json_name = "cdiInputSpecification",
        } }, { __index = M.CdiInputSpecification }),
        ChannelClass = {
            type = "string",
            traits = {
                json_name = "channelClass",
            },
        },
        Destinations = {
            type = "list",
            member = M.OutputDestination,
            traits = {
                json_name = "destinations",
            },
        },
        EncoderSettings = setmetatable({ traits = {
            json_name = "encoderSettings",
        } }, { __index = M.EncoderSettings }),
        InputAttachments = {
            type = "list",
            member = M.InputAttachment,
            traits = {
                json_name = "inputAttachments",
            },
        },
        InputSpecification = setmetatable({ traits = {
            json_name = "inputSpecification",
        } }, { __index = M.InputSpecification }),
        LogLevel = {
            type = "string",
            traits = {
                json_name = "logLevel",
            },
        },
        Maintenance = setmetatable({ traits = {
            json_name = "maintenance",
        } }, { __index = M.MaintenanceCreateSettings }),
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        RequestId = {
            type = "string",
            traits = {
                idempotency_token = true,
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        Vpc = setmetatable({ traits = {
            json_name = "vpc",
        } }, { __index = M.VpcOutputSettings }),
        AnywhereSettings = setmetatable({ traits = {
            json_name = "anywhereSettings",
        } }, { __index = M.AnywhereSettings }),
        ChannelEngineVersion = setmetatable({ traits = {
            json_name = "channelEngineVersion",
        } }, { __index = M.ChannelEngineVersionRequest }),
        DryRun = {
            type = "boolean",
            traits = {
                json_name = "dryRun",
            },
        },
        LinkedChannelSettings = setmetatable({ traits = {
            json_name = "linkedChannelSettings",
        } }, { __index = M.LinkedChannelSettings }),
        ChannelSecurityGroups = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "channelSecurityGroups",
            },
        },
        InferenceSettings = setmetatable({ traits = {
            json_name = "inferenceSettings",
        } }, { __index = M.InferenceSettings }),
    },
}

M.CreateChannelOutput = {
    type = "structure",
    id = "CreateChannelOutput",
    members = {
        Channel = setmetatable({ traits = {
            json_name = "channel",
        } }, { __index = M.Channel }),
    },
}

M.CreateChannelPlacementGroupInput = {
    type = "structure",
    id = "CreateChannelPlacementGroupInput",
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
            member = { type = "string" },
            traits = {
                json_name = "nodes",
            },
        },
        RequestId = {
            type = "string",
            traits = {
                idempotency_token = true,
                json_name = "requestId",
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

M.CreateChannelPlacementGroupOutput = {
    type = "structure",
    id = "CreateChannelPlacementGroupOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Channels = {
            type = "list",
            member = { type = "string" },
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
            member = { type = "string" },
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
    id = "CreateCloudWatchAlarmTemplateInput",
    members = {
        ComparisonOperator = {
            type = "string",
            traits = {
                json_name = "comparisonOperator",
                required = true,
            },
        },
        DatapointsToAlarm = {
            type = "integer",
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
            type = "integer",
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
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
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
            type = "double",
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
                idempotency_token = true,
                json_name = "requestId",
            },
        },
    },
}

M.CreateCloudWatchAlarmTemplateOutput = {
    type = "structure",
    id = "CreateCloudWatchAlarmTemplateOutput",
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
                timestamp_format = "date-time",
            },
        },
        DatapointsToAlarm = {
            type = "integer",
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
            type = "integer",
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
                timestamp_format = "date-time",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Period = {
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
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
            type = "double",
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
    id = "CreateCloudWatchAlarmTemplateGroupInput",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        RequestId = {
            type = "string",
            traits = {
                idempotency_token = true,
                json_name = "requestId",
            },
        },
    },
}

M.CreateCloudWatchAlarmTemplateGroupOutput = {
    type = "structure",
    id = "CreateCloudWatchAlarmTemplateGroupOutput",
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
                timestamp_format = "date-time",
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
                timestamp_format = "date-time",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateClusterInput = {
    type = "structure",
    id = "CreateClusterInput",
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
        NetworkSettings = setmetatable({ traits = {
            json_name = "networkSettings",
        } }, { __index = M.ClusterNetworkSettingsCreateRequest }),
        RequestId = {
            type = "string",
            traits = {
                idempotency_token = true,
                json_name = "requestId",
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

M.CreateClusterOutput = {
    type = "structure",
    id = "CreateClusterOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        ChannelIds = {
            type = "list",
            member = { type = "string" },
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
        NetworkSettings = setmetatable({ traits = {
            json_name = "networkSettings",
        } }, { __index = M.ClusterNetworkSettings }),
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
    id = "CreateEventBridgeRuleTemplateInput",
    members = {
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        EventTargets = {
            type = "list",
            member = M.EventBridgeRuleTemplateTarget,
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        RequestId = {
            type = "string",
            traits = {
                idempotency_token = true,
                json_name = "requestId",
            },
        },
    },
}

M.CreateEventBridgeRuleTemplateOutput = {
    type = "structure",
    id = "CreateEventBridgeRuleTemplateOutput",
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
                timestamp_format = "date-time",
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
            member = M.EventBridgeRuleTemplateTarget,
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
                timestamp_format = "date-time",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateEventBridgeRuleTemplateGroupInput = {
    type = "structure",
    id = "CreateEventBridgeRuleTemplateGroupInput",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        RequestId = {
            type = "string",
            traits = {
                idempotency_token = true,
                json_name = "requestId",
            },
        },
    },
}

M.CreateEventBridgeRuleTemplateGroupOutput = {
    type = "structure",
    id = "CreateEventBridgeRuleTemplateGroupOutput",
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
                timestamp_format = "date-time",
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
                timestamp_format = "date-time",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.MulticastSettingsCreateRequest = {
    type = "structure",
    id = "MulticastSettingsCreateRequest",
    members = {
        Sources = {
            type = "list",
            member = M.MulticastSourceCreateRequest,
            traits = {
                json_name = "sources",
            },
        },
    },
}

M.RouterSettings = {
    type = "structure",
    id = "RouterSettings",
    members = {
        Destinations = {
            type = "list",
            member = M.RouterDestinationSettings,
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
    id = "SrtListenerDecryptionRequest",
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
    id = "SrtListenerSettingsRequest",
    members = {
        Decryption = setmetatable({ traits = {
            json_name = "decryption",
            required = true,
        } }, { __index = M.SrtListenerDecryptionRequest }),
        MinimumLatency = {
            type = "integer",
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
    id = "SrtSettingsRequest",
    members = {
        SrtCallerSources = {
            type = "list",
            member = M.SrtCallerSourceRequest,
            traits = {
                json_name = "srtCallerSources",
            },
        },
        SrtListenerSettings = setmetatable({ traits = {
            json_name = "srtListenerSettings",
        } }, { __index = M.SrtListenerSettingsRequest }),
    },
}

M.InputVpcRequest = {
    type = "structure",
    id = "InputVpcRequest",
    members = {
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "securityGroupIds",
            },
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "subnetIds",
                required = true,
            },
        },
    },
}

M.CreateInputInput = {
    type = "structure",
    id = "CreateInputInput",
    members = {
        Destinations = {
            type = "list",
            member = M.InputDestinationRequest,
            traits = {
                json_name = "destinations",
            },
        },
        InputDevices = {
            type = "list",
            member = M.InputDeviceSettings,
            traits = {
                json_name = "inputDevices",
            },
        },
        InputSecurityGroups = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "inputSecurityGroups",
            },
        },
        MediaConnectFlows = {
            type = "list",
            member = M.MediaConnectFlowRequest,
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
                idempotency_token = true,
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
            member = M.InputSourceRequest,
            traits = {
                json_name = "sources",
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
        Type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
        Vpc = setmetatable({ traits = {
            json_name = "vpc",
        } }, { __index = M.InputVpcRequest }),
        SrtSettings = setmetatable({ traits = {
            json_name = "srtSettings",
        } }, { __index = M.SrtSettingsRequest }),
        InputNetworkLocation = {
            type = "string",
            traits = {
                json_name = "inputNetworkLocation",
            },
        },
        MulticastSettings = setmetatable({ traits = {
            json_name = "multicastSettings",
        } }, { __index = M.MulticastSettingsCreateRequest }),
        Smpte2110ReceiverGroupSettings = setmetatable({ traits = {
            json_name = "smpte2110ReceiverGroupSettings",
        } }, { __index = M.Smpte2110ReceiverGroupSettings }),
        SdiSources = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "sdiSources",
            },
        },
        RouterSettings = setmetatable({ traits = {
            json_name = "routerSettings",
        } }, { __index = M.RouterSettings }),
    },
}

M.CreateInputOutput = {
    type = "structure",
    id = "CreateInputOutput",
    members = {
        Input = setmetatable({ traits = {
            json_name = "input",
        } }, { __index = M.Input }),
    },
}

M.CreateInputSecurityGroupInput = {
    type = "structure",
    id = "CreateInputSecurityGroupInput",
    members = {
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        WhitelistRules = {
            type = "list",
            member = M.InputWhitelistRuleCidr,
            traits = {
                json_name = "whitelistRules",
            },
        },
    },
}

M.CreateInputSecurityGroupOutput = {
    type = "structure",
    id = "CreateInputSecurityGroupOutput",
    members = {
        SecurityGroup = setmetatable({ traits = {
            json_name = "securityGroup",
        } }, { __index = M.InputSecurityGroup }),
    },
}

M.MultiplexSettings = {
    type = "structure",
    id = "MultiplexSettings",
    members = {
        MaximumVideoBufferDelayMilliseconds = {
            type = "integer",
            traits = {
                json_name = "maximumVideoBufferDelayMilliseconds",
            },
        },
        TransportStreamBitrate = {
            type = "integer",
            traits = {
                json_name = "transportStreamBitrate",
                required = true,
            },
        },
        TransportStreamId = {
            type = "integer",
            traits = {
                json_name = "transportStreamId",
                required = true,
            },
        },
        TransportStreamReservedBitrate = {
            type = "integer",
            traits = {
                json_name = "transportStreamReservedBitrate",
            },
        },
    },
}

M.CreateMultiplexInput = {
    type = "structure",
    id = "CreateMultiplexInput",
    members = {
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "availabilityZones",
                required = true,
            },
        },
        MultiplexSettings = setmetatable({ traits = {
            json_name = "multiplexSettings",
            required = true,
        } }, { __index = M.MultiplexSettings }),
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
                idempotency_token = true,
                json_name = "requestId",
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

M.Multiplex = {
    type = "structure",
    id = "Multiplex",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "availabilityZones",
            },
        },
        Destinations = {
            type = "list",
            member = M.MultiplexOutputDestination,
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
        MultiplexSettings = setmetatable({ traits = {
            json_name = "multiplexSettings",
        } }, { __index = M.MultiplexSettings }),
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        PipelinesRunningCount = {
            type = "integer",
            traits = {
                json_name = "pipelinesRunningCount",
            },
        },
        ProgramCount = {
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateMultiplexOutput = {
    type = "structure",
    id = "CreateMultiplexOutput",
    members = {
        Multiplex = setmetatable({ traits = {
            json_name = "multiplex",
        } }, { __index = M.Multiplex }),
    },
}

M.PreferredChannelPipeline = {
    CURRENTLY_ACTIVE = "CURRENTLY_ACTIVE",
    PIPELINE_0 = "PIPELINE_0",
    PIPELINE_1 = "PIPELINE_1",
}

M.MultiplexProgramServiceDescriptor = {
    type = "structure",
    id = "MultiplexProgramServiceDescriptor",
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
    id = "MultiplexStatmuxVideoSettings",
    members = {
        MaximumBitrate = {
            type = "integer",
            traits = {
                json_name = "maximumBitrate",
            },
        },
        MinimumBitrate = {
            type = "integer",
            traits = {
                json_name = "minimumBitrate",
            },
        },
        Priority = {
            type = "integer",
            traits = {
                json_name = "priority",
            },
        },
    },
}

M.MultiplexVideoSettings = {
    type = "structure",
    id = "MultiplexVideoSettings",
    members = {
        ConstantBitrate = {
            type = "integer",
            traits = {
                json_name = "constantBitrate",
            },
        },
        StatmuxSettings = setmetatable({ traits = {
            json_name = "statmuxSettings",
        } }, { __index = M.MultiplexStatmuxVideoSettings }),
    },
}

M.MultiplexProgramSettings = {
    type = "structure",
    id = "MultiplexProgramSettings",
    members = {
        PreferredChannelPipeline = {
            type = "string",
            traits = {
                json_name = "preferredChannelPipeline",
            },
        },
        ProgramNumber = {
            type = "integer",
            traits = {
                json_name = "programNumber",
                required = true,
            },
        },
        ServiceDescriptor = setmetatable({ traits = {
            json_name = "serviceDescriptor",
        } }, { __index = M.MultiplexProgramServiceDescriptor }),
        VideoSettings = setmetatable({ traits = {
            json_name = "videoSettings",
        } }, { __index = M.MultiplexVideoSettings }),
    },
}

M.CreateMultiplexProgramInput = {
    type = "structure",
    id = "CreateMultiplexProgramInput",
    members = {
        MultiplexId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MultiplexProgramSettings = setmetatable({ traits = {
            json_name = "multiplexProgramSettings",
            required = true,
        } }, { __index = M.MultiplexProgramSettings }),
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
                idempotency_token = true,
                json_name = "requestId",
                required = true,
            },
        },
    },
}

M.MultiplexProgramPacketIdentifiersMap = {
    type = "structure",
    id = "MultiplexProgramPacketIdentifiersMap",
    members = {
        AudioPids = {
            type = "list",
            member = { type = "integer" },
            traits = {
                json_name = "audioPids",
            },
        },
        DvbSubPids = {
            type = "list",
            member = { type = "integer" },
            traits = {
                json_name = "dvbSubPids",
            },
        },
        DvbTeletextPid = {
            type = "integer",
            traits = {
                json_name = "dvbTeletextPid",
            },
        },
        EtvPlatformPid = {
            type = "integer",
            traits = {
                json_name = "etvPlatformPid",
            },
        },
        EtvSignalPid = {
            type = "integer",
            traits = {
                json_name = "etvSignalPid",
            },
        },
        KlvDataPids = {
            type = "list",
            member = { type = "integer" },
            traits = {
                json_name = "klvDataPids",
            },
        },
        PcrPid = {
            type = "integer",
            traits = {
                json_name = "pcrPid",
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
        Scte27Pids = {
            type = "list",
            member = { type = "integer" },
            traits = {
                json_name = "scte27Pids",
            },
        },
        Scte35Pid = {
            type = "integer",
            traits = {
                json_name = "scte35Pid",
            },
        },
        TimedMetadataPid = {
            type = "integer",
            traits = {
                json_name = "timedMetadataPid",
            },
        },
        VideoPid = {
            type = "integer",
            traits = {
                json_name = "videoPid",
            },
        },
        AribCaptionsPid = {
            type = "integer",
            traits = {
                json_name = "aribCaptionsPid",
            },
        },
        DvbTeletextPids = {
            type = "list",
            member = { type = "integer" },
            traits = {
                json_name = "dvbTeletextPids",
            },
        },
        EcmPid = {
            type = "integer",
            traits = {
                json_name = "ecmPid",
            },
        },
        Smpte2038Pid = {
            type = "integer",
            traits = {
                json_name = "smpte2038Pid",
            },
        },
    },
}

M.MultiplexProgram = {
    type = "structure",
    id = "MultiplexProgram",
    members = {
        ChannelId = {
            type = "string",
            traits = {
                json_name = "channelId",
            },
        },
        MultiplexProgramSettings = setmetatable({ traits = {
            json_name = "multiplexProgramSettings",
        } }, { __index = M.MultiplexProgramSettings }),
        PacketIdentifiersMap = setmetatable({ traits = {
            json_name = "packetIdentifiersMap",
        } }, { __index = M.MultiplexProgramPacketIdentifiersMap }),
        PipelineDetails = {
            type = "list",
            member = M.MultiplexProgramPipelineDetail,
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
    id = "CreateMultiplexProgramOutput",
    members = {
        MultiplexProgram = setmetatable({ traits = {
            json_name = "multiplexProgram",
        } }, { __index = M.MultiplexProgram }),
    },
}

M.CreateNetworkInput = {
    type = "structure",
    id = "CreateNetworkInput",
    members = {
        IpPools = {
            type = "list",
            member = M.IpPoolCreateRequest,
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
                idempotency_token = true,
                json_name = "requestId",
            },
        },
        Routes = {
            type = "list",
            member = M.RouteCreateRequest,
            traits = {
                json_name = "routes",
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

M.CreateNetworkOutput = {
    type = "structure",
    id = "CreateNetworkOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        AssociatedClusterIds = {
            type = "list",
            member = { type = "string" },
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
            member = M.IpPool,
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
            member = M.Route,
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
    id = "CreateNodeInput",
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
            member = M.NodeInterfaceMappingCreateRequest,
            traits = {
                json_name = "nodeInterfaceMappings",
            },
        },
        RequestId = {
            type = "string",
            traits = {
                idempotency_token = true,
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateNodeOutput = {
    type = "structure",
    id = "CreateNodeOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        ChannelPlacementGroups = {
            type = "list",
            member = { type = "string" },
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
            member = M.NodeInterfaceMapping,
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
            member = M.SdiSourceMapping,
            traits = {
                json_name = "sdiSourceMappings",
            },
        },
    },
}

M.CreateNodeRegistrationScriptInput = {
    type = "structure",
    id = "CreateNodeRegistrationScriptInput",
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
            member = M.NodeInterfaceMapping,
            traits = {
                json_name = "nodeInterfaceMappings",
            },
        },
        RequestId = {
            type = "string",
            traits = {
                idempotency_token = true,
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
    id = "CreateNodeRegistrationScriptOutput",
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
    id = "CreatePartnerInputInput",
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
                idempotency_token = true,
                json_name = "requestId",
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

M.CreatePartnerInputOutput = {
    type = "structure",
    id = "CreatePartnerInputOutput",
    members = {
        Input = setmetatable({ traits = {
            json_name = "input",
        } }, { __index = M.Input }),
    },
}

M.CreateSdiSourceInput = {
    type = "structure",
    id = "CreateSdiSourceInput",
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
                idempotency_token = true,
                json_name = "requestId",
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
    id = "SdiSource",
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
            member = { type = "string" },
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
    id = "CreateSdiSourceOutput",
    members = {
        SdiSource = setmetatable({ traits = {
            json_name = "sdiSource",
        } }, { __index = M.SdiSource }),
    },
}

M.CreateSignalMapInput = {
    type = "structure",
    id = "CreateSignalMapInput",
    members = {
        CloudWatchAlarmTemplateGroupIdentifiers = {
            type = "list",
            member = { type = "string" },
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
            member = { type = "string" },
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        RequestId = {
            type = "string",
            traits = {
                idempotency_token = true,
                json_name = "requestId",
            },
        },
    },
}

M.MediaResource = {
    type = "structure",
    id = "MediaResource",
    members = {
        Destinations = {
            type = "list",
            member = M.MediaResourceNeighbor,
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
            member = M.MediaResourceNeighbor,
            traits = {
                json_name = "sources",
            },
        },
    },
}

M.SuccessfulMonitorDeployment = {
    type = "structure",
    id = "SuccessfulMonitorDeployment",
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
    id = "MonitorDeployment",
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
    id = "CreateSignalMapOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CloudWatchAlarmTemplateGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "cloudWatchAlarmTemplateGroupIds",
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
                timestamp_format = "date-time",
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
            member = { type = "string" },
            traits = {
                json_name = "eventBridgeRuleTemplateGroupIds",
            },
        },
        FailedMediaResourceMap = {
            type = "map",
            key = { type = "string" },
            value = M.MediaResource,
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
                timestamp_format = "date-time",
            },
        },
        LastSuccessfulMonitorDeployment = setmetatable({ traits = {
            json_name = "lastSuccessfulMonitorDeployment",
        } }, { __index = M.SuccessfulMonitorDeployment }),
        MediaResourceMap = {
            type = "map",
            key = { type = "string" },
            value = M.MediaResource,
            traits = {
                json_name = "mediaResourceMap",
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                json_name = "modifiedAt",
                timestamp_format = "date-time",
            },
        },
        MonitorChangesPendingDeployment = {
            type = "boolean",
            traits = {
                json_name = "monitorChangesPendingDeployment",
            },
        },
        MonitorDeployment = setmetatable({ traits = {
            json_name = "monitorDeployment",
        } }, { __index = M.MonitorDeployment }),
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateTagsInput = {
    type = "structure",
    id = "CreateTagsInput",
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
            },
        },
    },
}

M.CreateTagsOutput = {
    type = "structure",
    id = "CreateTagsOutput",
}

M.DeleteChannelInput = {
    type = "structure",
    id = "DeleteChannelInput",
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
    id = "DeleteChannelOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CdiInputSpecification = setmetatable({ traits = {
            json_name = "cdiInputSpecification",
        } }, { __index = M.CdiInputSpecification }),
        ChannelClass = {
            type = "string",
            traits = {
                json_name = "channelClass",
            },
        },
        Destinations = {
            type = "list",
            member = M.OutputDestination,
            traits = {
                json_name = "destinations",
            },
        },
        EgressEndpoints = {
            type = "list",
            member = M.ChannelEgressEndpoint,
            traits = {
                json_name = "egressEndpoints",
            },
        },
        EncoderSettings = setmetatable({ traits = {
            json_name = "encoderSettings",
        } }, { __index = M.EncoderSettings }),
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        InputAttachments = {
            type = "list",
            member = M.InputAttachment,
            traits = {
                json_name = "inputAttachments",
            },
        },
        InputSpecification = setmetatable({ traits = {
            json_name = "inputSpecification",
        } }, { __index = M.InputSpecification }),
        LogLevel = {
            type = "string",
            traits = {
                json_name = "logLevel",
            },
        },
        Maintenance = setmetatable({ traits = {
            json_name = "maintenance",
        } }, { __index = M.MaintenanceStatus }),
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        PipelineDetails = {
            type = "list",
            member = M.PipelineDetail,
            traits = {
                json_name = "pipelineDetails",
            },
        },
        PipelinesRunningCount = {
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        Vpc = setmetatable({ traits = {
            json_name = "vpc",
        } }, { __index = M.VpcOutputSettingsDescription }),
        AnywhereSettings = setmetatable({ traits = {
            json_name = "anywhereSettings",
        } }, { __index = M.DescribeAnywhereSettings }),
        ChannelEngineVersion = setmetatable({ traits = {
            json_name = "channelEngineVersion",
        } }, { __index = M.ChannelEngineVersionResponse }),
        LinkedChannelSettings = setmetatable({ traits = {
            json_name = "linkedChannelSettings",
        } }, { __index = M.DescribeLinkedChannelSettings }),
        ChannelSecurityGroups = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "channelSecurityGroups",
            },
        },
        InferenceSettings = setmetatable({ traits = {
            json_name = "inferenceSettings",
        } }, { __index = M.DescribeInferenceSettings }),
    },
}

M.DeleteChannelPlacementGroupInput = {
    type = "structure",
    id = "DeleteChannelPlacementGroupInput",
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
    id = "DeleteChannelPlacementGroupOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Channels = {
            type = "list",
            member = { type = "string" },
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
            member = { type = "string" },
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
    id = "DeleteCloudWatchAlarmTemplateInput",
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
    id = "DeleteCloudWatchAlarmTemplateOutput",
}

M.DeleteCloudWatchAlarmTemplateGroupInput = {
    type = "structure",
    id = "DeleteCloudWatchAlarmTemplateGroupInput",
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
    id = "DeleteCloudWatchAlarmTemplateGroupOutput",
}

M.DeleteClusterInput = {
    type = "structure",
    id = "DeleteClusterInput",
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
    id = "DeleteClusterOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        ChannelIds = {
            type = "list",
            member = { type = "string" },
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
        NetworkSettings = setmetatable({ traits = {
            json_name = "networkSettings",
        } }, { __index = M.ClusterNetworkSettings }),
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
    id = "DeleteEventBridgeRuleTemplateInput",
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
    id = "DeleteEventBridgeRuleTemplateOutput",
}

M.DeleteEventBridgeRuleTemplateGroupInput = {
    type = "structure",
    id = "DeleteEventBridgeRuleTemplateGroupInput",
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
    id = "DeleteEventBridgeRuleTemplateGroupOutput",
}

M.DeleteInputInput = {
    type = "structure",
    id = "DeleteInputInput",
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
    id = "DeleteInputOutput",
}

M.DeleteInputSecurityGroupInput = {
    type = "structure",
    id = "DeleteInputSecurityGroupInput",
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
    id = "DeleteInputSecurityGroupOutput",
}

M.DeleteMultiplexInput = {
    type = "structure",
    id = "DeleteMultiplexInput",
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
    id = "DeleteMultiplexOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "availabilityZones",
            },
        },
        Destinations = {
            type = "list",
            member = M.MultiplexOutputDestination,
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
        MultiplexSettings = setmetatable({ traits = {
            json_name = "multiplexSettings",
        } }, { __index = M.MultiplexSettings }),
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        PipelinesRunningCount = {
            type = "integer",
            traits = {
                json_name = "pipelinesRunningCount",
            },
        },
        ProgramCount = {
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.DeleteMultiplexProgramInput = {
    type = "structure",
    id = "DeleteMultiplexProgramInput",
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
    id = "DeleteMultiplexProgramOutput",
    members = {
        ChannelId = {
            type = "string",
            traits = {
                json_name = "channelId",
            },
        },
        MultiplexProgramSettings = setmetatable({ traits = {
            json_name = "multiplexProgramSettings",
        } }, { __index = M.MultiplexProgramSettings }),
        PacketIdentifiersMap = setmetatable({ traits = {
            json_name = "packetIdentifiersMap",
        } }, { __index = M.MultiplexProgramPacketIdentifiersMap }),
        PipelineDetails = {
            type = "list",
            member = M.MultiplexProgramPipelineDetail,
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
    id = "DeleteNetworkInput",
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
    id = "DeleteNetworkOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        AssociatedClusterIds = {
            type = "list",
            member = { type = "string" },
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
            member = M.IpPool,
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
            member = M.Route,
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
    id = "DeleteNodeInput",
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
    id = "DeleteNodeOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        ChannelPlacementGroups = {
            type = "list",
            member = { type = "string" },
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
            member = M.NodeInterfaceMapping,
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
            member = M.SdiSourceMapping,
            traits = {
                json_name = "sdiSourceMappings",
            },
        },
    },
}

M.DeleteReservationInput = {
    type = "structure",
    id = "DeleteReservationInput",
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
    id = "DeleteReservationOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Count = {
            type = "integer",
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
            type = "integer",
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
            type = "double",
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
        RenewalSettings = setmetatable({ traits = {
            json_name = "renewalSettings",
        } }, { __index = M.RenewalSettings }),
        ReservationId = {
            type = "string",
            traits = {
                json_name = "reservationId",
            },
        },
        ResourceSpecification = setmetatable({ traits = {
            json_name = "resourceSpecification",
        } }, { __index = M.ReservationResourceSpecification }),
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        UsagePrice = {
            type = "double",
            traits = {
                json_name = "usagePrice",
            },
        },
    },
}

M.DeleteScheduleInput = {
    type = "structure",
    id = "DeleteScheduleInput",
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
    id = "DeleteScheduleOutput",
}

M.DeleteSdiSourceInput = {
    type = "structure",
    id = "DeleteSdiSourceInput",
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
    id = "DeleteSdiSourceOutput",
    members = {
        SdiSource = setmetatable({ traits = {
            json_name = "sdiSource",
        } }, { __index = M.SdiSource }),
    },
}

M.DeleteSignalMapInput = {
    type = "structure",
    id = "DeleteSignalMapInput",
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
    id = "DeleteSignalMapOutput",
}

M.DeleteTagsInput = {
    type = "structure",
    id = "DeleteTagsInput",
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

M.DeleteTagsOutput = {
    type = "structure",
    id = "DeleteTagsOutput",
}

M.DescribeAccountConfigurationInput = {
    type = "structure",
    id = "DescribeAccountConfigurationInput",
}

M.DescribeAccountConfigurationOutput = {
    type = "structure",
    id = "DescribeAccountConfigurationOutput",
    members = {
        AccountConfiguration = setmetatable({ traits = {
            json_name = "accountConfiguration",
        } }, { __index = M.AccountConfiguration }),
    },
}

M.DescribeChannelInput = {
    type = "structure",
    id = "DescribeChannelInput",
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
    id = "DescribeChannelOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CdiInputSpecification = setmetatable({ traits = {
            json_name = "cdiInputSpecification",
        } }, { __index = M.CdiInputSpecification }),
        ChannelClass = {
            type = "string",
            traits = {
                json_name = "channelClass",
            },
        },
        Destinations = {
            type = "list",
            member = M.OutputDestination,
            traits = {
                json_name = "destinations",
            },
        },
        EgressEndpoints = {
            type = "list",
            member = M.ChannelEgressEndpoint,
            traits = {
                json_name = "egressEndpoints",
            },
        },
        EncoderSettings = setmetatable({ traits = {
            json_name = "encoderSettings",
        } }, { __index = M.EncoderSettings }),
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        InputAttachments = {
            type = "list",
            member = M.InputAttachment,
            traits = {
                json_name = "inputAttachments",
            },
        },
        InputSpecification = setmetatable({ traits = {
            json_name = "inputSpecification",
        } }, { __index = M.InputSpecification }),
        LogLevel = {
            type = "string",
            traits = {
                json_name = "logLevel",
            },
        },
        Maintenance = setmetatable({ traits = {
            json_name = "maintenance",
        } }, { __index = M.MaintenanceStatus }),
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        PipelineDetails = {
            type = "list",
            member = M.PipelineDetail,
            traits = {
                json_name = "pipelineDetails",
            },
        },
        PipelinesRunningCount = {
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        Vpc = setmetatable({ traits = {
            json_name = "vpc",
        } }, { __index = M.VpcOutputSettingsDescription }),
        AnywhereSettings = setmetatable({ traits = {
            json_name = "anywhereSettings",
        } }, { __index = M.DescribeAnywhereSettings }),
        ChannelEngineVersion = setmetatable({ traits = {
            json_name = "channelEngineVersion",
        } }, { __index = M.ChannelEngineVersionResponse }),
        LinkedChannelSettings = setmetatable({ traits = {
            json_name = "linkedChannelSettings",
        } }, { __index = M.DescribeLinkedChannelSettings }),
        ChannelSecurityGroups = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "channelSecurityGroups",
            },
        },
        InferenceSettings = setmetatable({ traits = {
            json_name = "inferenceSettings",
        } }, { __index = M.DescribeInferenceSettings }),
    },
}

M.DescribeChannelPlacementGroupInput = {
    type = "structure",
    id = "DescribeChannelPlacementGroupInput",
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
    id = "DescribeChannelPlacementGroupOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Channels = {
            type = "list",
            member = { type = "string" },
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
            member = { type = "string" },
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
    id = "DescribeClusterInput",
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
    id = "DescribeClusterOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        ChannelIds = {
            type = "list",
            member = { type = "string" },
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
        NetworkSettings = setmetatable({ traits = {
            json_name = "networkSettings",
        } }, { __index = M.ClusterNetworkSettings }),
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
    id = "DescribeInputInput",
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
    id = "DescribeInputOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        AttachedChannels = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "attachedChannels",
            },
        },
        Destinations = {
            type = "list",
            member = M.InputDestination,
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
            member = M.InputDeviceSettings,
            traits = {
                json_name = "inputDevices",
            },
        },
        InputPartnerIds = {
            type = "list",
            member = { type = "string" },
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
            member = M.MediaConnectFlow,
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
            member = { type = "string" },
            traits = {
                json_name = "securityGroups",
            },
        },
        Sources = {
            type = "list",
            member = M.InputSource,
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
            key = { type = "string" },
            value = { type = "string" },
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
        SrtSettings = setmetatable({ traits = {
            json_name = "srtSettings",
        } }, { __index = M.SrtSettings }),
        InputNetworkLocation = {
            type = "string",
            traits = {
                json_name = "inputNetworkLocation",
            },
        },
        MulticastSettings = setmetatable({ traits = {
            json_name = "multicastSettings",
        } }, { __index = M.MulticastSettings }),
        Smpte2110ReceiverGroupSettings = setmetatable({ traits = {
            json_name = "smpte2110ReceiverGroupSettings",
        } }, { __index = M.Smpte2110ReceiverGroupSettings }),
        SdiSources = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "sdiSources",
            },
        },
        RouterSettings = setmetatable({ traits = {
            json_name = "routerSettings",
        } }, { __index = M.RouterInputSettings }),
    },
}

M.DescribeInputDeviceInput = {
    type = "structure",
    id = "DescribeInputDeviceInput",
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
    id = "DescribeInputDeviceOutput",
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
        HdDeviceSettings = setmetatable({ traits = {
            json_name = "hdDeviceSettings",
        } }, { __index = M.InputDeviceHdSettings }),
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
        NetworkSettings = setmetatable({ traits = {
            json_name = "networkSettings",
        } }, { __index = M.InputDeviceNetworkSettings }),
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
        UhdDeviceSettings = setmetatable({ traits = {
            json_name = "uhdDeviceSettings",
        } }, { __index = M.InputDeviceUhdSettings }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            member = { type = "string" },
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
    id = "DescribeInputDeviceThumbnailInput",
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
    id = "DescribeInputDeviceThumbnailOutput",
    members = {
        Body = {
            type = "blob",
            traits = {
                default = "",
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
            type = "long",
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
    id = "DescribeInputSecurityGroupInput",
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
    id = "DescribeInputSecurityGroupOutput",
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
            member = { type = "string" },
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        WhitelistRules = {
            type = "list",
            member = M.InputWhitelistRule,
            traits = {
                json_name = "whitelistRules",
            },
        },
        Channels = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "channels",
            },
        },
    },
}

M.DescribeMultiplexInput = {
    type = "structure",
    id = "DescribeMultiplexInput",
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
    id = "DescribeMultiplexOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "availabilityZones",
            },
        },
        Destinations = {
            type = "list",
            member = M.MultiplexOutputDestination,
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
        MultiplexSettings = setmetatable({ traits = {
            json_name = "multiplexSettings",
        } }, { __index = M.MultiplexSettings }),
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        PipelinesRunningCount = {
            type = "integer",
            traits = {
                json_name = "pipelinesRunningCount",
            },
        },
        ProgramCount = {
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.DescribeMultiplexProgramInput = {
    type = "structure",
    id = "DescribeMultiplexProgramInput",
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
    id = "DescribeMultiplexProgramOutput",
    members = {
        ChannelId = {
            type = "string",
            traits = {
                json_name = "channelId",
            },
        },
        MultiplexProgramSettings = setmetatable({ traits = {
            json_name = "multiplexProgramSettings",
        } }, { __index = M.MultiplexProgramSettings }),
        PacketIdentifiersMap = setmetatable({ traits = {
            json_name = "packetIdentifiersMap",
        } }, { __index = M.MultiplexProgramPacketIdentifiersMap }),
        PipelineDetails = {
            type = "list",
            member = M.MultiplexProgramPipelineDetail,
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
    id = "DescribeNetworkInput",
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
    id = "DescribeNetworkOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        AssociatedClusterIds = {
            type = "list",
            member = { type = "string" },
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
            member = M.IpPool,
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
            member = M.Route,
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
    id = "DescribeNodeInput",
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
    id = "DescribeNodeOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        ChannelPlacementGroups = {
            type = "list",
            member = { type = "string" },
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
            member = M.NodeInterfaceMapping,
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
            member = M.SdiSourceMapping,
            traits = {
                json_name = "sdiSourceMappings",
            },
        },
    },
}

M.DescribeOfferingInput = {
    type = "structure",
    id = "DescribeOfferingInput",
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
    id = "DescribeOfferingOutput",
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
            type = "integer",
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
            type = "double",
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
        ResourceSpecification = setmetatable({ traits = {
            json_name = "resourceSpecification",
        } }, { __index = M.ReservationResourceSpecification }),
        UsagePrice = {
            type = "double",
            traits = {
                json_name = "usagePrice",
            },
        },
    },
}

M.DescribeReservationInput = {
    type = "structure",
    id = "DescribeReservationInput",
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
    id = "DescribeReservationOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Count = {
            type = "integer",
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
            type = "integer",
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
            type = "double",
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
        RenewalSettings = setmetatable({ traits = {
            json_name = "renewalSettings",
        } }, { __index = M.RenewalSettings }),
        ReservationId = {
            type = "string",
            traits = {
                json_name = "reservationId",
            },
        },
        ResourceSpecification = setmetatable({ traits = {
            json_name = "resourceSpecification",
        } }, { __index = M.ReservationResourceSpecification }),
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        UsagePrice = {
            type = "double",
            traits = {
                json_name = "usagePrice",
            },
        },
    },
}

M.DescribeScheduleInput = {
    type = "structure",
    id = "DescribeScheduleInput",
    members = {
        ChannelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
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
    },
}

M.DescribeScheduleOutput = {
    type = "structure",
    id = "DescribeScheduleOutput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        ScheduleActions = {
            type = "list",
            member = M.ScheduleAction,
            traits = {
                json_name = "scheduleActions",
            },
        },
    },
}

M.DescribeSdiSourceInput = {
    type = "structure",
    id = "DescribeSdiSourceInput",
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
    id = "DescribeSdiSourceOutput",
    members = {
        SdiSource = setmetatable({ traits = {
            json_name = "sdiSource",
        } }, { __index = M.SdiSource }),
    },
}

M.DescribeThumbnailsInput = {
    type = "structure",
    id = "DescribeThumbnailsInput",
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
    id = "DescribeThumbnailsOutput",
    members = {
        ThumbnailDetails = {
            type = "list",
            member = M.ThumbnailDetail,
            traits = {
                json_name = "thumbnailDetails",
            },
        },
    },
}

M.GetCloudWatchAlarmTemplateInput = {
    type = "structure",
    id = "GetCloudWatchAlarmTemplateInput",
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
    id = "GetCloudWatchAlarmTemplateOutput",
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
                timestamp_format = "date-time",
            },
        },
        DatapointsToAlarm = {
            type = "integer",
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
            type = "integer",
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
                timestamp_format = "date-time",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Period = {
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
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
            type = "double",
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
    id = "GetCloudWatchAlarmTemplateGroupInput",
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
    id = "GetCloudWatchAlarmTemplateGroupOutput",
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
                timestamp_format = "date-time",
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
                timestamp_format = "date-time",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.GetEventBridgeRuleTemplateInput = {
    type = "structure",
    id = "GetEventBridgeRuleTemplateInput",
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
    id = "GetEventBridgeRuleTemplateOutput",
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
                timestamp_format = "date-time",
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
            member = M.EventBridgeRuleTemplateTarget,
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
                timestamp_format = "date-time",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.GetEventBridgeRuleTemplateGroupInput = {
    type = "structure",
    id = "GetEventBridgeRuleTemplateGroupInput",
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
    id = "GetEventBridgeRuleTemplateGroupOutput",
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
                timestamp_format = "date-time",
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
                timestamp_format = "date-time",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.GetSignalMapInput = {
    type = "structure",
    id = "GetSignalMapInput",
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
    id = "GetSignalMapOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CloudWatchAlarmTemplateGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "cloudWatchAlarmTemplateGroupIds",
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
                timestamp_format = "date-time",
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
            member = { type = "string" },
            traits = {
                json_name = "eventBridgeRuleTemplateGroupIds",
            },
        },
        FailedMediaResourceMap = {
            type = "map",
            key = { type = "string" },
            value = M.MediaResource,
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
                timestamp_format = "date-time",
            },
        },
        LastSuccessfulMonitorDeployment = setmetatable({ traits = {
            json_name = "lastSuccessfulMonitorDeployment",
        } }, { __index = M.SuccessfulMonitorDeployment }),
        MediaResourceMap = {
            type = "map",
            key = { type = "string" },
            value = M.MediaResource,
            traits = {
                json_name = "mediaResourceMap",
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                json_name = "modifiedAt",
                timestamp_format = "date-time",
            },
        },
        MonitorChangesPendingDeployment = {
            type = "boolean",
            traits = {
                json_name = "monitorChangesPendingDeployment",
            },
        },
        MonitorDeployment = setmetatable({ traits = {
            json_name = "monitorDeployment",
        } }, { __index = M.MonitorDeployment }),
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.InputDeviceMediaConnectConfigurableSettings = {
    type = "structure",
    id = "InputDeviceMediaConnectConfigurableSettings",
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
    id = "InputDeviceConfigurableSettings",
    members = {
        ConfiguredInput = {
            type = "string",
            traits = {
                json_name = "configuredInput",
            },
        },
        MaxBitrate = {
            type = "integer",
            traits = {
                json_name = "maxBitrate",
            },
        },
        LatencyMs = {
            type = "integer",
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
        MediaconnectSettings = setmetatable({ traits = {
            json_name = "mediaconnectSettings",
        } }, { __index = M.InputDeviceMediaConnectConfigurableSettings }),
        AudioChannelPairs = {
            type = "list",
            member = M.InputDeviceConfigurableAudioChannelPairConfig,
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
    id = "ListAlertsInput",
    members = {
        ChannelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
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
    id = "ListAlertsOutput",
    members = {
        Alerts = {
            type = "list",
            member = M.ChannelAlert,
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
    id = "ListChannelPlacementGroupsInput",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
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
    },
}

M.ListChannelPlacementGroupsOutput = {
    type = "structure",
    id = "ListChannelPlacementGroupsOutput",
    members = {
        ChannelPlacementGroups = {
            type = "list",
            member = M.DescribeChannelPlacementGroupSummary,
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
        Channels = {
            type = "list",
            member = M.ChannelSummary,
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
    id = "ListCloudWatchAlarmTemplateGroupsInput",
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
    id = "ListCloudWatchAlarmTemplateGroupsOutput",
    members = {
        CloudWatchAlarmTemplateGroups = {
            type = "list",
            member = M.CloudWatchAlarmTemplateGroupSummary,
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
    id = "ListCloudWatchAlarmTemplatesInput",
    members = {
        GroupIdentifier = {
            type = "string",
            traits = {
                http_query = "groupIdentifier",
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
    id = "ListCloudWatchAlarmTemplatesOutput",
    members = {
        CloudWatchAlarmTemplates = {
            type = "list",
            member = M.CloudWatchAlarmTemplateSummary,
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
    id = "ListClusterAlertsInput",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
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
    id = "ListClusterAlertsOutput",
    members = {
        Alerts = {
            type = "list",
            member = M.ClusterAlert,
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
    id = "ListClustersInput",
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

M.ListClustersOutput = {
    type = "structure",
    id = "ListClustersOutput",
    members = {
        Clusters = {
            type = "list",
            member = M.DescribeClusterSummary,
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
    id = "ListEventBridgeRuleTemplateGroupsInput",
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
    id = "ListEventBridgeRuleTemplateGroupsOutput",
    members = {
        EventBridgeRuleTemplateGroups = {
            type = "list",
            member = M.EventBridgeRuleTemplateGroupSummary,
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
    id = "ListEventBridgeRuleTemplatesInput",
    members = {
        GroupIdentifier = {
            type = "string",
            traits = {
                http_query = "groupIdentifier",
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
    id = "ListEventBridgeRuleTemplatesOutput",
    members = {
        EventBridgeRuleTemplates = {
            type = "list",
            member = M.EventBridgeRuleTemplateSummary,
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
    id = "ListInputDevicesInput",
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

M.ListInputDevicesOutput = {
    type = "structure",
    id = "ListInputDevicesOutput",
    members = {
        InputDevices = {
            type = "list",
            member = M.InputDeviceSummary,
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
    id = "ListInputDeviceTransfersInput",
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
    id = "ListInputDeviceTransfersOutput",
    members = {
        InputDeviceTransfers = {
            type = "list",
            member = M.TransferringInputDeviceSummary,
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
    id = "ListInputsInput",
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

M.ListInputsOutput = {
    type = "structure",
    id = "ListInputsOutput",
    members = {
        Inputs = {
            type = "list",
            member = M.Input,
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
    id = "ListInputSecurityGroupsInput",
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

M.ListInputSecurityGroupsOutput = {
    type = "structure",
    id = "ListInputSecurityGroupsOutput",
    members = {
        InputSecurityGroups = {
            type = "list",
            member = M.InputSecurityGroup,
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
    id = "ListMultiplexAlertsInput",
    members = {
        MaxResults = {
            type = "integer",
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
    id = "ListMultiplexAlertsOutput",
    members = {
        Alerts = {
            type = "list",
            member = M.MultiplexAlert,
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
    id = "ListMultiplexesInput",
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

M.ListMultiplexesOutput = {
    type = "structure",
    id = "ListMultiplexesOutput",
    members = {
        Multiplexes = {
            type = "list",
            member = M.MultiplexSummary,
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
    id = "ListMultiplexProgramsInput",
    members = {
        MaxResults = {
            type = "integer",
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
    id = "ListMultiplexProgramsOutput",
    members = {
        MultiplexPrograms = {
            type = "list",
            member = M.MultiplexProgramSummary,
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
    id = "ListNetworksInput",
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

M.ListNetworksOutput = {
    type = "structure",
    id = "ListNetworksOutput",
    members = {
        Networks = {
            type = "list",
            member = M.DescribeNetworkSummary,
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
    id = "ListNodesInput",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
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
    },
}

M.ListNodesOutput = {
    type = "structure",
    id = "ListNodesOutput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        Nodes = {
            type = "list",
            member = M.DescribeNodeSummary,
            traits = {
                json_name = "nodes",
            },
        },
    },
}

M.ListOfferingsInput = {
    type = "structure",
    id = "ListOfferingsInput",
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
            type = "integer",
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
    id = "ListOfferingsOutput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        Offerings = {
            type = "list",
            member = M.Offering,
            traits = {
                json_name = "offerings",
            },
        },
    },
}

M.ListReservationsInput = {
    type = "structure",
    id = "ListReservationsInput",
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
            type = "integer",
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
    id = "ListReservationsOutput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        Reservations = {
            type = "list",
            member = M.Reservation,
            traits = {
                json_name = "reservations",
            },
        },
    },
}

M.ListSdiSourcesInput = {
    type = "structure",
    id = "ListSdiSourcesInput",
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

M.ListSdiSourcesOutput = {
    type = "structure",
    id = "ListSdiSourcesOutput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        SdiSources = {
            type = "list",
            member = M.SdiSourceSummary,
            traits = {
                json_name = "sdiSources",
            },
        },
    },
}

M.ListSignalMapsInput = {
    type = "structure",
    id = "ListSignalMapsInput",
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

M.ListSignalMapsOutput = {
    type = "structure",
    id = "ListSignalMapsOutput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        SignalMaps = {
            type = "list",
            member = M.SignalMapSummary,
            traits = {
                json_name = "signalMaps",
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

M.ListVersionsInput = {
    type = "structure",
    id = "ListVersionsInput",
}

M.ListVersionsOutput = {
    type = "structure",
    id = "ListVersionsOutput",
    members = {
        Versions = {
            type = "list",
            member = M.ChannelEngineVersionResponse,
            traits = {
                json_name = "versions",
            },
        },
    },
}

M.MaintenanceUpdateSettings = {
    type = "structure",
    id = "MaintenanceUpdateSettings",
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
    id = "PurchaseOfferingInput",
    members = {
        Count = {
            type = "integer",
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
        RenewalSettings = setmetatable({ traits = {
            json_name = "renewalSettings",
        } }, { __index = M.RenewalSettings }),
        RequestId = {
            type = "string",
            traits = {
                idempotency_token = true,
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.PurchaseOfferingOutput = {
    type = "structure",
    id = "PurchaseOfferingOutput",
    members = {
        Reservation = setmetatable({ traits = {
            json_name = "reservation",
        } }, { __index = M.Reservation }),
    },
}

M.RebootInputDeviceForce = {
    NO = "NO",
    YES = "YES",
}

M.RebootInputDeviceInput = {
    type = "structure",
    id = "RebootInputDeviceInput",
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
    id = "RebootInputDeviceOutput",
}

M.RejectInputDeviceTransferInput = {
    type = "structure",
    id = "RejectInputDeviceTransferInput",
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
    id = "RejectInputDeviceTransferOutput",
}

M.RestartChannelPipelinesInput = {
    type = "structure",
    id = "RestartChannelPipelinesInput",
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
            member = { type = "string" },
            traits = {
                json_name = "pipelineIds",
            },
        },
    },
}

M.RestartChannelPipelinesOutput = {
    type = "structure",
    id = "RestartChannelPipelinesOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CdiInputSpecification = setmetatable({ traits = {
            json_name = "cdiInputSpecification",
        } }, { __index = M.CdiInputSpecification }),
        ChannelClass = {
            type = "string",
            traits = {
                json_name = "channelClass",
            },
        },
        Destinations = {
            type = "list",
            member = M.OutputDestination,
            traits = {
                json_name = "destinations",
            },
        },
        EgressEndpoints = {
            type = "list",
            member = M.ChannelEgressEndpoint,
            traits = {
                json_name = "egressEndpoints",
            },
        },
        EncoderSettings = setmetatable({ traits = {
            json_name = "encoderSettings",
        } }, { __index = M.EncoderSettings }),
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        InputAttachments = {
            type = "list",
            member = M.InputAttachment,
            traits = {
                json_name = "inputAttachments",
            },
        },
        InputSpecification = setmetatable({ traits = {
            json_name = "inputSpecification",
        } }, { __index = M.InputSpecification }),
        LogLevel = {
            type = "string",
            traits = {
                json_name = "logLevel",
            },
        },
        Maintenance = setmetatable({ traits = {
            json_name = "maintenance",
        } }, { __index = M.MaintenanceStatus }),
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
            member = M.PipelineDetail,
            traits = {
                json_name = "pipelineDetails",
            },
        },
        PipelinesRunningCount = {
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        Vpc = setmetatable({ traits = {
            json_name = "vpc",
        } }, { __index = M.VpcOutputSettingsDescription }),
        AnywhereSettings = setmetatable({ traits = {
            json_name = "anywhereSettings",
        } }, { __index = M.DescribeAnywhereSettings }),
        ChannelEngineVersion = setmetatable({ traits = {
            json_name = "channelEngineVersion",
        } }, { __index = M.ChannelEngineVersionResponse }),
        LinkedChannelSettings = setmetatable({ traits = {
            json_name = "linkedChannelSettings",
        } }, { __index = M.DescribeLinkedChannelSettings }),
        ChannelSecurityGroups = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "channelSecurityGroups",
            },
        },
        InferenceSettings = setmetatable({ traits = {
            json_name = "inferenceSettings",
        } }, { __index = M.DescribeInferenceSettings }),
    },
}

M.StartChannelInput = {
    type = "structure",
    id = "StartChannelInput",
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
    id = "StartChannelOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CdiInputSpecification = setmetatable({ traits = {
            json_name = "cdiInputSpecification",
        } }, { __index = M.CdiInputSpecification }),
        ChannelClass = {
            type = "string",
            traits = {
                json_name = "channelClass",
            },
        },
        Destinations = {
            type = "list",
            member = M.OutputDestination,
            traits = {
                json_name = "destinations",
            },
        },
        EgressEndpoints = {
            type = "list",
            member = M.ChannelEgressEndpoint,
            traits = {
                json_name = "egressEndpoints",
            },
        },
        EncoderSettings = setmetatable({ traits = {
            json_name = "encoderSettings",
        } }, { __index = M.EncoderSettings }),
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        InputAttachments = {
            type = "list",
            member = M.InputAttachment,
            traits = {
                json_name = "inputAttachments",
            },
        },
        InputSpecification = setmetatable({ traits = {
            json_name = "inputSpecification",
        } }, { __index = M.InputSpecification }),
        LogLevel = {
            type = "string",
            traits = {
                json_name = "logLevel",
            },
        },
        Maintenance = setmetatable({ traits = {
            json_name = "maintenance",
        } }, { __index = M.MaintenanceStatus }),
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        PipelineDetails = {
            type = "list",
            member = M.PipelineDetail,
            traits = {
                json_name = "pipelineDetails",
            },
        },
        PipelinesRunningCount = {
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        Vpc = setmetatable({ traits = {
            json_name = "vpc",
        } }, { __index = M.VpcOutputSettingsDescription }),
        AnywhereSettings = setmetatable({ traits = {
            json_name = "anywhereSettings",
        } }, { __index = M.DescribeAnywhereSettings }),
        ChannelEngineVersion = setmetatable({ traits = {
            json_name = "channelEngineVersion",
        } }, { __index = M.ChannelEngineVersionResponse }),
        LinkedChannelSettings = setmetatable({ traits = {
            json_name = "linkedChannelSettings",
        } }, { __index = M.DescribeLinkedChannelSettings }),
        ChannelSecurityGroups = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "channelSecurityGroups",
            },
        },
        InferenceSettings = setmetatable({ traits = {
            json_name = "inferenceSettings",
        } }, { __index = M.DescribeInferenceSettings }),
    },
}

M.StartDeleteMonitorDeploymentInput = {
    type = "structure",
    id = "StartDeleteMonitorDeploymentInput",
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
    id = "StartDeleteMonitorDeploymentOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CloudWatchAlarmTemplateGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "cloudWatchAlarmTemplateGroupIds",
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
                timestamp_format = "date-time",
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
            member = { type = "string" },
            traits = {
                json_name = "eventBridgeRuleTemplateGroupIds",
            },
        },
        FailedMediaResourceMap = {
            type = "map",
            key = { type = "string" },
            value = M.MediaResource,
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
                timestamp_format = "date-time",
            },
        },
        LastSuccessfulMonitorDeployment = setmetatable({ traits = {
            json_name = "lastSuccessfulMonitorDeployment",
        } }, { __index = M.SuccessfulMonitorDeployment }),
        MediaResourceMap = {
            type = "map",
            key = { type = "string" },
            value = M.MediaResource,
            traits = {
                json_name = "mediaResourceMap",
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                json_name = "modifiedAt",
                timestamp_format = "date-time",
            },
        },
        MonitorChangesPendingDeployment = {
            type = "boolean",
            traits = {
                json_name = "monitorChangesPendingDeployment",
            },
        },
        MonitorDeployment = setmetatable({ traits = {
            json_name = "monitorDeployment",
        } }, { __index = M.MonitorDeployment }),
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.StartInputDeviceInput = {
    type = "structure",
    id = "StartInputDeviceInput",
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
    id = "StartInputDeviceOutput",
}

M.StartInputDeviceMaintenanceWindowInput = {
    type = "structure",
    id = "StartInputDeviceMaintenanceWindowInput",
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
    id = "StartInputDeviceMaintenanceWindowOutput",
}

M.StartMonitorDeploymentInput = {
    type = "structure",
    id = "StartMonitorDeploymentInput",
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
    id = "StartMonitorDeploymentOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CloudWatchAlarmTemplateGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "cloudWatchAlarmTemplateGroupIds",
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
                timestamp_format = "date-time",
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
            member = { type = "string" },
            traits = {
                json_name = "eventBridgeRuleTemplateGroupIds",
            },
        },
        FailedMediaResourceMap = {
            type = "map",
            key = { type = "string" },
            value = M.MediaResource,
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
                timestamp_format = "date-time",
            },
        },
        LastSuccessfulMonitorDeployment = setmetatable({ traits = {
            json_name = "lastSuccessfulMonitorDeployment",
        } }, { __index = M.SuccessfulMonitorDeployment }),
        MediaResourceMap = {
            type = "map",
            key = { type = "string" },
            value = M.MediaResource,
            traits = {
                json_name = "mediaResourceMap",
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                json_name = "modifiedAt",
                timestamp_format = "date-time",
            },
        },
        MonitorChangesPendingDeployment = {
            type = "boolean",
            traits = {
                json_name = "monitorChangesPendingDeployment",
            },
        },
        MonitorDeployment = setmetatable({ traits = {
            json_name = "monitorDeployment",
        } }, { __index = M.MonitorDeployment }),
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.StartMultiplexInput = {
    type = "structure",
    id = "StartMultiplexInput",
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
    id = "StartMultiplexOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "availabilityZones",
            },
        },
        Destinations = {
            type = "list",
            member = M.MultiplexOutputDestination,
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
        MultiplexSettings = setmetatable({ traits = {
            json_name = "multiplexSettings",
        } }, { __index = M.MultiplexSettings }),
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        PipelinesRunningCount = {
            type = "integer",
            traits = {
                json_name = "pipelinesRunningCount",
            },
        },
        ProgramCount = {
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.StartUpdateSignalMapInput = {
    type = "structure",
    id = "StartUpdateSignalMapInput",
    members = {
        CloudWatchAlarmTemplateGroupIdentifiers = {
            type = "list",
            member = { type = "string" },
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
            member = { type = "string" },
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
    id = "StartUpdateSignalMapOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CloudWatchAlarmTemplateGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "cloudWatchAlarmTemplateGroupIds",
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
                timestamp_format = "date-time",
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
            member = { type = "string" },
            traits = {
                json_name = "eventBridgeRuleTemplateGroupIds",
            },
        },
        FailedMediaResourceMap = {
            type = "map",
            key = { type = "string" },
            value = M.MediaResource,
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
                timestamp_format = "date-time",
            },
        },
        LastSuccessfulMonitorDeployment = setmetatable({ traits = {
            json_name = "lastSuccessfulMonitorDeployment",
        } }, { __index = M.SuccessfulMonitorDeployment }),
        MediaResourceMap = {
            type = "map",
            key = { type = "string" },
            value = M.MediaResource,
            traits = {
                json_name = "mediaResourceMap",
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                json_name = "modifiedAt",
                timestamp_format = "date-time",
            },
        },
        MonitorChangesPendingDeployment = {
            type = "boolean",
            traits = {
                json_name = "monitorChangesPendingDeployment",
            },
        },
        MonitorDeployment = setmetatable({ traits = {
            json_name = "monitorDeployment",
        } }, { __index = M.MonitorDeployment }),
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.StopChannelInput = {
    type = "structure",
    id = "StopChannelInput",
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
    id = "StopChannelOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CdiInputSpecification = setmetatable({ traits = {
            json_name = "cdiInputSpecification",
        } }, { __index = M.CdiInputSpecification }),
        ChannelClass = {
            type = "string",
            traits = {
                json_name = "channelClass",
            },
        },
        Destinations = {
            type = "list",
            member = M.OutputDestination,
            traits = {
                json_name = "destinations",
            },
        },
        EgressEndpoints = {
            type = "list",
            member = M.ChannelEgressEndpoint,
            traits = {
                json_name = "egressEndpoints",
            },
        },
        EncoderSettings = setmetatable({ traits = {
            json_name = "encoderSettings",
        } }, { __index = M.EncoderSettings }),
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        InputAttachments = {
            type = "list",
            member = M.InputAttachment,
            traits = {
                json_name = "inputAttachments",
            },
        },
        InputSpecification = setmetatable({ traits = {
            json_name = "inputSpecification",
        } }, { __index = M.InputSpecification }),
        LogLevel = {
            type = "string",
            traits = {
                json_name = "logLevel",
            },
        },
        Maintenance = setmetatable({ traits = {
            json_name = "maintenance",
        } }, { __index = M.MaintenanceStatus }),
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        PipelineDetails = {
            type = "list",
            member = M.PipelineDetail,
            traits = {
                json_name = "pipelineDetails",
            },
        },
        PipelinesRunningCount = {
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        Vpc = setmetatable({ traits = {
            json_name = "vpc",
        } }, { __index = M.VpcOutputSettingsDescription }),
        AnywhereSettings = setmetatable({ traits = {
            json_name = "anywhereSettings",
        } }, { __index = M.DescribeAnywhereSettings }),
        ChannelEngineVersion = setmetatable({ traits = {
            json_name = "channelEngineVersion",
        } }, { __index = M.ChannelEngineVersionResponse }),
        LinkedChannelSettings = setmetatable({ traits = {
            json_name = "linkedChannelSettings",
        } }, { __index = M.DescribeLinkedChannelSettings }),
        ChannelSecurityGroups = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "channelSecurityGroups",
            },
        },
        InferenceSettings = setmetatable({ traits = {
            json_name = "inferenceSettings",
        } }, { __index = M.DescribeInferenceSettings }),
    },
}

M.StopInputDeviceInput = {
    type = "structure",
    id = "StopInputDeviceInput",
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
    id = "StopInputDeviceOutput",
}

M.StopMultiplexInput = {
    type = "structure",
    id = "StopMultiplexInput",
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
    id = "StopMultiplexOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "availabilityZones",
            },
        },
        Destinations = {
            type = "list",
            member = M.MultiplexOutputDestination,
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
        MultiplexSettings = setmetatable({ traits = {
            json_name = "multiplexSettings",
        } }, { __index = M.MultiplexSettings }),
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        PipelinesRunningCount = {
            type = "integer",
            traits = {
                json_name = "pipelinesRunningCount",
            },
        },
        ProgramCount = {
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.TransferInputDeviceInput = {
    type = "structure",
    id = "TransferInputDeviceInput",
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
    id = "TransferInputDeviceOutput",
}

M.UpdateAccountConfigurationInput = {
    type = "structure",
    id = "UpdateAccountConfigurationInput",
    members = {
        AccountConfiguration = setmetatable({ traits = {
            json_name = "accountConfiguration",
        } }, { __index = M.AccountConfiguration }),
    },
}

M.UpdateAccountConfigurationOutput = {
    type = "structure",
    id = "UpdateAccountConfigurationOutput",
    members = {
        AccountConfiguration = setmetatable({ traits = {
            json_name = "accountConfiguration",
        } }, { __index = M.AccountConfiguration }),
    },
}

M.SpecialRouterSettings = {
    type = "structure",
    id = "SpecialRouterSettings",
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
    id = "UpdateChannelInput",
    members = {
        CdiInputSpecification = setmetatable({ traits = {
            json_name = "cdiInputSpecification",
        } }, { __index = M.CdiInputSpecification }),
        ChannelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Destinations = {
            type = "list",
            member = M.OutputDestination,
            traits = {
                json_name = "destinations",
            },
        },
        EncoderSettings = setmetatable({ traits = {
            json_name = "encoderSettings",
        } }, { __index = M.EncoderSettings }),
        InputAttachments = {
            type = "list",
            member = M.InputAttachment,
            traits = {
                json_name = "inputAttachments",
            },
        },
        InputSpecification = setmetatable({ traits = {
            json_name = "inputSpecification",
        } }, { __index = M.InputSpecification }),
        LogLevel = {
            type = "string",
            traits = {
                json_name = "logLevel",
            },
        },
        Maintenance = setmetatable({ traits = {
            json_name = "maintenance",
        } }, { __index = M.MaintenanceUpdateSettings }),
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
        ChannelEngineVersion = setmetatable({ traits = {
            json_name = "channelEngineVersion",
        } }, { __index = M.ChannelEngineVersionRequest }),
        DryRun = {
            type = "boolean",
            traits = {
                json_name = "dryRun",
            },
        },
        AnywhereSettings = setmetatable({ traits = {
            json_name = "anywhereSettings",
        } }, { __index = M.AnywhereSettings }),
        LinkedChannelSettings = setmetatable({ traits = {
            json_name = "linkedChannelSettings",
        } }, { __index = M.LinkedChannelSettings }),
        ChannelSecurityGroups = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "channelSecurityGroups",
            },
        },
        InferenceSettings = setmetatable({ traits = {
            json_name = "inferenceSettings",
        } }, { __index = M.InferenceSettings }),
        SpecialRouterSettings = setmetatable({ traits = {
            json_name = "specialRouterSettings",
        } }, { __index = M.SpecialRouterSettings }),
    },
}

M.UpdateChannelOutput = {
    type = "structure",
    id = "UpdateChannelOutput",
    members = {
        Channel = setmetatable({ traits = {
            json_name = "channel",
        } }, { __index = M.Channel }),
    },
}

M.UpdateChannelClassInput = {
    type = "structure",
    id = "UpdateChannelClassInput",
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
            member = M.OutputDestination,
            traits = {
                json_name = "destinations",
            },
        },
    },
}

M.UpdateChannelClassOutput = {
    type = "structure",
    id = "UpdateChannelClassOutput",
    members = {
        Channel = setmetatable({ traits = {
            json_name = "channel",
        } }, { __index = M.Channel }),
    },
}

M.UpdateChannelPlacementGroupInput = {
    type = "structure",
    id = "UpdateChannelPlacementGroupInput",
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
            member = { type = "string" },
            traits = {
                json_name = "nodes",
            },
        },
    },
}

M.UpdateChannelPlacementGroupOutput = {
    type = "structure",
    id = "UpdateChannelPlacementGroupOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Channels = {
            type = "list",
            member = { type = "string" },
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
            member = { type = "string" },
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
    id = "UpdateCloudWatchAlarmTemplateInput",
    members = {
        ComparisonOperator = {
            type = "string",
            traits = {
                json_name = "comparisonOperator",
            },
        },
        DatapointsToAlarm = {
            type = "integer",
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
            type = "integer",
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
            type = "integer",
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
            type = "double",
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
    id = "UpdateCloudWatchAlarmTemplateOutput",
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
                timestamp_format = "date-time",
            },
        },
        DatapointsToAlarm = {
            type = "integer",
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
            type = "integer",
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
                timestamp_format = "date-time",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Period = {
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
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
            type = "double",
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
    id = "UpdateCloudWatchAlarmTemplateGroupInput",
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
    id = "UpdateCloudWatchAlarmTemplateGroupOutput",
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
                timestamp_format = "date-time",
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
                timestamp_format = "date-time",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.UpdateClusterInput = {
    type = "structure",
    id = "UpdateClusterInput",
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
        NetworkSettings = setmetatable({ traits = {
            json_name = "networkSettings",
        } }, { __index = M.ClusterNetworkSettingsUpdateRequest }),
    },
}

M.UpdateClusterOutput = {
    type = "structure",
    id = "UpdateClusterOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        ChannelIds = {
            type = "list",
            member = { type = "string" },
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
        NetworkSettings = setmetatable({ traits = {
            json_name = "networkSettings",
        } }, { __index = M.ClusterNetworkSettings }),
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
    id = "UpdateEventBridgeRuleTemplateInput",
    members = {
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        EventTargets = {
            type = "list",
            member = M.EventBridgeRuleTemplateTarget,
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
    id = "UpdateEventBridgeRuleTemplateOutput",
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
                timestamp_format = "date-time",
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
            member = M.EventBridgeRuleTemplateTarget,
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
                timestamp_format = "date-time",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.UpdateEventBridgeRuleTemplateGroupInput = {
    type = "structure",
    id = "UpdateEventBridgeRuleTemplateGroupInput",
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
    id = "UpdateEventBridgeRuleTemplateGroupOutput",
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
                timestamp_format = "date-time",
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
                timestamp_format = "date-time",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.MulticastSettingsUpdateRequest = {
    type = "structure",
    id = "MulticastSettingsUpdateRequest",
    members = {
        Sources = {
            type = "list",
            member = M.MulticastSourceUpdateRequest,
            traits = {
                json_name = "sources",
            },
        },
    },
}

M.UpdateInputInput = {
    type = "structure",
    id = "UpdateInputInput",
    members = {
        Destinations = {
            type = "list",
            member = M.InputDestinationRequest,
            traits = {
                json_name = "destinations",
            },
        },
        InputDevices = {
            type = "list",
            member = M.InputDeviceRequest,
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
            member = { type = "string" },
            traits = {
                json_name = "inputSecurityGroups",
            },
        },
        MediaConnectFlows = {
            type = "list",
            member = M.MediaConnectFlowRequest,
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
            member = M.InputSourceRequest,
            traits = {
                json_name = "sources",
            },
        },
        SrtSettings = setmetatable({ traits = {
            json_name = "srtSettings",
        } }, { __index = M.SrtSettingsRequest }),
        MulticastSettings = setmetatable({ traits = {
            json_name = "multicastSettings",
        } }, { __index = M.MulticastSettingsUpdateRequest }),
        Smpte2110ReceiverGroupSettings = setmetatable({ traits = {
            json_name = "smpte2110ReceiverGroupSettings",
        } }, { __index = M.Smpte2110ReceiverGroupSettings }),
        SdiSources = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "sdiSources",
            },
        },
        SpecialRouterSettings = setmetatable({ traits = {
            json_name = "specialRouterSettings",
        } }, { __index = M.SpecialRouterSettings }),
    },
}

M.UpdateInputOutput = {
    type = "structure",
    id = "UpdateInputOutput",
    members = {
        Input = setmetatable({ traits = {
            json_name = "input",
        } }, { __index = M.Input }),
    },
}

M.UpdateInputDeviceInput = {
    type = "structure",
    id = "UpdateInputDeviceInput",
    members = {
        HdDeviceSettings = setmetatable({ traits = {
            json_name = "hdDeviceSettings",
        } }, { __index = M.InputDeviceConfigurableSettings }),
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
        UhdDeviceSettings = setmetatable({ traits = {
            json_name = "uhdDeviceSettings",
        } }, { __index = M.InputDeviceConfigurableSettings }),
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
    id = "UpdateInputDeviceOutput",
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
        HdDeviceSettings = setmetatable({ traits = {
            json_name = "hdDeviceSettings",
        } }, { __index = M.InputDeviceHdSettings }),
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
        NetworkSettings = setmetatable({ traits = {
            json_name = "networkSettings",
        } }, { __index = M.InputDeviceNetworkSettings }),
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
        UhdDeviceSettings = setmetatable({ traits = {
            json_name = "uhdDeviceSettings",
        } }, { __index = M.InputDeviceUhdSettings }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            member = { type = "string" },
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
    id = "UpdateInputSecurityGroupInput",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        WhitelistRules = {
            type = "list",
            member = M.InputWhitelistRuleCidr,
            traits = {
                json_name = "whitelistRules",
            },
        },
    },
}

M.UpdateInputSecurityGroupOutput = {
    type = "structure",
    id = "UpdateInputSecurityGroupOutput",
    members = {
        SecurityGroup = setmetatable({ traits = {
            json_name = "securityGroup",
        } }, { __index = M.InputSecurityGroup }),
    },
}

M.UpdateMultiplexInput = {
    type = "structure",
    id = "UpdateMultiplexInput",
    members = {
        MultiplexId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MultiplexSettings = setmetatable({ traits = {
            json_name = "multiplexSettings",
        } }, { __index = M.MultiplexSettings }),
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        PacketIdentifiersMapping = {
            type = "map",
            key = { type = "string" },
            value = M.MultiplexProgramPacketIdentifiersMap,
            traits = {
                json_name = "packetIdentifiersMapping",
            },
        },
    },
}

M.UpdateMultiplexOutput = {
    type = "structure",
    id = "UpdateMultiplexOutput",
    members = {
        Multiplex = setmetatable({ traits = {
            json_name = "multiplex",
        } }, { __index = M.Multiplex }),
    },
}

M.UpdateMultiplexProgramInput = {
    type = "structure",
    id = "UpdateMultiplexProgramInput",
    members = {
        MultiplexId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MultiplexProgramSettings = setmetatable({ traits = {
            json_name = "multiplexProgramSettings",
        } }, { __index = M.MultiplexProgramSettings }),
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
    id = "UpdateMultiplexProgramOutput",
    members = {
        MultiplexProgram = setmetatable({ traits = {
            json_name = "multiplexProgram",
        } }, { __index = M.MultiplexProgram }),
    },
}

M.UpdateNetworkInput = {
    type = "structure",
    id = "UpdateNetworkInput",
    members = {
        IpPools = {
            type = "list",
            member = M.IpPoolUpdateRequest,
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
            member = M.RouteUpdateRequest,
            traits = {
                json_name = "routes",
            },
        },
    },
}

M.UpdateNetworkOutput = {
    type = "structure",
    id = "UpdateNetworkOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        AssociatedClusterIds = {
            type = "list",
            member = { type = "string" },
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
            member = M.IpPool,
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
            member = M.Route,
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
    id = "SdiSourceMappingUpdateRequest",
    members = {
        CardNumber = {
            type = "integer",
            traits = {
                json_name = "cardNumber",
            },
        },
        ChannelNumber = {
            type = "integer",
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
    id = "UpdateNodeInput",
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
            member = M.SdiSourceMappingUpdateRequest,
            traits = {
                json_name = "sdiSourceMappings",
            },
        },
    },
}

M.UpdateNodeOutput = {
    type = "structure",
    id = "UpdateNodeOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        ChannelPlacementGroups = {
            type = "list",
            member = { type = "string" },
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
            member = M.NodeInterfaceMapping,
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
            member = M.SdiSourceMapping,
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
    id = "UpdateNodeStateInput",
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
    id = "UpdateNodeStateOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        ChannelPlacementGroups = {
            type = "list",
            member = { type = "string" },
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
            member = M.NodeInterfaceMapping,
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
            member = M.SdiSourceMapping,
            traits = {
                json_name = "sdiSourceMappings",
            },
        },
    },
}

M.UpdateReservationInput = {
    type = "structure",
    id = "UpdateReservationInput",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        RenewalSettings = setmetatable({ traits = {
            json_name = "renewalSettings",
        } }, { __index = M.RenewalSettings }),
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
    id = "UpdateReservationOutput",
    members = {
        Reservation = setmetatable({ traits = {
            json_name = "reservation",
        } }, { __index = M.Reservation }),
    },
}

M.UpdateSdiSourceInput = {
    type = "structure",
    id = "UpdateSdiSourceInput",
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
    id = "UpdateSdiSourceOutput",
    members = {
        SdiSource = setmetatable({ traits = {
            json_name = "sdiSource",
        } }, { __index = M.SdiSource }),
    },
}

return M
