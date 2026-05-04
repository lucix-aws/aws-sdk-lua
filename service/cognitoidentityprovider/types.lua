local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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
    id = "RecoveryOptionType",
    members = {
        Priority = {
            type = "integer",
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
    id = "AccountRecoverySettingType",
    members = {
        RecoveryMechanisms = {
            type = "list",
            member = M.RecoveryOptionType,
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
    id = "AccountTakeoverActionType",
    members = {
        Notify = {
            type = "boolean",
            traits = {
                default = false,
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
    id = "AccountTakeoverActionsType",
    members = {
        LowAction = M.AccountTakeoverActionType,
        MediumAction = M.AccountTakeoverActionType,
        HighAction = M.AccountTakeoverActionType,
    },
}

M.NotifyEmailType = {
    type = "structure",
    id = "NotifyEmailType",
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
    id = "NotifyConfigurationType",
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
        BlockEmail = M.NotifyEmailType,
        NoActionEmail = M.NotifyEmailType,
        MfaEmail = M.NotifyEmailType,
    },
}

M.AccountTakeoverRiskConfigurationType = {
    type = "structure",
    id = "AccountTakeoverRiskConfigurationType",
    members = {
        NotifyConfiguration = M.NotifyConfigurationType,
        Actions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AccountTakeoverActionsType }),
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
    id = "NumberAttributeConstraintsType",
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
    id = "StringAttributeConstraintsType",
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
    id = "SchemaAttributeType",
    members = {
        Name = {
            type = "string",
        },
        AttributeDataType = {
            type = "string",
        },
        DeveloperOnlyAttribute = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        Mutable = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        Required = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        NumberAttributeConstraints = M.NumberAttributeConstraintsType,
        StringAttributeConstraints = M.StringAttributeConstraintsType,
    },
}

M.AddCustomAttributesInput = {
    type = "structure",
    id = "AddCustomAttributesInput",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CustomAttributes = {
            type = "list",
            member = M.SchemaAttributeType,
            traits = {
                required = true,
            },
        },
    },
}

M.AddCustomAttributesOutput = {
    type = "structure",
    id = "AddCustomAttributesOutput",
}

M.InternalErrorException = {
    type = "structure",
    id = "InternalErrorException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidParameterException = {
    type = "structure",
    id = "InvalidParameterException",
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
    id = "NotAuthorizedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    id = "TooManyRequestsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UserImportInProgressException = {
    type = "structure",
    id = "UserImportInProgressException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AddUserPoolClientSecretInput = {
    type = "structure",
    id = "AddUserPoolClientSecretInput",
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
    id = "ClientSecretDescriptorType",
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
    id = "AddUserPoolClientSecretOutput",
    members = {
        ClientSecretDescriptor = M.ClientSecretDescriptorType,
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AdminAddUserToGroupInput = {
    type = "structure",
    id = "AdminAddUserToGroupInput",
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
    id = "AdminAddUserToGroupOutput",
}

M.UserNotFoundException = {
    type = "structure",
    id = "UserNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AdminConfirmSignUpInput = {
    type = "structure",
    id = "AdminConfirmSignUpInput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.AdminConfirmSignUpOutput = {
    type = "structure",
    id = "AdminConfirmSignUpOutput",
}

M.InvalidLambdaResponseException = {
    type = "structure",
    id = "InvalidLambdaResponseException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyFailedAttemptsException = {
    type = "structure",
    id = "TooManyFailedAttemptsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnexpectedLambdaException = {
    type = "structure",
    id = "UnexpectedLambdaException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UserLambdaValidationException = {
    type = "structure",
    id = "UserLambdaValidationException",
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
    id = "AttributeType",
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
    id = "AdminCreateUserInput",
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
            member = M.AttributeType,
        },
        ValidationData = {
            type = "list",
            member = M.AttributeType,
        },
        TemporaryPassword = {
            type = "string",
        },
        ForceAliasCreation = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        MessageAction = {
            type = "string",
        },
        DesiredDeliveryMediums = {
            type = "list",
            member = { type = "string" },
        },
        ClientMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.MFAOptionType = {
    type = "structure",
    id = "MFAOptionType",
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
    id = "UserType",
    members = {
        Username = {
            type = "string",
        },
        Attributes = {
            type = "list",
            member = M.AttributeType,
        },
        UserCreateDate = {
            type = "timestamp",
        },
        UserLastModifiedDate = {
            type = "timestamp",
        },
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        UserStatus = {
            type = "string",
        },
        MFAOptions = {
            type = "list",
            member = M.MFAOptionType,
        },
    },
}

M.AdminCreateUserOutput = {
    type = "structure",
    id = "AdminCreateUserOutput",
    members = {
        User = M.UserType,
    },
}

M.CodeDeliveryFailureException = {
    type = "structure",
    id = "CodeDeliveryFailureException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidPasswordException = {
    type = "structure",
    id = "InvalidPasswordException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidSmsRoleAccessPolicyException = {
    type = "structure",
    id = "InvalidSmsRoleAccessPolicyException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidSmsRoleTrustRelationshipException = {
    type = "structure",
    id = "InvalidSmsRoleTrustRelationshipException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PreconditionNotMetException = {
    type = "structure",
    id = "PreconditionNotMetException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnsupportedUserStateException = {
    type = "structure",
    id = "UnsupportedUserStateException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UsernameExistsException = {
    type = "structure",
    id = "UsernameExistsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MessageTemplateType = {
    type = "structure",
    id = "MessageTemplateType",
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
    id = "AdminCreateUserConfigType",
    members = {
        AllowAdminCreateUserOnly = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        UnusedAccountValidityDays = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        InviteMessageTemplate = M.MessageTemplateType,
    },
}

M.AdminDeleteUserInput = {
    type = "structure",
    id = "AdminDeleteUserInput",
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
    id = "AdminDeleteUserOutput",
}

M.AdminDeleteUserAttributesInput = {
    type = "structure",
    id = "AdminDeleteUserAttributesInput",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AdminDeleteUserAttributesOutput = {
    type = "structure",
    id = "AdminDeleteUserAttributesOutput",
}

M.ProviderUserIdentifierType = {
    type = "structure",
    id = "ProviderUserIdentifierType",
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
    id = "AdminDisableProviderForUserInput",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        User = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProviderUserIdentifierType }),
    },
}

M.AdminDisableProviderForUserOutput = {
    type = "structure",
    id = "AdminDisableProviderForUserOutput",
}

M.AliasExistsException = {
    type = "structure",
    id = "AliasExistsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AdminDisableUserInput = {
    type = "structure",
    id = "AdminDisableUserInput",
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
    id = "AdminDisableUserOutput",
}

M.AdminEnableUserInput = {
    type = "structure",
    id = "AdminEnableUserInput",
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
    id = "AdminEnableUserOutput",
}

M.AdminForgetDeviceInput = {
    type = "structure",
    id = "AdminForgetDeviceInput",
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
    id = "AdminForgetDeviceOutput",
}

M.InvalidUserPoolConfigurationException = {
    type = "structure",
    id = "InvalidUserPoolConfigurationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AdminGetDeviceInput = {
    type = "structure",
    id = "AdminGetDeviceInput",
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
    id = "DeviceType",
    members = {
        DeviceKey = {
            type = "string",
        },
        DeviceAttributes = {
            type = "list",
            member = M.AttributeType,
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
    id = "AdminGetDeviceOutput",
    members = {
        Device = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DeviceType }),
    },
}

M.AdminGetUserInput = {
    type = "structure",
    id = "AdminGetUserInput",
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
    id = "AdminGetUserOutput",
    members = {
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserAttributes = {
            type = "list",
            member = M.AttributeType,
        },
        UserCreateDate = {
            type = "timestamp",
        },
        UserLastModifiedDate = {
            type = "timestamp",
        },
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        UserStatus = {
            type = "string",
        },
        MFAOptions = {
            type = "list",
            member = M.MFAOptionType,
        },
        PreferredMfaSetting = {
            type = "string",
        },
        UserMFASettingList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AnalyticsMetadataType = {
    type = "structure",
    id = "AnalyticsMetadataType",
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
    id = "HttpHeader",
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
    id = "ContextDataType",
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
            member = M.HttpHeader,
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
    id = "AdminInitiateAuthInput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        ClientMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        AnalyticsMetadata = M.AnalyticsMetadataType,
        ContextData = M.ContextDataType,
        Session = {
            type = "string",
        },
    },
}

M.NewDeviceMetadataType = {
    type = "structure",
    id = "NewDeviceMetadataType",
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
    id = "AuthenticationResultType",
    members = {
        AccessToken = {
            type = "string",
        },
        ExpiresIn = {
            type = "integer",
            traits = {
                default = 0,
            },
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
        NewDeviceMetadata = M.NewDeviceMetadataType,
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
    id = "AdminInitiateAuthOutput",
    members = {
        ChallengeName = {
            type = "string",
        },
        Session = {
            type = "string",
        },
        ChallengeParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        AuthenticationResult = M.AuthenticationResultType,
        AvailableChallenges = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.InvalidEmailRoleAccessPolicyException = {
    type = "structure",
    id = "InvalidEmailRoleAccessPolicyException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MFAMethodNotFoundException = {
    type = "structure",
    id = "MFAMethodNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PasswordResetRequiredException = {
    type = "structure",
    id = "PasswordResetRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnsupportedOperationException = {
    type = "structure",
    id = "UnsupportedOperationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UserNotConfirmedException = {
    type = "structure",
    id = "UserNotConfirmedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AdminLinkProviderForUserInput = {
    type = "structure",
    id = "AdminLinkProviderForUserInput",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationUser = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProviderUserIdentifierType }),
        SourceUser = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProviderUserIdentifierType }),
    },
}

M.AdminLinkProviderForUserOutput = {
    type = "structure",
    id = "AdminLinkProviderForUserOutput",
}

M.AdminListDevicesInput = {
    type = "structure",
    id = "AdminListDevicesInput",
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
            type = "integer",
        },
        PaginationToken = {
            type = "string",
        },
    },
}

M.AdminListDevicesOutput = {
    type = "structure",
    id = "AdminListDevicesOutput",
    members = {
        Devices = {
            type = "list",
            member = M.DeviceType,
        },
        PaginationToken = {
            type = "string",
        },
    },
}

M.AdminListGroupsForUserInput = {
    type = "structure",
    id = "AdminListGroupsForUserInput",
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
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GroupType = {
    type = "structure",
    id = "GroupType",
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
            type = "integer",
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
    id = "AdminListGroupsForUserOutput",
    members = {
        Groups = {
            type = "list",
            member = M.GroupType,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.AdminListUserAuthEventsInput = {
    type = "structure",
    id = "AdminListUserAuthEventsInput",
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
            type = "integer",
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
    id = "ChallengeResponseType",
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
    id = "EventContextDataType",
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
    id = "EventFeedbackType",
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
    id = "EventRiskType",
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
    id = "AuthEventType",
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
        EventRisk = M.EventRiskType,
        ChallengeResponses = {
            type = "list",
            member = M.ChallengeResponseType,
        },
        EventContextData = M.EventContextDataType,
        EventFeedback = M.EventFeedbackType,
    },
}

M.AdminListUserAuthEventsOutput = {
    type = "structure",
    id = "AdminListUserAuthEventsOutput",
    members = {
        AuthEvents = {
            type = "list",
            member = M.AuthEventType,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UserPoolAddOnNotEnabledException = {
    type = "structure",
    id = "UserPoolAddOnNotEnabledException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AdminRemoveUserFromGroupInput = {
    type = "structure",
    id = "AdminRemoveUserFromGroupInput",
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
    id = "AdminRemoveUserFromGroupOutput",
}

M.AdminResetUserPasswordInput = {
    type = "structure",
    id = "AdminResetUserPasswordInput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.AdminResetUserPasswordOutput = {
    type = "structure",
    id = "AdminResetUserPasswordOutput",
}

M.AdminRespondToAuthChallengeInput = {
    type = "structure",
    id = "AdminRespondToAuthChallengeInput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        Session = {
            type = "string",
        },
        AnalyticsMetadata = M.AnalyticsMetadataType,
        ContextData = M.ContextDataType,
        ClientMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.AdminRespondToAuthChallengeOutput = {
    type = "structure",
    id = "AdminRespondToAuthChallengeOutput",
    members = {
        ChallengeName = {
            type = "string",
        },
        Session = {
            type = "string",
        },
        ChallengeParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        AuthenticationResult = M.AuthenticationResultType,
    },
}

M.CodeMismatchException = {
    type = "structure",
    id = "CodeMismatchException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ExpiredCodeException = {
    type = "structure",
    id = "ExpiredCodeException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PasswordHistoryPolicyViolationException = {
    type = "structure",
    id = "PasswordHistoryPolicyViolationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SoftwareTokenMFANotFoundException = {
    type = "structure",
    id = "SoftwareTokenMFANotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EmailMfaSettingsType = {
    type = "structure",
    id = "EmailMfaSettingsType",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        PreferredMfa = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.SMSMfaSettingsType = {
    type = "structure",
    id = "SMSMfaSettingsType",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        PreferredMfa = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.SoftwareTokenMfaSettingsType = {
    type = "structure",
    id = "SoftwareTokenMfaSettingsType",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        PreferredMfa = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.WebAuthnMfaSettingsType = {
    type = "structure",
    id = "WebAuthnMfaSettingsType",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.AdminSetUserMFAPreferenceInput = {
    type = "structure",
    id = "AdminSetUserMFAPreferenceInput",
    members = {
        SMSMfaSettings = M.SMSMfaSettingsType,
        SoftwareTokenMfaSettings = M.SoftwareTokenMfaSettingsType,
        EmailMfaSettings = M.EmailMfaSettingsType,
        WebAuthnMfaSettings = M.WebAuthnMfaSettingsType,
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
    id = "AdminSetUserMFAPreferenceOutput",
}

M.AdminSetUserPasswordInput = {
    type = "structure",
    id = "AdminSetUserPasswordInput",
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
            traits = {
                default = false,
            },
        },
    },
}

M.AdminSetUserPasswordOutput = {
    type = "structure",
    id = "AdminSetUserPasswordOutput",
}

M.AdminSetUserSettingsInput = {
    type = "structure",
    id = "AdminSetUserSettingsInput",
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
            member = M.MFAOptionType,
            traits = {
                required = true,
            },
        },
    },
}

M.AdminSetUserSettingsOutput = {
    type = "structure",
    id = "AdminSetUserSettingsOutput",
}

M.AdminUpdateAuthEventFeedbackInput = {
    type = "structure",
    id = "AdminUpdateAuthEventFeedbackInput",
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
    id = "AdminUpdateAuthEventFeedbackOutput",
}

M.DeviceRememberedStatusType = {
    REMEMBERED = "remembered",
    NOT_REMEMBERED = "not_remembered",
}

M.AdminUpdateDeviceStatusInput = {
    type = "structure",
    id = "AdminUpdateDeviceStatusInput",
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
    id = "AdminUpdateDeviceStatusOutput",
}

M.AdminUpdateUserAttributesInput = {
    type = "structure",
    id = "AdminUpdateUserAttributesInput",
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
            member = M.AttributeType,
            traits = {
                required = true,
            },
        },
        ClientMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.AdminUpdateUserAttributesOutput = {
    type = "structure",
    id = "AdminUpdateUserAttributesOutput",
}

M.AdminUserGlobalSignOutInput = {
    type = "structure",
    id = "AdminUserGlobalSignOutInput",
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
    id = "AdminUserGlobalSignOutOutput",
}

M.AdvancedSecurityEnabledModeType = {
    AUDIT = "AUDIT",
    ENFORCED = "ENFORCED",
}

M.AdvancedSecurityAdditionalFlowsType = {
    type = "structure",
    id = "AdvancedSecurityAdditionalFlowsType",
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
    id = "AnalyticsConfigurationType",
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
            traits = {
                default = false,
            },
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
    id = "AssetType",
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
    id = "AssociateSoftwareTokenInput",
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
    id = "AssociateSoftwareTokenOutput",
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
    id = "ConcurrentModificationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ForbiddenException = {
    type = "structure",
    id = "ForbiddenException",
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
    id = "ChangePasswordInput",
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
    id = "ChangePasswordOutput",
}

M.CompleteWebAuthnRegistrationInput = {
    type = "structure",
    id = "CompleteWebAuthnRegistrationInput",
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
    id = "CompleteWebAuthnRegistrationOutput",
}

M.WebAuthnChallengeNotFoundException = {
    type = "structure",
    id = "WebAuthnChallengeNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.WebAuthnClientMismatchException = {
    type = "structure",
    id = "WebAuthnClientMismatchException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.WebAuthnCredentialNotSupportedException = {
    type = "structure",
    id = "WebAuthnCredentialNotSupportedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.WebAuthnNotEnabledException = {
    type = "structure",
    id = "WebAuthnNotEnabledException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.WebAuthnOriginNotAllowedException = {
    type = "structure",
    id = "WebAuthnOriginNotAllowedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.WebAuthnRelyingPartyMismatchException = {
    type = "structure",
    id = "WebAuthnRelyingPartyMismatchException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeviceSecretVerifierConfigType = {
    type = "structure",
    id = "DeviceSecretVerifierConfigType",
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
    id = "ConfirmDeviceInput",
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
        DeviceSecretVerifierConfig = M.DeviceSecretVerifierConfigType,
        DeviceName = {
            type = "string",
        },
    },
}

M.ConfirmDeviceOutput = {
    type = "structure",
    id = "ConfirmDeviceOutput",
    members = {
        UserConfirmationNecessary = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DeviceKeyExistsException = {
    type = "structure",
    id = "DeviceKeyExistsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UserContextDataType = {
    type = "structure",
    id = "UserContextDataType",
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
    id = "ConfirmForgotPasswordInput",
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
        AnalyticsMetadata = M.AnalyticsMetadataType,
        UserContextData = M.UserContextDataType,
        ClientMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ConfirmForgotPasswordOutput = {
    type = "structure",
    id = "ConfirmForgotPasswordOutput",
}

M.ConfirmSignUpInput = {
    type = "structure",
    id = "ConfirmSignUpInput",
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
            traits = {
                default = false,
            },
        },
        AnalyticsMetadata = M.AnalyticsMetadataType,
        UserContextData = M.UserContextDataType,
        ClientMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Session = {
            type = "string",
        },
    },
}

M.ConfirmSignUpOutput = {
    type = "structure",
    id = "ConfirmSignUpOutput",
    members = {
        Session = {
            type = "string",
        },
    },
}

M.CreateGroupInput = {
    type = "structure",
    id = "CreateGroupInput",
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
            type = "integer",
        },
    },
}

M.CreateGroupOutput = {
    type = "structure",
    id = "CreateGroupOutput",
    members = {
        Group = M.GroupType,
    },
}

M.GroupExistsException = {
    type = "structure",
    id = "GroupExistsException",
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
    id = "CreateIdentityProviderInput",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        AttributeMapping = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        IdpIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.IdentityProviderType = {
    type = "structure",
    id = "IdentityProviderType",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        AttributeMapping = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        IdpIdentifiers = {
            type = "list",
            member = { type = "string" },
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
    id = "CreateIdentityProviderOutput",
    members = {
        IdentityProvider = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdentityProviderType }),
    },
}

M.DuplicateProviderException = {
    type = "structure",
    id = "DuplicateProviderException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateManagedLoginBrandingInput = {
    type = "structure",
    id = "CreateManagedLoginBrandingInput",
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
            traits = {
                default = false,
            },
        },
        Settings = {
            type = "document",
        },
        Assets = {
            type = "list",
            member = M.AssetType,
        },
    },
}

M.ManagedLoginBrandingType = {
    type = "structure",
    id = "ManagedLoginBrandingType",
    members = {
        ManagedLoginBrandingId = {
            type = "string",
        },
        UserPoolId = {
            type = "string",
        },
        UseCognitoProvidedValues = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Settings = {
            type = "document",
        },
        Assets = {
            type = "list",
            member = M.AssetType,
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
    id = "CreateManagedLoginBrandingOutput",
    members = {
        ManagedLoginBranding = M.ManagedLoginBrandingType,
    },
}

M.ManagedLoginBrandingExistsException = {
    type = "structure",
    id = "ManagedLoginBrandingExistsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceServerScopeType = {
    type = "structure",
    id = "ResourceServerScopeType",
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
    id = "CreateResourceServerInput",
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
            member = M.ResourceServerScopeType,
        },
    },
}

M.ResourceServerType = {
    type = "structure",
    id = "ResourceServerType",
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
            member = M.ResourceServerScopeType,
        },
    },
}

M.CreateResourceServerOutput = {
    type = "structure",
    id = "CreateResourceServerOutput",
    members = {
        ResourceServer = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceServerType }),
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
    id = "CreateTermsInput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.TermsType = {
    type = "structure",
    id = "TermsType",
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
            key = { type = "string" },
            value = { type = "string" },
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
    id = "CreateTermsOutput",
    members = {
        Terms = M.TermsType,
    },
}

M.TermsExistsException = {
    type = "structure",
    id = "TermsExistsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateUserImportJobInput = {
    type = "structure",
    id = "CreateUserImportJobInput",
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
    id = "UserImportJobType",
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
            type = "long",
            traits = {
                default = 0,
            },
        },
        SkippedUsers = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        FailedUsers = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        CompletionMessage = {
            type = "string",
        },
    },
}

