local record BatchGetUserAccessTasksInput
    appBundleIdentifier: string
    taskIdList: {string}
end

local record BatchGetUserAccessTasksOutput
    userAccessResultsList: {UserAccessResultItem}
end

local record ConnectAppAuthorizationInput
    appBundleIdentifier: string
    appAuthorizationIdentifier: string
    authRequest: AuthRequest
end

local record ConnectAppAuthorizationOutput
    appAuthorizationSummary: AppAuthorizationSummary
end

local record CreateAppAuthorizationInput
    appBundleIdentifier: string
    app: string
    credential: Credential
    tenant: Tenant
    authType: string
    clientToken: string
    tags: {Tag}
end

local record CreateAppAuthorizationOutput
    appAuthorization: AppAuthorization
end

local record CreateAppBundleInput
    clientToken: string
    customerManagedKeyIdentifier: string
    tags: {Tag}
end

local record CreateAppBundleOutput
    appBundle: AppBundle
end

local record CreateIngestionInput
    appBundleIdentifier: string
    app: string
    tenantId: string
    ingestionType: string
    clientToken: string
    tags: {Tag}
end

local record CreateIngestionOutput
    ingestion: Ingestion
end

local record CreateIngestionDestinationInput
    appBundleIdentifier: string
    ingestionIdentifier: string
    processingConfiguration: ProcessingConfiguration
    destinationConfiguration: DestinationConfiguration
    clientToken: string
    tags: {Tag}
end

local record CreateIngestionDestinationOutput
    ingestionDestination: IngestionDestination
end

local record DeleteAppAuthorizationInput
    appBundleIdentifier: string
    appAuthorizationIdentifier: string
end

local record DeleteAppAuthorizationOutput
end

local record DeleteAppBundleInput
    appBundleIdentifier: string
end

local record DeleteAppBundleOutput
end

local record DeleteIngestionInput
    appBundleIdentifier: string
    ingestionIdentifier: string
end

local record DeleteIngestionOutput
end

local record DeleteIngestionDestinationInput
    appBundleIdentifier: string
    ingestionIdentifier: string
    ingestionDestinationIdentifier: string
end

local record DeleteIngestionDestinationOutput
end

local record GetAppAuthorizationInput
    appBundleIdentifier: string
    appAuthorizationIdentifier: string
end

local record GetAppAuthorizationOutput
    appAuthorization: AppAuthorization
end

local record GetAppBundleInput
    appBundleIdentifier: string
end

local record GetAppBundleOutput
    appBundle: AppBundle
end

local record GetIngestionInput
    appBundleIdentifier: string
    ingestionIdentifier: string
end

local record GetIngestionOutput
    ingestion: Ingestion
end

local record GetIngestionDestinationInput
    appBundleIdentifier: string
    ingestionIdentifier: string
    ingestionDestinationIdentifier: string
end

local record GetIngestionDestinationOutput
    ingestionDestination: IngestionDestination
end

local record ListAppAuthorizationsInput
    appBundleIdentifier: string
    maxResults: number
    nextToken: string
end

local record ListAppAuthorizationsOutput
    appAuthorizationSummaryList: {AppAuthorizationSummary}
    nextToken: string
end

local record ListAppBundlesInput
    maxResults: number
    nextToken: string
end

local record ListAppBundlesOutput
    appBundleSummaryList: {AppBundleSummary}
    nextToken: string
end

local record ListIngestionDestinationsInput
    appBundleIdentifier: string
    ingestionIdentifier: string
    maxResults: number
    nextToken: string
end

local record ListIngestionDestinationsOutput
    ingestionDestinations: {IngestionDestinationSummary}
    nextToken: string
end

local record ListIngestionsInput
    appBundleIdentifier: string
    maxResults: number
    nextToken: string
end

