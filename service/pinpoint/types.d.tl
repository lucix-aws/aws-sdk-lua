local record CreateAppInput
    CreateApplicationRequest: CreateApplicationRequest
end

local record CreateAppOutput
    ApplicationResponse: ApplicationResponse
end

local record CreateCampaignInput
    ApplicationId: string
    WriteCampaignRequest: WriteCampaignRequest
end

local record CreateCampaignOutput
    CampaignResponse: CampaignResponse
end

local record CreateEmailTemplateInput
    EmailTemplateRequest: EmailTemplateRequest
    TemplateName: string
end

local record CreateEmailTemplateOutput
    CreateTemplateMessageBody: CreateTemplateMessageBody
end

local record CreateExportJobInput
    ApplicationId: string
    ExportJobRequest: ExportJobRequest
end

local record CreateExportJobOutput
    ExportJobResponse: ExportJobResponse
end

local record CreateImportJobInput
    ApplicationId: string
    ImportJobRequest: ImportJobRequest
end

local record CreateImportJobOutput
    ImportJobResponse: ImportJobResponse
end

local record CreateInAppTemplateInput
    InAppTemplateRequest: InAppTemplateRequest
    TemplateName: string
end

local record CreateInAppTemplateOutput
    TemplateCreateMessageBody: TemplateCreateMessageBody
end

local record CreateJourneyInput
    ApplicationId: string
    WriteJourneyRequest: WriteJourneyRequest
end

local record CreateJourneyOutput
    JourneyResponse: JourneyResponse
end

local record CreatePushTemplateInput
    PushNotificationTemplateRequest: PushNotificationTemplateRequest
    TemplateName: string
end

local record CreatePushTemplateOutput
    CreateTemplateMessageBody: CreateTemplateMessageBody
end

local record CreateRecommenderConfigurationInput
    CreateRecommenderConfiguration: CreateRecommenderConfigurationShape
end

local record CreateRecommenderConfigurationOutput
    RecommenderConfigurationResponse: RecommenderConfigurationResponse
end

local record CreateSegmentInput
    ApplicationId: string
    WriteSegmentRequest: WriteSegmentRequest
end

local record CreateSegmentOutput
    SegmentResponse: SegmentResponse
end

local record CreateSmsTemplateInput
    SMSTemplateRequest: SMSTemplateRequest
    TemplateName: string
end

local record CreateSmsTemplateOutput
    CreateTemplateMessageBody: CreateTemplateMessageBody
end

local record CreateVoiceTemplateInput
    TemplateName: string
    VoiceTemplateRequest: VoiceTemplateRequest
end

local record CreateVoiceTemplateOutput
    CreateTemplateMessageBody: CreateTemplateMessageBody
end

local record DeleteAdmChannelInput
    ApplicationId: string
end

local record DeleteAdmChannelOutput
    ADMChannelResponse: ADMChannelResponse
end

local record DeleteApnsChannelInput
    ApplicationId: string
end

local record DeleteApnsChannelOutput
    APNSChannelResponse: APNSChannelResponse
end

local record DeleteApnsSandboxChannelInput
    ApplicationId: string
end

local record DeleteApnsSandboxChannelOutput
    APNSSandboxChannelResponse: APNSSandboxChannelResponse
end

local record DeleteApnsVoipChannelInput
    ApplicationId: string
end

local record DeleteApnsVoipChannelOutput
    APNSVoipChannelResponse: APNSVoipChannelResponse
end

local record DeleteApnsVoipSandboxChannelInput
    ApplicationId: string
end

local record DeleteApnsVoipSandboxChannelOutput
    APNSVoipSandboxChannelResponse: APNSVoipSandboxChannelResponse
end

local record DeleteAppInput
    ApplicationId: string
end

local record DeleteAppOutput
    ApplicationResponse: ApplicationResponse
end

local record DeleteBaiduChannelInput
    ApplicationId: string
end

local record DeleteBaiduChannelOutput
    BaiduChannelResponse: BaiduChannelResponse
end

local record DeleteCampaignInput
    ApplicationId: string
    CampaignId: string
end

local record DeleteCampaignOutput
    CampaignResponse: CampaignResponse
end

local record DeleteEmailChannelInput
    ApplicationId: string
end

local record DeleteEmailChannelOutput
    EmailChannelResponse: EmailChannelResponse
end

local record DeleteEmailTemplateInput
    TemplateName: string
    Version: string
end

local record DeleteEmailTemplateOutput
    MessageBody: MessageBody
end

local record DeleteEndpointInput
    ApplicationId: string
    EndpointId: string
end

local record DeleteEndpointOutput
    EndpointResponse: EndpointResponse
end

local record DeleteEventStreamInput
    ApplicationId: string
end

local record DeleteEventStreamOutput
    EventStream: EventStream
end

local record DeleteGcmChannelInput
    ApplicationId: string
end

local record DeleteGcmChannelOutput
    GCMChannelResponse: GCMChannelResponse
end

local record DeleteInAppTemplateInput
    TemplateName: string
    Version: string
end

local record DeleteInAppTemplateOutput
    MessageBody: MessageBody
end

local record DeleteJourneyInput
    ApplicationId: string
    JourneyId: string
end

