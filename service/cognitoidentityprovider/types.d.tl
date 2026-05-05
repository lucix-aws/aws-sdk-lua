local record AddCustomAttributesInput
    UserPoolId: string
    CustomAttributes: {SchemaAttributeType}
end

local record AddCustomAttributesOutput
end

local record AddUserPoolClientSecretInput
    UserPoolId: string
    ClientId: string
    ClientSecret: string
end

local record AddUserPoolClientSecretOutput
    ClientSecretDescriptor: ClientSecretDescriptorType
end

local record AdminAddUserToGroupInput
    UserPoolId: string
    Username: string
    GroupName: string
end

local record AdminAddUserToGroupOutput
end

local record AdminConfirmSignUpInput
    UserPoolId: string
    Username: string
    ClientMetadata: {string : string}
end

local record AdminConfirmSignUpOutput
end

local record AdminCreateUserInput
    UserPoolId: string
    Username: string
    UserAttributes: {AttributeType}
    ValidationData: {AttributeType}
    TemporaryPassword: string
    ForceAliasCreation: boolean
    MessageAction: string
    DesiredDeliveryMediums: {string}
    ClientMetadata: {string : string}
end

local record AdminCreateUserOutput
    User: UserType
end

local record AdminDeleteUserInput
    UserPoolId: string
    Username: string
end

local record AdminDeleteUserOutput
end

local record AdminDeleteUserAttributesInput
    UserPoolId: string
    Username: string
    UserAttributeNames: {string}
end

local record AdminDeleteUserAttributesOutput
end

local record AdminDisableProviderForUserInput
    UserPoolId: string
    User: ProviderUserIdentifierType
end

local record AdminDisableProviderForUserOutput
end

local record AdminDisableUserInput
    UserPoolId: string
    Username: string
end

local record AdminDisableUserOutput
end

local record AdminEnableUserInput
    UserPoolId: string
    Username: string
end

local record AdminEnableUserOutput
end

local record AdminForgetDeviceInput
    UserPoolId: string
    Username: string
    DeviceKey: string
end

local record AdminForgetDeviceOutput
end

local record AdminGetDeviceInput
    DeviceKey: string
    UserPoolId: string
    Username: string
end

local record AdminGetDeviceOutput
    Device: DeviceType
end

local record AdminGetUserInput
    UserPoolId: string
    Username: string
end

local record AdminGetUserOutput
    Username: string
    UserAttributes: {AttributeType}
    UserCreateDate: number
    UserLastModifiedDate: number
    Enabled: boolean
    UserStatus: string
    MFAOptions: {MFAOptionType}
    PreferredMfaSetting: string
    UserMFASettingList: {string}
end

local record AdminInitiateAuthInput
    UserPoolId: string
    ClientId: string
    AuthFlow: string
    AuthParameters: {string : string}
    ClientMetadata: {string : string}
    AnalyticsMetadata: AnalyticsMetadataType
    ContextData: ContextDataType
    Session: string
end

local record AdminInitiateAuthOutput
    ChallengeName: string
    Session: string
    ChallengeParameters: {string : string}
    AuthenticationResult: AuthenticationResultType
    AvailableChallenges: {string}
end

local record AdminLinkProviderForUserInput
    UserPoolId: string
    DestinationUser: ProviderUserIdentifierType
    SourceUser: ProviderUserIdentifierType
end

local record AdminLinkProviderForUserOutput
end

local record AdminListDevicesInput
    UserPoolId: string
    Username: string
    Limit: number
    PaginationToken: string
end

local record AdminListDevicesOutput
    Devices: {DeviceType}
    PaginationToken: string
end

local record AdminListGroupsForUserInput
    Username: string
    UserPoolId: string
    Limit: number
    NextToken: string
end

local record AdminListGroupsForUserOutput
    Groups: {GroupType}
    NextToken: string
end

local record AdminListUserAuthEventsInput
    UserPoolId: string
    Username: string
    MaxResults: number
    NextToken: string
end

local record AdminListUserAuthEventsOutput
    AuthEvents: {AuthEventType}
    NextToken: string
end

local record AdminRemoveUserFromGroupInput
    UserPoolId: string
    Username: string
    GroupName: string
end

local record AdminRemoveUserFromGroupOutput
end

local record AdminResetUserPasswordInput
    UserPoolId: string
    Username: string
    ClientMetadata: {string : string}
end

local record AdminResetUserPasswordOutput
end

local record AdminRespondToAuthChallengeInput
    UserPoolId: string
    ClientId: string
    ChallengeName: string
    ChallengeResponses: {string : string}
    Session: string
    AnalyticsMetadata: AnalyticsMetadataType
    ContextData: ContextDataType
    ClientMetadata: {string : string}
end

local record AdminRespondToAuthChallengeOutput
    ChallengeName: string
    Session: string
    ChallengeParameters: {string : string}
    AuthenticationResult: AuthenticationResultType
end

local record AdminSetUserMFAPreferenceInput
    SMSMfaSettings: SMSMfaSettingsType
    SoftwareTokenMfaSettings: SoftwareTokenMfaSettingsType
    EmailMfaSettings: EmailMfaSettingsType
    WebAuthnMfaSettings: WebAuthnMfaSettingsType
    Username: string
    UserPoolId: string
end

local record AdminSetUserMFAPreferenceOutput
end

local record AdminSetUserPasswordInput
    UserPoolId: string
    Username: string
    Password: string
    Permanent: boolean
end

local record AdminSetUserPasswordOutput
end

local record AdminSetUserSettingsInput
    UserPoolId: string
    Username: string
    MFAOptions: {MFAOptionType}
end

local record AdminSetUserSettingsOutput
end

local record AdminUpdateAuthEventFeedbackInput
    UserPoolId: string
    Username: string
    EventId: string
    FeedbackValue: string
end

local record AdminUpdateAuthEventFeedbackOutput
end

local record AdminUpdateDeviceStatusInput
    UserPoolId: string
    Username: string
    DeviceKey: string
    DeviceRememberedStatus: string
end

local record AdminUpdateDeviceStatusOutput
end

local record AdminUpdateUserAttributesInput
    UserPoolId: string
    Username: string
    UserAttributes: {AttributeType}
    ClientMetadata: {string : string}
end

local record AdminUpdateUserAttributesOutput
end

local record AdminUserGlobalSignOutInput
    UserPoolId: string
    Username: string
end

local record AdminUserGlobalSignOutOutput
end

local record AssociateSoftwareTokenInput
    AccessToken: string
    Session: string
end

local record AssociateSoftwareTokenOutput
    SecretCode: string
    Session: string
end

local record ChangePasswordInput
    PreviousPassword: string
    ProposedPassword: string
    AccessToken: string
end

local record ChangePasswordOutput
end

local record CompleteWebAuthnRegistrationInput
    AccessToken: string
    Credential: any
end

local record CompleteWebAuthnRegistrationOutput
end

local record ConfirmDeviceInput
    AccessToken: string
    DeviceKey: string
    DeviceSecretVerifierConfig: DeviceSecretVerifierConfigType
    DeviceName: string
end

local record ConfirmDeviceOutput
    UserConfirmationNecessary: boolean
end

local record ConfirmForgotPasswordInput
    ClientId: string
    SecretHash: string
    Username: string
    ConfirmationCode: string
    Password: string
    AnalyticsMetadata: AnalyticsMetadataType
    UserContextData: UserContextDataType
    ClientMetadata: {string : string}
end

local record ConfirmForgotPasswordOutput
end

local record ConfirmSignUpInput
    ClientId: string
    SecretHash: string
    Username: string
    ConfirmationCode: string
    ForceAliasCreation: boolean
    AnalyticsMetadata: AnalyticsMetadataType
    UserContextData: UserContextDataType
    ClientMetadata: {string : string}
    Session: string
