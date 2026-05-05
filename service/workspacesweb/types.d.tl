local record AssociateBrowserSettingsInput
    portalArn: string
    browserSettingsArn: string
end

local record AssociateBrowserSettingsOutput
    portalArn: string
    browserSettingsArn: string
end

local record AssociateDataProtectionSettingsInput
    portalArn: string
    dataProtectionSettingsArn: string
end

local record AssociateDataProtectionSettingsOutput
    portalArn: string
    dataProtectionSettingsArn: string
end

local record AssociateIpAccessSettingsInput
    portalArn: string
    ipAccessSettingsArn: string
end

local record AssociateIpAccessSettingsOutput
    portalArn: string
    ipAccessSettingsArn: string
end

local record AssociateNetworkSettingsInput
    portalArn: string
    networkSettingsArn: string
end

local record AssociateNetworkSettingsOutput
    portalArn: string
    networkSettingsArn: string
end

local record AssociateSessionLoggerInput
    portalArn: string
    sessionLoggerArn: string
end

local record AssociateSessionLoggerOutput
    portalArn: string
    sessionLoggerArn: string
end

local record AssociateTrustStoreInput
    portalArn: string
    trustStoreArn: string
end

local record AssociateTrustStoreOutput
    portalArn: string
    trustStoreArn: string
end

local record AssociateUserAccessLoggingSettingsInput
    portalArn: string
    userAccessLoggingSettingsArn: string
end

local record AssociateUserAccessLoggingSettingsOutput
    portalArn: string
    userAccessLoggingSettingsArn: string
end

local record AssociateUserSettingsInput
    portalArn: string
    userSettingsArn: string
end

local record AssociateUserSettingsOutput
    portalArn: string
    userSettingsArn: string
end

local record CreateBrowserSettingsInput
    tags: {Tag}
    customerManagedKey: string
    additionalEncryptionContext: {string : string}
    browserPolicy: string
    clientToken: string
    webContentFilteringPolicy: WebContentFilteringPolicy
end

local record CreateBrowserSettingsOutput
    browserSettingsArn: string
end

local record CreateDataProtectionSettingsInput
    displayName: string
    description: string
    tags: {Tag}
    customerManagedKey: string
    additionalEncryptionContext: {string : string}
    inlineRedactionConfiguration: InlineRedactionConfiguration
    clientToken: string
end

local record CreateDataProtectionSettingsOutput
    dataProtectionSettingsArn: string
end

local record CreateIdentityProviderInput
    portalArn: string
    identityProviderName: string
    identityProviderType: string
    identityProviderDetails: {string : string}
    clientToken: string
    tags: {Tag}
end

local record CreateIdentityProviderOutput
    identityProviderArn: string
end

local record CreateIpAccessSettingsInput
    displayName: string
    description: string
    tags: {Tag}
    customerManagedKey: string
    additionalEncryptionContext: {string : string}
    ipRules: {IpRule}
    clientToken: string
end

local record CreateIpAccessSettingsOutput
    ipAccessSettingsArn: string
end

local record CreateNetworkSettingsInput
    vpcId: string
    subnetIds: {string}
    securityGroupIds: {string}
    tags: {Tag}
    clientToken: string
end

local record CreateNetworkSettingsOutput
    networkSettingsArn: string
end

local record CreatePortalInput
    displayName: string
    tags: {Tag}
    customerManagedKey: string
    additionalEncryptionContext: {string : string}
    clientToken: string
    authenticationType: string
    instanceType: string
    maxConcurrentSessions: number
    portalCustomDomain: string
end

local record CreatePortalOutput
    portalArn: string
    portalEndpoint: string
end

local record CreateSessionLoggerInput
    eventFilter: EventFilter
    logConfiguration: LogConfiguration
    displayName: string
    customerManagedKey: string
    additionalEncryptionContext: {string : string}
    tags: {Tag}
    clientToken: string
end

local record CreateSessionLoggerOutput
    sessionLoggerArn: string
end

local record CreateTrustStoreInput
    certificateList: {string}
    tags: {Tag}
    clientToken: string
end

local record CreateTrustStoreOutput
    trustStoreArn: string
end

local record CreateUserAccessLoggingSettingsInput
    kinesisStreamArn: string
    tags: {Tag}
    clientToken: string
end

local record CreateUserAccessLoggingSettingsOutput
    userAccessLoggingSettingsArn: string
end

