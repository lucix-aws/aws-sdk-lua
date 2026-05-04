local record AssociateWhatsAppBusinessAccountInput
    signupCallback: WhatsAppSignupCallback
    setupFinalization: WhatsAppSetupFinalization
end

local record AssociateWhatsAppBusinessAccountOutput
    signupCallbackResult: WhatsAppSignupCallbackResult
    statusCode: number
end

local record CreateWhatsAppMessageTemplateInput
    templateDefinition: string
    id: string
end

local record CreateWhatsAppMessageTemplateOutput
    metaTemplateId: string
    templateStatus: string
    category: string
end

local record CreateWhatsAppMessageTemplateFromLibraryInput
    metaLibraryTemplate: MetaLibraryTemplate
    id: string
end

local record CreateWhatsAppMessageTemplateFromLibraryOutput
    metaTemplateId: string
    templateStatus: string
    category: string
end

local record CreateWhatsAppMessageTemplateMediaInput
    id: string
    sourceS3File: S3File
end

local record CreateWhatsAppMessageTemplateMediaOutput
    metaHeaderHandle: string
end

local record DeleteWhatsAppMessageMediaInput
    mediaId: string
    originationPhoneNumberId: string
end

local record DeleteWhatsAppMessageMediaOutput
    success: boolean
end

local record DeleteWhatsAppMessageTemplateInput
    metaTemplateId: string
    deleteAllLanguages: boolean
    id: string
    templateName: string
end

local record DeleteWhatsAppMessageTemplateOutput
end

local record DisassociateWhatsAppBusinessAccountInput
    id: string
end

local record DisassociateWhatsAppBusinessAccountOutput
end

local record GetLinkedWhatsAppBusinessAccountInput
    id: string
end

local record GetLinkedWhatsAppBusinessAccountOutput
    account: LinkedWhatsAppBusinessAccount
end

local record GetLinkedWhatsAppBusinessAccountPhoneNumberInput
    id: string
end

local record GetLinkedWhatsAppBusinessAccountPhoneNumberOutput
    phoneNumber: WhatsAppPhoneNumberDetail
    linkedWhatsAppBusinessAccountId: string
end

local record GetWhatsAppMessageMediaInput
    mediaId: string
    originationPhoneNumberId: string
    metadataOnly: boolean
    destinationS3PresignedUrl: S3PresignedUrl
    destinationS3File: S3File
end

local record GetWhatsAppMessageMediaOutput
    mimeType: string
    fileSize: number
end

local record GetWhatsAppMessageTemplateInput
    metaTemplateId: string
    id: string
end

local record GetWhatsAppMessageTemplateOutput
    template: string
end

local record ListLinkedWhatsAppBusinessAccountsInput
    nextToken: string
    maxResults: number
end

