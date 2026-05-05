local record CreateMediaCapturePipelineInput
    SourceType: string
    SourceArn: string
    SinkType: string
    SinkArn: string
    ClientRequestToken: string
    ChimeSdkMeetingConfiguration: ChimeSdkMeetingConfiguration
    SseAwsKeyManagementParams: SseAwsKeyManagementParams
    SinkIamRoleArn: string
    Tags: {Tag}
end

local record CreateMediaCapturePipelineOutput
    MediaCapturePipeline: MediaCapturePipeline
end

local record CreateMediaConcatenationPipelineInput
    Sources: {ConcatenationSource}
    Sinks: {ConcatenationSink}
    ClientRequestToken: string
    Tags: {Tag}
end

local record CreateMediaConcatenationPipelineOutput
    MediaConcatenationPipeline: MediaConcatenationPipeline
end

local record CreateMediaInsightsPipelineInput
    MediaInsightsPipelineConfigurationArn: string
    KinesisVideoStreamSourceRuntimeConfiguration: KinesisVideoStreamSourceRuntimeConfiguration
    MediaInsightsRuntimeMetadata: {string : string}
    KinesisVideoStreamRecordingSourceRuntimeConfiguration: KinesisVideoStreamRecordingSourceRuntimeConfiguration
    S3RecordingSinkRuntimeConfiguration: S3RecordingSinkRuntimeConfiguration
    Tags: {Tag}
    ClientRequestToken: string
end

local record CreateMediaInsightsPipelineOutput
    MediaInsightsPipeline: MediaInsightsPipeline
end

local record CreateMediaInsightsPipelineConfigurationInput
    MediaInsightsPipelineConfigurationName: string
    ResourceAccessRoleArn: string
    RealTimeAlertConfiguration: RealTimeAlertConfiguration
    Elements: {MediaInsightsPipelineConfigurationElement}
    Tags: {Tag}
    ClientRequestToken: string
end

local record CreateMediaInsightsPipelineConfigurationOutput
    MediaInsightsPipelineConfiguration: MediaInsightsPipelineConfiguration
end

local record CreateMediaLiveConnectorPipelineInput
    Sources: {LiveConnectorSourceConfiguration}
    Sinks: {LiveConnectorSinkConfiguration}
    ClientRequestToken: string
    Tags: {Tag}
end

local record CreateMediaLiveConnectorPipelineOutput
    MediaLiveConnectorPipeline: MediaLiveConnectorPipeline
end

local record CreateMediaPipelineKinesisVideoStreamPoolInput
    StreamConfiguration: KinesisVideoStreamConfiguration
    PoolName: string
    ClientRequestToken: string
    Tags: {Tag}
end

local record CreateMediaPipelineKinesisVideoStreamPoolOutput
    KinesisVideoStreamPoolConfiguration: KinesisVideoStreamPoolConfiguration
end

local record CreateMediaStreamPipelineInput
    Sources: {MediaStreamSource}
    Sinks: {MediaStreamSink}
    ClientRequestToken: string
    Tags: {Tag}
end

local record CreateMediaStreamPipelineOutput
    MediaStreamPipeline: MediaStreamPipeline
end

local record DeleteMediaCapturePipelineInput
    MediaPipelineId: string
end

local record DeleteMediaCapturePipelineOutput
end

local record DeleteMediaInsightsPipelineConfigurationInput
    Identifier: string
end

local record DeleteMediaInsightsPipelineConfigurationOutput
end

local record DeleteMediaPipelineInput
    MediaPipelineId: string
end

local record DeleteMediaPipelineOutput
end

local record DeleteMediaPipelineKinesisVideoStreamPoolInput
    Identifier: string
end

local record DeleteMediaPipelineKinesisVideoStreamPoolOutput
end

local record GetMediaCapturePipelineInput
    MediaPipelineId: string
end

local record GetMediaCapturePipelineOutput
    MediaCapturePipeline: MediaCapturePipeline
end

local record GetMediaInsightsPipelineConfigurationInput
    Identifier: string
end

