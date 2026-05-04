local M = {}

M.AdditionalConstraintsElement = {
    REQUIRE_DIGIT = "REQUIRE_DIGIT",
    REQUIRE_LOWERCASE = "REQUIRE_LOWERCASE",
    REQUIRE_SYMBOL = "REQUIRE_SYMBOL",
    REQUIRE_UPPERCASE = "REQUIRE_UPPERCASE",
}

M.BadRequestException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.CloneBackendInput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TargetEnvironmentName = {
            type = "string",
            traits = {
                json_name = "targetEnvironmentName",
                required = true,
            },
        },
    },
}

M.CloneBackendOutput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                json_name = "appId",
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                json_name = "backendEnvironmentName",
            },
        },
        Error = {
            type = "string",
            traits = {
                json_name = "error",
            },
        },
        JobId = {
            type = "string",
            traits = {
                json_name = "jobId",
            },
        },
        Operation = {
            type = "string",
            traits = {
                json_name = "operation",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.GatewayTimeoutException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.NotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                json_name = "resourceType",
            },
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    error = "client",
    members = {
        LimitType = {
            type = "string",
            traits = {
                json_name = "limitType",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.ResourceConfig = {
    type = "structure",
}

M.CreateBackendInput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                json_name = "appId",
                required = true,
            },
        },
        AppName = {
            type = "string",
            traits = {
                json_name = "appName",
                required = true,
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                json_name = "backendEnvironmentName",
                required = true,
            },
        },
        ResourceConfig = setmetatable({ traits = {
            json_name = "resourceConfig",
        } }, { __index = M.ResourceConfig }),
        ResourceName = {
            type = "string",
            traits = {
                json_name = "resourceName",
            },
        },
    },
}

M.CreateBackendOutput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                json_name = "appId",
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                json_name = "backendEnvironmentName",
            },
        },
        Error = {
            type = "string",
            traits = {
                json_name = "error",
            },
        },
        JobId = {
            type = "string",
            traits = {
                json_name = "jobId",
            },
        },
        Operation = {
            type = "string",
            traits = {
                json_name = "operation",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.Mode = {
    API_KEY = "API_KEY",
    AWS_IAM = "AWS_IAM",
    AMAZON_COGNITO_USER_POOLS = "AMAZON_COGNITO_USER_POOLS",
    OPENID_CONNECT = "OPENID_CONNECT",
}

M.BackendAPIAppSyncAuthSettings = {
    type = "structure",
    members = {
        CognitoUserPoolId = {
            type = "string",
            traits = {
                json_name = "cognitoUserPoolId",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        ExpirationTime = {
            type = "double",
            traits = {
                json_name = "expirationTime",
            },
        },
        OpenIDAuthTTL = {
            type = "string",
            traits = {
                json_name = "openIDAuthTTL",
            },
        },
        OpenIDClientId = {
            type = "string",
            traits = {
                json_name = "openIDClientId",
            },
        },
        OpenIDIatTTL = {
            type = "string",
            traits = {
                json_name = "openIDIatTTL",
            },
        },
        OpenIDIssueURL = {
            type = "string",
            traits = {
                json_name = "openIDIssueURL",
            },
        },
        OpenIDProviderName = {
            type = "string",
            traits = {
                json_name = "openIDProviderName",
            },
        },
    },
}

M.BackendAPIAuthType = {
    type = "structure",
    members = {
        Mode = {
            type = "string",
            traits = {
                json_name = "mode",
            },
        },
        Settings = setmetatable({ traits = {
            json_name = "settings",
        } }, { __index = M.BackendAPIAppSyncAuthSettings }),
    },
}

M.ResolutionStrategy = {
    OPTIMISTIC_CONCURRENCY = "OPTIMISTIC_CONCURRENCY",
    LAMBDA = "LAMBDA",
    AUTOMERGE = "AUTOMERGE",
    NONE = "NONE",
}

M.BackendAPIConflictResolution = {
    type = "structure",
    members = {
        ResolutionStrategy = {
            type = "string",
            traits = {
                json_name = "resolutionStrategy",
            },
        },
    },
}

M.BackendAPIResourceConfig = {
    type = "structure",
    members = {
        AdditionalAuthTypes = {
            type = "list",
            member = M.BackendAPIAuthType,
            traits = {
                json_name = "additionalAuthTypes",
            },
        },
        ApiName = {
            type = "string",
            traits = {
                json_name = "apiName",
            },
        },
        ConflictResolution = setmetatable({ traits = {
            json_name = "conflictResolution",
        } }, { __index = M.BackendAPIConflictResolution }),
        DefaultAuthType = setmetatable({ traits = {
            json_name = "defaultAuthType",
        } }, { __index = M.BackendAPIAuthType }),
        Service = {
            type = "string",
            traits = {
                json_name = "service",
            },
        },
        TransformSchema = {
            type = "string",
            traits = {
                json_name = "transformSchema",
            },
        },
    },
}

M.CreateBackendAPIInput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                json_name = "backendEnvironmentName",
                required = true,
            },
        },
        ResourceConfig = setmetatable({ traits = {
            json_name = "resourceConfig",
            required = true,
        } }, { __index = M.BackendAPIResourceConfig }),
        ResourceName = {
            type = "string",
            traits = {
                json_name = "resourceName",
                required = true,
            },
        },
    },
}

