local M = {}

M.ActiveSpeakerPosition = {
    TopLeft = "TopLeft",
    TopRight = "TopRight",
    BottomLeft = "BottomLeft",
    BottomRight = "BottomRight",
}

M.ActiveSpeakerOnlyConfiguration = {
    type = "structure",
    id = "ActiveSpeakerOnlyConfiguration",
    members = {
        ActiveSpeakerPosition = {
            type = "string",
        },
    },
}

M.ContentType = {
    PII = "PII",
}

M.CallAnalyticsLanguageCode = {
    EN_US = "en-US",
    EN_GB = "en-GB",
    ES_US = "es-US",
    FR_CA = "fr-CA",
    FR_FR = "fr-FR",
    EN_AU = "en-AU",
    IT_IT = "it-IT",
    DE_DE = "de-DE",
    PT_BR = "pt-BR",
}

M.PartialResultsStability = {
    HIGH = "high",
    MEDIUM = "medium",
    LOW = "low",
}

M.ContentRedactionOutput = {
    REDACTED = "redacted",
    REDACTED_AND_UNREDACTED = "redacted_and_unredacted",
}

M.PostCallAnalyticsSettings = {
    type = "structure",
    id = "PostCallAnalyticsSettings",
    members = {
        OutputLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContentRedactionOutput = {
            type = "string",
        },
        OutputEncryptionKMSKeyId = {
            type = "string",
        },
    },
}

M.VocabularyFilterMethod = {
    REMOVE = "remove",
    MASK = "mask",
    TAG = "tag",
}