local record CreateUserSettingsInput
    copyAllowed: string
    pasteAllowed: string
    downloadAllowed: string
    uploadAllowed: string
    printAllowed: string
    tags: {Tag}
    disconnectTimeoutInMinutes: number
    idleDisconnectTimeoutInMinutes: number
    clientToken: string
    cookieSynchronizationConfiguration: CookieSynchronizationConfiguration
    customerManagedKey: string
    additionalEncryptionContext: {string : string}
    deepLinkAllowed: string
    toolbarConfiguration: ToolbarConfiguration
    brandingConfigurationInput: BrandingConfigurationCreateInput
    webAuthnAllowed: string
end

local record CreateUserSettingsOutput
    userSettingsArn: string
end

local record DeleteBrowserSettingsInput
    browserSettingsArn: string
end

local record DeleteBrowserSettingsOutput
end

local record DeleteDataProtectionSettingsInput
    dataProtectionSettingsArn: string
end

local record DeleteDataProtectionSettingsOutput
end

local record DeleteIdentityProviderInput
    identityProviderArn: string
end

local record DeleteIdentityProviderOutput
end

local record DeleteIpAccessSettingsInput
    ipAccessSettingsArn: string
end

local record DeleteIpAccessSettingsOutput
end

local record DeleteNetworkSettingsInput
    networkSettingsArn: string
end

local record DeleteNetworkSettingsOutput
end

local record DeletePortalInput
    portalArn: string
end

local record DeletePortalOutput
end

local record DeleteSessionLoggerInput
    sessionLoggerArn: string
end

local record DeleteSessionLoggerOutput
end

local record DeleteTrustStoreInput
    trustStoreArn: string
end

local record DeleteTrustStoreOutput
end

local record DeleteUserAccessLoggingSettingsInput
    userAccessLoggingSettingsArn: string
end

local record DeleteUserAccessLoggingSettingsOutput
end

local record DeleteUserSettingsInput
    userSettingsArn: string
end

local record DeleteUserSettingsOutput
end

local record DisassociateBrowserSettingsInput
    portalArn: string
end

local record DisassociateBrowserSettingsOutput
end

local record DisassociateDataProtectionSettingsInput
    portalArn: string
end

local record DisassociateDataProtectionSettingsOutput
end

local record DisassociateIpAccessSettingsInput
    portalArn: string
end

local record DisassociateIpAccessSettingsOutput
end

local record DisassociateNetworkSettingsInput
    portalArn: string
end

local record DisassociateNetworkSettingsOutput
end

local record DisassociateSessionLoggerInput
    portalArn: string
end

local record DisassociateSessionLoggerOutput
end

local record DisassociateTrustStoreInput
    portalArn: string
end

local record DisassociateTrustStoreOutput
end

local record DisassociateUserAccessLoggingSettingsInput
    portalArn: string
end

local record DisassociateUserAccessLoggingSettingsOutput
end

local record DisassociateUserSettingsInput
    portalArn: string
end

local record DisassociateUserSettingsOutput
end

local record ExpireSessionInput
    portalId: string
    sessionId: string
end

local record ExpireSessionOutput
end

local record GetBrowserSettingsInput
    browserSettingsArn: string
end

local record GetBrowserSettingsOutput
    browserSettings: BrowserSettings
end

local record GetDataProtectionSettingsInput
    dataProtectionSettingsArn: string
end

local record GetDataProtectionSettingsOutput
    dataProtectionSettings: DataProtectionSettings
end

local record GetIdentityProviderInput
    identityProviderArn: string
end

local record GetIdentityProviderOutput
    identityProvider: IdentityProvider
end

local record GetIpAccessSettingsInput
    ipAccessSettingsArn: string
end

local record GetIpAccessSettingsOutput
    ipAccessSettings: IpAccessSettings
end

local record GetNetworkSettingsInput
    networkSettingsArn: string
end

local record GetNetworkSettingsOutput
    networkSettings: NetworkSettings
end

local record GetPortalInput
    portalArn: string
end

local record GetPortalOutput
    portal: Portal
end

local record GetPortalServiceProviderMetadataInput
    portalArn: string
end

local record GetPortalServiceProviderMetadataOutput
    portalArn: string
    serviceProviderSamlMetadata: string
end

local record GetSessionInput
    portalId: string
    sessionId: string
end

local record GetSessionOutput
    session: Session
end

local record GetSessionLoggerInput
    sessionLoggerArn: string
end