end

local record ConfirmSignUpOutput
    Session: string
end

local record CreateGroupInput
    GroupName: string
    UserPoolId: string
    Description: string
    RoleArn: string
    Precedence: number
end

local record CreateGroupOutput
    Group: GroupType
end

local record CreateIdentityProviderInput
    UserPoolId: string
    ProviderName: string
    ProviderType: string
    ProviderDetails: {string : string}
    AttributeMapping: {string : string}
    IdpIdentifiers: {string}
end

local record CreateIdentityProviderOutput
    IdentityProvider: IdentityProviderType
end

local record CreateManagedLoginBrandingInput
    UserPoolId: string
    ClientId: string
    UseCognitoProvidedValues: boolean
    Settings: any
    Assets: {AssetType}
end

local record CreateManagedLoginBrandingOutput
    ManagedLoginBranding: ManagedLoginBrandingType
end

local record CreateResourceServerInput
    UserPoolId: string
    Identifier: string
    Name: string
    Scopes: {ResourceServerScopeType}
end

local record CreateResourceServerOutput
    ResourceServer: ResourceServerType
end

local record CreateTermsInput
    UserPoolId: string
    ClientId: string
    TermsName: string
    TermsSource: string
    Enforcement: string
    Links: {string : string}
end

local record CreateTermsOutput
    Terms: TermsType
end

local record CreateUserImportJobInput
    JobName: string
    UserPoolId: string
    CloudWatchLogsRoleArn: string
end

local record CreateUserImportJobOutput
    UserImportJob: UserImportJobType
end

local record CreateUserPoolInput
    PoolName: string
    Policies: UserPoolPolicyType
    DeletionProtection: string
    LambdaConfig: LambdaConfigType
    AutoVerifiedAttributes: {string}
    AliasAttributes: {string}
    UsernameAttributes: {string}
    SmsVerificationMessage: string
    EmailVerificationMessage: string
    EmailVerificationSubject: string
    VerificationMessageTemplate: VerificationMessageTemplateType
    SmsAuthenticationMessage: string
    MfaConfiguration: string
    UserAttributeUpdateSettings: UserAttributeUpdateSettingsType
    DeviceConfiguration: DeviceConfigurationType
    EmailConfiguration: EmailConfigurationType
    SmsConfiguration: SmsConfigurationType
    UserPoolTags: {string : string}
    AdminCreateUserConfig: AdminCreateUserConfigType
    Schema: {SchemaAttributeType}
    UserPoolAddOns: UserPoolAddOnsType
    UsernameConfiguration: UsernameConfigurationType
    AccountRecoverySetting: AccountRecoverySettingType
    UserPoolTier: string
end

local record CreateUserPoolOutput
    UserPool: UserPoolType
end

local record CreateUserPoolClientInput
    UserPoolId: string
    ClientName: string
    GenerateSecret: boolean
    ClientSecret: string
    RefreshTokenValidity: number
    AccessTokenValidity: number
    IdTokenValidity: number
    TokenValidityUnits: TokenValidityUnitsType
    ReadAttributes: {string}
    WriteAttributes: {string}
    ExplicitAuthFlows: {string}
    SupportedIdentityProviders: {string}
    CallbackURLs: {string}
    LogoutURLs: {string}
    DefaultRedirectURI: string
    AllowedOAuthFlows: {string}
    AllowedOAuthScopes: {string}
    AllowedOAuthFlowsUserPoolClient: boolean
    AnalyticsConfiguration: AnalyticsConfigurationType
    PreventUserExistenceErrors: string
    EnableTokenRevocation: boolean
    EnablePropagateAdditionalUserContextData: boolean
    AuthSessionValidity: number
    RefreshTokenRotation: RefreshTokenRotationType
end

local record CreateUserPoolClientOutput
    UserPoolClient: UserPoolClientType
end

local record CreateUserPoolDomainInput
    Domain: string
    UserPoolId: string
    ManagedLoginVersion: number
    CustomDomainConfig: CustomDomainConfigType
end

local record CreateUserPoolDomainOutput
    ManagedLoginVersion: number
    CloudFrontDomain: string
end

local record DeleteGroupInput
    GroupName: string
    UserPoolId: string
end

local record DeleteGroupOutput
end

local record DeleteIdentityProviderInput
    UserPoolId: string
    ProviderName: string
end

local record DeleteIdentityProviderOutput
end

local record DeleteManagedLoginBrandingInput
    ManagedLoginBrandingId: string
    UserPoolId: string
end

local record DeleteManagedLoginBrandingOutput
end

local record DeleteResourceServerInput
    UserPoolId: string
    Identifier: string
end

local record DeleteResourceServerOutput
end

local record DeleteTermsInput
    TermsId: string
    UserPoolId: string
end

local record DeleteTermsOutput
end

local record DeleteUserInput
    AccessToken: string
end

local record DeleteUserOutput
end

local record DeleteUserAttributesInput
    UserAttributeNames: {string}
    AccessToken: string
end

local record DeleteUserAttributesOutput
end

local record DeleteUserPoolInput
    UserPoolId: string
end

local record DeleteUserPoolOutput
end

local record DeleteUserPoolClientInput
    UserPoolId: string
    ClientId: string
end

local record DeleteUserPoolClientOutput
end

local record DeleteUserPoolClientSecretInput
    UserPoolId: string
    ClientId: string
    ClientSecretId: string
end

local record DeleteUserPoolClientSecretOutput
end

local record DeleteUserPoolDomainInput
    Domain: string
    UserPoolId: string
end

local record DeleteUserPoolDomainOutput
end

local record DeleteWebAuthnCredentialInput
    AccessToken: string
    CredentialId: string
end

local record DeleteWebAuthnCredentialOutput
end

local record DescribeIdentityProviderInput
    UserPoolId: string
    ProviderName: string
end

local record DescribeIdentityProviderOutput
    IdentityProvider: IdentityProviderType
end

local record DescribeManagedLoginBrandingInput
    UserPoolId: string
    ManagedLoginBrandingId: string
    ReturnMergedResources: boolean
end

local record DescribeManagedLoginBrandingOutput
    ManagedLoginBranding: ManagedLoginBrandingType
end

local record DescribeManagedLoginBrandingByClientInput
    UserPoolId: string
    ClientId: string
    ReturnMergedResources: boolean
end

local record DescribeManagedLoginBrandingByClientOutput
    ManagedLoginBranding: ManagedLoginBrandingType
end

local record DescribeResourceServerInput
    UserPoolId: string
    Identifier: string
end

local record DescribeResourceServerOutput
    ResourceServer: ResourceServerType
end

local record DescribeRiskConfigurationInput
    UserPoolId: string
    ClientId: string
end

local record DescribeRiskConfigurationOutput
    RiskConfiguration: RiskConfigurationType
end

local record DescribeTermsInput
    TermsId: string
    UserPoolId: string
end

local record DescribeTermsOutput
    Terms: TermsType
end

local record DescribeUserImportJobInput
    UserPoolId: string
    JobId: string
end

local record DescribeUserImportJobOutput
    UserImportJob: UserImportJobType
end

local record DescribeUserPoolInput
    UserPoolId: string
end

local record DescribeUserPoolOutput
    UserPool: UserPoolType
end

local record DescribeUserPoolClientInput
    UserPoolId: string
    ClientId: string
end

local record DescribeUserPoolClientOutput
    UserPoolClient: UserPoolClientType
end

local record DescribeUserPoolDomainInput
    Domain: string
end

local record DescribeUserPoolDomainOutput
    DomainDescription: DomainDescriptionType
end

local record ForgetDeviceInput
    AccessToken: string
    DeviceKey: string
end

local record ForgetDeviceOutput
end

