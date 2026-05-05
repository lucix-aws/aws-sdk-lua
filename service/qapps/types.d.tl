local record AssociateLibraryItemReviewInput
    instanceId: string
    libraryItemId: string
end

local record AssociateLibraryItemReviewOutput
end

local record AssociateQAppWithUserInput
    instanceId: string
    appId: string
end

local record AssociateQAppWithUserOutput
end

local record BatchCreateCategoryInput
    instanceId: string
    categories: {BatchCreateCategoryInputCategory}
end

local record BatchCreateCategoryOutput
end

local record BatchDeleteCategoryInput
    instanceId: string
    categories: {string}
end

local record BatchDeleteCategoryOutput
end

local record BatchUpdateCategoryInput
    instanceId: string
    categories: {CategoryInput}
end

local record BatchUpdateCategoryOutput
end

local record CreateLibraryItemInput
    instanceId: string
    appId: string
    appVersion: number
    categories: {string}
end

local record CreateLibraryItemOutput
    libraryItemId: string
    status: string
    createdAt: number
    createdBy: string
    updatedAt: number
    updatedBy: string
    ratingCount: number
    isVerified: boolean
end

local record CreatePresignedUrlInput
    instanceId: string
    cardId: string
    appId: string
    fileContentsSha256: string
    fileName: string
    scope: string
    sessionId: string
end

local record CreatePresignedUrlOutput
    fileId: string
    presignedUrl: string
    presignedUrlFields: {string : string}
    presignedUrlExpiration: number
end

local record CreateQAppInput
    instanceId: string
    title: string
    description: string
    appDefinition: AppDefinitionInput
    tags: {string : string}
end

local record CreateQAppOutput
    appId: string
    appArn: string
    title: string
    description: string
    initialPrompt: string
    appVersion: number
    status: string
    createdAt: number
    createdBy: string
    updatedAt: number
    updatedBy: string
    requiredCapabilities: {string}
end

local record DeleteLibraryItemInput
    instanceId: string
    libraryItemId: string
end

local record DeleteLibraryItemOutput
end

local record DeleteQAppInput
    instanceId: string
    appId: string
end

local record DeleteQAppOutput
end

local record DescribeQAppPermissionsInput
    instanceId: string
    appId: string
end

local record DescribeQAppPermissionsOutput
    resourceArn: string
    appId: string
    permissions: {PermissionOutput}
end

local record DisassociateLibraryItemReviewInput
    instanceId: string
    libraryItemId: string
end

local record DisassociateLibraryItemReviewOutput
end

local record DisassociateQAppFromUserInput
    instanceId: string
    appId: string
end

local record DisassociateQAppFromUserOutput
end

local record ExportQAppSessionDataInput
    instanceId: string
    sessionId: string
end

local record ExportQAppSessionDataOutput
    csvFileLink: string
    expiresAt: number
    sessionArn: string
end

local record GetLibraryItemInput
    instanceId: string
    libraryItemId: string
    appId: string
end

local record GetLibraryItemOutput
    libraryItemId: string
    appId: string
    appVersion: number
    categories: {Category}
    status: string
    createdAt: number
    createdBy: string
    updatedAt: number
    updatedBy: string
    ratingCount: number
    isRatedByUser: boolean
    userCount: number
    isVerified: boolean
end

local record GetQAppInput
    instanceId: string
    appId: string
    appVersion: number
end

local record GetQAppOutput
    appId: string
    appArn: string
    title: string
    description: string
    initialPrompt: string
    appVersion: number
    status: string
    createdAt: number
    createdBy: string
    updatedAt: number
    updatedBy: string
    requiredCapabilities: {string}
    appDefinition: AppDefinition
end

local record GetQAppSessionInput
    instanceId: string
    sessionId: string
end

local record GetQAppSessionOutput
    sessionId: string
    sessionArn: string
    sessionName: string
    appVersion: number
    latestPublishedAppVersion: number
    status: string
    cardStatus: {string : CardStatus}
    userIsHost: boolean
end

local record GetQAppSessionMetadataInput
    instanceId: string
    sessionId: string
end

local record GetQAppSessionMetadataOutput
    sessionId: string
    sessionArn: string
    sessionName: string
    sharingConfiguration: SessionSharingConfiguration
    sessionOwner: boolean
