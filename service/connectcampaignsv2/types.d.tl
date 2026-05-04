local record CreateCampaignInput
    name: string
    connectInstanceId: string
    channelSubtypeConfig: ChannelSubtypeConfig
    type: string
    source: Source
    connectCampaignFlowArn: string
    schedule: Schedule
    entryLimitsConfig: EntryLimitsConfig
    communicationTimeConfig: CommunicationTimeConfig
    communicationLimitsOverride: CommunicationLimitsConfig
    tags: {string : string}
end

local record CreateCampaignOutput
    id: string
    arn: string
    tags: {string : string}
end

local record DeleteCampaignInput
    id: string
end

local record DeleteCampaignOutput
end

local record DeleteCampaignChannelSubtypeConfigInput
    id: string
    channelSubtype: string
end

local record DeleteCampaignChannelSubtypeConfigOutput
end

local record DeleteCampaignCommunicationLimitsInput
    id: string
    config: string
end

local record DeleteCampaignCommunicationLimitsOutput
end

local record DeleteCampaignCommunicationTimeInput
    id: string
    config: string
end

local record DeleteCampaignCommunicationTimeOutput
end

local record DeleteCampaignEntryLimitsInput
    id: string
end

local record DeleteCampaignEntryLimitsOutput
end

local record DeleteConnectInstanceConfigInput
    connectInstanceId: string
    campaignDeletionPolicy: string
end

local record DeleteConnectInstanceConfigOutput
end

local record DeleteConnectInstanceIntegrationInput
    connectInstanceId: string
    integrationIdentifier: IntegrationIdentifier
end

local record DeleteConnectInstanceIntegrationOutput
end

local record DeleteInstanceOnboardingJobInput
    connectInstanceId: string
end

local record DeleteInstanceOnboardingJobOutput
end

local record DescribeCampaignInput
    id: string
end

local record DescribeCampaignOutput
    campaign: Campaign
end

local record GetCampaignStateInput
    id: string
end

local record GetCampaignStateOutput
    state: string
end

local record GetCampaignStateBatchInput
    campaignIds: {string}
end

local record GetCampaignStateBatchOutput
    successfulRequests: {SuccessfulCampaignStateResponse}
    failedRequests: {FailedCampaignStateResponse}
end

local record GetConnectInstanceConfigInput
    connectInstanceId: string
end

local record GetConnectInstanceConfigOutput
    connectInstanceConfig: InstanceConfig
end

local record GetInstanceCommunicationLimitsInput
    connectInstanceId: string
end

local record GetInstanceCommunicationLimitsOutput
    communicationLimitsConfig: InstanceCommunicationLimitsConfig
end

local record GetInstanceOnboardingJobStatusInput
    connectInstanceId: string
end

local record GetInstanceOnboardingJobStatusOutput
    connectInstanceOnboardingJobStatus: InstanceOnboardingJobStatus
end

local record ListCampaignsInput
    maxResults: number
    nextToken: string
    filters: CampaignFilters
end

local record ListCampaignsOutput
    nextToken: string
    campaignSummaryList: {CampaignSummary}
end

local record ListConnectInstanceIntegrationsInput
    connectInstanceId: string
    maxResults: number
    nextToken: string
end

local record ListConnectInstanceIntegrationsOutput
    nextToken: string
    integrationSummaryList: {IntegrationSummary}
end

local record ListTagsForResourceInput
    arn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record PauseCampaignInput
    id: string
end

local record PauseCampaignOutput
end

local record PutConnectInstanceIntegrationInput
    connectInstanceId: string
    integrationConfig: IntegrationConfig
end

local record PutConnectInstanceIntegrationOutput
end

local record PutInstanceCommunicationLimitsInput
    connectInstanceId: string
    communicationLimitsConfig: InstanceCommunicationLimitsConfig
end

local record PutInstanceCommunicationLimitsOutput
end

local record PutOutboundRequestBatchInput
    id: string
    outboundRequests: {OutboundRequest}
end

local record PutOutboundRequestBatchOutput
    successfulRequests: {SuccessfulRequest}
    failedRequests: {FailedRequest}
end

local record PutProfileOutboundRequestBatchInput
    id: string
    profileOutboundRequests: {ProfileOutboundRequest}
end

local record PutProfileOutboundRequestBatchOutput
    successfulRequests: {SuccessfulProfileOutboundRequest}
    failedRequests: {FailedProfileOutboundRequest}
end

local record ResumeCampaignInput
    id: string
end

local record ResumeCampaignOutput
end

local record StartCampaignInput
    id: string
end

local record StartCampaignOutput
end

local record StartInstanceOnboardingJobInput
    connectInstanceId: string
    encryptionConfig: EncryptionConfig