local record GetMediaInsightsPipelineConfigurationOutput
    MediaInsightsPipelineConfiguration: MediaInsightsPipelineConfiguration
end

local record GetMediaPipelineInput
    MediaPipelineId: string
end

local record GetMediaPipelineOutput
    MediaPipeline: MediaPipeline
end

local record GetMediaPipelineKinesisVideoStreamPoolInput
    Identifier: string
end

local record GetMediaPipelineKinesisVideoStreamPoolOutput
    KinesisVideoStreamPoolConfiguration: KinesisVideoStreamPoolConfiguration
end

local record GetSpeakerSearchTaskInput
    Identifier: string
    SpeakerSearchTaskId: string
end

local record GetSpeakerSearchTaskOutput
    SpeakerSearchTask: SpeakerSearchTask
end

local record GetVoiceToneAnalysisTaskInput
    Identifier: string
    VoiceToneAnalysisTaskId: string
end

local record GetVoiceToneAnalysisTaskOutput
    VoiceToneAnalysisTask: VoiceToneAnalysisTask
end

local record ListMediaCapturePipelinesInput
    NextToken: string
    MaxResults: number
end

local record ListMediaCapturePipelinesOutput
    MediaCapturePipelines: {MediaCapturePipelineSummary}
    NextToken: string
end

local record ListMediaInsightsPipelineConfigurationsInput
    NextToken: string
    MaxResults: number
end

local record ListMediaInsightsPipelineConfigurationsOutput
    MediaInsightsPipelineConfigurations: {MediaInsightsPipelineConfigurationSummary}
    NextToken: string
end

local record ListMediaPipelineKinesisVideoStreamPoolsInput
    NextToken: string
    MaxResults: number
end

local record ListMediaPipelineKinesisVideoStreamPoolsOutput
    KinesisVideoStreamPools: {KinesisVideoStreamPoolSummary}
    NextToken: string
end

local record ListMediaPipelinesInput
    NextToken: string
    MaxResults: number
end

local record ListMediaPipelinesOutput
    MediaPipelines: {MediaPipelineSummary}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceARN: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record StartSpeakerSearchTaskInput
    Identifier: string
    VoiceProfileDomainArn: string
    KinesisVideoStreamSourceTaskConfiguration: KinesisVideoStreamSourceTaskConfiguration
    ClientRequestToken: string
end

local record StartSpeakerSearchTaskOutput
    SpeakerSearchTask: SpeakerSearchTask
end

local record StartVoiceToneAnalysisTaskInput
    Identifier: string
    LanguageCode: string
    KinesisVideoStreamSourceTaskConfiguration: KinesisVideoStreamSourceTaskConfiguration
    ClientRequestToken: string
end

local record StartVoiceToneAnalysisTaskOutput
    VoiceToneAnalysisTask: VoiceToneAnalysisTask
end

local record StopSpeakerSearchTaskInput
    Identifier: string
    SpeakerSearchTaskId: string
end

local record StopSpeakerSearchTaskOutput
end

local record StopVoiceToneAnalysisTaskInput
    Identifier: string
    VoiceToneAnalysisTaskId: string
end

local record StopVoiceToneAnalysisTaskOutput
end

local record TagResourceInput
    ResourceARN: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceARN: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateMediaInsightsPipelineConfigurationInput
    Identifier: string
    ResourceAccessRoleArn: string
    RealTimeAlertConfiguration: RealTimeAlertConfiguration
    Elements: {MediaInsightsPipelineConfigurationElement}
end

local record UpdateMediaInsightsPipelineConfigurationOutput
    MediaInsightsPipelineConfiguration: MediaInsightsPipelineConfiguration
end

local record UpdateMediaInsightsPipelineStatusInput
    Identifier: string
    UpdateStatus: string
end

local record UpdateMediaInsightsPipelineStatusOutput
end

local record UpdateMediaPipelineKinesisVideoStreamPoolInput
    Identifier: string
    StreamConfiguration: KinesisVideoStreamConfigurationUpdate
end

