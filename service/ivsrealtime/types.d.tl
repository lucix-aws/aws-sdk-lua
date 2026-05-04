local record CreateEncoderConfigurationInput
    name: string
    video: Video
    tags: {string : string}
end

local record CreateEncoderConfigurationOutput
    encoderConfiguration: EncoderConfiguration
end

local record CreateIngestConfigurationInput
    name: string
    stageArn: string
    userId: string
    attributes: {string : string}
    ingestProtocol: string
    insecureIngest: boolean
    redundantIngest: boolean
    tags: {string : string}
end

local record CreateIngestConfigurationOutput
    ingestConfiguration: IngestConfiguration
end

local record CreateParticipantTokenInput
    stageArn: string
    duration: number
    userId: string
    attributes: {string : string}
    capabilities: {string}
end

local record CreateParticipantTokenOutput
    participantToken: ParticipantToken
end

local record CreateStageInput
    name: string
    participantTokenConfigurations: {ParticipantTokenConfiguration}
    tags: {string : string}
    autoParticipantRecordingConfiguration: AutoParticipantRecordingConfiguration
end

local record CreateStageOutput
    stage: Stage
    participantTokens: {ParticipantToken}
end

local record CreateStorageConfigurationInput
    name: string
    s3: S3StorageConfiguration
    tags: {string : string}
end

local record CreateStorageConfigurationOutput
    storageConfiguration: StorageConfiguration
end

local record DeleteEncoderConfigurationInput
    arn: string
end

local record DeleteEncoderConfigurationOutput
end

local record DeleteIngestConfigurationInput
    arn: string
    force: boolean
end

local record DeleteIngestConfigurationOutput
end

local record DeletePublicKeyInput
    arn: string
end

local record DeletePublicKeyOutput
end

local record DeleteStageInput
    arn: string
end

local record DeleteStageOutput
end

local record DeleteStorageConfigurationInput
    arn: string
end

local record DeleteStorageConfigurationOutput
end

local record DisconnectParticipantInput
    stageArn: string
    participantId: string
    reason: string
end

local record DisconnectParticipantOutput
end

local record GetCompositionInput
    arn: string
end

local record GetCompositionOutput
    composition: Composition
end

local record GetEncoderConfigurationInput
    arn: string
end

local record GetEncoderConfigurationOutput
    encoderConfiguration: EncoderConfiguration
end

local record GetIngestConfigurationInput
    arn: string
end

local record GetIngestConfigurationOutput
    ingestConfiguration: IngestConfiguration
end

local record GetParticipantInput
    stageArn: string
    sessionId: string
    participantId: string
end

local record GetParticipantOutput
    participant: Participant
end

local record GetPublicKeyInput
    arn: string
end

local record GetPublicKeyOutput
    publicKey: PublicKey
end

local record GetStageInput
    arn: string
end

local record GetStageOutput
    stage: Stage
end

local record GetStageSessionInput
    stageArn: string
    sessionId: string
end

local record GetStageSessionOutput
    stageSession: StageSession
end

local record GetStorageConfigurationInput
    arn: string
end

local record GetStorageConfigurationOutput
    storageConfiguration: StorageConfiguration
end

local record ImportPublicKeyInput
    publicKeyMaterial: string
    name: string
    tags: {string : string}
end

local record ImportPublicKeyOutput
    publicKey: PublicKey
end

local record ListCompositionsInput
    filterByStageArn: string
    filterByEncoderConfigurationArn: string
    nextToken: string
    maxResults: number
end

local record ListCompositionsOutput
    compositions: {CompositionSummary}
    nextToken: string
end

local record ListEncoderConfigurationsInput
    nextToken: string
    maxResults: number
end

local record ListEncoderConfigurationsOutput
    encoderConfigurations: {EncoderConfigurationSummary}
    nextToken: string
end

local record ListIngestConfigurationsInput
    filterByStageArn: string
    filterByState: string
    nextToken: string
    maxResults: number