end

local record StartInstanceOnboardingJobOutput
    connectInstanceOnboardingJobStatus: InstanceOnboardingJobStatus
end

local record StopCampaignInput
    id: string
end

local record StopCampaignOutput
end

local record TagResourceInput
    arn: string
    tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    arn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateCampaignChannelSubtypeConfigInput
    id: string
    channelSubtypeConfig: ChannelSubtypeConfig
end

local record UpdateCampaignChannelSubtypeConfigOutput
end

local record UpdateCampaignCommunicationLimitsInput
    id: string
    communicationLimitsOverride: CommunicationLimitsConfig
end

local record UpdateCampaignCommunicationLimitsOutput
end

local record UpdateCampaignCommunicationTimeInput
    id: string
    communicationTimeConfig: CommunicationTimeConfig
end

local record UpdateCampaignCommunicationTimeOutput
end

local record UpdateCampaignEntryLimitsInput
    id: string
    entryLimitsConfig: EntryLimitsConfig
end

local record UpdateCampaignEntryLimitsOutput
end

local record UpdateCampaignFlowAssociationInput
    id: string
    connectCampaignFlowArn: string
end

local record UpdateCampaignFlowAssociationOutput
end

local record UpdateCampaignNameInput
    id: string
    name: string
end

local record UpdateCampaignNameOutput
end

local record UpdateCampaignScheduleInput
    id: string
    schedule: Schedule
end

local record UpdateCampaignScheduleOutput
end

local record UpdateCampaignSourceInput
    id: string
    source: Source
end

local record UpdateCampaignSourceOutput
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record ConflictException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ServiceQuotaExceededException
    message: string
    xAmzErrorType: string
end

local record ThrottlingException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record ConflictException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record ConflictException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record InvalidCampaignStateException
    state: string
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record ConflictException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record InvalidCampaignStateException
    state: string
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record ConflictException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record InvalidCampaignStateException
    state: string
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record InvalidStateException
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ThrottlingException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ThrottlingException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record InvalidStateException
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ThrottlingException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record ThrottlingException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ThrottlingException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ThrottlingException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record ConflictException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record InvalidCampaignStateException
    state: string
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ThrottlingException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record ConflictException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ThrottlingException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record ConflictException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record ConflictException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record InvalidCampaignStateException
    state: string
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ThrottlingException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record ConflictException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record InvalidCampaignStateException
    state: string
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ThrottlingException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record ConflictException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record InvalidCampaignStateException
    state: string
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ThrottlingException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record ConflictException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record InvalidCampaignStateException
    state: string
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ThrottlingException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record ConflictException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ThrottlingException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record ConflictException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record InvalidCampaignStateException
    state: string
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ThrottlingException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ThrottlingException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ThrottlingException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record ConflictException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record ConflictException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record InvalidCampaignStateException
    state: string
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record ConflictException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record InvalidCampaignStateException
    state: string
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record ConflictException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record InvalidCampaignStateException
    state: string
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record ConflictException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record InvalidCampaignStateException
    state: string
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record ConflictException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record ConflictException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record InvalidCampaignStateException
    state: string
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record AccessDeniedException
    message: string
    xAmzErrorType: string
end

local record ConflictException
    message: string
    xAmzErrorType: string
end

local record InternalServerException
    message: string
    xAmzErrorType: string
end

local record InvalidCampaignStateException
    state: string
    message: string
    xAmzErrorType: string
end

local record ResourceNotFoundException
    message: string
    xAmzErrorType: string
end

local record ValidationException
    message: string
    xAmzErrorType: string
end

