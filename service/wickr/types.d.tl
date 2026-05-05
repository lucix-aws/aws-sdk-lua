local record BatchCreateUserInput
    networkId: string
    users: {BatchCreateUserRequestItem}
    clientToken: string
end

local record BatchCreateUserOutput
    message: string
    successful: {User}
    failed: {BatchUserErrorResponseItem}
end

local record BatchDeleteUserInput
    networkId: string
    userIds: {string}
    clientToken: string
end

local record BatchDeleteUserOutput
    message: string
    successful: {BatchUserSuccessResponseItem}
    failed: {BatchUserErrorResponseItem}
end

local record BatchLookupUserUnameInput
    networkId: string
    unames: {string}
    clientToken: string
end

local record BatchLookupUserUnameOutput
    message: string
    successful: {BatchUnameSuccessResponseItem}
    failed: {BatchUnameErrorResponseItem}
end

local record BatchReinviteUserInput
    networkId: string
    userIds: {string}
    clientToken: string
end

local record BatchReinviteUserOutput
    message: string
    successful: {BatchUserSuccessResponseItem}
    failed: {BatchUserErrorResponseItem}
end

local record BatchResetDevicesForUserInput
    networkId: string
    userId: string
    appIds: {string}
    clientToken: string
end

local record BatchResetDevicesForUserOutput
    message: string
    successful: {BatchDeviceSuccessResponseItem}
    failed: {BatchDeviceErrorResponseItem}
end

local record BatchToggleUserSuspendStatusInput
    networkId: string
    suspend: boolean
    userIds: {string}
    clientToken: string
end

local record BatchToggleUserSuspendStatusOutput
    message: string
    successful: {BatchUserSuccessResponseItem}
    failed: {BatchUserErrorResponseItem}
end

local record CreateBotInput
    networkId: string
    username: string
    displayName: string
    groupId: string
    challenge: string
end

local record CreateBotOutput
    message: string
    botId: string
    networkId: string
    username: string
    displayName: string
    groupId: string
end

local record CreateDataRetentionBotInput
    networkId: string
end

local record CreateDataRetentionBotOutput
    message: string
end

local record CreateDataRetentionBotChallengeInput
    networkId: string
end

local record CreateDataRetentionBotChallengeOutput
    challenge: string
end

local record CreateNetworkInput
    networkName: string
    accessLevel: string
    enablePremiumFreeTrial: boolean
    encryptionKeyArn: string
end

local record CreateNetworkOutput
    networkId: string
    networkName: string
    encryptionKeyArn: string
end

local record CreateSecurityGroupInput
    networkId: string
    name: string
    securityGroupSettings: SecurityGroupSettingsRequest
    clientToken: string
end

local record CreateSecurityGroupOutput
    securityGroup: SecurityGroup
end

local record DeleteBotInput
    networkId: string
    botId: string
end

local record DeleteBotOutput
    message: string
end

local record DeleteDataRetentionBotInput
    networkId: string
end

local record DeleteDataRetentionBotOutput
    message: string
end

local record DeleteNetworkInput
    networkId: string
    clientToken: string
end

local record DeleteNetworkOutput
    message: string
end

local record DeleteSecurityGroupInput
    networkId: string
    groupId: string
end

local record DeleteSecurityGroupOutput
    message: string
    networkId: string
    groupId: string
end

local record GetBotInput
    networkId: string
    botId: string
end

local record GetBotOutput
    botId: string
    displayName: string
    username: string
    uname: string
    pubkey: string
    status: number
    groupId: string
    hasChallenge: boolean
    suspended: boolean
    lastLogin: string
end

local record GetBotsCountInput
    networkId: string
end

local record GetBotsCountOutput
    pending: number
    active: number
    total: number
end

local record GetDataRetentionBotInput
    networkId: string
end

local record GetDataRetentionBotOutput
    botName: string
    botExists: boolean
    isBotActive: boolean
    isDataRetentionBotRegistered: boolean
    isDataRetentionServiceEnabled: boolean
    isPubkeyMsgAcked: boolean
end

local record GetGuestUserHistoryCountInput
    networkId: string
end

local record GetGuestUserHistoryCountOutput
    history: {GuestUserHistoryCount}
end

local record GetNetworkInput
    networkId: string
end