M.CreateBackendAPIOutput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                json_name = "appId",
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                json_name = "backendEnvironmentName",
            },
        },
        Error = {
            type = "string",
            traits = {
                json_name = "error",
            },
        },
        JobId = {
            type = "string",
            traits = {
                json_name = "jobId",
            },
        },
        Operation = {
            type = "string",
            traits = {
                json_name = "operation",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.AuthResources = {
    USER_POOL_ONLY = "USER_POOL_ONLY",
    IDENTITY_POOL_AND_USER_POOL = "IDENTITY_POOL_AND_USER_POOL",
}

M.CreateBackendAuthIdentityPoolConfig = {
    type = "structure",
    members = {
        IdentityPoolName = {
            type = "string",
            traits = {
                json_name = "identityPoolName",
                required = true,
            },
        },
        UnauthenticatedLogin = {
            type = "boolean",
            traits = {
                json_name = "unauthenticatedLogin",
                required = true,
            },
        },
    },
}

M.Service = {
    COGNITO = "COGNITO",
}

M.DeliveryMethod = {
    EMAIL = "EMAIL",
    SMS = "SMS",
}

M.EmailSettings = {
    type = "structure",
    members = {
        EmailMessage = {
            type = "string",
            traits = {
                json_name = "emailMessage",
            },
        },
        EmailSubject = {
            type = "string",
            traits = {
                json_name = "emailSubject",
            },
        },
    },
}

M.SmsSettings = {
    type = "structure",
    members = {
        SmsMessage = {
            type = "string",
            traits = {
                json_name = "smsMessage",
            },
        },
    },
}

M.CreateBackendAuthForgotPasswordConfig = {
    type = "structure",
    members = {
        DeliveryMethod = {
            type = "string",
            traits = {
                json_name = "deliveryMethod",
                required = true,
            },
        },
        EmailSettings = setmetatable({ traits = {
            json_name = "emailSettings",
        } }, { __index = M.EmailSettings }),
        SmsSettings = setmetatable({ traits = {
            json_name = "smsSettings",
        } }, { __index = M.SmsSettings }),
    },
}

M.MFAMode = {
    ON = "ON",
    OFF = "OFF",
    OPTIONAL = "OPTIONAL",
}

M.MfaTypesElement = {
    SMS = "SMS",
    TOTP = "TOTP",
}

M.Settings = {
    type = "structure",
    members = {
        MfaTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "mfaTypes",
            },
        },
        SmsMessage = {
            type = "string",
            traits = {
                json_name = "smsMessage",
            },
        },
    },
}

M.CreateBackendAuthMFAConfig = {
    type = "structure",
    members = {
        MFAMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Settings = setmetatable({ traits = {
            json_name = "settings",
        } }, { __index = M.Settings }),
    },
}

M.OAuthGrantType = {
    CODE = "CODE",
    IMPLICIT = "IMPLICIT",
}

M.OAuthScopesElement = {
    PHONE = "PHONE",
    EMAIL = "EMAIL",
    OPENID = "OPENID",
    PROFILE = "PROFILE",
    AWS_COGNITO_SIGNIN_USER_ADMIN = "AWS_COGNITO_SIGNIN_USER_ADMIN",
}

M.BackendAuthSocialProviderConfig = {
    type = "structure",
    members = {
        ClientId = {
            type = "string",
            traits = {
                json_name = "client_id",
            },
        },
        ClientSecret = {
            type = "string",
            traits = {
                json_name = "client_secret",
            },
        },
    },
}

M.BackendAuthAppleProviderConfig = {
    type = "structure",
    members = {
        ClientId = {
            type = "string",
            traits = {
                json_name = "client_id",
            },
        },
        KeyId = {
            type = "string",
            traits = {
                json_name = "key_id",
            },
        },
        PrivateKey = {
            type = "string",
            traits = {
                json_name = "private_key",
            },
        },
        TeamId = {
            type = "string",
            traits = {
                json_name = "team_id",
            },
        },
    },
}