local record ForgotPasswordInput
    ClientId: string
    SecretHash: string
    UserContextData: UserContextDataType
    Username: string
    AnalyticsMetadata: AnalyticsMetadataType
    ClientMetadata: {string : string}
end

local record ForgotPasswordOutput
    CodeDeliveryDetails: CodeDeliveryDetailsType
end

local record GetCSVHeaderInput
    UserPoolId: string
end

local record GetCSVHeaderOutput
    UserPoolId: string
    CSVHeader: {string}
end

local record GetDeviceInput
    DeviceKey: string
    AccessToken: string
end

local record GetDeviceOutput
    Device: DeviceType
end

local record GetGroupInput
    GroupName: string
    UserPoolId: string
end

local record GetGroupOutput
    Group: GroupType
end

local record GetIdentityProviderByIdentifierInput
    UserPoolId: string
    IdpIdentifier: string
end

local record GetIdentityProviderByIdentifierOutput
    IdentityProvider: IdentityProviderType
end

local record GetLogDeliveryConfigurationInput
    UserPoolId: string
end

local record GetLogDeliveryConfigurationOutput
    LogDeliveryConfiguration: LogDeliveryConfigurationType
end

local record GetSigningCertificateInput
    UserPoolId: string
end

local record GetSigningCertificateOutput
    Certificate: string
end

local record GetTokensFromRefreshTokenInput
    RefreshToken: string
    ClientId: string
    ClientSecret: string
    DeviceKey: string
    ClientMetadata: {string : string}
end

local record GetTokensFromRefreshTokenOutput
    AuthenticationResult: AuthenticationResultType
end

local record GetUICustomizationInput
    UserPoolId: string
    ClientId: string
end

local record GetUICustomizationOutput
    UICustomization: UICustomizationType
end

local record GetUserInput
    AccessToken: string
end

local record GetUserOutput
    Username: string
    UserAttributes: {AttributeType}
    MFAOptions: {MFAOptionType}
    PreferredMfaSetting: string
    UserMFASettingList: {string}
end

local record GetUserAttributeVerificationCodeInput
    AccessToken: string
    AttributeName: string
    ClientMetadata: {string : string}
end

local record GetUserAttributeVerificationCodeOutput
    CodeDeliveryDetails: CodeDeliveryDetailsType
end

local record GetUserAuthFactorsInput
    AccessToken: string
end

local record GetUserAuthFactorsOutput
    Username: string
    PreferredMfaSetting: string
    UserMFASettingList: {string}
    ConfiguredUserAuthFactors: {string}
end

local record GetUserPoolMfaConfigInput
    UserPoolId: string
end

local record GetUserPoolMfaConfigOutput
    SmsMfaConfiguration: SmsMfaConfigType
    SoftwareTokenMfaConfiguration: SoftwareTokenMfaConfigType
    EmailMfaConfiguration: EmailMfaConfigType
    MfaConfiguration: string
    WebAuthnConfiguration: WebAuthnConfigurationType
end

local record GlobalSignOutInput
    AccessToken: string
end

local record GlobalSignOutOutput
end

local record InitiateAuthInput
    AuthFlow: string
    AuthParameters: {string : string}
    ClientMetadata: {string : string}
    ClientId: string
    AnalyticsMetadata: AnalyticsMetadataType
    UserContextData: UserContextDataType
    Session: string
end

local record InitiateAuthOutput
    ChallengeName: string
    Session: string
    ChallengeParameters: {string : string}
    AuthenticationResult: AuthenticationResultType
    AvailableChallenges: {string}
end

local record ListDevicesInput
    AccessToken: string
    Limit: number
    PaginationToken: string
end

local record ListDevicesOutput
    Devices: {DeviceType}
    PaginationToken: string
end

local record ListGroupsInput
    UserPoolId: string
    Limit: number
    NextToken: string
end

local record ListGroupsOutput
    Groups: {GroupType}
    NextToken: string
end

local record ListIdentityProvidersInput
    UserPoolId: string
    MaxResults: number
    NextToken: string
end

local record ListIdentityProvidersOutput
    Providers: {ProviderDescription}
    NextToken: string
end

local record ListResourceServersInput
    UserPoolId: string
    MaxResults: number
    NextToken: string
end

local record ListResourceServersOutput
    ResourceServers: {ResourceServerType}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
end

local record ListTermsInput
    UserPoolId: string
    MaxResults: number
    NextToken: string
end

local record ListTermsOutput
    Terms: {TermsDescriptionType}
    NextToken: string
end

local record ListUserImportJobsInput
    UserPoolId: string
    MaxResults: number
    PaginationToken: string
end

local record ListUserImportJobsOutput
    UserImportJobs: {UserImportJobType}
    PaginationToken: string
end

local record ListUserPoolClientsInput
    UserPoolId: string
    MaxResults: number
    NextToken: string
end

local record ListUserPoolClientsOutput
    UserPoolClients: {UserPoolClientDescription}
    NextToken: string
end

local record ListUserPoolClientSecretsInput
    UserPoolId: string
    ClientId: string
    NextToken: string
end

local record ListUserPoolClientSecretsOutput
    ClientSecrets: {ClientSecretDescriptorType}
    NextToken: string
end

local record ListUserPoolsInput
    NextToken: string
    MaxResults: number
end

local record ListUserPoolsOutput
    UserPools: {UserPoolDescriptionType}
    NextToken: string
end

local record ListUsersInput
    UserPoolId: string
    AttributesToGet: {string}
    Limit: number
    PaginationToken: string
    Filter: string
end

local record ListUsersOutput
    Users: {UserType}
    PaginationToken: string
end

local record ListUsersInGroupInput
    UserPoolId: string
    GroupName: string
    Limit: number
    NextToken: string
end

local record ListUsersInGroupOutput
    Users: {UserType}
    NextToken: string
end

local record ListWebAuthnCredentialsInput
    AccessToken: string
    NextToken: string
    MaxResults: number
end

local record ListWebAuthnCredentialsOutput
    Credentials: {WebAuthnCredentialDescription}
    NextToken: string
end

local record ResendConfirmationCodeInput
    ClientId: string
    SecretHash: string
    UserContextData: UserContextDataType
    Username: string
    AnalyticsMetadata: AnalyticsMetadataType
    ClientMetadata: {string : string}
end

local record ResendConfirmationCodeOutput
    CodeDeliveryDetails: CodeDeliveryDetailsType
end

local record RespondToAuthChallengeInput
    ClientId: string
    ChallengeName: string
    Session: string
    ChallengeResponses: {string : string}
    AnalyticsMetadata: AnalyticsMetadataType
    UserContextData: UserContextDataType
    ClientMetadata: {string : string}
end

local record RespondToAuthChallengeOutput
    ChallengeName: string
    Session: string
    ChallengeParameters: {string : string}
    AuthenticationResult: AuthenticationResultType
end

local record RevokeTokenInput
    Token: string
    ClientId: string
    ClientSecret: string
end

local record RevokeTokenOutput
end

local record SetLogDeliveryConfigurationInput
    UserPoolId: string
    LogConfigurations: {LogConfigurationType}
end

local record SetLogDeliveryConfigurationOutput
    LogDeliveryConfiguration: LogDeliveryConfigurationType
end

local record SetRiskConfigurationInput
    UserPoolId: string
    ClientId: string
    CompromisedCredentialsRiskConfiguration: CompromisedCredentialsRiskConfigurationType
    AccountTakeoverRiskConfiguration: AccountTakeoverRiskConfigurationType
    RiskExceptionConfiguration: RiskExceptionConfigurationType
end

local record SetRiskConfigurationOutput
    RiskConfiguration: RiskConfigurationType
end

local record SetUICustomizationInput
    UserPoolId: string
    ClientId: string
    CSS: string
    ImageFile: string
end

local record SetUICustomizationOutput
    UICustomization: UICustomizationType
end