local record ListLinkedWhatsAppBusinessAccountsOutput
    linkedAccounts: {LinkedWhatsAppBusinessAccountSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    statusCode: number
    tags: {Tag}
end

local record ListWhatsAppMessageTemplatesInput
    id: string
    nextToken: string
    maxResults: number
end

local record ListWhatsAppMessageTemplatesOutput
    templates: {TemplateSummary}
    nextToken: string
end

local record ListWhatsAppTemplateLibraryInput
    nextToken: string
    maxResults: number
    id: string
    filters: {string : string}
end

local record ListWhatsAppTemplateLibraryOutput
    metaLibraryTemplates: {MetaLibraryTemplateDefinition}
    nextToken: string
end

local record PostWhatsAppMessageMediaInput
    originationPhoneNumberId: string
    sourceS3PresignedUrl: S3PresignedUrl
    sourceS3File: S3File
end

local record PostWhatsAppMessageMediaOutput
    mediaId: string
end

local record PutWhatsAppBusinessAccountEventDestinationsInput
    id: string
    eventDestinations: {WhatsAppBusinessAccountEventDestination}
end

local record PutWhatsAppBusinessAccountEventDestinationsOutput
end

local record SendWhatsAppMessageInput
    originationPhoneNumberId: string
    message: string
    metaApiVersion: string
end

local record SendWhatsAppMessageOutput
    messageId: string
end

local record TagResourceInput
    resourceArn: string
    tags: {Tag}
end

local record TagResourceOutput
    statusCode: number
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
    statusCode: number
end

local record UpdateWhatsAppMessageTemplateInput
    id: string
    metaTemplateId: string
    parameterFormat: string
    templateCategory: string
    templateComponents: string
    ctaUrlLinkTrackingOptedOut: boolean
end

local record UpdateWhatsAppMessageTemplateOutput
end

local record DependencyException
    message: string
end

local record InvalidParametersException
    message: string
end

local record LimitExceededException
    message: string
end

local record ThrottledRequestException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
end

local record DependencyException
    message: string
end

local record InternalServiceException
    message: string
end

local record InvalidParametersException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottledRequestException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
end

local record DependencyException
    message: string
end

local record InternalServiceException
    message: string
end

local record InvalidParametersException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottledRequestException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
end

local record DependencyException
    message: string
end

local record InternalServiceException
    message: string
end

local record InvalidParametersException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottledRequestException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedByMetaException
    message: string
end

local record DependencyException
    message: string
end

local record InternalServiceException
    message: string
end

local record InvalidParametersException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottledRequestException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
end

local record DependencyException
    message: string
end

local record InternalServiceException
    message: string
end

local record InvalidParametersException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottledRequestException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
end

local record DependencyException
    message: string
end

local record InvalidParametersException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottledRequestException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
end

local record DependencyException
    message: string
end

local record InternalServiceException
    message: string
end

local record InvalidParametersException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottledRequestException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
end

local record DependencyException
    message: string
end

local record InternalServiceException
    message: string
end

local record InvalidParametersException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottledRequestException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedByMetaException
    message: string
end

local record DependencyException
    message: string
end

local record InternalServiceException
    message: string
end

local record InvalidParametersException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottledRequestException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
end

local record DependencyException
    message: string
end

local record InternalServiceException
    message: string
end

local record InvalidParametersException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottledRequestException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServiceException
    message: string
end

local record InvalidParametersException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottledRequestException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServiceException
    message: string
end

local record InvalidParametersException
    message: string
end

local record ThrottledRequestException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
end

local record DependencyException
    message: string
end

local record InternalServiceException
    message: string
end

local record InvalidParametersException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottledRequestException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
end

local record DependencyException
    message: string
end

local record InternalServiceException
    message: string
end

local record InvalidParametersException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottledRequestException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedByMetaException
    message: string
end

local record DependencyException
    message: string
end

local record InternalServiceException
    message: string
end

local record InvalidParametersException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottledRequestException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServiceException
    message: string
end

local record InvalidParametersException
    message: string
end

local record ThrottledRequestException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
end

local record DependencyException
    message: string
end

local record InternalServiceException
    message: string
end

local record InvalidParametersException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottledRequestException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServiceException
    message: string
end

local record InvalidParametersException
    message: string
end

local record ThrottledRequestException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServiceException
    message: string
end

local record InvalidParametersException
    message: string
end

local record ThrottledRequestException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
end

local record DependencyException
    message: string
end

local record InternalServiceException
    message: string
end

local record InvalidParametersException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottledRequestException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
end

local record M
    AssociateWhatsAppBusinessAccountInput: AssociateWhatsAppBusinessAccountInput
    AssociateWhatsAppBusinessAccountOutput: AssociateWhatsAppBusinessAccountOutput
    CreateWhatsAppMessageTemplateInput: CreateWhatsAppMessageTemplateInput
    CreateWhatsAppMessageTemplateOutput: CreateWhatsAppMessageTemplateOutput
    CreateWhatsAppMessageTemplateFromLibraryInput: CreateWhatsAppMessageTemplateFromLibraryInput
    CreateWhatsAppMessageTemplateFromLibraryOutput: CreateWhatsAppMessageTemplateFromLibraryOutput
    CreateWhatsAppMessageTemplateMediaInput: CreateWhatsAppMessageTemplateMediaInput
    CreateWhatsAppMessageTemplateMediaOutput: CreateWhatsAppMessageTemplateMediaOutput
    DeleteWhatsAppMessageMediaInput: DeleteWhatsAppMessageMediaInput
    DeleteWhatsAppMessageMediaOutput: DeleteWhatsAppMessageMediaOutput
    DeleteWhatsAppMessageTemplateInput: DeleteWhatsAppMessageTemplateInput
    DeleteWhatsAppMessageTemplateOutput: DeleteWhatsAppMessageTemplateOutput
    DisassociateWhatsAppBusinessAccountInput: DisassociateWhatsAppBusinessAccountInput
    DisassociateWhatsAppBusinessAccountOutput: DisassociateWhatsAppBusinessAccountOutput
    GetLinkedWhatsAppBusinessAccountInput: GetLinkedWhatsAppBusinessAccountInput
    GetLinkedWhatsAppBusinessAccountOutput: GetLinkedWhatsAppBusinessAccountOutput
    GetLinkedWhatsAppBusinessAccountPhoneNumberInput: GetLinkedWhatsAppBusinessAccountPhoneNumberInput
    GetLinkedWhatsAppBusinessAccountPhoneNumberOutput: GetLinkedWhatsAppBusinessAccountPhoneNumberOutput
    GetWhatsAppMessageMediaInput: GetWhatsAppMessageMediaInput
    GetWhatsAppMessageMediaOutput: GetWhatsAppMessageMediaOutput
    GetWhatsAppMessageTemplateInput: GetWhatsAppMessageTemplateInput
    GetWhatsAppMessageTemplateOutput: GetWhatsAppMessageTemplateOutput
    ListLinkedWhatsAppBusinessAccountsInput: ListLinkedWhatsAppBusinessAccountsInput
    ListLinkedWhatsAppBusinessAccountsOutput: ListLinkedWhatsAppBusinessAccountsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListWhatsAppMessageTemplatesInput: ListWhatsAppMessageTemplatesInput
    ListWhatsAppMessageTemplatesOutput: ListWhatsAppMessageTemplatesOutput
    ListWhatsAppTemplateLibraryInput: ListWhatsAppTemplateLibraryInput
    ListWhatsAppTemplateLibraryOutput: ListWhatsAppTemplateLibraryOutput
    PostWhatsAppMessageMediaInput: PostWhatsAppMessageMediaInput
    PostWhatsAppMessageMediaOutput: PostWhatsAppMessageMediaOutput
    PutWhatsAppBusinessAccountEventDestinationsInput: PutWhatsAppBusinessAccountEventDestinationsInput
    PutWhatsAppBusinessAccountEventDestinationsOutput: PutWhatsAppBusinessAccountEventDestinationsOutput
    SendWhatsAppMessageInput: SendWhatsAppMessageInput
    SendWhatsAppMessageOutput: SendWhatsAppMessageOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateWhatsAppMessageTemplateInput: UpdateWhatsAppMessageTemplateInput
    UpdateWhatsAppMessageTemplateOutput: UpdateWhatsAppMessageTemplateOutput
end

return M