M.SocialProviderSettings = {
    type = "structure",
    members = {
        Facebook = M.BackendAuthSocialProviderConfig,
        Google = M.BackendAuthSocialProviderConfig,
        LoginWithAmazon = M.BackendAuthSocialProviderConfig,
        SignInWithApple = M.BackendAuthAppleProviderConfig,
    },
}

M.CreateBackendAuthOAuthConfig = {
    type = "structure",
    members = {
        DomainPrefix = {
            type = "string",
            traits = {
                json_name = "domainPrefix",
            },
        },
        OAuthGrantType = {
            type = "string",
            traits = {
                json_name = "oAuthGrantType",
                required = true,
            },
        },
        OAuthScopes = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "oAuthScopes",
                required = true,
            },
        },
        RedirectSignInURIs = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "redirectSignInURIs",
                required = true,
            },
        },
        RedirectSignOutURIs = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "redirectSignOutURIs",
                required = true,
            },
        },
        SocialProviderSettings = setmetatable({ traits = {
            json_name = "socialProviderSettings",
        } }, { __index = M.SocialProviderSettings }),
    },
}

M.CreateBackendAuthPasswordPolicyConfig = {
    type = "structure",
    members = {
        AdditionalConstraints = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "additionalConstraints",
            },
        },
        MinimumLength = {
            type = "double",
            traits = {
                json_name = "minimumLength",
                required = true,
            },
        },
    },
}

M.RequiredSignUpAttributesElement = {
    ADDRESS = "ADDRESS",
    BIRTHDATE = "BIRTHDATE",
    EMAIL = "EMAIL",
    FAMILY_NAME = "FAMILY_NAME",
    GENDER = "GENDER",
    GIVEN_NAME = "GIVEN_NAME",
    LOCALE = "LOCALE",
    MIDDLE_NAME = "MIDDLE_NAME",
    NAME = "NAME",
    NICKNAME = "NICKNAME",
    PHONE_NUMBER = "PHONE_NUMBER",
    PICTURE = "PICTURE",
    PREFERRED_USERNAME = "PREFERRED_USERNAME",
    PROFILE = "PROFILE",
    UPDATED_AT = "UPDATED_AT",
    WEBSITE = "WEBSITE",
    ZONE_INFO = "ZONE_INFO",
}

M.SignInMethod = {
    EMAIL = "EMAIL",
    EMAIL_AND_PHONE_NUMBER = "EMAIL_AND_PHONE_NUMBER",
    PHONE_NUMBER = "PHONE_NUMBER",
    USERNAME = "USERNAME",
}

M.CreateBackendAuthVerificationMessageConfig = {
    type = "structure",
    members = {
        DeliveryMethod = {
            type = "string",
            traits = {
                json_name = "deliveryMethod",
                required = true,
            },
        },
        EmailSettings = setmetatable({ traits = {
            json_name = "emailSettings",
        } }, { __index = M.EmailSettings }),
        SmsSettings = setmetatable({ traits = {
            json_name = "smsSettings",
        } }, { __index = M.SmsSettings }),
    },
}

M.CreateBackendAuthUserPoolConfig = {
    type = "structure",
    members = {
        ForgotPassword = setmetatable({ traits = {
            json_name = "forgotPassword",
        } }, { __index = M.CreateBackendAuthForgotPasswordConfig }),
        Mfa = setmetatable({ traits = {
            json_name = "mfa",
        } }, { __index = M.CreateBackendAuthMFAConfig }),
        OAuth = setmetatable({ traits = {
            json_name = "oAuth",
        } }, { __index = M.CreateBackendAuthOAuthConfig }),
        PasswordPolicy = setmetatable({ traits = {
            json_name = "passwordPolicy",
        } }, { __index = M.CreateBackendAuthPasswordPolicyConfig }),
        RequiredSignUpAttributes = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "requiredSignUpAttributes",
                required = true,
            },
        },
        SignInMethod = {
            type = "string",
            traits = {
                json_name = "signInMethod",
                required = true,
            },
        },
        UserPoolName = {
            type = "string",
            traits = {
                json_name = "userPoolName",
                required = true,
            },
        },
        VerificationMessage = setmetatable({ traits = {
            json_name = "verificationMessage",
        } }, { __index = M.CreateBackendAuthVerificationMessageConfig }),
    },
}

M.CreateBackendAuthResourceConfig = {
    type = "structure",
    members = {
        AuthResources = {
            type = "string",
            traits = {
                json_name = "authResources",
                required = true,
            },
        },
        IdentityPoolConfigs = setmetatable({ traits = {
            json_name = "identityPoolConfigs",
        } }, { __index = M.CreateBackendAuthIdentityPoolConfig }),
        Service = {
            type = "string",
            traits = {
                json_name = "service",
                required = true,
            },
        },
        UserPoolConfigs = setmetatable({ traits = {
            json_name = "userPoolConfigs",
            required = true,
        } }, { __index = M.CreateBackendAuthUserPoolConfig }),
    },
}

