local record CreateComponentInput
    appId: string
    environmentName: string
    clientToken: string
    componentToCreate: CreateComponentData
end

local record CreateComponentOutput
    entity: Component
end

local record CreateFormInput
    appId: string
    environmentName: string
    clientToken: string
    formToCreate: CreateFormData
end

local record CreateFormOutput
    entity: Form
end

local record CreateThemeInput
    appId: string
    environmentName: string
    clientToken: string
    themeToCreate: CreateThemeData
end

local record CreateThemeOutput
    entity: Theme
end

local record DeleteComponentInput
    appId: string
    environmentName: string
    id: string
end

local record DeleteComponentOutput
end

local record DeleteFormInput
    appId: string
    environmentName: string
    id: string
end

local record DeleteFormOutput
end

local record DeleteThemeInput
    appId: string
    environmentName: string
    id: string
end

local record DeleteThemeOutput
end

local record ExchangeCodeForTokenInput
    provider: string
    request: ExchangeCodeForTokenRequestBody
end

local record ExchangeCodeForTokenOutput
    accessToken: string
    expiresIn: number
    refreshToken: string
end

local record ExportComponentsInput
    appId: string
    environmentName: string
    nextToken: string
end

local record ExportComponentsOutput
    entities: {Component}
    nextToken: string
end

local record ExportFormsInput
    appId: string
    environmentName: string
    nextToken: string
end

local record ExportFormsOutput
    entities: {Form}
    nextToken: string
end

local record ExportThemesInput
    appId: string
    environmentName: string
    nextToken: string
end

local record ExportThemesOutput
    entities: {Theme}
    nextToken: string
end

local record GetCodegenJobInput
    appId: string
    environmentName: string
    id: string
end

local record GetCodegenJobOutput
    job: CodegenJob
end

local record GetComponentInput
    appId: string
    environmentName: string
    id: string
end

local record GetComponentOutput
    component: Component
end

local record GetFormInput
    appId: string
    environmentName: string
    id: string
end

local record GetFormOutput
    form: Form
end

local record GetMetadataInput
    appId: string
    environmentName: string
end

local record GetMetadataOutput
    features: {string : string}
end

local record GetThemeInput
    appId: string
    environmentName: string
    id: string
end

local record GetThemeOutput
    theme: Theme
end

local record ListCodegenJobsInput
    appId: string
    environmentName: string
    nextToken: string
    maxResults: number
end

local record ListCodegenJobsOutput
    entities: {CodegenJobSummary}
    nextToken: string
end

local record ListComponentsInput
    appId: string
    environmentName: string
    nextToken: string
    maxResults: number
end

local record ListComponentsOutput
    entities: {ComponentSummary}
    nextToken: string
end

local record ListFormsInput
    appId: string
    environmentName: string
    nextToken: string
    maxResults: number
end

local record ListFormsOutput
    entities: {FormSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record ListThemesInput
    appId: string
    environmentName: string
    nextToken: string
    maxResults: number
end

local record ListThemesOutput
    entities: {ThemeSummary}
    nextToken: string
end

local record PutMetadataFlagInput
    appId: string
    environmentName: string
    featureName: string
    body: PutMetadataFlagBody
end

local record PutMetadataFlagOutput
end

local record RefreshTokenInput
    provider: string
    refreshTokenBody: RefreshTokenRequestBody
end

local record RefreshTokenOutput
    accessToken: string
    expiresIn: number
end

local record StartCodegenJobInput
    appId: string
    environmentName: string
    clientToken: string
    codegenJobToCreate: StartCodegenJobData
end

local record StartCodegenJobOutput
    entity: CodegenJob
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

local record UpdateComponentInput
    appId: string
    environmentName: string
    id: string
    clientToken: string
    updatedComponent: UpdateComponentData
end

local record UpdateComponentOutput
    entity: Component
end

local record UpdateFormInput
    appId: string
    environmentName: string
    id: string
    clientToken: string
    updatedForm: UpdateFormData
end

local record UpdateFormOutput
    entity: Form
end

local record UpdateThemeInput
    appId: string
    environmentName: string
    id: string
    clientToken: string
    updatedTheme: UpdateThemeData
end

local record UpdateThemeOutput
    entity: Theme
end

local record InternalServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceConflictException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceConflictException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceConflictException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidParameterException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceConflictException
    message: string
end

local record M
    CreateComponentInput: CreateComponentInput
    CreateComponentOutput: CreateComponentOutput
    CreateFormInput: CreateFormInput
    CreateFormOutput: CreateFormOutput
    CreateThemeInput: CreateThemeInput
    CreateThemeOutput: CreateThemeOutput
    DeleteComponentInput: DeleteComponentInput
    DeleteComponentOutput: DeleteComponentOutput
    DeleteFormInput: DeleteFormInput
    DeleteFormOutput: DeleteFormOutput
    DeleteThemeInput: DeleteThemeInput
    DeleteThemeOutput: DeleteThemeOutput
    ExchangeCodeForTokenInput: ExchangeCodeForTokenInput
    ExchangeCodeForTokenOutput: ExchangeCodeForTokenOutput
    ExportComponentsInput: ExportComponentsInput
    ExportComponentsOutput: ExportComponentsOutput
    ExportFormsInput: ExportFormsInput
    ExportFormsOutput: ExportFormsOutput
    ExportThemesInput: ExportThemesInput
    ExportThemesOutput: ExportThemesOutput
    GetCodegenJobInput: GetCodegenJobInput
    GetCodegenJobOutput: GetCodegenJobOutput
    GetComponentInput: GetComponentInput
    GetComponentOutput: GetComponentOutput
    GetFormInput: GetFormInput
    GetFormOutput: GetFormOutput
    GetMetadataInput: GetMetadataInput
    GetMetadataOutput: GetMetadataOutput
    GetThemeInput: GetThemeInput
    GetThemeOutput: GetThemeOutput
    ListCodegenJobsInput: ListCodegenJobsInput
    ListCodegenJobsOutput: ListCodegenJobsOutput
    ListComponentsInput: ListComponentsInput
    ListComponentsOutput: ListComponentsOutput
    ListFormsInput: ListFormsInput
    ListFormsOutput: ListFormsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListThemesInput: ListThemesInput
    ListThemesOutput: ListThemesOutput
    PutMetadataFlagInput: PutMetadataFlagInput
    PutMetadataFlagOutput: PutMetadataFlagOutput
    RefreshTokenInput: RefreshTokenInput
    RefreshTokenOutput: RefreshTokenOutput
    StartCodegenJobInput: StartCodegenJobInput
    StartCodegenJobOutput: StartCodegenJobOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateComponentInput: UpdateComponentInput
    UpdateComponentOutput: UpdateComponentOutput
    UpdateFormInput: UpdateFormInput
    UpdateFormOutput: UpdateFormOutput
    UpdateThemeInput: UpdateThemeInput
    UpdateThemeOutput: UpdateThemeOutput
end

return M
