local record CreateTokenInput
    clientId: string
    clientSecret: string
    grantType: string
    deviceCode: string
    code: string
    refreshToken: string
    scope: {string}
    redirectUri: string
    codeVerifier: string
end

local record CreateTokenOutput
    accessToken: string
    tokenType: string
    expiresIn: number
    refreshToken: string
    idToken: string
end

local record CreateTokenWithIAMInput
    clientId: string
    grantType: string
    code: string
    refreshToken: string
    assertion: string
    scope: {string}
    redirectUri: string
    subjectToken: string
    subjectTokenType: string
    requestedTokenType: string
    codeVerifier: string
end

local record CreateTokenWithIAMOutput
    accessToken: string
    tokenType: string
    expiresIn: number
    refreshToken: string
    idToken: string
    issuedTokenType: string
    scope: {string}
    awsAdditionalDetails: AwsAdditionalDetails
end

local record RegisterClientInput
    clientName: string
    clientType: string
    scopes: {string}
    redirectUris: {string}
    grantTypes: {string}
    issuerUrl: string
    entitledApplicationArn: string
end

local record RegisterClientOutput
    clientId: string
    clientSecret: string
    clientIdIssuedAt: number
    clientSecretExpiresAt: number
    authorizationEndpoint: string
    tokenEndpoint: string
end

local record StartDeviceAuthorizationInput
    clientId: string
    clientSecret: string
    startUrl: string
end

local record StartDeviceAuthorizationOutput
    deviceCode: string
    userCode: string
    verificationUri: string
    verificationUriComplete: string
    expiresIn: number
    interval: number
end

local record AccessDeniedException
    error: string
    reason: string
    error_description: string
end

local record AuthorizationPendingException
    error: string
    error_description: string
end

local record ExpiredTokenException
    error: string
    error_description: string
end

local record InternalServerException
    error: string
    error_description: string
end

local record InvalidClientException
    error: string
    error_description: string
end

local record InvalidGrantException
    error: string
    error_description: string
end

local record InvalidRequestException
    error: string
    reason: string
    error_description: string
end

local record InvalidScopeException
    error: string
    error_description: string
end

local record SlowDownException
    error: string
    error_description: string
end

local record UnauthorizedClientException
    error: string
    error_description: string
end

local record UnsupportedGrantTypeException
    error: string
    error_description: string
end

local record AccessDeniedException
    error: string
    reason: string
    error_description: string
end

local record AuthorizationPendingException
    error: string
    error_description: string
end

local record ExpiredTokenException
    error: string
    error_description: string
end

local record InternalServerException
    error: string
    error_description: string
end

local record InvalidClientException
    error: string
    error_description: string
end

local record InvalidGrantException
    error: string
    error_description: string
end

local record InvalidRequestException
    error: string
    reason: string
    error_description: string
end

local record InvalidRequestRegionException
    error: string
    error_description: string
    endpoint: string
    region: string
end

local record InvalidScopeException
    error: string
    error_description: string
end

local record SlowDownException
    error: string
    error_description: string
end

local record UnauthorizedClientException
    error: string
    error_description: string
end

local record UnsupportedGrantTypeException
    error: string
    error_description: string
end

local record InternalServerException
    error: string
    error_description: string
end

local record InvalidClientMetadataException
    error: string
    error_description: string
end

local record InvalidRedirectUriException
    error: string
    error_description: string
end

local record InvalidRequestException
    error: string
    reason: string
    error_description: string
end

local record InvalidScopeException
    error: string
    error_description: string
end

local record SlowDownException
    error: string
    error_description: string
end

local record UnsupportedGrantTypeException
    error: string
    error_description: string
end

local record InternalServerException
    error: string
    error_description: string
end

local record InvalidClientException
    error: string
    error_description: string
end

local record InvalidRequestException
    error: string
    reason: string
    error_description: string
end

local record SlowDownException
    error: string
    error_description: string
end

local record UnauthorizedClientException
    error: string
    error_description: string
end

local record M
    CreateTokenInput: CreateTokenInput
    CreateTokenOutput: CreateTokenOutput
    CreateTokenWithIAMInput: CreateTokenWithIAMInput
    CreateTokenWithIAMOutput: CreateTokenWithIAMOutput
    RegisterClientInput: RegisterClientInput
    RegisterClientOutput: RegisterClientOutput
    StartDeviceAuthorizationInput: StartDeviceAuthorizationInput
    StartDeviceAuthorizationOutput: StartDeviceAuthorizationOutput
end

return M