M.CreateBackendAuthInput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                json_name = "backendEnvironmentName",
                required = true,
            },
        },
        ResourceConfig = setmetatable({ traits = {
            json_name = "resourceConfig",
            required = true,
        } }, { __index = M.CreateBackendAuthResourceConfig }),
        ResourceName = {
            type = "string",
            traits = {
                json_name = "resourceName",
                required = true,
            },
        },
    },
}

M.CreateBackendAuthOutput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                json_name = "appId",
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                json_name = "backendEnvironmentName",
            },
        },
        Error = {
            type = "string",
            traits = {
                json_name = "error",
            },
        },
        JobId = {
            type = "string",
            traits = {
                json_name = "jobId",
            },
        },
        Operation = {
            type = "string",
            traits = {
                json_name = "operation",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.CreateBackendConfigInput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BackendManagerAppId = {
            type = "string",
            traits = {
                json_name = "backendManagerAppId",
            },
        },
    },
}

M.CreateBackendConfigOutput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                json_name = "appId",
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                json_name = "backendEnvironmentName",
            },
        },
        JobId = {
            type = "string",
            traits = {
                json_name = "jobId",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.AuthenticatedElement = {
    READ = "READ",
    CREATE_AND_UPDATE = "CREATE_AND_UPDATE",
    DELETE = "DELETE",
}

M.UnAuthenticatedElement = {
    READ = "READ",
    CREATE_AND_UPDATE = "CREATE_AND_UPDATE",
    DELETE = "DELETE",
}

M.BackendStoragePermissions = {
    type = "structure",
    members = {
        Authenticated = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "authenticated",
                required = true,
            },
        },
        UnAuthenticated = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "unAuthenticated",
            },
        },
    },
}

M.ServiceName = {
    S3 = "S3",
}

M.CreateBackendStorageResourceConfig = {
    type = "structure",
    members = {
        BucketName = {
            type = "string",
            traits = {
                json_name = "bucketName",
            },
        },
        Permissions = setmetatable({ traits = {
            json_name = "permissions",
            required = true,
        } }, { __index = M.BackendStoragePermissions }),
        ServiceName = {
            type = "string",
            traits = {
                json_name = "serviceName",
                required = true,
            },
        },
    },
}

M.CreateBackendStorageInput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                json_name = "backendEnvironmentName",
                required = true,
            },
        },
        ResourceConfig = setmetatable({ traits = {
            json_name = "resourceConfig",
            required = true,
        } }, { __index = M.CreateBackendStorageResourceConfig }),
        ResourceName = {
            type = "string",
            traits = {
                json_name = "resourceName",
                required = true,
            },
        },
    },
}

M.CreateBackendStorageOutput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                json_name = "appId",
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                json_name = "backendEnvironmentName",
            },
        },
        JobId = {
            type = "string",
            traits = {
                json_name = "jobId",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.CreateTokenInput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CreateTokenOutput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                json_name = "appId",
            },
        },
        ChallengeCode = {
            type = "string",
            traits = {
                json_name = "challengeCode",
            },
        },
        SessionId = {
            type = "string",
            traits = {
                json_name = "sessionId",
            },
        },
        Ttl = {
            type = "string",
            traits = {
                json_name = "ttl",
            },
        },
    },
}

M.DeleteBackendInput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteBackendOutput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                json_name = "appId",
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                json_name = "backendEnvironmentName",
            },
        },
        Error = {
            type = "string",
            traits = {
                json_name = "error",
            },
        },
        JobId = {
            type = "string",
            traits = {
                json_name = "jobId",
            },
        },
        Operation = {
            type = "string",
            traits = {
                json_name = "operation",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.DeleteBackendAPIInput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceConfig = setmetatable({ traits = {
            json_name = "resourceConfig",
        } }, { __index = M.BackendAPIResourceConfig }),
        ResourceName = {
            type = "string",
            traits = {
                json_name = "resourceName",
                required = true,
            },
        },
    },
}

M.DeleteBackendAPIOutput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                json_name = "appId",
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                json_name = "backendEnvironmentName",
            },
        },
        Error = {
            type = "string",
            traits = {
                json_name = "error",
            },
        },
        JobId = {
            type = "string",
            traits = {
                json_name = "jobId",
            },
        },
        Operation = {
            type = "string",
            traits = {
                json_name = "operation",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.DeleteBackendAuthInput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceName = {
            type = "string",
            traits = {
                json_name = "resourceName",
                required = true,
            },
        },
    },
}