local record DeleteJourneyOutput
    JourneyResponse: JourneyResponse
end

local record DeletePushTemplateInput
    TemplateName: string
    Version: string
end

local record DeletePushTemplateOutput
    MessageBody: MessageBody
end

local record DeleteRecommenderConfigurationInput
    RecommenderId: string
end

local record DeleteRecommenderConfigurationOutput
    RecommenderConfigurationResponse: RecommenderConfigurationResponse
end

local record DeleteSegmentInput
    ApplicationId: string
    SegmentId: string
end

local record DeleteSegmentOutput
    SegmentResponse: SegmentResponse
end

local record DeleteSmsChannelInput
    ApplicationId: string
end

local record DeleteSmsChannelOutput
    SMSChannelResponse: SMSChannelResponse
end

local record DeleteSmsTemplateInput
    TemplateName: string
    Version: string
end

local record DeleteSmsTemplateOutput
    MessageBody: MessageBody
end

local record DeleteUserEndpointsInput
    ApplicationId: string
    UserId: string
end

local record DeleteUserEndpointsOutput
    EndpointsResponse: EndpointsResponse
end

local record DeleteVoiceChannelInput
    ApplicationId: string
end

local record DeleteVoiceChannelOutput
    VoiceChannelResponse: VoiceChannelResponse
end

local record DeleteVoiceTemplateInput
    TemplateName: string
    Version: string
end

local record DeleteVoiceTemplateOutput
    MessageBody: MessageBody
end

local record GetAdmChannelInput
    ApplicationId: string
end

local record GetAdmChannelOutput
    ADMChannelResponse: ADMChannelResponse
end

local record GetApnsChannelInput
    ApplicationId: string
end

local record GetApnsChannelOutput
    APNSChannelResponse: APNSChannelResponse
end

local record GetApnsSandboxChannelInput
    ApplicationId: string
end

local record GetApnsSandboxChannelOutput
    APNSSandboxChannelResponse: APNSSandboxChannelResponse
end

local record GetApnsVoipChannelInput
    ApplicationId: string
end

local record GetApnsVoipChannelOutput
    APNSVoipChannelResponse: APNSVoipChannelResponse
end

local record GetApnsVoipSandboxChannelInput
    ApplicationId: string
end

local record GetApnsVoipSandboxChannelOutput
    APNSVoipSandboxChannelResponse: APNSVoipSandboxChannelResponse
end

local record GetAppInput
    ApplicationId: string
end

local record GetAppOutput
    ApplicationResponse: ApplicationResponse
end

local record GetApplicationDateRangeKpiInput
    ApplicationId: string
    EndTime: number
    KpiName: string
    NextToken: string
    PageSize: string
    StartTime: number
end

local record GetApplicationDateRangeKpiOutput
    ApplicationDateRangeKpiResponse: ApplicationDateRangeKpiResponse
end

local record GetApplicationSettingsInput
    ApplicationId: string
end

local record GetApplicationSettingsOutput
    ApplicationSettingsResource: ApplicationSettingsResource
end

local record GetAppsInput
    PageSize: string
    Token: string
end

local record GetAppsOutput
    ApplicationsResponse: ApplicationsResponse
end

local record GetBaiduChannelInput
    ApplicationId: string
end

local record GetBaiduChannelOutput
    BaiduChannelResponse: BaiduChannelResponse
end

local record GetCampaignInput
    ApplicationId: string
    CampaignId: string
end

local record GetCampaignOutput
    CampaignResponse: CampaignResponse
end

local record GetCampaignActivitiesInput
    ApplicationId: string
    CampaignId: string
    PageSize: string
    Token: string
end

local record GetCampaignActivitiesOutput
    ActivitiesResponse: ActivitiesResponse
end

local record GetCampaignDateRangeKpiInput
    ApplicationId: string
    CampaignId: string
    EndTime: number
    KpiName: string
    NextToken: string
    PageSize: string
    StartTime: number
end

local record GetCampaignDateRangeKpiOutput
    CampaignDateRangeKpiResponse: CampaignDateRangeKpiResponse
end

local record GetCampaignsInput
    ApplicationId: string
    PageSize: string
    Token: string
end

local record GetCampaignsOutput
    CampaignsResponse: CampaignsResponse
end

local record GetCampaignVersionInput
    ApplicationId: string
    CampaignId: string
    Version: string
end

local record GetCampaignVersionOutput
    CampaignResponse: CampaignResponse
end

local record GetCampaignVersionsInput
    ApplicationId: string
    CampaignId: string
    PageSize: string
    Token: string
end

local record GetCampaignVersionsOutput
    CampaignsResponse: CampaignsResponse
end

local record GetChannelsInput
    ApplicationId: string
end

local record GetChannelsOutput
    ChannelsResponse: ChannelsResponse
end

local record GetEmailChannelInput
    ApplicationId: string
end

local record GetEmailChannelOutput
    EmailChannelResponse: EmailChannelResponse
end

local record GetEmailTemplateInput
    TemplateName: string
    Version: string
end

local record GetEmailTemplateOutput
    EmailTemplateResponse: EmailTemplateResponse
end

local record GetEndpointInput
    ApplicationId: string
    EndpointId: string
end