local record GetNetworkOutput
    networkId: string
    networkName: string
    accessLevel: string
    awsAccountId: string
    networkArn: string
    standing: number
    freeTrialExpiration: string
    migrationState: number
    encryptionKeyArn: string
end

local record GetNetworkSettingsInput
    networkId: string
end

local record GetNetworkSettingsOutput
    settings: {Setting}
end

local record GetOidcInfoInput
    networkId: string
    clientId: string
    code: string
    grantType: string
    redirectUri: string
    url: string
    clientSecret: string
    codeVerifier: string
    certificate: string
end

local record GetOidcInfoOutput
    openidConnectInfo: OidcConfigInfo
    tokenInfo: OidcTokenInfo
end

local record GetOpentdfConfigInput
    networkId: string
end

local record GetOpentdfConfigOutput
    clientId: string
    domain: string
    clientSecret: string
    provider: string
end

local record GetSecurityGroupInput
    networkId: string
    groupId: string
end

local record GetSecurityGroupOutput
    securityGroup: SecurityGroup
end

local record GetUserInput
    networkId: string
    userId: string
    startTime: number
    endTime: number
end

local record GetUserOutput
    userId: string
    firstName: string
    lastName: string
    username: string
    isAdmin: boolean
    suspended: boolean
    status: number
    lastActivity: number
    lastLogin: number
    securityGroupIds: {string}
end

local record GetUsersCountInput
    networkId: string
end

local record GetUsersCountOutput
    pending: number
    active: number
    rejected: number
    remaining: number
    total: number
end

local record ListBlockedGuestUsersInput
    networkId: string
    maxResults: number
    sortDirection: string
    sortFields: string
    username: string
    admin: string
    nextToken: string
end

local record ListBlockedGuestUsersOutput
    nextToken: string
    blocklist: {BlockedGuestUser}
end

local record ListBotsInput
    networkId: string
    nextToken: string
    maxResults: number
    sortFields: string
    sortDirection: string
    displayName: string
    username: string
    status: number
    groupId: string
end

local record ListBotsOutput
    bots: {Bot}
    nextToken: string
end

local record ListDevicesForUserInput
    networkId: string
    userId: string
    nextToken: string
    maxResults: number
    sortFields: string
    sortDirection: string
end

local record ListDevicesForUserOutput
    nextToken: string
    devices: {BasicDeviceObject}
end

local record ListGuestUsersInput
    networkId: string
    maxResults: number
    sortDirection: string
    sortFields: string
    username: string
    billingPeriod: string
    nextToken: string
end

local record ListGuestUsersOutput
    nextToken: string
    guestlist: {GuestUser}
end

local record ListNetworksInput
    maxResults: number
    sortFields: string
    sortDirection: string
    nextToken: string
end

local record ListNetworksOutput
    networks: {Network}
    nextToken: string
end

local record ListSecurityGroupsInput
    networkId: string
    nextToken: string
    maxResults: number
    sortFields: string
    sortDirection: string
end

local record ListSecurityGroupsOutput
    securityGroups: {SecurityGroup}
    nextToken: string
end

local record ListSecurityGroupUsersInput
    networkId: string
    groupId: string
    nextToken: string
    maxResults: number
    sortFields: string
    sortDirection: string
end

local record ListSecurityGroupUsersOutput
    users: {User}
    nextToken: string
end

local record ListUsersInput
    networkId: string
    nextToken: string
    maxResults: number
    sortFields: string
    sortDirection: string
    firstName: string
    lastName: string
    username: string
    status: number
    groupId: string
end

local record ListUsersOutput
    nextToken: string
    users: {User}
end

local record RegisterOidcConfigInput
    networkId: string
    companyId: string
    customUsername: string
    extraAuthParams: string
    issuer: string
    scopes: string
    secret: string
    ssoTokenBufferMinutes: number
    userId: string
end

local record RegisterOidcConfigOutput
    applicationName: string
    clientId: string
    companyId: string
    scopes: string
    issuer: string
    clientSecret: string
    secret: string
    redirectUrl: string
    userId: string
    customUsername: string
    caCertificate: string
    applicationId: number
    ssoTokenBufferMinutes: number
    extraAuthParams: string
end

local record RegisterOidcConfigTestInput
    networkId: string
    extraAuthParams: string
    issuer: string
    scopes: string
    certificate: string
end