M.DeleteBackendAuthOutput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                json_name = "appId",
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                json_name = "backendEnvironmentName",
            },
        },
        Error = {
            type = "string",
            traits = {
                json_name = "error",
            },
        },
        JobId = {
            type = "string",
            traits = {
                json_name = "jobId",
            },
        },
        Operation = {
            type = "string",
            traits = {
                json_name = "operation",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.DeleteBackendStorageInput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceName = {
            type = "string",
            traits = {
                json_name = "resourceName",
                required = true,
            },
        },
        ServiceName = {
            type = "string",
            traits = {
                json_name = "serviceName",
                required = true,
            },
        },
    },
}

M.DeleteBackendStorageOutput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                json_name = "appId",
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                json_name = "backendEnvironmentName",
            },
        },
        JobId = {
            type = "string",
            traits = {
                json_name = "jobId",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.DeleteTokenInput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SessionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteTokenOutput = {
    type = "structure",
    members = {
        IsSuccess = {
            type = "boolean",
            traits = {
                json_name = "isSuccess",
            },
        },
    },
}

M.GenerateBackendAPIModelsInput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceName = {
            type = "string",
            traits = {
                json_name = "resourceName",
                required = true,
            },
        },
    },
}

M.GenerateBackendAPIModelsOutput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                json_name = "appId",
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                json_name = "backendEnvironmentName",
            },
        },
        Error = {
            type = "string",
            traits = {
                json_name = "error",
            },
        },
        JobId = {
            type = "string",
            traits = {
                json_name = "jobId",
            },
        },
        Operation = {
            type = "string",
            traits = {
                json_name = "operation",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.GetBackendInput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                json_name = "backendEnvironmentName",
            },
        },
    },
}

M.GetBackendOutput = {
    type = "structure",
    members = {
        AmplifyFeatureFlags = {
            type = "string",
            traits = {
                json_name = "amplifyFeatureFlags",
            },
        },
        AmplifyMetaConfig = {
            type = "string",
            traits = {
                json_name = "amplifyMetaConfig",
            },
        },
        AppId = {
            type = "string",
            traits = {
                json_name = "appId",
            },
        },
        AppName = {
            type = "string",
            traits = {
                json_name = "appName",
            },
        },
        BackendEnvironmentList = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "backendEnvironmentList",
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                json_name = "backendEnvironmentName",
            },
        },
        Error = {
            type = "string",
            traits = {
                json_name = "error",
            },
        },
    },
}

M.GetBackendAPIInput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceConfig = setmetatable({ traits = {
            json_name = "resourceConfig",
        } }, { __index = M.BackendAPIResourceConfig }),
        ResourceName = {
            type = "string",
            traits = {
                json_name = "resourceName",
                required = true,
            },
        },
    },
}

M.GetBackendAPIOutput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                json_name = "appId",
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                json_name = "backendEnvironmentName",
            },
        },
        Error = {
            type = "string",
            traits = {
                json_name = "error",
            },
        },
        ResourceConfig = setmetatable({ traits = {
            json_name = "resourceConfig",
        } }, { __index = M.BackendAPIResourceConfig }),
        ResourceName = {
            type = "string",
            traits = {
                json_name = "resourceName",
            },
        },
    },
}

M.GetBackendAPIModelsInput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceName = {
            type = "string",
            traits = {
                json_name = "resourceName",
                required = true,
            },
        },
    },
}

M.Status = {
    LATEST = "LATEST",
    STALE = "STALE",
}

M.GetBackendAPIModelsOutput = {
    type = "structure",
    members = {
        Models = {
            type = "string",
            traits = {
                json_name = "models",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
        ModelIntrospectionSchema = {
            type = "string",
            traits = {
                json_name = "modelIntrospectionSchema",
            },
        },
    },
}

M.GetBackendAuthInput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceName = {
            type = "string",
            traits = {
                json_name = "resourceName",
                required = true,
            },
        },
    },
}

M.GetBackendAuthOutput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                json_name = "appId",
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                json_name = "backendEnvironmentName",
            },
        },
        Error = {
            type = "string",
            traits = {
                json_name = "error",
            },
        },
        ResourceConfig = setmetatable({ traits = {
            json_name = "resourceConfig",
        } }, { __index = M.CreateBackendAuthResourceConfig }),
        ResourceName = {
            type = "string",
            traits = {
                json_name = "resourceName",
            },
        },
    },
}

