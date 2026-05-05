local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.chimesdkmediapipelines"

local M = {}

M.TagList = schema.new({ type = "list", list_member = M.Tag })

M.ConcatenationSourceList = schema.new({ type = "list", list_member = M.ConcatenationSource })

M.ConcatenationSinkList = schema.new({ type = "list", list_member = M.ConcatenationSink })

M.MediaInsightsRuntimeMetadata = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.MediaInsightsPipelineConfigurationElements = schema.new({ type = "list", list_member = M.MediaInsightsPipelineConfigurationElement })

M.LiveConnectorSourceList = schema.new({ type = "list", list_member = M.LiveConnectorSourceConfiguration })

M.LiveConnectorSinkList = schema.new({ type = "list", list_member = M.LiveConnectorSinkConfiguration })

M.MediaStreamSourceList = schema.new({ type = "list", list_member = M.MediaStreamSource })

M.MediaStreamSinkList = schema.new({ type = "list", list_member = M.MediaStreamSink })

M.MediaCapturePipelineSummaryList = schema.new({ type = "list", list_member = M.MediaCapturePipelineSummary })

M.MediaInsightsPipelineConfigurationSummaryList = schema.new({ type = "list", list_member = M.MediaInsightsPipelineConfigurationSummary })

M.KinesisVideoStreamPoolSummaryList = schema.new({ type = "list", list_member = M.KinesisVideoStreamPoolSummary })

M.MediaPipelineList = schema.new({ type = "list", list_member = M.MediaPipelineSummary })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.Streams = schema.new({ type = "list", list_member = M.StreamConfiguration })

M.RecordingStreamList = schema.new({ type = "list", list_member = M.RecordingStreamConfiguration })

M.MediaInsightsPipelineElementStatuses = schema.new({ type = "list", list_member = M.MediaInsightsPipelineElementStatus })

M.RealTimeAlertRuleList = schema.new({ type = "list", list_member = M.RealTimeAlertRule })

M.AttendeeIdList = schema.new({ type = "list", list_member = prelude.String })

M.ExternalUserIdList = schema.new({ type = "list", list_member = prelude.String })

M.CategoryNameList = schema.new({ type = "list", list_member = prelude.String })

M.ChannelDefinitions = schema.new({ type = "list", list_member = M.ChannelDefinition })

M.KeywordMatchWordList = schema.new({ type = "list", list_member = prelude.String })

M.ActiveSpeakerOnlyConfiguration = schema.new({
    id = id.from(_N, "ActiveSpeakerOnlyConfiguration"),
    type = "structure",
    members = {
        ActiveSpeakerPosition = schema.new({
            id = id.from(_N, "ActiveSpeakerOnlyConfiguration", "ActiveSpeakerPosition"),
            type = "string",
            name = "ActiveSpeakerPosition",
            target_id = prelude.String.id,
        }),
    },
})

M.PostCallAnalyticsSettings = schema.new({
    id = id.from(_N, "PostCallAnalyticsSettings"),
    type = "structure",
    members = {
        OutputLocation = schema.new({
            id = id.from(_N, "PostCallAnalyticsSettings", "OutputLocation"),
            type = "string",
            name = "OutputLocation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DataAccessRoleArn = schema.new({
            id = id.from(_N, "PostCallAnalyticsSettings", "DataAccessRoleArn"),
            type = "string",
            name = "DataAccessRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ContentRedactionOutput = schema.new({
            id = id.from(_N, "PostCallAnalyticsSettings", "ContentRedactionOutput"),
            type = "string",
            name = "ContentRedactionOutput",
            target_id = prelude.String.id,
        }),
        OutputEncryptionKMSKeyId = schema.new({
            id = id.from(_N, "PostCallAnalyticsSettings", "OutputEncryptionKMSKeyId"),
            type = "string",
            name = "OutputEncryptionKMSKeyId",
            target_id = prelude.String.id,
        }),
    },
})

