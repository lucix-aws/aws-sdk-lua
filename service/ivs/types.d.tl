local record BatchGetChannelInput
    arns: {string}
end

local record BatchGetChannelOutput
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    channels: {Channel}
    errors: {BatchError}
end

local record BatchGetStreamKeyInput
    arns: {string}
end

local record BatchGetStreamKeyOutput
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    streamKeys: {StreamKey}
    errors: {BatchError}
end

local record BatchStartViewerSessionRevocationInput
    viewerSessions: {BatchStartViewerSessionRevocationViewerSession}
end

local record BatchStartViewerSessionRevocationOutput
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    errors: {BatchStartViewerSessionRevocationError}
end

local record CreateAdConfigurationInput
    name: string
    mediaTailorPlaybackConfigurations: {MediaTailorPlaybackConfiguration}
    tags: {string : string}
end

local record CreateAdConfigurationOutput
    adConfiguration: AdConfiguration
end

local record CreateChannelInput
    name: string
    latencyMode: string
    type: string
    authorized: boolean
    recordingConfigurationArn: string
    tags: {string : string}
    insecureIngest: boolean
    preset: string
    playbackRestrictionPolicyArn: string
    multitrackInputConfiguration: MultitrackInputConfiguration
    containerFormat: string
    adConfigurationArn: string
end

local record CreateChannelOutput
    channel: Channel
    streamKey: StreamKey
end

local record CreatePlaybackRestrictionPolicyInput
    allowedCountries: {string}
    allowedOrigins: {string}
    enableStrictOriginEnforcement: boolean
    name: string
    tags: {string : string}
end

local record CreatePlaybackRestrictionPolicyOutput
    playbackRestrictionPolicy: PlaybackRestrictionPolicy
end

local record CreateRecordingConfigurationInput
    name: string
    destinationConfiguration: DestinationConfiguration
    tags: {string : string}
    thumbnailConfiguration: ThumbnailConfiguration
    recordingReconnectWindowSeconds: number
    renditionConfiguration: RenditionConfiguration
end

local record CreateRecordingConfigurationOutput
    recordingConfiguration: RecordingConfiguration
end

local record CreateStreamKeyInput
    channelArn: string
    tags: {string : string}
end

local record CreateStreamKeyOutput
    streamKey: StreamKey
end

local record DeleteAdConfigurationInput
    arn: string
end

local record DeleteAdConfigurationOutput
end

local record DeleteChannelInput
    arn: string
end

local record DeleteChannelOutput
end

local record DeletePlaybackKeyPairInput
    arn: string
end

local record DeletePlaybackKeyPairOutput
end

local record DeletePlaybackRestrictionPolicyInput
    arn: string
end

local record DeletePlaybackRestrictionPolicyOutput
end

local record DeleteRecordingConfigurationInput
    arn: string
end

local record DeleteRecordingConfigurationOutput
end

local record DeleteStreamKeyInput
    arn: string
end

local record DeleteStreamKeyOutput
end

local record GetAdConfigurationInput
    arn: string
end

local record GetAdConfigurationOutput
    adConfiguration: AdConfiguration
end

local record GetChannelInput
    arn: string
end

local record GetChannelOutput
    channel: Channel
end

local record GetPlaybackKeyPairInput
    arn: string
end

local record GetPlaybackKeyPairOutput
    keyPair: PlaybackKeyPair
end

local record GetPlaybackRestrictionPolicyInput
    arn: string
end

local record GetPlaybackRestrictionPolicyOutput
    playbackRestrictionPolicy: PlaybackRestrictionPolicy
end

local record GetRecordingConfigurationInput
    arn: string
end

local record GetRecordingConfigurationOutput
    recordingConfiguration: RecordingConfiguration
end

local record GetStreamInput
    channelArn: string
end

local record GetStreamOutput
    stream: Stream
end

local record GetStreamKeyInput
    arn: string
end

local record GetStreamKeyOutput
    streamKey: StreamKey
end

local record GetStreamSessionInput
    channelArn: string
    streamId: string
end

local record GetStreamSessionOutput
    streamSession: StreamSession
end

local record ImportPlaybackKeyPairInput
    publicKeyMaterial: string
    name: string
    tags: {string : string}
end

local record ImportPlaybackKeyPairOutput
    keyPair: PlaybackKeyPair
end

local record InsertAdBreakInput
    channelArn: string
    durationSeconds: number
end

local record InsertAdBreakOutput
    adBreakId: string
end

local record ListAdConfigurationsInput
    nextToken: string
    maxResults: number
end

local record ListAdConfigurationsOutput
    adConfigurations: {AdConfigurationSummary}
    nextToken: string
end

local record ListChannelsInput
    filterByName: string
    filterByRecordingConfigurationArn: string
    filterByPlaybackRestrictionPolicyArn: string
    filterByAdConfigurationArn: string
    nextToken: string
    maxResults: number
end

local record ListChannelsOutput
    channels: {ChannelSummary}
    nextToken: string
end

local record ListPlaybackKeyPairsInput
    nextToken: string
    maxResults: number
end

