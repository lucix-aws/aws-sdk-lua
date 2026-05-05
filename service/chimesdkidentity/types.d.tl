local record CreateAppInstanceInput
    Name: string
    Metadata: string
    ClientRequestToken: string
    Tags: {Tag}
end

local record CreateAppInstanceOutput
    AppInstanceArn: string
end

local record CreateAppInstanceAdminInput
    AppInstanceAdminArn: string
    AppInstanceArn: string
end

local record CreateAppInstanceAdminOutput
    AppInstanceAdmin: Identity
    AppInstanceArn: string
end

local record CreateAppInstanceBotInput
    AppInstanceArn: string
    Name: string
    Metadata: string
    ClientRequestToken: string
    Tags: {Tag}
    Configuration: Configuration
end

local record CreateAppInstanceBotOutput
    AppInstanceBotArn: string
end

local record CreateAppInstanceUserInput
    AppInstanceArn: string
    AppInstanceUserId: string
    Name: string
    Metadata: string
    ClientRequestToken: string
    Tags: {Tag}
    ExpirationSettings: ExpirationSettings
end

local record CreateAppInstanceUserOutput
    AppInstanceUserArn: string
end

local record DeleteAppInstanceInput
    AppInstanceArn: string
end

local record DeleteAppInstanceOutput
end

local record DeleteAppInstanceAdminInput
    AppInstanceAdminArn: string
    AppInstanceArn: string
end

local record DeleteAppInstanceAdminOutput
end

local record DeleteAppInstanceBotInput
    AppInstanceBotArn: string
end

local record DeleteAppInstanceBotOutput
end

local record DeleteAppInstanceUserInput
    AppInstanceUserArn: string
end

local record DeleteAppInstanceUserOutput
end

local record DeregisterAppInstanceUserEndpointInput
    AppInstanceUserArn: string
    EndpointId: string
end

local record DeregisterAppInstanceUserEndpointOutput
end

local record DescribeAppInstanceInput
    AppInstanceArn: string
end

local record DescribeAppInstanceOutput
    AppInstance: AppInstance
end

local record DescribeAppInstanceAdminInput
    AppInstanceAdminArn: string
    AppInstanceArn: string
end

local record DescribeAppInstanceAdminOutput
    AppInstanceAdmin: AppInstanceAdmin
end

local record DescribeAppInstanceBotInput
    AppInstanceBotArn: string
end

local record DescribeAppInstanceBotOutput
    AppInstanceBot: AppInstanceBot
end

local record DescribeAppInstanceUserInput
    AppInstanceUserArn: string
end

local record DescribeAppInstanceUserOutput
    AppInstanceUser: AppInstanceUser
end

local record DescribeAppInstanceUserEndpointInput
    AppInstanceUserArn: string
    EndpointId: string
end

local record DescribeAppInstanceUserEndpointOutput
    AppInstanceUserEndpoint: AppInstanceUserEndpoint
end

local record GetAppInstanceRetentionSettingsInput
    AppInstanceArn: string
end

local record GetAppInstanceRetentionSettingsOutput
    AppInstanceRetentionSettings: AppInstanceRetentionSettings
    InitiateDeletionTimestamp: number
end

local record ListAppInstanceAdminsInput
    AppInstanceArn: string
    MaxResults: number
    NextToken: string
end

local record ListAppInstanceAdminsOutput
    AppInstanceArn: string
    AppInstanceAdmins: {AppInstanceAdminSummary}
    NextToken: string
end

local record ListAppInstanceBotsInput
    AppInstanceArn: string
    MaxResults: number
    NextToken: string
end

local record ListAppInstanceBotsOutput
    AppInstanceArn: string
    AppInstanceBots: {AppInstanceBotSummary}
    NextToken: string
end

local record ListAppInstancesInput
    MaxResults: number
    NextToken: string
end

local record ListAppInstancesOutput
    AppInstances: {AppInstanceSummary}
    NextToken: string
end

local record ListAppInstanceUserEndpointsInput
    AppInstanceUserArn: string
    MaxResults: number
    NextToken: string
end

local record ListAppInstanceUserEndpointsOutput
    AppInstanceUserEndpoints: {AppInstanceUserEndpointSummary}
    NextToken: string
end

local record ListAppInstanceUsersInput
    AppInstanceArn: string
    MaxResults: number
    NextToken: string
end

local record ListAppInstanceUsersOutput
    AppInstanceArn: string
    AppInstanceUsers: {AppInstanceUserSummary}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceARN: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record PutAppInstanceRetentionSettingsInput
    AppInstanceArn: string
    AppInstanceRetentionSettings: AppInstanceRetentionSettings
end

local record PutAppInstanceRetentionSettingsOutput
    AppInstanceRetentionSettings: AppInstanceRetentionSettings
    InitiateDeletionTimestamp: number
end

local record PutAppInstanceUserExpirationSettingsInput
    AppInstanceUserArn: string
    ExpirationSettings: ExpirationSettings
end

local record PutAppInstanceUserExpirationSettingsOutput
    AppInstanceUserArn: string
    ExpirationSettings: ExpirationSettings
end

local record RegisterAppInstanceUserEndpointInput
    AppInstanceUserArn: string
    Name: string
    Type: string
    ResourceArn: string
    EndpointAttributes: EndpointAttributes
    ClientRequestToken: string
    AllowMessages: string
end

local record RegisterAppInstanceUserEndpointOutput
    AppInstanceUserArn: string
    EndpointId: string
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