local record RegisterOidcConfigTestOutput
    tokenEndpoint: string
    userinfoEndpoint: string
    responseTypesSupported: {string}
    scopesSupported: {string}
    issuer: string
    authorizationEndpoint: string
    endSessionEndpoint: string
    logoutEndpoint: string
    grantTypesSupported: {string}
    revocationEndpoint: string
    tokenEndpointAuthMethodsSupported: {string}
    microsoftMultiRefreshToken: boolean
end

local record RegisterOpentdfConfigInput
    networkId: string
    clientId: string
    clientSecret: string
    domain: string
    provider: string
    dryRun: boolean
end

local record RegisterOpentdfConfigOutput
    clientId: string
    domain: string
    clientSecret: string
    provider: string
end

local record UpdateBotInput
    networkId: string
    botId: string
    displayName: string
    groupId: string
    challenge: string
    suspend: boolean
end

local record UpdateBotOutput
    message: string
end

local record UpdateDataRetentionInput
    networkId: string
    actionType: string
end

local record UpdateDataRetentionOutput
    message: string
end

local record UpdateGuestUserInput
    networkId: string
    usernameHash: string
    block: boolean
end

local record UpdateGuestUserOutput
    message: string
end

local record UpdateNetworkInput
    networkId: string
    networkName: string
    clientToken: string
    encryptionKeyArn: string
end

local record UpdateNetworkOutput
    message: string
end

local record UpdateNetworkSettingsInput
    networkId: string
    settings: NetworkSettings
end

local record UpdateNetworkSettingsOutput
    settings: {Setting}
end

local record UpdateSecurityGroupInput
    networkId: string
    groupId: string
    name: string
    securityGroupSettings: SecurityGroupSettings
end

local record UpdateSecurityGroupOutput
    securityGroup: SecurityGroup
end

local record UpdateUserInput
    networkId: string
    userId: string
    userDetails: UpdateUserDetails
end

local record UpdateUserOutput
    userId: string
    networkId: string
    securityGroupIds: {string}
    firstName: string
    lastName: string
    middleName: string
    suspended: boolean
    modified: number
    status: number
    inviteCode: string
    inviteExpiration: number
    codeValidation: boolean
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local record BadRequestError
    message: string
end

local record ForbiddenError
    message: string
end

local record InternalServerError
    message: string
end

local record RateLimitError
    message: string
end

local record ResourceNotFoundError
    message: string
end

local record UnauthorizedError
    message: string
end

local record ValidationError
    reasons: {ErrorDetail}
    message: string
end

local type SortDirection = "ASC" | "DESC"

local type AccessLevel = "STANDARD" | "PREMIUM"

local type DataRetentionActionType = "ENABLE" | "DISABLE" | "PUBKEY_MSG_ACK"

local type UserStatus = 1 | 2

local type BotStatus = 1 | 2