local record GetEndpointOutput
    EndpointResponse: EndpointResponse
end

local record GetEventStreamInput
    ApplicationId: string
end

local record GetEventStreamOutput
    EventStream: EventStream
end

local record GetExportJobInput
    ApplicationId: string
    JobId: string
end

local record GetExportJobOutput
    ExportJobResponse: ExportJobResponse
end

local record GetExportJobsInput
    ApplicationId: string
    PageSize: string
    Token: string
end

local record GetExportJobsOutput
    ExportJobsResponse: ExportJobsResponse
end

local record GetGcmChannelInput
    ApplicationId: string
end

local record GetGcmChannelOutput
    GCMChannelResponse: GCMChannelResponse
end

local record GetImportJobInput
    ApplicationId: string
    JobId: string
end

local record GetImportJobOutput
    ImportJobResponse: ImportJobResponse
end

local record GetImportJobsInput
    ApplicationId: string
    PageSize: string
    Token: string
end

local record GetImportJobsOutput
    ImportJobsResponse: ImportJobsResponse
end

local record GetInAppMessagesInput
    ApplicationId: string
    EndpointId: string
end

local record GetInAppMessagesOutput
    InAppMessagesResponse: InAppMessagesResponse
end

local record GetInAppTemplateInput
    TemplateName: string
    Version: string
end

local record GetInAppTemplateOutput
    InAppTemplateResponse: InAppTemplateResponse
end

local record GetJourneyInput
    ApplicationId: string
    JourneyId: string
end

local record GetJourneyOutput
    JourneyResponse: JourneyResponse
end

local record GetJourneyDateRangeKpiInput
    ApplicationId: string
    EndTime: number
    JourneyId: string
    KpiName: string
    NextToken: string
    PageSize: string
    StartTime: number
end

local record GetJourneyDateRangeKpiOutput
    JourneyDateRangeKpiResponse: JourneyDateRangeKpiResponse
end

local record GetJourneyExecutionActivityMetricsInput
    ApplicationId: string
    JourneyActivityId: string
    JourneyId: string
    NextToken: string
    PageSize: string
end

local record GetJourneyExecutionActivityMetricsOutput
    JourneyExecutionActivityMetricsResponse: JourneyExecutionActivityMetricsResponse
end

local record GetJourneyExecutionMetricsInput
    ApplicationId: string
    JourneyId: string
    NextToken: string
    PageSize: string
end

local record GetJourneyExecutionMetricsOutput
    JourneyExecutionMetricsResponse: JourneyExecutionMetricsResponse
end

local record GetJourneyRunExecutionActivityMetricsInput
    ApplicationId: string
    JourneyActivityId: string
    JourneyId: string
    NextToken: string
    PageSize: string
    RunId: string
end

local record GetJourneyRunExecutionActivityMetricsOutput
    JourneyRunExecutionActivityMetricsResponse: JourneyRunExecutionActivityMetricsResponse
end

local record GetJourneyRunExecutionMetricsInput
    ApplicationId: string
    JourneyId: string
    NextToken: string
    PageSize: string
    RunId: string
end

local record GetJourneyRunExecutionMetricsOutput
    JourneyRunExecutionMetricsResponse: JourneyRunExecutionMetricsResponse
end

local record GetJourneyRunsInput
    ApplicationId: string
    JourneyId: string
    PageSize: string
    Token: string
end

local record GetJourneyRunsOutput
    JourneyRunsResponse: JourneyRunsResponse
end

local record GetPushTemplateInput
    TemplateName: string
    Version: string
end

local record GetPushTemplateOutput
    PushNotificationTemplateResponse: PushNotificationTemplateResponse
end

local record GetRecommenderConfigurationInput
    RecommenderId: string
end

local record GetRecommenderConfigurationOutput
    RecommenderConfigurationResponse: RecommenderConfigurationResponse
end

local record GetRecommenderConfigurationsInput
    PageSize: string
    Token: string
end

local record GetRecommenderConfigurationsOutput
    ListRecommenderConfigurationsResponse: ListRecommenderConfigurationsResponse
end

local record GetSegmentInput
    ApplicationId: string
    SegmentId: string
end

local record GetSegmentOutput
    SegmentResponse: SegmentResponse
end

local record GetSegmentExportJobsInput
    ApplicationId: string
    PageSize: string
    SegmentId: string
    Token: string
end

local record GetSegmentExportJobsOutput
    ExportJobsResponse: ExportJobsResponse
end

local record GetSegmentImportJobsInput
    ApplicationId: string
    PageSize: string
    SegmentId: string
    Token: string
end

local record GetSegmentImportJobsOutput
    ImportJobsResponse: ImportJobsResponse
end

local record GetSegmentsInput
    ApplicationId: string
    PageSize: string
    Token: string
end

local record GetSegmentsOutput
    SegmentsResponse: SegmentsResponse
end

local record GetSegmentVersionInput
    ApplicationId: string
    SegmentId: string
    Version: string
end

local record GetSegmentVersionOutput
    SegmentResponse: SegmentResponse
end

local record GetSegmentVersionsInput
    ApplicationId: string
    PageSize: string
    SegmentId: string
    Token: string
end

local record GetSegmentVersionsOutput
    SegmentsResponse: SegmentsResponse