M.CreateUserImportJobOutput = {
    type = "structure",
    id = "CreateUserImportJobOutput",
    members = {
        UserImportJob = M.UserImportJobType,
    },
}

M.DeletionProtectionType = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.DeviceConfigurationType = {
    type = "structure",
    id = "DeviceConfigurationType",
    members = {
        ChallengeRequiredOnNewDevice = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        DeviceOnlyRememberedOnUserPrompt = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.EmailSendingAccountType = {
    COGNITO_DEFAULT = "COGNITO_DEFAULT",
    DEVELOPER = "DEVELOPER",
}

M.EmailConfigurationType = {
    type = "structure",
    id = "EmailConfigurationType",
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
    id = "CustomEmailLambdaVersionConfigType",
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
    id = "CustomSMSLambdaVersionConfigType",
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
    id = "InboundFederationLambdaType",
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
    id = "PreTokenGenerationVersionConfigType",
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
    id = "LambdaConfigType",
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
        PreTokenGenerationConfig = M.PreTokenGenerationVersionConfigType,
        CustomSMSSender = M.CustomSMSLambdaVersionConfigType,
        CustomEmailSender = M.CustomEmailLambdaVersionConfigType,
        KMSKeyID = {
            type = "string",
        },
        InboundFederation = M.InboundFederationLambdaType,
    },
}

M.UserPoolMfaType = {
    OFF = "OFF",
    ON = "ON",
    OPTIONAL = "OPTIONAL",
}

M.PasswordPolicyType = {
    type = "structure",
    id = "PasswordPolicyType",
    members = {
        MinimumLength = {
            type = "integer",
        },
        RequireUppercase = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        RequireLowercase = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        RequireNumbers = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        RequireSymbols = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        PasswordHistorySize = {
            type = "integer",
        },
        TemporaryPasswordValidityDays = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.SignInPolicyType = {
    type = "structure",
    id = "SignInPolicyType",
    members = {
        AllowedFirstAuthFactors = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UserPoolPolicyType = {
    type = "structure",
    id = "UserPoolPolicyType",
    members = {
        PasswordPolicy = M.PasswordPolicyType,
        SignInPolicy = M.SignInPolicyType,
    },
}

M.SmsConfigurationType = {
    type = "structure",
    id = "SmsConfigurationType",
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
    id = "UserAttributeUpdateSettingsType",
    members = {
        AttributesRequireVerificationBeforeUpdate = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UsernameAttributeType = {
    PHONE_NUMBER = "phone_number",
    EMAIL = "email",
}

M.UsernameConfigurationType = {
    type = "structure",
    id = "UsernameConfigurationType",
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
    id = "UserPoolAddOnsType",
    members = {
        AdvancedSecurityMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AdvancedSecurityAdditionalFlows = M.AdvancedSecurityAdditionalFlowsType,
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
    id = "VerificationMessageTemplateType",
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
    id = "CreateUserPoolInput",
    members = {
        PoolName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Policies = M.UserPoolPolicyType,
        DeletionProtection = {
            type = "string",
        },
        LambdaConfig = M.LambdaConfigType,
        AutoVerifiedAttributes = {
            type = "list",
            member = { type = "string" },
        },
        AliasAttributes = {
            type = "list",
            member = { type = "string" },
        },
        UsernameAttributes = {
            type = "list",
            member = { type = "string" },
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
        VerificationMessageTemplate = M.VerificationMessageTemplateType,
        SmsAuthenticationMessage = {
            type = "string",
        },
        MfaConfiguration = {
            type = "string",
        },
        UserAttributeUpdateSettings = M.UserAttributeUpdateSettingsType,
        DeviceConfiguration = M.DeviceConfigurationType,
        EmailConfiguration = M.EmailConfigurationType,
        SmsConfiguration = M.SmsConfigurationType,
        UserPoolTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        AdminCreateUserConfig = M.AdminCreateUserConfigType,
        Schema = {
            type = "list",
            member = M.SchemaAttributeType,
        },
        UserPoolAddOns = M.UserPoolAddOnsType,
        UsernameConfiguration = M.UsernameConfigurationType,
        AccountRecoverySetting = M.AccountRecoverySettingType,
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
    id = "UserPoolType",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Policies = M.UserPoolPolicyType,
        DeletionProtection = {
            type = "string",
        },
        LambdaConfig = M.LambdaConfigType,
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
            member = M.SchemaAttributeType,
        },
        AutoVerifiedAttributes = {
            type = "list",
            member = { type = "string" },
        },
        AliasAttributes = {
            type = "list",
            member = { type = "string" },
        },
        UsernameAttributes = {
            type = "list",
            member = { type = "string" },
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
        VerificationMessageTemplate = M.VerificationMessageTemplateType,
        SmsAuthenticationMessage = {
            type = "string",
        },
        UserAttributeUpdateSettings = M.UserAttributeUpdateSettingsType,
        MfaConfiguration = {
            type = "string",
        },
        DeviceConfiguration = M.DeviceConfigurationType,
        EstimatedNumberOfUsers = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        EmailConfiguration = M.EmailConfigurationType,
        SmsConfiguration = M.SmsConfigurationType,
        UserPoolTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
        AdminCreateUserConfig = M.AdminCreateUserConfigType,
        UserPoolAddOns = M.UserPoolAddOnsType,
        UsernameConfiguration = M.UsernameConfigurationType,
        Arn = {
            type = "string",
        },
        AccountRecoverySetting = M.AccountRecoverySettingType,
        UserPoolTier = {
            type = "string",
        },
    },
}

M.CreateUserPoolOutput = {
    type = "structure",
    id = "CreateUserPoolOutput",
    members = {
        UserPool = M.UserPoolType,
    },
}

M.FeatureUnavailableInTierException = {
    type = "structure",
    id = "FeatureUnavailableInTierException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TierChangeNotAllowedException = {
    type = "structure",
    id = "TierChangeNotAllowedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UserPoolTaggingException = {
    type = "structure",
    id = "UserPoolTaggingException",
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
    id = "RefreshTokenRotationType",
    members = {
        Feature = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetryGracePeriodSeconds = {
            type = "integer",
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
    id = "TokenValidityUnitsType",
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
    id = "CreateUserPoolClientInput",
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
            traits = {
                default = false,
            },
        },
        ClientSecret = {
            type = "string",
        },
        RefreshTokenValidity = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        AccessTokenValidity = {
            type = "integer",
        },
        IdTokenValidity = {
            type = "integer",
        },
        TokenValidityUnits = M.TokenValidityUnitsType,
        ReadAttributes = {
            type = "list",
            member = { type = "string" },
        },
        WriteAttributes = {
            type = "list",
            member = { type = "string" },
        },
        ExplicitAuthFlows = {
            type = "list",
            member = { type = "string" },
        },
        SupportedIdentityProviders = {
            type = "list",
            member = { type = "string" },
        },
        CallbackURLs = {
            type = "list",
            member = { type = "string" },
        },
        LogoutURLs = {
            type = "list",
            member = { type = "string" },
        },
        DefaultRedirectURI = {
            type = "string",
        },
        AllowedOAuthFlows = {
            type = "list",
            member = { type = "string" },
        },
        AllowedOAuthScopes = {
            type = "list",
            member = { type = "string" },
        },
        AllowedOAuthFlowsUserPoolClient = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        AnalyticsConfiguration = M.AnalyticsConfigurationType,
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
            type = "integer",
        },
        RefreshTokenRotation = M.RefreshTokenRotationType,
    },
}

M.UserPoolClientType = {
    type = "structure",
    id = "UserPoolClientType",
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        AccessTokenValidity = {
            type = "integer",
        },
        IdTokenValidity = {
            type = "integer",
        },
        TokenValidityUnits = M.TokenValidityUnitsType,
        ReadAttributes = {
            type = "list",
            member = { type = "string" },
        },
        WriteAttributes = {
            type = "list",
            member = { type = "string" },
        },
        ExplicitAuthFlows = {
            type = "list",
            member = { type = "string" },
        },
        SupportedIdentityProviders = {
            type = "list",
            member = { type = "string" },
        },
        CallbackURLs = {
            type = "list",
            member = { type = "string" },
        },
        LogoutURLs = {
            type = "list",
            member = { type = "string" },
        },
        DefaultRedirectURI = {
            type = "string",
        },
        AllowedOAuthFlows = {
            type = "list",
            member = { type = "string" },
        },
        AllowedOAuthScopes = {
            type = "list",
            member = { type = "string" },
        },
        AllowedOAuthFlowsUserPoolClient = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        AnalyticsConfiguration = M.AnalyticsConfigurationType,
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
            type = "integer",
        },
        RefreshTokenRotation = M.RefreshTokenRotationType,
    },
}

M.CreateUserPoolClientOutput = {
    type = "structure",
    id = "CreateUserPoolClientOutput",
    members = {
        UserPoolClient = M.UserPoolClientType,
    },
}

M.InvalidOAuthFlowException = {
    type = "structure",
    id = "InvalidOAuthFlowException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ScopeDoesNotExistException = {
    type = "structure",
    id = "ScopeDoesNotExistException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CustomDomainConfigType = {
    type = "structure",
    id = "CustomDomainConfigType",
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
    id = "CreateUserPoolDomainInput",
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
            type = "integer",
        },
        CustomDomainConfig = M.CustomDomainConfigType,
    },
}

M.CreateUserPoolDomainOutput = {
    type = "structure",
    id = "CreateUserPoolDomainOutput",
    members = {
        ManagedLoginVersion = {
            type = "integer",
        },
        CloudFrontDomain = {
            type = "string",
        },
    },
}

M.DeleteGroupInput = {
    type = "structure",
    id = "DeleteGroupInput",
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
    id = "DeleteGroupOutput",
}

M.DeleteIdentityProviderInput = {
    type = "structure",
    id = "DeleteIdentityProviderInput",
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
    id = "DeleteIdentityProviderOutput",
}

M.UnsupportedIdentityProviderException = {
    type = "structure",
    id = "UnsupportedIdentityProviderException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteManagedLoginBrandingInput = {
    type = "structure",
    id = "DeleteManagedLoginBrandingInput",
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
    id = "DeleteManagedLoginBrandingOutput",
}

M.DeleteResourceServerInput = {
    type = "structure",
    id = "DeleteResourceServerInput",
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
    id = "DeleteResourceServerOutput",
}

M.DeleteTermsInput = {
    type = "structure",
    id = "DeleteTermsInput",
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
    id = "DeleteTermsOutput",
}

M.DeleteUserInput = {
    type = "structure",
    id = "DeleteUserInput",
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
    id = "DeleteUserOutput",
}

M.DeleteUserAttributesInput = {
    type = "structure",
    id = "DeleteUserAttributesInput",
    members = {
        UserAttributeNames = {
            type = "list",
            member = { type = "string" },
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
    id = "DeleteUserAttributesOutput",
}

M.DeleteUserPoolInput = {
    type = "structure",
    id = "DeleteUserPoolInput",
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
    id = "DeleteUserPoolOutput",
}

M.DeleteUserPoolClientInput = {
    type = "structure",
    id = "DeleteUserPoolClientInput",
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
    id = "DeleteUserPoolClientOutput",
}

M.DeleteUserPoolClientSecretInput = {
    type = "structure",
    id = "DeleteUserPoolClientSecretInput",
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
    id = "DeleteUserPoolClientSecretOutput",
}

M.DeleteUserPoolDomainInput = {
    type = "structure",
    id = "DeleteUserPoolDomainInput",
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
    id = "DeleteUserPoolDomainOutput",
}

M.DeleteWebAuthnCredentialInput = {
    type = "structure",
    id = "DeleteWebAuthnCredentialInput",
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
    id = "DeleteWebAuthnCredentialOutput",
}

M.DescribeIdentityProviderInput = {
    type = "structure",
    id = "DescribeIdentityProviderInput",
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
    id = "DescribeIdentityProviderOutput",
    members = {
        IdentityProvider = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdentityProviderType }),
    },
}

M.DescribeManagedLoginBrandingInput = {
    type = "structure",
    id = "DescribeManagedLoginBrandingInput",
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
            traits = {
                default = false,
            },
        },
    },
}

M.DescribeManagedLoginBrandingOutput = {
    type = "structure",
    id = "DescribeManagedLoginBrandingOutput",
    members = {
        ManagedLoginBranding = M.ManagedLoginBrandingType,
    },
}

M.DescribeManagedLoginBrandingByClientInput = {
    type = "structure",
    id = "DescribeManagedLoginBrandingByClientInput",
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
            traits = {
                default = false,
            },
        },
    },
}