local record M
    CreateCampaignInput: CreateCampaignInput
    CreateCampaignOutput: CreateCampaignOutput
    DeleteCampaignInput: DeleteCampaignInput
    DeleteCampaignOutput: DeleteCampaignOutput
    DeleteCampaignChannelSubtypeConfigInput: DeleteCampaignChannelSubtypeConfigInput
    DeleteCampaignChannelSubtypeConfigOutput: DeleteCampaignChannelSubtypeConfigOutput
    DeleteCampaignCommunicationLimitsInput: DeleteCampaignCommunicationLimitsInput
    DeleteCampaignCommunicationLimitsOutput: DeleteCampaignCommunicationLimitsOutput
    DeleteCampaignCommunicationTimeInput: DeleteCampaignCommunicationTimeInput
    DeleteCampaignCommunicationTimeOutput: DeleteCampaignCommunicationTimeOutput
    DeleteCampaignEntryLimitsInput: DeleteCampaignEntryLimitsInput
    DeleteCampaignEntryLimitsOutput: DeleteCampaignEntryLimitsOutput
    DeleteConnectInstanceConfigInput: DeleteConnectInstanceConfigInput
    DeleteConnectInstanceConfigOutput: DeleteConnectInstanceConfigOutput
    DeleteConnectInstanceIntegrationInput: DeleteConnectInstanceIntegrationInput
    DeleteConnectInstanceIntegrationOutput: DeleteConnectInstanceIntegrationOutput
    DeleteInstanceOnboardingJobInput: DeleteInstanceOnboardingJobInput
    DeleteInstanceOnboardingJobOutput: DeleteInstanceOnboardingJobOutput
    DescribeCampaignInput: DescribeCampaignInput
    DescribeCampaignOutput: DescribeCampaignOutput
    GetCampaignStateInput: GetCampaignStateInput
    GetCampaignStateOutput: GetCampaignStateOutput
    GetCampaignStateBatchInput: GetCampaignStateBatchInput
    GetCampaignStateBatchOutput: GetCampaignStateBatchOutput
    GetConnectInstanceConfigInput: GetConnectInstanceConfigInput
    GetConnectInstanceConfigOutput: GetConnectInstanceConfigOutput
    GetInstanceCommunicationLimitsInput: GetInstanceCommunicationLimitsInput
    GetInstanceCommunicationLimitsOutput: GetInstanceCommunicationLimitsOutput
    GetInstanceOnboardingJobStatusInput: GetInstanceOnboardingJobStatusInput
    GetInstanceOnboardingJobStatusOutput: GetInstanceOnboardingJobStatusOutput
    ListCampaignsInput: ListCampaignsInput
    ListCampaignsOutput: ListCampaignsOutput
    ListConnectInstanceIntegrationsInput: ListConnectInstanceIntegrationsInput
    ListConnectInstanceIntegrationsOutput: ListConnectInstanceIntegrationsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PauseCampaignInput: PauseCampaignInput
    PauseCampaignOutput: PauseCampaignOutput
    PutConnectInstanceIntegrationInput: PutConnectInstanceIntegrationInput
    PutConnectInstanceIntegrationOutput: PutConnectInstanceIntegrationOutput
    PutInstanceCommunicationLimitsInput: PutInstanceCommunicationLimitsInput
    PutInstanceCommunicationLimitsOutput: PutInstanceCommunicationLimitsOutput
    PutOutboundRequestBatchInput: PutOutboundRequestBatchInput
    PutOutboundRequestBatchOutput: PutOutboundRequestBatchOutput
    PutProfileOutboundRequestBatchInput: PutProfileOutboundRequestBatchInput
    PutProfileOutboundRequestBatchOutput: PutProfileOutboundRequestBatchOutput
    ResumeCampaignInput: ResumeCampaignInput
    ResumeCampaignOutput: ResumeCampaignOutput
    StartCampaignInput: StartCampaignInput
    StartCampaignOutput: StartCampaignOutput
    StartInstanceOnboardingJobInput: StartInstanceOnboardingJobInput
    StartInstanceOnboardingJobOutput: StartInstanceOnboardingJobOutput
    StopCampaignInput: StopCampaignInput
    StopCampaignOutput: StopCampaignOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateCampaignChannelSubtypeConfigInput: UpdateCampaignChannelSubtypeConfigInput
    UpdateCampaignChannelSubtypeConfigOutput: UpdateCampaignChannelSubtypeConfigOutput
    UpdateCampaignCommunicationLimitsInput: UpdateCampaignCommunicationLimitsInput
    UpdateCampaignCommunicationLimitsOutput: UpdateCampaignCommunicationLimitsOutput
    UpdateCampaignCommunicationTimeInput: UpdateCampaignCommunicationTimeInput
    UpdateCampaignCommunicationTimeOutput: UpdateCampaignCommunicationTimeOutput
    UpdateCampaignEntryLimitsInput: UpdateCampaignEntryLimitsInput
    UpdateCampaignEntryLimitsOutput: UpdateCampaignEntryLimitsOutput
    UpdateCampaignFlowAssociationInput: UpdateCampaignFlowAssociationInput
    UpdateCampaignFlowAssociationOutput: UpdateCampaignFlowAssociationOutput
    UpdateCampaignNameInput: UpdateCampaignNameInput
    UpdateCampaignNameOutput: UpdateCampaignNameOutput
    UpdateCampaignScheduleInput: UpdateCampaignScheduleInput
    UpdateCampaignScheduleOutput: UpdateCampaignScheduleOutput
    UpdateCampaignSourceInput: UpdateCampaignSourceInput
    UpdateCampaignSourceOutput: UpdateCampaignSourceOutput
end

return M