end

local record GetSmsChannelInput
    ApplicationId: string
end

local record GetSmsChannelOutput
    SMSChannelResponse: SMSChannelResponse
end

local record GetSmsTemplateInput
    TemplateName: string
    Version: string
end

local record GetSmsTemplateOutput
    SMSTemplateResponse: SMSTemplateResponse
end

local record GetUserEndpointsInput
    ApplicationId: string
    UserId: string
end

local record GetUserEndpointsOutput
    EndpointsResponse: EndpointsResponse
end

local record GetVoiceChannelInput
    ApplicationId: string
end

local record GetVoiceChannelOutput
    VoiceChannelResponse: VoiceChannelResponse
end

local record GetVoiceTemplateInput
    TemplateName: string
    Version: string
end

local record GetVoiceTemplateOutput
    VoiceTemplateResponse: VoiceTemplateResponse
end

local record ListJourneysInput
    ApplicationId: string
    PageSize: string
    Token: string
end

local record ListJourneysOutput
    JourneysResponse: JourneysResponse
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    TagsModel: TagsModel
end

local record ListTemplatesInput
    NextToken: string
    PageSize: string
    Prefix: string
    TemplateType: string
end

local record ListTemplatesOutput
    TemplatesResponse: TemplatesResponse
end

local record ListTemplateVersionsInput
    NextToken: string
    PageSize: string
    TemplateName: string
    TemplateType: string
end

local record ListTemplateVersionsOutput
    TemplateVersionsResponse: TemplateVersionsResponse
end

local record PhoneNumberValidateInput
    NumberValidateRequest: NumberValidateRequest
end

local record PhoneNumberValidateOutput
    NumberValidateResponse: NumberValidateResponse
end

local record PutEventsInput
    ApplicationId: string
    EventsRequest: EventsRequest
end

local record PutEventsOutput
    EventsResponse: EventsResponse
end

local record PutEventStreamInput
    ApplicationId: string
    WriteEventStream: WriteEventStream
end

local record PutEventStreamOutput
    EventStream: EventStream
end

local record RemoveAttributesInput
    ApplicationId: string
    AttributeType: string
    UpdateAttributesRequest: UpdateAttributesRequest
end

local record RemoveAttributesOutput
    AttributesResource: AttributesResource
end

local record SendMessagesInput
    ApplicationId: string
    MessageRequest: MessageRequest
end

local record SendMessagesOutput
    MessageResponse: MessageResponse
end

local record SendOTPMessageInput
    ApplicationId: string
    SendOTPMessageRequestParameters: SendOTPMessageRequestParameters
end

local record SendOTPMessageOutput
    MessageResponse: MessageResponse
end

local record SendUsersMessagesInput
    ApplicationId: string
    SendUsersMessageRequest: SendUsersMessageRequest
end

local record SendUsersMessagesOutput
    SendUsersMessageResponse: SendUsersMessageResponse
end

local record TagResourceInput
    ResourceArn: string
    TagsModel: TagsModel
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateAdmChannelInput
    ADMChannelRequest: ADMChannelRequest
    ApplicationId: string
end

local record UpdateAdmChannelOutput
    ADMChannelResponse: ADMChannelResponse
end

local record UpdateApnsChannelInput
    APNSChannelRequest: APNSChannelRequest
    ApplicationId: string
end

local record UpdateApnsChannelOutput
    APNSChannelResponse: APNSChannelResponse
end

local record UpdateApnsSandboxChannelInput
    APNSSandboxChannelRequest: APNSSandboxChannelRequest
    ApplicationId: string
end

local record UpdateApnsSandboxChannelOutput
    APNSSandboxChannelResponse: APNSSandboxChannelResponse
end

local record UpdateApnsVoipChannelInput
    APNSVoipChannelRequest: APNSVoipChannelRequest
    ApplicationId: string
end

local record UpdateApnsVoipChannelOutput
    APNSVoipChannelResponse: APNSVoipChannelResponse
end

local record UpdateApnsVoipSandboxChannelInput
    APNSVoipSandboxChannelRequest: APNSVoipSandboxChannelRequest
    ApplicationId: string
end

local record UpdateApnsVoipSandboxChannelOutput
    APNSVoipSandboxChannelResponse: APNSVoipSandboxChannelResponse
end

local record UpdateApplicationSettingsInput
    ApplicationId: string
    WriteApplicationSettingsRequest: WriteApplicationSettingsRequest
end

local record UpdateApplicationSettingsOutput
    ApplicationSettingsResource: ApplicationSettingsResource
end

local record UpdateBaiduChannelInput
    ApplicationId: string
    BaiduChannelRequest: BaiduChannelRequest
end

local record UpdateBaiduChannelOutput
    BaiduChannelResponse: BaiduChannelResponse
end

local record UpdateCampaignInput
    ApplicationId: string
    CampaignId: string
    WriteCampaignRequest: WriteCampaignRequest
end

local record UpdateCampaignOutput
    CampaignResponse: CampaignResponse
end

local record UpdateEmailChannelInput
    ApplicationId: string
    EmailChannelRequest: EmailChannelRequest
end

local record UpdateEmailChannelOutput
    EmailChannelResponse: EmailChannelResponse