M.DescribeManagedLoginBrandingByClientOutput = {
    type = "structure",
    id = "DescribeManagedLoginBrandingByClientOutput",
    members = {
        ManagedLoginBranding = M.ManagedLoginBrandingType,
    },
}

M.DescribeResourceServerInput = {
    type = "structure",
    id = "DescribeResourceServerInput",
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
    id = "DescribeResourceServerOutput",
    members = {
        ResourceServer = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceServerType }),
    },
}

M.DescribeRiskConfigurationInput = {
    type = "structure",
    id = "DescribeRiskConfigurationInput",
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
    id = "CompromisedCredentialsActionsType",
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
    id = "CompromisedCredentialsRiskConfigurationType",
    members = {
        EventFilter = {
            type = "list",
            member = { type = "string" },
        },
        Actions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CompromisedCredentialsActionsType }),
    },
}

M.RiskExceptionConfigurationType = {
    type = "structure",
    id = "RiskExceptionConfigurationType",
    members = {
        BlockedIPRangeList = {
            type = "list",
            member = { type = "string" },
        },
        SkippedIPRangeList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RiskConfigurationType = {
    type = "structure",
    id = "RiskConfigurationType",
    members = {
        UserPoolId = {
            type = "string",
        },
        ClientId = {
            type = "string",
        },
        CompromisedCredentialsRiskConfiguration = M.CompromisedCredentialsRiskConfigurationType,
        AccountTakeoverRiskConfiguration = M.AccountTakeoverRiskConfigurationType,
        RiskExceptionConfiguration = M.RiskExceptionConfigurationType,
        LastModifiedDate = {
            type = "timestamp",
        },
    },
}

M.DescribeRiskConfigurationOutput = {
    type = "structure",
    id = "DescribeRiskConfigurationOutput",
    members = {
        RiskConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RiskConfigurationType }),
    },
}

