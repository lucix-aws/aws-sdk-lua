local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RecoveryOptionNameType = {
    VERIFIED_EMAIL = "verified_email",
    VERIFIED_PHONE_NUMBER = "verified_phone_number",
    ADMIN_ONLY = "admin_only",
}

M.RecoveryOptionType = {
    type = "structure",
    members = {
        Priority = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AccountRecoverySettingType = {
    type = "structure",
    members = {
        RecoveryMechanisms = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AccountTakeoverEventActionType = {
    BLOCK = "BLOCK",
    MFA_IF_CONFIGURED = "MFA_IF_CONFIGURED",
    MFA_REQUIRED = "MFA_REQUIRED",
    NO_ACTION = "NO_ACTION",
}

M.AccountTakeoverActionType = {
    type = "structure",
    members = {
        Notify = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        EventAction = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AccountTakeoverActionsType = {
    type = "structure",
    members = {
        LowAction = {
            type = "structure",
        },
        MediumAction = {
            type = "structure",
        },
        HighAction = {
            type = "structure",
        },
    },
}

M.NotifyEmailType = {
    type = "structure",
    members = {
        Subject = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HtmlBody = {
            type = "string",
        },
        TextBody = {
            type = "string",
        },
    },
}

M.NotifyConfigurationType = {
    type = "structure",
    members = {
        From = {
            type = "string",
        },
        ReplyTo = {
            type = "string",
        },
        SourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BlockEmail = {
            type = "structure",
        },
        NoActionEmail = {
            type = "structure",
        },
        MfaEmail = {
            type = "structure",
        },
    },
}

M.AccountTakeoverRiskConfigurationType = {
    type = "structure",
    members = {
        NotifyConfiguration = {
            type = "structure",
        },
        Actions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AttributeDataType = {
    STRING = "String",
    NUMBER = "Number",
    DATETIME = "DateTime",
    BOOLEAN = "Boolean",
}

M.NumberAttributeConstraintsType = {
    type = "structure",
    members = {
        MinValue = {
            type = "string",
        },
        MaxValue = {
            type = "string",
        },
    },
}

M.StringAttributeConstraintsType = {
    type = "structure",
    members = {
        MinLength = {
            type = "string",
        },
        MaxLength = {
            type = "string",
        },
    },
}

M.SchemaAttributeType = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        AttributeDataType = {
            type = "string",
        },
        DeveloperOnlyAttribute = {
            type = "boolean",
        },
        Mutable = {
            type = "boolean",
        },
        Required = {
            type = "boolean",
        },
        NumberAttributeConstraints = {
            type = "structure",
        },
        StringAttributeConstraints = {
            type = "structure",
        },
    },
}

M.AddCustomAttributesInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CustomAttributes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AddCustomAttributesOutput = {
    type = "structure",
}

M.InternalErrorException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidParameterException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        reasonCode = {
            type = "string",
        },
    },
}

M.NotAuthorizedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UserImportInProgressException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AddUserPoolClientSecretInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientSecret = {
            type = "string",
        },
    },
}

M.ClientSecretDescriptorType = {
    type = "structure",
    members = {
        ClientSecretId = {
            type = "string",
        },
        ClientSecretValue = {
            type = "string",
        },
        ClientSecretCreateDate = {
            type = "timestamp",
        },
    },
}

M.AddUserPoolClientSecretOutput = {
    type = "structure",
    members = {
        ClientSecretDescriptor = {
            type = "structure",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AdminAddUserToGroupInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AdminAddUserToGroupOutput = {
    type = "structure",
}

M.UserNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AdminConfirmSignUpInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.AdminConfirmSignUpOutput = {
    type = "structure",
}

M.InvalidLambdaResponseException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyFailedAttemptsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnexpectedLambdaException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UserLambdaValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeliveryMediumType = {
    SMS = "SMS",
    EMAIL = "EMAIL",
}

M.MessageActionType = {
    RESEND = "RESEND",
    SUPPRESS = "SUPPRESS",
}

M.AttributeType = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
        },
    },
}

M.AdminCreateUserInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserAttributes = {
            type = "list",
            member_type = "structure",
        },
        ValidationData = {
            type = "list",
            member_type = "structure",
        },
        TemporaryPassword = {
            type = "string",
        },
        ForceAliasCreation = {
            type = "boolean",
        },
        MessageAction = {
            type = "string",
        },
        DesiredDeliveryMediums = {
            type = "list",
            member_type = "string",
        },
        ClientMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.MFAOptionType = {
    type = "structure",
    members = {
        DeliveryMedium = {
            type = "string",
        },
        AttributeName = {
            type = "string",
        },
    },
}

M.UserStatusType = {
    UNCONFIRMED = "UNCONFIRMED",
    CONFIRMED = "CONFIRMED",
    ARCHIVED = "ARCHIVED",
    COMPROMISED = "COMPROMISED",
    UNKNOWN = "UNKNOWN",
    RESET_REQUIRED = "RESET_REQUIRED",
    FORCE_CHANGE_PASSWORD = "FORCE_CHANGE_PASSWORD",
    EXTERNAL_PROVIDER = "EXTERNAL_PROVIDER",
}

M.UserType = {
    type = "structure",
    members = {
        Username = {
            type = "string",
        },
        Attributes = {
            type = "list",
            member_type = "structure",
        },
        UserCreateDate = {
            type = "timestamp",
        },
        UserLastModifiedDate = {
            type = "timestamp",
        },
        Enabled = {
            type = "boolean",
        },
        UserStatus = {
            type = "string",
        },
        MFAOptions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AdminCreateUserOutput = {
    type = "structure",
    members = {
        User = {
            type = "structure",
        },
    },
}

M.CodeDeliveryFailureException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidPasswordException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidSmsRoleAccessPolicyException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidSmsRoleTrustRelationshipException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PreconditionNotMetException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnsupportedUserStateException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UsernameExistsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MessageTemplateType = {
    type = "structure",
    members = {
        SMSMessage = {
            type = "string",
        },
        EmailMessage = {
            type = "string",
        },
        EmailSubject = {
            type = "string",
        },
    },
}

M.AdminCreateUserConfigType = {
    type = "structure",
    members = {
        AllowAdminCreateUserOnly = {
            type = "boolean",
        },
        UnusedAccountValidityDays = {
            type = "number",
        },
        InviteMessageTemplate = {
            type = "structure",
        },
    },
}

M.AdminDeleteUserInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AdminDeleteUserOutput = {
    type = "structure",
}

M.AdminDeleteUserAttributesInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserAttributeNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AdminDeleteUserAttributesOutput = {
    type = "structure",
}

M.ProviderUserIdentifierType = {
    type = "structure",
    members = {
        ProviderName = {
            type = "string",
        },
        ProviderAttributeName = {
            type = "string",
        },
        ProviderAttributeValue = {
            type = "string",
        },
    },
}

M.AdminDisableProviderForUserInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        User = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AdminDisableProviderForUserOutput = {
    type = "structure",
}

M.AliasExistsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AdminDisableUserInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AdminDisableUserOutput = {
    type = "structure",
}

M.AdminEnableUserInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AdminEnableUserOutput = {
    type = "structure",
}

M.AdminForgetDeviceInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeviceKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AdminForgetDeviceOutput = {
    type = "structure",
}

M.InvalidUserPoolConfigurationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AdminGetDeviceInput = {
    type = "structure",
    members = {
        DeviceKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeviceType = {
    type = "structure",
    members = {
        DeviceKey = {
            type = "string",
        },
        DeviceAttributes = {
            type = "list",
            member_type = "structure",
        },
        DeviceCreateDate = {
            type = "timestamp",
        },
        DeviceLastModifiedDate = {
            type = "timestamp",
        },
        DeviceLastAuthenticatedDate = {
            type = "timestamp",
        },
    },
}

M.AdminGetDeviceOutput = {
    type = "structure",
    members = {
        Device = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AdminGetUserInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AdminGetUserOutput = {
    type = "structure",
    members = {
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserAttributes = {
            type = "list",
            member_type = "structure",
        },
        UserCreateDate = {
            type = "timestamp",
        },
        UserLastModifiedDate = {
            type = "timestamp",
        },
        Enabled = {
            type = "boolean",
        },
        UserStatus = {
            type = "string",
        },
        MFAOptions = {
            type = "list",
            member_type = "structure",
        },
        PreferredMfaSetting = {
            type = "string",
        },
        UserMFASettingList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.AnalyticsMetadataType = {
    type = "structure",
    members = {
        AnalyticsEndpointId = {
            type = "string",
        },
    },
}

M.AuthFlowType = {
    USER_SRP_AUTH = "USER_SRP_AUTH",
    REFRESH_TOKEN_AUTH = "REFRESH_TOKEN_AUTH",
    REFRESH_TOKEN = "REFRESH_TOKEN",
    CUSTOM_AUTH = "CUSTOM_AUTH",
    ADMIN_NO_SRP_AUTH = "ADMIN_NO_SRP_AUTH",
    USER_PASSWORD_AUTH = "USER_PASSWORD_AUTH",
    ADMIN_USER_PASSWORD_AUTH = "ADMIN_USER_PASSWORD_AUTH",
    USER_AUTH = "USER_AUTH",
}

M.HttpHeader = {
    type = "structure",
    members = {
        headerName = {
            type = "string",
        },
        headerValue = {
            type = "string",
        },
    },
}

M.ContextDataType = {
    type = "structure",
    members = {
        IpAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServerPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HttpHeaders = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        EncodedData = {
            type = "string",
        },
    },
}

M.AdminInitiateAuthInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthFlow = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ClientMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        AnalyticsMetadata = {
            type = "structure",
        },
        ContextData = {
            type = "structure",
        },
        Session = {
            type = "string",
        },
    },
}

M.NewDeviceMetadataType = {
    type = "structure",
    members = {
        DeviceKey = {
            type = "string",
        },
        DeviceGroupKey = {
            type = "string",
        },
    },
}

M.AuthenticationResultType = {
    type = "structure",
    members = {
        AccessToken = {
            type = "string",
        },
        ExpiresIn = {
            type = "number",
        },
        TokenType = {
            type = "string",
        },
        RefreshToken = {
            type = "string",
        },
        IdToken = {
            type = "string",
        },
        NewDeviceMetadata = {
            type = "structure",
        },
    },
}

M.ChallengeNameType = {
    SMS_MFA = "SMS_MFA",
    EMAIL_OTP = "EMAIL_OTP",
    SOFTWARE_TOKEN_MFA = "SOFTWARE_TOKEN_MFA",
    SELECT_MFA_TYPE = "SELECT_MFA_TYPE",
    MFA_SETUP = "MFA_SETUP",
    PASSWORD_VERIFIER = "PASSWORD_VERIFIER",
    CUSTOM_CHALLENGE = "CUSTOM_CHALLENGE",
    SELECT_CHALLENGE = "SELECT_CHALLENGE",
    DEVICE_SRP_AUTH = "DEVICE_SRP_AUTH",
    DEVICE_PASSWORD_VERIFIER = "DEVICE_PASSWORD_VERIFIER",
    ADMIN_NO_SRP_AUTH = "ADMIN_NO_SRP_AUTH",
    NEW_PASSWORD_REQUIRED = "NEW_PASSWORD_REQUIRED",
    SMS_OTP = "SMS_OTP",
    PASSWORD = "PASSWORD",
    WEB_AUTHN = "WEB_AUTHN",
    PASSWORD_SRP = "PASSWORD_SRP",
}

M.AdminInitiateAuthOutput = {
    type = "structure",
    members = {
        ChallengeName = {
            type = "string",
        },
        Session = {
            type = "string",
        },
        ChallengeParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        AuthenticationResult = {
            type = "structure",
        },
        AvailableChallenges = {
            type = "list",
            member_type = "string",
        },
    },
}

M.InvalidEmailRoleAccessPolicyException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MFAMethodNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PasswordResetRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnsupportedOperationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UserNotConfirmedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AdminLinkProviderForUserInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationUser = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SourceUser = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AdminLinkProviderForUserOutput = {
    type = "structure",
}

M.AdminListDevicesInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Limit = {
            type = "number",
        },
        PaginationToken = {
            type = "string",
        },
    },
}

M.AdminListDevicesOutput = {
    type = "structure",
    members = {
        Devices = {
            type = "list",
            member_type = "structure",
        },
        PaginationToken = {
            type = "string",
        },
    },
}

M.AdminListGroupsForUserInput = {
    type = "structure",
    members = {
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Limit = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GroupType = {
    type = "structure",
    members = {
        GroupName = {
            type = "string",
        },
        UserPoolId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        Precedence = {
            type = "number",
        },
        LastModifiedDate = {
            type = "timestamp",
        },
        CreationDate = {
            type = "timestamp",
        },
    },
}

M.AdminListGroupsForUserOutput = {
    type = "structure",
    members = {
        Groups = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.AdminListUserAuthEventsInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ChallengeName = {
    Password = "Password",
    Mfa = "Mfa",
}

M.ChallengeResponse = {
    Success = "Success",
    Failure = "Failure",
}

M.ChallengeResponseType = {
    type = "structure",
    members = {
        ChallengeName = {
            type = "string",
        },
        ChallengeResponse = {
            type = "string",
        },
    },
}

M.EventContextDataType = {
    type = "structure",
    members = {
        IpAddress = {
            type = "string",
        },
        DeviceName = {
            type = "string",
        },
        Timezone = {
            type = "string",
        },
        City = {
            type = "string",
        },
        Country = {
            type = "string",
        },
    },
}

M.FeedbackValueType = {
    VALID = "Valid",
    INVALID = "Invalid",
}

M.EventFeedbackType = {
    type = "structure",
    members = {
        FeedbackValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Provider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FeedbackDate = {
            type = "timestamp",
        },
    },
}

M.EventResponseType = {
    Pass = "Pass",
    Fail = "Fail",
    InProgress = "InProgress",
}

M.RiskDecisionType = {
    NoRisk = "NoRisk",
    AccountTakeover = "AccountTakeover",
    Block = "Block",
}

M.RiskLevelType = {
    Low = "Low",
    Medium = "Medium",
    High = "High",
}

M.EventRiskType = {
    type = "structure",
    members = {
        RiskDecision = {
            type = "string",
        },
        RiskLevel = {
            type = "string",
        },
        CompromisedCredentialsDetected = {
            type = "boolean",
        },
    },
}

M.EventType = {
    SignIn = "SignIn",
    SignUp = "SignUp",
    ForgotPassword = "ForgotPassword",
    PasswordChange = "PasswordChange",
    ResendCode = "ResendCode",
}

M.AuthEventType = {
    type = "structure",
    members = {
        EventId = {
            type = "string",
        },
        EventType = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        EventResponse = {
            type = "string",
        },
        EventRisk = {
            type = "structure",
        },
        ChallengeResponses = {
            type = "list",
            member_type = "structure",
        },
        EventContextData = {
            type = "structure",
        },
        EventFeedback = {
            type = "structure",
        },
    },
}

M.AdminListUserAuthEventsOutput = {
    type = "structure",
    members = {
        AuthEvents = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UserPoolAddOnNotEnabledException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AdminRemoveUserFromGroupInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AdminRemoveUserFromGroupOutput = {
    type = "structure",
}

M.AdminResetUserPasswordInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.AdminResetUserPasswordOutput = {
    type = "structure",
}

M.AdminRespondToAuthChallengeInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChallengeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChallengeResponses = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Session = {
            type = "string",
        },
        AnalyticsMetadata = {
            type = "structure",
        },
        ContextData = {
            type = "structure",
        },
        ClientMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.AdminRespondToAuthChallengeOutput = {
    type = "structure",
    members = {
        ChallengeName = {
            type = "string",
        },
        Session = {
            type = "string",
        },
        ChallengeParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        AuthenticationResult = {
            type = "structure",
        },
    },
}

M.CodeMismatchException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ExpiredCodeException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PasswordHistoryPolicyViolationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SoftwareTokenMFANotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EmailMfaSettingsType = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
        PreferredMfa = {
            type = "boolean",
        },
    },
}

M.SMSMfaSettingsType = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
        PreferredMfa = {
            type = "boolean",
        },
    },
}

M.SoftwareTokenMfaSettingsType = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
        PreferredMfa = {
            type = "boolean",
        },
    },
}

M.WebAuthnMfaSettingsType = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.AdminSetUserMFAPreferenceInput = {
    type = "structure",
    members = {
        SMSMfaSettings = {
            type = "structure",
        },
        SoftwareTokenMfaSettings = {
            type = "structure",
        },
        EmailMfaSettings = {
            type = "structure",
        },
        WebAuthnMfaSettings = {
            type = "structure",
        },
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AdminSetUserMFAPreferenceOutput = {
    type = "structure",
}

M.AdminSetUserPasswordInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Password = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Permanent = {
            type = "boolean",
        },
    },
}

M.AdminSetUserPasswordOutput = {
    type = "structure",
}

M.AdminSetUserSettingsInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MFAOptions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AdminSetUserSettingsOutput = {
    type = "structure",
}

M.AdminUpdateAuthEventFeedbackInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FeedbackValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AdminUpdateAuthEventFeedbackOutput = {
    type = "structure",
}

M.DeviceRememberedStatusType = {
    REMEMBERED = "remembered",
    NOT_REMEMBERED = "not_remembered",
}

M.AdminUpdateDeviceStatusInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeviceKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeviceRememberedStatus = {
            type = "string",
        },
    },
}

M.AdminUpdateDeviceStatusOutput = {
    type = "structure",
}

M.AdminUpdateUserAttributesInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserAttributes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        ClientMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.AdminUpdateUserAttributesOutput = {
    type = "structure",
}

M.AdminUserGlobalSignOutInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AdminUserGlobalSignOutOutput = {
    type = "structure",
}

M.AdvancedSecurityEnabledModeType = {
    AUDIT = "AUDIT",
    ENFORCED = "ENFORCED",
}

M.AdvancedSecurityAdditionalFlowsType = {
    type = "structure",
    members = {
        CustomAuthMode = {
            type = "string",
        },
    },
}

M.AdvancedSecurityModeType = {
    OFF = "OFF",
    AUDIT = "AUDIT",
    ENFORCED = "ENFORCED",
}

M.AliasAttributeType = {
    PHONE_NUMBER = "phone_number",
    EMAIL = "email",
    PREFERRED_USERNAME = "preferred_username",
}

M.AuthFactorType = {
    PASSWORD = "PASSWORD",
    EMAIL_OTP = "EMAIL_OTP",
    SMS_OTP = "SMS_OTP",
    WEB_AUTHN = "WEB_AUTHN",
}

M.AnalyticsConfigurationType = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
        },
        ApplicationArn = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        ExternalId = {
            type = "string",
        },
        UserDataShared = {
            type = "boolean",
        },
    },
}

M.AssetCategoryType = {
    FAVICON_ICO = "FAVICON_ICO",
    FAVICON_SVG = "FAVICON_SVG",
    EMAIL_GRAPHIC = "EMAIL_GRAPHIC",
    SMS_GRAPHIC = "SMS_GRAPHIC",
    AUTH_APP_GRAPHIC = "AUTH_APP_GRAPHIC",
    PASSWORD_GRAPHIC = "PASSWORD_GRAPHIC",
    PASSKEY_GRAPHIC = "PASSKEY_GRAPHIC",
    PAGE_HEADER_LOGO = "PAGE_HEADER_LOGO",
    PAGE_HEADER_BACKGROUND = "PAGE_HEADER_BACKGROUND",
    PAGE_FOOTER_LOGO = "PAGE_FOOTER_LOGO",
    PAGE_FOOTER_BACKGROUND = "PAGE_FOOTER_BACKGROUND",
    PAGE_BACKGROUND = "PAGE_BACKGROUND",
    FORM_BACKGROUND = "FORM_BACKGROUND",
    FORM_LOGO = "FORM_LOGO",
    IDP_BUTTON_ICON = "IDP_BUTTON_ICON",
}

M.AssetExtensionType = {
    ICO = "ICO",
    JPEG = "JPEG",
    PNG = "PNG",
    SVG = "SVG",
    WEBP = "WEBP",
}

M.ColorSchemeModeType = {
    LIGHT = "LIGHT",
    DARK = "DARK",
    DYNAMIC = "DYNAMIC",
}

M.AssetType = {
    type = "structure",
    members = {
        Category = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ColorMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Extension = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Bytes = {
            type = "blob",
        },
        ResourceId = {
            type = "string",
        },
    },
}

M.AssociateSoftwareTokenInput = {
    type = "structure",
    members = {
        AccessToken = {
            type = "string",
        },
        Session = {
            type = "string",
        },
    },
}

M.AssociateSoftwareTokenOutput = {
    type = "structure",
    members = {
        SecretCode = {
            type = "string",
        },
        Session = {
            type = "string",
        },
    },
}

M.ConcurrentModificationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ForbiddenException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.VerifiedAttributeType = {
    PHONE_NUMBER = "phone_number",
    EMAIL = "email",
}

M.ChangePasswordInput = {
    type = "structure",
    members = {
        PreviousPassword = {
            type = "string",
        },
        ProposedPassword = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccessToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ChangePasswordOutput = {
    type = "structure",
}

M.CompleteWebAuthnRegistrationInput = {
    type = "structure",
    members = {
        AccessToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Credential = {
            type = "document",
            traits = {
                required = true,
            },
        },
    },
}

M.CompleteWebAuthnRegistrationOutput = {
    type = "structure",
}

M.WebAuthnChallengeNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.WebAuthnClientMismatchException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.WebAuthnCredentialNotSupportedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.WebAuthnNotEnabledException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.WebAuthnOriginNotAllowedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.WebAuthnRelyingPartyMismatchException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeviceSecretVerifierConfigType = {
    type = "structure",
    members = {
        PasswordVerifier = {
            type = "string",
        },
        Salt = {
            type = "string",
        },
    },
}

M.ConfirmDeviceInput = {
    type = "structure",
    members = {
        AccessToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeviceKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeviceSecretVerifierConfig = {
            type = "structure",
        },
        DeviceName = {
            type = "string",
        },
    },
}

M.ConfirmDeviceOutput = {
    type = "structure",
    members = {
        UserConfirmationNecessary = {
            type = "boolean",
        },
    },
}

M.DeviceKeyExistsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UserContextDataType = {
    type = "structure",
    members = {
        IpAddress = {
            type = "string",
        },
        EncodedData = {
            type = "string",
        },
    },
}

M.ConfirmForgotPasswordInput = {
    type = "structure",
    members = {
        ClientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecretHash = {
            type = "string",
        },
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConfirmationCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Password = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AnalyticsMetadata = {
            type = "structure",
        },
        UserContextData = {
            type = "structure",
        },
        ClientMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ConfirmForgotPasswordOutput = {
    type = "structure",
}

M.ConfirmSignUpInput = {
    type = "structure",
    members = {
        ClientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecretHash = {
            type = "string",
        },
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConfirmationCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ForceAliasCreation = {
            type = "boolean",
        },
        AnalyticsMetadata = {
            type = "structure",
        },
        UserContextData = {
            type = "structure",
        },
        ClientMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Session = {
            type = "string",
        },
    },
}

M.ConfirmSignUpOutput = {
    type = "structure",
    members = {
        Session = {
            type = "string",
        },
    },
}

M.CreateGroupInput = {
    type = "structure",
    members = {
        GroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        Precedence = {
            type = "number",
        },
    },
}

M.CreateGroupOutput = {
    type = "structure",
    members = {
        Group = {
            type = "structure",
        },
    },
}

M.GroupExistsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IdentityProviderTypeType = {
    SAML = "SAML",
    Facebook = "Facebook",
    Google = "Google",
    LoginWithAmazon = "LoginWithAmazon",
    SignInWithApple = "SignInWithApple",
    OIDC = "OIDC",
}

M.CreateIdentityProviderInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProviderName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProviderType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProviderDetails = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        AttributeMapping = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        IdpIdentifiers = {
            type = "list",
            member_type = "string",
        },
    },
}

M.IdentityProviderType = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
        },
        ProviderName = {
            type = "string",
        },
        ProviderType = {
            type = "string",
        },
        ProviderDetails = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        AttributeMapping = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        IdpIdentifiers = {
            type = "list",
            member_type = "string",
        },
        LastModifiedDate = {
            type = "timestamp",
        },
        CreationDate = {
            type = "timestamp",
        },
    },
}