end

local record ImportDocumentInput
    instanceId: string
    cardId: string
    appId: string
    fileContentsBase64: string
    fileName: string
    scope: string
    sessionId: string
end

local record ImportDocumentOutput
    fileId: string
end

local record ListCategoriesInput
    instanceId: string
end

local record ListCategoriesOutput
    categories: {Category}
end

local record ListLibraryItemsInput
    instanceId: string
    limit: number
    nextToken: string
    categoryId: string
end

local record ListLibraryItemsOutput
    libraryItems: {LibraryItemMember}
    nextToken: string
end

local record ListQAppsInput
    instanceId: string
    limit: number
    nextToken: string
end

local record ListQAppsOutput
    apps: {UserAppItem}
    nextToken: string
end

local record ListQAppSessionDataInput
    instanceId: string
    sessionId: string
end

local record ListQAppSessionDataOutput
    sessionId: string
    sessionArn: string
    sessionData: {QAppSessionData}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceARN: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record PredictQAppInput
    instanceId: string
    options: PredictQAppInputOptions
end

local record PredictQAppOutput
    app: PredictAppDefinition
    problemStatement: string
end

local record StartQAppSessionInput
    instanceId: string
    appId: string
    appVersion: number
    initialValues: {CardValue}
    sessionId: string
    tags: {string : string}
end

local record StartQAppSessionOutput
    sessionId: string
    sessionArn: string
end

local record StopQAppSessionInput
    instanceId: string
    sessionId: string
end

local record StopQAppSessionOutput
end

local record TagResourceInput
    resourceARN: string
    tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceARN: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateLibraryItemInput
    instanceId: string
    libraryItemId: string
    status: string
    categories: {string}
end

local record UpdateLibraryItemOutput
    libraryItemId: string
    appId: string
    appVersion: number
    categories: {Category}
    status: string
    createdAt: number
    createdBy: string
    updatedAt: number
    updatedBy: string
    ratingCount: number
    isRatedByUser: boolean
    userCount: number
    isVerified: boolean
end

local record UpdateLibraryItemMetadataInput
    instanceId: string
    libraryItemId: string
    isVerified: boolean
end

local record UpdateLibraryItemMetadataOutput
end

local record UpdateQAppInput
    instanceId: string
    appId: string
    title: string
    description: string
    appDefinition: AppDefinitionInput
end

local record UpdateQAppOutput
    appId: string
    appArn: string
    title: string
    description: string
    initialPrompt: string
    appVersion: number
    status: string
    createdAt: number
    createdBy: string
    updatedAt: number
    updatedBy: string
    requiredCapabilities: {string}
end

local record UpdateQAppPermissionsInput
    instanceId: string
    appId: string
    grantPermissions: {PermissionInput}
    revokePermissions: {PermissionInput}
end

local record UpdateQAppPermissionsOutput
    resourceArn: string
    appId: string
    permissions: {PermissionOutput}
end

local record UpdateQAppSessionInput
    instanceId: string
    sessionId: string
    values: {CardValue}
end

local record UpdateQAppSessionOutput
    sessionId: string
    sessionArn: string
end

local record UpdateQAppSessionMetadataInput
    instanceId: string
    sessionId: string
    sessionName: string
    sharingConfiguration: SessionSharingConfiguration
end

local record UpdateQAppSessionMetadataOutput
    sessionId: string
    sessionArn: string
    sessionName: string
    sharingConfiguration: SessionSharingConfiguration
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record ContentTooLargeException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ContentTooLargeException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ContentTooLargeException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
end

local type LibraryItemStatus = "PUBLISHED" | "DISABLED"

local type DocumentScope = "APPLICATION" | "SESSION"

local type AppStatus = "PUBLISHED" | "DRAFT" | "DELETED"

local type ExecutionStatus = "IN_PROGRESS" | "WAITING" | "COMPLETED" | "ERROR"