local record UpdateAppInstanceInput
    AppInstanceArn: string
    Name: string
    Metadata: string
end

local record UpdateAppInstanceOutput
    AppInstanceArn: string
end

local record UpdateAppInstanceBotInput
    AppInstanceBotArn: string
    Name: string
    Metadata: string
    Configuration: Configuration
end

local record UpdateAppInstanceBotOutput
    AppInstanceBotArn: string
end

local record UpdateAppInstanceUserInput
    AppInstanceUserArn: string
    Name: string
    Metadata: string
end

local record UpdateAppInstanceUserOutput
    AppInstanceUserArn: string
end

local record UpdateAppInstanceUserEndpointInput
    AppInstanceUserArn: string
    EndpointId: string
    Name: string
    AllowMessages: string
end

local record UpdateAppInstanceUserEndpointOutput
    AppInstanceUserArn: string
    EndpointId: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local type AppInstanceUserEndpointType = "APNS" | "APNS_SANDBOX" | "GCM"

local type AllowMessages = "ALL" | "NONE"

local record M
    CreateAppInstanceInput: CreateAppInstanceInput
    CreateAppInstanceOutput: CreateAppInstanceOutput
    CreateAppInstanceAdminInput: CreateAppInstanceAdminInput
    CreateAppInstanceAdminOutput: CreateAppInstanceAdminOutput
    CreateAppInstanceBotInput: CreateAppInstanceBotInput
    CreateAppInstanceBotOutput: CreateAppInstanceBotOutput
    CreateAppInstanceUserInput: CreateAppInstanceUserInput
    CreateAppInstanceUserOutput: CreateAppInstanceUserOutput
    DeleteAppInstanceInput: DeleteAppInstanceInput
    DeleteAppInstanceOutput: DeleteAppInstanceOutput
    DeleteAppInstanceAdminInput: DeleteAppInstanceAdminInput
    DeleteAppInstanceAdminOutput: DeleteAppInstanceAdminOutput
    DeleteAppInstanceBotInput: DeleteAppInstanceBotInput
    DeleteAppInstanceBotOutput: DeleteAppInstanceBotOutput
    DeleteAppInstanceUserInput: DeleteAppInstanceUserInput
    DeleteAppInstanceUserOutput: DeleteAppInstanceUserOutput
    DeregisterAppInstanceUserEndpointInput: DeregisterAppInstanceUserEndpointInput
    DeregisterAppInstanceUserEndpointOutput: DeregisterAppInstanceUserEndpointOutput
    DescribeAppInstanceInput: DescribeAppInstanceInput
    DescribeAppInstanceOutput: DescribeAppInstanceOutput
    DescribeAppInstanceAdminInput: DescribeAppInstanceAdminInput
    DescribeAppInstanceAdminOutput: DescribeAppInstanceAdminOutput
    DescribeAppInstanceBotInput: DescribeAppInstanceBotInput
    DescribeAppInstanceBotOutput: DescribeAppInstanceBotOutput
    DescribeAppInstanceUserInput: DescribeAppInstanceUserInput
    DescribeAppInstanceUserOutput: DescribeAppInstanceUserOutput
    DescribeAppInstanceUserEndpointInput: DescribeAppInstanceUserEndpointInput
    DescribeAppInstanceUserEndpointOutput: DescribeAppInstanceUserEndpointOutput
    GetAppInstanceRetentionSettingsInput: GetAppInstanceRetentionSettingsInput
    GetAppInstanceRetentionSettingsOutput: GetAppInstanceRetentionSettingsOutput
    ListAppInstanceAdminsInput: ListAppInstanceAdminsInput
    ListAppInstanceAdminsOutput: ListAppInstanceAdminsOutput
    ListAppInstanceBotsInput: ListAppInstanceBotsInput
    ListAppInstanceBotsOutput: ListAppInstanceBotsOutput
    ListAppInstancesInput: ListAppInstancesInput
    ListAppInstancesOutput: ListAppInstancesOutput
    ListAppInstanceUserEndpointsInput: ListAppInstanceUserEndpointsInput
    ListAppInstanceUserEndpointsOutput: ListAppInstanceUserEndpointsOutput
    ListAppInstanceUsersInput: ListAppInstanceUsersInput
    ListAppInstanceUsersOutput: ListAppInstanceUsersOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutAppInstanceRetentionSettingsInput: PutAppInstanceRetentionSettingsInput
    PutAppInstanceRetentionSettingsOutput: PutAppInstanceRetentionSettingsOutput
    PutAppInstanceUserExpirationSettingsInput: PutAppInstanceUserExpirationSettingsInput
    PutAppInstanceUserExpirationSettingsOutput: PutAppInstanceUserExpirationSettingsOutput
    RegisterAppInstanceUserEndpointInput: RegisterAppInstanceUserEndpointInput
    RegisterAppInstanceUserEndpointOutput: RegisterAppInstanceUserEndpointOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAppInstanceInput: UpdateAppInstanceInput
    UpdateAppInstanceOutput: UpdateAppInstanceOutput
    UpdateAppInstanceBotInput: UpdateAppInstanceBotInput
    UpdateAppInstanceBotOutput: UpdateAppInstanceBotOutput
    UpdateAppInstanceUserInput: UpdateAppInstanceUserInput
    UpdateAppInstanceUserOutput: UpdateAppInstanceUserOutput
    UpdateAppInstanceUserEndpointInput: UpdateAppInstanceUserEndpointInput
    UpdateAppInstanceUserEndpointOutput: UpdateAppInstanceUserEndpointOutput
end

return M
