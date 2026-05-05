local M = {}

M.ActiveSpeakerPosition = {
    TopLeft = "TopLeft",
    TopRight = "TopRight",
    BottomLeft = "BottomLeft",
    BottomRight = "BottomRight",
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

M.VocabularyFilterMethod = {
    REMOVE = "remove",
    MASK = "mask",
    TAG = "tag",
}

M.AudioArtifactsConcatenationState = {
    Enabled = "Enabled",
}

M.ArtifactsConcatenationState = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.AudioMuxType = {
    AudioOnly = "AudioOnly",
    AudioWithActiveSpeakerVideo = "AudioWithActiveSpeakerVideo",
    AudioWithCompositedVideo = "AudioWithCompositedVideo",
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

M.PresenterPosition = {
    TopLeft = "TopLeft",
    TopRight = "TopRight",
    BottomLeft = "BottomLeft",
    BottomRight = "BottomRight",
}

M.VerticalTilePosition = {
    Left = "Left",
    Right = "Right",
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

M.LayoutOption = {
    GridView = "GridView",
}

M.ResolutionOption = {
    HD = "HD",
    FHD = "FHD",
}

M.ContentMuxType = {
    ContentOnly = "ContentOnly",
}

M.ArtifactsState = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.VideoMuxType = {
    VideoOnly = "VideoOnly",
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

M.ParticipantRole = {
    AGENT = "AGENT",
    CUSTOMER = "CUSTOMER",
}

M.MediaPipelineSinkType = {
    S3Bucket = "S3Bucket",
}

M.MediaPipelineSourceType = {
    ChimeSdkMeeting = "ChimeSdkMeeting",
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

M.ConcatenationSinkType = {
    S3Bucket = "S3Bucket",
}

M.ConcatenationSourceType = {
    MediaCapturePipeline = "MediaCapturePipeline",
}

M.FragmentSelectorType = {
    ProducerTimestamp = "ProducerTimestamp",
    ServerTimestamp = "ServerTimestamp",
}

M.MediaEncoding = {
    PCM = "pcm",
}

M.RecordingFileFormat = {
    Wav = "Wav",
    Opus = "Opus",
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

M.VoiceAnalyticsConfigurationStatus = {
    ENABLED = "Enabled",
    DISABLED = "Disabled",
}

M.SentimentType = {
    NEGATIVE = "NEGATIVE",
}

M.RealTimeAlertRuleType = {
    KeywordMatch = "KeywordMatch",
    Sentiment = "Sentiment",
    IssueDetection = "IssueDetection",
}

M.LiveConnectorSinkType = {
    RTMP = "RTMP",
}

M.LiveConnectorMuxType = {
    AudioWithCompositedVideo = "AudioWithCompositedVideo",
    AudioWithActiveSpeakerVideo = "AudioWithActiveSpeakerVideo",
}

M.LiveConnectorSourceType = {
    ChimeSdkMeeting = "ChimeSdkMeeting",
}

M.KinesisVideoStreamPoolStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    FAILED = "FAILED",
}

M.MediaStreamType = {
    MixedAudio = "MixedAudio",
    IndividualAudio = "IndividualAudio",
}

M.MediaStreamPipelineSinkType = {
    KinesisVideoStreamPool = "KinesisVideoStreamPool",
}

M.MediaPipelineTaskStatus = {
    NotStarted = "NotStarted",
    Initializing = "Initializing",
    InProgress = "InProgress",
    Failed = "Failed",
    Stopping = "Stopping",
    Stopped = "Stopped",
}

M.VoiceAnalyticsLanguageCode = {
    EN_US = "en-US",
}

M.MediaPipelineStatusUpdate = {
    Pause = "Pause",
    Resume = "Resume",
}

return M