M.CreateIdentityProviderOutput = {
    type = "structure",
    members = {
        IdentityProvider = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DuplicateProviderException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateManagedLoginBrandingInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UseCognitoProvidedValues = {
            type = "boolean",
        },
        Settings = {
            type = "document",
        },
        Assets = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ManagedLoginBrandingType = {
    type = "structure",
    members = {
        ManagedLoginBrandingId = {
            type = "string",
        },
        UserPoolId = {
            type = "string",
        },
        UseCognitoProvidedValues = {
            type = "boolean",
        },
        Settings = {
            type = "document",
        },
        Assets = {
            type = "list",
            member_type = "structure",
        },
        CreationDate = {
            type = "timestamp",
        },
        LastModifiedDate = {
            type = "timestamp",
        },
    },
}

M.CreateManagedLoginBrandingOutput = {
    type = "structure",
    members = {
        ManagedLoginBranding = {
            type = "structure",
        },
    },
}

M.ManagedLoginBrandingExistsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceServerScopeType = {
    type = "structure",
    members = {
        ScopeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScopeDescription = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateResourceServerInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Scopes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ResourceServerType = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
        },
        Identifier = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Scopes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateResourceServerOutput = {
    type = "structure",
    members = {
        ResourceServer = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TermsEnforcementType = {
    NONE = "NONE",
}

M.TermsSourceType = {
    LINK = "LINK",
}

M.CreateTermsInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TermsName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TermsSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Enforcement = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Links = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.TermsType = {
    type = "structure",
    members = {
        TermsId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TermsName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TermsSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Enforcement = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Links = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        CreationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateTermsOutput = {
    type = "structure",
    members = {
        Terms = {
            type = "structure",
        },
    },
}

M.TermsExistsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateUserImportJobInput = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CloudWatchLogsRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UserImportJobStatusType = {
    Created = "Created",
    Pending = "Pending",
    InProgress = "InProgress",
    Stopping = "Stopping",
    Expired = "Expired",
    Stopped = "Stopped",
    Failed = "Failed",
    Succeeded = "Succeeded",
}

M.UserImportJobType = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
        },
        JobId = {
            type = "string",
        },
        UserPoolId = {
            type = "string",
        },
        PreSignedUrl = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        StartDate = {
            type = "timestamp",
        },
        CompletionDate = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        CloudWatchLogsRoleArn = {
            type = "string",
        },
        ImportedUsers = {
            type = "number",
        },
        SkippedUsers = {
            type = "number",
        },
        FailedUsers = {
            type = "number",
        },
        CompletionMessage = {
            type = "string",
        },
    },
}

M.CreateUserImportJobOutput = {
    type = "structure",
    members = {
        UserImportJob = {
            type = "structure",
        },
    },
}

M.DeletionProtectionType = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.DeviceConfigurationType = {
    type = "structure",
    members = {
        ChallengeRequiredOnNewDevice = {
            type = "boolean",
        },
        DeviceOnlyRememberedOnUserPrompt = {
            type = "boolean",
        },
    },
}

M.EmailSendingAccountType = {
    COGNITO_DEFAULT = "COGNITO_DEFAULT",
    DEVELOPER = "DEVELOPER",
}

M.EmailConfigurationType = {
    type = "structure",
    members = {
        SourceArn = {
            type = "string",
        },
        ReplyToEmailAddress = {
            type = "string",
        },
        EmailSendingAccount = {
            type = "string",
        },
        From = {
            type = "string",
        },
        ConfigurationSet = {
            type = "string",
        },
    },
}

M.CustomEmailSenderLambdaVersionType = {
    V1_0 = "V1_0",
}

M.CustomEmailLambdaVersionConfigType = {
    type = "structure",
    members = {
        LambdaVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LambdaArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomSMSSenderLambdaVersionType = {
    V1_0 = "V1_0",
}

M.CustomSMSLambdaVersionConfigType = {
    type = "structure",
    members = {
        LambdaVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LambdaArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InboundFederationLambdaVersionType = {
    V1_0 = "V1_0",
}

M.InboundFederationLambdaType = {
    type = "structure",
    members = {
        LambdaVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LambdaArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PreTokenGenerationLambdaVersionType = {
    V1_0 = "V1_0",
    V2_0 = "V2_0",
    V3_0 = "V3_0",
}

M.PreTokenGenerationVersionConfigType = {
    type = "structure",
    members = {
        LambdaVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LambdaArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LambdaConfigType = {
    type = "structure",
    members = {
        PreSignUp = {
            type = "string",
        },
        CustomMessage = {
            type = "string",
        },
        PostConfirmation = {
            type = "string",
        },
        PreAuthentication = {
            type = "string",
        },
        PostAuthentication = {
            type = "string",
        },
        DefineAuthChallenge = {
            type = "string",
        },
        CreateAuthChallenge = {
            type = "string",
        },
        VerifyAuthChallengeResponse = {
            type = "string",
        },
        PreTokenGeneration = {
            type = "string",
        },
        UserMigration = {
            type = "string",
        },
        PreTokenGenerationConfig = {
            type = "structure",
        },
        CustomSMSSender = {
            type = "structure",
        },
        CustomEmailSender = {
            type = "structure",
        },
        KMSKeyID = {
            type = "string",
        },
        InboundFederation = {
            type = "structure",
        },
    },
}

M.UserPoolMfaType = {
    OFF = "OFF",
    ON = "ON",
    OPTIONAL = "OPTIONAL",
}

M.PasswordPolicyType = {
    type = "structure",
    members = {
        MinimumLength = {
            type = "number",
        },
        RequireUppercase = {
            type = "boolean",
        },
        RequireLowercase = {
            type = "boolean",
        },
        RequireNumbers = {
            type = "boolean",
        },
        RequireSymbols = {
            type = "boolean",
        },
        PasswordHistorySize = {
            type = "number",
        },
        TemporaryPasswordValidityDays = {
            type = "number",
        },
    },
}

M.SignInPolicyType = {
    type = "structure",
    members = {
        AllowedFirstAuthFactors = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UserPoolPolicyType = {
    type = "structure",
    members = {
        PasswordPolicy = {
            type = "structure",
        },
        SignInPolicy = {
            type = "structure",
        },
    },
}

M.SmsConfigurationType = {
    type = "structure",
    members = {
        SnsCallerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExternalId = {
            type = "string",
        },
        SnsRegion = {
            type = "string",
        },
    },
}

M.UserAttributeUpdateSettingsType = {
    type = "structure",
    members = {
        AttributesRequireVerificationBeforeUpdate = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UsernameAttributeType = {
    PHONE_NUMBER = "phone_number",
    EMAIL = "email",
}

M.UsernameConfigurationType = {
    type = "structure",
    members = {
        CaseSensitive = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.UserPoolAddOnsType = {
    type = "structure",
    members = {
        AdvancedSecurityMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AdvancedSecurityAdditionalFlows = {
            type = "structure",
        },
    },
}

M.UserPoolTierType = {
    LITE = "LITE",
    ESSENTIALS = "ESSENTIALS",
    PLUS = "PLUS",
}

M.DefaultEmailOptionType = {
    CONFIRM_WITH_LINK = "CONFIRM_WITH_LINK",
    CONFIRM_WITH_CODE = "CONFIRM_WITH_CODE",
}

M.VerificationMessageTemplateType = {
    type = "structure",
    members = {
        SmsMessage = {
            type = "string",
        },
        EmailMessage = {
            type = "string",
        },
        EmailSubject = {
            type = "string",
        },
        EmailMessageByLink = {
            type = "string",
        },
        EmailSubjectByLink = {
            type = "string",
        },
        DefaultEmailOption = {
            type = "string",
        },
    },
}

M.CreateUserPoolInput = {
    type = "structure",
    members = {
        PoolName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Policies = {
            type = "structure",
        },
        DeletionProtection = {
            type = "string",
        },
        LambdaConfig = {
            type = "structure",
        },
        AutoVerifiedAttributes = {
            type = "list",
            member_type = "string",
        },
        AliasAttributes = {
            type = "list",
            member_type = "string",
        },
        UsernameAttributes = {
            type = "list",
            member_type = "string",
        },
        SmsVerificationMessage = {
            type = "string",
        },
        EmailVerificationMessage = {
            type = "string",
        },
        EmailVerificationSubject = {
            type = "string",
        },
        VerificationMessageTemplate = {
            type = "structure",
        },
        SmsAuthenticationMessage = {
            type = "string",
        },
        MfaConfiguration = {
            type = "string",
        },
        UserAttributeUpdateSettings = {
            type = "structure",
        },
        DeviceConfiguration = {
            type = "structure",
        },
        EmailConfiguration = {
            type = "structure",
        },
        SmsConfiguration = {
            type = "structure",
        },
        UserPoolTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        AdminCreateUserConfig = {
            type = "structure",
        },
        Schema = {
            type = "list",
            member_type = "structure",
        },
        UserPoolAddOns = {
            type = "structure",
        },
        UsernameConfiguration = {
            type = "structure",
        },
        AccountRecoverySetting = {
            type = "structure",
        },
        UserPoolTier = {
            type = "string",
        },
    },
}

M.StatusType = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.UserPoolType = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Policies = {
            type = "structure",
        },
        DeletionProtection = {
            type = "string",
        },
        LambdaConfig = {
            type = "structure",
        },
        Status = {
            type = "string",
        },
        LastModifiedDate = {
            type = "timestamp",
        },
        CreationDate = {
            type = "timestamp",
        },
        SchemaAttributes = {
            type = "list",
            member_type = "structure",
        },
        AutoVerifiedAttributes = {
            type = "list",
            member_type = "string",
        },
        AliasAttributes = {
            type = "list",
            member_type = "string",
        },
        UsernameAttributes = {
            type = "list",
            member_type = "string",
        },
        SmsVerificationMessage = {
            type = "string",
        },
        EmailVerificationMessage = {
            type = "string",
        },
        EmailVerificationSubject = {
            type = "string",
        },
        VerificationMessageTemplate = {
            type = "structure",
        },
        SmsAuthenticationMessage = {
            type = "string",
        },
        UserAttributeUpdateSettings = {
            type = "structure",
        },
        MfaConfiguration = {
            type = "string",
        },
        DeviceConfiguration = {
            type = "structure",
        },
        EstimatedNumberOfUsers = {
            type = "number",
        },
        EmailConfiguration = {
            type = "structure",
        },
        SmsConfiguration = {
            type = "structure",
        },
        UserPoolTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        SmsConfigurationFailure = {
            type = "string",
        },
        EmailConfigurationFailure = {
            type = "string",
        },
        Domain = {
            type = "string",
        },
        CustomDomain = {
            type = "string",
        },
        AdminCreateUserConfig = {
            type = "structure",
        },
        UserPoolAddOns = {
            type = "structure",
        },
        UsernameConfiguration = {
            type = "structure",
        },
        Arn = {
            type = "string",
        },
        AccountRecoverySetting = {
            type = "structure",
        },
        UserPoolTier = {
            type = "string",
        },
    },
}

M.CreateUserPoolOutput = {
    type = "structure",
    members = {
        UserPool = {
            type = "structure",
        },
    },
}

M.FeatureUnavailableInTierException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TierChangeNotAllowedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UserPoolTaggingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OAuthFlowType = {
    code = "code",
    implicit = "implicit",
    client_credentials = "client_credentials",
}

M.ExplicitAuthFlowsType = {
    ADMIN_NO_SRP_AUTH = "ADMIN_NO_SRP_AUTH",
    CUSTOM_AUTH_FLOW_ONLY = "CUSTOM_AUTH_FLOW_ONLY",
    USER_PASSWORD_AUTH = "USER_PASSWORD_AUTH",
    ALLOW_ADMIN_USER_PASSWORD_AUTH = "ALLOW_ADMIN_USER_PASSWORD_AUTH",
    ALLOW_CUSTOM_AUTH = "ALLOW_CUSTOM_AUTH",
    ALLOW_USER_PASSWORD_AUTH = "ALLOW_USER_PASSWORD_AUTH",
    ALLOW_USER_SRP_AUTH = "ALLOW_USER_SRP_AUTH",
    ALLOW_REFRESH_TOKEN_AUTH = "ALLOW_REFRESH_TOKEN_AUTH",
    ALLOW_USER_AUTH = "ALLOW_USER_AUTH",
}

M.PreventUserExistenceErrorTypes = {
    LEGACY = "LEGACY",
    ENABLED = "ENABLED",
}

M.FeatureType = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.RefreshTokenRotationType = {
    type = "structure",
    members = {
        Feature = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetryGracePeriodSeconds = {
            type = "number",
        },
    },
}

M.TimeUnitsType = {
    SECONDS = "seconds",
    MINUTES = "minutes",
    HOURS = "hours",
    DAYS = "days",
}

M.TokenValidityUnitsType = {
    type = "structure",
    members = {
        AccessToken = {
            type = "string",
        },
        IdToken = {
            type = "string",
        },
        RefreshToken = {
            type = "string",
        },
    },
}

M.CreateUserPoolClientInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GenerateSecret = {
            type = "boolean",
        },
        ClientSecret = {
            type = "string",
        },
        RefreshTokenValidity = {
            type = "number",
        },
        AccessTokenValidity = {
            type = "number",
        },
        IdTokenValidity = {
            type = "number",
        },
        TokenValidityUnits = {
            type = "structure",
        },
        ReadAttributes = {
            type = "list",
            member_type = "string",
        },
        WriteAttributes = {
            type = "list",
            member_type = "string",
        },
        ExplicitAuthFlows = {
            type = "list",
            member_type = "string",
        },
        SupportedIdentityProviders = {
            type = "list",
            member_type = "string",
        },
        CallbackURLs = {
            type = "list",
            member_type = "string",
        },
        LogoutURLs = {
            type = "list",
            member_type = "string",
        },
        DefaultRedirectURI = {
            type = "string",
        },
        AllowedOAuthFlows = {
            type = "list",
            member_type = "string",
        },
        AllowedOAuthScopes = {
            type = "list",
            member_type = "string",
        },
        AllowedOAuthFlowsUserPoolClient = {
            type = "boolean",
        },
        AnalyticsConfiguration = {
            type = "structure",
        },
        PreventUserExistenceErrors = {
            type = "string",
        },
        EnableTokenRevocation = {
            type = "boolean",
        },
        EnablePropagateAdditionalUserContextData = {
            type = "boolean",
        },
        AuthSessionValidity = {
            type = "number",
        },
        RefreshTokenRotation = {
            type = "structure",
        },
    },
}

M.UserPoolClientType = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
        },
        ClientName = {
            type = "string",
        },
        ClientId = {
            type = "string",
        },
        ClientSecret = {
            type = "string",
        },
        LastModifiedDate = {
            type = "timestamp",
        },
        CreationDate = {
            type = "timestamp",
        },
        RefreshTokenValidity = {
            type = "number",
        },
        AccessTokenValidity = {
            type = "number",
        },
        IdTokenValidity = {
            type = "number",
        },
        TokenValidityUnits = {
            type = "structure",
        },
        ReadAttributes = {
            type = "list",
            member_type = "string",
        },
        WriteAttributes = {
            type = "list",
            member_type = "string",
        },
        ExplicitAuthFlows = {
            type = "list",
            member_type = "string",
        },
        SupportedIdentityProviders = {
            type = "list",
            member_type = "string",
        },
        CallbackURLs = {
            type = "list",
            member_type = "string",
        },
        LogoutURLs = {
            type = "list",
            member_type = "string",
        },
        DefaultRedirectURI = {
            type = "string",
        },
        AllowedOAuthFlows = {
            type = "list",
            member_type = "string",
        },
        AllowedOAuthScopes = {
            type = "list",
            member_type = "string",
        },
        AllowedOAuthFlowsUserPoolClient = {
            type = "boolean",
        },
        AnalyticsConfiguration = {
            type = "structure",
        },
        PreventUserExistenceErrors = {
            type = "string",
        },
        EnableTokenRevocation = {
            type = "boolean",
        },
        EnablePropagateAdditionalUserContextData = {
            type = "boolean",
        },
        AuthSessionValidity = {
            type = "number",
        },
        RefreshTokenRotation = {
            type = "structure",
        },
    },
}

M.CreateUserPoolClientOutput = {
    type = "structure",
    members = {
        UserPoolClient = {
            type = "structure",
        },
    },
}

M.InvalidOAuthFlowException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ScopeDoesNotExistException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CustomDomainConfigType = {
    type = "structure",
    members = {
        CertificateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateUserPoolDomainInput = {
    type = "structure",
    members = {
        Domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ManagedLoginVersion = {
            type = "number",
        },
        CustomDomainConfig = {
            type = "structure",
        },
    },
}

M.CreateUserPoolDomainOutput = {
    type = "structure",
    members = {
        ManagedLoginVersion = {
            type = "number",
        },
        CloudFrontDomain = {
            type = "string",
        },
    },
}

M.DeleteGroupInput = {
    type = "structure",
    members = {
        GroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteGroupOutput = {
    type = "structure",
}

M.DeleteIdentityProviderInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProviderName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIdentityProviderOutput = {
    type = "structure",
}

M.UnsupportedIdentityProviderException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteManagedLoginBrandingInput = {
    type = "structure",
    members = {
        ManagedLoginBrandingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteManagedLoginBrandingOutput = {
    type = "structure",
}

M.DeleteResourceServerInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteResourceServerOutput = {
    type = "structure",
}

M.DeleteTermsInput = {
    type = "structure",
    members = {
        TermsId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTermsOutput = {
    type = "structure",
}

M.DeleteUserInput = {
    type = "structure",
    members = {
        AccessToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteUserOutput = {
    type = "structure",
}

M.DeleteUserAttributesInput = {
    type = "structure",
    members = {
        UserAttributeNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        AccessToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteUserAttributesOutput = {
    type = "structure",
}

M.DeleteUserPoolInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteUserPoolOutput = {
    type = "structure",
}

M.DeleteUserPoolClientInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteUserPoolClientOutput = {
    type = "structure",
}

M.DeleteUserPoolClientSecretInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientSecretId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteUserPoolClientSecretOutput = {
    type = "structure",
}

M.DeleteUserPoolDomainInput = {
    type = "structure",
    members = {
        Domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteUserPoolDomainOutput = {
    type = "structure",
}

M.DeleteWebAuthnCredentialInput = {
    type = "structure",
    members = {
        AccessToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CredentialId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteWebAuthnCredentialOutput = {
    type = "structure",
}

M.DescribeIdentityProviderInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProviderName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeIdentityProviderOutput = {
    type = "structure",
    members = {
        IdentityProvider = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeManagedLoginBrandingInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ManagedLoginBrandingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReturnMergedResources = {
            type = "boolean",
        },
    },
}

M.DescribeManagedLoginBrandingOutput = {
    type = "structure",
    members = {
        ManagedLoginBranding = {
            type = "structure",
        },
    },
}

M.DescribeManagedLoginBrandingByClientInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReturnMergedResources = {
            type = "boolean",
        },
    },
}

M.DescribeManagedLoginBrandingByClientOutput = {
    type = "structure",
    members = {
        ManagedLoginBranding = {
            type = "structure",
        },
    },
}

M.DescribeResourceServerInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeResourceServerOutput = {
    type = "structure",
    members = {
        ResourceServer = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeRiskConfigurationInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientId = {
            type = "string",
        },
    },
}

M.CompromisedCredentialsEventActionType = {
    BLOCK = "BLOCK",
    NO_ACTION = "NO_ACTION",
}

M.CompromisedCredentialsActionsType = {
    type = "structure",
    members = {
        EventAction = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EventFilterType = {
    SIGN_IN = "SIGN_IN",
    PASSWORD_CHANGE = "PASSWORD_CHANGE",
    SIGN_UP = "SIGN_UP",
}

M.CompromisedCredentialsRiskConfigurationType = {
    type = "structure",
    members = {
        EventFilter = {
            type = "list",
            member_type = "string",
        },
        Actions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RiskExceptionConfigurationType = {
    type = "structure",
    members = {
        BlockedIPRangeList = {
            type = "list",
            member_type = "string",
        },
        SkippedIPRangeList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.RiskConfigurationType = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
        },
        ClientId = {
            type = "string",
        },
        CompromisedCredentialsRiskConfiguration = {
            type = "structure",
        },
        AccountTakeoverRiskConfiguration = {
            type = "structure",
        },
        RiskExceptionConfiguration = {
            type = "structure",
        },
        LastModifiedDate = {
            type = "timestamp",
        },
    },
}

M.DescribeRiskConfigurationOutput = {
    type = "structure",
    members = {
        RiskConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeTermsInput = {
    type = "structure",
    members = {
        TermsId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeTermsOutput = {
    type = "structure",
    members = {
        Terms = {
            type = "structure",
        },
    },
}

M.DescribeUserImportJobInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeUserImportJobOutput = {
    type = "structure",
    members = {
        UserImportJob = {
            type = "structure",
        },
    },
}

M.DescribeUserPoolInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeUserPoolOutput = {
    type = "structure",
    members = {
        UserPool = {
            type = "structure",
        },
    },
}

M.DescribeUserPoolClientInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeUserPoolClientOutput = {
    type = "structure",
    members = {
        UserPoolClient = {
            type = "structure",
        },
    },
}

M.DescribeUserPoolDomainInput = {
    type = "structure",
    members = {
        Domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DomainStatusType = {
    CREATING = "CREATING",
    DELETING = "DELETING",
    UPDATING = "UPDATING",
    ACTIVE = "ACTIVE",
    FAILED = "FAILED",
}

M.DomainDescriptionType = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
        },
        AWSAccountId = {
            type = "string",
        },
        Domain = {
            type = "string",
        },
        S3Bucket = {
            type = "string",
        },
        CloudFrontDistribution = {
            type = "string",
        },
        Version = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CustomDomainConfig = {
            type = "structure",
        },
        ManagedLoginVersion = {
            type = "number",
        },
    },
}

M.DescribeUserPoolDomainOutput = {
    type = "structure",
    members = {
        DomainDescription = {
            type = "structure",
        },
    },
}

M.ForgetDeviceInput = {
    type = "structure",
    members = {
        AccessToken = {
            type = "string",
        },
        DeviceKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ForgetDeviceOutput = {
    type = "structure",
}

M.ForgotPasswordInput = {
    type = "structure",
    members = {
        ClientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecretHash = {
            type = "string",
        },
        UserContextData = {
            type = "structure",
        },
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AnalyticsMetadata = {
            type = "structure",
        },
        ClientMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CodeDeliveryDetailsType = {
    type = "structure",
    members = {
        Destination = {
            type = "string",
        },
        DeliveryMedium = {
            type = "string",
        },
        AttributeName = {
            type = "string",
        },
    },
}

M.ForgotPasswordOutput = {
    type = "structure",
    members = {
        CodeDeliveryDetails = {
            type = "structure",
        },
    },
}

M.GetCSVHeaderInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetCSVHeaderOutput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
        },
        CSVHeader = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GetDeviceInput = {
    type = "structure",
    members = {
        DeviceKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccessToken = {
            type = "string",
        },
    },
}

M.GetDeviceOutput = {
    type = "structure",
    members = {
        Device = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetGroupInput = {
    type = "structure",
    members = {
        GroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetGroupOutput = {
    type = "structure",
    members = {
        Group = {
            type = "structure",
        },
    },
}

M.GetIdentityProviderByIdentifierInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdpIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetIdentityProviderByIdentifierOutput = {
    type = "structure",
    members = {
        IdentityProvider = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetLogDeliveryConfigurationInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CloudWatchLogsConfigurationType = {
    type = "structure",
    members = {
        LogGroupArn = {
            type = "string",
        },
    },
}

M.EventSourceName = {
    USER_NOTIFICATION = "userNotification",
    USER_AUTH_EVENTS = "userAuthEvents",
}

M.FirehoseConfigurationType = {
    type = "structure",
    members = {
        StreamArn = {
            type = "string",
        },
    },
}

M.LogLevel = {
    ERROR = "ERROR",
    INFO = "INFO",
}

M.S3ConfigurationType = {
    type = "structure",
    members = {
        BucketArn = {
            type = "string",
        },
    },
}

M.LogConfigurationType = {
    type = "structure",
    members = {
        LogLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CloudWatchLogsConfiguration = {
            type = "structure",
        },
        S3Configuration = {
            type = "structure",
        },
        FirehoseConfiguration = {
            type = "structure",
        },
    },
}

M.LogDeliveryConfigurationType = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogConfigurations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetLogDeliveryConfigurationOutput = {
    type = "structure",
    members = {
        LogDeliveryConfiguration = {
            type = "structure",
        },
    },
}

M.GetSigningCertificateInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSigningCertificateOutput = {
    type = "structure",
    members = {
        Certificate = {
            type = "string",
        },
    },
}

M.GetTokensFromRefreshTokenInput = {
    type = "structure",
    members = {
        RefreshToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientSecret = {
            type = "string",
        },
        DeviceKey = {
            type = "string",
        },
        ClientMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetTokensFromRefreshTokenOutput = {
    type = "structure",
    members = {
        AuthenticationResult = {
            type = "structure",
        },
    },
}

M.RefreshTokenReuseException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetUICustomizationInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientId = {
            type = "string",
        },
    },
}

M.UICustomizationType = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
        },
        ClientId = {
            type = "string",
        },
        ImageUrl = {
            type = "string",
        },
        CSS = {
            type = "string",
        },
        CSSVersion = {
            type = "string",
        },
        LastModifiedDate = {
            type = "timestamp",
        },
        CreationDate = {
            type = "timestamp",
        },
    },
}

M.GetUICustomizationOutput = {
    type = "structure",
    members = {
        UICustomization = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetUserInput = {
    type = "structure",
    members = {
        AccessToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetUserOutput = {
    type = "structure",
    members = {
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserAttributes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        MFAOptions = {
            type = "list",
            member_type = "structure",
        },
        PreferredMfaSetting = {
            type = "string",
        },
        UserMFASettingList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GetUserAttributeVerificationCodeInput = {
    type = "structure",
    members = {
        AccessToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetUserAttributeVerificationCodeOutput = {
    type = "structure",
    members = {
        CodeDeliveryDetails = {
            type = "structure",
        },
    },
}

M.GetUserAuthFactorsInput = {
    type = "structure",
    members = {
        AccessToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetUserAuthFactorsOutput = {
    type = "structure",
    members = {
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PreferredMfaSetting = {
            type = "string",
        },
        UserMFASettingList = {
            type = "list",
            member_type = "string",
        },
        ConfiguredUserAuthFactors = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GetUserPoolMfaConfigInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EmailMfaConfigType = {
    type = "structure",
    members = {
        Message = {
            type = "string",
        },
        Subject = {
            type = "string",
        },
    },
}

M.SmsMfaConfigType = {
    type = "structure",
    members = {
        SmsAuthenticationMessage = {
            type = "string",
        },
        SmsConfiguration = {
            type = "structure",
        },
    },
}

M.SoftwareTokenMfaConfigType = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.WebAuthnFactorConfigurationType = {
    SINGLE_FACTOR = "SINGLE_FACTOR",
    MULTI_FACTOR_WITH_USER_VERIFICATION = "MULTI_FACTOR_WITH_USER_VERIFICATION",
}

M.UserVerificationType = {
    REQUIRED = "required",
    PREFERRED = "preferred",
}

M.WebAuthnConfigurationType = {
    type = "structure",
    members = {
        RelyingPartyId = {
            type = "string",
        },
        UserVerification = {
            type = "string",
        },
        FactorConfiguration = {
            type = "string",
        },
    },
}

M.GetUserPoolMfaConfigOutput = {
    type = "structure",
    members = {
        SmsMfaConfiguration = {
            type = "structure",
        },
        SoftwareTokenMfaConfiguration = {
            type = "structure",
        },
        EmailMfaConfiguration = {
            type = "structure",
        },
        MfaConfiguration = {
            type = "string",
        },
        WebAuthnConfiguration = {
            type = "structure",
        },
    },
}

M.GlobalSignOutInput = {
    type = "structure",
    members = {
        AccessToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GlobalSignOutOutput = {
    type = "structure",
}

M.InitiateAuthInput = {
    type = "structure",
    members = {
        AuthFlow = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ClientMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ClientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AnalyticsMetadata = {
            type = "structure",
        },
        UserContextData = {
            type = "structure",
        },
        Session = {
            type = "string",
        },
    },
}

M.InitiateAuthOutput = {
    type = "structure",
    members = {
        ChallengeName = {
            type = "string",
        },
        Session = {
            type = "string",
        },
        ChallengeParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        AuthenticationResult = {
            type = "structure",
        },
        AvailableChallenges = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListDevicesInput = {
    type = "structure",
    members = {
        AccessToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Limit = {
            type = "number",
        },
        PaginationToken = {
            type = "string",
        },
    },
}

M.ListDevicesOutput = {
    type = "structure",
    members = {
        Devices = {
            type = "list",
            member_type = "structure",
        },
        PaginationToken = {
            type = "string",
        },
    },
}

M.ListGroupsInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Limit = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListGroupsOutput = {
    type = "structure",
    members = {
        Groups = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListIdentityProvidersInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ProviderDescription = {
    type = "structure",
    members = {
        ProviderName = {
            type = "string",
        },
        ProviderType = {
            type = "string",
        },
        LastModifiedDate = {
            type = "timestamp",
        },
        CreationDate = {
            type = "timestamp",
        },
    },
}

M.ListIdentityProvidersOutput = {
    type = "structure",
    members = {
        Providers = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListResourceServersInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListResourceServersOutput = {
    type = "structure",
    members = {
        ResourceServers = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListTermsInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.TermsDescriptionType = {
    type = "structure",
    members = {
        TermsId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TermsName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Enforcement = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTermsOutput = {
    type = "structure",
    members = {
        Terms = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListUserImportJobsInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                required = true,
            },
        },
        PaginationToken = {
            type = "string",
        },
    },
}

M.ListUserImportJobsOutput = {
    type = "structure",
    members = {
        UserImportJobs = {
            type = "list",
            member_type = "structure",
        },
        PaginationToken = {
            type = "string",
        },
    },
}

M.ListUserPoolClientsInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UserPoolClientDescription = {
    type = "structure",
    members = {
        ClientId = {
            type = "string",
        },
        UserPoolId = {
            type = "string",
        },
        ClientName = {
            type = "string",
        },
    },
}

M.ListUserPoolClientsOutput = {
    type = "structure",
    members = {
        UserPoolClients = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListUserPoolClientSecretsInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListUserPoolClientSecretsOutput = {
    type = "structure",
    members = {
        ClientSecrets = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListUserPoolsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.UserPoolDescriptionType = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        LambdaConfig = {
            type = "structure",
        },
        Status = {
            type = "string",
        },
        LastModifiedDate = {
            type = "timestamp",
        },
        CreationDate = {
            type = "timestamp",
        },
    },
}

M.ListUserPoolsOutput = {
    type = "structure",
    members = {
        UserPools = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListUsersInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributesToGet = {
            type = "list",
            member_type = "string",
        },
        Limit = {
            type = "number",
        },
        PaginationToken = {
            type = "string",
        },
        Filter = {
            type = "string",
        },
    },
}

M.ListUsersOutput = {
    type = "structure",
    members = {
        Users = {
            type = "list",
            member_type = "structure",
        },
        PaginationToken = {
            type = "string",
        },
    },
}

M.ListUsersInGroupInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Limit = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListUsersInGroupOutput = {
    type = "structure",
    members = {
        Users = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListWebAuthnCredentialsInput = {
    type = "structure",
    members = {
        AccessToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.WebAuthnCredentialDescription = {
    type = "structure",
    members = {
        CredentialId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FriendlyCredentialName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RelyingPartyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthenticatorAttachment = {
            type = "string",
        },
        AuthenticatorTransports = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListWebAuthnCredentialsOutput = {
    type = "structure",
    members = {
        Credentials = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ResendConfirmationCodeInput = {
    type = "structure",
    members = {
        ClientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecretHash = {
            type = "string",
        },
        UserContextData = {
            type = "structure",
        },
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AnalyticsMetadata = {
            type = "structure",
        },
        ClientMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ResendConfirmationCodeOutput = {
    type = "structure",
    members = {
        CodeDeliveryDetails = {
            type = "structure",
        },
    },
}

M.RespondToAuthChallengeInput = {
    type = "structure",
    members = {
        ClientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChallengeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Session = {
            type = "string",
        },
        ChallengeResponses = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        AnalyticsMetadata = {
            type = "structure",
        },
        UserContextData = {
            type = "structure",
        },
        ClientMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.RespondToAuthChallengeOutput = {
    type = "structure",
    members = {
        ChallengeName = {
            type = "string",
        },
        Session = {
            type = "string",
        },
        ChallengeParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        AuthenticationResult = {
            type = "structure",
        },
    },
}

M.RevokeTokenInput = {
    type = "structure",
    members = {
        Token = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientSecret = {
            type = "string",
        },
    },
}

M.RevokeTokenOutput = {
    type = "structure",
}

M.UnauthorizedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnsupportedTokenTypeException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SetLogDeliveryConfigurationInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogConfigurations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SetLogDeliveryConfigurationOutput = {
    type = "structure",
    members = {
        LogDeliveryConfiguration = {
            type = "structure",
        },
    },
}

M.SetRiskConfigurationInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientId = {
            type = "string",
        },
        CompromisedCredentialsRiskConfiguration = {
            type = "structure",
        },
        AccountTakeoverRiskConfiguration = {
            type = "structure",
        },
        RiskExceptionConfiguration = {
            type = "structure",
        },
    },
}

M.SetRiskConfigurationOutput = {
    type = "structure",
    members = {
        RiskConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SetUICustomizationInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientId = {
            type = "string",
        },
        CSS = {
            type = "string",
        },
        ImageFile = {
            type = "blob",
        },
    },
}

M.SetUICustomizationOutput = {
    type = "structure",
    members = {
        UICustomization = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SetUserMFAPreferenceInput = {
    type = "structure",
    members = {
        SMSMfaSettings = {
            type = "structure",
        },
        SoftwareTokenMfaSettings = {
            type = "structure",
        },
        EmailMfaSettings = {
            type = "structure",
        },
        WebAuthnMfaSettings = {
            type = "structure",
        },
        AccessToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SetUserMFAPreferenceOutput = {
    type = "structure",
}

M.SetUserPoolMfaConfigInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SmsMfaConfiguration = {
            type = "structure",
        },
        SoftwareTokenMfaConfiguration = {
            type = "structure",
        },
        EmailMfaConfiguration = {
            type = "structure",
        },
        MfaConfiguration = {
            type = "string",
        },
        WebAuthnConfiguration = {
            type = "structure",
        },
    },
}

M.SetUserPoolMfaConfigOutput = {
    type = "structure",
    members = {
        SmsMfaConfiguration = {
            type = "structure",
        },
        SoftwareTokenMfaConfiguration = {
            type = "structure",
        },
        EmailMfaConfiguration = {
            type = "structure",
        },
        MfaConfiguration = {
            type = "string",
        },
        WebAuthnConfiguration = {
            type = "structure",
        },
    },
}

M.SetUserSettingsInput = {
    type = "structure",
    members = {
        AccessToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MFAOptions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SetUserSettingsOutput = {
    type = "structure",
}

M.SignUpInput = {
    type = "structure",
    members = {
        ClientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecretHash = {
            type = "string",
        },
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Password = {
            type = "string",
        },
        UserAttributes = {
            type = "list",
            member_type = "structure",
        },
        ValidationData = {
            type = "list",
            member_type = "structure",
        },
        AnalyticsMetadata = {
            type = "structure",
        },
        UserContextData = {
            type = "structure",
        },
        ClientMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.SignUpOutput = {
    type = "structure",
    members = {
        UserConfirmed = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        CodeDeliveryDetails = {
            type = "structure",
        },
        UserSub = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Session = {
            type = "string",
        },
    },
}

M.StartUserImportJobInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartUserImportJobOutput = {
    type = "structure",
    members = {
        UserImportJob = {
            type = "structure",
        },
    },
}

M.StartWebAuthnRegistrationInput = {
    type = "structure",
    members = {
        AccessToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartWebAuthnRegistrationOutput = {
    type = "structure",
    members = {
        CredentialCreationOptions = {
            type = "document",
            traits = {
                required = true,
            },
        },
    },
}

M.WebAuthnConfigurationMissingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StopUserImportJobInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopUserImportJobOutput = {
    type = "structure",
    members = {
        UserImportJob = {
            type = "structure",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateAuthEventFeedbackInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FeedbackToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FeedbackValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAuthEventFeedbackOutput = {
    type = "structure",
}

M.UpdateDeviceStatusInput = {
    type = "structure",
    members = {
        AccessToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeviceKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeviceRememberedStatus = {
            type = "string",
        },
    },
}

M.UpdateDeviceStatusOutput = {
    type = "structure",
}

M.UpdateGroupInput = {
    type = "structure",
    members = {
        GroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        Precedence = {
            type = "number",
        },
    },
}

M.UpdateGroupOutput = {
    type = "structure",
    members = {
        Group = {
            type = "structure",
        },
    },
}

M.UpdateIdentityProviderInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProviderName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProviderDetails = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        AttributeMapping = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        IdpIdentifiers = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UpdateIdentityProviderOutput = {
    type = "structure",
    members = {
        IdentityProvider = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateManagedLoginBrandingInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
        },
        ManagedLoginBrandingId = {
            type = "string",
        },
        UseCognitoProvidedValues = {
            type = "boolean",
        },
        Settings = {
            type = "document",
        },
        Assets = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateManagedLoginBrandingOutput = {
    type = "structure",
    members = {
        ManagedLoginBranding = {
            type = "structure",
        },
    },
}

M.UpdateResourceServerInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Scopes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateResourceServerOutput = {
    type = "structure",
    members = {
        ResourceServer = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateTermsInput = {
    type = "structure",
    members = {
        TermsId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TermsName = {
            type = "string",
        },
        TermsSource = {
            type = "string",
        },
        Enforcement = {
            type = "string",
        },
        Links = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.UpdateTermsOutput = {
    type = "structure",
    members = {
        Terms = {
            type = "structure",
        },
    },
}

M.UpdateUserAttributesInput = {
    type = "structure",
    members = {
        UserAttributes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        AccessToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.UpdateUserAttributesOutput = {
    type = "structure",
    members = {
        CodeDeliveryDetailsList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateUserPoolInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Policies = {
            type = "structure",
        },
        DeletionProtection = {
            type = "string",
        },
        LambdaConfig = {
            type = "structure",
        },
        AutoVerifiedAttributes = {
            type = "list",
            member_type = "string",
        },
        SmsVerificationMessage = {
            type = "string",
        },
        EmailVerificationMessage = {
            type = "string",
        },
        EmailVerificationSubject = {
            type = "string",
        },
        VerificationMessageTemplate = {
            type = "structure",
        },
        SmsAuthenticationMessage = {
            type = "string",
        },
        UserAttributeUpdateSettings = {
            type = "structure",
        },
        MfaConfiguration = {
            type = "string",
        },
        DeviceConfiguration = {
            type = "structure",
        },
        EmailConfiguration = {
            type = "structure",
        },
        SmsConfiguration = {
            type = "structure",
        },
        UserPoolTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        AdminCreateUserConfig = {
            type = "structure",
        },
        UserPoolAddOns = {
            type = "structure",
        },
        AccountRecoverySetting = {
            type = "structure",
        },
        PoolName = {
            type = "string",
        },
        UserPoolTier = {
            type = "string",
        },
    },
}

M.UpdateUserPoolOutput = {
    type = "structure",
}

M.UpdateUserPoolClientInput = {
    type = "structure",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientName = {
            type = "string",
        },
        RefreshTokenValidity = {
            type = "number",
        },
        AccessTokenValidity = {
            type = "number",
        },
        IdTokenValidity = {
            type = "number",
        },
        TokenValidityUnits = {
            type = "structure",
        },
        ReadAttributes = {
            type = "list",
            member_type = "string",
        },
        WriteAttributes = {
            type = "list",
            member_type = "string",
        },
        ExplicitAuthFlows = {
            type = "list",
            member_type = "string",
        },
        SupportedIdentityProviders = {
            type = "list",
            member_type = "string",
        },
        CallbackURLs = {
            type = "list",
            member_type = "string",
        },
        LogoutURLs = {
            type = "list",
            member_type = "string",
        },
        DefaultRedirectURI = {
            type = "string",
        },
        AllowedOAuthFlows = {
            type = "list",
            member_type = "string",
        },
        AllowedOAuthScopes = {
            type = "list",
            member_type = "string",
        },
        AllowedOAuthFlowsUserPoolClient = {
            type = "boolean",
        },
        AnalyticsConfiguration = {
            type = "structure",
        },
        PreventUserExistenceErrors = {
            type = "string",
        },
        EnableTokenRevocation = {
            type = "boolean",
        },
        EnablePropagateAdditionalUserContextData = {
            type = "boolean",
        },
        AuthSessionValidity = {
            type = "number",
        },
        RefreshTokenRotation = {
            type = "structure",
        },
    },
}

M.UpdateUserPoolClientOutput = {
    type = "structure",
    members = {
        UserPoolClient = {
            type = "structure",
        },
    },
}

M.UpdateUserPoolDomainInput = {
    type = "structure",
    members = {
        Domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ManagedLoginVersion = {
            type = "number",
        },
        CustomDomainConfig = {
            type = "structure",
        },
    },
}

M.UpdateUserPoolDomainOutput = {
    type = "structure",
    members = {
        ManagedLoginVersion = {
            type = "number",
        },
        CloudFrontDomain = {
            type = "string",
        },
    },
}

M.EnableSoftwareTokenMFAException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.VerifySoftwareTokenInput = {
    type = "structure",
    members = {
        AccessToken = {
            type = "string",
        },
        Session = {
            type = "string",
        },
        UserCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FriendlyDeviceName = {
            type = "string",
        },
    },
}

M.VerifySoftwareTokenResponseType = {
    SUCCESS = "SUCCESS",
    ERROR = "ERROR",
}

M.VerifySoftwareTokenOutput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        Session = {
            type = "string",
        },
    },
}

M.VerifyUserAttributeInput = {
    type = "structure",
    members = {
        AccessToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VerifyUserAttributeOutput = {
    type = "structure",
}

return M
