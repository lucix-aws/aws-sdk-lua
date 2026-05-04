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

M.AssociateBrowserSettingsInput = {
    type = "structure",
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
    error = "server",
    members = {
        message = {
            type = "string",
        },
        retryAfterSeconds = {
            type = "number",
            traits = {
                http_header = "Retry-After",
            },
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
            type = "number",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.AssociateDataProtectionSettingsInput = {
    type = "structure",
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
    members = {
        blockedCategories = {
            type = "list",
            member_type = "string",
        },
        allowedUrls = {
            type = "list",
            member_type = "string",
        },
        blockedUrls = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CreateBrowserSettingsInput = {
    type = "structure",
    members = {
        tags = {
            type = "list",
            member_type = "structure",
        },
        customerManagedKey = {
            type = "string",
        },
        additionalEncryptionContext = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        browserPolicy = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
        webContentFilteringPolicy = {
            type = "structure",
        },
    },
}

M.CreateBrowserSettingsOutput = {
    type = "structure",
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
}

M.GetBrowserSettingsInput = {
    type = "structure",
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
    members = {
        browserSettingsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        associatedPortalArns = {
            type = "list",
            member_type = "string",
        },
        browserPolicy = {
            type = "string",
        },
        customerManagedKey = {
            type = "string",
        },
        additionalEncryptionContext = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        webContentFilteringPolicy = {
            type = "structure",
        },
    },
}

M.GetBrowserSettingsOutput = {
    type = "structure",
    members = {
        browserSettings = {
            type = "structure",
        },
    },
}

M.ListBrowserSettingsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.BrowserSettingsSummary = {
    type = "structure",
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
    members = {
        browserSettings = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateBrowserSettingsInput = {
    type = "structure",
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
        },
        webContentFilteringPolicy = {
            type = "structure",
        },
    },
}

M.UpdateBrowserSettingsOutput = {
    type = "structure",
    members = {
        browserSettings = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomPattern = {
    type = "structure",
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
    members = {
        builtInPatternId = {
            type = "string",
        },
        customPattern = {
            type = "structure",
        },
        redactionPlaceHolder = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        enforcedUrls = {
            type = "list",
            member_type = "string",
        },
        exemptUrls = {
            type = "list",
            member_type = "string",
        },
        confidenceLevel = {
            type = "number",
        },
    },
}

M.InlineRedactionConfiguration = {
    type = "structure",
    members = {
        inlineRedactionPatterns = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        globalEnforcedUrls = {
            type = "list",
            member_type = "string",
        },
        globalExemptUrls = {
            type = "list",
            member_type = "string",
        },
        globalConfidenceLevel = {
            type = "number",
        },
    },
}

M.CreateDataProtectionSettingsInput = {
    type = "structure",
    members = {
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        customerManagedKey = {
            type = "string",
        },
        additionalEncryptionContext = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        inlineRedactionConfiguration = {
            type = "structure",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.CreateDataProtectionSettingsOutput = {
    type = "structure",
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
}

M.GetDataProtectionSettingsInput = {
    type = "structure",
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
    members = {
        dataProtectionSettingsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inlineRedactionConfiguration = {
            type = "structure",
        },
        associatedPortalArns = {
            type = "list",
            member_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetDataProtectionSettingsOutput = {
    type = "structure",
    members = {
        dataProtectionSettings = {
            type = "structure",
        },
    },
}

M.ListDataProtectionSettingsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.DataProtectionSettingsSummary = {
    type = "structure",
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
    members = {
        dataProtectionSettings = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateDataProtectionSettingsInput = {
    type = "structure",
    members = {
        dataProtectionSettingsArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        inlineRedactionConfiguration = {
            type = "structure",
        },
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UpdateDataProtectionSettingsOutput = {
    type = "structure",
    members = {
        dataProtectionSettings = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ExpireSessionInput = {
    type = "structure",
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
}

M.GetSessionInput = {
    type = "structure",
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
            member_type = "string",
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
    members = {
        session = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateIdentityProviderOutput = {
    type = "structure",
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
}

M.GetIdentityProviderInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetIdentityProviderOutput = {
    type = "structure",
    members = {
        identityProvider = {
            type = "structure",
        },
    },
}

M.ListIdentityProvidersInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
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
    members = {
        nextToken = {
            type = "string",
        },
        identityProviders = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateIdentityProviderInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UpdateIdentityProviderOutput = {
    type = "structure",
    members = {
        identityProvider = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.IpRule = {
    type = "structure",
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
    members = {
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        customerManagedKey = {
            type = "string",
        },
        additionalEncryptionContext = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ipRules = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.CreateIpAccessSettingsOutput = {
    type = "structure",
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
}

M.GetIpAccessSettingsInput = {
    type = "structure",
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
    members = {
        ipAccessSettingsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        associatedPortalArns = {
            type = "list",
            member_type = "string",
        },
        ipRules = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetIpAccessSettingsOutput = {
    type = "structure",
    members = {
        ipAccessSettings = {
            type = "structure",
        },
    },
}

M.ListIpAccessSettingsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.IpAccessSettingsSummary = {
    type = "structure",
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
    members = {
        ipAccessSettings = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateIpAccessSettingsInput = {
    type = "structure",
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
            member_type = "structure",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UpdateIpAccessSettingsOutput = {
    type = "structure",
    members = {
        ipAccessSettings = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SessionSortBy = {
    START_TIME_ASCENDING = "StartTimeAscending",
    START_TIME_DESCENDING = "StartTimeDescending",
}

M.ListSessionsInput = {
    type = "structure",
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
            type = "number",
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
    members = {
        sessions = {
            type = "list",
            member_type = "structure",
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
    members = {
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateNetworkSettingsInput = {
    type = "structure",
    members = {
        vpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subnetIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        securityGroupIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.CreateNetworkSettingsOutput = {
    type = "structure",
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
}

M.GetNetworkSettingsInput = {
    type = "structure",
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
    members = {
        networkSettingsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        associatedPortalArns = {
            type = "list",
            member_type = "string",
        },
        vpcId = {
            type = "string",
        },
        subnetIds = {
            type = "list",
            member_type = "string",
        },
        securityGroupIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GetNetworkSettingsOutput = {
    type = "structure",
    members = {
        networkSettings = {
            type = "structure",
        },
    },
}

M.ListNetworkSettingsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.NetworkSettingsSummary = {
    type = "structure",
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
    members = {
        networkSettings = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateNetworkSettingsInput = {
    type = "structure",
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
            member_type = "string",
        },
        securityGroupIds = {
            type = "list",
            member_type = "string",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UpdateNetworkSettingsOutput = {
    type = "structure",
    members = {
        networkSettings = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    members = {
        displayName = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        customerManagedKey = {
            type = "string",
        },
        additionalEncryptionContext = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        clientToken = {
            type = "string",
        },
        authenticationType = {
            type = "string",
        },
        instanceType = {
            type = "string",
        },
        maxConcurrentSessions = {
            type = "number",
        },
        portalCustomDomain = {
            type = "string",
        },
    },
}

M.CreatePortalOutput = {
    type = "structure",
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
}

M.DisassociateBrowserSettingsInput = {
    type = "structure",
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
}

M.DisassociateDataProtectionSettingsInput = {
    type = "structure",
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
}

M.DisassociateIpAccessSettingsInput = {
    type = "structure",
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
}

M.DisassociateNetworkSettingsInput = {
    type = "structure",
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
}

M.DisassociateSessionLoggerInput = {
    type = "structure",
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
}

M.DisassociateTrustStoreInput = {
    type = "structure",
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
}

M.DisassociateUserAccessLoggingSettingsInput = {
    type = "structure",
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
}

M.DisassociateUserSettingsInput = {
    type = "structure",
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
}

M.GetPortalInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        instanceType = {
            type = "string",
        },
        maxConcurrentSessions = {
            type = "number",
        },
        portalCustomDomain = {
            type = "string",
        },
    },
}

M.GetPortalOutput = {
    type = "structure",
    members = {
        portal = {
            type = "structure",
        },
    },
}

M.GetPortalServiceProviderMetadataInput = {
    type = "structure",
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
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.PortalSummary = {
    type = "structure",
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
            type = "number",
        },
        portalCustomDomain = {
            type = "string",
        },
    },
}

M.ListPortalsOutput = {
    type = "structure",
    members = {
        portals = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdatePortalInput = {
    type = "structure",
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
            type = "number",
        },
        portalCustomDomain = {
            type = "string",
        },
    },
}

M.UpdatePortalOutput = {
    type = "structure",
    members = {
        portal = {
            type = "structure",
        },
    },
}

M.Unit = {
    type = "structure",
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
    members = {
        all = {
            type = "structure",
        },
        include = {
            type = "list",
            member_type = "string",
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
    members = {
        s3 = {
            type = "structure",
        },
    },
}

M.CreateSessionLoggerInput = {
    type = "structure",
    members = {
        eventFilter = {
            type = "union",
            traits = {
                required = true,
            },
        },
        logConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        customerManagedKey = {
            type = "string",
        },
        additionalEncryptionContext = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.CreateSessionLoggerOutput = {
    type = "structure",
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
}

M.GetSessionLoggerInput = {
    type = "structure",
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
    members = {
        sessionLoggerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventFilter = {
            type = "union",
        },
        logConfiguration = {
            type = "structure",
        },
        customerManagedKey = {
            type = "string",
        },
        additionalEncryptionContext = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        associatedPortalArns = {
            type = "list",
            member_type = "string",
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
    members = {
        sessionLogger = {
            type = "structure",
        },
    },
}

M.ListSessionLoggersInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.SessionLoggerSummary = {
    type = "structure",
    members = {
        sessionLoggerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logConfiguration = {
            type = "structure",
        },
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
    members = {
        sessionLoggers = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateSessionLoggerInput = {
    type = "structure",
    members = {
        sessionLoggerArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        eventFilter = {
            type = "union",
        },
        logConfiguration = {
            type = "structure",
        },
        displayName = {
            type = "string",
        },
    },
}

M.UpdateSessionLoggerOutput = {
    type = "structure",
    members = {
        sessionLogger = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.TooManyTagsException = {
    type = "structure",
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
    members = {
        certificateList = {
            type = "list",
            member_type = "blob",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.CreateTrustStoreOutput = {
    type = "structure",
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
}

M.GetTrustStoreInput = {
    type = "structure",
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
    members = {
        associatedPortalArns = {
            type = "list",
            member_type = "string",
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
    members = {
        trustStore = {
            type = "structure",
        },
    },
}

M.GetTrustStoreCertificateInput = {
    type = "structure",
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
    members = {
        trustStoreArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        certificate = {
            type = "structure",
        },
    },
}

M.ListTrustStoreCertificatesInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListTrustStoreCertificatesOutput = {
    type = "structure",
    members = {
        certificateList = {
            type = "list",
            member_type = "structure",
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
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.TrustStoreSummary = {
    type = "structure",
    members = {
        trustStoreArn = {
            type = "string",
        },
    },
}

M.ListTrustStoresOutput = {
    type = "structure",
    members = {
        trustStores = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateTrustStoreInput = {
    type = "structure",
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
            member_type = "blob",
        },
        certificatesToDelete = {
            type = "list",
            member_type = "string",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UpdateTrustStoreOutput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.CreateUserAccessLoggingSettingsInput = {
    type = "structure",
    members = {
        kinesisStreamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.CreateUserAccessLoggingSettingsOutput = {
    type = "structure",
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
}

M.GetUserAccessLoggingSettingsInput = {
    type = "structure",
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
    members = {
        userAccessLoggingSettingsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        associatedPortalArns = {
            type = "list",
            member_type = "string",
        },
        kinesisStreamArn = {
            type = "string",
        },
    },
}

M.GetUserAccessLoggingSettingsOutput = {
    type = "structure",
    members = {
        userAccessLoggingSettings = {
            type = "structure",
        },
    },
}

M.ListUserAccessLoggingSettingsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.UserAccessLoggingSettingsSummary = {
    type = "structure",
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
    members = {
        userAccessLoggingSettings = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateUserAccessLoggingSettingsInput = {
    type = "structure",
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
        },
    },
}

M.UpdateUserAccessLoggingSettingsOutput = {
    type = "structure",
    members = {
        userAccessLoggingSettings = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    members = {
        logo = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        wallpaper = {
            type = "structure",
        },
        favicon = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        localizedStrings = {
            type = "map",
            key_type = "string",
            value_type = "structure",
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
        },
    },
}

M.CookieSpecification = {
    type = "structure",
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
    members = {
        allowlist = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        blocklist = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.IconImageInput = {
    type = "union",
    members = {
        blob = {
            type = "blob",
        },
        s3Uri = {
            type = "string",
        },
    },
}

M.WallpaperImageInput = {
    type = "union",
    members = {
        blob = {
            type = "blob",
        },
        s3Uri = {
            type = "string",
        },
    },
}

M.BrandingConfigurationCreateInput = {
    type = "structure",
    members = {
        logo = {
            type = "union",
            traits = {
                required = true,
            },
        },
        wallpaper = {
            type = "union",
        },
        favicon = {
            type = "union",
            traits = {
                required = true,
            },
        },
        localizedStrings = {
            type = "map",
            key_type = "string",
            value_type = "structure",
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
    members = {
        toolbarType = {
            type = "string",
        },
        visualMode = {
            type = "string",
        },
        hiddenToolbarItems = {
            type = "list",
            member_type = "string",
        },
        maxDisplayResolution = {
            type = "string",
        },
    },
}

M.CreateUserSettingsInput = {
    type = "structure",
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
            member_type = "structure",
        },
        disconnectTimeoutInMinutes = {
            type = "number",
        },
        idleDisconnectTimeoutInMinutes = {
            type = "number",
        },
        clientToken = {
            type = "string",
        },
        cookieSynchronizationConfiguration = {
            type = "structure",
        },
        customerManagedKey = {
            type = "string",
        },
        additionalEncryptionContext = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        deepLinkAllowed = {
            type = "string",
        },
        toolbarConfiguration = {
            type = "structure",
        },
        brandingConfigurationInput = {
            type = "structure",
        },
        webAuthnAllowed = {
            type = "string",
        },
    },
}

M.CreateUserSettingsOutput = {
    type = "structure",
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
}

M.GetUserSettingsInput = {
    type = "structure",
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
    members = {
        userSettingsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        associatedPortalArns = {
            type = "list",
            member_type = "string",
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
            type = "number",
        },
        idleDisconnectTimeoutInMinutes = {
            type = "number",
        },
        cookieSynchronizationConfiguration = {
            type = "structure",
        },
        customerManagedKey = {
            type = "string",
        },
        additionalEncryptionContext = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        deepLinkAllowed = {
            type = "string",
        },
        toolbarConfiguration = {
            type = "structure",
        },
        brandingConfiguration = {
            type = "structure",
        },
        webAuthnAllowed = {
            type = "string",
        },
    },
}

M.GetUserSettingsOutput = {
    type = "structure",
    members = {
        userSettings = {
            type = "structure",
        },
    },
}

M.ListUserSettingsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.UserSettingsSummary = {
    type = "structure",
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
            type = "number",
        },
        idleDisconnectTimeoutInMinutes = {
            type = "number",
        },
        cookieSynchronizationConfiguration = {
            type = "structure",
        },
        deepLinkAllowed = {
            type = "string",
        },
        toolbarConfiguration = {
            type = "structure",
        },
        brandingConfiguration = {
            type = "structure",
        },
        webAuthnAllowed = {
            type = "string",
        },
    },
}

M.ListUserSettingsOutput = {
    type = "structure",
    members = {
        userSettings = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.BrandingConfigurationUpdateInput = {
    type = "structure",
    members = {
        logo = {
            type = "union",
        },
        wallpaper = {
            type = "union",
        },
        favicon = {
            type = "union",
        },
        localizedStrings = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        colorTheme = {
            type = "string",
        },
        termsOfService = {
            type = "string",
        },
    },
}

M.UpdateUserSettingsInput = {
    type = "structure",
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
            type = "number",
        },
        idleDisconnectTimeoutInMinutes = {
            type = "number",
        },
        clientToken = {
            type = "string",
        },
        cookieSynchronizationConfiguration = {
            type = "structure",
        },
        deepLinkAllowed = {
            type = "string",
        },
        toolbarConfiguration = {
            type = "structure",
        },
        brandingConfigurationInput = {
            type = "structure",
        },
        webAuthnAllowed = {
            type = "string",
        },
    },
}

M.UpdateUserSettingsOutput = {
    type = "structure",
    members = {
        userSettings = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

return M