local record UpdateMediaPipelineKinesisVideoStreamPoolOutput
    KinesisVideoStreamPoolConfiguration: KinesisVideoStreamPoolConfiguration
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
end

local record ThrottledClientException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
end

local record ThrottledClientException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record NotFoundException
    Code: string
    Message: string
    RequestId: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
end

local record ThrottledClientException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record NotFoundException
    Code: string
    Message: string
    RequestId: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
end

local record ThrottledClientException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
end

local record ThrottledClientException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ConflictException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
end

local record ThrottledClientException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record NotFoundException
    Code: string
    Message: string
    RequestId: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
end

local record ThrottledClientException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record NotFoundException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
end

local record ThrottledClientException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ConflictException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record NotFoundException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
end

local record ThrottledClientException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ConflictException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record NotFoundException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
end

local record ThrottledClientException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ConflictException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record NotFoundException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
end

local record ThrottledClientException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record NotFoundException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
end

local record ThrottledClientException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record NotFoundException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
end

local record ThrottledClientException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record NotFoundException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
end

local record ThrottledClientException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record NotFoundException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
end

local record ThrottledClientException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record NotFoundException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
end

local record ThrottledClientException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record NotFoundException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
end

local record ThrottledClientException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
end

local record ThrottledClientException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
end

local record ThrottledClientException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
end

local record ThrottledClientException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
end

local record ThrottledClientException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record NotFoundException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
end

local record ThrottledClientException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ConflictException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record NotFoundException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
end

local record ThrottledClientException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ConflictException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record NotFoundException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
end

local record ThrottledClientException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ConflictException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record NotFoundException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
end

local record ThrottledClientException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ConflictException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record NotFoundException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
end

local record ThrottledClientException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record NotFoundException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
end

local record ThrottledClientException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record NotFoundException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
end

local record ThrottledClientException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ConflictException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record NotFoundException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
end

local record ThrottledClientException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ConflictException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record NotFoundException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
end

local record ThrottledClientException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ConflictException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record NotFoundException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
end

local record ThrottledClientException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
    RequestId: string
end

local type MediaPipelineSourceType = "ChimeSdkMeeting"

local type MediaPipelineStatusUpdate = "Pause" | "Resume"

local type VoiceAnalyticsLanguageCode = "en-US"

local type MediaPipelineSinkType = "S3Bucket"