M.AmazonTranscribeCallAnalyticsProcessorConfiguration = {
    type = "structure",
    id = "AmazonTranscribeCallAnalyticsProcessorConfiguration",
    members = {
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VocabularyName = {
            type = "string",
        },
        VocabularyFilterName = {
            type = "string",
        },
        VocabularyFilterMethod = {
            type = "string",
        },
        LanguageModelName = {
            type = "string",
        },
        EnablePartialResultsStabilization = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        PartialResultsStability = {
            type = "string",
        },
        ContentIdentificationType = {
            type = "string",
        },
        ContentRedactionType = {
            type = "string",
        },
        PiiEntityTypes = {
            type = "string",
        },
        FilterPartialResults = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        PostCallAnalyticsSettings = M.PostCallAnalyticsSettings,
        CallAnalyticsStreamCategories = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AmazonTranscribeProcessorConfiguration = {
    type = "structure",
    id = "AmazonTranscribeProcessorConfiguration",
    members = {
        LanguageCode = {
            type = "string",
        },
        VocabularyName = {
            type = "string",
        },
        VocabularyFilterName = {
            type = "string",
        },
        VocabularyFilterMethod = {
            type = "string",
        },
        ShowSpeakerLabel = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        EnablePartialResultsStabilization = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        PartialResultsStability = {
            type = "string",
        },
        ContentIdentificationType = {
            type = "string",
        },
        ContentRedactionType = {
            type = "string",
        },
        PiiEntityTypes = {
            type = "string",
        },
        LanguageModelName = {
            type = "string",
        },
        FilterPartialResults = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        IdentifyLanguage = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        IdentifyMultipleLanguages = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        LanguageOptions = {
            type = "string",
        },
        PreferredLanguage = {
            type = "string",
        },
        VocabularyNames = {
            type = "string",
        },
        VocabularyFilterNames = {
            type = "string",
        },
    },
}

M.AudioArtifactsConcatenationState = {
    Enabled = "Enabled",
}

M.AudioConcatenationConfiguration = {
    type = "structure",
    id = "AudioConcatenationConfiguration",
    members = {
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ArtifactsConcatenationState = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.CompositedVideoConcatenationConfiguration = {
    type = "structure",
    id = "CompositedVideoConcatenationConfiguration",
    members = {
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ContentConcatenationConfiguration = {
    type = "structure",
    id = "ContentConcatenationConfiguration",
    members = {
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataChannelConcatenationConfiguration = {
    type = "structure",
    id = "DataChannelConcatenationConfiguration",
    members = {
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MeetingEventsConcatenationConfiguration = {
    type = "structure",
    id = "MeetingEventsConcatenationConfiguration",
    members = {
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TranscriptionMessagesConcatenationConfiguration = {
    type = "structure",
    id = "TranscriptionMessagesConcatenationConfiguration",
    members = {
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VideoConcatenationConfiguration = {
    type = "structure",
    id = "VideoConcatenationConfiguration",
    members = {
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ArtifactsConcatenationConfiguration = {
    type = "structure",
    id = "ArtifactsConcatenationConfiguration",
    members = {
        Audio = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AudioConcatenationConfiguration }),
        Video = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VideoConcatenationConfiguration }),
        Content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ContentConcatenationConfiguration }),
        DataChannel = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataChannelConcatenationConfiguration }),
        TranscriptionMessages = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TranscriptionMessagesConcatenationConfiguration }),
        MeetingEvents = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MeetingEventsConcatenationConfiguration }),
        CompositedVideo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CompositedVideoConcatenationConfiguration }),
    },
}

M.AudioMuxType = {
    AudioOnly = "AudioOnly",
    AudioWithActiveSpeakerVideo = "AudioWithActiveSpeakerVideo",
    AudioWithCompositedVideo = "AudioWithCompositedVideo",
}

M.AudioArtifactsConfiguration = {
    type = "structure",
    id = "AudioArtifactsConfiguration",
    members = {
        MuxType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CanvasOrientation = {
    Landscape = "Landscape",
    Portrait = "Portrait",
}

M.ContentShareLayoutOption = {
    PresenterOnly = "PresenterOnly",
    Horizontal = "Horizontal",
    Vertical = "Vertical",
    ActiveSpeakerOnly = "ActiveSpeakerOnly",
}

M.TileOrder = {
    JoinSequence = "JoinSequence",
    SpeakerSequence = "SpeakerSequence",
}

M.HorizontalTilePosition = {
    Top = "Top",
    Bottom = "Bottom",
}

M.HorizontalLayoutConfiguration = {
    type = "structure",
    id = "HorizontalLayoutConfiguration",
    members = {
        TileOrder = {
            type = "string",
        },
        TilePosition = {
            type = "string",
        },
        TileCount = {
            type = "integer",
        },
        TileAspectRatio = {
            type = "string",
        },
    },
}

M.PresenterPosition = {
    TopLeft = "TopLeft",
    TopRight = "TopRight",
    BottomLeft = "BottomLeft",
    BottomRight = "BottomRight",
}

M.PresenterOnlyConfiguration = {
    type = "structure",
    id = "PresenterOnlyConfiguration",
    members = {
        PresenterPosition = {
            type = "string",
        },
    },
}

M.VerticalTilePosition = {
    Left = "Left",
    Right = "Right",
}

M.VerticalLayoutConfiguration = {
    type = "structure",
    id = "VerticalLayoutConfiguration",
    members = {
        TileOrder = {
            type = "string",
        },
        TilePosition = {
            type = "string",
        },
        TileCount = {
            type = "integer",
        },
        TileAspectRatio = {
            type = "string",
        },
    },
}

M.BorderColor = {
    Black = "Black",
    Blue = "Blue",
    Red = "Red",
    Green = "Green",
    White = "White",
    Yellow = "Yellow",
}

M.HighlightColor = {
    Black = "Black",
    Blue = "Blue",
    Red = "Red",
    Green = "Green",
    White = "White",
    Yellow = "Yellow",
}

M.VideoAttribute = {
    type = "structure",
    id = "VideoAttribute",
    members = {
        CornerRadius = {
            type = "integer",
        },
        BorderColor = {
            type = "string",
        },
        HighlightColor = {
            type = "string",
        },
        BorderThickness = {
            type = "integer",
        },
    },
}

M.GridViewConfiguration = {
    type = "structure",
    id = "GridViewConfiguration",
    members = {
        ContentShareLayout = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PresenterOnlyConfiguration = M.PresenterOnlyConfiguration,
        ActiveSpeakerOnlyConfiguration = M.ActiveSpeakerOnlyConfiguration,
        HorizontalLayoutConfiguration = M.HorizontalLayoutConfiguration,
        VerticalLayoutConfiguration = M.VerticalLayoutConfiguration,
        VideoAttribute = M.VideoAttribute,
        CanvasOrientation = {
            type = "string",
        },
    },
}

M.LayoutOption = {
    GridView = "GridView",
}

M.ResolutionOption = {
    HD = "HD",
    FHD = "FHD",
}

M.CompositedVideoArtifactsConfiguration = {
    type = "structure",
    id = "CompositedVideoArtifactsConfiguration",
    members = {
        Layout = {
            type = "string",
        },
        Resolution = {
            type = "string",
        },
        GridViewConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GridViewConfiguration }),
    },
}

M.ContentMuxType = {
    ContentOnly = "ContentOnly",
}

M.ArtifactsState = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.ContentArtifactsConfiguration = {
    type = "structure",
    id = "ContentArtifactsConfiguration",
    members = {
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MuxType = {
            type = "string",
        },
    },
}

M.VideoMuxType = {
    VideoOnly = "VideoOnly",
}

M.VideoArtifactsConfiguration = {
    type = "structure",
    id = "VideoArtifactsConfiguration",
    members = {
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MuxType = {
            type = "string",
        },
    },
}

M.ArtifactsConfiguration = {
    type = "structure",
    id = "ArtifactsConfiguration",
    members = {
        Audio = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AudioArtifactsConfiguration }),
        Video = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VideoArtifactsConfiguration }),
        Content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ContentArtifactsConfiguration }),
        CompositedVideo = M.CompositedVideoArtifactsConfiguration,
    },
}

M.AudioChannelsOption = {
    Stereo = "Stereo",
    Mono = "Mono",
}

M.ErrorCode = {
    BadRequest = "BadRequest",
    Forbidden = "Forbidden",
    NotFound = "NotFound",
    ResourceLimitExceeded = "ResourceLimitExceeded",
    ServiceFailure = "ServiceFailure",
    ServiceUnavailable = "ServiceUnavailable",
    Throttling = "Throttling",
}