M.GetBackendJobInput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        JobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetBackendJobOutput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                json_name = "appId",
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                json_name = "backendEnvironmentName",
            },
        },
        CreateTime = {
            type = "string",
            traits = {
                json_name = "createTime",
            },
        },
        Error = {
            type = "string",
            traits = {
                json_name = "error",
            },
        },
        JobId = {
            type = "string",
            traits = {
                json_name = "jobId",
            },
        },
        Operation = {
            type = "string",
            traits = {
                json_name = "operation",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
        UpdateTime = {
            type = "string",
            traits = {
                json_name = "updateTime",
            },
        },
    },
}

M.GetBackendStorageInput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceName = {
            type = "string",
            traits = {
                json_name = "resourceName",
                required = true,
            },
        },
    },
}

M.GetBackendStorageResourceConfig = {
    type = "structure",
    members = {
        BucketName = {
            type = "string",
            traits = {
                json_name = "bucketName",
            },
        },
        Imported = {
            type = "boolean",
            traits = {
                json_name = "imported",
                required = true,
            },
        },
        Permissions = setmetatable({ traits = {
            json_name = "permissions",
        } }, { __index = M.BackendStoragePermissions }),
        ServiceName = {
            type = "string",
            traits = {
                json_name = "serviceName",
                required = true,
            },
        },
    },
}

M.GetBackendStorageOutput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                json_name = "appId",
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                json_name = "backendEnvironmentName",
            },
        },
        ResourceConfig = setmetatable({ traits = {
            json_name = "resourceConfig",
        } }, { __index = M.GetBackendStorageResourceConfig }),
        ResourceName = {
            type = "string",
            traits = {
                json_name = "resourceName",
            },
        },
    },
}

M.GetTokenInput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SessionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetTokenOutput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                json_name = "appId",
            },
        },
        ChallengeCode = {
            type = "string",
            traits = {
                json_name = "challengeCode",
            },
        },
        SessionId = {
            type = "string",
            traits = {
                json_name = "sessionId",
            },
        },
        Ttl = {
            type = "string",
            traits = {
                json_name = "ttl",
            },
        },
    },
}

M.ImportBackendAuthInput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IdentityPoolId = {
            type = "string",
            traits = {
                json_name = "identityPoolId",
            },
        },
        NativeClientId = {
            type = "string",
            traits = {
                json_name = "nativeClientId",
                required = true,
            },
        },
        UserPoolId = {
            type = "string",
            traits = {
                json_name = "userPoolId",
                required = true,
            },
        },
        WebClientId = {
            type = "string",
            traits = {
                json_name = "webClientId",
                required = true,
            },
        },
    },
}

M.ImportBackendAuthOutput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                json_name = "appId",
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                json_name = "backendEnvironmentName",
            },
        },
        Error = {
            type = "string",
            traits = {
                json_name = "error",
            },
        },
        JobId = {
            type = "string",
            traits = {
                json_name = "jobId",
            },
        },
        Operation = {
            type = "string",
            traits = {
                json_name = "operation",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.ImportBackendStorageInput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BucketName = {
            type = "string",
            traits = {
                json_name = "bucketName",
            },
        },
        ServiceName = {
            type = "string",
            traits = {
                json_name = "serviceName",
                required = true,
            },
        },
    },
}