end

local record UpdateEmailTemplateInput
    CreateNewVersion: boolean
    EmailTemplateRequest: EmailTemplateRequest
    TemplateName: string
    Version: string
end

local record UpdateEmailTemplateOutput
    MessageBody: MessageBody
end

local record UpdateEndpointInput
    ApplicationId: string
    EndpointId: string
    EndpointRequest: EndpointRequest
end

local record UpdateEndpointOutput
    MessageBody: MessageBody
end

local record UpdateEndpointsBatchInput
    ApplicationId: string
    EndpointBatchRequest: EndpointBatchRequest
end

local record UpdateEndpointsBatchOutput
    MessageBody: MessageBody
end

local record UpdateGcmChannelInput
    ApplicationId: string
    GCMChannelRequest: GCMChannelRequest
end

local record UpdateGcmChannelOutput
    GCMChannelResponse: GCMChannelResponse
end

local record UpdateInAppTemplateInput
    CreateNewVersion: boolean
    InAppTemplateRequest: InAppTemplateRequest
    TemplateName: string
    Version: string
end

local record UpdateInAppTemplateOutput
    MessageBody: MessageBody
end

local record UpdateJourneyInput
    ApplicationId: string
    JourneyId: string
    WriteJourneyRequest: WriteJourneyRequest
end

local record UpdateJourneyOutput
    JourneyResponse: JourneyResponse
end

local record UpdateJourneyStateInput
    ApplicationId: string
    JourneyId: string
    JourneyStateRequest: JourneyStateRequest
end

local record UpdateJourneyStateOutput
    JourneyResponse: JourneyResponse
end

local record UpdatePushTemplateInput
    CreateNewVersion: boolean
    PushNotificationTemplateRequest: PushNotificationTemplateRequest
    TemplateName: string
    Version: string
end

local record UpdatePushTemplateOutput
    MessageBody: MessageBody
end

local record UpdateRecommenderConfigurationInput
    RecommenderId: string
    UpdateRecommenderConfiguration: UpdateRecommenderConfigurationShape
end

local record UpdateRecommenderConfigurationOutput
    RecommenderConfigurationResponse: RecommenderConfigurationResponse
end

local record UpdateSegmentInput
    ApplicationId: string
    SegmentId: string
    WriteSegmentRequest: WriteSegmentRequest
end

local record UpdateSegmentOutput
    SegmentResponse: SegmentResponse
end

local record UpdateSmsChannelInput
    ApplicationId: string
    SMSChannelRequest: SMSChannelRequest
end

local record UpdateSmsChannelOutput
    SMSChannelResponse: SMSChannelResponse
end

local record UpdateSmsTemplateInput
    CreateNewVersion: boolean
    SMSTemplateRequest: SMSTemplateRequest
    TemplateName: string
    Version: string
end

local record UpdateSmsTemplateOutput
    MessageBody: MessageBody
end

local record UpdateTemplateActiveVersionInput
    TemplateActiveVersionRequest: TemplateActiveVersionRequest
    TemplateName: string
    TemplateType: string
end

local record UpdateTemplateActiveVersionOutput
    MessageBody: MessageBody
end

local record UpdateVoiceChannelInput
    ApplicationId: string
    VoiceChannelRequest: VoiceChannelRequest
end

local record UpdateVoiceChannelOutput
    VoiceChannelResponse: VoiceChannelResponse
end

local record UpdateVoiceTemplateInput
    CreateNewVersion: boolean
    TemplateName: string
    Version: string
    VoiceTemplateRequest: VoiceTemplateRequest
end

local record UpdateVoiceTemplateOutput
    MessageBody: MessageBody
end

local record VerifyOTPMessageInput
    ApplicationId: string
    VerifyOTPMessageRequestParameters: VerifyOTPMessageRequestParameters
end

local record VerifyOTPMessageOutput
    VerificationResponse: VerificationResponse
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ConflictException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record BadRequestException
    Message: string
    RequestID: string
end

local record ForbiddenException
    Message: string
    RequestID: string
end

local record InternalServerErrorException
    Message: string
    RequestID: string
end

local record MethodNotAllowedException
    Message: string
    RequestID: string
end

local record NotFoundException
    Message: string
    RequestID: string
end

local record PayloadTooLargeException
    Message: string
    RequestID: string
end

local record TooManyRequestsException
    Message: string
    RequestID: string
end