local record ListIngestionsOutput
    ingestions: {IngestionSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {Tag}
end

local record StartIngestionInput
    ingestionIdentifier: string
    appBundleIdentifier: string
end

local record StartIngestionOutput
end

local record StartUserAccessTasksInput
    appBundleIdentifier: string
    email: string
end

local record StartUserAccessTasksOutput
    userAccessTasksList: {UserAccessTaskItem}
end

local record StopIngestionInput
    ingestionIdentifier: string
    appBundleIdentifier: string
end

local record StopIngestionOutput
end

local record TagResourceInput
    resourceArn: string
    tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateAppAuthorizationInput
    appBundleIdentifier: string
    appAuthorizationIdentifier: string
    credential: Credential
    tenant: Tenant
end

local record UpdateAppAuthorizationOutput
    appAuthorization: AppAuthorization
end

local record UpdateIngestionDestinationInput
    appBundleIdentifier: string
    ingestionIdentifier: string
    ingestionDestinationIdentifier: string
    destinationConfiguration: DestinationConfiguration
end

local record UpdateIngestionDestinationOutput
    ingestionDestination: IngestionDestination
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local type IngestionType = "auditLog"

local type AuthType = "oauth2" | "apiKey"

local record M
    BatchGetUserAccessTasksInput: BatchGetUserAccessTasksInput
    BatchGetUserAccessTasksOutput: BatchGetUserAccessTasksOutput
    ConnectAppAuthorizationInput: ConnectAppAuthorizationInput
    ConnectAppAuthorizationOutput: ConnectAppAuthorizationOutput
    CreateAppAuthorizationInput: CreateAppAuthorizationInput
    CreateAppAuthorizationOutput: CreateAppAuthorizationOutput
    CreateAppBundleInput: CreateAppBundleInput
    CreateAppBundleOutput: CreateAppBundleOutput
    CreateIngestionInput: CreateIngestionInput
    CreateIngestionOutput: CreateIngestionOutput
    CreateIngestionDestinationInput: CreateIngestionDestinationInput
    CreateIngestionDestinationOutput: CreateIngestionDestinationOutput
    DeleteAppAuthorizationInput: DeleteAppAuthorizationInput
    DeleteAppAuthorizationOutput: DeleteAppAuthorizationOutput
    DeleteAppBundleInput: DeleteAppBundleInput
    DeleteAppBundleOutput: DeleteAppBundleOutput
    DeleteIngestionInput: DeleteIngestionInput
    DeleteIngestionOutput: DeleteIngestionOutput
    DeleteIngestionDestinationInput: DeleteIngestionDestinationInput
    DeleteIngestionDestinationOutput: DeleteIngestionDestinationOutput
    GetAppAuthorizationInput: GetAppAuthorizationInput
    GetAppAuthorizationOutput: GetAppAuthorizationOutput
    GetAppBundleInput: GetAppBundleInput
    GetAppBundleOutput: GetAppBundleOutput
    GetIngestionInput: GetIngestionInput
    GetIngestionOutput: GetIngestionOutput
    GetIngestionDestinationInput: GetIngestionDestinationInput
    GetIngestionDestinationOutput: GetIngestionDestinationOutput
    ListAppAuthorizationsInput: ListAppAuthorizationsInput
    ListAppAuthorizationsOutput: ListAppAuthorizationsOutput
    ListAppBundlesInput: ListAppBundlesInput
    ListAppBundlesOutput: ListAppBundlesOutput
    ListIngestionDestinationsInput: ListIngestionDestinationsInput
    ListIngestionDestinationsOutput: ListIngestionDestinationsOutput
    ListIngestionsInput: ListIngestionsInput
    ListIngestionsOutput: ListIngestionsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    StartIngestionInput: StartIngestionInput
    StartIngestionOutput: StartIngestionOutput
    StartUserAccessTasksInput: StartUserAccessTasksInput
    StartUserAccessTasksOutput: StartUserAccessTasksOutput
    StopIngestionInput: StopIngestionInput
    StopIngestionOutput: StopIngestionOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAppAuthorizationInput: UpdateAppAuthorizationInput
    UpdateAppAuthorizationOutput: UpdateAppAuthorizationOutput
    UpdateIngestionDestinationInput: UpdateIngestionDestinationInput
    UpdateIngestionDestinationOutput: UpdateIngestionDestinationOutput
end

return M