M.ImportBackendStorageOutput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                json_name = "appId",
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                json_name = "backendEnvironmentName",
            },
        },
        JobId = {
            type = "string",
            traits = {
                json_name = "jobId",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.ListBackendJobsInput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        JobId = {
            type = "string",
            traits = {
                json_name = "jobId",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                json_name = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        Operation = {
            type = "string",
            traits = {
                json_name = "operation",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.BackendJobRespObj = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                json_name = "appId",
                required = true,
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                json_name = "backendEnvironmentName",
                required = true,
            },
        },
        CreateTime = {
            type = "string",
            traits = {
                json_name = "createTime",
            },
        },
        Error = {
            type = "string",
            traits = {
                json_name = "error",
            },
        },
        JobId = {
            type = "string",
            traits = {
                json_name = "jobId",
            },
        },
        Operation = {
            type = "string",
            traits = {
                json_name = "operation",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
        UpdateTime = {
            type = "string",
            traits = {
                json_name = "updateTime",
            },
        },
    },
}

M.ListBackendJobsOutput = {
    type = "structure",
    members = {
        Jobs = {
            type = "list",
            member = M.BackendJobRespObj,
            traits = {
                json_name = "jobs",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListS3BucketsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.S3BucketInfo = {
    type = "structure",
    members = {
        CreationDate = {
            type = "string",
            traits = {
                json_name = "creationDate",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
    },
}

M.ListS3BucketsOutput = {
    type = "structure",
    members = {
        Buckets = {
            type = "list",
            member = M.S3BucketInfo,
            traits = {
                json_name = "buckets",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.RemoveAllBackendsInput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CleanAmplifyApp = {
            type = "boolean",
            traits = {
                json_name = "cleanAmplifyApp",
            },
        },
    },
}

M.RemoveAllBackendsOutput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                json_name = "appId",
            },
        },
        Error = {
            type = "string",
            traits = {
                json_name = "error",
            },
        },
        JobId = {
            type = "string",
            traits = {
                json_name = "jobId",
            },
        },
        Operation = {
            type = "string",
            traits = {
                json_name = "operation",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.RemoveBackendConfigInput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RemoveBackendConfigOutput = {
    type = "structure",
    members = {
        Error = {
            type = "string",
            traits = {
                json_name = "error",
            },
        },
    },
}

M.UpdateBackendAPIInput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceConfig = setmetatable({ traits = {
            json_name = "resourceConfig",
        } }, { __index = M.BackendAPIResourceConfig }),
        ResourceName = {
            type = "string",
            traits = {
                json_name = "resourceName",
                required = true,
            },
        },
    },
}

M.UpdateBackendAPIOutput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                json_name = "appId",
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                json_name = "backendEnvironmentName",
            },
        },
        Error = {
            type = "string",
            traits = {
                json_name = "error",
            },
        },
        JobId = {
            type = "string",
            traits = {
                json_name = "jobId",
            },
        },
        Operation = {
            type = "string",
            traits = {
                json_name = "operation",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.UpdateBackendAuthIdentityPoolConfig = {
    type = "structure",
    members = {
        UnauthenticatedLogin = {
            type = "boolean",
            traits = {
                json_name = "unauthenticatedLogin",
            },
        },
    },
}

M.UpdateBackendAuthForgotPasswordConfig = {
    type = "structure",
    members = {
        DeliveryMethod = {
            type = "string",
            traits = {
                json_name = "deliveryMethod",
            },
        },
        EmailSettings = setmetatable({ traits = {
            json_name = "emailSettings",
        } }, { __index = M.EmailSettings }),
        SmsSettings = setmetatable({ traits = {
            json_name = "smsSettings",
        } }, { __index = M.SmsSettings }),
    },
}

M.UpdateBackendAuthMFAConfig = {
    type = "structure",
    members = {
        MFAMode = {
            type = "string",
        },
        Settings = setmetatable({ traits = {
            json_name = "settings",
        } }, { __index = M.Settings }),
    },
}

M.UpdateBackendAuthOAuthConfig = {
    type = "structure",
    members = {
        DomainPrefix = {
            type = "string",
            traits = {
                json_name = "domainPrefix",
            },
        },
        OAuthGrantType = {
            type = "string",
            traits = {
                json_name = "oAuthGrantType",
            },
        },
        OAuthScopes = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "oAuthScopes",
            },
        },
        RedirectSignInURIs = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "redirectSignInURIs",
            },
        },
        RedirectSignOutURIs = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "redirectSignOutURIs",
            },
        },
        SocialProviderSettings = setmetatable({ traits = {
            json_name = "socialProviderSettings",
        } }, { __index = M.SocialProviderSettings }),
    },
}

M.UpdateBackendAuthPasswordPolicyConfig = {
    type = "structure",
    members = {
        AdditionalConstraints = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "additionalConstraints",
            },
        },
        MinimumLength = {
            type = "double",
            traits = {
                json_name = "minimumLength",
            },
        },
    },
}

M.UpdateBackendAuthVerificationMessageConfig = {
    type = "structure",
    members = {
        DeliveryMethod = {
            type = "string",
            traits = {
                json_name = "deliveryMethod",
                required = true,
            },
        },
        EmailSettings = setmetatable({ traits = {
            json_name = "emailSettings",
        } }, { __index = M.EmailSettings }),
        SmsSettings = setmetatable({ traits = {
            json_name = "smsSettings",
        } }, { __index = M.SmsSettings }),
    },
}

M.UpdateBackendAuthUserPoolConfig = {
    type = "structure",
    members = {
        ForgotPassword = setmetatable({ traits = {
            json_name = "forgotPassword",
        } }, { __index = M.UpdateBackendAuthForgotPasswordConfig }),
        Mfa = setmetatable({ traits = {
            json_name = "mfa",
        } }, { __index = M.UpdateBackendAuthMFAConfig }),
        OAuth = setmetatable({ traits = {
            json_name = "oAuth",
        } }, { __index = M.UpdateBackendAuthOAuthConfig }),
        PasswordPolicy = setmetatable({ traits = {
            json_name = "passwordPolicy",
        } }, { __index = M.UpdateBackendAuthPasswordPolicyConfig }),
        VerificationMessage = setmetatable({ traits = {
            json_name = "verificationMessage",
        } }, { __index = M.UpdateBackendAuthVerificationMessageConfig }),
    },
}

M.UpdateBackendAuthResourceConfig = {
    type = "structure",
    members = {
        AuthResources = {
            type = "string",
            traits = {
                json_name = "authResources",
                required = true,
            },
        },
        IdentityPoolConfigs = setmetatable({ traits = {
            json_name = "identityPoolConfigs",
        } }, { __index = M.UpdateBackendAuthIdentityPoolConfig }),
        Service = {
            type = "string",
            traits = {
                json_name = "service",
                required = true,
            },
        },
        UserPoolConfigs = setmetatable({ traits = {
            json_name = "userPoolConfigs",
            required = true,
        } }, { __index = M.UpdateBackendAuthUserPoolConfig }),
    },
}

M.UpdateBackendAuthInput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceConfig = setmetatable({ traits = {
            json_name = "resourceConfig",
            required = true,
        } }, { __index = M.UpdateBackendAuthResourceConfig }),
        ResourceName = {
            type = "string",
            traits = {
                json_name = "resourceName",
                required = true,
            },
        },
    },
}