end

local record ListIngestConfigurationsOutput
    ingestConfigurations: {IngestConfigurationSummary}
    nextToken: string
end

local record ListParticipantEventsInput
    stageArn: string
    sessionId: string
    participantId: string
    nextToken: string
    maxResults: number
end

local record ListParticipantEventsOutput
    events: {Event}
    nextToken: string
end

local record ListParticipantReplicasInput
    sourceStageArn: string
    participantId: string
    nextToken: string
    maxResults: number
end

local record ListParticipantReplicasOutput
    replicas: {ParticipantReplica}
    nextToken: string
end

local record ListParticipantsInput
    stageArn: string
    sessionId: string
    filterByUserId: string
    filterByPublished: boolean
    filterByState: string
    nextToken: string
    maxResults: number
    filterByRecordingState: string
end

local record ListParticipantsOutput
    participants: {ParticipantSummary}
    nextToken: string
end

local record ListPublicKeysInput
    nextToken: string
    maxResults: number
end

local record ListPublicKeysOutput
    publicKeys: {PublicKeySummary}
    nextToken: string
end

local record ListStagesInput
    nextToken: string
    maxResults: number
end

local record ListStagesOutput
    stages: {StageSummary}
    nextToken: string
end

local record ListStageSessionsInput
    stageArn: string
    nextToken: string
    maxResults: number
end

local record ListStageSessionsOutput
    stageSessions: {StageSessionSummary}
    nextToken: string
end

local record ListStorageConfigurationsInput
    nextToken: string
    maxResults: number
end

