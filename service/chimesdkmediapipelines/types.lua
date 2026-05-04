local M = {}

M.ActiveSpeakerPosition = {
    TopLeft = "TopLeft",
    TopRight = "TopRight",
    BottomLeft = "BottomLeft",
    BottomRight = "BottomRight",
}

M.ActiveSpeakerOnlyConfiguration = {
    type = "structure",
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
        },
        PostCallAnalyticsSettings = {
            type = "structure",
        },
        CallAnalyticsStreamCategories = {
            type = "list",
            member_type = "string",
        },
    },
}

M.AmazonTranscribeProcessorConfiguration = {
    type = "structure",
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
        },
        EnablePartialResultsStabilization = {
            type = "boolean",
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
        },
        IdentifyLanguage = {
            type = "boolean",
        },
        IdentifyMultipleLanguages = {
            type = "boolean",
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
    members = {
        Audio = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Video = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Content = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DataChannel = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TranscriptionMessages = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        MeetingEvents = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        CompositedVideo = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AudioMuxType = {
    AudioOnly = "AudioOnly",
    AudioWithActiveSpeakerVideo = "AudioWithActiveSpeakerVideo",
    AudioWithCompositedVideo = "AudioWithCompositedVideo",
}

M.AudioArtifactsConfiguration = {
    type = "structure",
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
    members = {
        TileOrder = {
            type = "string",
        },
        TilePosition = {
            type = "string",
        },
        TileCount = {
            type = "number",
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
    members = {
        TileOrder = {
            type = "string",
        },
        TilePosition = {
            type = "string",
        },
        TileCount = {
            type = "number",
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
    members = {
        CornerRadius = {
            type = "number",
        },
        BorderColor = {
            type = "string",
        },
        HighlightColor = {
            type = "string",
        },
        BorderThickness = {
            type = "number",
        },
    },
}

M.GridViewConfiguration = {
    type = "structure",
    members = {
        ContentShareLayout = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PresenterOnlyConfiguration = {
            type = "structure",
        },
        ActiveSpeakerOnlyConfiguration = {
            type = "structure",
        },
        HorizontalLayoutConfiguration = {
            type = "structure",
        },
        VerticalLayoutConfiguration = {
            type = "structure",
        },
        VideoAttribute = {
            type = "structure",
        },
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
    members = {
        Layout = {
            type = "string",
        },
        Resolution = {
            type = "string",
        },
        GridViewConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    members = {
        Audio = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Video = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Content = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        CompositedVideo = {
            type = "structure",
        },
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
    members = {
        ChannelId = {
            type = "number",
            traits = {
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
    members = {
        AttendeeIds = {
            type = "list",
            member_type = "string",
        },
        ExternalUserIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.SourceConfiguration = {
    type = "structure",
    members = {
        SelectedVideoStreams = {
            type = "structure",
        },
    },
}

M.ChimeSdkMeetingConfiguration = {
    type = "structure",
    members = {
        SourceConfiguration = {
            type = "structure",
        },
        ArtifactsConfiguration = {
            type = "structure",
        },
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
        },
        ChimeSdkMeetingConfiguration = {
            type = "structure",
        },
        SseAwsKeyManagementParams = {
            type = "structure",
        },
        SinkIamRoleArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        },
        UpdatedTimestamp = {
            type = "timestamp",
        },
        ChimeSdkMeetingConfiguration = {
            type = "structure",
        },
        SseAwsKeyManagementParams = {
            type = "structure",
        },
        SinkIamRoleArn = {
            type = "string",
        },
    },
}

M.CreateMediaCapturePipelineOutput = {
    type = "structure",
    members = {
        MediaCapturePipeline = {
            type = "structure",
        },
    },
}

M.ForbiddenException = {
    type = "structure",
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
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3BucketSinkConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ChimeSdkMeetingConcatenationConfiguration = {
    type = "structure",
    members = {
        ArtifactsConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.MediaCapturePipelineSourceConfiguration = {
    type = "structure",
    members = {
        MediaPipelineArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChimeSdkMeetingConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ConcatenationSourceType = {
    MediaCapturePipeline = "MediaCapturePipeline",
}

M.ConcatenationSource = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MediaCapturePipelineSourceConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateMediaConcatenationPipelineInput = {
    type = "structure",
    members = {
        Sources = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Sinks = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.MediaConcatenationPipeline = {
    type = "structure",
    members = {
        MediaPipelineId = {
            type = "string",
        },
        MediaPipelineArn = {
            type = "string",
        },
        Sources = {
            type = "list",
            member_type = "structure",
        },
        Sinks = {
            type = "list",
            member_type = "structure",
        },
        Status = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        UpdatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.CreateMediaConcatenationPipelineOutput = {
    type = "structure",
    members = {
        MediaConcatenationPipeline = {
            type = "structure",
        },
    },
}

M.FragmentSelectorType = {
    ProducerTimestamp = "ProducerTimestamp",
    ServerTimestamp = "ServerTimestamp",
}

M.TimestampRange = {
    type = "structure",
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
    members = {
        FragmentSelectorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TimestampRange = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RecordingStreamConfiguration = {
    type = "structure",
    members = {
        StreamArn = {
            type = "string",
        },
    },
}

M.KinesisVideoStreamRecordingSourceRuntimeConfiguration = {
    type = "structure",
    members = {
        Streams = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        FragmentSelector = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.MediaEncoding = {
    PCM = "pcm",
}

M.StreamChannelDefinition = {
    type = "structure",
    members = {
        NumberOfChannels = {
            type = "number",
            traits = {
                required = true,
            },
        },
        ChannelDefinitions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.StreamConfiguration = {
    type = "structure",
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
        StreamChannelDefinition = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.KinesisVideoStreamSourceRuntimeConfiguration = {
    type = "structure",
    members = {
        Streams = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
    members = {
        MediaInsightsPipelineConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KinesisVideoStreamSourceRuntimeConfiguration = {
            type = "structure",
        },
        MediaInsightsRuntimeMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        KinesisVideoStreamRecordingSourceRuntimeConfiguration = {
            type = "structure",
        },
        S3RecordingSinkRuntimeConfiguration = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ClientRequestToken = {
            type = "string",
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
        KinesisVideoStreamSourceRuntimeConfiguration = {
            type = "structure",
        },
        MediaInsightsRuntimeMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        KinesisVideoStreamRecordingSourceRuntimeConfiguration = {
            type = "structure",
        },
        S3RecordingSinkRuntimeConfiguration = {
            type = "structure",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        ElementStatuses = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateMediaInsightsPipelineOutput = {
    type = "structure",
    members = {
        MediaInsightsPipeline = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.NotFoundException = {
    type = "structure",
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
    members = {
        InsightsTarget = {
            type = "string",
        },
    },
}

M.LambdaFunctionSinkConfiguration = {
    type = "structure",
    members = {
        InsightsTarget = {
            type = "string",
        },
    },
}

M.S3RecordingSinkConfiguration = {
    type = "structure",
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
    members = {
        InsightsTarget = {
            type = "string",
        },
    },
}

M.SqsQueueSinkConfiguration = {
    type = "structure",
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
    members = {
        Disabled = {
            type = "boolean",
        },
    },
}

M.MediaInsightsPipelineConfigurationElement = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AmazonTranscribeCallAnalyticsProcessorConfiguration = {
            type = "structure",
        },
        AmazonTranscribeProcessorConfiguration = {
            type = "structure",
        },
        KinesisDataStreamSinkConfiguration = {
            type = "structure",
        },
        S3RecordingSinkConfiguration = {
            type = "structure",
        },
        VoiceAnalyticsProcessorConfiguration = {
            type = "structure",
        },
        LambdaFunctionSinkConfiguration = {
            type = "structure",
        },
        SqsQueueSinkConfiguration = {
            type = "structure",
        },
        SnsTopicSinkConfiguration = {
            type = "structure",
        },
        VoiceEnhancementSinkConfiguration = {
            type = "structure",
        },
    },
}

M.IssueDetectionConfiguration = {
    type = "structure",
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
    members = {
        RuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Keywords = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Negate = {
            type = "boolean",
        },
    },
}

M.SentimentType = {
    NEGATIVE = "NEGATIVE",
}

M.SentimentConfiguration = {
    type = "structure",
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
            type = "number",
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
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeywordMatchConfiguration = {
            type = "structure",
        },
        SentimentConfiguration = {
            type = "structure",
        },
        IssueDetectionConfiguration = {
            type = "structure",
        },
    },
}

M.RealTimeAlertConfiguration = {
    type = "structure",
    members = {
        Disabled = {
            type = "boolean",
        },
        Rules = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateMediaInsightsPipelineConfigurationInput = {
    type = "structure",
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
        RealTimeAlertConfiguration = {
            type = "structure",
        },
        Elements = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ClientRequestToken = {
            type = "string",
        },
    },
}

M.MediaInsightsPipelineConfiguration = {
    type = "structure",
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
        RealTimeAlertConfiguration = {
            type = "structure",
        },
        Elements = {
            type = "list",
            member_type = "structure",
        },
        MediaInsightsPipelineConfigurationId = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        UpdatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.CreateMediaInsightsPipelineConfigurationOutput = {
    type = "structure",
    members = {
        MediaInsightsPipelineConfiguration = {
            type = "structure",
        },
    },
}

M.LiveConnectorRTMPConfiguration = {
    type = "structure",
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
    members = {
        SinkType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RTMPConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.LiveConnectorMuxType = {
    AudioWithCompositedVideo = "AudioWithCompositedVideo",
    AudioWithActiveSpeakerVideo = "AudioWithActiveSpeakerVideo",
}

M.ChimeSdkMeetingLiveConnectorConfiguration = {
    type = "structure",
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
        CompositedVideo = {
            type = "structure",
        },
        SourceConfiguration = {
            type = "structure",
        },
    },
}

M.LiveConnectorSourceType = {
    ChimeSdkMeeting = "ChimeSdkMeeting",
}

M.LiveConnectorSourceConfiguration = {
    type = "structure",
    members = {
        SourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChimeSdkMeetingLiveConnectorConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateMediaLiveConnectorPipelineInput = {
    type = "structure",
    members = {
        Sources = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Sinks = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.MediaLiveConnectorPipeline = {
    type = "structure",
    members = {
        Sources = {
            type = "list",
            member_type = "structure",
        },
        Sinks = {
            type = "list",
            member_type = "structure",
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
        },
        UpdatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.CreateMediaLiveConnectorPipelineOutput = {
    type = "structure",
    members = {
        MediaLiveConnectorPipeline = {
            type = "structure",
        },
    },
}

M.ConflictException = {
    type = "structure",
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
    members = {
        Region = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataRetentionInHours = {
            type = "number",
        },
    },
}

M.CreateMediaPipelineKinesisVideoStreamPoolInput = {
    type = "structure",
    members = {
        StreamConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        PoolName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        StreamConfiguration = {
            type = "structure",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        UpdatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.CreateMediaPipelineKinesisVideoStreamPoolOutput = {
    type = "structure",
    members = {
        KinesisVideoStreamPoolConfiguration = {
            type = "structure",
        },
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
            type = "number",
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
    members = {
        Sources = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Sinks = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.MediaStreamPipeline = {
    type = "structure",
    members = {
        MediaPipelineId = {
            type = "string",
        },
        MediaPipelineArn = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        UpdatedTimestamp = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        Sources = {
            type = "list",
            member_type = "structure",
        },
        Sinks = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateMediaStreamPipelineOutput = {
    type = "structure",
    members = {
        MediaStreamPipeline = {
            type = "structure",
        },
    },
}

M.DeleteMediaCapturePipelineInput = {
    type = "structure",
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
}

M.DeleteMediaInsightsPipelineConfigurationInput = {
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

M.DeleteMediaInsightsPipelineConfigurationOutput = {
    type = "structure",
}

M.DeleteMediaPipelineInput = {
    type = "structure",
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
}

M.DeleteMediaPipelineKinesisVideoStreamPoolInput = {
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

M.DeleteMediaPipelineKinesisVideoStreamPoolOutput = {
    type = "structure",
}

M.GetMediaCapturePipelineInput = {
    type = "structure",
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
    members = {
        MediaCapturePipeline = {
            type = "structure",
        },
    },
}

M.GetMediaInsightsPipelineConfigurationInput = {
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

M.GetMediaInsightsPipelineConfigurationOutput = {
    type = "structure",
    members = {
        MediaInsightsPipelineConfiguration = {
            type = "structure",
        },
    },
}

M.GetMediaPipelineInput = {
    type = "structure",
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
    members = {
        MediaCapturePipeline = {
            type = "structure",
        },
        MediaLiveConnectorPipeline = {
            type = "structure",
        },
        MediaConcatenationPipeline = {
            type = "structure",
        },
        MediaInsightsPipeline = {
            type = "structure",
        },
        MediaStreamPipeline = {
            type = "structure",
        },
    },
}

M.GetMediaPipelineOutput = {
    type = "structure",
    members = {
        MediaPipeline = {
            type = "structure",
        },
    },
}

M.GetMediaPipelineKinesisVideoStreamPoolInput = {
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

M.GetMediaPipelineKinesisVideoStreamPoolOutput = {
    type = "structure",
    members = {
        KinesisVideoStreamPoolConfiguration = {
            type = "structure",
        },
    },
}

M.GetSpeakerSearchTaskInput = {
    type = "structure",
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
    members = {
        SpeakerSearchTaskId = {
            type = "string",
        },
        SpeakerSearchTaskStatus = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        UpdatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.GetSpeakerSearchTaskOutput = {
    type = "structure",
    members = {
        SpeakerSearchTask = {
            type = "structure",
        },
    },
}

M.GetVoiceToneAnalysisTaskInput = {
    type = "structure",
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
    members = {
        VoiceToneAnalysisTaskId = {
            type = "string",
        },
        VoiceToneAnalysisTaskStatus = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        UpdatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.GetVoiceToneAnalysisTaskOutput = {
    type = "structure",
    members = {
        VoiceToneAnalysisTask = {
            type = "structure",
        },
    },
}

M.ListMediaCapturePipelinesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.MediaCapturePipelineSummary = {
    type = "structure",
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
    members = {
        MediaCapturePipelines = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMediaInsightsPipelineConfigurationsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.MediaInsightsPipelineConfigurationSummary = {
    type = "structure",
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
    members = {
        MediaInsightsPipelineConfigurations = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMediaPipelineKinesisVideoStreamPoolsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.KinesisVideoStreamPoolSummary = {
    type = "structure",
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
    members = {
        KinesisVideoStreamPools = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMediaPipelinesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.MediaPipelineSummary = {
    type = "structure",
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
    members = {
        MediaPipelines = {
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
    members = {
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.KinesisVideoStreamSourceTaskConfiguration = {
    type = "structure",
    members = {
        StreamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChannelId = {
            type = "number",
            traits = {
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
        KinesisVideoStreamSourceTaskConfiguration = {
            type = "structure",
        },
        ClientRequestToken = {
            type = "string",
        },
    },
}

M.StartSpeakerSearchTaskOutput = {
    type = "structure",
    members = {
        SpeakerSearchTask = {
            type = "structure",
        },
    },
}

M.VoiceAnalyticsLanguageCode = {
    EN_US = "en-US",
}

M.StartVoiceToneAnalysisTaskInput = {
    type = "structure",
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
        KinesisVideoStreamSourceTaskConfiguration = {
            type = "structure",
        },
        ClientRequestToken = {
            type = "string",
        },
    },
}

M.StartVoiceToneAnalysisTaskOutput = {
    type = "structure",
    members = {
        VoiceToneAnalysisTask = {
            type = "structure",
        },
    },
}

M.StopSpeakerSearchTaskInput = {
    type = "structure",
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
}

M.StopVoiceToneAnalysisTaskInput = {
    type = "structure",
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
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
            traits = {
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
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateMediaInsightsPipelineConfigurationInput = {
    type = "structure",
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
        RealTimeAlertConfiguration = {
            type = "structure",
        },
        Elements = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateMediaInsightsPipelineConfigurationOutput = {
    type = "structure",
    members = {
        MediaInsightsPipelineConfiguration = {
            type = "structure",
        },
    },
}

M.MediaPipelineStatusUpdate = {
    Pause = "Pause",
    Resume = "Resume",
}

M.UpdateMediaInsightsPipelineStatusInput = {
    type = "structure",
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
}

M.KinesisVideoStreamConfigurationUpdate = {
    type = "structure",
    members = {
        DataRetentionInHours = {
            type = "number",
        },
    },
}

M.UpdateMediaPipelineKinesisVideoStreamPoolInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        StreamConfiguration = {
            type = "structure",
        },
    },
}

M.UpdateMediaPipelineKinesisVideoStreamPoolOutput = {
    type = "structure",
    members = {
        KinesisVideoStreamPoolConfiguration = {
            type = "structure",
        },
    },
}

return M