local record SetUserMFAPreferenceInput
    SMSMfaSettings: SMSMfaSettingsType
    SoftwareTokenMfaSettings: SoftwareTokenMfaSettingsType
    EmailMfaSettings: EmailMfaSettingsType
    WebAuthnMfaSettings: WebAuthnMfaSettingsType
    AccessToken: string
end

local record SetUserMFAPreferenceOutput
end

local record SetUserPoolMfaConfigInput
    UserPoolId: string
    SmsMfaConfiguration: SmsMfaConfigType
    SoftwareTokenMfaConfiguration: SoftwareTokenMfaConfigType
    EmailMfaConfiguration: EmailMfaConfigType
    MfaConfiguration: string
    WebAuthnConfiguration: WebAuthnConfigurationType
end

local record SetUserPoolMfaConfigOutput
    SmsMfaConfiguration: SmsMfaConfigType
    SoftwareTokenMfaConfiguration: SoftwareTokenMfaConfigType
    EmailMfaConfiguration: EmailMfaConfigType
    MfaConfiguration: string
    WebAuthnConfiguration: WebAuthnConfigurationType
end

local record SetUserSettingsInput
    AccessToken: string
    MFAOptions: {MFAOptionType}
end

local record SetUserSettingsOutput
end

local record SignUpInput
    ClientId: string
    SecretHash: string
    Username: string
    Password: string
    UserAttributes: {AttributeType}
    ValidationData: {AttributeType}
    AnalyticsMetadata: AnalyticsMetadataType
    UserContextData: UserContextDataType
    ClientMetadata: {string : string}
end

local record SignUpOutput
    UserConfirmed: boolean
    CodeDeliveryDetails: CodeDeliveryDetailsType
    UserSub: string
    Session: string
end

local record StartUserImportJobInput
    UserPoolId: string
    JobId: string
end

local record StartUserImportJobOutput
    UserImportJob: UserImportJobType
end

local record StartWebAuthnRegistrationInput
    AccessToken: string
end

local record StartWebAuthnRegistrationOutput
    CredentialCreationOptions: any
end

local record StopUserImportJobInput
    UserPoolId: string
    JobId: string
end

local record StopUserImportJobOutput
    UserImportJob: UserImportJobType
end

local record TagResourceInput
    ResourceArn: string
    Tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateAuthEventFeedbackInput
    UserPoolId: string
    Username: string
    EventId: string
    FeedbackToken: string
    FeedbackValue: string
end

local record UpdateAuthEventFeedbackOutput
end

local record UpdateDeviceStatusInput
    AccessToken: string
    DeviceKey: string
    DeviceRememberedStatus: string
end

local record UpdateDeviceStatusOutput
end

local record UpdateGroupInput
    GroupName: string
    UserPoolId: string
    Description: string
    RoleArn: string
    Precedence: number
end

local record UpdateGroupOutput
    Group: GroupType
end

local record UpdateIdentityProviderInput
    UserPoolId: string
    ProviderName: string
    ProviderDetails: {string : string}
    AttributeMapping: {string : string}
    IdpIdentifiers: {string}
end

local record UpdateIdentityProviderOutput
    IdentityProvider: IdentityProviderType
end

local record UpdateManagedLoginBrandingInput
    UserPoolId: string
    ManagedLoginBrandingId: string
    UseCognitoProvidedValues: boolean
    Settings: any
    Assets: {AssetType}
end

local record UpdateManagedLoginBrandingOutput
    ManagedLoginBranding: ManagedLoginBrandingType
end

local record UpdateResourceServerInput
    UserPoolId: string
    Identifier: string
    Name: string
    Scopes: {ResourceServerScopeType}
end

local record UpdateResourceServerOutput
    ResourceServer: ResourceServerType
end

local record UpdateTermsInput
    TermsId: string
    UserPoolId: string
    TermsName: string
    TermsSource: string
    Enforcement: string
    Links: {string : string}
end

local record UpdateTermsOutput
    Terms: TermsType
end

local record UpdateUserAttributesInput
    UserAttributes: {AttributeType}
    AccessToken: string
    ClientMetadata: {string : string}
end

local record UpdateUserAttributesOutput
    CodeDeliveryDetailsList: {CodeDeliveryDetailsType}
end

local record UpdateUserPoolInput
    UserPoolId: string
    Policies: UserPoolPolicyType
    DeletionProtection: string
    LambdaConfig: LambdaConfigType
    AutoVerifiedAttributes: {string}
    SmsVerificationMessage: string
    EmailVerificationMessage: string
    EmailVerificationSubject: string
    VerificationMessageTemplate: VerificationMessageTemplateType
    SmsAuthenticationMessage: string
    UserAttributeUpdateSettings: UserAttributeUpdateSettingsType
    MfaConfiguration: string
    DeviceConfiguration: DeviceConfigurationType
    EmailConfiguration: EmailConfigurationType
    SmsConfiguration: SmsConfigurationType
    UserPoolTags: {string : string}
    AdminCreateUserConfig: AdminCreateUserConfigType
    UserPoolAddOns: UserPoolAddOnsType
    AccountRecoverySetting: AccountRecoverySettingType
    PoolName: string
    UserPoolTier: string
end

local record UpdateUserPoolOutput
end

local record UpdateUserPoolClientInput
    UserPoolId: string
    ClientId: string
    ClientName: string
    RefreshTokenValidity: number
    AccessTokenValidity: number
    IdTokenValidity: number
    TokenValidityUnits: TokenValidityUnitsType
    ReadAttributes: {string}
    WriteAttributes: {string}
    ExplicitAuthFlows: {string}
    SupportedIdentityProviders: {string}
    CallbackURLs: {string}
    LogoutURLs: {string}
    DefaultRedirectURI: string
    AllowedOAuthFlows: {string}
    AllowedOAuthScopes: {string}
    AllowedOAuthFlowsUserPoolClient: boolean
    AnalyticsConfiguration: AnalyticsConfigurationType
    PreventUserExistenceErrors: string
    EnableTokenRevocation: boolean
    EnablePropagateAdditionalUserContextData: boolean
    AuthSessionValidity: number
    RefreshTokenRotation: RefreshTokenRotationType
end

local record UpdateUserPoolClientOutput
    UserPoolClient: UserPoolClientType
end

local record UpdateUserPoolDomainInput
    Domain: string
    UserPoolId: string
    ManagedLoginVersion: number
    CustomDomainConfig: CustomDomainConfigType
end

local record UpdateUserPoolDomainOutput
    ManagedLoginVersion: number
    CloudFrontDomain: string
end

local record VerifySoftwareTokenInput
    AccessToken: string
    Session: string
    UserCode: string
    FriendlyDeviceName: string
end

local record VerifySoftwareTokenOutput
    Status: string
    Session: string
end

local record VerifyUserAttributeInput
    AccessToken: string
    AttributeName: string
    Code: string
end

local record VerifyUserAttributeOutput
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserImportInProgressException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserNotFoundException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidLambdaResponseException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record LimitExceededException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyFailedAttemptsException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnexpectedLambdaException
    message: string
end

local record UserLambdaValidationException
    message: string
end

local record UserNotFoundException
    message: string
end

local record CodeDeliveryFailureException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidLambdaResponseException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record InvalidPasswordException
    message: string
end

local record InvalidSmsRoleAccessPolicyException
    message: string
end

local record InvalidSmsRoleTrustRelationshipException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record PreconditionNotMetException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnexpectedLambdaException
    message: string
end

local record UnsupportedUserStateException
    message: string
end

local record UserLambdaValidationException
    message: string
end

local record UsernameExistsException
    message: string
end

local record UserNotFoundException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserNotFoundException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserNotFoundException
    message: string
end