M.DescribeTermsInput = {
    type = "structure",
    id = "DescribeTermsInput",
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
    id = "DescribeTermsOutput",
    members = {
        Terms = M.TermsType,
    },
}

M.DescribeUserImportJobInput = {
    type = "structure",
    id = "DescribeUserImportJobInput",
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
    id = "DescribeUserImportJobOutput",
    members = {
        UserImportJob = M.UserImportJobType,
    },
}

M.DescribeUserPoolInput = {
    type = "structure",
    id = "DescribeUserPoolInput",
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
    id = "DescribeUserPoolOutput",
    members = {
        UserPool = M.UserPoolType,
    },
}

M.DescribeUserPoolClientInput = {
    type = "structure",
    id = "DescribeUserPoolClientInput",
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
    id = "DescribeUserPoolClientOutput",
    members = {
        UserPoolClient = M.UserPoolClientType,
    },
}

M.DescribeUserPoolDomainInput = {
    type = "structure",
    id = "DescribeUserPoolDomainInput",
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
    id = "DomainDescriptionType",
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
        CustomDomainConfig = M.CustomDomainConfigType,
        ManagedLoginVersion = {
            type = "integer",
        },
    },
}

M.DescribeUserPoolDomainOutput = {
    type = "structure",
    id = "DescribeUserPoolDomainOutput",
    members = {
        DomainDescription = M.DomainDescriptionType,
    },
}