local record GetSessionLoggerOutput
    sessionLogger: SessionLogger
end

local record GetTrustStoreInput
    trustStoreArn: string
end

local record GetTrustStoreOutput
    trustStore: TrustStore
end

local record GetTrustStoreCertificateInput
    trustStoreArn: string
    thumbprint: string
end

local record GetTrustStoreCertificateOutput
    trustStoreArn: string
    certificate: Certificate
end

local record GetUserAccessLoggingSettingsInput
    userAccessLoggingSettingsArn: string
end

local record GetUserAccessLoggingSettingsOutput
    userAccessLoggingSettings: UserAccessLoggingSettings
end

local record GetUserSettingsInput
    userSettingsArn: string
end

local record GetUserSettingsOutput
    userSettings: UserSettings
end

local record ListBrowserSettingsInput
    nextToken: string
    maxResults: number
end

local record ListBrowserSettingsOutput
    browserSettings: {BrowserSettingsSummary}
    nextToken: string
end

local record ListDataProtectionSettingsInput
    nextToken: string
    maxResults: number
end

local record ListDataProtectionSettingsOutput
    dataProtectionSettings: {DataProtectionSettingsSummary}
    nextToken: string
end

local record ListIdentityProvidersInput
    nextToken: string
    maxResults: number
    portalArn: string
end

local record ListIdentityProvidersOutput
    nextToken: string
    identityProviders: {IdentityProviderSummary}
end

local record ListIpAccessSettingsInput
    nextToken: string
    maxResults: number
end

local record ListIpAccessSettingsOutput
    ipAccessSettings: {IpAccessSettingsSummary}
    nextToken: string
end

local record ListNetworkSettingsInput
    nextToken: string
    maxResults: number
end

local record ListNetworkSettingsOutput
    networkSettings: {NetworkSettingsSummary}
    nextToken: string
end

local record ListPortalsInput
    nextToken: string
    maxResults: number
end

local record ListPortalsOutput
    portals: {PortalSummary}
    nextToken: string
end

local record ListSessionLoggersInput
    nextToken: string
    maxResults: number
end

local record ListSessionLoggersOutput
    sessionLoggers: {SessionLoggerSummary}
    nextToken: string
end

local record ListSessionsInput
    portalId: string
    username: string
    sessionId: string
    sortBy: string
    status: string
    maxResults: number
    nextToken: string
end