local record M
    CreateMediaCapturePipelineInput: CreateMediaCapturePipelineInput
    CreateMediaCapturePipelineOutput: CreateMediaCapturePipelineOutput
    CreateMediaConcatenationPipelineInput: CreateMediaConcatenationPipelineInput
    CreateMediaConcatenationPipelineOutput: CreateMediaConcatenationPipelineOutput
    CreateMediaInsightsPipelineInput: CreateMediaInsightsPipelineInput
    CreateMediaInsightsPipelineOutput: CreateMediaInsightsPipelineOutput
    CreateMediaInsightsPipelineConfigurationInput: CreateMediaInsightsPipelineConfigurationInput
    CreateMediaInsightsPipelineConfigurationOutput: CreateMediaInsightsPipelineConfigurationOutput
    CreateMediaLiveConnectorPipelineInput: CreateMediaLiveConnectorPipelineInput
    CreateMediaLiveConnectorPipelineOutput: CreateMediaLiveConnectorPipelineOutput
    CreateMediaPipelineKinesisVideoStreamPoolInput: CreateMediaPipelineKinesisVideoStreamPoolInput
    CreateMediaPipelineKinesisVideoStreamPoolOutput: CreateMediaPipelineKinesisVideoStreamPoolOutput
    CreateMediaStreamPipelineInput: CreateMediaStreamPipelineInput
    CreateMediaStreamPipelineOutput: CreateMediaStreamPipelineOutput
    DeleteMediaCapturePipelineInput: DeleteMediaCapturePipelineInput
    DeleteMediaCapturePipelineOutput: DeleteMediaCapturePipelineOutput
    DeleteMediaInsightsPipelineConfigurationInput: DeleteMediaInsightsPipelineConfigurationInput
    DeleteMediaInsightsPipelineConfigurationOutput: DeleteMediaInsightsPipelineConfigurationOutput
    DeleteMediaPipelineInput: DeleteMediaPipelineInput
    DeleteMediaPipelineOutput: DeleteMediaPipelineOutput
    DeleteMediaPipelineKinesisVideoStreamPoolInput: DeleteMediaPipelineKinesisVideoStreamPoolInput
    DeleteMediaPipelineKinesisVideoStreamPoolOutput: DeleteMediaPipelineKinesisVideoStreamPoolOutput
    GetMediaCapturePipelineInput: GetMediaCapturePipelineInput
    GetMediaCapturePipelineOutput: GetMediaCapturePipelineOutput
    GetMediaInsightsPipelineConfigurationInput: GetMediaInsightsPipelineConfigurationInput
    GetMediaInsightsPipelineConfigurationOutput: GetMediaInsightsPipelineConfigurationOutput
    GetMediaPipelineInput: GetMediaPipelineInput
    GetMediaPipelineOutput: GetMediaPipelineOutput
    GetMediaPipelineKinesisVideoStreamPoolInput: GetMediaPipelineKinesisVideoStreamPoolInput
    GetMediaPipelineKinesisVideoStreamPoolOutput: GetMediaPipelineKinesisVideoStreamPoolOutput
    GetSpeakerSearchTaskInput: GetSpeakerSearchTaskInput
    GetSpeakerSearchTaskOutput: GetSpeakerSearchTaskOutput
    GetVoiceToneAnalysisTaskInput: GetVoiceToneAnalysisTaskInput
    GetVoiceToneAnalysisTaskOutput: GetVoiceToneAnalysisTaskOutput
    ListMediaCapturePipelinesInput: ListMediaCapturePipelinesInput
    ListMediaCapturePipelinesOutput: ListMediaCapturePipelinesOutput
    ListMediaInsightsPipelineConfigurationsInput: ListMediaInsightsPipelineConfigurationsInput
    ListMediaInsightsPipelineConfigurationsOutput: ListMediaInsightsPipelineConfigurationsOutput
    ListMediaPipelineKinesisVideoStreamPoolsInput: ListMediaPipelineKinesisVideoStreamPoolsInput
    ListMediaPipelineKinesisVideoStreamPoolsOutput: ListMediaPipelineKinesisVideoStreamPoolsOutput
    ListMediaPipelinesInput: ListMediaPipelinesInput
    ListMediaPipelinesOutput: ListMediaPipelinesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    StartSpeakerSearchTaskInput: StartSpeakerSearchTaskInput
    StartSpeakerSearchTaskOutput: StartSpeakerSearchTaskOutput
    StartVoiceToneAnalysisTaskInput: StartVoiceToneAnalysisTaskInput
    StartVoiceToneAnalysisTaskOutput: StartVoiceToneAnalysisTaskOutput
    StopSpeakerSearchTaskInput: StopSpeakerSearchTaskInput
    StopSpeakerSearchTaskOutput: StopSpeakerSearchTaskOutput
    StopVoiceToneAnalysisTaskInput: StopVoiceToneAnalysisTaskInput
    StopVoiceToneAnalysisTaskOutput: StopVoiceToneAnalysisTaskOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateMediaInsightsPipelineConfigurationInput: UpdateMediaInsightsPipelineConfigurationInput
    UpdateMediaInsightsPipelineConfigurationOutput: UpdateMediaInsightsPipelineConfigurationOutput
    UpdateMediaInsightsPipelineStatusInput: UpdateMediaInsightsPipelineStatusInput
    UpdateMediaInsightsPipelineStatusOutput: UpdateMediaInsightsPipelineStatusOutput
    UpdateMediaPipelineKinesisVideoStreamPoolInput: UpdateMediaPipelineKinesisVideoStreamPoolInput
    UpdateMediaPipelineKinesisVideoStreamPoolOutput: UpdateMediaPipelineKinesisVideoStreamPoolOutput
end

return M