M.ForgetDeviceInput = {
    type = "structure",
    id = "ForgetDeviceInput",
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
    id = "ForgetDeviceOutput",
}

M.ForgotPasswordInput = {
    type = "structure",
    id = "ForgotPasswordInput",
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
        UserContextData = M.UserContextDataType,
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AnalyticsMetadata = M.AnalyticsMetadataType,
        ClientMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CodeDeliveryDetailsType = {
    type = "structure",
    id = "CodeDeliveryDetailsType",
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
    id = "ForgotPasswordOutput",
    members = {
        CodeDeliveryDetails = M.CodeDeliveryDetailsType,
    },
}

M.GetCSVHeaderInput = {
    type = "structure",
    id = "GetCSVHeaderInput",
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
    id = "GetCSVHeaderOutput",
    members = {
        UserPoolId = {
            type = "string",
        },
        CSVHeader = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetDeviceInput = {
    type = "structure",
    id = "GetDeviceInput",
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
    id = "GetDeviceOutput",
    members = {
        Device = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DeviceType }),
    },
}

M.GetGroupInput = {
    type = "structure",
    id = "GetGroupInput",
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
    id = "GetGroupOutput",
    members = {
        Group = M.GroupType,
    },
}

M.GetIdentityProviderByIdentifierInput = {
    type = "structure",
    id = "GetIdentityProviderByIdentifierInput",
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
    id = "GetIdentityProviderByIdentifierOutput",
    members = {
        IdentityProvider = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdentityProviderType }),
    },
}