local record ListStorageConfigurationsOutput
    storageConfigurations: {StorageConfigurationSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record StartCompositionInput
    stageArn: string
    idempotencyToken: string
    layout: LayoutConfiguration
    destinations: {DestinationConfiguration}
    tags: {string : string}
end

local record StartCompositionOutput
    composition: Composition
end

local record StartParticipantReplicationInput
    sourceStageArn: string
    destinationStageArn: string
    participantId: string
    reconnectWindowSeconds: number
    attributes: {string : string}
end

local record StartParticipantReplicationOutput
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
end

local record StopCompositionInput
    arn: string
end

local record StopCompositionOutput
end

local record StopParticipantReplicationInput
    sourceStageArn: string
    destinationStageArn: string
    participantId: string
end

local record StopParticipantReplicationOutput
    accessControlAllowOrigin: string
    accessControlExposeHeaders: string
    cacheControl: string
    contentSecurityPolicy: string
    strictTransportSecurity: string
    xContentTypeOptions: string
    xFrameOptions: string
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

local record UpdateIngestConfigurationInput
    arn: string
    stageArn: string
    redundantIngest: boolean
end

local record UpdateIngestConfigurationOutput
    ingestConfiguration: IngestConfiguration
end

local record UpdateStageInput
    arn: string
    name: string
    autoParticipantRecordingConfiguration: AutoParticipantRecordingConfiguration
end

local record UpdateStageOutput
    stage: Stage
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

local type IngestProtocol = "RTMP" | "RTMPS"

local record M
    CreateEncoderConfigurationInput: CreateEncoderConfigurationInput
    CreateEncoderConfigurationOutput: CreateEncoderConfigurationOutput
    CreateIngestConfigurationInput: CreateIngestConfigurationInput
    CreateIngestConfigurationOutput: CreateIngestConfigurationOutput
    CreateParticipantTokenInput: CreateParticipantTokenInput
    CreateParticipantTokenOutput: CreateParticipantTokenOutput
    CreateStageInput: CreateStageInput
    CreateStageOutput: CreateStageOutput
    CreateStorageConfigurationInput: CreateStorageConfigurationInput
    CreateStorageConfigurationOutput: CreateStorageConfigurationOutput
    DeleteEncoderConfigurationInput: DeleteEncoderConfigurationInput
    DeleteEncoderConfigurationOutput: DeleteEncoderConfigurationOutput
    DeleteIngestConfigurationInput: DeleteIngestConfigurationInput
    DeleteIngestConfigurationOutput: DeleteIngestConfigurationOutput
    DeletePublicKeyInput: DeletePublicKeyInput
    DeletePublicKeyOutput: DeletePublicKeyOutput
    DeleteStageInput: DeleteStageInput
    DeleteStageOutput: DeleteStageOutput
    DeleteStorageConfigurationInput: DeleteStorageConfigurationInput
    DeleteStorageConfigurationOutput: DeleteStorageConfigurationOutput
    DisconnectParticipantInput: DisconnectParticipantInput
    DisconnectParticipantOutput: DisconnectParticipantOutput
    GetCompositionInput: GetCompositionInput
    GetCompositionOutput: GetCompositionOutput
    GetEncoderConfigurationInput: GetEncoderConfigurationInput
    GetEncoderConfigurationOutput: GetEncoderConfigurationOutput
    GetIngestConfigurationInput: GetIngestConfigurationInput
    GetIngestConfigurationOutput: GetIngestConfigurationOutput
    GetParticipantInput: GetParticipantInput
    GetParticipantOutput: GetParticipantOutput
    GetPublicKeyInput: GetPublicKeyInput
    GetPublicKeyOutput: GetPublicKeyOutput
    GetStageInput: GetStageInput
    GetStageOutput: GetStageOutput
    GetStageSessionInput: GetStageSessionInput
    GetStageSessionOutput: GetStageSessionOutput
    GetStorageConfigurationInput: GetStorageConfigurationInput
    GetStorageConfigurationOutput: GetStorageConfigurationOutput
    ImportPublicKeyInput: ImportPublicKeyInput
    ImportPublicKeyOutput: ImportPublicKeyOutput
    ListCompositionsInput: ListCompositionsInput
    ListCompositionsOutput: ListCompositionsOutput
    ListEncoderConfigurationsInput: ListEncoderConfigurationsInput
    ListEncoderConfigurationsOutput: ListEncoderConfigurationsOutput
    ListIngestConfigurationsInput: ListIngestConfigurationsInput
    ListIngestConfigurationsOutput: ListIngestConfigurationsOutput
    ListParticipantEventsInput: ListParticipantEventsInput
    ListParticipantEventsOutput: ListParticipantEventsOutput
    ListParticipantReplicasInput: ListParticipantReplicasInput
    ListParticipantReplicasOutput: ListParticipantReplicasOutput
    ListParticipantsInput: ListParticipantsInput
    ListParticipantsOutput: ListParticipantsOutput
    ListPublicKeysInput: ListPublicKeysInput
    ListPublicKeysOutput: ListPublicKeysOutput
    ListStagesInput: ListStagesInput
    ListStagesOutput: ListStagesOutput
    ListStageSessionsInput: ListStageSessionsInput
    ListStageSessionsOutput: ListStageSessionsOutput
    ListStorageConfigurationsInput: ListStorageConfigurationsInput
    ListStorageConfigurationsOutput: ListStorageConfigurationsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    StartCompositionInput: StartCompositionInput
    StartCompositionOutput: StartCompositionOutput
    StartParticipantReplicationInput: StartParticipantReplicationInput
    StartParticipantReplicationOutput: StartParticipantReplicationOutput
    StopCompositionInput: StopCompositionInput
    StopCompositionOutput: StopCompositionOutput
    StopParticipantReplicationInput: StopParticipantReplicationInput
    StopParticipantReplicationOutput: StopParticipantReplicationOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateIngestConfigurationInput: UpdateIngestConfigurationInput
    UpdateIngestConfigurationOutput: UpdateIngestConfigurationOutput
    UpdateStageInput: UpdateStageInput
    UpdateStageOutput: UpdateStageOutput
end

return M
