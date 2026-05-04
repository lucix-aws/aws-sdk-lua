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

M.AssociateBrowserSettingsInput = {
    type = "structure",
    id = "AssociateBrowserSettingsInput",
    members = {
        portalArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        browserSettingsArn = {
            type = "string",
            traits = {
                http_query = "browserSettingsArn",
                required = true,
            },
        },
    },
}

M.AssociateBrowserSettingsOutput = {
    type = "structure",
    id = "AssociateBrowserSettingsOutput",
    members = {
        portalArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        browserSettingsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        resourceId = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
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
        retryAfterSeconds = {
            type = "integer",
            traits = {
                default = 0,
                http_header = "Retry-After",
            },
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
        resourceId = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        serviceCode = {
            type = "string",
        },
        quotaCode = {
            type = "string",
        },
        retryAfterSeconds = {
            type = "integer",
            traits = {
                default = 0,
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    id = "ValidationExceptionField",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "unknownOperation",
    CANNOT_PARSE = "cannotParse",
    FIELD_VALIDATION_FAILED = "fieldValidationFailed",
    OTHER = "other",
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        reason = {
            type = "string",
        },
        fieldList = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.AssociateDataProtectionSettingsInput = {
    type = "structure",
    id = "AssociateDataProtectionSettingsInput",
    members = {
        portalArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dataProtectionSettingsArn = {
            type = "string",
            traits = {
                http_query = "dataProtectionSettingsArn",
                required = true,
            },
        },
    },
}

M.AssociateDataProtectionSettingsOutput = {
    type = "structure",
    id = "AssociateDataProtectionSettingsOutput",
    members = {
        portalArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataProtectionSettingsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateIpAccessSettingsInput = {
    type = "structure",
    id = "AssociateIpAccessSettingsInput",
    members = {
        portalArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ipAccessSettingsArn = {
            type = "string",
            traits = {
                http_query = "ipAccessSettingsArn",
                required = true,
            },
        },
    },
}

M.AssociateIpAccessSettingsOutput = {
    type = "structure",
    id = "AssociateIpAccessSettingsOutput",
    members = {
        portalArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ipAccessSettingsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateNetworkSettingsInput = {
    type = "structure",
    id = "AssociateNetworkSettingsInput",
    members = {
        portalArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        networkSettingsArn = {
            type = "string",
            traits = {
                http_query = "networkSettingsArn",
                required = true,
            },
        },
    },
}

M.AssociateNetworkSettingsOutput = {
    type = "structure",
    id = "AssociateNetworkSettingsOutput",
    members = {
        portalArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkSettingsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateSessionLoggerInput = {
    type = "structure",
    id = "AssociateSessionLoggerInput",
    members = {
        portalArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sessionLoggerArn = {
            type = "string",
            traits = {
                http_query = "sessionLoggerArn",
                required = true,
            },
        },
    },
}

M.AssociateSessionLoggerOutput = {
    type = "structure",
    id = "AssociateSessionLoggerOutput",
    members = {
        portalArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionLoggerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateTrustStoreInput = {
    type = "structure",
    id = "AssociateTrustStoreInput",
    members = {
        portalArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        trustStoreArn = {
            type = "string",
            traits = {
                http_query = "trustStoreArn",
                required = true,
            },
        },
    },
}

M.AssociateTrustStoreOutput = {
    type = "structure",
    id = "AssociateTrustStoreOutput",
    members = {
        portalArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        trustStoreArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateUserAccessLoggingSettingsInput = {
    type = "structure",
    id = "AssociateUserAccessLoggingSettingsInput",
    members = {
        portalArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userAccessLoggingSettingsArn = {
            type = "string",
            traits = {
                http_query = "userAccessLoggingSettingsArn",
                required = true,
            },
        },
    },
}

M.AssociateUserAccessLoggingSettingsOutput = {
    type = "structure",
    id = "AssociateUserAccessLoggingSettingsOutput",
    members = {
        portalArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userAccessLoggingSettingsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateUserSettingsInput = {
    type = "structure",
    id = "AssociateUserSettingsInput",
    members = {
        portalArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userSettingsArn = {
            type = "string",
            traits = {
                http_query = "userSettingsArn",
                required = true,
            },
        },
    },
}

M.AssociateUserSettingsOutput = {
    type = "structure",
    id = "AssociateUserSettingsOutput",
    members = {
        portalArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userSettingsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AuthenticationType = {
    STANDARD = "Standard",
    IAM_IDENTITY_CENTER = "IAM_Identity_Center",
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Category = {
    CULTS = "Cults",
    GAMBLING = "Gambling",
    NUDITY = "Nudity",
    PORNOGRAPHY = "Pornography",
    SEX_EDUCATION = "SexEducation",
    TASTELESS = "Tasteless",
    VIOLENCE = "Violence",
    DOWNLOAD_SITES = "DownloadSites",
    IMAGE_SHARING = "ImageSharing",
    PEER_TO_PEER = "PeerToPeer",
    STREAMING_MEDIA_AND_DOWNLOADS = "StreamingMediaAndDownloads",
    GENERATIVE_AI = "GenerativeAI",
    CRIMINAL_ACTIVITY = "CriminalActivity",
    HACKING = "Hacking",
    HATE_AND_INTOLERANCE = "HateAndIntolerance",
    ILLEGAL_DRUG = "IllegalDrug",
    ILLEGAL_SOFTWARE = "IllegalSoftware",
    SCHOOL_CHEATING = "SchoolCheating",
    SELF_HARM = "SelfHarm",
    WEAPONS = "Weapons",
    CHAT = "Chat",
    GAMES = "Games",
    INSTANT_MESSAGING = "InstantMessaging",
    PROFESSIONAL_NETWORK = "ProfessionalNetwork",
    SOCIAL_NETWORKING = "SocialNetworking",
    WEB_BASED_EMAIL = "WebBasedEmail",
    PARKED_DOMAINS = "ParkedDomains",
}

M.WebContentFilteringPolicy = {
    type = "structure",
    id = "WebContentFilteringPolicy",
    members = {
        blockedCategories = {
            type = "list",
            member = { type = "string" },
        },
        allowedUrls = {
            type = "list",
            member = { type = "string" },
        },
        blockedUrls = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateBrowserSettingsInput = {
    type = "structure",
    id = "CreateBrowserSettingsInput",
    members = {
        tags = {
            type = "list",
            member = M.Tag,
        },
        customerManagedKey = {
            type = "string",
        },
        additionalEncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        browserPolicy = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        webContentFilteringPolicy = M.WebContentFilteringPolicy,
    },
}

M.CreateBrowserSettingsOutput = {
    type = "structure",
    id = "CreateBrowserSettingsOutput",
    members = {
        browserSettingsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        resourceId = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        serviceCode = {
            type = "string",
        },
        quotaCode = {
            type = "string",
        },
    },
}

M.DeleteBrowserSettingsInput = {
    type = "structure",
    id = "DeleteBrowserSettingsInput",
    members = {
        browserSettingsArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteBrowserSettingsOutput = {
    type = "structure",
    id = "DeleteBrowserSettingsOutput",
}

M.GetBrowserSettingsInput = {
    type = "structure",
    id = "GetBrowserSettingsInput",
    members = {
        browserSettingsArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.BrowserSettings = {
    type = "structure",
    id = "BrowserSettings",
    members = {
        browserSettingsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        associatedPortalArns = {
            type = "list",
            member = { type = "string" },
        },
        browserPolicy = {
            type = "string",
        },
        customerManagedKey = {
            type = "string",
        },
        additionalEncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        webContentFilteringPolicy = M.WebContentFilteringPolicy,
    },
}

M.GetBrowserSettingsOutput = {
    type = "structure",
    id = "GetBrowserSettingsOutput",
    members = {
        browserSettings = M.BrowserSettings,
    },
}

M.ListBrowserSettingsInput = {
    type = "structure",
    id = "ListBrowserSettingsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.BrowserSettingsSummary = {
    type = "structure",
    id = "BrowserSettingsSummary",
    members = {
        browserSettingsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListBrowserSettingsOutput = {
    type = "structure",
    id = "ListBrowserSettingsOutput",
    members = {
        browserSettings = {
            type = "list",
            member = M.BrowserSettingsSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateBrowserSettingsInput = {
    type = "structure",
    id = "UpdateBrowserSettingsInput",
    members = {
        browserSettingsArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        browserPolicy = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        webContentFilteringPolicy = M.WebContentFilteringPolicy,
    },
}

M.UpdateBrowserSettingsOutput = {
    type = "structure",
    id = "UpdateBrowserSettingsOutput",
    members = {
        browserSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BrowserSettings }),
    },
}

M.CustomPattern = {
    type = "structure",
    id = "CustomPattern",
    members = {
        patternName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        patternRegex = {
            type = "string",
            traits = {
                required = true,
            },
        },
        patternDescription = {
            type = "string",
        },
        keywordRegex = {
            type = "string",
        },
    },
}

M.RedactionPlaceHolderType = {
    CUSTOM_TEXT = "CustomText",
}

M.RedactionPlaceHolder = {
    type = "structure",
    id = "RedactionPlaceHolder",
    members = {
        redactionPlaceHolderType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        redactionPlaceHolderText = {
            type = "string",
        },
    },
}

M.InlineRedactionPattern = {
    type = "structure",
    id = "InlineRedactionPattern",
    members = {
        builtInPatternId = {
            type = "string",
        },
        customPattern = M.CustomPattern,
        redactionPlaceHolder = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RedactionPlaceHolder }),
        enforcedUrls = {
            type = "list",
            member = { type = "string" },
        },
        exemptUrls = {
            type = "list",
            member = { type = "string" },
        },
        confidenceLevel = {
            type = "integer",
        },
    },
}

M.InlineRedactionConfiguration = {
    type = "structure",
    id = "InlineRedactionConfiguration",
    members = {
        inlineRedactionPatterns = {
            type = "list",
            member = M.InlineRedactionPattern,
            traits = {
                required = true,
            },
        },
        globalEnforcedUrls = {
            type = "list",
            member = { type = "string" },
        },
        globalExemptUrls = {
            type = "list",
            member = { type = "string" },
        },
        globalConfidenceLevel = {
            type = "integer",
        },
    },
}

M.CreateDataProtectionSettingsInput = {
    type = "structure",
    id = "CreateDataProtectionSettingsInput",
    members = {
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        customerManagedKey = {
            type = "string",
        },
        additionalEncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        inlineRedactionConfiguration = M.InlineRedactionConfiguration,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateDataProtectionSettingsOutput = {
    type = "structure",
    id = "CreateDataProtectionSettingsOutput",
    members = {
        dataProtectionSettingsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDataProtectionSettingsInput = {
    type = "structure",
    id = "DeleteDataProtectionSettingsInput",
    members = {
        dataProtectionSettingsArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDataProtectionSettingsOutput = {
    type = "structure",
    id = "DeleteDataProtectionSettingsOutput",
}

M.GetDataProtectionSettingsInput = {
    type = "structure",
    id = "GetDataProtectionSettingsInput",
    members = {
        dataProtectionSettingsArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DataProtectionSettings = {
    type = "structure",
    id = "DataProtectionSettings",
    members = {
        dataProtectionSettingsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inlineRedactionConfiguration = M.InlineRedactionConfiguration,
        associatedPortalArns = {
            type = "list",
            member = { type = "string" },
        },
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
        },
        customerManagedKey = {
            type = "string",
        },
        additionalEncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetDataProtectionSettingsOutput = {
    type = "structure",
    id = "GetDataProtectionSettingsOutput",
    members = {
        dataProtectionSettings = M.DataProtectionSettings,
    },
}

M.ListDataProtectionSettingsInput = {
    type = "structure",
    id = "ListDataProtectionSettingsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.DataProtectionSettingsSummary = {
    type = "structure",
    id = "DataProtectionSettingsSummary",
    members = {
        dataProtectionSettingsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
        },
    },
}

M.ListDataProtectionSettingsOutput = {
    type = "structure",
    id = "ListDataProtectionSettingsOutput",
    members = {
        dataProtectionSettings = {
            type = "list",
            member = M.DataProtectionSettingsSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateDataProtectionSettingsInput = {
    type = "structure",
    id = "UpdateDataProtectionSettingsInput",
    members = {
        dataProtectionSettingsArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        inlineRedactionConfiguration = M.InlineRedactionConfiguration,
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateDataProtectionSettingsOutput = {
    type = "structure",
    id = "UpdateDataProtectionSettingsOutput",
    members = {
        dataProtectionSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataProtectionSettings }),
    },
}

M.ExpireSessionInput = {
    type = "structure",
    id = "ExpireSessionInput",
    members = {
        portalId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ExpireSessionOutput = {
    type = "structure",
    id = "ExpireSessionOutput",
}

M.GetSessionInput = {
    type = "structure",
    id = "GetSessionInput",
    members = {
        portalId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SessionStatus = {
    ACTIVE = "Active",
    TERMINATED = "Terminated",
}

M.Session = {
    type = "structure",
    id = "Session",
    members = {
        portalArn = {
            type = "string",
        },
        sessionId = {
            type = "string",
        },
        username = {
            type = "string",
        },
        clientIpAddresses = {
            type = "list",
            member = { type = "string" },
        },
        status = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
    },
}

M.GetSessionOutput = {
    type = "structure",
    id = "GetSessionOutput",
    members = {
        session = M.Session,
    },
}

M.IdentityProviderType = {
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
        portalArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identityProviderName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identityProviderType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identityProviderDetails = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateIdentityProviderOutput = {
    type = "structure",
    id = "CreateIdentityProviderOutput",
    members = {
        identityProviderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIdentityProviderInput = {
    type = "structure",
    id = "DeleteIdentityProviderInput",
    members = {
        identityProviderArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteIdentityProviderOutput = {
    type = "structure",
    id = "DeleteIdentityProviderOutput",
}

M.GetIdentityProviderInput = {
    type = "structure",
    id = "GetIdentityProviderInput",
    members = {
        identityProviderArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.IdentityProvider = {
    type = "structure",
    id = "IdentityProvider",
    members = {
        identityProviderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identityProviderName = {
            type = "string",
        },
        identityProviderType = {
            type = "string",
        },
        identityProviderDetails = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetIdentityProviderOutput = {
    type = "structure",
    id = "GetIdentityProviderOutput",
    members = {
        identityProvider = M.IdentityProvider,
    },
}

M.ListIdentityProvidersInput = {
    type = "structure",
    id = "ListIdentityProvidersInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        portalArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.IdentityProviderSummary = {
    type = "structure",
    id = "IdentityProviderSummary",
    members = {
        identityProviderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identityProviderName = {
            type = "string",
        },
        identityProviderType = {
            type = "string",
        },
    },
}

M.ListIdentityProvidersOutput = {
    type = "structure",
    id = "ListIdentityProvidersOutput",
    members = {
        nextToken = {
            type = "string",
        },
        identityProviders = {
            type = "list",
            member = M.IdentityProviderSummary,
        },
    },
}

M.UpdateIdentityProviderInput = {
    type = "structure",
    id = "UpdateIdentityProviderInput",
    members = {
        identityProviderArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identityProviderName = {
            type = "string",
        },
        identityProviderType = {
            type = "string",
        },
        identityProviderDetails = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateIdentityProviderOutput = {
    type = "structure",
    id = "UpdateIdentityProviderOutput",
    members = {
        identityProvider = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdentityProvider }),
    },
}

M.IpRule = {
    type = "structure",
    id = "IpRule",
    members = {
        ipRange = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.CreateIpAccessSettingsInput = {
    type = "structure",
    id = "CreateIpAccessSettingsInput",
    members = {
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        customerManagedKey = {
            type = "string",
        },
        additionalEncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ipRules = {
            type = "list",
            member = M.IpRule,
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateIpAccessSettingsOutput = {
    type = "structure",
    id = "CreateIpAccessSettingsOutput",
    members = {
        ipAccessSettingsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIpAccessSettingsInput = {
    type = "structure",
    id = "DeleteIpAccessSettingsInput",
    members = {
        ipAccessSettingsArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteIpAccessSettingsOutput = {
    type = "structure",
    id = "DeleteIpAccessSettingsOutput",
}

M.GetIpAccessSettingsInput = {
    type = "structure",
    id = "GetIpAccessSettingsInput",
    members = {
        ipAccessSettingsArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.IpAccessSettings = {
    type = "structure",
    id = "IpAccessSettings",
    members = {
        ipAccessSettingsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        associatedPortalArns = {
            type = "list",
            member = { type = "string" },
        },
        ipRules = {
            type = "list",
            member = M.IpRule,
        },
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
        },
        customerManagedKey = {
            type = "string",
        },
        additionalEncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetIpAccessSettingsOutput = {
    type = "structure",
    id = "GetIpAccessSettingsOutput",
    members = {
        ipAccessSettings = M.IpAccessSettings,
    },
}

M.ListIpAccessSettingsInput = {
    type = "structure",
    id = "ListIpAccessSettingsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.IpAccessSettingsSummary = {
    type = "structure",
    id = "IpAccessSettingsSummary",
    members = {
        ipAccessSettingsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
        },
    },
}

M.ListIpAccessSettingsOutput = {
    type = "structure",
    id = "ListIpAccessSettingsOutput",
    members = {
        ipAccessSettings = {
            type = "list",
            member = M.IpAccessSettingsSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateIpAccessSettingsInput = {
    type = "structure",
    id = "UpdateIpAccessSettingsInput",
    members = {
        ipAccessSettingsArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        ipRules = {
            type = "list",
            member = M.IpRule,
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateIpAccessSettingsOutput = {
    type = "structure",
    id = "UpdateIpAccessSettingsOutput",
    members = {
        ipAccessSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IpAccessSettings }),
    },
}

M.SessionSortBy = {
    START_TIME_ASCENDING = "StartTimeAscending",
    START_TIME_DESCENDING = "StartTimeDescending",
}

M.ListSessionsInput = {
    type = "structure",
    id = "ListSessionsInput",
    members = {
        portalId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        username = {
            type = "string",
            traits = {
                http_query = "username",
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_query = "sessionId",
            },
        },
        sortBy = {
            type = "string",
            traits = {
                http_query = "sortBy",
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.SessionSummary = {
    type = "structure",
    id = "SessionSummary",
    members = {
        portalArn = {
            type = "string",
        },
        sessionId = {
            type = "string",
        },
        username = {
            type = "string",
        },
        status = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
    },
}

M.ListSessionsOutput = {
    type = "structure",
    id = "ListSessionsOutput",
    members = {
        sessions = {
            type = "list",
            member = M.SessionSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateNetworkSettingsInput = {
    type = "structure",
    id = "CreateNetworkSettingsInput",
    members = {
        vpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateNetworkSettingsOutput = {
    type = "structure",
    id = "CreateNetworkSettingsOutput",
    members = {
        networkSettingsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteNetworkSettingsInput = {
    type = "structure",
    id = "DeleteNetworkSettingsInput",
    members = {
        networkSettingsArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteNetworkSettingsOutput = {
    type = "structure",
    id = "DeleteNetworkSettingsOutput",
}

M.GetNetworkSettingsInput = {
    type = "structure",
    id = "GetNetworkSettingsInput",
    members = {
        networkSettingsArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.NetworkSettings = {
    type = "structure",
    id = "NetworkSettings",
    members = {
        networkSettingsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        associatedPortalArns = {
            type = "list",
            member = { type = "string" },
        },
        vpcId = {
            type = "string",
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetNetworkSettingsOutput = {
    type = "structure",
    id = "GetNetworkSettingsOutput",
    members = {
        networkSettings = M.NetworkSettings,
    },
}

M.ListNetworkSettingsInput = {
    type = "structure",
    id = "ListNetworkSettingsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.NetworkSettingsSummary = {
    type = "structure",
    id = "NetworkSettingsSummary",
    members = {
        networkSettingsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vpcId = {
            type = "string",
        },
    },
}

M.ListNetworkSettingsOutput = {
    type = "structure",
    id = "ListNetworkSettingsOutput",
    members = {
        networkSettings = {
            type = "list",
            member = M.NetworkSettingsSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateNetworkSettingsInput = {
    type = "structure",
    id = "UpdateNetworkSettingsInput",
    members = {
        networkSettingsArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        vpcId = {
            type = "string",
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateNetworkSettingsOutput = {
    type = "structure",
    id = "UpdateNetworkSettingsOutput",
    members = {
        networkSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NetworkSettings }),
    },
}

M.BrowserType = {
    CHROME = "Chrome",
}

M.InstanceType = {
    STANDARD_REGULAR = "standard.regular",
    STANDARD_LARGE = "standard.large",
    STANDARD_XLARGE = "standard.xlarge",
}

M.CreatePortalInput = {
    type = "structure",
    id = "CreatePortalInput",
    members = {
        displayName = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        customerManagedKey = {
            type = "string",
        },
        additionalEncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        authenticationType = {
            type = "string",
        },
        instanceType = {
            type = "string",
        },
        maxConcurrentSessions = {
            type = "integer",
        },
        portalCustomDomain = {
            type = "string",
        },
    },
}

M.CreatePortalOutput = {
    type = "structure",
    id = "CreatePortalOutput",
    members = {
        portalArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        portalEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePortalInput = {
    type = "structure",
    id = "DeletePortalInput",
    members = {
        portalArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeletePortalOutput = {
    type = "structure",
    id = "DeletePortalOutput",
}

M.DisassociateBrowserSettingsInput = {
    type = "structure",
    id = "DisassociateBrowserSettingsInput",
    members = {
        portalArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateBrowserSettingsOutput = {
    type = "structure",
    id = "DisassociateBrowserSettingsOutput",
}

M.DisassociateDataProtectionSettingsInput = {
    type = "structure",
    id = "DisassociateDataProtectionSettingsInput",
    members = {
        portalArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateDataProtectionSettingsOutput = {
    type = "structure",
    id = "DisassociateDataProtectionSettingsOutput",
}

M.DisassociateIpAccessSettingsInput = {
    type = "structure",
    id = "DisassociateIpAccessSettingsInput",
    members = {
        portalArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateIpAccessSettingsOutput = {
    type = "structure",
    id = "DisassociateIpAccessSettingsOutput",
}

M.DisassociateNetworkSettingsInput = {
    type = "structure",
    id = "DisassociateNetworkSettingsInput",
    members = {
        portalArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateNetworkSettingsOutput = {
    type = "structure",
    id = "DisassociateNetworkSettingsOutput",
}

M.DisassociateSessionLoggerInput = {
    type = "structure",
    id = "DisassociateSessionLoggerInput",
    members = {
        portalArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateSessionLoggerOutput = {
    type = "structure",
    id = "DisassociateSessionLoggerOutput",
}

M.DisassociateTrustStoreInput = {
    type = "structure",
    id = "DisassociateTrustStoreInput",
    members = {
        portalArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateTrustStoreOutput = {
    type = "structure",
    id = "DisassociateTrustStoreOutput",
}

M.DisassociateUserAccessLoggingSettingsInput = {
    type = "structure",
    id = "DisassociateUserAccessLoggingSettingsInput",
    members = {
        portalArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateUserAccessLoggingSettingsOutput = {
    type = "structure",
    id = "DisassociateUserAccessLoggingSettingsOutput",
}

M.DisassociateUserSettingsInput = {
    type = "structure",
    id = "DisassociateUserSettingsInput",
    members = {
        portalArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateUserSettingsOutput = {
    type = "structure",
    id = "DisassociateUserSettingsOutput",
}

M.GetPortalInput = {
    type = "structure",
    id = "GetPortalInput",
    members = {
        portalArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PortalStatus = {
    INCOMPLETE = "Incomplete",
    PENDING = "Pending",
    ACTIVE = "Active",
}

M.RendererType = {
    APPSTREAM = "AppStream",
}

M.Portal = {
    type = "structure",
    id = "Portal",
    members = {
        portalArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        rendererType = {
            type = "string",
        },
        browserType = {
            type = "string",
        },
        portalStatus = {
            type = "string",
        },
        portalEndpoint = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
        },
        browserSettingsArn = {
            type = "string",
        },
        dataProtectionSettingsArn = {
            type = "string",
        },
        userSettingsArn = {
            type = "string",
        },
        networkSettingsArn = {
            type = "string",
        },
        sessionLoggerArn = {
            type = "string",
        },
        trustStoreArn = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        userAccessLoggingSettingsArn = {
            type = "string",
        },
        authenticationType = {
            type = "string",
        },
        ipAccessSettingsArn = {
            type = "string",
        },
        customerManagedKey = {
            type = "string",
        },
        additionalEncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        instanceType = {
            type = "string",
        },
        maxConcurrentSessions = {
            type = "integer",
        },
        portalCustomDomain = {
            type = "string",
        },
    },
}

M.GetPortalOutput = {
    type = "structure",
    id = "GetPortalOutput",
    members = {
        portal = M.Portal,
    },
}

M.GetPortalServiceProviderMetadataInput = {
    type = "structure",
    id = "GetPortalServiceProviderMetadataInput",
    members = {
        portalArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetPortalServiceProviderMetadataOutput = {
    type = "structure",
    id = "GetPortalServiceProviderMetadataOutput",
    members = {
        portalArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceProviderSamlMetadata = {
            type = "string",
        },
    },
}

M.ListPortalsInput = {
    type = "structure",
    id = "ListPortalsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.PortalSummary = {
    type = "structure",
    id = "PortalSummary",
    members = {
        portalArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        rendererType = {
            type = "string",
        },
        browserType = {
            type = "string",
        },
        portalStatus = {
            type = "string",
        },
        portalEndpoint = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
        },
        browserSettingsArn = {
            type = "string",
        },
        dataProtectionSettingsArn = {
            type = "string",
        },
        userSettingsArn = {
            type = "string",
        },
        networkSettingsArn = {
            type = "string",
        },
        sessionLoggerArn = {
            type = "string",
        },
        trustStoreArn = {
            type = "string",
        },
        userAccessLoggingSettingsArn = {
            type = "string",
        },
        authenticationType = {
            type = "string",
        },
        ipAccessSettingsArn = {
            type = "string",
        },
        instanceType = {
            type = "string",
        },
        maxConcurrentSessions = {
            type = "integer",
        },
        portalCustomDomain = {
            type = "string",
        },
    },
}

M.ListPortalsOutput = {
    type = "structure",
    id = "ListPortalsOutput",
    members = {
        portals = {
            type = "list",
            member = M.PortalSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdatePortalInput = {
    type = "structure",
    id = "UpdatePortalInput",
    members = {
        portalArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        authenticationType = {
            type = "string",
        },
        instanceType = {
            type = "string",
        },
        maxConcurrentSessions = {
            type = "integer",
        },
        portalCustomDomain = {
            type = "string",
        },
    },
}

M.UpdatePortalOutput = {
    type = "structure",
    id = "UpdatePortalOutput",
    members = {
        portal = M.Portal,
    },
}

M.Unit = {
    type = "structure",
    id = "Unit",
}

M.Event = {
    WEBSITE_INTERACT = "WebsiteInteract",
    FILE_DOWNLOAD_FROM_SECURE_BROWSER_TO_REMOTE_DISK = "FileDownloadFromSecureBrowserToRemoteDisk",
    FILE_TRANSFER_FROM_REMOTE_TO_LOCAL_DISK = "FileTransferFromRemoteToLocalDisk",
    FILE_TRANSFER_FROM_LOCAL_TO_REMOTE_DISK = "FileTransferFromLocalToRemoteDisk",
    FILE_UPLOAD_FROM_REMOTE_DISK_TO_SECURE_BROWSER = "FileUploadFromRemoteDiskToSecureBrowser",
    CONTENT_PASTE_TO_WEBSITE = "ContentPasteToWebsite",
    CONTENT_TRANSFER_FROM_LOCAL_TO_REMOTE_CLIPBOARD = "ContentTransferFromLocalToRemoteClipboard",
    CONTENT_COPY_FROM_WEBSITE = "ContentCopyFromWebsite",
    URL_LOAD = "UrlLoad",
    TAB_OPEN = "TabOpen",
    TAB_CLOSE = "TabClose",
    PRINT_JOB_SUBMIT = "PrintJobSubmit",
    SESSION_CONNECT = "SessionConnect",
    SESSION_START = "SessionStart",
    SESSION_DISCONNECT = "SessionDisconnect",
    SESSION_END = "SessionEnd",
    URL_BLOCK_BY_CONTENT_FILTER = "UrlBlockByContentFilter",
}

M.EventFilter = {
    type = "union",
    id = "EventFilter",
    members = {
        all = M.Unit,
        include = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.FolderStructure = {
    FLAT = "Flat",
    NESTED_BY_DATE = "NestedByDate",
}

M.LogFileFormat = {
    JSON_LINES = "JSONLines",
    JSON = "Json",
}

M.S3LogConfiguration = {
    type = "structure",
    id = "S3LogConfiguration",
    members = {
        bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        keyPrefix = {
            type = "string",
        },
        bucketOwner = {
            type = "string",
        },
        logFileFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        folderStructure = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LogConfiguration = {
    type = "structure",
    id = "LogConfiguration",
    members = {
        s3 = M.S3LogConfiguration,
    },
}

M.CreateSessionLoggerInput = {
    type = "structure",
    id = "CreateSessionLoggerInput",
    members = {
        eventFilter = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventFilter }),
        logConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LogConfiguration }),
        displayName = {
            type = "string",
        },
        customerManagedKey = {
            type = "string",
        },
        additionalEncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateSessionLoggerOutput = {
    type = "structure",
    id = "CreateSessionLoggerOutput",
    members = {
        sessionLoggerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSessionLoggerInput = {
    type = "structure",
    id = "DeleteSessionLoggerInput",
    members = {
        sessionLoggerArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSessionLoggerOutput = {
    type = "structure",
    id = "DeleteSessionLoggerOutput",
}

M.GetSessionLoggerInput = {
    type = "structure",
    id = "GetSessionLoggerInput",
    members = {
        sessionLoggerArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SessionLogger = {
    type = "structure",
    id = "SessionLogger",
    members = {
        sessionLoggerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventFilter = M.EventFilter,
        logConfiguration = M.LogConfiguration,
        customerManagedKey = {
            type = "string",
        },
        additionalEncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        associatedPortalArns = {
            type = "list",
            member = { type = "string" },
        },
        displayName = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
        },
    },
}

M.GetSessionLoggerOutput = {
    type = "structure",
    id = "GetSessionLoggerOutput",
    members = {
        sessionLogger = M.SessionLogger,
    },
}

M.ListSessionLoggersInput = {
    type = "structure",
    id = "ListSessionLoggersInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.SessionLoggerSummary = {
    type = "structure",
    id = "SessionLoggerSummary",
    members = {
        sessionLoggerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logConfiguration = M.LogConfiguration,
        displayName = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
        },
    },
}

M.ListSessionLoggersOutput = {
    type = "structure",
    id = "ListSessionLoggersOutput",
    members = {
        sessionLoggers = {
            type = "list",
            member = M.SessionLoggerSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateSessionLoggerInput = {
    type = "structure",
    id = "UpdateSessionLoggerInput",
    members = {
        sessionLoggerArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        eventFilter = M.EventFilter,
        logConfiguration = M.LogConfiguration,
        displayName = {
            type = "string",
        },
    },
}

M.UpdateSessionLoggerOutput = {
    type = "structure",
    id = "UpdateSessionLoggerOutput",
    members = {
        sessionLogger = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SessionLogger }),
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
    id = "TagResourceOutput",
}

M.TooManyTagsException = {
    type = "structure",
    id = "TooManyTagsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        resourceName = {
            type = "string",
        },
    },
}

M.CertificateSummary = {
    type = "structure",
    id = "CertificateSummary",
    members = {
        thumbprint = {
            type = "string",
        },
        subject = {
            type = "string",
        },
        issuer = {
            type = "string",
        },
        notValidBefore = {
            type = "timestamp",
        },
        notValidAfter = {
            type = "timestamp",
        },
    },
}

M.CreateTrustStoreInput = {
    type = "structure",
    id = "CreateTrustStoreInput",
    members = {
        certificateList = {
            type = "list",
            member = { type = "blob" },
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateTrustStoreOutput = {
    type = "structure",
    id = "CreateTrustStoreOutput",
    members = {
        trustStoreArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTrustStoreInput = {
    type = "structure",
    id = "DeleteTrustStoreInput",
    members = {
        trustStoreArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteTrustStoreOutput = {
    type = "structure",
    id = "DeleteTrustStoreOutput",
}

M.GetTrustStoreInput = {
    type = "structure",
    id = "GetTrustStoreInput",
    members = {
        trustStoreArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.TrustStore = {
    type = "structure",
    id = "TrustStore",
    members = {
        associatedPortalArns = {
            type = "list",
            member = { type = "string" },
        },
        trustStoreArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTrustStoreOutput = {
    type = "structure",
    id = "GetTrustStoreOutput",
    members = {
        trustStore = M.TrustStore,
    },
}

M.GetTrustStoreCertificateInput = {
    type = "structure",
    id = "GetTrustStoreCertificateInput",
    members = {
        trustStoreArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        thumbprint = {
            type = "string",
            traits = {
                http_query = "thumbprint",
                required = true,
            },
        },
    },
}

M.Certificate = {
    type = "structure",
    id = "Certificate",
    members = {
        thumbprint = {
            type = "string",
        },
        subject = {
            type = "string",
        },
        issuer = {
            type = "string",
        },
        notValidBefore = {
            type = "timestamp",
        },
        notValidAfter = {
            type = "timestamp",
        },
        body = {
            type = "blob",
        },
    },
}

M.GetTrustStoreCertificateOutput = {
    type = "structure",
    id = "GetTrustStoreCertificateOutput",
    members = {
        trustStoreArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        certificate = M.Certificate,
    },
}

M.ListTrustStoreCertificatesInput = {
    type = "structure",
    id = "ListTrustStoreCertificatesInput",
    members = {
        trustStoreArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListTrustStoreCertificatesOutput = {
    type = "structure",
    id = "ListTrustStoreCertificatesOutput",
    members = {
        certificateList = {
            type = "list",
            member = M.CertificateSummary,
        },
        trustStoreArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTrustStoresInput = {
    type = "structure",
    id = "ListTrustStoresInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.TrustStoreSummary = {
    type = "structure",
    id = "TrustStoreSummary",
    members = {
        trustStoreArn = {
            type = "string",
        },
    },
}

M.ListTrustStoresOutput = {
    type = "structure",
    id = "ListTrustStoresOutput",
    members = {
        trustStores = {
            type = "list",
            member = M.TrustStoreSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateTrustStoreInput = {
    type = "structure",
    id = "UpdateTrustStoreInput",
    members = {
        trustStoreArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        certificatesToAdd = {
            type = "list",
            member = { type = "blob" },
        },
        certificatesToDelete = {
            type = "list",
            member = { type = "string" },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateTrustStoreOutput = {
    type = "structure",
    id = "UpdateTrustStoreOutput",
    members = {
        trustStoreArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.CreateUserAccessLoggingSettingsInput = {
    type = "structure",
    id = "CreateUserAccessLoggingSettingsInput",
    members = {
        kinesisStreamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateUserAccessLoggingSettingsOutput = {
    type = "structure",
    id = "CreateUserAccessLoggingSettingsOutput",
    members = {
        userAccessLoggingSettingsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteUserAccessLoggingSettingsInput = {
    type = "structure",
    id = "DeleteUserAccessLoggingSettingsInput",
    members = {
        userAccessLoggingSettingsArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteUserAccessLoggingSettingsOutput = {
    type = "structure",
    id = "DeleteUserAccessLoggingSettingsOutput",
}

M.GetUserAccessLoggingSettingsInput = {
    type = "structure",
    id = "GetUserAccessLoggingSettingsInput",
    members = {
        userAccessLoggingSettingsArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UserAccessLoggingSettings = {
    type = "structure",
    id = "UserAccessLoggingSettings",
    members = {
        userAccessLoggingSettingsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        associatedPortalArns = {
            type = "list",
            member = { type = "string" },
        },
        kinesisStreamArn = {
            type = "string",
        },
    },
}

M.GetUserAccessLoggingSettingsOutput = {
    type = "structure",
    id = "GetUserAccessLoggingSettingsOutput",
    members = {
        userAccessLoggingSettings = M.UserAccessLoggingSettings,
    },
}

M.ListUserAccessLoggingSettingsInput = {
    type = "structure",
    id = "ListUserAccessLoggingSettingsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.UserAccessLoggingSettingsSummary = {
    type = "structure",
    id = "UserAccessLoggingSettingsSummary",
    members = {
        userAccessLoggingSettingsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kinesisStreamArn = {
            type = "string",
        },
    },
}

M.ListUserAccessLoggingSettingsOutput = {
    type = "structure",
    id = "ListUserAccessLoggingSettingsOutput",
    members = {
        userAccessLoggingSettings = {
            type = "list",
            member = M.UserAccessLoggingSettingsSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateUserAccessLoggingSettingsInput = {
    type = "structure",
    id = "UpdateUserAccessLoggingSettingsInput",
    members = {
        userAccessLoggingSettingsArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        kinesisStreamArn = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateUserAccessLoggingSettingsOutput = {
    type = "structure",
    id = "UpdateUserAccessLoggingSettingsOutput",
    members = {
        userAccessLoggingSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UserAccessLoggingSettings }),
    },
}

M.ColorTheme = {
    LIGHT = "Light",
    DARK = "Dark",
}

M.MimeType = {
    PNG = "image/png",
    JPEG = "image/jpeg",
    ICO = "image/x-icon",
}

M.ImageMetadata = {
    type = "structure",
    id = "ImageMetadata",
    members = {
        mimeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fileExtension = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lastUploadTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.Locale = {
    DE = "de-DE",
    EN = "en-US",
    ES = "es-ES",
    FR = "fr-FR",
    ID = "id-ID",
    IT = "it-IT",
    JP = "ja-JP",
    KR = "ko-KR",
    BR = "pt-BR",
    CN = "zh-CN",
    TW = "zh-TW",
}

M.LocalizedBrandingStrings = {
    type = "structure",
    id = "LocalizedBrandingStrings",
    members = {
        browserTabTitle = {
            type = "string",
            traits = {
                required = true,
            },
        },
        welcomeText = {
            type = "string",
            traits = {
                required = true,
            },
        },
        loginTitle = {
            type = "string",
        },
        loginDescription = {
            type = "string",
        },
        loginButtonText = {
            type = "string",
        },
        contactLink = {
            type = "string",
        },
        contactButtonText = {
            type = "string",
        },
        loadingText = {
            type = "string",
        },
    },
}

M.BrandingConfiguration = {
    type = "structure",
    id = "BrandingConfiguration",
    members = {
        logo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ImageMetadata }),
        wallpaper = M.ImageMetadata,
        favicon = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ImageMetadata }),
        localizedStrings = {
            type = "map",
            key = { type = "string" },
            value = M.LocalizedBrandingStrings,
            traits = {
                required = true,
            },
        },
        colorTheme = {
            type = "string",
            traits = {
                required = true,
            },
        },
        termsOfService = {
            type = "string",
            traits = {
                media_type = "text/markdown",
            },
        },
    },
}

M.CookieSpecification = {
    type = "structure",
    id = "CookieSpecification",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        path = {
            type = "string",
        },
    },
}

M.CookieSynchronizationConfiguration = {
    type = "structure",
    id = "CookieSynchronizationConfiguration",
    members = {
        allowlist = {
            type = "list",
            member = M.CookieSpecification,
            traits = {
                required = true,
            },
        },
        blocklist = {
            type = "list",
            member = M.CookieSpecification,
        },
    },
}

M.IconImageInput = {
    type = "union",
    id = "IconImageInput",
    members = {
        blob = {
            type = "blob",
            traits = {
                media_type = "image/*",
            },
        },
        s3Uri = {
            type = "string",
        },
    },
}

M.WallpaperImageInput = {
    type = "union",
    id = "WallpaperImageInput",
    members = {
        blob = {
            type = "blob",
            traits = {
                media_type = "image/*",
            },
        },
        s3Uri = {
            type = "string",
        },
    },
}

M.BrandingConfigurationCreateInput = {
    type = "structure",
    id = "BrandingConfigurationCreateInput",
    members = {
        logo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IconImageInput }),
        wallpaper = M.WallpaperImageInput,
        favicon = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IconImageInput }),
        localizedStrings = {
            type = "map",
            key = { type = "string" },
            value = M.LocalizedBrandingStrings,
            traits = {
                required = true,
            },
        },
        colorTheme = {
            type = "string",
            traits = {
                required = true,
            },
        },
        termsOfService = {
            type = "string",
            traits = {
                media_type = "text/markdown",
            },
        },
    },
}

M.EnabledType = {
    DISABLED = "Disabled",
    ENABLED = "Enabled",
}

M.ToolbarItem = {
    WINDOWS = "Windows",
    DUAL_MONITOR = "DualMonitor",
    FULL_SCREEN = "FullScreen",
    WEBCAM = "Webcam",
    MICROPHONE = "Microphone",
}

M.MaxDisplayResolution = {
    RESOLUTION_DCI_4K = "size4096X2160",
    RESOLUTION_UHD_4K = "size3840X2160",
    RESOLUTION_1440P_ULTRA_WIDE = "size3440X1440",
    RESOLUTION_1440P = "size2560X1440",
    RESOLUTION_1080P = "size1920X1080",
    RESOLUTION_720P = "size1280X720",
    RESOLUTION_768P = "size1024X768",
    RESOLUTION_600P = "size800X600",
}

M.ToolbarType = {
    FLOATING = "Floating",
    DOCKED = "Docked",
}

M.VisualMode = {
    DARK = "Dark",
    LIGHT = "Light",
}

M.ToolbarConfiguration = {
    type = "structure",
    id = "ToolbarConfiguration",
    members = {
        toolbarType = {
            type = "string",
        },
        visualMode = {
            type = "string",
        },
        hiddenToolbarItems = {
            type = "list",
            member = { type = "string" },
        },
        maxDisplayResolution = {
            type = "string",
        },
    },
}

M.CreateUserSettingsInput = {
    type = "structure",
    id = "CreateUserSettingsInput",
    members = {
        copyAllowed = {
            type = "string",
            traits = {
                required = true,
            },
        },
        pasteAllowed = {
            type = "string",
            traits = {
                required = true,
            },
        },
        downloadAllowed = {
            type = "string",
            traits = {
                required = true,
            },
        },
        uploadAllowed = {
            type = "string",
            traits = {
                required = true,
            },
        },
        printAllowed = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        disconnectTimeoutInMinutes = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        idleDisconnectTimeoutInMinutes = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        cookieSynchronizationConfiguration = M.CookieSynchronizationConfiguration,
        customerManagedKey = {
            type = "string",
        },
        additionalEncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        deepLinkAllowed = {
            type = "string",
        },
        toolbarConfiguration = M.ToolbarConfiguration,
        brandingConfigurationInput = M.BrandingConfigurationCreateInput,
        webAuthnAllowed = {
            type = "string",
        },
    },
}

M.CreateUserSettingsOutput = {
    type = "structure",
    id = "CreateUserSettingsOutput",
    members = {
        userSettingsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteUserSettingsInput = {
    type = "structure",
    id = "DeleteUserSettingsInput",
    members = {
        userSettingsArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteUserSettingsOutput = {
    type = "structure",
    id = "DeleteUserSettingsOutput",
}

M.GetUserSettingsInput = {
    type = "structure",
    id = "GetUserSettingsInput",
    members = {
        userSettingsArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UserSettings = {
    type = "structure",
    id = "UserSettings",
    members = {
        userSettingsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        associatedPortalArns = {
            type = "list",
            member = { type = "string" },
        },
        copyAllowed = {
            type = "string",
        },
        pasteAllowed = {
            type = "string",
        },
        downloadAllowed = {
            type = "string",
        },
        uploadAllowed = {
            type = "string",
        },
        printAllowed = {
            type = "string",
        },
        disconnectTimeoutInMinutes = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        idleDisconnectTimeoutInMinutes = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        cookieSynchronizationConfiguration = M.CookieSynchronizationConfiguration,
        customerManagedKey = {
            type = "string",
        },
        additionalEncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        deepLinkAllowed = {
            type = "string",
        },
        toolbarConfiguration = M.ToolbarConfiguration,
        brandingConfiguration = M.BrandingConfiguration,
        webAuthnAllowed = {
            type = "string",
        },
    },
}

M.GetUserSettingsOutput = {
    type = "structure",
    id = "GetUserSettingsOutput",
    members = {
        userSettings = M.UserSettings,
    },
}

M.ListUserSettingsInput = {
    type = "structure",
    id = "ListUserSettingsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.UserSettingsSummary = {
    type = "structure",
    id = "UserSettingsSummary",
    members = {
        userSettingsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        copyAllowed = {
            type = "string",
        },
        pasteAllowed = {
            type = "string",
        },
        downloadAllowed = {
            type = "string",
        },
        uploadAllowed = {
            type = "string",
        },
        printAllowed = {
            type = "string",
        },
        disconnectTimeoutInMinutes = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        idleDisconnectTimeoutInMinutes = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        cookieSynchronizationConfiguration = M.CookieSynchronizationConfiguration,
        deepLinkAllowed = {
            type = "string",
        },
        toolbarConfiguration = M.ToolbarConfiguration,
        brandingConfiguration = M.BrandingConfiguration,
        webAuthnAllowed = {
            type = "string",
        },
    },
}

M.ListUserSettingsOutput = {
    type = "structure",
    id = "ListUserSettingsOutput",
    members = {
        userSettings = {
            type = "list",
            member = M.UserSettingsSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.BrandingConfigurationUpdateInput = {
    type = "structure",
    id = "BrandingConfigurationUpdateInput",
    members = {
        logo = M.IconImageInput,
        wallpaper = M.WallpaperImageInput,
        favicon = M.IconImageInput,
        localizedStrings = {
            type = "map",
            key = { type = "string" },
            value = M.LocalizedBrandingStrings,
        },
        colorTheme = {
            type = "string",
        },
        termsOfService = {
            type = "string",
            traits = {
                media_type = "text/markdown",
            },
        },
    },
}

M.UpdateUserSettingsInput = {
    type = "structure",
    id = "UpdateUserSettingsInput",
    members = {
        userSettingsArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        copyAllowed = {
            type = "string",
        },
        pasteAllowed = {
            type = "string",
        },
        downloadAllowed = {
            type = "string",
        },
        uploadAllowed = {
            type = "string",
        },
        printAllowed = {
            type = "string",
        },
        disconnectTimeoutInMinutes = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        idleDisconnectTimeoutInMinutes = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        cookieSynchronizationConfiguration = M.CookieSynchronizationConfiguration,
        deepLinkAllowed = {
            type = "string",
        },
        toolbarConfiguration = M.ToolbarConfiguration,
        brandingConfigurationInput = M.BrandingConfigurationUpdateInput,
        webAuthnAllowed = {
            type = "string",
        },
    },
}

M.UpdateUserSettingsOutput = {
    type = "structure",
    id = "UpdateUserSettingsOutput",
    members = {
        userSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UserSettings }),
    },
}

return M