M.BadRequestException = {
    type = "structure",
    id = "BadRequestException",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.ParticipantRole = {
    AGENT = "AGENT",
    CUSTOMER = "CUSTOMER",
}

M.ChannelDefinition = {
    type = "structure",
    id = "ChannelDefinition",
    members = {
        ChannelId = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        ParticipantRole = {
            type = "string",
        },
    },
}

M.SelectedVideoStreams = {
    type = "structure",
    id = "SelectedVideoStreams",
    members = {
        AttendeeIds = {
            type = "list",
            member = { type = "string" },
        },
        ExternalUserIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SourceConfiguration = {
    type = "structure",
    id = "SourceConfiguration",
    members = {
        SelectedVideoStreams = M.SelectedVideoStreams,
    },
}

M.ChimeSdkMeetingConfiguration = {
    type = "structure",
    id = "ChimeSdkMeetingConfiguration",
    members = {
        SourceConfiguration = M.SourceConfiguration,
        ArtifactsConfiguration = M.ArtifactsConfiguration,
    },
}

M.MediaPipelineSinkType = {
    S3Bucket = "S3Bucket",
}

M.MediaPipelineSourceType = {
    ChimeSdkMeeting = "ChimeSdkMeeting",
}

M.SseAwsKeyManagementParams = {
    type = "structure",
    id = "SseAwsKeyManagementParams",
    members = {
        AwsKmsKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AwsKmsEncryptionContext = {
            type = "string",
        },
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
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

M.CreateMediaCapturePipelineInput = {
    type = "structure",
    id = "CreateMediaCapturePipelineInput",
    members = {
        SourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SinkType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SinkArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        ChimeSdkMeetingConfiguration = M.ChimeSdkMeetingConfiguration,
        SseAwsKeyManagementParams = M.SseAwsKeyManagementParams,
        SinkIamRoleArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.MediaPipelineStatus = {
    Initializing = "Initializing",
    InProgress = "InProgress",
    Failed = "Failed",
    Stopping = "Stopping",
    Stopped = "Stopped",
    Paused = "Paused",
    NotStarted = "NotStarted",
}

M.MediaCapturePipeline = {
    type = "structure",
    id = "MediaCapturePipeline",
    members = {
        MediaPipelineId = {
            type = "string",
        },
        MediaPipelineArn = {
            type = "string",
        },
        SourceType = {
            type = "string",
        },
        SourceArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        SinkType = {
            type = "string",
        },
        SinkArn = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        UpdatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ChimeSdkMeetingConfiguration = M.ChimeSdkMeetingConfiguration,
        SseAwsKeyManagementParams = M.SseAwsKeyManagementParams,
        SinkIamRoleArn = {
            type = "string",
        },
    },
}

M.CreateMediaCapturePipelineOutput = {
    type = "structure",
    id = "CreateMediaCapturePipelineOutput",
    members = {
        MediaCapturePipeline = M.MediaCapturePipeline,
    },
}

M.ForbiddenException = {
    type = "structure",
    id = "ForbiddenException",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.ResourceLimitExceededException = {
    type = "structure",
    id = "ResourceLimitExceededException",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.ServiceFailureException = {
    type = "structure",
    id = "ServiceFailureException",
    error = "server",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    id = "ServiceUnavailableException",
    error = "server",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.ThrottledClientException = {
    type = "structure",
    id = "ThrottledClientException",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.UnauthorizedClientException = {
    type = "structure",
    id = "UnauthorizedClientException",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.S3BucketSinkConfiguration = {
    type = "structure",
    id = "S3BucketSinkConfiguration",
    members = {
        Destination = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConcatenationSinkType = {
    S3Bucket = "S3Bucket",
}

M.ConcatenationSink = {
    type = "structure",
    id = "ConcatenationSink",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3BucketSinkConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3BucketSinkConfiguration }),
    },
}

M.ChimeSdkMeetingConcatenationConfiguration = {
    type = "structure",
    id = "ChimeSdkMeetingConcatenationConfiguration",
    members = {
        ArtifactsConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ArtifactsConcatenationConfiguration }),
    },
}

M.MediaCapturePipelineSourceConfiguration = {
    type = "structure",
    id = "MediaCapturePipelineSourceConfiguration",
    members = {
        MediaPipelineArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChimeSdkMeetingConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ChimeSdkMeetingConcatenationConfiguration }),
    },
}

M.ConcatenationSourceType = {
    MediaCapturePipeline = "MediaCapturePipeline",
}

M.ConcatenationSource = {
    type = "structure",
    id = "ConcatenationSource",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MediaCapturePipelineSourceConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MediaCapturePipelineSourceConfiguration }),
    },
}

M.CreateMediaConcatenationPipelineInput = {
    type = "structure",
    id = "CreateMediaConcatenationPipelineInput",
    members = {
        Sources = {
            type = "list",
            member = M.ConcatenationSource,
            traits = {
                required = true,
            },
        },
        Sinks = {
            type = "list",
            member = M.ConcatenationSink,
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.MediaConcatenationPipeline = {
    type = "structure",
    id = "MediaConcatenationPipeline",
    members = {
        MediaPipelineId = {
            type = "string",
        },
        MediaPipelineArn = {
            type = "string",
        },
        Sources = {
            type = "list",
            member = M.ConcatenationSource,
        },
        Sinks = {
            type = "list",
            member = M.ConcatenationSink,
        },
        Status = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        UpdatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.CreateMediaConcatenationPipelineOutput = {
    type = "structure",
    id = "CreateMediaConcatenationPipelineOutput",
    members = {
        MediaConcatenationPipeline = M.MediaConcatenationPipeline,
    },
}

M.FragmentSelectorType = {
    ProducerTimestamp = "ProducerTimestamp",
    ServerTimestamp = "ServerTimestamp",
}

M.TimestampRange = {
    type = "structure",
    id = "TimestampRange",
    members = {
        StartTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.FragmentSelector = {
    type = "structure",
    id = "FragmentSelector",
    members = {
        FragmentSelectorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TimestampRange = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TimestampRange }),
    },
}

M.RecordingStreamConfiguration = {
    type = "structure",
    id = "RecordingStreamConfiguration",
    members = {
        StreamArn = {
            type = "string",
        },
    },
}

M.KinesisVideoStreamRecordingSourceRuntimeConfiguration = {
    type = "structure",
    id = "KinesisVideoStreamRecordingSourceRuntimeConfiguration",
    members = {
        Streams = {
            type = "list",
            member = M.RecordingStreamConfiguration,
            traits = {
                required = true,
            },
        },
        FragmentSelector = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FragmentSelector }),
    },
}

M.MediaEncoding = {
    PCM = "pcm",
}

M.StreamChannelDefinition = {
    type = "structure",
    id = "StreamChannelDefinition",
    members = {
        NumberOfChannels = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        ChannelDefinitions = {
            type = "list",
            member = M.ChannelDefinition,
        },
    },
}

M.StreamConfiguration = {
    type = "structure",
    id = "StreamConfiguration",
    members = {
        StreamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FragmentNumber = {
            type = "string",
        },
        StreamChannelDefinition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StreamChannelDefinition }),
    },
}

M.KinesisVideoStreamSourceRuntimeConfiguration = {
    type = "structure",
    id = "KinesisVideoStreamSourceRuntimeConfiguration",
    members = {
        Streams = {
            type = "list",
            member = M.StreamConfiguration,
            traits = {
                required = true,
            },
        },
        MediaEncoding = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MediaSampleRate = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.RecordingFileFormat = {
    Wav = "Wav",
    Opus = "Opus",
}

M.S3RecordingSinkRuntimeConfiguration = {
    type = "structure",
    id = "S3RecordingSinkRuntimeConfiguration",
    members = {
        Destination = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecordingFileFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateMediaInsightsPipelineInput = {
    type = "structure",
    id = "CreateMediaInsightsPipelineInput",
    members = {
        MediaInsightsPipelineConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KinesisVideoStreamSourceRuntimeConfiguration = M.KinesisVideoStreamSourceRuntimeConfiguration,
        MediaInsightsRuntimeMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        KinesisVideoStreamRecordingSourceRuntimeConfiguration = M.KinesisVideoStreamRecordingSourceRuntimeConfiguration,
        S3RecordingSinkRuntimeConfiguration = M.S3RecordingSinkRuntimeConfiguration,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.MediaPipelineElementStatus = {
    NotStarted = "NotStarted",
    NotSupported = "NotSupported",
    Initializing = "Initializing",
    InProgress = "InProgress",
    Failed = "Failed",
    Stopping = "Stopping",
    Stopped = "Stopped",
    Paused = "Paused",
}

M.MediaInsightsPipelineConfigurationElementType = {
    AMAZON_TRANSCRIBE_CALL_ANALYTICS_PROCESSOR = "AmazonTranscribeCallAnalyticsProcessor",
    VOICE_ANALYTICS_PROCESSOR = "VoiceAnalyticsProcessor",
    AMAZON_TRANSCRIBE_PROCESSOR = "AmazonTranscribeProcessor",
    KINESIS_DATA_STREAM_SINK = "KinesisDataStreamSink",
    LAMBDA_FUNCTION_SINK = "LambdaFunctionSink",
    SQS_QUEUE_SINK = "SqsQueueSink",
    SNS_TOPIC_SINK = "SnsTopicSink",
    S3_RECORDING_SINK = "S3RecordingSink",
    VOICE_ENHANCEMENT_SINK = "VoiceEnhancementSink",
}

M.MediaInsightsPipelineElementStatus = {
    type = "structure",
    id = "MediaInsightsPipelineElementStatus",
    members = {
        Type = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.MediaInsightsPipeline = {
    type = "structure",
    id = "MediaInsightsPipeline",
    members = {
        MediaPipelineId = {
            type = "string",
        },
        MediaPipelineArn = {
            type = "string",
        },
        MediaInsightsPipelineConfigurationArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        KinesisVideoStreamSourceRuntimeConfiguration = M.KinesisVideoStreamSourceRuntimeConfiguration,
        MediaInsightsRuntimeMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        KinesisVideoStreamRecordingSourceRuntimeConfiguration = M.KinesisVideoStreamRecordingSourceRuntimeConfiguration,
        S3RecordingSinkRuntimeConfiguration = M.S3RecordingSinkRuntimeConfiguration,
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ElementStatuses = {
            type = "list",
            member = M.MediaInsightsPipelineElementStatus,
        },
    },
}

M.CreateMediaInsightsPipelineOutput = {
    type = "structure",
    id = "CreateMediaInsightsPipelineOutput",
    members = {
        MediaInsightsPipeline = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MediaInsightsPipeline }),
    },
}

M.NotFoundException = {
    type = "structure",
    id = "NotFoundException",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.KinesisDataStreamSinkConfiguration = {
    type = "structure",
    id = "KinesisDataStreamSinkConfiguration",
    members = {
        InsightsTarget = {
            type = "string",
        },
    },
}

M.LambdaFunctionSinkConfiguration = {
    type = "structure",
    id = "LambdaFunctionSinkConfiguration",
    members = {
        InsightsTarget = {
            type = "string",
        },
    },
}

M.S3RecordingSinkConfiguration = {
    type = "structure",
    id = "S3RecordingSinkConfiguration",
    members = {
        Destination = {
            type = "string",
        },
        RecordingFileFormat = {
            type = "string",
        },
    },
}

M.SnsTopicSinkConfiguration = {
    type = "structure",
    id = "SnsTopicSinkConfiguration",
    members = {
        InsightsTarget = {
            type = "string",
        },
    },
}

M.SqsQueueSinkConfiguration = {
    type = "structure",
    id = "SqsQueueSinkConfiguration",
    members = {
        InsightsTarget = {
            type = "string",
        },
    },
}

M.VoiceAnalyticsConfigurationStatus = {
    ENABLED = "Enabled",
    DISABLED = "Disabled",
}

M.VoiceAnalyticsProcessorConfiguration = {
    type = "structure",
    id = "VoiceAnalyticsProcessorConfiguration",
    members = {
        SpeakerSearchStatus = {
            type = "string",
        },
        VoiceToneAnalysisStatus = {
            type = "string",
        },
    },
}

M.VoiceEnhancementSinkConfiguration = {
    type = "structure",
    id = "VoiceEnhancementSinkConfiguration",
    members = {
        Disabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.MediaInsightsPipelineConfigurationElement = {
    type = "structure",
    id = "MediaInsightsPipelineConfigurationElement",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AmazonTranscribeCallAnalyticsProcessorConfiguration = M.AmazonTranscribeCallAnalyticsProcessorConfiguration,
        AmazonTranscribeProcessorConfiguration = M.AmazonTranscribeProcessorConfiguration,
        KinesisDataStreamSinkConfiguration = M.KinesisDataStreamSinkConfiguration,
        S3RecordingSinkConfiguration = M.S3RecordingSinkConfiguration,
        VoiceAnalyticsProcessorConfiguration = M.VoiceAnalyticsProcessorConfiguration,
        LambdaFunctionSinkConfiguration = M.LambdaFunctionSinkConfiguration,
        SqsQueueSinkConfiguration = M.SqsQueueSinkConfiguration,
        SnsTopicSinkConfiguration = M.SnsTopicSinkConfiguration,
        VoiceEnhancementSinkConfiguration = M.VoiceEnhancementSinkConfiguration,
    },
}

M.IssueDetectionConfiguration = {
    type = "structure",
    id = "IssueDetectionConfiguration",
    members = {
        RuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.KeywordMatchConfiguration = {
    type = "structure",
    id = "KeywordMatchConfiguration",
    members = {
        RuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Keywords = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Negate = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.SentimentType = {
    NEGATIVE = "NEGATIVE",
}

M.SentimentConfiguration = {
    type = "structure",
    id = "SentimentConfiguration",
    members = {
        RuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SentimentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TimePeriod = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.RealTimeAlertRuleType = {
    KeywordMatch = "KeywordMatch",
    Sentiment = "Sentiment",
    IssueDetection = "IssueDetection",
}

M.RealTimeAlertRule = {
    type = "structure",
    id = "RealTimeAlertRule",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeywordMatchConfiguration = M.KeywordMatchConfiguration,
        SentimentConfiguration = M.SentimentConfiguration,
        IssueDetectionConfiguration = M.IssueDetectionConfiguration,
    },
}

M.RealTimeAlertConfiguration = {
    type = "structure",
    id = "RealTimeAlertConfiguration",
    members = {
        Disabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Rules = {
            type = "list",
            member = M.RealTimeAlertRule,
        },
    },
}

M.CreateMediaInsightsPipelineConfigurationInput = {
    type = "structure",
    id = "CreateMediaInsightsPipelineConfigurationInput",
    members = {
        MediaInsightsPipelineConfigurationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RealTimeAlertConfiguration = M.RealTimeAlertConfiguration,
        Elements = {
            type = "list",
            member = M.MediaInsightsPipelineConfigurationElement,
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.MediaInsightsPipelineConfiguration = {
    type = "structure",
    id = "MediaInsightsPipelineConfiguration",
    members = {
        MediaInsightsPipelineConfigurationName = {
            type = "string",
        },
        MediaInsightsPipelineConfigurationArn = {
            type = "string",
        },
        ResourceAccessRoleArn = {
            type = "string",
        },
        RealTimeAlertConfiguration = M.RealTimeAlertConfiguration,
        Elements = {
            type = "list",
            member = M.MediaInsightsPipelineConfigurationElement,
        },
        MediaInsightsPipelineConfigurationId = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        UpdatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.CreateMediaInsightsPipelineConfigurationOutput = {
    type = "structure",
    id = "CreateMediaInsightsPipelineConfigurationOutput",
    members = {
        MediaInsightsPipelineConfiguration = M.MediaInsightsPipelineConfiguration,
    },
}

M.LiveConnectorRTMPConfiguration = {
    type = "structure",
    id = "LiveConnectorRTMPConfiguration",
    members = {
        Url = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AudioChannels = {
            type = "string",
        },
        AudioSampleRate = {
            type = "string",
        },
    },
}

M.LiveConnectorSinkType = {
    RTMP = "RTMP",
}

M.LiveConnectorSinkConfiguration = {
    type = "structure",
    id = "LiveConnectorSinkConfiguration",
    members = {
        SinkType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RTMPConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LiveConnectorRTMPConfiguration }),
    },
}

M.LiveConnectorMuxType = {
    AudioWithCompositedVideo = "AudioWithCompositedVideo",
    AudioWithActiveSpeakerVideo = "AudioWithActiveSpeakerVideo",
}

M.ChimeSdkMeetingLiveConnectorConfiguration = {
    type = "structure",
    id = "ChimeSdkMeetingLiveConnectorConfiguration",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MuxType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CompositedVideo = M.CompositedVideoArtifactsConfiguration,
        SourceConfiguration = M.SourceConfiguration,
    },
}

M.LiveConnectorSourceType = {
    ChimeSdkMeeting = "ChimeSdkMeeting",
}

M.LiveConnectorSourceConfiguration = {
    type = "structure",
    id = "LiveConnectorSourceConfiguration",
    members = {
        SourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChimeSdkMeetingLiveConnectorConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ChimeSdkMeetingLiveConnectorConfiguration }),
    },
}

M.CreateMediaLiveConnectorPipelineInput = {
    type = "structure",
    id = "CreateMediaLiveConnectorPipelineInput",
    members = {
        Sources = {
            type = "list",
            member = M.LiveConnectorSourceConfiguration,
            traits = {
                required = true,
            },
        },
        Sinks = {
            type = "list",
            member = M.LiveConnectorSinkConfiguration,
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.MediaLiveConnectorPipeline = {
    type = "structure",
    id = "MediaLiveConnectorPipeline",
    members = {
        Sources = {
            type = "list",
            member = M.LiveConnectorSourceConfiguration,
        },
        Sinks = {
            type = "list",
            member = M.LiveConnectorSinkConfiguration,
        },
        MediaPipelineId = {
            type = "string",
        },
        MediaPipelineArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        UpdatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.CreateMediaLiveConnectorPipelineOutput = {
    type = "structure",
    id = "CreateMediaLiveConnectorPipelineOutput",
    members = {
        MediaLiveConnectorPipeline = M.MediaLiveConnectorPipeline,
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.KinesisVideoStreamConfiguration = {
    type = "structure",
    id = "KinesisVideoStreamConfiguration",
    members = {
        Region = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataRetentionInHours = {
            type = "integer",
        },
    },
}

M.CreateMediaPipelineKinesisVideoStreamPoolInput = {
    type = "structure",
    id = "CreateMediaPipelineKinesisVideoStreamPoolInput",
    members = {
        StreamConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.KinesisVideoStreamConfiguration }),
        PoolName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.KinesisVideoStreamPoolStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    FAILED = "FAILED",
}

M.KinesisVideoStreamPoolConfiguration = {
    type = "structure",
    id = "KinesisVideoStreamPoolConfiguration",
    members = {
        PoolArn = {
            type = "string",
        },
        PoolName = {
            type = "string",
        },
        PoolId = {
            type = "string",
        },
        PoolStatus = {
            type = "string",
        },
        PoolSize = {
            type = "integer",
        },
        StreamConfiguration = M.KinesisVideoStreamConfiguration,
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        UpdatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.CreateMediaPipelineKinesisVideoStreamPoolOutput = {
    type = "structure",
    id = "CreateMediaPipelineKinesisVideoStreamPoolOutput",
    members = {
        KinesisVideoStreamPoolConfiguration = M.KinesisVideoStreamPoolConfiguration,
    },
}

M.MediaStreamType = {
    MixedAudio = "MixedAudio",
    IndividualAudio = "IndividualAudio",
}

M.MediaStreamPipelineSinkType = {
    KinesisVideoStreamPool = "KinesisVideoStreamPool",
}

M.MediaStreamSink = {
    type = "structure",
    id = "MediaStreamSink",
    members = {
        SinkArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SinkType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReservedStreamCapacity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        MediaStreamType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MediaStreamSource = {
    type = "structure",
    id = "MediaStreamSource",
    members = {
        SourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateMediaStreamPipelineInput = {
    type = "structure",
    id = "CreateMediaStreamPipelineInput",
    members = {
        Sources = {
            type = "list",
            member = M.MediaStreamSource,
            traits = {
                required = true,
            },
        },
        Sinks = {
            type = "list",
            member = M.MediaStreamSink,
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.MediaStreamPipeline = {
    type = "structure",
    id = "MediaStreamPipeline",
    members = {
        MediaPipelineId = {
            type = "string",
        },
        MediaPipelineArn = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        UpdatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Status = {
            type = "string",
        },
        Sources = {
            type = "list",
            member = M.MediaStreamSource,
        },
        Sinks = {
            type = "list",
            member = M.MediaStreamSink,
        },
    },
}

M.CreateMediaStreamPipelineOutput = {
    type = "structure",
    id = "CreateMediaStreamPipelineOutput",
    members = {
        MediaStreamPipeline = M.MediaStreamPipeline,
    },
}

M.DeleteMediaCapturePipelineInput = {
    type = "structure",
    id = "DeleteMediaCapturePipelineInput",
    members = {
        MediaPipelineId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMediaCapturePipelineOutput = {
    type = "structure",
    id = "DeleteMediaCapturePipelineOutput",
}

M.DeleteMediaInsightsPipelineConfigurationInput = {
    type = "structure",
    id = "DeleteMediaInsightsPipelineConfigurationInput",
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

M.DeleteMediaInsightsPipelineConfigurationOutput = {
    type = "structure",
    id = "DeleteMediaInsightsPipelineConfigurationOutput",
}

M.DeleteMediaPipelineInput = {
    type = "structure",
    id = "DeleteMediaPipelineInput",
    members = {
        MediaPipelineId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMediaPipelineOutput = {
    type = "structure",
    id = "DeleteMediaPipelineOutput",
}

M.DeleteMediaPipelineKinesisVideoStreamPoolInput = {
    type = "structure",
    id = "DeleteMediaPipelineKinesisVideoStreamPoolInput",
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

M.DeleteMediaPipelineKinesisVideoStreamPoolOutput = {
    type = "structure",
    id = "DeleteMediaPipelineKinesisVideoStreamPoolOutput",
}

M.GetMediaCapturePipelineInput = {
    type = "structure",
    id = "GetMediaCapturePipelineInput",
    members = {
        MediaPipelineId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetMediaCapturePipelineOutput = {
    type = "structure",
    id = "GetMediaCapturePipelineOutput",
    members = {
        MediaCapturePipeline = M.MediaCapturePipeline,
    },
}

M.GetMediaInsightsPipelineConfigurationInput = {
    type = "structure",
    id = "GetMediaInsightsPipelineConfigurationInput",
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

M.GetMediaInsightsPipelineConfigurationOutput = {
    type = "structure",
    id = "GetMediaInsightsPipelineConfigurationOutput",
    members = {
        MediaInsightsPipelineConfiguration = M.MediaInsightsPipelineConfiguration,
    },
}

M.GetMediaPipelineInput = {
    type = "structure",
    id = "GetMediaPipelineInput",
    members = {
        MediaPipelineId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.MediaPipeline = {
    type = "structure",
    id = "MediaPipeline",
    members = {
        MediaCapturePipeline = M.MediaCapturePipeline,
        MediaLiveConnectorPipeline = M.MediaLiveConnectorPipeline,
        MediaConcatenationPipeline = M.MediaConcatenationPipeline,
        MediaInsightsPipeline = M.MediaInsightsPipeline,
        MediaStreamPipeline = M.MediaStreamPipeline,
    },
}

M.GetMediaPipelineOutput = {
    type = "structure",
    id = "GetMediaPipelineOutput",
    members = {
        MediaPipeline = M.MediaPipeline,
    },
}

M.GetMediaPipelineKinesisVideoStreamPoolInput = {
    type = "structure",
    id = "GetMediaPipelineKinesisVideoStreamPoolInput",
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

M.GetMediaPipelineKinesisVideoStreamPoolOutput = {
    type = "structure",
    id = "GetMediaPipelineKinesisVideoStreamPoolOutput",
    members = {
        KinesisVideoStreamPoolConfiguration = M.KinesisVideoStreamPoolConfiguration,
    },
}

M.GetSpeakerSearchTaskInput = {
    type = "structure",
    id = "GetSpeakerSearchTaskInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SpeakerSearchTaskId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.MediaPipelineTaskStatus = {
    NotStarted = "NotStarted",
    Initializing = "Initializing",
    InProgress = "InProgress",
    Failed = "Failed",
    Stopping = "Stopping",
    Stopped = "Stopped",
}

M.SpeakerSearchTask = {
    type = "structure",
    id = "SpeakerSearchTask",
    members = {
        SpeakerSearchTaskId = {
            type = "string",
        },
        SpeakerSearchTaskStatus = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        UpdatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetSpeakerSearchTaskOutput = {
    type = "structure",
    id = "GetSpeakerSearchTaskOutput",
    members = {
        SpeakerSearchTask = M.SpeakerSearchTask,
    },
}

M.GetVoiceToneAnalysisTaskInput = {
    type = "structure",
    id = "GetVoiceToneAnalysisTaskInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VoiceToneAnalysisTaskId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.VoiceToneAnalysisTask = {
    type = "structure",
    id = "VoiceToneAnalysisTask",
    members = {
        VoiceToneAnalysisTaskId = {
            type = "string",
        },
        VoiceToneAnalysisTaskStatus = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        UpdatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetVoiceToneAnalysisTaskOutput = {
    type = "structure",
    id = "GetVoiceToneAnalysisTaskOutput",
    members = {
        VoiceToneAnalysisTask = M.VoiceToneAnalysisTask,
    },
}

M.ListMediaCapturePipelinesInput = {
    type = "structure",
    id = "ListMediaCapturePipelinesInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.MediaCapturePipelineSummary = {
    type = "structure",
    id = "MediaCapturePipelineSummary",
    members = {
        MediaPipelineId = {
            type = "string",
        },
        MediaPipelineArn = {
            type = "string",
        },
    },
}

M.ListMediaCapturePipelinesOutput = {
    type = "structure",
    id = "ListMediaCapturePipelinesOutput",
    members = {
        MediaCapturePipelines = {
            type = "list",
            member = M.MediaCapturePipelineSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMediaInsightsPipelineConfigurationsInput = {
    type = "structure",
    id = "ListMediaInsightsPipelineConfigurationsInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.MediaInsightsPipelineConfigurationSummary = {
    type = "structure",
    id = "MediaInsightsPipelineConfigurationSummary",
    members = {
        MediaInsightsPipelineConfigurationName = {
            type = "string",
        },
        MediaInsightsPipelineConfigurationId = {
            type = "string",
        },
        MediaInsightsPipelineConfigurationArn = {
            type = "string",
        },
    },
}

M.ListMediaInsightsPipelineConfigurationsOutput = {
    type = "structure",
    id = "ListMediaInsightsPipelineConfigurationsOutput",
    members = {
        MediaInsightsPipelineConfigurations = {
            type = "list",
            member = M.MediaInsightsPipelineConfigurationSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMediaPipelineKinesisVideoStreamPoolsInput = {
    type = "structure",
    id = "ListMediaPipelineKinesisVideoStreamPoolsInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.KinesisVideoStreamPoolSummary = {
    type = "structure",
    id = "KinesisVideoStreamPoolSummary",
    members = {
        PoolName = {
            type = "string",
        },
        PoolId = {
            type = "string",
        },
        PoolArn = {
            type = "string",
        },
    },
}

M.ListMediaPipelineKinesisVideoStreamPoolsOutput = {
    type = "structure",
    id = "ListMediaPipelineKinesisVideoStreamPoolsOutput",
    members = {
        KinesisVideoStreamPools = {
            type = "list",
            member = M.KinesisVideoStreamPoolSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMediaPipelinesInput = {
    type = "structure",
    id = "ListMediaPipelinesInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.MediaPipelineSummary = {
    type = "structure",
    id = "MediaPipelineSummary",
    members = {
        MediaPipelineId = {
            type = "string",
        },
        MediaPipelineArn = {
            type = "string",
        },
    },
}

M.ListMediaPipelinesOutput = {
    type = "structure",
    id = "ListMediaPipelinesOutput",
    members = {
        MediaPipelines = {
            type = "list",
            member = M.MediaPipelineSummary,
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
        ResourceARN = {
            type = "string",
            traits = {
                http_query = "arn",
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
            type = "list",
            member = M.Tag,
        },
    },
}

M.KinesisVideoStreamSourceTaskConfiguration = {
    type = "structure",
    id = "KinesisVideoStreamSourceTaskConfiguration",
    members = {
        StreamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChannelId = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        FragmentNumber = {
            type = "string",
        },
    },
}

M.StartSpeakerSearchTaskInput = {
    type = "structure",
    id = "StartSpeakerSearchTaskInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VoiceProfileDomainArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KinesisVideoStreamSourceTaskConfiguration = M.KinesisVideoStreamSourceTaskConfiguration,
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.StartSpeakerSearchTaskOutput = {
    type = "structure",
    id = "StartSpeakerSearchTaskOutput",
    members = {
        SpeakerSearchTask = M.SpeakerSearchTask,
    },
}

M.VoiceAnalyticsLanguageCode = {
    EN_US = "en-US",
}

M.StartVoiceToneAnalysisTaskInput = {
    type = "structure",
    id = "StartVoiceToneAnalysisTaskInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KinesisVideoStreamSourceTaskConfiguration = M.KinesisVideoStreamSourceTaskConfiguration,
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.StartVoiceToneAnalysisTaskOutput = {
    type = "structure",
    id = "StartVoiceToneAnalysisTaskOutput",
    members = {
        VoiceToneAnalysisTask = M.VoiceToneAnalysisTask,
    },
}

M.StopSpeakerSearchTaskInput = {
    type = "structure",
    id = "StopSpeakerSearchTaskInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SpeakerSearchTaskId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopSpeakerSearchTaskOutput = {
    type = "structure",
    id = "StopSpeakerSearchTaskOutput",
}

M.StopVoiceToneAnalysisTaskInput = {
    type = "structure",
    id = "StopVoiceToneAnalysisTaskInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VoiceToneAnalysisTaskId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopVoiceToneAnalysisTaskOutput = {
    type = "structure",
    id = "StopVoiceToneAnalysisTaskOutput",
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
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
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.UpdateMediaInsightsPipelineConfigurationInput = {
    type = "structure",
    id = "UpdateMediaInsightsPipelineConfigurationInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RealTimeAlertConfiguration = M.RealTimeAlertConfiguration,
        Elements = {
            type = "list",
            member = M.MediaInsightsPipelineConfigurationElement,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateMediaInsightsPipelineConfigurationOutput = {
    type = "structure",
    id = "UpdateMediaInsightsPipelineConfigurationOutput",
    members = {
        MediaInsightsPipelineConfiguration = M.MediaInsightsPipelineConfiguration,
    },
}

M.MediaPipelineStatusUpdate = {
    Pause = "Pause",
    Resume = "Resume",
}

M.UpdateMediaInsightsPipelineStatusInput = {
    type = "structure",
    id = "UpdateMediaInsightsPipelineStatusInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UpdateStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateMediaInsightsPipelineStatusOutput = {
    type = "structure",
    id = "UpdateMediaInsightsPipelineStatusOutput",
}

M.KinesisVideoStreamConfigurationUpdate = {
    type = "structure",
    id = "KinesisVideoStreamConfigurationUpdate",
    members = {
        DataRetentionInHours = {
            type = "integer",
        },
    },
}

M.UpdateMediaPipelineKinesisVideoStreamPoolInput = {
    type = "structure",
    id = "UpdateMediaPipelineKinesisVideoStreamPoolInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        StreamConfiguration = M.KinesisVideoStreamConfigurationUpdate,
    },
}

M.UpdateMediaPipelineKinesisVideoStreamPoolOutput = {
    type = "structure",
    id = "UpdateMediaPipelineKinesisVideoStreamPoolOutput",
    members = {
        KinesisVideoStreamPoolConfiguration = M.KinesisVideoStreamPoolConfiguration,
    },
}

return M