M.AmazonTranscribeCallAnalyticsProcessorConfiguration = schema.new({
    id = id.from(_N, "AmazonTranscribeCallAnalyticsProcessorConfiguration"),
    type = "structure",
    members = {
        LanguageCode = schema.new({
            id = id.from(_N, "AmazonTranscribeCallAnalyticsProcessorConfiguration", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VocabularyName = schema.new({
            id = id.from(_N, "AmazonTranscribeCallAnalyticsProcessorConfiguration", "VocabularyName"),
            type = "string",
            name = "VocabularyName",
            target_id = prelude.String.id,
        }),
        VocabularyFilterName = schema.new({
            id = id.from(_N, "AmazonTranscribeCallAnalyticsProcessorConfiguration", "VocabularyFilterName"),
            type = "string",
            name = "VocabularyFilterName",
            target_id = prelude.String.id,
        }),
        VocabularyFilterMethod = schema.new({
            id = id.from(_N, "AmazonTranscribeCallAnalyticsProcessorConfiguration", "VocabularyFilterMethod"),
            type = "string",
            name = "VocabularyFilterMethod",
            target_id = prelude.String.id,
        }),
        LanguageModelName = schema.new({
            id = id.from(_N, "AmazonTranscribeCallAnalyticsProcessorConfiguration", "LanguageModelName"),
            type = "string",
            name = "LanguageModelName",
            target_id = prelude.String.id,
        }),
        EnablePartialResultsStabilization = schema.new({
            id = id.from(_N, "AmazonTranscribeCallAnalyticsProcessorConfiguration", "EnablePartialResultsStabilization"),
            type = "boolean",
            name = "EnablePartialResultsStabilization",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        PartialResultsStability = schema.new({
            id = id.from(_N, "AmazonTranscribeCallAnalyticsProcessorConfiguration", "PartialResultsStability"),
            type = "string",
            name = "PartialResultsStability",
            target_id = prelude.String.id,
        }),
        ContentIdentificationType = schema.new({
            id = id.from(_N, "AmazonTranscribeCallAnalyticsProcessorConfiguration", "ContentIdentificationType"),
            type = "string",
            name = "ContentIdentificationType",
            target_id = prelude.String.id,
        }),
        ContentRedactionType = schema.new({
            id = id.from(_N, "AmazonTranscribeCallAnalyticsProcessorConfiguration", "ContentRedactionType"),
            type = "string",
            name = "ContentRedactionType",
            target_id = prelude.String.id,
        }),
        PiiEntityTypes = schema.new({
            id = id.from(_N, "AmazonTranscribeCallAnalyticsProcessorConfiguration", "PiiEntityTypes"),
            type = "string",
            name = "PiiEntityTypes",
            target_id = prelude.String.id,
        }),
        FilterPartialResults = schema.new({
            id = id.from(_N, "AmazonTranscribeCallAnalyticsProcessorConfiguration", "FilterPartialResults"),
            type = "boolean",
            name = "FilterPartialResults",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        PostCallAnalyticsSettings = schema.new({
            id = id.from(_N, "AmazonTranscribeCallAnalyticsProcessorConfiguration", "PostCallAnalyticsSettings"),
            type = "structure",
            name = "PostCallAnalyticsSettings",
            target_id = id.from(_N, "PostCallAnalyticsSettings"),
            target = M.PostCallAnalyticsSettings,
        }),
        CallAnalyticsStreamCategories = schema.new({
            id = id.from(_N, "AmazonTranscribeCallAnalyticsProcessorConfiguration", "CallAnalyticsStreamCategories"),
            type = "list",
            name = "CallAnalyticsStreamCategories",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.AmazonTranscribeProcessorConfiguration = schema.new({
    id = id.from(_N, "AmazonTranscribeProcessorConfiguration"),
    type = "structure",
    members = {
        LanguageCode = schema.new({
            id = id.from(_N, "AmazonTranscribeProcessorConfiguration", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
        }),
        VocabularyName = schema.new({
            id = id.from(_N, "AmazonTranscribeProcessorConfiguration", "VocabularyName"),
            type = "string",
            name = "VocabularyName",
            target_id = prelude.String.id,
        }),
        VocabularyFilterName = schema.new({
            id = id.from(_N, "AmazonTranscribeProcessorConfiguration", "VocabularyFilterName"),
            type = "string",
            name = "VocabularyFilterName",
            target_id = prelude.String.id,
        }),
        VocabularyFilterMethod = schema.new({
            id = id.from(_N, "AmazonTranscribeProcessorConfiguration", "VocabularyFilterMethod"),
            type = "string",
            name = "VocabularyFilterMethod",
            target_id = prelude.String.id,
        }),
        ShowSpeakerLabel = schema.new({
            id = id.from(_N, "AmazonTranscribeProcessorConfiguration", "ShowSpeakerLabel"),
            type = "boolean",
            name = "ShowSpeakerLabel",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        EnablePartialResultsStabilization = schema.new({
            id = id.from(_N, "AmazonTranscribeProcessorConfiguration", "EnablePartialResultsStabilization"),
            type = "boolean",
            name = "EnablePartialResultsStabilization",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        PartialResultsStability = schema.new({
            id = id.from(_N, "AmazonTranscribeProcessorConfiguration", "PartialResultsStability"),
            type = "string",
            name = "PartialResultsStability",
            target_id = prelude.String.id,
        }),
        ContentIdentificationType = schema.new({
            id = id.from(_N, "AmazonTranscribeProcessorConfiguration", "ContentIdentificationType"),
            type = "string",
            name = "ContentIdentificationType",
            target_id = prelude.String.id,
        }),
        ContentRedactionType = schema.new({
            id = id.from(_N, "AmazonTranscribeProcessorConfiguration", "ContentRedactionType"),
            type = "string",
            name = "ContentRedactionType",
            target_id = prelude.String.id,
        }),
        PiiEntityTypes = schema.new({
            id = id.from(_N, "AmazonTranscribeProcessorConfiguration", "PiiEntityTypes"),
            type = "string",
            name = "PiiEntityTypes",
            target_id = prelude.String.id,
        }),
        LanguageModelName = schema.new({
            id = id.from(_N, "AmazonTranscribeProcessorConfiguration", "LanguageModelName"),
            type = "string",
            name = "LanguageModelName",
            target_id = prelude.String.id,
        }),
        FilterPartialResults = schema.new({
            id = id.from(_N, "AmazonTranscribeProcessorConfiguration", "FilterPartialResults"),
            type = "boolean",
            name = "FilterPartialResults",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        IdentifyLanguage = schema.new({
            id = id.from(_N, "AmazonTranscribeProcessorConfiguration", "IdentifyLanguage"),
            type = "boolean",
            name = "IdentifyLanguage",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        IdentifyMultipleLanguages = schema.new({
            id = id.from(_N, "AmazonTranscribeProcessorConfiguration", "IdentifyMultipleLanguages"),
            type = "boolean",
            name = "IdentifyMultipleLanguages",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        LanguageOptions = schema.new({
            id = id.from(_N, "AmazonTranscribeProcessorConfiguration", "LanguageOptions"),
            type = "string",
            name = "LanguageOptions",
            target_id = prelude.String.id,
        }),
        PreferredLanguage = schema.new({
            id = id.from(_N, "AmazonTranscribeProcessorConfiguration", "PreferredLanguage"),
            type = "string",
            name = "PreferredLanguage",
            target_id = prelude.String.id,
        }),
        VocabularyNames = schema.new({
            id = id.from(_N, "AmazonTranscribeProcessorConfiguration", "VocabularyNames"),
            type = "string",
            name = "VocabularyNames",
            target_id = prelude.String.id,
        }),
        VocabularyFilterNames = schema.new({
            id = id.from(_N, "AmazonTranscribeProcessorConfiguration", "VocabularyFilterNames"),
            type = "string",
            name = "VocabularyFilterNames",
            target_id = prelude.String.id,
        }),
    },
})

M.AudioConcatenationConfiguration = schema.new({
    id = id.from(_N, "AudioConcatenationConfiguration"),
    type = "structure",
    members = {
        State = schema.new({
            id = id.from(_N, "AudioConcatenationConfiguration", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CompositedVideoConcatenationConfiguration = schema.new({
    id = id.from(_N, "CompositedVideoConcatenationConfiguration"),
    type = "structure",
    members = {
        State = schema.new({
            id = id.from(_N, "CompositedVideoConcatenationConfiguration", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ContentConcatenationConfiguration = schema.new({
    id = id.from(_N, "ContentConcatenationConfiguration"),
    type = "structure",
    members = {
        State = schema.new({
            id = id.from(_N, "ContentConcatenationConfiguration", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DataChannelConcatenationConfiguration = schema.new({
    id = id.from(_N, "DataChannelConcatenationConfiguration"),
    type = "structure",
    members = {
        State = schema.new({
            id = id.from(_N, "DataChannelConcatenationConfiguration", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MeetingEventsConcatenationConfiguration = schema.new({
    id = id.from(_N, "MeetingEventsConcatenationConfiguration"),
    type = "structure",
    members = {
        State = schema.new({
            id = id.from(_N, "MeetingEventsConcatenationConfiguration", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TranscriptionMessagesConcatenationConfiguration = schema.new({
    id = id.from(_N, "TranscriptionMessagesConcatenationConfiguration"),
    type = "structure",
    members = {
        State = schema.new({
            id = id.from(_N, "TranscriptionMessagesConcatenationConfiguration", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.VideoConcatenationConfiguration = schema.new({
    id = id.from(_N, "VideoConcatenationConfiguration"),
    type = "structure",
    members = {
        State = schema.new({
            id = id.from(_N, "VideoConcatenationConfiguration", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ArtifactsConcatenationConfiguration = schema.new({
    id = id.from(_N, "ArtifactsConcatenationConfiguration"),
    type = "structure",
    members = {
        Audio = schema.new({
            id = id.from(_N, "ArtifactsConcatenationConfiguration", "Audio"),
            type = "structure",
            name = "Audio",
            target_id = id.from(_N, "AudioConcatenationConfiguration"),
            target = M.AudioConcatenationConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Video = schema.new({
            id = id.from(_N, "ArtifactsConcatenationConfiguration", "Video"),
            type = "structure",
            name = "Video",
            target_id = id.from(_N, "VideoConcatenationConfiguration"),
            target = M.VideoConcatenationConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Content = schema.new({
            id = id.from(_N, "ArtifactsConcatenationConfiguration", "Content"),
            type = "structure",
            name = "Content",
            target_id = id.from(_N, "ContentConcatenationConfiguration"),
            target = M.ContentConcatenationConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DataChannel = schema.new({
            id = id.from(_N, "ArtifactsConcatenationConfiguration", "DataChannel"),
            type = "structure",
            name = "DataChannel",
            target_id = id.from(_N, "DataChannelConcatenationConfiguration"),
            target = M.DataChannelConcatenationConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TranscriptionMessages = schema.new({
            id = id.from(_N, "ArtifactsConcatenationConfiguration", "TranscriptionMessages"),
            type = "structure",
            name = "TranscriptionMessages",
            target_id = id.from(_N, "TranscriptionMessagesConcatenationConfiguration"),
            target = M.TranscriptionMessagesConcatenationConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MeetingEvents = schema.new({
            id = id.from(_N, "ArtifactsConcatenationConfiguration", "MeetingEvents"),
            type = "structure",
            name = "MeetingEvents",
            target_id = id.from(_N, "MeetingEventsConcatenationConfiguration"),
            target = M.MeetingEventsConcatenationConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CompositedVideo = schema.new({
            id = id.from(_N, "ArtifactsConcatenationConfiguration", "CompositedVideo"),
            type = "structure",
            name = "CompositedVideo",
            target_id = id.from(_N, "CompositedVideoConcatenationConfiguration"),
            target = M.CompositedVideoConcatenationConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AudioArtifactsConfiguration = schema.new({
    id = id.from(_N, "AudioArtifactsConfiguration"),
    type = "structure",
    members = {
        MuxType = schema.new({
            id = id.from(_N, "AudioArtifactsConfiguration", "MuxType"),
            type = "string",
            name = "MuxType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.HorizontalLayoutConfiguration = schema.new({
    id = id.from(_N, "HorizontalLayoutConfiguration"),
    type = "structure",
    members = {
        TileOrder = schema.new({
            id = id.from(_N, "HorizontalLayoutConfiguration", "TileOrder"),
            type = "string",
            name = "TileOrder",
            target_id = prelude.String.id,
        }),
        TilePosition = schema.new({
            id = id.from(_N, "HorizontalLayoutConfiguration", "TilePosition"),
            type = "string",
            name = "TilePosition",
            target_id = prelude.String.id,
        }),
        TileCount = schema.new({
            id = id.from(_N, "HorizontalLayoutConfiguration", "TileCount"),
            type = "integer",
            name = "TileCount",
            target_id = prelude.Integer.id,
        }),
        TileAspectRatio = schema.new({
            id = id.from(_N, "HorizontalLayoutConfiguration", "TileAspectRatio"),
            type = "string",
            name = "TileAspectRatio",
            target_id = prelude.String.id,
        }),
    },
})

M.PresenterOnlyConfiguration = schema.new({
    id = id.from(_N, "PresenterOnlyConfiguration"),
    type = "structure",
    members = {
        PresenterPosition = schema.new({
            id = id.from(_N, "PresenterOnlyConfiguration", "PresenterPosition"),
            type = "string",
            name = "PresenterPosition",
            target_id = prelude.String.id,
        }),
    },
})

M.VerticalLayoutConfiguration = schema.new({
    id = id.from(_N, "VerticalLayoutConfiguration"),
    type = "structure",
    members = {
        TileOrder = schema.new({
            id = id.from(_N, "VerticalLayoutConfiguration", "TileOrder"),
            type = "string",
            name = "TileOrder",
            target_id = prelude.String.id,
        }),
        TilePosition = schema.new({
            id = id.from(_N, "VerticalLayoutConfiguration", "TilePosition"),
            type = "string",
            name = "TilePosition",
            target_id = prelude.String.id,
        }),
        TileCount = schema.new({
            id = id.from(_N, "VerticalLayoutConfiguration", "TileCount"),
            type = "integer",
            name = "TileCount",
            target_id = prelude.Integer.id,
        }),
        TileAspectRatio = schema.new({
            id = id.from(_N, "VerticalLayoutConfiguration", "TileAspectRatio"),
            type = "string",
            name = "TileAspectRatio",
            target_id = prelude.String.id,
        }),
    },
})

M.VideoAttribute = schema.new({
    id = id.from(_N, "VideoAttribute"),
    type = "structure",
    members = {
        CornerRadius = schema.new({
            id = id.from(_N, "VideoAttribute", "CornerRadius"),
            type = "integer",
            name = "CornerRadius",
            target_id = prelude.Integer.id,
        }),
        BorderColor = schema.new({
            id = id.from(_N, "VideoAttribute", "BorderColor"),
            type = "string",
            name = "BorderColor",
            target_id = prelude.String.id,
        }),
        HighlightColor = schema.new({
            id = id.from(_N, "VideoAttribute", "HighlightColor"),
            type = "string",
            name = "HighlightColor",
            target_id = prelude.String.id,
        }),
        BorderThickness = schema.new({
            id = id.from(_N, "VideoAttribute", "BorderThickness"),
            type = "integer",
            name = "BorderThickness",
            target_id = prelude.Integer.id,
        }),
    },
})

M.GridViewConfiguration = schema.new({
    id = id.from(_N, "GridViewConfiguration"),
    type = "structure",
    members = {
        ContentShareLayout = schema.new({
            id = id.from(_N, "GridViewConfiguration", "ContentShareLayout"),
            type = "string",
            name = "ContentShareLayout",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PresenterOnlyConfiguration = schema.new({
            id = id.from(_N, "GridViewConfiguration", "PresenterOnlyConfiguration"),
            type = "structure",
            name = "PresenterOnlyConfiguration",
            target_id = id.from(_N, "PresenterOnlyConfiguration"),
            target = M.PresenterOnlyConfiguration,
        }),
        ActiveSpeakerOnlyConfiguration = schema.new({
            id = id.from(_N, "GridViewConfiguration", "ActiveSpeakerOnlyConfiguration"),
            type = "structure",
            name = "ActiveSpeakerOnlyConfiguration",
            target_id = id.from(_N, "ActiveSpeakerOnlyConfiguration"),
            target = M.ActiveSpeakerOnlyConfiguration,
        }),
        HorizontalLayoutConfiguration = schema.new({
            id = id.from(_N, "GridViewConfiguration", "HorizontalLayoutConfiguration"),
            type = "structure",
            name = "HorizontalLayoutConfiguration",
            target_id = id.from(_N, "HorizontalLayoutConfiguration"),
            target = M.HorizontalLayoutConfiguration,
        }),
        VerticalLayoutConfiguration = schema.new({
            id = id.from(_N, "GridViewConfiguration", "VerticalLayoutConfiguration"),
            type = "structure",
            name = "VerticalLayoutConfiguration",
            target_id = id.from(_N, "VerticalLayoutConfiguration"),
            target = M.VerticalLayoutConfiguration,
        }),
        VideoAttribute = schema.new({
            id = id.from(_N, "GridViewConfiguration", "VideoAttribute"),
            type = "structure",
            name = "VideoAttribute",
            target_id = id.from(_N, "VideoAttribute"),
            target = M.VideoAttribute,
        }),
        CanvasOrientation = schema.new({
            id = id.from(_N, "GridViewConfiguration", "CanvasOrientation"),
            type = "string",
            name = "CanvasOrientation",
            target_id = prelude.String.id,
        }),
    },
})

M.CompositedVideoArtifactsConfiguration = schema.new({
    id = id.from(_N, "CompositedVideoArtifactsConfiguration"),
    type = "structure",
    members = {
        Layout = schema.new({
            id = id.from(_N, "CompositedVideoArtifactsConfiguration", "Layout"),
            type = "string",
            name = "Layout",
            target_id = prelude.String.id,
        }),
        Resolution = schema.new({
            id = id.from(_N, "CompositedVideoArtifactsConfiguration", "Resolution"),
            type = "string",
            name = "Resolution",
            target_id = prelude.String.id,
        }),
        GridViewConfiguration = schema.new({
            id = id.from(_N, "CompositedVideoArtifactsConfiguration", "GridViewConfiguration"),
            type = "structure",
            name = "GridViewConfiguration",
            target_id = id.from(_N, "GridViewConfiguration"),
            target = M.GridViewConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ContentArtifactsConfiguration = schema.new({
    id = id.from(_N, "ContentArtifactsConfiguration"),
    type = "structure",
    members = {
        State = schema.new({
            id = id.from(_N, "ContentArtifactsConfiguration", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MuxType = schema.new({
            id = id.from(_N, "ContentArtifactsConfiguration", "MuxType"),
            type = "string",
            name = "MuxType",
            target_id = prelude.String.id,
        }),
    },
})

M.VideoArtifactsConfiguration = schema.new({
    id = id.from(_N, "VideoArtifactsConfiguration"),
    type = "structure",
    members = {
        State = schema.new({
            id = id.from(_N, "VideoArtifactsConfiguration", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MuxType = schema.new({
            id = id.from(_N, "VideoArtifactsConfiguration", "MuxType"),
            type = "string",
            name = "MuxType",
            target_id = prelude.String.id,
        }),
    },
})

M.ArtifactsConfiguration = schema.new({
    id = id.from(_N, "ArtifactsConfiguration"),
    type = "structure",
    members = {
        Audio = schema.new({
            id = id.from(_N, "ArtifactsConfiguration", "Audio"),
            type = "structure",
            name = "Audio",
            target_id = id.from(_N, "AudioArtifactsConfiguration"),
            target = M.AudioArtifactsConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Video = schema.new({
            id = id.from(_N, "ArtifactsConfiguration", "Video"),
            type = "structure",
            name = "Video",
            target_id = id.from(_N, "VideoArtifactsConfiguration"),
            target = M.VideoArtifactsConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Content = schema.new({
            id = id.from(_N, "ArtifactsConfiguration", "Content"),
            type = "structure",
            name = "Content",
            target_id = id.from(_N, "ContentArtifactsConfiguration"),
            target = M.ContentArtifactsConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CompositedVideo = schema.new({
            id = id.from(_N, "ArtifactsConfiguration", "CompositedVideo"),
            type = "structure",
            name = "CompositedVideo",
            target_id = id.from(_N, "CompositedVideoArtifactsConfiguration"),
            target = M.CompositedVideoArtifactsConfiguration,
        }),
    },
})

M.BadRequestException = schema.new({
    id = id.from(_N, "BadRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "BadRequestException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "BadRequestException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "BadRequestException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.ChannelDefinition = schema.new({
    id = id.from(_N, "ChannelDefinition"),
    type = "structure",
    members = {
        ChannelId = schema.new({
            id = id.from(_N, "ChannelDefinition", "ChannelId"),
            type = "integer",
            name = "ChannelId",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ParticipantRole = schema.new({
            id = id.from(_N, "ChannelDefinition", "ParticipantRole"),
            type = "string",
            name = "ParticipantRole",
            target_id = prelude.String.id,
        }),
    },
})

M.SelectedVideoStreams = schema.new({
    id = id.from(_N, "SelectedVideoStreams"),
    type = "structure",
    members = {
        AttendeeIds = schema.new({
            id = id.from(_N, "SelectedVideoStreams", "AttendeeIds"),
            type = "list",
            name = "AttendeeIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ExternalUserIds = schema.new({
            id = id.from(_N, "SelectedVideoStreams", "ExternalUserIds"),
            type = "list",
            name = "ExternalUserIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.SourceConfiguration = schema.new({
    id = id.from(_N, "SourceConfiguration"),
    type = "structure",
    members = {
        SelectedVideoStreams = schema.new({
            id = id.from(_N, "SourceConfiguration", "SelectedVideoStreams"),
            type = "structure",
            name = "SelectedVideoStreams",
            target_id = id.from(_N, "SelectedVideoStreams"),
            target = M.SelectedVideoStreams,
        }),
    },
})

M.ChimeSdkMeetingConfiguration = schema.new({
    id = id.from(_N, "ChimeSdkMeetingConfiguration"),
    type = "structure",
    members = {
        SourceConfiguration = schema.new({
            id = id.from(_N, "ChimeSdkMeetingConfiguration", "SourceConfiguration"),
            type = "structure",
            name = "SourceConfiguration",
            target_id = id.from(_N, "SourceConfiguration"),
            target = M.SourceConfiguration,
        }),
        ArtifactsConfiguration = schema.new({
            id = id.from(_N, "ChimeSdkMeetingConfiguration", "ArtifactsConfiguration"),
            type = "structure",
            name = "ArtifactsConfiguration",
            target_id = id.from(_N, "ArtifactsConfiguration"),
            target = M.ArtifactsConfiguration,
        }),
    },
})

M.SseAwsKeyManagementParams = schema.new({
    id = id.from(_N, "SseAwsKeyManagementParams"),
    type = "structure",
    members = {
        AwsKmsKeyId = schema.new({
            id = id.from(_N, "SseAwsKeyManagementParams", "AwsKmsKeyId"),
            type = "string",
            name = "AwsKmsKeyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AwsKmsEncryptionContext = schema.new({
            id = id.from(_N, "SseAwsKeyManagementParams", "AwsKmsEncryptionContext"),
            type = "string",
            name = "AwsKmsEncryptionContext",
            target_id = prelude.String.id,
        }),
    },
})

M.Tag = schema.new({
    id = id.from(_N, "Tag"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "Tag", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "Tag", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateMediaCapturePipelineInput = schema.new({
    id = id.from(_N, "CreateMediaCapturePipelineRequest"),
    type = "structure",
    members = {
        SourceType = schema.new({
            id = id.from(_N, "CreateMediaCapturePipelineInput", "SourceType"),
            type = "string",
            name = "SourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SourceArn = schema.new({
            id = id.from(_N, "CreateMediaCapturePipelineInput", "SourceArn"),
            type = "string",
            name = "SourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SinkType = schema.new({
            id = id.from(_N, "CreateMediaCapturePipelineInput", "SinkType"),
            type = "string",
            name = "SinkType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SinkArn = schema.new({
            id = id.from(_N, "CreateMediaCapturePipelineInput", "SinkArn"),
            type = "string",
            name = "SinkArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "CreateMediaCapturePipelineInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        ChimeSdkMeetingConfiguration = schema.new({
            id = id.from(_N, "CreateMediaCapturePipelineInput", "ChimeSdkMeetingConfiguration"),
            type = "structure",
            name = "ChimeSdkMeetingConfiguration",
            target_id = id.from(_N, "ChimeSdkMeetingConfiguration"),
            target = M.ChimeSdkMeetingConfiguration,
        }),
        SseAwsKeyManagementParams = schema.new({
            id = id.from(_N, "CreateMediaCapturePipelineInput", "SseAwsKeyManagementParams"),
            type = "structure",
            name = "SseAwsKeyManagementParams",
            target_id = id.from(_N, "SseAwsKeyManagementParams"),
            target = M.SseAwsKeyManagementParams,
        }),
        SinkIamRoleArn = schema.new({
            id = id.from(_N, "CreateMediaCapturePipelineInput", "SinkIamRoleArn"),
            type = "string",
            name = "SinkIamRoleArn",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateMediaCapturePipelineInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.MediaCapturePipeline = schema.new({
    id = id.from(_N, "MediaCapturePipeline"),
    type = "structure",
    members = {
        MediaPipelineId = schema.new({
            id = id.from(_N, "MediaCapturePipeline", "MediaPipelineId"),
            type = "string",
            name = "MediaPipelineId",
            target_id = prelude.String.id,
        }),
        MediaPipelineArn = schema.new({
            id = id.from(_N, "MediaCapturePipeline", "MediaPipelineArn"),
            type = "string",
            name = "MediaPipelineArn",
            target_id = prelude.String.id,
        }),
        SourceType = schema.new({
            id = id.from(_N, "MediaCapturePipeline", "SourceType"),
            type = "string",
            name = "SourceType",
            target_id = prelude.String.id,
        }),
        SourceArn = schema.new({
            id = id.from(_N, "MediaCapturePipeline", "SourceArn"),
            type = "string",
            name = "SourceArn",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "MediaCapturePipeline", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        SinkType = schema.new({
            id = id.from(_N, "MediaCapturePipeline", "SinkType"),
            type = "string",
            name = "SinkType",
            target_id = prelude.String.id,
        }),
        SinkArn = schema.new({
            id = id.from(_N, "MediaCapturePipeline", "SinkArn"),
            type = "string",
            name = "SinkArn",
            target_id = prelude.String.id,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "MediaCapturePipeline", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        UpdatedTimestamp = schema.new({
            id = id.from(_N, "MediaCapturePipeline", "UpdatedTimestamp"),
            type = "timestamp",
            name = "UpdatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        ChimeSdkMeetingConfiguration = schema.new({
            id = id.from(_N, "MediaCapturePipeline", "ChimeSdkMeetingConfiguration"),
            type = "structure",
            name = "ChimeSdkMeetingConfiguration",
            target_id = id.from(_N, "ChimeSdkMeetingConfiguration"),
            target = M.ChimeSdkMeetingConfiguration,
        }),
        SseAwsKeyManagementParams = schema.new({
            id = id.from(_N, "MediaCapturePipeline", "SseAwsKeyManagementParams"),
            type = "structure",
            name = "SseAwsKeyManagementParams",
            target_id = id.from(_N, "SseAwsKeyManagementParams"),
            target = M.SseAwsKeyManagementParams,
        }),
        SinkIamRoleArn = schema.new({
            id = id.from(_N, "MediaCapturePipeline", "SinkIamRoleArn"),
            type = "string",
            name = "SinkIamRoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateMediaCapturePipelineOutput = schema.new({
    id = id.from(_N, "CreateMediaCapturePipelineResponse"),
    type = "structure",
    members = {
        MediaCapturePipeline = schema.new({
            id = id.from(_N, "CreateMediaCapturePipelineOutput", "MediaCapturePipeline"),
            type = "structure",
            name = "MediaCapturePipeline",
            target_id = id.from(_N, "MediaCapturePipeline"),
            target = M.MediaCapturePipeline,
        }),
    },
})

M.ForbiddenException = schema.new({
    id = id.from(_N, "ForbiddenException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "ForbiddenException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ForbiddenException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "ForbiddenException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceLimitExceededException = schema.new({
    id = id.from(_N, "ResourceLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "ResourceLimitExceededException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ResourceLimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "ResourceLimitExceededException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceFailureException = schema.new({
    id = id.from(_N, "ServiceFailureException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "ServiceFailureException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ServiceFailureException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "ServiceFailureException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceUnavailableException = schema.new({
    id = id.from(_N, "ServiceUnavailableException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "ServiceUnavailableException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ServiceUnavailableException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "ServiceUnavailableException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.ThrottledClientException = schema.new({
    id = id.from(_N, "ThrottledClientException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "ThrottledClientException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ThrottledClientException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "ThrottledClientException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.UnauthorizedClientException = schema.new({
    id = id.from(_N, "UnauthorizedClientException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "UnauthorizedClientException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "UnauthorizedClientException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "UnauthorizedClientException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.S3BucketSinkConfiguration = schema.new({
    id = id.from(_N, "S3BucketSinkConfiguration"),
    type = "structure",
    members = {
        Destination = schema.new({
            id = id.from(_N, "S3BucketSinkConfiguration", "Destination"),
            type = "string",
            name = "Destination",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConcatenationSink = schema.new({
    id = id.from(_N, "ConcatenationSink"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "ConcatenationSink", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        S3BucketSinkConfiguration = schema.new({
            id = id.from(_N, "ConcatenationSink", "S3BucketSinkConfiguration"),
            type = "structure",
            name = "S3BucketSinkConfiguration",
            target_id = id.from(_N, "S3BucketSinkConfiguration"),
            target = M.S3BucketSinkConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ChimeSdkMeetingConcatenationConfiguration = schema.new({
    id = id.from(_N, "ChimeSdkMeetingConcatenationConfiguration"),
    type = "structure",
    members = {
        ArtifactsConfiguration = schema.new({
            id = id.from(_N, "ChimeSdkMeetingConcatenationConfiguration", "ArtifactsConfiguration"),
            type = "structure",
            name = "ArtifactsConfiguration",
            target_id = id.from(_N, "ArtifactsConcatenationConfiguration"),
            target = M.ArtifactsConcatenationConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MediaCapturePipelineSourceConfiguration = schema.new({
    id = id.from(_N, "MediaCapturePipelineSourceConfiguration"),
    type = "structure",
    members = {
        MediaPipelineArn = schema.new({
            id = id.from(_N, "MediaCapturePipelineSourceConfiguration", "MediaPipelineArn"),
            type = "string",
            name = "MediaPipelineArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChimeSdkMeetingConfiguration = schema.new({
            id = id.from(_N, "MediaCapturePipelineSourceConfiguration", "ChimeSdkMeetingConfiguration"),
            type = "structure",
            name = "ChimeSdkMeetingConfiguration",
            target_id = id.from(_N, "ChimeSdkMeetingConcatenationConfiguration"),
            target = M.ChimeSdkMeetingConcatenationConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConcatenationSource = schema.new({
    id = id.from(_N, "ConcatenationSource"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "ConcatenationSource", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MediaCapturePipelineSourceConfiguration = schema.new({
            id = id.from(_N, "ConcatenationSource", "MediaCapturePipelineSourceConfiguration"),
            type = "structure",
            name = "MediaCapturePipelineSourceConfiguration",
            target_id = id.from(_N, "MediaCapturePipelineSourceConfiguration"),
            target = M.MediaCapturePipelineSourceConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateMediaConcatenationPipelineInput = schema.new({
    id = id.from(_N, "CreateMediaConcatenationPipelineRequest"),
    type = "structure",
    members = {
        Sources = schema.new({
            id = id.from(_N, "CreateMediaConcatenationPipelineInput", "Sources"),
            type = "list",
            name = "Sources",
            target_id = prelude.Document.id,
            list_member = M.ConcatenationSource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Sinks = schema.new({
            id = id.from(_N, "CreateMediaConcatenationPipelineInput", "Sinks"),
            type = "list",
            name = "Sinks",
            target_id = prelude.Document.id,
            list_member = M.ConcatenationSink,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "CreateMediaConcatenationPipelineInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateMediaConcatenationPipelineInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.MediaConcatenationPipeline = schema.new({
    id = id.from(_N, "MediaConcatenationPipeline"),
    type = "structure",
    members = {
        MediaPipelineId = schema.new({
            id = id.from(_N, "MediaConcatenationPipeline", "MediaPipelineId"),
            type = "string",
            name = "MediaPipelineId",
            target_id = prelude.String.id,
        }),
        MediaPipelineArn = schema.new({
            id = id.from(_N, "MediaConcatenationPipeline", "MediaPipelineArn"),
            type = "string",
            name = "MediaPipelineArn",
            target_id = prelude.String.id,
        }),
        Sources = schema.new({
            id = id.from(_N, "MediaConcatenationPipeline", "Sources"),
            type = "list",
            name = "Sources",
            target_id = prelude.Document.id,
            list_member = M.ConcatenationSource,
        }),
        Sinks = schema.new({
            id = id.from(_N, "MediaConcatenationPipeline", "Sinks"),
            type = "list",
            name = "Sinks",
            target_id = prelude.Document.id,
            list_member = M.ConcatenationSink,
        }),
        Status = schema.new({
            id = id.from(_N, "MediaConcatenationPipeline", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "MediaConcatenationPipeline", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        UpdatedTimestamp = schema.new({
            id = id.from(_N, "MediaConcatenationPipeline", "UpdatedTimestamp"),
            type = "timestamp",
            name = "UpdatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.CreateMediaConcatenationPipelineOutput = schema.new({
    id = id.from(_N, "CreateMediaConcatenationPipelineResponse"),
    type = "structure",
    members = {
        MediaConcatenationPipeline = schema.new({
            id = id.from(_N, "CreateMediaConcatenationPipelineOutput", "MediaConcatenationPipeline"),
            type = "structure",
            name = "MediaConcatenationPipeline",
            target_id = id.from(_N, "MediaConcatenationPipeline"),
            target = M.MediaConcatenationPipeline,
        }),
    },
})

M.TimestampRange = schema.new({
    id = id.from(_N, "TimestampRange"),
    type = "structure",
    members = {
        StartTimestamp = schema.new({
            id = id.from(_N, "TimestampRange", "StartTimestamp"),
            type = "timestamp",
            name = "StartTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EndTimestamp = schema.new({
            id = id.from(_N, "TimestampRange", "EndTimestamp"),
            type = "timestamp",
            name = "EndTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.FragmentSelector = schema.new({
    id = id.from(_N, "FragmentSelector"),
    type = "structure",
    members = {
        FragmentSelectorType = schema.new({
            id = id.from(_N, "FragmentSelector", "FragmentSelectorType"),
            type = "string",
            name = "FragmentSelectorType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TimestampRange = schema.new({
            id = id.from(_N, "FragmentSelector", "TimestampRange"),
            type = "structure",
            name = "TimestampRange",
            target_id = id.from(_N, "TimestampRange"),
            target = M.TimestampRange,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RecordingStreamConfiguration = schema.new({
    id = id.from(_N, "RecordingStreamConfiguration"),
    type = "structure",
    members = {
        StreamArn = schema.new({
            id = id.from(_N, "RecordingStreamConfiguration", "StreamArn"),
            type = "string",
            name = "StreamArn",
            target_id = prelude.String.id,
        }),
    },
})

M.KinesisVideoStreamRecordingSourceRuntimeConfiguration = schema.new({
    id = id.from(_N, "KinesisVideoStreamRecordingSourceRuntimeConfiguration"),
    type = "structure",
    members = {
        Streams = schema.new({
            id = id.from(_N, "KinesisVideoStreamRecordingSourceRuntimeConfiguration", "Streams"),
            type = "list",
            name = "Streams",
            target_id = prelude.Document.id,
            list_member = M.RecordingStreamConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FragmentSelector = schema.new({
            id = id.from(_N, "KinesisVideoStreamRecordingSourceRuntimeConfiguration", "FragmentSelector"),
            type = "structure",
            name = "FragmentSelector",
            target_id = id.from(_N, "FragmentSelector"),
            target = M.FragmentSelector,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StreamChannelDefinition = schema.new({
    id = id.from(_N, "StreamChannelDefinition"),
    type = "structure",
    members = {
        NumberOfChannels = schema.new({
            id = id.from(_N, "StreamChannelDefinition", "NumberOfChannels"),
            type = "integer",
            name = "NumberOfChannels",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChannelDefinitions = schema.new({
            id = id.from(_N, "StreamChannelDefinition", "ChannelDefinitions"),
            type = "list",
            name = "ChannelDefinitions",
            target_id = prelude.Document.id,
            list_member = M.ChannelDefinition,
        }),
    },
})

M.StreamConfiguration = schema.new({
    id = id.from(_N, "StreamConfiguration"),
    type = "structure",
    members = {
        StreamArn = schema.new({
            id = id.from(_N, "StreamConfiguration", "StreamArn"),
            type = "string",
            name = "StreamArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FragmentNumber = schema.new({
            id = id.from(_N, "StreamConfiguration", "FragmentNumber"),
            type = "string",
            name = "FragmentNumber",
            target_id = prelude.String.id,
        }),
        StreamChannelDefinition = schema.new({
            id = id.from(_N, "StreamConfiguration", "StreamChannelDefinition"),
            type = "structure",
            name = "StreamChannelDefinition",
            target_id = id.from(_N, "StreamChannelDefinition"),
            target = M.StreamChannelDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.KinesisVideoStreamSourceRuntimeConfiguration = schema.new({
    id = id.from(_N, "KinesisVideoStreamSourceRuntimeConfiguration"),
    type = "structure",
    members = {
        Streams = schema.new({
            id = id.from(_N, "KinesisVideoStreamSourceRuntimeConfiguration", "Streams"),
            type = "list",
            name = "Streams",
            target_id = prelude.Document.id,
            list_member = M.StreamConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MediaEncoding = schema.new({
            id = id.from(_N, "KinesisVideoStreamSourceRuntimeConfiguration", "MediaEncoding"),
            type = "string",
            name = "MediaEncoding",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MediaSampleRate = schema.new({
            id = id.from(_N, "KinesisVideoStreamSourceRuntimeConfiguration", "MediaSampleRate"),
            type = "integer",
            name = "MediaSampleRate",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.S3RecordingSinkRuntimeConfiguration = schema.new({
    id = id.from(_N, "S3RecordingSinkRuntimeConfiguration"),
    type = "structure",
    members = {
        Destination = schema.new({
            id = id.from(_N, "S3RecordingSinkRuntimeConfiguration", "Destination"),
            type = "string",
            name = "Destination",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RecordingFileFormat = schema.new({
            id = id.from(_N, "S3RecordingSinkRuntimeConfiguration", "RecordingFileFormat"),
            type = "string",
            name = "RecordingFileFormat",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateMediaInsightsPipelineInput = schema.new({
    id = id.from(_N, "CreateMediaInsightsPipelineRequest"),
    type = "structure",
    members = {
        MediaInsightsPipelineConfigurationArn = schema.new({
            id = id.from(_N, "CreateMediaInsightsPipelineInput", "MediaInsightsPipelineConfigurationArn"),
            type = "string",
            name = "MediaInsightsPipelineConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KinesisVideoStreamSourceRuntimeConfiguration = schema.new({
            id = id.from(_N, "CreateMediaInsightsPipelineInput", "KinesisVideoStreamSourceRuntimeConfiguration"),
            type = "structure",
            name = "KinesisVideoStreamSourceRuntimeConfiguration",
            target_id = id.from(_N, "KinesisVideoStreamSourceRuntimeConfiguration"),
            target = M.KinesisVideoStreamSourceRuntimeConfiguration,
        }),
        MediaInsightsRuntimeMetadata = schema.new({
            id = id.from(_N, "CreateMediaInsightsPipelineInput", "MediaInsightsRuntimeMetadata"),
            type = "map",
            name = "MediaInsightsRuntimeMetadata",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        KinesisVideoStreamRecordingSourceRuntimeConfiguration = schema.new({
            id = id.from(_N, "CreateMediaInsightsPipelineInput", "KinesisVideoStreamRecordingSourceRuntimeConfiguration"),
            type = "structure",
            name = "KinesisVideoStreamRecordingSourceRuntimeConfiguration",
            target_id = id.from(_N, "KinesisVideoStreamRecordingSourceRuntimeConfiguration"),
            target = M.KinesisVideoStreamRecordingSourceRuntimeConfiguration,
        }),
        S3RecordingSinkRuntimeConfiguration = schema.new({
            id = id.from(_N, "CreateMediaInsightsPipelineInput", "S3RecordingSinkRuntimeConfiguration"),
            type = "structure",
            name = "S3RecordingSinkRuntimeConfiguration",
            target_id = id.from(_N, "S3RecordingSinkRuntimeConfiguration"),
            target = M.S3RecordingSinkRuntimeConfiguration,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateMediaInsightsPipelineInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "CreateMediaInsightsPipelineInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.MediaInsightsPipelineElementStatus = schema.new({
    id = id.from(_N, "MediaInsightsPipelineElementStatus"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "MediaInsightsPipelineElementStatus", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "MediaInsightsPipelineElementStatus", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.MediaInsightsPipeline = schema.new({
    id = id.from(_N, "MediaInsightsPipeline"),
    type = "structure",
    members = {
        MediaPipelineId = schema.new({
            id = id.from(_N, "MediaInsightsPipeline", "MediaPipelineId"),
            type = "string",
            name = "MediaPipelineId",
            target_id = prelude.String.id,
        }),
        MediaPipelineArn = schema.new({
            id = id.from(_N, "MediaInsightsPipeline", "MediaPipelineArn"),
            type = "string",
            name = "MediaPipelineArn",
            target_id = prelude.String.id,
        }),
        MediaInsightsPipelineConfigurationArn = schema.new({
            id = id.from(_N, "MediaInsightsPipeline", "MediaInsightsPipelineConfigurationArn"),
            type = "string",
            name = "MediaInsightsPipelineConfigurationArn",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "MediaInsightsPipeline", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        KinesisVideoStreamSourceRuntimeConfiguration = schema.new({
            id = id.from(_N, "MediaInsightsPipeline", "KinesisVideoStreamSourceRuntimeConfiguration"),
            type = "structure",
            name = "KinesisVideoStreamSourceRuntimeConfiguration",
            target_id = id.from(_N, "KinesisVideoStreamSourceRuntimeConfiguration"),
            target = M.KinesisVideoStreamSourceRuntimeConfiguration,
        }),
        MediaInsightsRuntimeMetadata = schema.new({
            id = id.from(_N, "MediaInsightsPipeline", "MediaInsightsRuntimeMetadata"),
            type = "map",
            name = "MediaInsightsRuntimeMetadata",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        KinesisVideoStreamRecordingSourceRuntimeConfiguration = schema.new({
            id = id.from(_N, "MediaInsightsPipeline", "KinesisVideoStreamRecordingSourceRuntimeConfiguration"),
            type = "structure",
            name = "KinesisVideoStreamRecordingSourceRuntimeConfiguration",
            target_id = id.from(_N, "KinesisVideoStreamRecordingSourceRuntimeConfiguration"),
            target = M.KinesisVideoStreamRecordingSourceRuntimeConfiguration,
        }),
        S3RecordingSinkRuntimeConfiguration = schema.new({
            id = id.from(_N, "MediaInsightsPipeline", "S3RecordingSinkRuntimeConfiguration"),
            type = "structure",
            name = "S3RecordingSinkRuntimeConfiguration",
            target_id = id.from(_N, "S3RecordingSinkRuntimeConfiguration"),
            target = M.S3RecordingSinkRuntimeConfiguration,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "MediaInsightsPipeline", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        ElementStatuses = schema.new({
            id = id.from(_N, "MediaInsightsPipeline", "ElementStatuses"),
            type = "list",
            name = "ElementStatuses",
            target_id = prelude.Document.id,
            list_member = M.MediaInsightsPipelineElementStatus,
        }),
    },
})

M.CreateMediaInsightsPipelineOutput = schema.new({
    id = id.from(_N, "CreateMediaInsightsPipelineResponse"),
    type = "structure",
    members = {
        MediaInsightsPipeline = schema.new({
            id = id.from(_N, "CreateMediaInsightsPipelineOutput", "MediaInsightsPipeline"),
            type = "structure",
            name = "MediaInsightsPipeline",
            target_id = id.from(_N, "MediaInsightsPipeline"),
            target = M.MediaInsightsPipeline,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.NotFoundException = schema.new({
    id = id.from(_N, "NotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "NotFoundException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "NotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "NotFoundException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.KinesisDataStreamSinkConfiguration = schema.new({
    id = id.from(_N, "KinesisDataStreamSinkConfiguration"),
    type = "structure",
    members = {
        InsightsTarget = schema.new({
            id = id.from(_N, "KinesisDataStreamSinkConfiguration", "InsightsTarget"),
            type = "string",
            name = "InsightsTarget",
            target_id = prelude.String.id,
        }),
    },
})

M.LambdaFunctionSinkConfiguration = schema.new({
    id = id.from(_N, "LambdaFunctionSinkConfiguration"),
    type = "structure",
    members = {
        InsightsTarget = schema.new({
            id = id.from(_N, "LambdaFunctionSinkConfiguration", "InsightsTarget"),
            type = "string",
            name = "InsightsTarget",
            target_id = prelude.String.id,
        }),
    },
})

M.S3RecordingSinkConfiguration = schema.new({
    id = id.from(_N, "S3RecordingSinkConfiguration"),
    type = "structure",
    members = {
        Destination = schema.new({
            id = id.from(_N, "S3RecordingSinkConfiguration", "Destination"),
            type = "string",
            name = "Destination",
            target_id = prelude.String.id,
        }),
        RecordingFileFormat = schema.new({
            id = id.from(_N, "S3RecordingSinkConfiguration", "RecordingFileFormat"),
            type = "string",
            name = "RecordingFileFormat",
            target_id = prelude.String.id,
        }),
    },
})

M.SnsTopicSinkConfiguration = schema.new({
    id = id.from(_N, "SnsTopicSinkConfiguration"),
    type = "structure",
    members = {
        InsightsTarget = schema.new({
            id = id.from(_N, "SnsTopicSinkConfiguration", "InsightsTarget"),
            type = "string",
            name = "InsightsTarget",
            target_id = prelude.String.id,
        }),
    },
})

M.SqsQueueSinkConfiguration = schema.new({
    id = id.from(_N, "SqsQueueSinkConfiguration"),
    type = "structure",
    members = {
        InsightsTarget = schema.new({
            id = id.from(_N, "SqsQueueSinkConfiguration", "InsightsTarget"),
            type = "string",
            name = "InsightsTarget",
            target_id = prelude.String.id,
        }),
    },
})

M.VoiceAnalyticsProcessorConfiguration = schema.new({
    id = id.from(_N, "VoiceAnalyticsProcessorConfiguration"),
    type = "structure",
    members = {
        SpeakerSearchStatus = schema.new({
            id = id.from(_N, "VoiceAnalyticsProcessorConfiguration", "SpeakerSearchStatus"),
            type = "string",
            name = "SpeakerSearchStatus",
            target_id = prelude.String.id,
        }),
        VoiceToneAnalysisStatus = schema.new({
            id = id.from(_N, "VoiceAnalyticsProcessorConfiguration", "VoiceToneAnalysisStatus"),
            type = "string",
            name = "VoiceToneAnalysisStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.VoiceEnhancementSinkConfiguration = schema.new({
    id = id.from(_N, "VoiceEnhancementSinkConfiguration"),
    type = "structure",
    members = {
        Disabled = schema.new({
            id = id.from(_N, "VoiceEnhancementSinkConfiguration", "Disabled"),
            type = "boolean",
            name = "Disabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.MediaInsightsPipelineConfigurationElement = schema.new({
    id = id.from(_N, "MediaInsightsPipelineConfigurationElement"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "MediaInsightsPipelineConfigurationElement", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AmazonTranscribeCallAnalyticsProcessorConfiguration = schema.new({
            id = id.from(_N, "MediaInsightsPipelineConfigurationElement", "AmazonTranscribeCallAnalyticsProcessorConfiguration"),
            type = "structure",
            name = "AmazonTranscribeCallAnalyticsProcessorConfiguration",
            target_id = id.from(_N, "AmazonTranscribeCallAnalyticsProcessorConfiguration"),
            target = M.AmazonTranscribeCallAnalyticsProcessorConfiguration,
        }),
        AmazonTranscribeProcessorConfiguration = schema.new({
            id = id.from(_N, "MediaInsightsPipelineConfigurationElement", "AmazonTranscribeProcessorConfiguration"),
            type = "structure",
            name = "AmazonTranscribeProcessorConfiguration",
            target_id = id.from(_N, "AmazonTranscribeProcessorConfiguration"),
            target = M.AmazonTranscribeProcessorConfiguration,
        }),
        KinesisDataStreamSinkConfiguration = schema.new({
            id = id.from(_N, "MediaInsightsPipelineConfigurationElement", "KinesisDataStreamSinkConfiguration"),
            type = "structure",
            name = "KinesisDataStreamSinkConfiguration",
            target_id = id.from(_N, "KinesisDataStreamSinkConfiguration"),
            target = M.KinesisDataStreamSinkConfiguration,
        }),
        S3RecordingSinkConfiguration = schema.new({
            id = id.from(_N, "MediaInsightsPipelineConfigurationElement", "S3RecordingSinkConfiguration"),
            type = "structure",
            name = "S3RecordingSinkConfiguration",
            target_id = id.from(_N, "S3RecordingSinkConfiguration"),
            target = M.S3RecordingSinkConfiguration,
        }),
        VoiceAnalyticsProcessorConfiguration = schema.new({
            id = id.from(_N, "MediaInsightsPipelineConfigurationElement", "VoiceAnalyticsProcessorConfiguration"),
            type = "structure",
            name = "VoiceAnalyticsProcessorConfiguration",
            target_id = id.from(_N, "VoiceAnalyticsProcessorConfiguration"),
            target = M.VoiceAnalyticsProcessorConfiguration,
        }),
        LambdaFunctionSinkConfiguration = schema.new({
            id = id.from(_N, "MediaInsightsPipelineConfigurationElement", "LambdaFunctionSinkConfiguration"),
            type = "structure",
            name = "LambdaFunctionSinkConfiguration",
            target_id = id.from(_N, "LambdaFunctionSinkConfiguration"),
            target = M.LambdaFunctionSinkConfiguration,
        }),
        SqsQueueSinkConfiguration = schema.new({
            id = id.from(_N, "MediaInsightsPipelineConfigurationElement", "SqsQueueSinkConfiguration"),
            type = "structure",
            name = "SqsQueueSinkConfiguration",
            target_id = id.from(_N, "SqsQueueSinkConfiguration"),
            target = M.SqsQueueSinkConfiguration,
        }),
        SnsTopicSinkConfiguration = schema.new({
            id = id.from(_N, "MediaInsightsPipelineConfigurationElement", "SnsTopicSinkConfiguration"),
            type = "structure",
            name = "SnsTopicSinkConfiguration",
            target_id = id.from(_N, "SnsTopicSinkConfiguration"),
            target = M.SnsTopicSinkConfiguration,
        }),
        VoiceEnhancementSinkConfiguration = schema.new({
            id = id.from(_N, "MediaInsightsPipelineConfigurationElement", "VoiceEnhancementSinkConfiguration"),
            type = "structure",
            name = "VoiceEnhancementSinkConfiguration",
            target_id = id.from(_N, "VoiceEnhancementSinkConfiguration"),
            target = M.VoiceEnhancementSinkConfiguration,
        }),
    },
})

M.IssueDetectionConfiguration = schema.new({
    id = id.from(_N, "IssueDetectionConfiguration"),
    type = "structure",
    members = {
        RuleName = schema.new({
            id = id.from(_N, "IssueDetectionConfiguration", "RuleName"),
            type = "string",
            name = "RuleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.KeywordMatchConfiguration = schema.new({
    id = id.from(_N, "KeywordMatchConfiguration"),
    type = "structure",
    members = {
        RuleName = schema.new({
            id = id.from(_N, "KeywordMatchConfiguration", "RuleName"),
            type = "string",
            name = "RuleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Keywords = schema.new({
            id = id.from(_N, "KeywordMatchConfiguration", "Keywords"),
            type = "list",
            name = "Keywords",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Negate = schema.new({
            id = id.from(_N, "KeywordMatchConfiguration", "Negate"),
            type = "boolean",
            name = "Negate",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.SentimentConfiguration = schema.new({
    id = id.from(_N, "SentimentConfiguration"),
    type = "structure",
    members = {
        RuleName = schema.new({
            id = id.from(_N, "SentimentConfiguration", "RuleName"),
            type = "string",
            name = "RuleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SentimentType = schema.new({
            id = id.from(_N, "SentimentConfiguration", "SentimentType"),
            type = "string",
            name = "SentimentType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TimePeriod = schema.new({
            id = id.from(_N, "SentimentConfiguration", "TimePeriod"),
            type = "integer",
            name = "TimePeriod",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RealTimeAlertRule = schema.new({
    id = id.from(_N, "RealTimeAlertRule"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "RealTimeAlertRule", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KeywordMatchConfiguration = schema.new({
            id = id.from(_N, "RealTimeAlertRule", "KeywordMatchConfiguration"),
            type = "structure",
            name = "KeywordMatchConfiguration",
            target_id = id.from(_N, "KeywordMatchConfiguration"),
            target = M.KeywordMatchConfiguration,
        }),
        SentimentConfiguration = schema.new({
            id = id.from(_N, "RealTimeAlertRule", "SentimentConfiguration"),
            type = "structure",
            name = "SentimentConfiguration",
            target_id = id.from(_N, "SentimentConfiguration"),
            target = M.SentimentConfiguration,
        }),
        IssueDetectionConfiguration = schema.new({
            id = id.from(_N, "RealTimeAlertRule", "IssueDetectionConfiguration"),
            type = "structure",
            name = "IssueDetectionConfiguration",
            target_id = id.from(_N, "IssueDetectionConfiguration"),
            target = M.IssueDetectionConfiguration,
        }),
    },
})

M.RealTimeAlertConfiguration = schema.new({
    id = id.from(_N, "RealTimeAlertConfiguration"),
    type = "structure",
    members = {
        Disabled = schema.new({
            id = id.from(_N, "RealTimeAlertConfiguration", "Disabled"),
            type = "boolean",
            name = "Disabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Rules = schema.new({
            id = id.from(_N, "RealTimeAlertConfiguration", "Rules"),
            type = "list",
            name = "Rules",
            target_id = prelude.Document.id,
            list_member = M.RealTimeAlertRule,
        }),
    },
})

M.CreateMediaInsightsPipelineConfigurationInput = schema.new({
    id = id.from(_N, "CreateMediaInsightsPipelineConfigurationRequest"),
    type = "structure",
    members = {
        MediaInsightsPipelineConfigurationName = schema.new({
            id = id.from(_N, "CreateMediaInsightsPipelineConfigurationInput", "MediaInsightsPipelineConfigurationName"),
            type = "string",
            name = "MediaInsightsPipelineConfigurationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceAccessRoleArn = schema.new({
            id = id.from(_N, "CreateMediaInsightsPipelineConfigurationInput", "ResourceAccessRoleArn"),
            type = "string",
            name = "ResourceAccessRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RealTimeAlertConfiguration = schema.new({
            id = id.from(_N, "CreateMediaInsightsPipelineConfigurationInput", "RealTimeAlertConfiguration"),
            type = "structure",
            name = "RealTimeAlertConfiguration",
            target_id = id.from(_N, "RealTimeAlertConfiguration"),
            target = M.RealTimeAlertConfiguration,
        }),
        Elements = schema.new({
            id = id.from(_N, "CreateMediaInsightsPipelineConfigurationInput", "Elements"),
            type = "list",
            name = "Elements",
            target_id = prelude.Document.id,
            list_member = M.MediaInsightsPipelineConfigurationElement,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateMediaInsightsPipelineConfigurationInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "CreateMediaInsightsPipelineConfigurationInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.MediaInsightsPipelineConfiguration = schema.new({
    id = id.from(_N, "MediaInsightsPipelineConfiguration"),
    type = "structure",
    members = {
        MediaInsightsPipelineConfigurationName = schema.new({
            id = id.from(_N, "MediaInsightsPipelineConfiguration", "MediaInsightsPipelineConfigurationName"),
            type = "string",
            name = "MediaInsightsPipelineConfigurationName",
            target_id = prelude.String.id,
        }),
        MediaInsightsPipelineConfigurationArn = schema.new({
            id = id.from(_N, "MediaInsightsPipelineConfiguration", "MediaInsightsPipelineConfigurationArn"),
            type = "string",
            name = "MediaInsightsPipelineConfigurationArn",
            target_id = prelude.String.id,
        }),
        ResourceAccessRoleArn = schema.new({
            id = id.from(_N, "MediaInsightsPipelineConfiguration", "ResourceAccessRoleArn"),
            type = "string",
            name = "ResourceAccessRoleArn",
            target_id = prelude.String.id,
        }),
        RealTimeAlertConfiguration = schema.new({
            id = id.from(_N, "MediaInsightsPipelineConfiguration", "RealTimeAlertConfiguration"),
            type = "structure",
            name = "RealTimeAlertConfiguration",
            target_id = id.from(_N, "RealTimeAlertConfiguration"),
            target = M.RealTimeAlertConfiguration,
        }),
        Elements = schema.new({
            id = id.from(_N, "MediaInsightsPipelineConfiguration", "Elements"),
            type = "list",
            name = "Elements",
            target_id = prelude.Document.id,
            list_member = M.MediaInsightsPipelineConfigurationElement,
        }),
        MediaInsightsPipelineConfigurationId = schema.new({
            id = id.from(_N, "MediaInsightsPipelineConfiguration", "MediaInsightsPipelineConfigurationId"),
            type = "string",
            name = "MediaInsightsPipelineConfigurationId",
            target_id = prelude.String.id,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "MediaInsightsPipelineConfiguration", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        UpdatedTimestamp = schema.new({
            id = id.from(_N, "MediaInsightsPipelineConfiguration", "UpdatedTimestamp"),
            type = "timestamp",
            name = "UpdatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.CreateMediaInsightsPipelineConfigurationOutput = schema.new({
    id = id.from(_N, "CreateMediaInsightsPipelineConfigurationResponse"),
    type = "structure",
    members = {
        MediaInsightsPipelineConfiguration = schema.new({
            id = id.from(_N, "CreateMediaInsightsPipelineConfigurationOutput", "MediaInsightsPipelineConfiguration"),
            type = "structure",
            name = "MediaInsightsPipelineConfiguration",
            target_id = id.from(_N, "MediaInsightsPipelineConfiguration"),
            target = M.MediaInsightsPipelineConfiguration,
        }),
    },
})

M.LiveConnectorRTMPConfiguration = schema.new({
    id = id.from(_N, "LiveConnectorRTMPConfiguration"),
    type = "structure",
    members = {
        Url = schema.new({
            id = id.from(_N, "LiveConnectorRTMPConfiguration", "Url"),
            type = "string",
            name = "Url",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AudioChannels = schema.new({
            id = id.from(_N, "LiveConnectorRTMPConfiguration", "AudioChannels"),
            type = "string",
            name = "AudioChannels",
            target_id = prelude.String.id,
        }),
        AudioSampleRate = schema.new({
            id = id.from(_N, "LiveConnectorRTMPConfiguration", "AudioSampleRate"),
            type = "string",
            name = "AudioSampleRate",
            target_id = prelude.String.id,
        }),
    },
})

M.LiveConnectorSinkConfiguration = schema.new({
    id = id.from(_N, "LiveConnectorSinkConfiguration"),
    type = "structure",
    members = {
        SinkType = schema.new({
            id = id.from(_N, "LiveConnectorSinkConfiguration", "SinkType"),
            type = "string",
            name = "SinkType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RTMPConfiguration = schema.new({
            id = id.from(_N, "LiveConnectorSinkConfiguration", "RTMPConfiguration"),
            type = "structure",
            name = "RTMPConfiguration",
            target_id = id.from(_N, "LiveConnectorRTMPConfiguration"),
            target = M.LiveConnectorRTMPConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ChimeSdkMeetingLiveConnectorConfiguration = schema.new({
    id = id.from(_N, "ChimeSdkMeetingLiveConnectorConfiguration"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "ChimeSdkMeetingLiveConnectorConfiguration", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MuxType = schema.new({
            id = id.from(_N, "ChimeSdkMeetingLiveConnectorConfiguration", "MuxType"),
            type = "string",
            name = "MuxType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CompositedVideo = schema.new({
            id = id.from(_N, "ChimeSdkMeetingLiveConnectorConfiguration", "CompositedVideo"),
            type = "structure",
            name = "CompositedVideo",
            target_id = id.from(_N, "CompositedVideoArtifactsConfiguration"),
            target = M.CompositedVideoArtifactsConfiguration,
        }),
        SourceConfiguration = schema.new({
            id = id.from(_N, "ChimeSdkMeetingLiveConnectorConfiguration", "SourceConfiguration"),
            type = "structure",
            name = "SourceConfiguration",
            target_id = id.from(_N, "SourceConfiguration"),
            target = M.SourceConfiguration,
        }),
    },
})

M.LiveConnectorSourceConfiguration = schema.new({
    id = id.from(_N, "LiveConnectorSourceConfiguration"),
    type = "structure",
    members = {
        SourceType = schema.new({
            id = id.from(_N, "LiveConnectorSourceConfiguration", "SourceType"),
            type = "string",
            name = "SourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChimeSdkMeetingLiveConnectorConfiguration = schema.new({
            id = id.from(_N, "LiveConnectorSourceConfiguration", "ChimeSdkMeetingLiveConnectorConfiguration"),
            type = "structure",
            name = "ChimeSdkMeetingLiveConnectorConfiguration",
            target_id = id.from(_N, "ChimeSdkMeetingLiveConnectorConfiguration"),
            target = M.ChimeSdkMeetingLiveConnectorConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateMediaLiveConnectorPipelineInput = schema.new({
    id = id.from(_N, "CreateMediaLiveConnectorPipelineRequest"),
    type = "structure",
    members = {
        Sources = schema.new({
            id = id.from(_N, "CreateMediaLiveConnectorPipelineInput", "Sources"),
            type = "list",
            name = "Sources",
            target_id = prelude.Document.id,
            list_member = M.LiveConnectorSourceConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Sinks = schema.new({
            id = id.from(_N, "CreateMediaLiveConnectorPipelineInput", "Sinks"),
            type = "list",
            name = "Sinks",
            target_id = prelude.Document.id,
            list_member = M.LiveConnectorSinkConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "CreateMediaLiveConnectorPipelineInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateMediaLiveConnectorPipelineInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.MediaLiveConnectorPipeline = schema.new({
    id = id.from(_N, "MediaLiveConnectorPipeline"),
    type = "structure",
    members = {
        Sources = schema.new({
            id = id.from(_N, "MediaLiveConnectorPipeline", "Sources"),
            type = "list",
            name = "Sources",
            target_id = prelude.Document.id,
            list_member = M.LiveConnectorSourceConfiguration,
        }),
        Sinks = schema.new({
            id = id.from(_N, "MediaLiveConnectorPipeline", "Sinks"),
            type = "list",
            name = "Sinks",
            target_id = prelude.Document.id,
            list_member = M.LiveConnectorSinkConfiguration,
        }),
        MediaPipelineId = schema.new({
            id = id.from(_N, "MediaLiveConnectorPipeline", "MediaPipelineId"),
            type = "string",
            name = "MediaPipelineId",
            target_id = prelude.String.id,
        }),
        MediaPipelineArn = schema.new({
            id = id.from(_N, "MediaLiveConnectorPipeline", "MediaPipelineArn"),
            type = "string",
            name = "MediaPipelineArn",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "MediaLiveConnectorPipeline", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "MediaLiveConnectorPipeline", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        UpdatedTimestamp = schema.new({
            id = id.from(_N, "MediaLiveConnectorPipeline", "UpdatedTimestamp"),
            type = "timestamp",
            name = "UpdatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.CreateMediaLiveConnectorPipelineOutput = schema.new({
    id = id.from(_N, "CreateMediaLiveConnectorPipelineResponse"),
    type = "structure",
    members = {
        MediaLiveConnectorPipeline = schema.new({
            id = id.from(_N, "CreateMediaLiveConnectorPipelineOutput", "MediaLiveConnectorPipeline"),
            type = "structure",
            name = "MediaLiveConnectorPipeline",
            target_id = id.from(_N, "MediaLiveConnectorPipeline"),
            target = M.MediaLiveConnectorPipeline,
        }),
    },
})

M.ConflictException = schema.new({
    id = id.from(_N, "ConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "ConflictException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ConflictException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "ConflictException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.KinesisVideoStreamConfiguration = schema.new({
    id = id.from(_N, "KinesisVideoStreamConfiguration"),
    type = "structure",
    members = {
        Region = schema.new({
            id = id.from(_N, "KinesisVideoStreamConfiguration", "Region"),
            type = "string",
            name = "Region",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DataRetentionInHours = schema.new({
            id = id.from(_N, "KinesisVideoStreamConfiguration", "DataRetentionInHours"),
            type = "integer",
            name = "DataRetentionInHours",
            target_id = prelude.Integer.id,
        }),
    },
})

M.CreateMediaPipelineKinesisVideoStreamPoolInput = schema.new({
    id = id.from(_N, "CreateMediaPipelineKinesisVideoStreamPoolRequest"),
    type = "structure",
    members = {
        StreamConfiguration = schema.new({
            id = id.from(_N, "CreateMediaPipelineKinesisVideoStreamPoolInput", "StreamConfiguration"),
            type = "structure",
            name = "StreamConfiguration",
            target_id = id.from(_N, "KinesisVideoStreamConfiguration"),
            target = M.KinesisVideoStreamConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PoolName = schema.new({
            id = id.from(_N, "CreateMediaPipelineKinesisVideoStreamPoolInput", "PoolName"),
            type = "string",
            name = "PoolName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "CreateMediaPipelineKinesisVideoStreamPoolInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateMediaPipelineKinesisVideoStreamPoolInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.KinesisVideoStreamPoolConfiguration = schema.new({
    id = id.from(_N, "KinesisVideoStreamPoolConfiguration"),
    type = "structure",
    members = {
        PoolArn = schema.new({
            id = id.from(_N, "KinesisVideoStreamPoolConfiguration", "PoolArn"),
            type = "string",
            name = "PoolArn",
            target_id = prelude.String.id,
        }),
        PoolName = schema.new({
            id = id.from(_N, "KinesisVideoStreamPoolConfiguration", "PoolName"),
            type = "string",
            name = "PoolName",
            target_id = prelude.String.id,
        }),
        PoolId = schema.new({
            id = id.from(_N, "KinesisVideoStreamPoolConfiguration", "PoolId"),
            type = "string",
            name = "PoolId",
            target_id = prelude.String.id,
        }),
        PoolStatus = schema.new({
            id = id.from(_N, "KinesisVideoStreamPoolConfiguration", "PoolStatus"),
            type = "string",
            name = "PoolStatus",
            target_id = prelude.String.id,
        }),
        PoolSize = schema.new({
            id = id.from(_N, "KinesisVideoStreamPoolConfiguration", "PoolSize"),
            type = "integer",
            name = "PoolSize",
            target_id = prelude.Integer.id,
        }),
        StreamConfiguration = schema.new({
            id = id.from(_N, "KinesisVideoStreamPoolConfiguration", "StreamConfiguration"),
            type = "structure",
            name = "StreamConfiguration",
            target_id = id.from(_N, "KinesisVideoStreamConfiguration"),
            target = M.KinesisVideoStreamConfiguration,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "KinesisVideoStreamPoolConfiguration", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        UpdatedTimestamp = schema.new({
            id = id.from(_N, "KinesisVideoStreamPoolConfiguration", "UpdatedTimestamp"),
            type = "timestamp",
            name = "UpdatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.CreateMediaPipelineKinesisVideoStreamPoolOutput = schema.new({
    id = id.from(_N, "CreateMediaPipelineKinesisVideoStreamPoolResponse"),
    type = "structure",
    members = {
        KinesisVideoStreamPoolConfiguration = schema.new({
            id = id.from(_N, "CreateMediaPipelineKinesisVideoStreamPoolOutput", "KinesisVideoStreamPoolConfiguration"),
            type = "structure",
            name = "KinesisVideoStreamPoolConfiguration",
            target_id = id.from(_N, "KinesisVideoStreamPoolConfiguration"),
            target = M.KinesisVideoStreamPoolConfiguration,
        }),
    },
})

M.MediaStreamSink = schema.new({
    id = id.from(_N, "MediaStreamSink"),
    type = "structure",
    members = {
        SinkArn = schema.new({
            id = id.from(_N, "MediaStreamSink", "SinkArn"),
            type = "string",
            name = "SinkArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SinkType = schema.new({
            id = id.from(_N, "MediaStreamSink", "SinkType"),
            type = "string",
            name = "SinkType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReservedStreamCapacity = schema.new({
            id = id.from(_N, "MediaStreamSink", "ReservedStreamCapacity"),
            type = "integer",
            name = "ReservedStreamCapacity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MediaStreamType = schema.new({
            id = id.from(_N, "MediaStreamSink", "MediaStreamType"),
            type = "string",
            name = "MediaStreamType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MediaStreamSource = schema.new({
    id = id.from(_N, "MediaStreamSource"),
    type = "structure",
    members = {
        SourceType = schema.new({
            id = id.from(_N, "MediaStreamSource", "SourceType"),
            type = "string",
            name = "SourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SourceArn = schema.new({
            id = id.from(_N, "MediaStreamSource", "SourceArn"),
            type = "string",
            name = "SourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateMediaStreamPipelineInput = schema.new({
    id = id.from(_N, "CreateMediaStreamPipelineRequest"),
    type = "structure",
    members = {
        Sources = schema.new({
            id = id.from(_N, "CreateMediaStreamPipelineInput", "Sources"),
            type = "list",
            name = "Sources",
            target_id = prelude.Document.id,
            list_member = M.MediaStreamSource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Sinks = schema.new({
            id = id.from(_N, "CreateMediaStreamPipelineInput", "Sinks"),
            type = "list",
            name = "Sinks",
            target_id = prelude.Document.id,
            list_member = M.MediaStreamSink,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "CreateMediaStreamPipelineInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateMediaStreamPipelineInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.MediaStreamPipeline = schema.new({
    id = id.from(_N, "MediaStreamPipeline"),
    type = "structure",
    members = {
        MediaPipelineId = schema.new({
            id = id.from(_N, "MediaStreamPipeline", "MediaPipelineId"),
            type = "string",
            name = "MediaPipelineId",
            target_id = prelude.String.id,
        }),
        MediaPipelineArn = schema.new({
            id = id.from(_N, "MediaStreamPipeline", "MediaPipelineArn"),
            type = "string",
            name = "MediaPipelineArn",
            target_id = prelude.String.id,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "MediaStreamPipeline", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        UpdatedTimestamp = schema.new({
            id = id.from(_N, "MediaStreamPipeline", "UpdatedTimestamp"),
            type = "timestamp",
            name = "UpdatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        Status = schema.new({
            id = id.from(_N, "MediaStreamPipeline", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Sources = schema.new({
            id = id.from(_N, "MediaStreamPipeline", "Sources"),
            type = "list",
            name = "Sources",
            target_id = prelude.Document.id,
            list_member = M.MediaStreamSource,
        }),
        Sinks = schema.new({
            id = id.from(_N, "MediaStreamPipeline", "Sinks"),
            type = "list",
            name = "Sinks",
            target_id = prelude.Document.id,
            list_member = M.MediaStreamSink,
        }),
    },
})

M.CreateMediaStreamPipelineOutput = schema.new({
    id = id.from(_N, "CreateMediaStreamPipelineResponse"),
    type = "structure",
    members = {
        MediaStreamPipeline = schema.new({
            id = id.from(_N, "CreateMediaStreamPipelineOutput", "MediaStreamPipeline"),
            type = "structure",
            name = "MediaStreamPipeline",
            target_id = id.from(_N, "MediaStreamPipeline"),
            target = M.MediaStreamPipeline,
        }),
    },
})

M.DeleteMediaCapturePipelineInput = schema.new({
    id = id.from(_N, "DeleteMediaCapturePipelineRequest"),
    type = "structure",
    members = {
        MediaPipelineId = schema.new({
            id = id.from(_N, "DeleteMediaCapturePipelineInput", "MediaPipelineId"),
            type = "string",
            name = "MediaPipelineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteMediaCapturePipelineOutput = prelude.Unit

M.DeleteMediaInsightsPipelineConfigurationInput = schema.new({
    id = id.from(_N, "DeleteMediaInsightsPipelineConfigurationRequest"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "DeleteMediaInsightsPipelineConfigurationInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteMediaInsightsPipelineConfigurationOutput = prelude.Unit

M.DeleteMediaPipelineInput = schema.new({
    id = id.from(_N, "DeleteMediaPipelineRequest"),
    type = "structure",
    members = {
        MediaPipelineId = schema.new({
            id = id.from(_N, "DeleteMediaPipelineInput", "MediaPipelineId"),
            type = "string",
            name = "MediaPipelineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteMediaPipelineOutput = prelude.Unit

M.DeleteMediaPipelineKinesisVideoStreamPoolInput = schema.new({
    id = id.from(_N, "DeleteMediaPipelineKinesisVideoStreamPoolRequest"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "DeleteMediaPipelineKinesisVideoStreamPoolInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteMediaPipelineKinesisVideoStreamPoolOutput = prelude.Unit

M.GetMediaCapturePipelineInput = schema.new({
    id = id.from(_N, "GetMediaCapturePipelineRequest"),
    type = "structure",
    members = {
        MediaPipelineId = schema.new({
            id = id.from(_N, "GetMediaCapturePipelineInput", "MediaPipelineId"),
            type = "string",
            name = "MediaPipelineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetMediaCapturePipelineOutput = schema.new({
    id = id.from(_N, "GetMediaCapturePipelineResponse"),
    type = "structure",
    members = {
        MediaCapturePipeline = schema.new({
            id = id.from(_N, "GetMediaCapturePipelineOutput", "MediaCapturePipeline"),
            type = "structure",
            name = "MediaCapturePipeline",
            target_id = id.from(_N, "MediaCapturePipeline"),
            target = M.MediaCapturePipeline,
        }),
    },
})

M.GetMediaInsightsPipelineConfigurationInput = schema.new({
    id = id.from(_N, "GetMediaInsightsPipelineConfigurationRequest"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "GetMediaInsightsPipelineConfigurationInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetMediaInsightsPipelineConfigurationOutput = schema.new({
    id = id.from(_N, "GetMediaInsightsPipelineConfigurationResponse"),
    type = "structure",
    members = {
        MediaInsightsPipelineConfiguration = schema.new({
            id = id.from(_N, "GetMediaInsightsPipelineConfigurationOutput", "MediaInsightsPipelineConfiguration"),
            type = "structure",
            name = "MediaInsightsPipelineConfiguration",
            target_id = id.from(_N, "MediaInsightsPipelineConfiguration"),
            target = M.MediaInsightsPipelineConfiguration,
        }),
    },
})

M.GetMediaPipelineInput = schema.new({
    id = id.from(_N, "GetMediaPipelineRequest"),
    type = "structure",
    members = {
        MediaPipelineId = schema.new({
            id = id.from(_N, "GetMediaPipelineInput", "MediaPipelineId"),
            type = "string",
            name = "MediaPipelineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.MediaPipeline = schema.new({
    id = id.from(_N, "MediaPipeline"),
    type = "structure",
    members = {
        MediaCapturePipeline = schema.new({
            id = id.from(_N, "MediaPipeline", "MediaCapturePipeline"),
            type = "structure",
            name = "MediaCapturePipeline",
            target_id = id.from(_N, "MediaCapturePipeline"),
            target = M.MediaCapturePipeline,
        }),
        MediaLiveConnectorPipeline = schema.new({
            id = id.from(_N, "MediaPipeline", "MediaLiveConnectorPipeline"),
            type = "structure",
            name = "MediaLiveConnectorPipeline",
            target_id = id.from(_N, "MediaLiveConnectorPipeline"),
            target = M.MediaLiveConnectorPipeline,
        }),
        MediaConcatenationPipeline = schema.new({
            id = id.from(_N, "MediaPipeline", "MediaConcatenationPipeline"),
            type = "structure",
            name = "MediaConcatenationPipeline",
            target_id = id.from(_N, "MediaConcatenationPipeline"),
            target = M.MediaConcatenationPipeline,
        }),
        MediaInsightsPipeline = schema.new({
            id = id.from(_N, "MediaPipeline", "MediaInsightsPipeline"),
            type = "structure",
            name = "MediaInsightsPipeline",
            target_id = id.from(_N, "MediaInsightsPipeline"),
            target = M.MediaInsightsPipeline,
        }),
        MediaStreamPipeline = schema.new({
            id = id.from(_N, "MediaPipeline", "MediaStreamPipeline"),
            type = "structure",
            name = "MediaStreamPipeline",
            target_id = id.from(_N, "MediaStreamPipeline"),
            target = M.MediaStreamPipeline,
        }),
    },
})

M.GetMediaPipelineOutput = schema.new({
    id = id.from(_N, "GetMediaPipelineResponse"),
    type = "structure",
    members = {
        MediaPipeline = schema.new({
            id = id.from(_N, "GetMediaPipelineOutput", "MediaPipeline"),
            type = "structure",
            name = "MediaPipeline",
            target_id = id.from(_N, "MediaPipeline"),
            target = M.MediaPipeline,
        }),
    },
})

M.GetMediaPipelineKinesisVideoStreamPoolInput = schema.new({
    id = id.from(_N, "GetMediaPipelineKinesisVideoStreamPoolRequest"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "GetMediaPipelineKinesisVideoStreamPoolInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetMediaPipelineKinesisVideoStreamPoolOutput = schema.new({
    id = id.from(_N, "GetMediaPipelineKinesisVideoStreamPoolResponse"),
    type = "structure",
    members = {
        KinesisVideoStreamPoolConfiguration = schema.new({
            id = id.from(_N, "GetMediaPipelineKinesisVideoStreamPoolOutput", "KinesisVideoStreamPoolConfiguration"),
            type = "structure",
            name = "KinesisVideoStreamPoolConfiguration",
            target_id = id.from(_N, "KinesisVideoStreamPoolConfiguration"),
            target = M.KinesisVideoStreamPoolConfiguration,
        }),
    },
})

M.GetSpeakerSearchTaskInput = schema.new({
    id = id.from(_N, "GetSpeakerSearchTaskRequest"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "GetSpeakerSearchTaskInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SpeakerSearchTaskId = schema.new({
            id = id.from(_N, "GetSpeakerSearchTaskInput", "SpeakerSearchTaskId"),
            type = "string",
            name = "SpeakerSearchTaskId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.SpeakerSearchTask = schema.new({
    id = id.from(_N, "SpeakerSearchTask"),
    type = "structure",
    members = {
        SpeakerSearchTaskId = schema.new({
            id = id.from(_N, "SpeakerSearchTask", "SpeakerSearchTaskId"),
            type = "string",
            name = "SpeakerSearchTaskId",
            target_id = prelude.String.id,
        }),
        SpeakerSearchTaskStatus = schema.new({
            id = id.from(_N, "SpeakerSearchTask", "SpeakerSearchTaskStatus"),
            type = "string",
            name = "SpeakerSearchTaskStatus",
            target_id = prelude.String.id,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "SpeakerSearchTask", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        UpdatedTimestamp = schema.new({
            id = id.from(_N, "SpeakerSearchTask", "UpdatedTimestamp"),
            type = "timestamp",
            name = "UpdatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.GetSpeakerSearchTaskOutput = schema.new({
    id = id.from(_N, "GetSpeakerSearchTaskResponse"),
    type = "structure",
    members = {
        SpeakerSearchTask = schema.new({
            id = id.from(_N, "GetSpeakerSearchTaskOutput", "SpeakerSearchTask"),
            type = "structure",
            name = "SpeakerSearchTask",
            target_id = id.from(_N, "SpeakerSearchTask"),
            target = M.SpeakerSearchTask,
        }),
    },
})

M.GetVoiceToneAnalysisTaskInput = schema.new({
    id = id.from(_N, "GetVoiceToneAnalysisTaskRequest"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "GetVoiceToneAnalysisTaskInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        VoiceToneAnalysisTaskId = schema.new({
            id = id.from(_N, "GetVoiceToneAnalysisTaskInput", "VoiceToneAnalysisTaskId"),
            type = "string",
            name = "VoiceToneAnalysisTaskId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.VoiceToneAnalysisTask = schema.new({
    id = id.from(_N, "VoiceToneAnalysisTask"),
    type = "structure",
    members = {
        VoiceToneAnalysisTaskId = schema.new({
            id = id.from(_N, "VoiceToneAnalysisTask", "VoiceToneAnalysisTaskId"),
            type = "string",
            name = "VoiceToneAnalysisTaskId",
            target_id = prelude.String.id,
        }),
        VoiceToneAnalysisTaskStatus = schema.new({
            id = id.from(_N, "VoiceToneAnalysisTask", "VoiceToneAnalysisTaskStatus"),
            type = "string",
            name = "VoiceToneAnalysisTaskStatus",
            target_id = prelude.String.id,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "VoiceToneAnalysisTask", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        UpdatedTimestamp = schema.new({
            id = id.from(_N, "VoiceToneAnalysisTask", "UpdatedTimestamp"),
            type = "timestamp",
            name = "UpdatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.GetVoiceToneAnalysisTaskOutput = schema.new({
    id = id.from(_N, "GetVoiceToneAnalysisTaskResponse"),
    type = "structure",
    members = {
        VoiceToneAnalysisTask = schema.new({
            id = id.from(_N, "GetVoiceToneAnalysisTaskOutput", "VoiceToneAnalysisTask"),
            type = "structure",
            name = "VoiceToneAnalysisTask",
            target_id = id.from(_N, "VoiceToneAnalysisTask"),
            target = M.VoiceToneAnalysisTask,
        }),
    },
})

M.ListMediaCapturePipelinesInput = schema.new({
    id = id.from(_N, "ListMediaCapturePipelinesRequest"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListMediaCapturePipelinesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next-token" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListMediaCapturePipelinesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max-results" },
            },
        }),
    },
})

M.MediaCapturePipelineSummary = schema.new({
    id = id.from(_N, "MediaCapturePipelineSummary"),
    type = "structure",
    members = {
        MediaPipelineId = schema.new({
            id = id.from(_N, "MediaCapturePipelineSummary", "MediaPipelineId"),
            type = "string",
            name = "MediaPipelineId",
            target_id = prelude.String.id,
        }),
        MediaPipelineArn = schema.new({
            id = id.from(_N, "MediaCapturePipelineSummary", "MediaPipelineArn"),
            type = "string",
            name = "MediaPipelineArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMediaCapturePipelinesOutput = schema.new({
    id = id.from(_N, "ListMediaCapturePipelinesResponse"),
    type = "structure",
    members = {
        MediaCapturePipelines = schema.new({
            id = id.from(_N, "ListMediaCapturePipelinesOutput", "MediaCapturePipelines"),
            type = "list",
            name = "MediaCapturePipelines",
            target_id = prelude.Document.id,
            list_member = M.MediaCapturePipelineSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListMediaCapturePipelinesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMediaInsightsPipelineConfigurationsInput = schema.new({
    id = id.from(_N, "ListMediaInsightsPipelineConfigurationsRequest"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListMediaInsightsPipelineConfigurationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next-token" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListMediaInsightsPipelineConfigurationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max-results" },
            },
        }),
    },
})

M.MediaInsightsPipelineConfigurationSummary = schema.new({
    id = id.from(_N, "MediaInsightsPipelineConfigurationSummary"),
    type = "structure",
    members = {
        MediaInsightsPipelineConfigurationName = schema.new({
            id = id.from(_N, "MediaInsightsPipelineConfigurationSummary", "MediaInsightsPipelineConfigurationName"),
            type = "string",
            name = "MediaInsightsPipelineConfigurationName",
            target_id = prelude.String.id,
        }),
        MediaInsightsPipelineConfigurationId = schema.new({
            id = id.from(_N, "MediaInsightsPipelineConfigurationSummary", "MediaInsightsPipelineConfigurationId"),
            type = "string",
            name = "MediaInsightsPipelineConfigurationId",
            target_id = prelude.String.id,
        }),
        MediaInsightsPipelineConfigurationArn = schema.new({
            id = id.from(_N, "MediaInsightsPipelineConfigurationSummary", "MediaInsightsPipelineConfigurationArn"),
            type = "string",
            name = "MediaInsightsPipelineConfigurationArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMediaInsightsPipelineConfigurationsOutput = schema.new({
    id = id.from(_N, "ListMediaInsightsPipelineConfigurationsResponse"),
    type = "structure",
    members = {
        MediaInsightsPipelineConfigurations = schema.new({
            id = id.from(_N, "ListMediaInsightsPipelineConfigurationsOutput", "MediaInsightsPipelineConfigurations"),
            type = "list",
            name = "MediaInsightsPipelineConfigurations",
            target_id = prelude.Document.id,
            list_member = M.MediaInsightsPipelineConfigurationSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListMediaInsightsPipelineConfigurationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMediaPipelineKinesisVideoStreamPoolsInput = schema.new({
    id = id.from(_N, "ListMediaPipelineKinesisVideoStreamPoolsRequest"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListMediaPipelineKinesisVideoStreamPoolsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next-token" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListMediaPipelineKinesisVideoStreamPoolsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max-results" },
            },
        }),
    },
})

M.KinesisVideoStreamPoolSummary = schema.new({
    id = id.from(_N, "KinesisVideoStreamPoolSummary"),
    type = "structure",
    members = {
        PoolName = schema.new({
            id = id.from(_N, "KinesisVideoStreamPoolSummary", "PoolName"),
            type = "string",
            name = "PoolName",
            target_id = prelude.String.id,
        }),
        PoolId = schema.new({
            id = id.from(_N, "KinesisVideoStreamPoolSummary", "PoolId"),
            type = "string",
            name = "PoolId",
            target_id = prelude.String.id,
        }),
        PoolArn = schema.new({
            id = id.from(_N, "KinesisVideoStreamPoolSummary", "PoolArn"),
            type = "string",
            name = "PoolArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMediaPipelineKinesisVideoStreamPoolsOutput = schema.new({
    id = id.from(_N, "ListMediaPipelineKinesisVideoStreamPoolsResponse"),
    type = "structure",
    members = {
        KinesisVideoStreamPools = schema.new({
            id = id.from(_N, "ListMediaPipelineKinesisVideoStreamPoolsOutput", "KinesisVideoStreamPools"),
            type = "list",
            name = "KinesisVideoStreamPools",
            target_id = prelude.Document.id,
            list_member = M.KinesisVideoStreamPoolSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListMediaPipelineKinesisVideoStreamPoolsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMediaPipelinesInput = schema.new({
    id = id.from(_N, "ListMediaPipelinesRequest"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListMediaPipelinesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next-token" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListMediaPipelinesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max-results" },
            },
        }),
    },
})

M.MediaPipelineSummary = schema.new({
    id = id.from(_N, "MediaPipelineSummary"),
    type = "structure",
    members = {
        MediaPipelineId = schema.new({
            id = id.from(_N, "MediaPipelineSummary", "MediaPipelineId"),
            type = "string",
            name = "MediaPipelineId",
            target_id = prelude.String.id,
        }),
        MediaPipelineArn = schema.new({
            id = id.from(_N, "MediaPipelineSummary", "MediaPipelineArn"),
            type = "string",
            name = "MediaPipelineArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMediaPipelinesOutput = schema.new({
    id = id.from(_N, "ListMediaPipelinesResponse"),
    type = "structure",
    members = {
        MediaPipelines = schema.new({
            id = id.from(_N, "ListMediaPipelinesOutput", "MediaPipelines"),
            type = "list",
            name = "MediaPipelines",
            target_id = prelude.Document.id,
            list_member = M.MediaPipelineSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListMediaPipelinesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceRequest"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "arn" },
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceResponse"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.KinesisVideoStreamSourceTaskConfiguration = schema.new({
    id = id.from(_N, "KinesisVideoStreamSourceTaskConfiguration"),
    type = "structure",
    members = {
        StreamArn = schema.new({
            id = id.from(_N, "KinesisVideoStreamSourceTaskConfiguration", "StreamArn"),
            type = "string",
            name = "StreamArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChannelId = schema.new({
            id = id.from(_N, "KinesisVideoStreamSourceTaskConfiguration", "ChannelId"),
            type = "integer",
            name = "ChannelId",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        FragmentNumber = schema.new({
            id = id.from(_N, "KinesisVideoStreamSourceTaskConfiguration", "FragmentNumber"),
            type = "string",
            name = "FragmentNumber",
            target_id = prelude.String.id,
        }),
    },
})

M.StartSpeakerSearchTaskInput = schema.new({
    id = id.from(_N, "StartSpeakerSearchTaskRequest"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "StartSpeakerSearchTaskInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        VoiceProfileDomainArn = schema.new({
            id = id.from(_N, "StartSpeakerSearchTaskInput", "VoiceProfileDomainArn"),
            type = "string",
            name = "VoiceProfileDomainArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KinesisVideoStreamSourceTaskConfiguration = schema.new({
            id = id.from(_N, "StartSpeakerSearchTaskInput", "KinesisVideoStreamSourceTaskConfiguration"),
            type = "structure",
            name = "KinesisVideoStreamSourceTaskConfiguration",
            target_id = id.from(_N, "KinesisVideoStreamSourceTaskConfiguration"),
            target = M.KinesisVideoStreamSourceTaskConfiguration,
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "StartSpeakerSearchTaskInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.StartSpeakerSearchTaskOutput = schema.new({
    id = id.from(_N, "StartSpeakerSearchTaskResponse"),
    type = "structure",
    members = {
        SpeakerSearchTask = schema.new({
            id = id.from(_N, "StartSpeakerSearchTaskOutput", "SpeakerSearchTask"),
            type = "structure",
            name = "SpeakerSearchTask",
            target_id = id.from(_N, "SpeakerSearchTask"),
            target = M.SpeakerSearchTask,
        }),
    },
})

M.StartVoiceToneAnalysisTaskInput = schema.new({
    id = id.from(_N, "StartVoiceToneAnalysisTaskRequest"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "StartVoiceToneAnalysisTaskInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        LanguageCode = schema.new({
            id = id.from(_N, "StartVoiceToneAnalysisTaskInput", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KinesisVideoStreamSourceTaskConfiguration = schema.new({
            id = id.from(_N, "StartVoiceToneAnalysisTaskInput", "KinesisVideoStreamSourceTaskConfiguration"),
            type = "structure",
            name = "KinesisVideoStreamSourceTaskConfiguration",
            target_id = id.from(_N, "KinesisVideoStreamSourceTaskConfiguration"),
            target = M.KinesisVideoStreamSourceTaskConfiguration,
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "StartVoiceToneAnalysisTaskInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.StartVoiceToneAnalysisTaskOutput = schema.new({
    id = id.from(_N, "StartVoiceToneAnalysisTaskResponse"),
    type = "structure",
    members = {
        VoiceToneAnalysisTask = schema.new({
            id = id.from(_N, "StartVoiceToneAnalysisTaskOutput", "VoiceToneAnalysisTask"),
            type = "structure",
            name = "VoiceToneAnalysisTask",
            target_id = id.from(_N, "VoiceToneAnalysisTask"),
            target = M.VoiceToneAnalysisTask,
        }),
    },
})

M.StopSpeakerSearchTaskInput = schema.new({
    id = id.from(_N, "StopSpeakerSearchTaskRequest"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "StopSpeakerSearchTaskInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SpeakerSearchTaskId = schema.new({
            id = id.from(_N, "StopSpeakerSearchTaskInput", "SpeakerSearchTaskId"),
            type = "string",
            name = "SpeakerSearchTaskId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.StopSpeakerSearchTaskOutput = prelude.Unit

M.StopVoiceToneAnalysisTaskInput = schema.new({
    id = id.from(_N, "StopVoiceToneAnalysisTaskRequest"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "StopVoiceToneAnalysisTaskInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        VoiceToneAnalysisTaskId = schema.new({
            id = id.from(_N, "StopVoiceToneAnalysisTaskInput", "VoiceToneAnalysisTaskId"),
            type = "string",
            name = "VoiceToneAnalysisTaskId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.StopVoiceToneAnalysisTaskOutput = prelude.Unit

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceRequest"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "TagResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagResourceInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceResponse"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceRequest"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "UntagResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "TagKeys"),
            type = "list",
            name = "TagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceResponse"),
    type = "structure",
})

M.UpdateMediaInsightsPipelineConfigurationInput = schema.new({
    id = id.from(_N, "UpdateMediaInsightsPipelineConfigurationRequest"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "UpdateMediaInsightsPipelineConfigurationInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ResourceAccessRoleArn = schema.new({
            id = id.from(_N, "UpdateMediaInsightsPipelineConfigurationInput", "ResourceAccessRoleArn"),
            type = "string",
            name = "ResourceAccessRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RealTimeAlertConfiguration = schema.new({
            id = id.from(_N, "UpdateMediaInsightsPipelineConfigurationInput", "RealTimeAlertConfiguration"),
            type = "structure",
            name = "RealTimeAlertConfiguration",
            target_id = id.from(_N, "RealTimeAlertConfiguration"),
            target = M.RealTimeAlertConfiguration,
        }),
        Elements = schema.new({
            id = id.from(_N, "UpdateMediaInsightsPipelineConfigurationInput", "Elements"),
            type = "list",
            name = "Elements",
            target_id = prelude.Document.id,
            list_member = M.MediaInsightsPipelineConfigurationElement,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateMediaInsightsPipelineConfigurationOutput = schema.new({
    id = id.from(_N, "UpdateMediaInsightsPipelineConfigurationResponse"),
    type = "structure",
    members = {
        MediaInsightsPipelineConfiguration = schema.new({
            id = id.from(_N, "UpdateMediaInsightsPipelineConfigurationOutput", "MediaInsightsPipelineConfiguration"),
            type = "structure",
            name = "MediaInsightsPipelineConfiguration",
            target_id = id.from(_N, "MediaInsightsPipelineConfiguration"),
            target = M.MediaInsightsPipelineConfiguration,
        }),
    },
})

M.UpdateMediaInsightsPipelineStatusInput = schema.new({
    id = id.from(_N, "UpdateMediaInsightsPipelineStatusRequest"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "UpdateMediaInsightsPipelineStatusInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        UpdateStatus = schema.new({
            id = id.from(_N, "UpdateMediaInsightsPipelineStatusInput", "UpdateStatus"),
            type = "string",
            name = "UpdateStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateMediaInsightsPipelineStatusOutput = prelude.Unit

M.KinesisVideoStreamConfigurationUpdate = schema.new({
    id = id.from(_N, "KinesisVideoStreamConfigurationUpdate"),
    type = "structure",
    members = {
        DataRetentionInHours = schema.new({
            id = id.from(_N, "KinesisVideoStreamConfigurationUpdate", "DataRetentionInHours"),
            type = "integer",
            name = "DataRetentionInHours",
            target_id = prelude.Integer.id,
        }),
    },
})

M.UpdateMediaPipelineKinesisVideoStreamPoolInput = schema.new({
    id = id.from(_N, "UpdateMediaPipelineKinesisVideoStreamPoolRequest"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "UpdateMediaPipelineKinesisVideoStreamPoolInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        StreamConfiguration = schema.new({
            id = id.from(_N, "UpdateMediaPipelineKinesisVideoStreamPoolInput", "StreamConfiguration"),
            type = "structure",
            name = "StreamConfiguration",
            target_id = id.from(_N, "KinesisVideoStreamConfigurationUpdate"),
            target = M.KinesisVideoStreamConfigurationUpdate,
        }),
    },
})

M.UpdateMediaPipelineKinesisVideoStreamPoolOutput = schema.new({
    id = id.from(_N, "UpdateMediaPipelineKinesisVideoStreamPoolResponse"),
    type = "structure",
    members = {
        KinesisVideoStreamPoolConfiguration = schema.new({
            id = id.from(_N, "UpdateMediaPipelineKinesisVideoStreamPoolOutput", "KinesisVideoStreamPoolConfiguration"),
            type = "structure",
            name = "KinesisVideoStreamPoolConfiguration",
            target_id = id.from(_N, "KinesisVideoStreamPoolConfiguration"),
            target = M.KinesisVideoStreamPoolConfiguration,
        }),
    },
})

-- Fix forward references for recursive schemas
for _, s in pairs(M) do
    if type(s) == "table" and (s.type == "structure" or s.type == "union") then
        local members = rawget(s, "_members")
        if members then
            for _, ms in pairs(members) do
                if (ms.type == "structure" or ms.type == "union") and not rawget(ms, "_target") and ms.target_id then
                    rawset(ms, "_target", M[ms.target_id.name])
                end
            end
        end
    end
end

return M