local record AliasExistsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserNotFoundException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserNotFoundException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserNotFoundException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record InvalidUserPoolConfigurationException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserNotFoundException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record InvalidUserPoolConfigurationException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserNotFoundException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidEmailRoleAccessPolicyException
    message: string
end

local record InvalidLambdaResponseException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record InvalidSmsRoleAccessPolicyException
    message: string
end

local record InvalidSmsRoleTrustRelationshipException
    message: string
end

local record InvalidUserPoolConfigurationException
    message: string
end

local record MFAMethodNotFoundException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record PasswordResetRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnexpectedLambdaException
    message: string
end

local record UnsupportedOperationException
    message: string
end

local record UserLambdaValidationException
    message: string
end

local record UserNotConfirmedException
    message: string
end

local record UserNotFoundException
    message: string
end

local record AliasExistsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record LimitExceededException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserNotFoundException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record InvalidUserPoolConfigurationException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserNotFoundException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserNotFoundException
    message: string
end

local record UserPoolAddOnNotEnabledException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserNotFoundException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidEmailRoleAccessPolicyException
    message: string
end

local record InvalidLambdaResponseException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record InvalidSmsRoleAccessPolicyException
    message: string
end

local record InvalidSmsRoleTrustRelationshipException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnexpectedLambdaException
    message: string
end

local record UserLambdaValidationException
    message: string
end

local record UserNotFoundException
    message: string
end

local record AliasExistsException
    message: string
end

local record CodeMismatchException
    message: string
end

local record ExpiredCodeException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidEmailRoleAccessPolicyException
    message: string
end

local record InvalidLambdaResponseException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record InvalidPasswordException
    message: string
end

local record InvalidSmsRoleAccessPolicyException
    message: string
end

local record InvalidSmsRoleTrustRelationshipException
    message: string
end

local record InvalidUserPoolConfigurationException
    message: string
end

local record MFAMethodNotFoundException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record PasswordHistoryPolicyViolationException
    message: string
end

local record PasswordResetRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record SoftwareTokenMFANotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnexpectedLambdaException
    message: string
end

local record UserLambdaValidationException
    message: string
end

local record UserNotConfirmedException
    message: string
end

local record UserNotFoundException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record PasswordResetRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record UserNotConfirmedException
    message: string
end

local record UserNotFoundException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record InvalidPasswordException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record PasswordHistoryPolicyViolationException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserNotFoundException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record UserNotFoundException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserNotFoundException
    message: string
end

local record UserPoolAddOnNotEnabledException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record InvalidUserPoolConfigurationException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserNotFoundException
    message: string
end

local record AliasExistsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidEmailRoleAccessPolicyException
    message: string
end

local record InvalidLambdaResponseException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record InvalidSmsRoleAccessPolicyException
    message: string
end

local record InvalidSmsRoleTrustRelationshipException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnexpectedLambdaException
    message: string
end

local record UserLambdaValidationException
    message: string
end

local record UserNotFoundException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserNotFoundException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record SoftwareTokenMFANotFoundException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record InvalidPasswordException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record PasswordHistoryPolicyViolationException
    message: string
end

local record PasswordResetRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserNotConfirmedException
    message: string
end

local record UserNotFoundException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record LimitExceededException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record PasswordResetRequiredException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record WebAuthnChallengeNotFoundException
    message: string
end

local record WebAuthnClientMismatchException
    message: string
end

local record WebAuthnCredentialNotSupportedException
    message: string
end

local record WebAuthnNotEnabledException
    message: string
end

local record WebAuthnOriginNotAllowedException
    message: string
end

local record WebAuthnRelyingPartyMismatchException
    message: string
end

local record DeviceKeyExistsException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidLambdaResponseException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record InvalidPasswordException
    message: string
end

local record InvalidUserPoolConfigurationException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record PasswordResetRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UsernameExistsException
    message: string
end

local record UserNotConfirmedException
    message: string
end

local record UserNotFoundException
    message: string
end

local record CodeMismatchException
    message: string
end

local record ExpiredCodeException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidLambdaResponseException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record InvalidPasswordException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record PasswordHistoryPolicyViolationException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyFailedAttemptsException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnexpectedLambdaException
    message: string
end

local record UserLambdaValidationException
    message: string
end

local record UserNotConfirmedException
    message: string
end

local record UserNotFoundException
    message: string
end

local record AliasExistsException
    message: string
end

local record CodeMismatchException
    message: string
end

local record ExpiredCodeException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidLambdaResponseException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record LimitExceededException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyFailedAttemptsException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnexpectedLambdaException
    message: string
end

local record UserLambdaValidationException
    message: string
end

local record UserNotFoundException
    message: string
end

local record GroupExistsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record LimitExceededException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record DuplicateProviderException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record LimitExceededException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record LimitExceededException
    message: string
end

local record ManagedLoginBrandingExistsException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record LimitExceededException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record LimitExceededException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TermsExistsException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record LimitExceededException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record PreconditionNotMetException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record FeatureUnavailableInTierException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidEmailRoleAccessPolicyException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record InvalidSmsRoleAccessPolicyException
    message: string
end

local record InvalidSmsRoleTrustRelationshipException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record TierChangeNotAllowedException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserPoolTaggingException
    message: string
end

local record FeatureUnavailableInTierException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidOAuthFlowException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record LimitExceededException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ScopeDoesNotExistException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record FeatureUnavailableInTierException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record LimitExceededException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnsupportedIdentityProviderException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record PasswordResetRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserNotConfirmedException
    message: string
end

local record UserNotFoundException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record PasswordResetRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserNotConfirmedException
    message: string
end

local record UserNotFoundException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserImportInProgressException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record LimitExceededException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record PasswordResetRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserPoolAddOnNotEnabledException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserPoolTaggingException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record InvalidUserPoolConfigurationException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record PasswordResetRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserNotConfirmedException
    message: string
end

local record UserNotFoundException
    message: string
end

local record CodeDeliveryFailureException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidEmailRoleAccessPolicyException
    message: string
end

local record InvalidLambdaResponseException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record InvalidSmsRoleAccessPolicyException
    message: string
end

local record InvalidSmsRoleTrustRelationshipException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnexpectedLambdaException
    message: string
end

local record UserLambdaValidationException
    message: string
end

local record UserNotFoundException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record InvalidUserPoolConfigurationException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record PasswordResetRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserNotConfirmedException
    message: string
end

local record UserNotFoundException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record ResourceNotFoundException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidLambdaResponseException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record RefreshTokenReuseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnexpectedLambdaException
    message: string
end

local record UserLambdaValidationException
    message: string
end

local record UserNotFoundException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record PasswordResetRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserNotConfirmedException
    message: string
end

local record UserNotFoundException
    message: string
end

local record CodeDeliveryFailureException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidEmailRoleAccessPolicyException
    message: string
end

local record InvalidLambdaResponseException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record InvalidSmsRoleAccessPolicyException
    message: string
end

local record InvalidSmsRoleTrustRelationshipException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record PasswordResetRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnexpectedLambdaException
    message: string
end

local record UserLambdaValidationException
    message: string
end

local record UserNotConfirmedException
    message: string
end

local record UserNotFoundException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record PasswordResetRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserNotConfirmedException
    message: string
end

local record UserNotFoundException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record PasswordResetRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserNotConfirmedException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidEmailRoleAccessPolicyException
    message: string
end

local record InvalidLambdaResponseException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record InvalidSmsRoleAccessPolicyException
    message: string
end

local record InvalidSmsRoleTrustRelationshipException
    message: string
end

local record InvalidUserPoolConfigurationException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record PasswordResetRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnexpectedLambdaException
    message: string
end

local record UnsupportedOperationException
    message: string
end

local record UserLambdaValidationException
    message: string
end

local record UserNotConfirmedException
    message: string
end

local record UserNotFoundException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record InvalidUserPoolConfigurationException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record PasswordResetRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserNotConfirmedException
    message: string