local record M
    BatchCreateUserInput: BatchCreateUserInput
    BatchCreateUserOutput: BatchCreateUserOutput
    BatchDeleteUserInput: BatchDeleteUserInput
    BatchDeleteUserOutput: BatchDeleteUserOutput
    BatchLookupUserUnameInput: BatchLookupUserUnameInput
    BatchLookupUserUnameOutput: BatchLookupUserUnameOutput
    BatchReinviteUserInput: BatchReinviteUserInput
    BatchReinviteUserOutput: BatchReinviteUserOutput
    BatchResetDevicesForUserInput: BatchResetDevicesForUserInput
    BatchResetDevicesForUserOutput: BatchResetDevicesForUserOutput
    BatchToggleUserSuspendStatusInput: BatchToggleUserSuspendStatusInput
    BatchToggleUserSuspendStatusOutput: BatchToggleUserSuspendStatusOutput
    CreateBotInput: CreateBotInput
    CreateBotOutput: CreateBotOutput
    CreateDataRetentionBotInput: CreateDataRetentionBotInput
    CreateDataRetentionBotOutput: CreateDataRetentionBotOutput
    CreateDataRetentionBotChallengeInput: CreateDataRetentionBotChallengeInput
    CreateDataRetentionBotChallengeOutput: CreateDataRetentionBotChallengeOutput
    CreateNetworkInput: CreateNetworkInput
    CreateNetworkOutput: CreateNetworkOutput
    CreateSecurityGroupInput: CreateSecurityGroupInput
    CreateSecurityGroupOutput: CreateSecurityGroupOutput
    DeleteBotInput: DeleteBotInput
    DeleteBotOutput: DeleteBotOutput
    DeleteDataRetentionBotInput: DeleteDataRetentionBotInput
    DeleteDataRetentionBotOutput: DeleteDataRetentionBotOutput
    DeleteNetworkInput: DeleteNetworkInput
    DeleteNetworkOutput: DeleteNetworkOutput
    DeleteSecurityGroupInput: DeleteSecurityGroupInput
    DeleteSecurityGroupOutput: DeleteSecurityGroupOutput
    GetBotInput: GetBotInput
    GetBotOutput: GetBotOutput
    GetBotsCountInput: GetBotsCountInput
    GetBotsCountOutput: GetBotsCountOutput
    GetDataRetentionBotInput: GetDataRetentionBotInput
    GetDataRetentionBotOutput: GetDataRetentionBotOutput
    GetGuestUserHistoryCountInput: GetGuestUserHistoryCountInput
    GetGuestUserHistoryCountOutput: GetGuestUserHistoryCountOutput
    GetNetworkInput: GetNetworkInput
    GetNetworkOutput: GetNetworkOutput
    GetNetworkSettingsInput: GetNetworkSettingsInput
    GetNetworkSettingsOutput: GetNetworkSettingsOutput
    GetOidcInfoInput: GetOidcInfoInput
    GetOidcInfoOutput: GetOidcInfoOutput
    GetOpentdfConfigInput: GetOpentdfConfigInput
    GetOpentdfConfigOutput: GetOpentdfConfigOutput
    GetSecurityGroupInput: GetSecurityGroupInput
    GetSecurityGroupOutput: GetSecurityGroupOutput
    GetUserInput: GetUserInput
    GetUserOutput: GetUserOutput
    GetUsersCountInput: GetUsersCountInput
    GetUsersCountOutput: GetUsersCountOutput
    ListBlockedGuestUsersInput: ListBlockedGuestUsersInput
    ListBlockedGuestUsersOutput: ListBlockedGuestUsersOutput
    ListBotsInput: ListBotsInput
    ListBotsOutput: ListBotsOutput
    ListDevicesForUserInput: ListDevicesForUserInput
    ListDevicesForUserOutput: ListDevicesForUserOutput
    ListGuestUsersInput: ListGuestUsersInput
    ListGuestUsersOutput: ListGuestUsersOutput
    ListNetworksInput: ListNetworksInput
    ListNetworksOutput: ListNetworksOutput
    ListSecurityGroupsInput: ListSecurityGroupsInput
    ListSecurityGroupsOutput: ListSecurityGroupsOutput
    ListSecurityGroupUsersInput: ListSecurityGroupUsersInput
    ListSecurityGroupUsersOutput: ListSecurityGroupUsersOutput
    ListUsersInput: ListUsersInput
    ListUsersOutput: ListUsersOutput
    RegisterOidcConfigInput: RegisterOidcConfigInput
    RegisterOidcConfigOutput: RegisterOidcConfigOutput
    RegisterOidcConfigTestInput: RegisterOidcConfigTestInput
    RegisterOidcConfigTestOutput: RegisterOidcConfigTestOutput
    RegisterOpentdfConfigInput: RegisterOpentdfConfigInput
    RegisterOpentdfConfigOutput: RegisterOpentdfConfigOutput
    UpdateBotInput: UpdateBotInput
    UpdateBotOutput: UpdateBotOutput
    UpdateDataRetentionInput: UpdateDataRetentionInput
    UpdateDataRetentionOutput: UpdateDataRetentionOutput
    UpdateGuestUserInput: UpdateGuestUserInput
    UpdateGuestUserOutput: UpdateGuestUserOutput
    UpdateNetworkInput: UpdateNetworkInput
    UpdateNetworkOutput: UpdateNetworkOutput
    UpdateNetworkSettingsInput: UpdateNetworkSettingsInput
    UpdateNetworkSettingsOutput: UpdateNetworkSettingsOutput
    UpdateSecurityGroupInput: UpdateSecurityGroupInput
    UpdateSecurityGroupOutput: UpdateSecurityGroupOutput
    UpdateUserInput: UpdateUserInput
    UpdateUserOutput: UpdateUserOutput
end

return M