local record ListPlaybackKeyPairsOutput
    keyPairs: {PlaybackKeyPairSummary}
    nextToken: string
end

local record ListPlaybackRestrictionPoliciesInput
    nextToken: string
    maxResults: number
end

local record ListPlaybackRestrictionPoliciesOutput
    playbackRestrictionPolicies: {PlaybackRestrictionPolicySummary}
    nextToken: string
end

local record ListRecordingConfigurationsInput
    nextToken: string
    maxResults: number
end

local record ListRecordingConfigurationsOutput
    recordingConfigurations: {RecordingConfigurationSummary}
    nextToken: string
end

local record ListStreamKeysInput
    channelArn: string
    nextToken: string
    maxResults: number
end

local record ListStreamKeysOutput
    streamKeys: {StreamKeySummary}
    nextToken: string
end

local record ListStreamsInput
    filterBy: StreamFilters
    nextToken: string
    maxResults: number
end

local record ListStreamsOutput
    streams: {StreamSummary}
    nextToken: string
end

local record ListStreamSessionsInput
    channelArn: string
    nextToken: string
    maxResults: number
end

local record ListStreamSessionsOutput
    streamSessions: {StreamSessionSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record PutMetadataInput
    channelArn: string
    metadata: string
end

local record PutMetadataOutput
end

local record StartViewerSessionRevocationInput
    channelArn: string
    viewerId: string
    viewerSessionVersionsLessThanOrEqualTo: number
end

local record StartViewerSessionRevocationOutput
end

local record StopStreamInput
    channelArn: string
end

local record StopStreamOutput
end

local record TagResourceInput
    resourceArn: string
    tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateChannelInput
    arn: string
    name: string
    latencyMode: string
    type: string
    authorized: boolean
    recordingConfigurationArn: string
    insecureIngest: boolean
    preset: string
    playbackRestrictionPolicyArn: string
    multitrackInputConfiguration: MultitrackInputConfiguration
    containerFormat: string
    adConfigurationArn: string
end

local record UpdateChannelOutput
    channel: Channel
end

local record UpdatePlaybackRestrictionPolicyInput
    arn: string
    allowedCountries: {string}
    allowedOrigins: {string}
    enableStrictOriginEnforcement: boolean
    name: string
end

local record UpdatePlaybackRestrictionPolicyOutput
    playbackRestrictionPolicy: PlaybackRestrictionPolicy
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ServiceUnavailable
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ServiceUnavailable
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record PendingVerification
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ThrottlingException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ConflictException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record InternalServerException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record PendingVerification
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ResourceNotFoundException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ServiceQuotaExceededException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ThrottlingException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record PendingVerification
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ResourceNotFoundException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ServiceQuotaExceededException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record PendingVerification
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ServiceQuotaExceededException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ThrottlingException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ConflictException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record InternalServerException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record PendingVerification
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ServiceQuotaExceededException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record PendingVerification
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ResourceNotFoundException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ServiceQuotaExceededException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ConflictException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record InternalServerException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ResourceNotFoundException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ConflictException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record PendingVerification
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ResourceNotFoundException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record PendingVerification
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ResourceNotFoundException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ConflictException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record PendingVerification
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ResourceNotFoundException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ConflictException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record InternalServerException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ResourceNotFoundException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record PendingVerification
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ResourceNotFoundException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record InternalServerException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ResourceNotFoundException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ResourceNotFoundException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ResourceNotFoundException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record PendingVerification
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ResourceNotFoundException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record InternalServerException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ResourceNotFoundException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ChannelNotBroadcasting
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ResourceNotFoundException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ResourceNotFoundException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ResourceNotFoundException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ConflictException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record PendingVerification
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ServiceQuotaExceededException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ChannelNotBroadcasting
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ConflictException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record InternalServerException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ResourceNotFoundException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ThrottlingException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record InternalServerException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ConflictException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ConflictException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record PendingVerification
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record InternalServerException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ResourceNotFoundException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ResourceNotFoundException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record InternalServerException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ResourceNotFoundException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ChannelNotBroadcasting
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ResourceNotFoundException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ThrottlingException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record InternalServerException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record PendingVerification
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ResourceNotFoundException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ThrottlingException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ChannelNotBroadcasting
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ResourceNotFoundException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record StreamUnavailable
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record InternalServerException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ResourceNotFoundException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record InternalServerException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ResourceNotFoundException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ConflictException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record PendingVerification
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ResourceNotFoundException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record AccessDeniedException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ConflictException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record PendingVerification
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ResourceNotFoundException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local record ValidationException
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
    xAmznErrorType: string
    exceptionMessage: string
end

local type ChannelType = "BASIC" | "STANDARD" | "ADVANCED_SD" | "ADVANCED_HD"

local type TranscodePreset = "HIGHER_BANDWIDTH_DELIVERY" | "CONSTRAINED_BANDWIDTH_DELIVERY"

local record M
    BatchGetChannelInput: BatchGetChannelInput
    BatchGetChannelOutput: BatchGetChannelOutput
    BatchGetStreamKeyInput: BatchGetStreamKeyInput
    BatchGetStreamKeyOutput: BatchGetStreamKeyOutput
    BatchStartViewerSessionRevocationInput: BatchStartViewerSessionRevocationInput
    BatchStartViewerSessionRevocationOutput: BatchStartViewerSessionRevocationOutput
    CreateAdConfigurationInput: CreateAdConfigurationInput
    CreateAdConfigurationOutput: CreateAdConfigurationOutput
    CreateChannelInput: CreateChannelInput
    CreateChannelOutput: CreateChannelOutput
    CreatePlaybackRestrictionPolicyInput: CreatePlaybackRestrictionPolicyInput
    CreatePlaybackRestrictionPolicyOutput: CreatePlaybackRestrictionPolicyOutput
    CreateRecordingConfigurationInput: CreateRecordingConfigurationInput
    CreateRecordingConfigurationOutput: CreateRecordingConfigurationOutput
    CreateStreamKeyInput: CreateStreamKeyInput
    CreateStreamKeyOutput: CreateStreamKeyOutput
    DeleteAdConfigurationInput: DeleteAdConfigurationInput
    DeleteAdConfigurationOutput: DeleteAdConfigurationOutput
    DeleteChannelInput: DeleteChannelInput
    DeleteChannelOutput: DeleteChannelOutput
    DeletePlaybackKeyPairInput: DeletePlaybackKeyPairInput
    DeletePlaybackKeyPairOutput: DeletePlaybackKeyPairOutput
    DeletePlaybackRestrictionPolicyInput: DeletePlaybackRestrictionPolicyInput
    DeletePlaybackRestrictionPolicyOutput: DeletePlaybackRestrictionPolicyOutput
    DeleteRecordingConfigurationInput: DeleteRecordingConfigurationInput
    DeleteRecordingConfigurationOutput: DeleteRecordingConfigurationOutput
    DeleteStreamKeyInput: DeleteStreamKeyInput
    DeleteStreamKeyOutput: DeleteStreamKeyOutput
    GetAdConfigurationInput: GetAdConfigurationInput
    GetAdConfigurationOutput: GetAdConfigurationOutput
    GetChannelInput: GetChannelInput
    GetChannelOutput: GetChannelOutput
    GetPlaybackKeyPairInput: GetPlaybackKeyPairInput
    GetPlaybackKeyPairOutput: GetPlaybackKeyPairOutput
    GetPlaybackRestrictionPolicyInput: GetPlaybackRestrictionPolicyInput
    GetPlaybackRestrictionPolicyOutput: GetPlaybackRestrictionPolicyOutput
    GetRecordingConfigurationInput: GetRecordingConfigurationInput
    GetRecordingConfigurationOutput: GetRecordingConfigurationOutput
    GetStreamInput: GetStreamInput
    GetStreamOutput: GetStreamOutput
    GetStreamKeyInput: GetStreamKeyInput
    GetStreamKeyOutput: GetStreamKeyOutput
    GetStreamSessionInput: GetStreamSessionInput
    GetStreamSessionOutput: GetStreamSessionOutput
    ImportPlaybackKeyPairInput: ImportPlaybackKeyPairInput
    ImportPlaybackKeyPairOutput: ImportPlaybackKeyPairOutput
    InsertAdBreakInput: InsertAdBreakInput
    InsertAdBreakOutput: InsertAdBreakOutput
    ListAdConfigurationsInput: ListAdConfigurationsInput
    ListAdConfigurationsOutput: ListAdConfigurationsOutput
    ListChannelsInput: ListChannelsInput
    ListChannelsOutput: ListChannelsOutput
    ListPlaybackKeyPairsInput: ListPlaybackKeyPairsInput
    ListPlaybackKeyPairsOutput: ListPlaybackKeyPairsOutput
    ListPlaybackRestrictionPoliciesInput: ListPlaybackRestrictionPoliciesInput
    ListPlaybackRestrictionPoliciesOutput: ListPlaybackRestrictionPoliciesOutput
    ListRecordingConfigurationsInput: ListRecordingConfigurationsInput
    ListRecordingConfigurationsOutput: ListRecordingConfigurationsOutput
    ListStreamKeysInput: ListStreamKeysInput
    ListStreamKeysOutput: ListStreamKeysOutput
    ListStreamsInput: ListStreamsInput
    ListStreamsOutput: ListStreamsOutput
    ListStreamSessionsInput: ListStreamSessionsInput
    ListStreamSessionsOutput: ListStreamSessionsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutMetadataInput: PutMetadataInput
    PutMetadataOutput: PutMetadataOutput
    StartViewerSessionRevocationInput: StartViewerSessionRevocationInput
    StartViewerSessionRevocationOutput: StartViewerSessionRevocationOutput
    StopStreamInput: StopStreamInput
    StopStreamOutput: StopStreamOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateChannelInput: UpdateChannelInput
    UpdateChannelOutput: UpdateChannelOutput
    UpdatePlaybackRestrictionPolicyInput: UpdatePlaybackRestrictionPolicyInput
    UpdatePlaybackRestrictionPolicyOutput: UpdatePlaybackRestrictionPolicyOutput
end

return M