end

local record UserNotFoundException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record LimitExceededException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record PasswordResetRequiredException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record CodeDeliveryFailureException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidEmailRoleAccessPolicyException
    message: string
end

local record InvalidLambdaResponseException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record InvalidSmsRoleAccessPolicyException
    message: string
end

local record InvalidSmsRoleTrustRelationshipException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnexpectedLambdaException
    message: string
end

local record UserLambdaValidationException
    message: string
end

local record UserNotFoundException
    message: string
end

local record AliasExistsException
    message: string
end

local record CodeMismatchException
    message: string
end

local record ExpiredCodeException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidEmailRoleAccessPolicyException
    message: string
end

local record InvalidLambdaResponseException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record InvalidPasswordException
    message: string
end

local record InvalidSmsRoleAccessPolicyException
    message: string
end

local record InvalidSmsRoleTrustRelationshipException
    message: string
end

local record InvalidUserPoolConfigurationException
    message: string
end

local record MFAMethodNotFoundException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record PasswordHistoryPolicyViolationException
    message: string
end

local record PasswordResetRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record SoftwareTokenMFANotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnexpectedLambdaException
    message: string
end

local record UserLambdaValidationException
    message: string
end

local record UserNotConfirmedException
    message: string
end

local record UserNotFoundException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record TooManyRequestsException
    message: string
end

local record UnauthorizedException
    message: string
end

local record UnsupportedOperationException
    message: string
end

local record UnsupportedTokenTypeException
    message: string
end

local record FeatureUnavailableInTierException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record CodeDeliveryFailureException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidEmailRoleAccessPolicyException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserPoolAddOnNotEnabledException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record PasswordResetRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record UserNotConfirmedException
    message: string
end

local record UserNotFoundException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record FeatureUnavailableInTierException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record InvalidSmsRoleAccessPolicyException
    message: string
end

local record InvalidSmsRoleTrustRelationshipException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record PasswordResetRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record UserNotConfirmedException
    message: string
end

local record UserNotFoundException
    message: string
end

local record CodeDeliveryFailureException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidEmailRoleAccessPolicyException
    message: string
end

local record InvalidLambdaResponseException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record InvalidPasswordException
    message: string
end

local record InvalidSmsRoleAccessPolicyException
    message: string
end

local record InvalidSmsRoleTrustRelationshipException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnexpectedLambdaException
    message: string
end

local record UserLambdaValidationException
    message: string
end

local record UsernameExistsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record PreconditionNotMetException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record LimitExceededException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record PasswordResetRequiredException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record WebAuthnConfigurationMissingException
    message: string
end

local record WebAuthnNotEnabledException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record PreconditionNotMetException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserNotFoundException
    message: string
end

local record UserPoolAddOnNotEnabledException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record InvalidUserPoolConfigurationException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record PasswordResetRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserNotConfirmedException
    message: string
end

local record UserNotFoundException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnsupportedIdentityProviderException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TermsExistsException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record AliasExistsException
    message: string
end

local record CodeDeliveryFailureException
    message: string
end

local record CodeMismatchException
    message: string
end

local record ExpiredCodeException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidEmailRoleAccessPolicyException
    message: string
end

local record InvalidLambdaResponseException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record InvalidSmsRoleAccessPolicyException
    message: string
end

local record InvalidSmsRoleTrustRelationshipException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record PasswordResetRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnexpectedLambdaException
    message: string
end

local record UserLambdaValidationException
    message: string
end

local record UserNotConfirmedException
    message: string
end

local record UserNotFoundException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record FeatureUnavailableInTierException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidEmailRoleAccessPolicyException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record InvalidSmsRoleAccessPolicyException
    message: string
end

local record InvalidSmsRoleTrustRelationshipException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TierChangeNotAllowedException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserImportInProgressException
    message: string
end

local record UserPoolTaggingException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record FeatureUnavailableInTierException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidOAuthFlowException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ScopeDoesNotExistException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record FeatureUnavailableInTierException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record CodeMismatchException
    message: string
end

local record EnableSoftwareTokenMFAException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record InvalidUserPoolConfigurationException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record PasswordResetRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record SoftwareTokenMFANotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserNotConfirmedException
    message: string
end

local record UserNotFoundException
    message: string
end

local record AliasExistsException
    message: string
end

local record CodeMismatchException
    message: string
end

local record ExpiredCodeException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reasonCode: string
end

local record LimitExceededException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record PasswordResetRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UserNotConfirmedException
    message: string
end

local record UserNotFoundException
    message: string
end

local type TermsSourceType = "LINK"

local type DeletionProtectionType = "ACTIVE" | "INACTIVE"

local type AuthFlowType = "USER_SRP_AUTH" | "REFRESH_TOKEN_AUTH" | "REFRESH_TOKEN" | "CUSTOM_AUTH" | "ADMIN_NO_SRP_AUTH" | "USER_PASSWORD_AUTH" | "ADMIN_USER_PASSWORD_AUTH" | "USER_AUTH"

local type MessageActionType = "RESEND" | "SUPPRESS"

local type UserPoolTierType = "LITE" | "ESSENTIALS" | "PLUS"

local type UserPoolMfaType = "OFF" | "ON" | "OPTIONAL"

local type PreventUserExistenceErrorTypes = "LEGACY" | "ENABLED"

local type FeedbackValueType = "Valid" | "Invalid"

local type TermsEnforcementType = "NONE"

local type IdentityProviderTypeType = "SAML" | "Facebook" | "Google" | "LoginWithAmazon" | "SignInWithApple" | "OIDC"

local type ChallengeNameType = "SMS_MFA" | "EMAIL_OTP" | "SOFTWARE_TOKEN_MFA" | "SELECT_MFA_TYPE" | "MFA_SETUP" | "PASSWORD_VERIFIER" | "CUSTOM_CHALLENGE" | "SELECT_CHALLENGE" | "DEVICE_SRP_AUTH" | "DEVICE_PASSWORD_VERIFIER" | "ADMIN_NO_SRP_AUTH" | "NEW_PASSWORD_REQUIRED" | "SMS_OTP" | "PASSWORD" | "WEB_AUTHN" | "PASSWORD_SRP"

local type VerifySoftwareTokenResponseType = "SUCCESS" | "ERROR"

local type DeviceRememberedStatusType = "remembered" | "not_remembered"

local type UserStatusType = "UNCONFIRMED" | "CONFIRMED" | "ARCHIVED" | "COMPROMISED" | "UNKNOWN" | "RESET_REQUIRED" | "FORCE_CHANGE_PASSWORD" | "EXTERNAL_PROVIDER"