M.GetLogDeliveryConfigurationInput = {
    type = "structure",
    id = "GetLogDeliveryConfigurationInput",
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
    id = "CloudWatchLogsConfigurationType",
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
    id = "FirehoseConfigurationType",
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
    id = "S3ConfigurationType",
    members = {
        BucketArn = {
            type = "string",
        },
    },
}

M.LogConfigurationType = {
    type = "structure",
    id = "LogConfigurationType",
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
        CloudWatchLogsConfiguration = M.CloudWatchLogsConfigurationType,
        S3Configuration = M.S3ConfigurationType,
        FirehoseConfiguration = M.FirehoseConfigurationType,
    },
}

M.LogDeliveryConfigurationType = {
    type = "structure",
    id = "LogDeliveryConfigurationType",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogConfigurations = {
            type = "list",
            member = M.LogConfigurationType,
            traits = {
                required = true,
            },
        },
    },
}

M.GetLogDeliveryConfigurationOutput = {
    type = "structure",
    id = "GetLogDeliveryConfigurationOutput",
    members = {
        LogDeliveryConfiguration = M.LogDeliveryConfigurationType,
    },
}

M.GetSigningCertificateInput = {
    type = "structure",
    id = "GetSigningCertificateInput",
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
    id = "GetSigningCertificateOutput",
    members = {
        Certificate = {
            type = "string",
        },
    },
}

M.GetTokensFromRefreshTokenInput = {
    type = "structure",
    id = "GetTokensFromRefreshTokenInput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetTokensFromRefreshTokenOutput = {
    type = "structure",
    id = "GetTokensFromRefreshTokenOutput",
    members = {
        AuthenticationResult = M.AuthenticationResultType,
    },
}

M.RefreshTokenReuseException = {
    type = "structure",
    id = "RefreshTokenReuseException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetUICustomizationInput = {
    type = "structure",
    id = "GetUICustomizationInput",
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
    id = "UICustomizationType",
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
    id = "GetUICustomizationOutput",
    members = {
        UICustomization = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UICustomizationType }),
    },
}