local record M
    AssociateLibraryItemReviewInput: AssociateLibraryItemReviewInput
    AssociateLibraryItemReviewOutput: AssociateLibraryItemReviewOutput
    AssociateQAppWithUserInput: AssociateQAppWithUserInput
    AssociateQAppWithUserOutput: AssociateQAppWithUserOutput
    BatchCreateCategoryInput: BatchCreateCategoryInput
    BatchCreateCategoryOutput: BatchCreateCategoryOutput
    BatchDeleteCategoryInput: BatchDeleteCategoryInput
    BatchDeleteCategoryOutput: BatchDeleteCategoryOutput
    BatchUpdateCategoryInput: BatchUpdateCategoryInput
    BatchUpdateCategoryOutput: BatchUpdateCategoryOutput
    CreateLibraryItemInput: CreateLibraryItemInput
    CreateLibraryItemOutput: CreateLibraryItemOutput
    CreatePresignedUrlInput: CreatePresignedUrlInput
    CreatePresignedUrlOutput: CreatePresignedUrlOutput
    CreateQAppInput: CreateQAppInput
    CreateQAppOutput: CreateQAppOutput
    DeleteLibraryItemInput: DeleteLibraryItemInput
    DeleteLibraryItemOutput: DeleteLibraryItemOutput
    DeleteQAppInput: DeleteQAppInput
    DeleteQAppOutput: DeleteQAppOutput
    DescribeQAppPermissionsInput: DescribeQAppPermissionsInput
    DescribeQAppPermissionsOutput: DescribeQAppPermissionsOutput
    DisassociateLibraryItemReviewInput: DisassociateLibraryItemReviewInput
    DisassociateLibraryItemReviewOutput: DisassociateLibraryItemReviewOutput
    DisassociateQAppFromUserInput: DisassociateQAppFromUserInput
    DisassociateQAppFromUserOutput: DisassociateQAppFromUserOutput
    ExportQAppSessionDataInput: ExportQAppSessionDataInput
    ExportQAppSessionDataOutput: ExportQAppSessionDataOutput
    GetLibraryItemInput: GetLibraryItemInput
    GetLibraryItemOutput: GetLibraryItemOutput
    GetQAppInput: GetQAppInput
    GetQAppOutput: GetQAppOutput
    GetQAppSessionInput: GetQAppSessionInput
    GetQAppSessionOutput: GetQAppSessionOutput
    GetQAppSessionMetadataInput: GetQAppSessionMetadataInput
    GetQAppSessionMetadataOutput: GetQAppSessionMetadataOutput
    ImportDocumentInput: ImportDocumentInput
    ImportDocumentOutput: ImportDocumentOutput
    ListCategoriesInput: ListCategoriesInput
    ListCategoriesOutput: ListCategoriesOutput
    ListLibraryItemsInput: ListLibraryItemsInput
    ListLibraryItemsOutput: ListLibraryItemsOutput
    ListQAppsInput: ListQAppsInput
    ListQAppsOutput: ListQAppsOutput
    ListQAppSessionDataInput: ListQAppSessionDataInput
    ListQAppSessionDataOutput: ListQAppSessionDataOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PredictQAppInput: PredictQAppInput
    PredictQAppOutput: PredictQAppOutput
    StartQAppSessionInput: StartQAppSessionInput
    StartQAppSessionOutput: StartQAppSessionOutput
    StopQAppSessionInput: StopQAppSessionInput
    StopQAppSessionOutput: StopQAppSessionOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateLibraryItemInput: UpdateLibraryItemInput
    UpdateLibraryItemOutput: UpdateLibraryItemOutput
    UpdateLibraryItemMetadataInput: UpdateLibraryItemMetadataInput
    UpdateLibraryItemMetadataOutput: UpdateLibraryItemMetadataOutput
    UpdateQAppInput: UpdateQAppInput
    UpdateQAppOutput: UpdateQAppOutput
    UpdateQAppPermissionsInput: UpdateQAppPermissionsInput
    UpdateQAppPermissionsOutput: UpdateQAppPermissionsOutput
    UpdateQAppSessionInput: UpdateQAppSessionInput
    UpdateQAppSessionOutput: UpdateQAppSessionOutput
    UpdateQAppSessionMetadataInput: UpdateQAppSessionMetadataInput
    UpdateQAppSessionMetadataOutput: UpdateQAppSessionMetadataOutput
end

return M