M.UpdateBackendAuthOutput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                json_name = "appId",
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                json_name = "backendEnvironmentName",
            },
        },
        Error = {
            type = "string",
            traits = {
                json_name = "error",
            },
        },
        JobId = {
            type = "string",
            traits = {
                json_name = "jobId",
            },
        },
        Operation = {
            type = "string",
            traits = {
                json_name = "operation",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.LoginAuthConfigReqObj = {
    type = "structure",
    members = {
        AwsCognitoIdentityPoolId = {
            type = "string",
            traits = {
                json_name = "aws_cognito_identity_pool_id",
            },
        },
        AwsCognitoRegion = {
            type = "string",
            traits = {
                json_name = "aws_cognito_region",
            },
        },
        AwsUserPoolsId = {
            type = "string",
            traits = {
                json_name = "aws_user_pools_id",
            },
        },
        AwsUserPoolsWebClientId = {
            type = "string",
            traits = {
                json_name = "aws_user_pools_web_client_id",
            },
        },
    },
}

M.UpdateBackendConfigInput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LoginAuthConfig = setmetatable({ traits = {
            json_name = "loginAuthConfig",
        } }, { __index = M.LoginAuthConfigReqObj }),
    },
}

M.UpdateBackendConfigOutput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                json_name = "appId",
            },
        },
        BackendManagerAppId = {
            type = "string",
            traits = {
                json_name = "backendManagerAppId",
            },
        },
        Error = {
            type = "string",
            traits = {
                json_name = "error",
            },
        },
        LoginAuthConfig = setmetatable({ traits = {
            json_name = "loginAuthConfig",
        } }, { __index = M.LoginAuthConfigReqObj }),
    },
}

M.UpdateBackendJobInput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        JobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Operation = {
            type = "string",
            traits = {
                json_name = "operation",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.UpdateBackendJobOutput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                json_name = "appId",
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                json_name = "backendEnvironmentName",
            },
        },
        CreateTime = {
            type = "string",
            traits = {
                json_name = "createTime",
            },
        },
        Error = {
            type = "string",
            traits = {
                json_name = "error",
            },
        },
        JobId = {
            type = "string",
            traits = {
                json_name = "jobId",
            },
        },
        Operation = {
            type = "string",
            traits = {
                json_name = "operation",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
        UpdateTime = {
            type = "string",
            traits = {
                json_name = "updateTime",
            },
        },
    },
}

M.UpdateBackendStorageResourceConfig = {
    type = "structure",
    members = {
        Permissions = setmetatable({ traits = {
            json_name = "permissions",
            required = true,
        } }, { __index = M.BackendStoragePermissions }),
        ServiceName = {
            type = "string",
            traits = {
                json_name = "serviceName",
                required = true,
            },
        },
    },
}

M.UpdateBackendStorageInput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceConfig = setmetatable({ traits = {
            json_name = "resourceConfig",
            required = true,
        } }, { __index = M.UpdateBackendStorageResourceConfig }),
        ResourceName = {
            type = "string",
            traits = {
                json_name = "resourceName",
                required = true,
            },
        },
    },
}

M.UpdateBackendStorageOutput = {
    type = "structure",
    members = {
        AppId = {
            type = "string",
            traits = {
                json_name = "appId",
            },
        },
        BackendEnvironmentName = {
            type = "string",
            traits = {
                json_name = "backendEnvironmentName",
            },
        },
        JobId = {
            type = "string",
            traits = {
                json_name = "jobId",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

return M