local record M
    CreateAppInput: CreateAppInput
    CreateAppOutput: CreateAppOutput
    CreateCampaignInput: CreateCampaignInput
    CreateCampaignOutput: CreateCampaignOutput
    CreateEmailTemplateInput: CreateEmailTemplateInput
    CreateEmailTemplateOutput: CreateEmailTemplateOutput
    CreateExportJobInput: CreateExportJobInput
    CreateExportJobOutput: CreateExportJobOutput
    CreateImportJobInput: CreateImportJobInput
    CreateImportJobOutput: CreateImportJobOutput
    CreateInAppTemplateInput: CreateInAppTemplateInput
    CreateInAppTemplateOutput: CreateInAppTemplateOutput
    CreateJourneyInput: CreateJourneyInput
    CreateJourneyOutput: CreateJourneyOutput
    CreatePushTemplateInput: CreatePushTemplateInput
    CreatePushTemplateOutput: CreatePushTemplateOutput
    CreateRecommenderConfigurationInput: CreateRecommenderConfigurationInput
    CreateRecommenderConfigurationOutput: CreateRecommenderConfigurationOutput
    CreateSegmentInput: CreateSegmentInput
    CreateSegmentOutput: CreateSegmentOutput
    CreateSmsTemplateInput: CreateSmsTemplateInput
    CreateSmsTemplateOutput: CreateSmsTemplateOutput
    CreateVoiceTemplateInput: CreateVoiceTemplateInput
    CreateVoiceTemplateOutput: CreateVoiceTemplateOutput
    DeleteAdmChannelInput: DeleteAdmChannelInput
    DeleteAdmChannelOutput: DeleteAdmChannelOutput
    DeleteApnsChannelInput: DeleteApnsChannelInput
    DeleteApnsChannelOutput: DeleteApnsChannelOutput
    DeleteApnsSandboxChannelInput: DeleteApnsSandboxChannelInput
    DeleteApnsSandboxChannelOutput: DeleteApnsSandboxChannelOutput
    DeleteApnsVoipChannelInput: DeleteApnsVoipChannelInput
    DeleteApnsVoipChannelOutput: DeleteApnsVoipChannelOutput
    DeleteApnsVoipSandboxChannelInput: DeleteApnsVoipSandboxChannelInput
    DeleteApnsVoipSandboxChannelOutput: DeleteApnsVoipSandboxChannelOutput
    DeleteAppInput: DeleteAppInput
    DeleteAppOutput: DeleteAppOutput
    DeleteBaiduChannelInput: DeleteBaiduChannelInput
    DeleteBaiduChannelOutput: DeleteBaiduChannelOutput
    DeleteCampaignInput: DeleteCampaignInput
    DeleteCampaignOutput: DeleteCampaignOutput
    DeleteEmailChannelInput: DeleteEmailChannelInput
    DeleteEmailChannelOutput: DeleteEmailChannelOutput
    DeleteEmailTemplateInput: DeleteEmailTemplateInput
    DeleteEmailTemplateOutput: DeleteEmailTemplateOutput
    DeleteEndpointInput: DeleteEndpointInput
    DeleteEndpointOutput: DeleteEndpointOutput
    DeleteEventStreamInput: DeleteEventStreamInput
    DeleteEventStreamOutput: DeleteEventStreamOutput
    DeleteGcmChannelInput: DeleteGcmChannelInput
    DeleteGcmChannelOutput: DeleteGcmChannelOutput
    DeleteInAppTemplateInput: DeleteInAppTemplateInput
    DeleteInAppTemplateOutput: DeleteInAppTemplateOutput
    DeleteJourneyInput: DeleteJourneyInput
    DeleteJourneyOutput: DeleteJourneyOutput
    DeletePushTemplateInput: DeletePushTemplateInput
    DeletePushTemplateOutput: DeletePushTemplateOutput
    DeleteRecommenderConfigurationInput: DeleteRecommenderConfigurationInput
    DeleteRecommenderConfigurationOutput: DeleteRecommenderConfigurationOutput
    DeleteSegmentInput: DeleteSegmentInput
    DeleteSegmentOutput: DeleteSegmentOutput
    DeleteSmsChannelInput: DeleteSmsChannelInput
    DeleteSmsChannelOutput: DeleteSmsChannelOutput
    DeleteSmsTemplateInput: DeleteSmsTemplateInput
    DeleteSmsTemplateOutput: DeleteSmsTemplateOutput
    DeleteUserEndpointsInput: DeleteUserEndpointsInput
    DeleteUserEndpointsOutput: DeleteUserEndpointsOutput
    DeleteVoiceChannelInput: DeleteVoiceChannelInput
    DeleteVoiceChannelOutput: DeleteVoiceChannelOutput
    DeleteVoiceTemplateInput: DeleteVoiceTemplateInput
    DeleteVoiceTemplateOutput: DeleteVoiceTemplateOutput
    GetAdmChannelInput: GetAdmChannelInput
    GetAdmChannelOutput: GetAdmChannelOutput
    GetApnsChannelInput: GetApnsChannelInput
    GetApnsChannelOutput: GetApnsChannelOutput
    GetApnsSandboxChannelInput: GetApnsSandboxChannelInput
    GetApnsSandboxChannelOutput: GetApnsSandboxChannelOutput
    GetApnsVoipChannelInput: GetApnsVoipChannelInput
    GetApnsVoipChannelOutput: GetApnsVoipChannelOutput
    GetApnsVoipSandboxChannelInput: GetApnsVoipSandboxChannelInput
    GetApnsVoipSandboxChannelOutput: GetApnsVoipSandboxChannelOutput
    GetAppInput: GetAppInput
    GetAppOutput: GetAppOutput
    GetApplicationDateRangeKpiInput: GetApplicationDateRangeKpiInput
    GetApplicationDateRangeKpiOutput: GetApplicationDateRangeKpiOutput
    GetApplicationSettingsInput: GetApplicationSettingsInput
    GetApplicationSettingsOutput: GetApplicationSettingsOutput
    GetAppsInput: GetAppsInput
    GetAppsOutput: GetAppsOutput
    GetBaiduChannelInput: GetBaiduChannelInput
    GetBaiduChannelOutput: GetBaiduChannelOutput
    GetCampaignInput: GetCampaignInput
    GetCampaignOutput: GetCampaignOutput
    GetCampaignActivitiesInput: GetCampaignActivitiesInput
    GetCampaignActivitiesOutput: GetCampaignActivitiesOutput
    GetCampaignDateRangeKpiInput: GetCampaignDateRangeKpiInput
    GetCampaignDateRangeKpiOutput: GetCampaignDateRangeKpiOutput
    GetCampaignsInput: GetCampaignsInput
    GetCampaignsOutput: GetCampaignsOutput
    GetCampaignVersionInput: GetCampaignVersionInput
    GetCampaignVersionOutput: GetCampaignVersionOutput
    GetCampaignVersionsInput: GetCampaignVersionsInput
    GetCampaignVersionsOutput: GetCampaignVersionsOutput
    GetChannelsInput: GetChannelsInput
    GetChannelsOutput: GetChannelsOutput
    GetEmailChannelInput: GetEmailChannelInput
    GetEmailChannelOutput: GetEmailChannelOutput
    GetEmailTemplateInput: GetEmailTemplateInput
    GetEmailTemplateOutput: GetEmailTemplateOutput
    GetEndpointInput: GetEndpointInput
    GetEndpointOutput: GetEndpointOutput
    GetEventStreamInput: GetEventStreamInput
    GetEventStreamOutput: GetEventStreamOutput
    GetExportJobInput: GetExportJobInput
    GetExportJobOutput: GetExportJobOutput
    GetExportJobsInput: GetExportJobsInput
    GetExportJobsOutput: GetExportJobsOutput
    GetGcmChannelInput: GetGcmChannelInput
    GetGcmChannelOutput: GetGcmChannelOutput
    GetImportJobInput: GetImportJobInput
    GetImportJobOutput: GetImportJobOutput
    GetImportJobsInput: GetImportJobsInput
    GetImportJobsOutput: GetImportJobsOutput
    GetInAppMessagesInput: GetInAppMessagesInput
    GetInAppMessagesOutput: GetInAppMessagesOutput
    GetInAppTemplateInput: GetInAppTemplateInput
    GetInAppTemplateOutput: GetInAppTemplateOutput
    GetJourneyInput: GetJourneyInput
    GetJourneyOutput: GetJourneyOutput
    GetJourneyDateRangeKpiInput: GetJourneyDateRangeKpiInput
    GetJourneyDateRangeKpiOutput: GetJourneyDateRangeKpiOutput
    GetJourneyExecutionActivityMetricsInput: GetJourneyExecutionActivityMetricsInput
    GetJourneyExecutionActivityMetricsOutput: GetJourneyExecutionActivityMetricsOutput
    GetJourneyExecutionMetricsInput: GetJourneyExecutionMetricsInput
    GetJourneyExecutionMetricsOutput: GetJourneyExecutionMetricsOutput
    GetJourneyRunExecutionActivityMetricsInput: GetJourneyRunExecutionActivityMetricsInput
    GetJourneyRunExecutionActivityMetricsOutput: GetJourneyRunExecutionActivityMetricsOutput
    GetJourneyRunExecutionMetricsInput: GetJourneyRunExecutionMetricsInput
    GetJourneyRunExecutionMetricsOutput: GetJourneyRunExecutionMetricsOutput
    GetJourneyRunsInput: GetJourneyRunsInput
    GetJourneyRunsOutput: GetJourneyRunsOutput
    GetPushTemplateInput: GetPushTemplateInput
    GetPushTemplateOutput: GetPushTemplateOutput
    GetRecommenderConfigurationInput: GetRecommenderConfigurationInput
    GetRecommenderConfigurationOutput: GetRecommenderConfigurationOutput
    GetRecommenderConfigurationsInput: GetRecommenderConfigurationsInput
    GetRecommenderConfigurationsOutput: GetRecommenderConfigurationsOutput
    GetSegmentInput: GetSegmentInput
    GetSegmentOutput: GetSegmentOutput
    GetSegmentExportJobsInput: GetSegmentExportJobsInput
    GetSegmentExportJobsOutput: GetSegmentExportJobsOutput
    GetSegmentImportJobsInput: GetSegmentImportJobsInput
    GetSegmentImportJobsOutput: GetSegmentImportJobsOutput
    GetSegmentsInput: GetSegmentsInput
    GetSegmentsOutput: GetSegmentsOutput
    GetSegmentVersionInput: GetSegmentVersionInput
    GetSegmentVersionOutput: GetSegmentVersionOutput
    GetSegmentVersionsInput: GetSegmentVersionsInput
    GetSegmentVersionsOutput: GetSegmentVersionsOutput
    GetSmsChannelInput: GetSmsChannelInput
    GetSmsChannelOutput: GetSmsChannelOutput
    GetSmsTemplateInput: GetSmsTemplateInput
    GetSmsTemplateOutput: GetSmsTemplateOutput
    GetUserEndpointsInput: GetUserEndpointsInput
    GetUserEndpointsOutput: GetUserEndpointsOutput
    GetVoiceChannelInput: GetVoiceChannelInput
    GetVoiceChannelOutput: GetVoiceChannelOutput
    GetVoiceTemplateInput: GetVoiceTemplateInput
    GetVoiceTemplateOutput: GetVoiceTemplateOutput
    ListJourneysInput: ListJourneysInput
    ListJourneysOutput: ListJourneysOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTemplatesInput: ListTemplatesInput
    ListTemplatesOutput: ListTemplatesOutput
    ListTemplateVersionsInput: ListTemplateVersionsInput
    ListTemplateVersionsOutput: ListTemplateVersionsOutput
    PhoneNumberValidateInput: PhoneNumberValidateInput
    PhoneNumberValidateOutput: PhoneNumberValidateOutput
    PutEventsInput: PutEventsInput
    PutEventsOutput: PutEventsOutput
    PutEventStreamInput: PutEventStreamInput
    PutEventStreamOutput: PutEventStreamOutput
    RemoveAttributesInput: RemoveAttributesInput
    RemoveAttributesOutput: RemoveAttributesOutput
    SendMessagesInput: SendMessagesInput
    SendMessagesOutput: SendMessagesOutput
    SendOTPMessageInput: SendOTPMessageInput
    SendOTPMessageOutput: SendOTPMessageOutput
    SendUsersMessagesInput: SendUsersMessagesInput
    SendUsersMessagesOutput: SendUsersMessagesOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAdmChannelInput: UpdateAdmChannelInput
    UpdateAdmChannelOutput: UpdateAdmChannelOutput
    UpdateApnsChannelInput: UpdateApnsChannelInput
    UpdateApnsChannelOutput: UpdateApnsChannelOutput
    UpdateApnsSandboxChannelInput: UpdateApnsSandboxChannelInput
    UpdateApnsSandboxChannelOutput: UpdateApnsSandboxChannelOutput
    UpdateApnsVoipChannelInput: UpdateApnsVoipChannelInput
    UpdateApnsVoipChannelOutput: UpdateApnsVoipChannelOutput
    UpdateApnsVoipSandboxChannelInput: UpdateApnsVoipSandboxChannelInput
    UpdateApnsVoipSandboxChannelOutput: UpdateApnsVoipSandboxChannelOutput
    UpdateApplicationSettingsInput: UpdateApplicationSettingsInput
    UpdateApplicationSettingsOutput: UpdateApplicationSettingsOutput
    UpdateBaiduChannelInput: UpdateBaiduChannelInput
    UpdateBaiduChannelOutput: UpdateBaiduChannelOutput
    UpdateCampaignInput: UpdateCampaignInput
    UpdateCampaignOutput: UpdateCampaignOutput
    UpdateEmailChannelInput: UpdateEmailChannelInput
    UpdateEmailChannelOutput: UpdateEmailChannelOutput
    UpdateEmailTemplateInput: UpdateEmailTemplateInput
    UpdateEmailTemplateOutput: UpdateEmailTemplateOutput
    UpdateEndpointInput: UpdateEndpointInput
    UpdateEndpointOutput: UpdateEndpointOutput
    UpdateEndpointsBatchInput: UpdateEndpointsBatchInput
    UpdateEndpointsBatchOutput: UpdateEndpointsBatchOutput
    UpdateGcmChannelInput: UpdateGcmChannelInput
    UpdateGcmChannelOutput: UpdateGcmChannelOutput
    UpdateInAppTemplateInput: UpdateInAppTemplateInput
    UpdateInAppTemplateOutput: UpdateInAppTemplateOutput
    UpdateJourneyInput: UpdateJourneyInput
    UpdateJourneyOutput: UpdateJourneyOutput
    UpdateJourneyStateInput: UpdateJourneyStateInput
    UpdateJourneyStateOutput: UpdateJourneyStateOutput
    UpdatePushTemplateInput: UpdatePushTemplateInput
    UpdatePushTemplateOutput: UpdatePushTemplateOutput
    UpdateRecommenderConfigurationInput: UpdateRecommenderConfigurationInput
    UpdateRecommenderConfigurationOutput: UpdateRecommenderConfigurationOutput
    UpdateSegmentInput: UpdateSegmentInput
    UpdateSegmentOutput: UpdateSegmentOutput
    UpdateSmsChannelInput: UpdateSmsChannelInput
    UpdateSmsChannelOutput: UpdateSmsChannelOutput
    UpdateSmsTemplateInput: UpdateSmsTemplateInput
    UpdateSmsTemplateOutput: UpdateSmsTemplateOutput
    UpdateTemplateActiveVersionInput: UpdateTemplateActiveVersionInput
    UpdateTemplateActiveVersionOutput: UpdateTemplateActiveVersionOutput
    UpdateVoiceChannelInput: UpdateVoiceChannelInput
    UpdateVoiceChannelOutput: UpdateVoiceChannelOutput
    UpdateVoiceTemplateInput: UpdateVoiceTemplateInput
    UpdateVoiceTemplateOutput: UpdateVoiceTemplateOutput
    VerifyOTPMessageInput: VerifyOTPMessageInput
    VerifyOTPMessageOutput: VerifyOTPMessageOutput
end

return M