M.GetUserInput = {
    type = "structure",
    id = "GetUserInput",
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
    id = "GetUserOutput",
    members = {
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserAttributes = {
            type = "list",
            member = M.AttributeType,
            traits = {
                required = true,
            },
        },
        MFAOptions = {
            type = "list",
            member = M.MFAOptionType,
        },
        PreferredMfaSetting = {
            type = "string",
        },
        UserMFASettingList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetUserAttributeVerificationCodeInput = {
    type = "structure",
    id = "GetUserAttributeVerificationCodeInput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetUserAttributeVerificationCodeOutput = {
    type = "structure",
    id = "GetUserAttributeVerificationCodeOutput",
    members = {
        CodeDeliveryDetails = M.CodeDeliveryDetailsType,
    },
}

M.GetUserAuthFactorsInput = {
    type = "structure",
    id = "GetUserAuthFactorsInput",
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
    id = "GetUserAuthFactorsOutput",
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
            member = { type = "string" },
        },
        ConfiguredUserAuthFactors = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetUserPoolMfaConfigInput = {
    type = "structure",
    id = "GetUserPoolMfaConfigInput",
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
    id = "EmailMfaConfigType",
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
    id = "SmsMfaConfigType",
    members = {
        SmsAuthenticationMessage = {
            type = "string",
        },
        SmsConfiguration = M.SmsConfigurationType,
    },
}

M.SoftwareTokenMfaConfigType = {
    type = "structure",
    id = "SoftwareTokenMfaConfigType",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
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
    id = "WebAuthnConfigurationType",
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
    id = "GetUserPoolMfaConfigOutput",
    members = {
        SmsMfaConfiguration = M.SmsMfaConfigType,
        SoftwareTokenMfaConfiguration = M.SoftwareTokenMfaConfigType,
        EmailMfaConfiguration = M.EmailMfaConfigType,
        MfaConfiguration = {
            type = "string",
        },
        WebAuthnConfiguration = M.WebAuthnConfigurationType,
    },
}

M.GlobalSignOutInput = {
    type = "structure",
    id = "GlobalSignOutInput",
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
    id = "GlobalSignOutOutput",
}

M.InitiateAuthInput = {
    type = "structure",
    id = "InitiateAuthInput",
    members = {
        AuthFlow = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ClientMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ClientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AnalyticsMetadata = M.AnalyticsMetadataType,
        UserContextData = M.UserContextDataType,
        Session = {
            type = "string",
        },
    },
}

M.InitiateAuthOutput = {
    type = "structure",
    id = "InitiateAuthOutput",
    members = {
        ChallengeName = {
            type = "string",
        },
        Session = {
            type = "string",
        },
        ChallengeParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        AuthenticationResult = M.AuthenticationResultType,
        AvailableChallenges = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListDevicesInput = {
    type = "structure",
    id = "ListDevicesInput",
    members = {
        AccessToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Limit = {
            type = "integer",
        },
        PaginationToken = {
            type = "string",
        },
    },
}

M.ListDevicesOutput = {
    type = "structure",
    id = "ListDevicesOutput",
    members = {
        Devices = {
            type = "list",
            member = M.DeviceType,
        },
        PaginationToken = {
            type = "string",
        },
    },
}

M.ListGroupsInput = {
    type = "structure",
    id = "ListGroupsInput",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListGroupsOutput = {
    type = "structure",
    id = "ListGroupsOutput",
    members = {
        Groups = {
            type = "list",
            member = M.GroupType,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListIdentityProvidersInput = {
    type = "structure",
    id = "ListIdentityProvidersInput",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ProviderDescription = {
    type = "structure",
    id = "ProviderDescription",
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
    id = "ListIdentityProvidersOutput",
    members = {
        Providers = {
            type = "list",
            member = M.ProviderDescription,
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
    id = "ListResourceServersInput",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListResourceServersOutput = {
    type = "structure",
    id = "ListResourceServersOutput",
    members = {
        ResourceServers = {
            type = "list",
            member = M.ResourceServerType,
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
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListTermsInput = {
    type = "structure",
    id = "ListTermsInput",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.TermsDescriptionType = {
    type = "structure",
    id = "TermsDescriptionType",
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
    id = "ListTermsOutput",
    members = {
        Terms = {
            type = "list",
            member = M.TermsDescriptionType,
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
    id = "ListUserImportJobsInput",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
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
    id = "ListUserImportJobsOutput",
    members = {
        UserImportJobs = {
            type = "list",
            member = M.UserImportJobType,
        },
        PaginationToken = {
            type = "string",
        },
    },
}

M.ListUserPoolClientsInput = {
    type = "structure",
    id = "ListUserPoolClientsInput",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UserPoolClientDescription = {
    type = "structure",
    id = "UserPoolClientDescription",
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
    id = "ListUserPoolClientsOutput",
    members = {
        UserPoolClients = {
            type = "list",
            member = M.UserPoolClientDescription,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListUserPoolClientSecretsInput = {
    type = "structure",
    id = "ListUserPoolClientSecretsInput",
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
    id = "ListUserPoolClientSecretsOutput",
    members = {
        ClientSecrets = {
            type = "list",
            member = M.ClientSecretDescriptorType,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListUserPoolsInput = {
    type = "structure",
    id = "ListUserPoolsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.UserPoolDescriptionType = {
    type = "structure",
    id = "UserPoolDescriptionType",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        LambdaConfig = M.LambdaConfigType,
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
    id = "ListUserPoolsOutput",
    members = {
        UserPools = {
            type = "list",
            member = M.UserPoolDescriptionType,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListUsersInput = {
    type = "structure",
    id = "ListUsersInput",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributesToGet = {
            type = "list",
            member = { type = "string" },
        },
        Limit = {
            type = "integer",
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
    id = "ListUsersOutput",
    members = {
        Users = {
            type = "list",
            member = M.UserType,
        },
        PaginationToken = {
            type = "string",
        },
    },
}

M.ListUsersInGroupInput = {
    type = "structure",
    id = "ListUsersInGroupInput",
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
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListUsersInGroupOutput = {
    type = "structure",
    id = "ListUsersInGroupOutput",
    members = {
        Users = {
            type = "list",
            member = M.UserType,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListWebAuthnCredentialsInput = {
    type = "structure",
    id = "ListWebAuthnCredentialsInput",
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
            type = "integer",
        },
    },
}

M.WebAuthnCredentialDescription = {
    type = "structure",
    id = "WebAuthnCredentialDescription",
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
            member = { type = "string" },
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
    id = "ListWebAuthnCredentialsOutput",
    members = {
        Credentials = {
            type = "list",
            member = M.WebAuthnCredentialDescription,
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
    id = "ResendConfirmationCodeInput",
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
        UserContextData = M.UserContextDataType,
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AnalyticsMetadata = M.AnalyticsMetadataType,
        ClientMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ResendConfirmationCodeOutput = {
    type = "structure",
    id = "ResendConfirmationCodeOutput",
    members = {
        CodeDeliveryDetails = M.CodeDeliveryDetailsType,
    },
}

M.RespondToAuthChallengeInput = {
    type = "structure",
    id = "RespondToAuthChallengeInput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        AnalyticsMetadata = M.AnalyticsMetadataType,
        UserContextData = M.UserContextDataType,
        ClientMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.RespondToAuthChallengeOutput = {
    type = "structure",
    id = "RespondToAuthChallengeOutput",
    members = {
        ChallengeName = {
            type = "string",
        },
        Session = {
            type = "string",
        },
        ChallengeParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        AuthenticationResult = M.AuthenticationResultType,
    },
}

M.RevokeTokenInput = {
    type = "structure",
    id = "RevokeTokenInput",
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
    id = "RevokeTokenOutput",
}

M.UnauthorizedException = {
    type = "structure",
    id = "UnauthorizedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnsupportedTokenTypeException = {
    type = "structure",
    id = "UnsupportedTokenTypeException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SetLogDeliveryConfigurationInput = {
    type = "structure",
    id = "SetLogDeliveryConfigurationInput",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogConfigurations = {
            type = "list",
            member = M.LogConfigurationType,
            traits = {
                required = true,
            },
        },
    },
}

M.SetLogDeliveryConfigurationOutput = {
    type = "structure",
    id = "SetLogDeliveryConfigurationOutput",
    members = {
        LogDeliveryConfiguration = M.LogDeliveryConfigurationType,
    },
}

M.SetRiskConfigurationInput = {
    type = "structure",
    id = "SetRiskConfigurationInput",
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
        CompromisedCredentialsRiskConfiguration = M.CompromisedCredentialsRiskConfigurationType,
        AccountTakeoverRiskConfiguration = M.AccountTakeoverRiskConfigurationType,
        RiskExceptionConfiguration = M.RiskExceptionConfigurationType,
    },
}

M.SetRiskConfigurationOutput = {
    type = "structure",
    id = "SetRiskConfigurationOutput",
    members = {
        RiskConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RiskConfigurationType }),
    },
}

M.SetUICustomizationInput = {
    type = "structure",
    id = "SetUICustomizationInput",
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
    id = "SetUICustomizationOutput",
    members = {
        UICustomization = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UICustomizationType }),
    },
}

M.SetUserMFAPreferenceInput = {
    type = "structure",
    id = "SetUserMFAPreferenceInput",
    members = {
        SMSMfaSettings = M.SMSMfaSettingsType,
        SoftwareTokenMfaSettings = M.SoftwareTokenMfaSettingsType,
        EmailMfaSettings = M.EmailMfaSettingsType,
        WebAuthnMfaSettings = M.WebAuthnMfaSettingsType,
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
    id = "SetUserMFAPreferenceOutput",
}

M.SetUserPoolMfaConfigInput = {
    type = "structure",
    id = "SetUserPoolMfaConfigInput",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SmsMfaConfiguration = M.SmsMfaConfigType,
        SoftwareTokenMfaConfiguration = M.SoftwareTokenMfaConfigType,
        EmailMfaConfiguration = M.EmailMfaConfigType,
        MfaConfiguration = {
            type = "string",
        },
        WebAuthnConfiguration = M.WebAuthnConfigurationType,
    },
}

M.SetUserPoolMfaConfigOutput = {
    type = "structure",
    id = "SetUserPoolMfaConfigOutput",
    members = {
        SmsMfaConfiguration = M.SmsMfaConfigType,
        SoftwareTokenMfaConfiguration = M.SoftwareTokenMfaConfigType,
        EmailMfaConfiguration = M.EmailMfaConfigType,
        MfaConfiguration = {
            type = "string",
        },
        WebAuthnConfiguration = M.WebAuthnConfigurationType,
    },
}

M.SetUserSettingsInput = {
    type = "structure",
    id = "SetUserSettingsInput",
    members = {
        AccessToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MFAOptions = {
            type = "list",
            member = M.MFAOptionType,
            traits = {
                required = true,
            },
        },
    },
}

M.SetUserSettingsOutput = {
    type = "structure",
    id = "SetUserSettingsOutput",
}

M.SignUpInput = {
    type = "structure",
    id = "SignUpInput",
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
            member = M.AttributeType,
        },
        ValidationData = {
            type = "list",
            member = M.AttributeType,
        },
        AnalyticsMetadata = M.AnalyticsMetadataType,
        UserContextData = M.UserContextDataType,
        ClientMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.SignUpOutput = {
    type = "structure",
    id = "SignUpOutput",
    members = {
        UserConfirmed = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        CodeDeliveryDetails = M.CodeDeliveryDetailsType,
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
    id = "StartUserImportJobInput",
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
    id = "StartUserImportJobOutput",
    members = {
        UserImportJob = M.UserImportJobType,
    },
}

M.StartWebAuthnRegistrationInput = {
    type = "structure",
    id = "StartWebAuthnRegistrationInput",
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
    id = "StartWebAuthnRegistrationOutput",
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
    id = "WebAuthnConfigurationMissingException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StopUserImportJobInput = {
    type = "structure",
    id = "StopUserImportJobInput",
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
    id = "StopUserImportJobOutput",
    members = {
        UserImportJob = M.UserImportJobType,
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.UpdateAuthEventFeedbackInput = {
    type = "structure",
    id = "UpdateAuthEventFeedbackInput",
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
    id = "UpdateAuthEventFeedbackOutput",
}

M.UpdateDeviceStatusInput = {
    type = "structure",
    id = "UpdateDeviceStatusInput",
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
    id = "UpdateDeviceStatusOutput",
}

M.UpdateGroupInput = {
    type = "structure",
    id = "UpdateGroupInput",
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
            type = "integer",
        },
    },
}

M.UpdateGroupOutput = {
    type = "structure",
    id = "UpdateGroupOutput",
    members = {
        Group = M.GroupType,
    },
}

M.UpdateIdentityProviderInput = {
    type = "structure",
    id = "UpdateIdentityProviderInput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        AttributeMapping = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        IdpIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateIdentityProviderOutput = {
    type = "structure",
    id = "UpdateIdentityProviderOutput",
    members = {
        IdentityProvider = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdentityProviderType }),
    },
}

M.UpdateManagedLoginBrandingInput = {
    type = "structure",
    id = "UpdateManagedLoginBrandingInput",
    members = {
        UserPoolId = {
            type = "string",
        },
        ManagedLoginBrandingId = {
            type = "string",
        },
        UseCognitoProvidedValues = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Settings = {
            type = "document",
        },
        Assets = {
            type = "list",
            member = M.AssetType,
        },
    },
}

M.UpdateManagedLoginBrandingOutput = {
    type = "structure",
    id = "UpdateManagedLoginBrandingOutput",
    members = {
        ManagedLoginBranding = M.ManagedLoginBrandingType,
    },
}

M.UpdateResourceServerInput = {
    type = "structure",
    id = "UpdateResourceServerInput",
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
            member = M.ResourceServerScopeType,
        },
    },
}

M.UpdateResourceServerOutput = {
    type = "structure",
    id = "UpdateResourceServerOutput",
    members = {
        ResourceServer = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceServerType }),
    },
}

M.UpdateTermsInput = {
    type = "structure",
    id = "UpdateTermsInput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateTermsOutput = {
    type = "structure",
    id = "UpdateTermsOutput",
    members = {
        Terms = M.TermsType,
    },
}

M.UpdateUserAttributesInput = {
    type = "structure",
    id = "UpdateUserAttributesInput",
    members = {
        UserAttributes = {
            type = "list",
            member = M.AttributeType,
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateUserAttributesOutput = {
    type = "structure",
    id = "UpdateUserAttributesOutput",
    members = {
        CodeDeliveryDetailsList = {
            type = "list",
            member = M.CodeDeliveryDetailsType,
        },
    },
}

M.UpdateUserPoolInput = {
    type = "structure",
    id = "UpdateUserPoolInput",
    members = {
        UserPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Policies = M.UserPoolPolicyType,
        DeletionProtection = {
            type = "string",
        },
        LambdaConfig = M.LambdaConfigType,
        AutoVerifiedAttributes = {
            type = "list",
            member = { type = "string" },
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
        VerificationMessageTemplate = M.VerificationMessageTemplateType,
        SmsAuthenticationMessage = {
            type = "string",
        },
        UserAttributeUpdateSettings = M.UserAttributeUpdateSettingsType,
        MfaConfiguration = {
            type = "string",
        },
        DeviceConfiguration = M.DeviceConfigurationType,
        EmailConfiguration = M.EmailConfigurationType,
        SmsConfiguration = M.SmsConfigurationType,
        UserPoolTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        AdminCreateUserConfig = M.AdminCreateUserConfigType,
        UserPoolAddOns = M.UserPoolAddOnsType,
        AccountRecoverySetting = M.AccountRecoverySettingType,
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
    id = "UpdateUserPoolOutput",
}

M.UpdateUserPoolClientInput = {
    type = "structure",
    id = "UpdateUserPoolClientInput",
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        AccessTokenValidity = {
            type = "integer",
        },
        IdTokenValidity = {
            type = "integer",
        },
        TokenValidityUnits = M.TokenValidityUnitsType,
        ReadAttributes = {
            type = "list",
            member = { type = "string" },
        },
        WriteAttributes = {
            type = "list",
            member = { type = "string" },
        },
        ExplicitAuthFlows = {
            type = "list",
            member = { type = "string" },
        },
        SupportedIdentityProviders = {
            type = "list",
            member = { type = "string" },
        },
        CallbackURLs = {
            type = "list",
            member = { type = "string" },
        },
        LogoutURLs = {
            type = "list",
            member = { type = "string" },
        },
        DefaultRedirectURI = {
            type = "string",
        },
        AllowedOAuthFlows = {
            type = "list",
            member = { type = "string" },
        },
        AllowedOAuthScopes = {
            type = "list",
            member = { type = "string" },
        },
        AllowedOAuthFlowsUserPoolClient = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        AnalyticsConfiguration = M.AnalyticsConfigurationType,
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
            type = "integer",
        },
        RefreshTokenRotation = M.RefreshTokenRotationType,
    },
}

M.UpdateUserPoolClientOutput = {
    type = "structure",
    id = "UpdateUserPoolClientOutput",
    members = {
        UserPoolClient = M.UserPoolClientType,
    },
}

M.UpdateUserPoolDomainInput = {
    type = "structure",
    id = "UpdateUserPoolDomainInput",
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
            type = "integer",
        },
        CustomDomainConfig = M.CustomDomainConfigType,
    },
}

M.UpdateUserPoolDomainOutput = {
    type = "structure",
    id = "UpdateUserPoolDomainOutput",
    members = {
        ManagedLoginVersion = {
            type = "integer",
        },
        CloudFrontDomain = {
            type = "string",
        },
    },
}

M.EnableSoftwareTokenMFAException = {
    type = "structure",
    id = "EnableSoftwareTokenMFAException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.VerifySoftwareTokenInput = {
    type = "structure",
    id = "VerifySoftwareTokenInput",
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
    id = "VerifySoftwareTokenOutput",
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
    id = "VerifyUserAttributeInput",
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
    id = "VerifyUserAttributeOutput",
}

return M