local record M
    AddCustomAttributesInput: AddCustomAttributesInput
    AddCustomAttributesOutput: AddCustomAttributesOutput
    AddUserPoolClientSecretInput: AddUserPoolClientSecretInput
    AddUserPoolClientSecretOutput: AddUserPoolClientSecretOutput
    AdminAddUserToGroupInput: AdminAddUserToGroupInput
    AdminAddUserToGroupOutput: AdminAddUserToGroupOutput
    AdminConfirmSignUpInput: AdminConfirmSignUpInput
    AdminConfirmSignUpOutput: AdminConfirmSignUpOutput
    AdminCreateUserInput: AdminCreateUserInput
    AdminCreateUserOutput: AdminCreateUserOutput
    AdminDeleteUserInput: AdminDeleteUserInput
    AdminDeleteUserOutput: AdminDeleteUserOutput
    AdminDeleteUserAttributesInput: AdminDeleteUserAttributesInput
    AdminDeleteUserAttributesOutput: AdminDeleteUserAttributesOutput
    AdminDisableProviderForUserInput: AdminDisableProviderForUserInput
    AdminDisableProviderForUserOutput: AdminDisableProviderForUserOutput
    AdminDisableUserInput: AdminDisableUserInput
    AdminDisableUserOutput: AdminDisableUserOutput
    AdminEnableUserInput: AdminEnableUserInput
    AdminEnableUserOutput: AdminEnableUserOutput
    AdminForgetDeviceInput: AdminForgetDeviceInput
    AdminForgetDeviceOutput: AdminForgetDeviceOutput
    AdminGetDeviceInput: AdminGetDeviceInput
    AdminGetDeviceOutput: AdminGetDeviceOutput
    AdminGetUserInput: AdminGetUserInput
    AdminGetUserOutput: AdminGetUserOutput
    AdminInitiateAuthInput: AdminInitiateAuthInput
    AdminInitiateAuthOutput: AdminInitiateAuthOutput
    AdminLinkProviderForUserInput: AdminLinkProviderForUserInput
    AdminLinkProviderForUserOutput: AdminLinkProviderForUserOutput
    AdminListDevicesInput: AdminListDevicesInput
    AdminListDevicesOutput: AdminListDevicesOutput
    AdminListGroupsForUserInput: AdminListGroupsForUserInput
    AdminListGroupsForUserOutput: AdminListGroupsForUserOutput
    AdminListUserAuthEventsInput: AdminListUserAuthEventsInput
    AdminListUserAuthEventsOutput: AdminListUserAuthEventsOutput
    AdminRemoveUserFromGroupInput: AdminRemoveUserFromGroupInput
    AdminRemoveUserFromGroupOutput: AdminRemoveUserFromGroupOutput
    AdminResetUserPasswordInput: AdminResetUserPasswordInput
    AdminResetUserPasswordOutput: AdminResetUserPasswordOutput
    AdminRespondToAuthChallengeInput: AdminRespondToAuthChallengeInput
    AdminRespondToAuthChallengeOutput: AdminRespondToAuthChallengeOutput
    AdminSetUserMFAPreferenceInput: AdminSetUserMFAPreferenceInput
    AdminSetUserMFAPreferenceOutput: AdminSetUserMFAPreferenceOutput
    AdminSetUserPasswordInput: AdminSetUserPasswordInput
    AdminSetUserPasswordOutput: AdminSetUserPasswordOutput
    AdminSetUserSettingsInput: AdminSetUserSettingsInput
    AdminSetUserSettingsOutput: AdminSetUserSettingsOutput
    AdminUpdateAuthEventFeedbackInput: AdminUpdateAuthEventFeedbackInput
    AdminUpdateAuthEventFeedbackOutput: AdminUpdateAuthEventFeedbackOutput
    AdminUpdateDeviceStatusInput: AdminUpdateDeviceStatusInput
    AdminUpdateDeviceStatusOutput: AdminUpdateDeviceStatusOutput
    AdminUpdateUserAttributesInput: AdminUpdateUserAttributesInput
    AdminUpdateUserAttributesOutput: AdminUpdateUserAttributesOutput
    AdminUserGlobalSignOutInput: AdminUserGlobalSignOutInput
    AdminUserGlobalSignOutOutput: AdminUserGlobalSignOutOutput
    AssociateSoftwareTokenInput: AssociateSoftwareTokenInput
    AssociateSoftwareTokenOutput: AssociateSoftwareTokenOutput
    ChangePasswordInput: ChangePasswordInput
    ChangePasswordOutput: ChangePasswordOutput
    CompleteWebAuthnRegistrationInput: CompleteWebAuthnRegistrationInput
    CompleteWebAuthnRegistrationOutput: CompleteWebAuthnRegistrationOutput
    ConfirmDeviceInput: ConfirmDeviceInput
    ConfirmDeviceOutput: ConfirmDeviceOutput
    ConfirmForgotPasswordInput: ConfirmForgotPasswordInput
    ConfirmForgotPasswordOutput: ConfirmForgotPasswordOutput
    ConfirmSignUpInput: ConfirmSignUpInput
    ConfirmSignUpOutput: ConfirmSignUpOutput
    CreateGroupInput: CreateGroupInput
    CreateGroupOutput: CreateGroupOutput
    CreateIdentityProviderInput: CreateIdentityProviderInput
    CreateIdentityProviderOutput: CreateIdentityProviderOutput
    CreateManagedLoginBrandingInput: CreateManagedLoginBrandingInput
    CreateManagedLoginBrandingOutput: CreateManagedLoginBrandingOutput
    CreateResourceServerInput: CreateResourceServerInput
    CreateResourceServerOutput: CreateResourceServerOutput
    CreateTermsInput: CreateTermsInput
    CreateTermsOutput: CreateTermsOutput
    CreateUserImportJobInput: CreateUserImportJobInput
    CreateUserImportJobOutput: CreateUserImportJobOutput
    CreateUserPoolInput: CreateUserPoolInput
    CreateUserPoolOutput: CreateUserPoolOutput
    CreateUserPoolClientInput: CreateUserPoolClientInput
    CreateUserPoolClientOutput: CreateUserPoolClientOutput
    CreateUserPoolDomainInput: CreateUserPoolDomainInput
    CreateUserPoolDomainOutput: CreateUserPoolDomainOutput
    DeleteGroupInput: DeleteGroupInput
    DeleteGroupOutput: DeleteGroupOutput
    DeleteIdentityProviderInput: DeleteIdentityProviderInput
    DeleteIdentityProviderOutput: DeleteIdentityProviderOutput
    DeleteManagedLoginBrandingInput: DeleteManagedLoginBrandingInput
    DeleteManagedLoginBrandingOutput: DeleteManagedLoginBrandingOutput
    DeleteResourceServerInput: DeleteResourceServerInput
    DeleteResourceServerOutput: DeleteResourceServerOutput
    DeleteTermsInput: DeleteTermsInput
    DeleteTermsOutput: DeleteTermsOutput
    DeleteUserInput: DeleteUserInput
    DeleteUserOutput: DeleteUserOutput
    DeleteUserAttributesInput: DeleteUserAttributesInput
    DeleteUserAttributesOutput: DeleteUserAttributesOutput
    DeleteUserPoolInput: DeleteUserPoolInput
    DeleteUserPoolOutput: DeleteUserPoolOutput
    DeleteUserPoolClientInput: DeleteUserPoolClientInput
    DeleteUserPoolClientOutput: DeleteUserPoolClientOutput
    DeleteUserPoolClientSecretInput: DeleteUserPoolClientSecretInput
    DeleteUserPoolClientSecretOutput: DeleteUserPoolClientSecretOutput
    DeleteUserPoolDomainInput: DeleteUserPoolDomainInput
    DeleteUserPoolDomainOutput: DeleteUserPoolDomainOutput
    DeleteWebAuthnCredentialInput: DeleteWebAuthnCredentialInput
    DeleteWebAuthnCredentialOutput: DeleteWebAuthnCredentialOutput
    DescribeIdentityProviderInput: DescribeIdentityProviderInput
    DescribeIdentityProviderOutput: DescribeIdentityProviderOutput
    DescribeManagedLoginBrandingInput: DescribeManagedLoginBrandingInput
    DescribeManagedLoginBrandingOutput: DescribeManagedLoginBrandingOutput
    DescribeManagedLoginBrandingByClientInput: DescribeManagedLoginBrandingByClientInput
    DescribeManagedLoginBrandingByClientOutput: DescribeManagedLoginBrandingByClientOutput
    DescribeResourceServerInput: DescribeResourceServerInput
    DescribeResourceServerOutput: DescribeResourceServerOutput
    DescribeRiskConfigurationInput: DescribeRiskConfigurationInput
    DescribeRiskConfigurationOutput: DescribeRiskConfigurationOutput
    DescribeTermsInput: DescribeTermsInput
    DescribeTermsOutput: DescribeTermsOutput
    DescribeUserImportJobInput: DescribeUserImportJobInput
    DescribeUserImportJobOutput: DescribeUserImportJobOutput
    DescribeUserPoolInput: DescribeUserPoolInput
    DescribeUserPoolOutput: DescribeUserPoolOutput
    DescribeUserPoolClientInput: DescribeUserPoolClientInput
    DescribeUserPoolClientOutput: DescribeUserPoolClientOutput
    DescribeUserPoolDomainInput: DescribeUserPoolDomainInput
    DescribeUserPoolDomainOutput: DescribeUserPoolDomainOutput
    ForgetDeviceInput: ForgetDeviceInput
    ForgetDeviceOutput: ForgetDeviceOutput
    ForgotPasswordInput: ForgotPasswordInput
    ForgotPasswordOutput: ForgotPasswordOutput
    GetCSVHeaderInput: GetCSVHeaderInput
    GetCSVHeaderOutput: GetCSVHeaderOutput
    GetDeviceInput: GetDeviceInput
    GetDeviceOutput: GetDeviceOutput
    GetGroupInput: GetGroupInput
    GetGroupOutput: GetGroupOutput
    GetIdentityProviderByIdentifierInput: GetIdentityProviderByIdentifierInput
    GetIdentityProviderByIdentifierOutput: GetIdentityProviderByIdentifierOutput
    GetLogDeliveryConfigurationInput: GetLogDeliveryConfigurationInput
    GetLogDeliveryConfigurationOutput: GetLogDeliveryConfigurationOutput
    GetSigningCertificateInput: GetSigningCertificateInput
    GetSigningCertificateOutput: GetSigningCertificateOutput
    GetTokensFromRefreshTokenInput: GetTokensFromRefreshTokenInput
    GetTokensFromRefreshTokenOutput: GetTokensFromRefreshTokenOutput
    GetUICustomizationInput: GetUICustomizationInput
    GetUICustomizationOutput: GetUICustomizationOutput
    GetUserInput: GetUserInput
    GetUserOutput: GetUserOutput
    GetUserAttributeVerificationCodeInput: GetUserAttributeVerificationCodeInput
    GetUserAttributeVerificationCodeOutput: GetUserAttributeVerificationCodeOutput
    GetUserAuthFactorsInput: GetUserAuthFactorsInput
    GetUserAuthFactorsOutput: GetUserAuthFactorsOutput
    GetUserPoolMfaConfigInput: GetUserPoolMfaConfigInput
    GetUserPoolMfaConfigOutput: GetUserPoolMfaConfigOutput
    GlobalSignOutInput: GlobalSignOutInput
    GlobalSignOutOutput: GlobalSignOutOutput
    InitiateAuthInput: InitiateAuthInput
    InitiateAuthOutput: InitiateAuthOutput
    ListDevicesInput: ListDevicesInput
    ListDevicesOutput: ListDevicesOutput
    ListGroupsInput: ListGroupsInput
    ListGroupsOutput: ListGroupsOutput
    ListIdentityProvidersInput: ListIdentityProvidersInput
    ListIdentityProvidersOutput: ListIdentityProvidersOutput
    ListResourceServersInput: ListResourceServersInput
    ListResourceServersOutput: ListResourceServersOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTermsInput: ListTermsInput
    ListTermsOutput: ListTermsOutput
    ListUserImportJobsInput: ListUserImportJobsInput
    ListUserImportJobsOutput: ListUserImportJobsOutput
    ListUserPoolClientsInput: ListUserPoolClientsInput
    ListUserPoolClientsOutput: ListUserPoolClientsOutput
    ListUserPoolClientSecretsInput: ListUserPoolClientSecretsInput
    ListUserPoolClientSecretsOutput: ListUserPoolClientSecretsOutput
    ListUserPoolsInput: ListUserPoolsInput
    ListUserPoolsOutput: ListUserPoolsOutput
    ListUsersInput: ListUsersInput
    ListUsersOutput: ListUsersOutput
    ListUsersInGroupInput: ListUsersInGroupInput
    ListUsersInGroupOutput: ListUsersInGroupOutput
    ListWebAuthnCredentialsInput: ListWebAuthnCredentialsInput
    ListWebAuthnCredentialsOutput: ListWebAuthnCredentialsOutput
    ResendConfirmationCodeInput: ResendConfirmationCodeInput
    ResendConfirmationCodeOutput: ResendConfirmationCodeOutput
    RespondToAuthChallengeInput: RespondToAuthChallengeInput
    RespondToAuthChallengeOutput: RespondToAuthChallengeOutput
    RevokeTokenInput: RevokeTokenInput
    RevokeTokenOutput: RevokeTokenOutput
    SetLogDeliveryConfigurationInput: SetLogDeliveryConfigurationInput
    SetLogDeliveryConfigurationOutput: SetLogDeliveryConfigurationOutput
    SetRiskConfigurationInput: SetRiskConfigurationInput
    SetRiskConfigurationOutput: SetRiskConfigurationOutput
    SetUICustomizationInput: SetUICustomizationInput
    SetUICustomizationOutput: SetUICustomizationOutput
    SetUserMFAPreferenceInput: SetUserMFAPreferenceInput
    SetUserMFAPreferenceOutput: SetUserMFAPreferenceOutput
    SetUserPoolMfaConfigInput: SetUserPoolMfaConfigInput
    SetUserPoolMfaConfigOutput: SetUserPoolMfaConfigOutput
    SetUserSettingsInput: SetUserSettingsInput
    SetUserSettingsOutput: SetUserSettingsOutput
    SignUpInput: SignUpInput
    SignUpOutput: SignUpOutput
    StartUserImportJobInput: StartUserImportJobInput
    StartUserImportJobOutput: StartUserImportJobOutput
    StartWebAuthnRegistrationInput: StartWebAuthnRegistrationInput
    StartWebAuthnRegistrationOutput: StartWebAuthnRegistrationOutput
    StopUserImportJobInput: StopUserImportJobInput
    StopUserImportJobOutput: StopUserImportJobOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAuthEventFeedbackInput: UpdateAuthEventFeedbackInput
    UpdateAuthEventFeedbackOutput: UpdateAuthEventFeedbackOutput
    UpdateDeviceStatusInput: UpdateDeviceStatusInput
    UpdateDeviceStatusOutput: UpdateDeviceStatusOutput
    UpdateGroupInput: UpdateGroupInput
    UpdateGroupOutput: UpdateGroupOutput
    UpdateIdentityProviderInput: UpdateIdentityProviderInput
    UpdateIdentityProviderOutput: UpdateIdentityProviderOutput
    UpdateManagedLoginBrandingInput: UpdateManagedLoginBrandingInput
    UpdateManagedLoginBrandingOutput: UpdateManagedLoginBrandingOutput
    UpdateResourceServerInput: UpdateResourceServerInput
    UpdateResourceServerOutput: UpdateResourceServerOutput
    UpdateTermsInput: UpdateTermsInput
    UpdateTermsOutput: UpdateTermsOutput
    UpdateUserAttributesInput: UpdateUserAttributesInput
    UpdateUserAttributesOutput: UpdateUserAttributesOutput
    UpdateUserPoolInput: UpdateUserPoolInput
    UpdateUserPoolOutput: UpdateUserPoolOutput
    UpdateUserPoolClientInput: UpdateUserPoolClientInput
    UpdateUserPoolClientOutput: UpdateUserPoolClientOutput
    UpdateUserPoolDomainInput: UpdateUserPoolDomainInput
    UpdateUserPoolDomainOutput: UpdateUserPoolDomainOutput
    VerifySoftwareTokenInput: VerifySoftwareTokenInput
    VerifySoftwareTokenOutput: VerifySoftwareTokenOutput
    VerifyUserAttributeInput: VerifyUserAttributeInput
    VerifyUserAttributeOutput: VerifyUserAttributeOutput
end

return M