local record ListSessionsOutput
    sessions: {SessionSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {Tag}
end

local record ListTrustStoreCertificatesInput
    trustStoreArn: string
    nextToken: string
    maxResults: number
end

local record ListTrustStoreCertificatesOutput
    certificateList: {CertificateSummary}
    trustStoreArn: string
    nextToken: string
end

local record ListTrustStoresInput
    nextToken: string
    maxResults: number
end

local record ListTrustStoresOutput
    trustStores: {TrustStoreSummary}
    nextToken: string
end

local record ListUserAccessLoggingSettingsInput
    nextToken: string
    maxResults: number
end

local record ListUserAccessLoggingSettingsOutput
    userAccessLoggingSettings: {UserAccessLoggingSettingsSummary}
    nextToken: string
end

local record ListUserSettingsInput
    nextToken: string
    maxResults: number
end

local record ListUserSettingsOutput
    userSettings: {UserSettingsSummary}
    nextToken: string
end

local record TagResourceInput
    resourceArn: string
    tags: {Tag}
    clientToken: string
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateBrowserSettingsInput
    browserSettingsArn: string
    browserPolicy: string
    clientToken: string
    webContentFilteringPolicy: WebContentFilteringPolicy
end

local record UpdateBrowserSettingsOutput
    browserSettings: BrowserSettings
end

local record UpdateDataProtectionSettingsInput
    dataProtectionSettingsArn: string
    inlineRedactionConfiguration: InlineRedactionConfiguration
    displayName: string
    description: string
    clientToken: string
end

local record UpdateDataProtectionSettingsOutput
    dataProtectionSettings: DataProtectionSettings
end

local record UpdateIdentityProviderInput
    identityProviderArn: string
    identityProviderName: string
    identityProviderType: string
    identityProviderDetails: {string : string}
    clientToken: string
end

local record UpdateIdentityProviderOutput
    identityProvider: IdentityProvider
end

local record UpdateIpAccessSettingsInput
    ipAccessSettingsArn: string
    displayName: string
    description: string
    ipRules: {IpRule}
    clientToken: string
end

local record UpdateIpAccessSettingsOutput
    ipAccessSettings: IpAccessSettings
end

local record UpdateNetworkSettingsInput
    networkSettingsArn: string
    vpcId: string
    subnetIds: {string}
    securityGroupIds: {string}
    clientToken: string
end

local record UpdateNetworkSettingsOutput
    networkSettings: NetworkSettings
end

local record UpdatePortalInput
    portalArn: string
    displayName: string
    authenticationType: string
    instanceType: string
    maxConcurrentSessions: number
    portalCustomDomain: string
end

local record UpdatePortalOutput
    portal: Portal
end

local record UpdateSessionLoggerInput
    sessionLoggerArn: string
    eventFilter: EventFilter
    logConfiguration: LogConfiguration
    displayName: string
end

local record UpdateSessionLoggerOutput
    sessionLogger: SessionLogger
end

local record UpdateTrustStoreInput
    trustStoreArn: string
    certificatesToAdd: {string}
    certificatesToDelete: {string}
    clientToken: string
end

local record UpdateTrustStoreOutput
    trustStoreArn: string
end

local record UpdateUserAccessLoggingSettingsInput
    userAccessLoggingSettingsArn: string
    kinesisStreamArn: string
    clientToken: string
end

local record UpdateUserAccessLoggingSettingsOutput
    userAccessLoggingSettings: UserAccessLoggingSettings
end

local record UpdateUserSettingsInput
    userSettingsArn: string
    copyAllowed: string
    pasteAllowed: string
    downloadAllowed: string
    uploadAllowed: string
    printAllowed: string
    disconnectTimeoutInMinutes: number
    idleDisconnectTimeoutInMinutes: number
    clientToken: string
    cookieSynchronizationConfiguration: CookieSynchronizationConfiguration
    deepLinkAllowed: string
    toolbarConfiguration: ToolbarConfiguration
    brandingConfigurationInput: BrandingConfigurationUpdateInput
    webAuthnAllowed: string
end

local record UpdateUserSettingsOutput
    userSettings: UserSettings
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

local record TooManyTagsException
    message: string
    resourceName: string
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

local type SessionStatus = "Active" | "Terminated"

local type SessionSortBy = "StartTimeAscending" | "StartTimeDescending"

local record M
    AssociateBrowserSettingsInput: AssociateBrowserSettingsInput
    AssociateBrowserSettingsOutput: AssociateBrowserSettingsOutput
    AssociateDataProtectionSettingsInput: AssociateDataProtectionSettingsInput
    AssociateDataProtectionSettingsOutput: AssociateDataProtectionSettingsOutput
    AssociateIpAccessSettingsInput: AssociateIpAccessSettingsInput
    AssociateIpAccessSettingsOutput: AssociateIpAccessSettingsOutput
    AssociateNetworkSettingsInput: AssociateNetworkSettingsInput
    AssociateNetworkSettingsOutput: AssociateNetworkSettingsOutput
    AssociateSessionLoggerInput: AssociateSessionLoggerInput
    AssociateSessionLoggerOutput: AssociateSessionLoggerOutput
    AssociateTrustStoreInput: AssociateTrustStoreInput
    AssociateTrustStoreOutput: AssociateTrustStoreOutput
    AssociateUserAccessLoggingSettingsInput: AssociateUserAccessLoggingSettingsInput
    AssociateUserAccessLoggingSettingsOutput: AssociateUserAccessLoggingSettingsOutput
    AssociateUserSettingsInput: AssociateUserSettingsInput
    AssociateUserSettingsOutput: AssociateUserSettingsOutput
    CreateBrowserSettingsInput: CreateBrowserSettingsInput
    CreateBrowserSettingsOutput: CreateBrowserSettingsOutput
    CreateDataProtectionSettingsInput: CreateDataProtectionSettingsInput
    CreateDataProtectionSettingsOutput: CreateDataProtectionSettingsOutput
    CreateIdentityProviderInput: CreateIdentityProviderInput
    CreateIdentityProviderOutput: CreateIdentityProviderOutput
    CreateIpAccessSettingsInput: CreateIpAccessSettingsInput
    CreateIpAccessSettingsOutput: CreateIpAccessSettingsOutput
    CreateNetworkSettingsInput: CreateNetworkSettingsInput
    CreateNetworkSettingsOutput: CreateNetworkSettingsOutput
    CreatePortalInput: CreatePortalInput
    CreatePortalOutput: CreatePortalOutput
    CreateSessionLoggerInput: CreateSessionLoggerInput
    CreateSessionLoggerOutput: CreateSessionLoggerOutput
    CreateTrustStoreInput: CreateTrustStoreInput
    CreateTrustStoreOutput: CreateTrustStoreOutput
    CreateUserAccessLoggingSettingsInput: CreateUserAccessLoggingSettingsInput
    CreateUserAccessLoggingSettingsOutput: CreateUserAccessLoggingSettingsOutput
    CreateUserSettingsInput: CreateUserSettingsInput
    CreateUserSettingsOutput: CreateUserSettingsOutput
    DeleteBrowserSettingsInput: DeleteBrowserSettingsInput
    DeleteBrowserSettingsOutput: DeleteBrowserSettingsOutput
    DeleteDataProtectionSettingsInput: DeleteDataProtectionSettingsInput
    DeleteDataProtectionSettingsOutput: DeleteDataProtectionSettingsOutput
    DeleteIdentityProviderInput: DeleteIdentityProviderInput
    DeleteIdentityProviderOutput: DeleteIdentityProviderOutput
    DeleteIpAccessSettingsInput: DeleteIpAccessSettingsInput
    DeleteIpAccessSettingsOutput: DeleteIpAccessSettingsOutput
    DeleteNetworkSettingsInput: DeleteNetworkSettingsInput
    DeleteNetworkSettingsOutput: DeleteNetworkSettingsOutput
    DeletePortalInput: DeletePortalInput
    DeletePortalOutput: DeletePortalOutput
    DeleteSessionLoggerInput: DeleteSessionLoggerInput
    DeleteSessionLoggerOutput: DeleteSessionLoggerOutput
    DeleteTrustStoreInput: DeleteTrustStoreInput
    DeleteTrustStoreOutput: DeleteTrustStoreOutput
    DeleteUserAccessLoggingSettingsInput: DeleteUserAccessLoggingSettingsInput
    DeleteUserAccessLoggingSettingsOutput: DeleteUserAccessLoggingSettingsOutput
    DeleteUserSettingsInput: DeleteUserSettingsInput
    DeleteUserSettingsOutput: DeleteUserSettingsOutput
    DisassociateBrowserSettingsInput: DisassociateBrowserSettingsInput
    DisassociateBrowserSettingsOutput: DisassociateBrowserSettingsOutput
    DisassociateDataProtectionSettingsInput: DisassociateDataProtectionSettingsInput
    DisassociateDataProtectionSettingsOutput: DisassociateDataProtectionSettingsOutput
    DisassociateIpAccessSettingsInput: DisassociateIpAccessSettingsInput
    DisassociateIpAccessSettingsOutput: DisassociateIpAccessSettingsOutput
    DisassociateNetworkSettingsInput: DisassociateNetworkSettingsInput
    DisassociateNetworkSettingsOutput: DisassociateNetworkSettingsOutput
    DisassociateSessionLoggerInput: DisassociateSessionLoggerInput
    DisassociateSessionLoggerOutput: DisassociateSessionLoggerOutput
    DisassociateTrustStoreInput: DisassociateTrustStoreInput
    DisassociateTrustStoreOutput: DisassociateTrustStoreOutput
    DisassociateUserAccessLoggingSettingsInput: DisassociateUserAccessLoggingSettingsInput
    DisassociateUserAccessLoggingSettingsOutput: DisassociateUserAccessLoggingSettingsOutput
    DisassociateUserSettingsInput: DisassociateUserSettingsInput
    DisassociateUserSettingsOutput: DisassociateUserSettingsOutput
    ExpireSessionInput: ExpireSessionInput
    ExpireSessionOutput: ExpireSessionOutput
    GetBrowserSettingsInput: GetBrowserSettingsInput
    GetBrowserSettingsOutput: GetBrowserSettingsOutput
    GetDataProtectionSettingsInput: GetDataProtectionSettingsInput
    GetDataProtectionSettingsOutput: GetDataProtectionSettingsOutput
    GetIdentityProviderInput: GetIdentityProviderInput
    GetIdentityProviderOutput: GetIdentityProviderOutput
    GetIpAccessSettingsInput: GetIpAccessSettingsInput
    GetIpAccessSettingsOutput: GetIpAccessSettingsOutput
    GetNetworkSettingsInput: GetNetworkSettingsInput
    GetNetworkSettingsOutput: GetNetworkSettingsOutput
    GetPortalInput: GetPortalInput
    GetPortalOutput: GetPortalOutput
    GetPortalServiceProviderMetadataInput: GetPortalServiceProviderMetadataInput
    GetPortalServiceProviderMetadataOutput: GetPortalServiceProviderMetadataOutput
    GetSessionInput: GetSessionInput
    GetSessionOutput: GetSessionOutput
    GetSessionLoggerInput: GetSessionLoggerInput
    GetSessionLoggerOutput: GetSessionLoggerOutput
    GetTrustStoreInput: GetTrustStoreInput
    GetTrustStoreOutput: GetTrustStoreOutput
    GetTrustStoreCertificateInput: GetTrustStoreCertificateInput
    GetTrustStoreCertificateOutput: GetTrustStoreCertificateOutput
    GetUserAccessLoggingSettingsInput: GetUserAccessLoggingSettingsInput
    GetUserAccessLoggingSettingsOutput: GetUserAccessLoggingSettingsOutput
    GetUserSettingsInput: GetUserSettingsInput
    GetUserSettingsOutput: GetUserSettingsOutput
    ListBrowserSettingsInput: ListBrowserSettingsInput
    ListBrowserSettingsOutput: ListBrowserSettingsOutput
    ListDataProtectionSettingsInput: ListDataProtectionSettingsInput
    ListDataProtectionSettingsOutput: ListDataProtectionSettingsOutput
    ListIdentityProvidersInput: ListIdentityProvidersInput
    ListIdentityProvidersOutput: ListIdentityProvidersOutput
    ListIpAccessSettingsInput: ListIpAccessSettingsInput
    ListIpAccessSettingsOutput: ListIpAccessSettingsOutput
    ListNetworkSettingsInput: ListNetworkSettingsInput
    ListNetworkSettingsOutput: ListNetworkSettingsOutput
    ListPortalsInput: ListPortalsInput
    ListPortalsOutput: ListPortalsOutput
    ListSessionLoggersInput: ListSessionLoggersInput
    ListSessionLoggersOutput: ListSessionLoggersOutput
    ListSessionsInput: ListSessionsInput
    ListSessionsOutput: ListSessionsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTrustStoreCertificatesInput: ListTrustStoreCertificatesInput
    ListTrustStoreCertificatesOutput: ListTrustStoreCertificatesOutput
    ListTrustStoresInput: ListTrustStoresInput
    ListTrustStoresOutput: ListTrustStoresOutput
    ListUserAccessLoggingSettingsInput: ListUserAccessLoggingSettingsInput
    ListUserAccessLoggingSettingsOutput: ListUserAccessLoggingSettingsOutput
    ListUserSettingsInput: ListUserSettingsInput
    ListUserSettingsOutput: ListUserSettingsOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateBrowserSettingsInput: UpdateBrowserSettingsInput
    UpdateBrowserSettingsOutput: UpdateBrowserSettingsOutput
    UpdateDataProtectionSettingsInput: UpdateDataProtectionSettingsInput
    UpdateDataProtectionSettingsOutput: UpdateDataProtectionSettingsOutput
    UpdateIdentityProviderInput: UpdateIdentityProviderInput
    UpdateIdentityProviderOutput: UpdateIdentityProviderOutput
    UpdateIpAccessSettingsInput: UpdateIpAccessSettingsInput
    UpdateIpAccessSettingsOutput: UpdateIpAccessSettingsOutput
    UpdateNetworkSettingsInput: UpdateNetworkSettingsInput
    UpdateNetworkSettingsOutput: UpdateNetworkSettingsOutput
    UpdatePortalInput: UpdatePortalInput
    UpdatePortalOutput: UpdatePortalOutput
    UpdateSessionLoggerInput: UpdateSessionLoggerInput
    UpdateSessionLoggerOutput: UpdateSessionLoggerOutput
    UpdateTrustStoreInput: UpdateTrustStoreInput
    UpdateTrustStoreOutput: UpdateTrustStoreOutput
    UpdateUserAccessLoggingSettingsInput: UpdateUserAccessLoggingSettingsInput
    UpdateUserAccessLoggingSettingsOutput: UpdateUserAccessLoggingSettingsOutput
    UpdateUserSettingsInput: UpdateUserSettingsInput
    UpdateUserSettingsOutput: UpdateUserSettingsOutput
end

return M
