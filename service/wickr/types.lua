local M = {}

M.AccessLevel = {
    STANDARD = "STANDARD",
    PREMIUM = "PREMIUM",
}

M.BadRequestError = {
    type = "structure",
    id = "BadRequestError",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BasicDeviceObject = {
    type = "structure",
    id = "BasicDeviceObject",
    members = {
        appId = {
            type = "string",
        },
        created = {
            type = "string",
        },
        lastLogin = {
            type = "string",
        },
        statusText = {
            type = "string",
        },
        suspend = {
            type = "boolean",
        },
        type = {
            type = "string",
        },
    },
}

M.BatchCreateUserRequestItem = {
    type = "structure",
    id = "BatchCreateUserRequestItem",
    members = {
        firstName = {
            type = "string",
        },
        lastName = {
            type = "string",
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inviteCode = {
            type = "string",
        },
        inviteCodeTtl = {
            type = "integer",
        },
        codeValidation = {
            type = "boolean",
        },
    },
}

M.BatchCreateUserInput = {
    type = "structure",
    id = "BatchCreateUserInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        users = {
            type = "list",
            member = M.BatchCreateUserRequestItem,
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Client-Token",
                idempotency_token = true,
            },
        },
    },
}

M.BatchUserErrorResponseItem = {
    type = "structure",
    id = "BatchUserErrorResponseItem",
    members = {
        field = {
            type = "string",
        },
        reason = {
            type = "string",
        },
        userId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.User = {
    type = "structure",
    id = "User",
    members = {
        userId = {
            type = "string",
        },
        firstName = {
            type = "string",
        },
        lastName = {
            type = "string",
        },
        username = {
            type = "string",
        },
        securityGroups = {
            type = "list",
            member = { type = "string" },
        },
        isAdmin = {
            type = "boolean",
        },
        suspended = {
            type = "boolean",
        },
        status = {
            type = "integer",
        },
        otpEnabled = {
            type = "boolean",
        },
        scimId = {
            type = "string",
        },
        type = {
            type = "string",
        },
        cell = {
            type = "string",
        },
        countryCode = {
            type = "string",
        },
        challengeFailures = {
            type = "integer",
        },
        isInviteExpired = {
            type = "boolean",
        },
        isUser = {
            type = "boolean",
        },
        inviteCode = {
            type = "string",
        },
        codeValidation = {
            type = "boolean",
        },
        uname = {
            type = "string",
        },
    },
}

M.BatchCreateUserOutput = {
    type = "structure",
    id = "BatchCreateUserOutput",
    members = {
        message = {
            type = "string",
        },
        successful = {
            type = "list",
            member = M.User,
        },
        failed = {
            type = "list",
            member = M.BatchUserErrorResponseItem,
        },
    },
}

M.ForbiddenError = {
    type = "structure",
    id = "ForbiddenError",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InternalServerError = {
    type = "structure",
    id = "InternalServerError",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RateLimitError = {
    type = "structure",
    id = "RateLimitError",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                default = "Too many requests sent",
            },
        },
    },
}

M.ResourceNotFoundError = {
    type = "structure",
    id = "ResourceNotFoundError",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnauthorizedError = {
    type = "structure",
    id = "UnauthorizedError",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ErrorDetail = {
    type = "structure",
    id = "ErrorDetail",
    members = {
        field = {
            type = "string",
        },
        reason = {
            type = "string",
        },
    },
}

M.ValidationError = {
    type = "structure",
    id = "ValidationError",
    error = "client",
    members = {
        reasons = {
            type = "list",
            member = M.ErrorDetail,
        },
        message = {
            type = "string",
        },
    },
}

M.BatchDeleteUserInput = {
    type = "structure",
    id = "BatchDeleteUserInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Client-Token",
                idempotency_token = true,
            },
        },
    },
}

M.BatchUserSuccessResponseItem = {
    type = "structure",
    id = "BatchUserSuccessResponseItem",
    members = {
        userId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteUserOutput = {
    type = "structure",
    id = "BatchDeleteUserOutput",
    members = {
        message = {
            type = "string",
        },
        successful = {
            type = "list",
            member = M.BatchUserSuccessResponseItem,
        },
        failed = {
            type = "list",
            member = M.BatchUserErrorResponseItem,
        },
    },
}

M.BatchDeviceErrorResponseItem = {
    type = "structure",
    id = "BatchDeviceErrorResponseItem",
    members = {
        field = {
            type = "string",
        },
        reason = {
            type = "string",
        },
        appId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeviceSuccessResponseItem = {
    type = "structure",
    id = "BatchDeviceSuccessResponseItem",
    members = {
        appId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchLookupUserUnameInput = {
    type = "structure",
    id = "BatchLookupUserUnameInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        unames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Client-Token",
                idempotency_token = true,
            },
        },
    },
}

M.BatchUnameErrorResponseItem = {
    type = "structure",
    id = "BatchUnameErrorResponseItem",
    members = {
        field = {
            type = "string",
        },
        reason = {
            type = "string",
        },
        uname = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUnameSuccessResponseItem = {
    type = "structure",
    id = "BatchUnameSuccessResponseItem",
    members = {
        uname = {
            type = "string",
            traits = {
                required = true,
            },
        },
        username = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchLookupUserUnameOutput = {
    type = "structure",
    id = "BatchLookupUserUnameOutput",
    members = {
        message = {
            type = "string",
        },
        successful = {
            type = "list",
            member = M.BatchUnameSuccessResponseItem,
        },
        failed = {
            type = "list",
            member = M.BatchUnameErrorResponseItem,
        },
    },
}

M.BatchReinviteUserInput = {
    type = "structure",
    id = "BatchReinviteUserInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Client-Token",
                idempotency_token = true,
            },
        },
    },
}

M.BatchReinviteUserOutput = {
    type = "structure",
    id = "BatchReinviteUserOutput",
    members = {
        message = {
            type = "string",
        },
        successful = {
            type = "list",
            member = M.BatchUserSuccessResponseItem,
        },
        failed = {
            type = "list",
            member = M.BatchUserErrorResponseItem,
        },
    },
}

M.BatchResetDevicesForUserInput = {
    type = "structure",
    id = "BatchResetDevicesForUserInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        appIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Client-Token",
                idempotency_token = true,
            },
        },
    },
}

M.BatchResetDevicesForUserOutput = {
    type = "structure",
    id = "BatchResetDevicesForUserOutput",
    members = {
        message = {
            type = "string",
        },
        successful = {
            type = "list",
            member = M.BatchDeviceSuccessResponseItem,
        },
        failed = {
            type = "list",
            member = M.BatchDeviceErrorResponseItem,
        },
    },
}

M.BatchToggleUserSuspendStatusInput = {
    type = "structure",
    id = "BatchToggleUserSuspendStatusInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        suspend = {
            type = "boolean",
            traits = {
                http_query = "suspend",
                required = true,
            },
        },
        userIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Client-Token",
                idempotency_token = true,
            },
        },
    },
}

M.BatchToggleUserSuspendStatusOutput = {
    type = "structure",
    id = "BatchToggleUserSuspendStatusOutput",
    members = {
        message = {
            type = "string",
        },
        successful = {
            type = "list",
            member = M.BatchUserSuccessResponseItem,
        },
        failed = {
            type = "list",
            member = M.BatchUserErrorResponseItem,
        },
    },
}

M.BlockedGuestUser = {
    type = "structure",
    id = "BlockedGuestUser",
    members = {
        username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        admin = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modified = {
            type = "string",
            traits = {
                required = true,
            },
        },
        usernameHash = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BotStatus = {
    PENDING = 1,
    ACTIVE = 2,
}

M.Bot = {
    type = "structure",
    id = "Bot",
    members = {
        botId = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        username = {
            type = "string",
        },
        uname = {
            type = "string",
        },
        pubkey = {
            type = "string",
        },
        status = {
            type = "number",
        },
        groupId = {
            type = "string",
        },
        hasChallenge = {
            type = "boolean",
        },
        suspended = {
            type = "boolean",
        },
        lastLogin = {
            type = "string",
        },
    },
}

M.CallingSettings = {
    type = "structure",
    id = "CallingSettings",
    members = {
        canStart11Call = {
            type = "boolean",
        },
        canVideoCall = {
            type = "boolean",
        },
        forceTcpCall = {
            type = "boolean",
        },
    },
}

M.CreateBotInput = {
    type = "structure",
    id = "CreateBotInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        groupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        challenge = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateBotOutput = {
    type = "structure",
    id = "CreateBotOutput",
    members = {
        message = {
            type = "string",
        },
        botId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkId = {
            type = "string",
        },
        username = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        groupId = {
            type = "string",
        },
    },
}

M.CreateDataRetentionBotInput = {
    type = "structure",
    id = "CreateDataRetentionBotInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CreateDataRetentionBotOutput = {
    type = "structure",
    id = "CreateDataRetentionBotOutput",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateDataRetentionBotChallengeInput = {
    type = "structure",
    id = "CreateDataRetentionBotChallengeInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CreateDataRetentionBotChallengeOutput = {
    type = "structure",
    id = "CreateDataRetentionBotChallengeOutput",
    members = {
        challenge = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateNetworkInput = {
    type = "structure",
    id = "CreateNetworkInput",
    members = {
        networkName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accessLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        enablePremiumFreeTrial = {
            type = "boolean",
        },
        encryptionKeyArn = {
            type = "string",
        },
    },
}

M.CreateNetworkOutput = {
    type = "structure",
    id = "CreateNetworkOutput",
    members = {
        networkId = {
            type = "string",
        },
        networkName = {
            type = "string",
        },
        encryptionKeyArn = {
            type = "string",
        },
    },
}

M.WickrAwsNetworks = {
    type = "structure",
    id = "WickrAwsNetworks",
    members = {
        region = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PermittedWickrEnterpriseNetwork = {
    type = "structure",
    id = "PermittedWickrEnterpriseNetwork",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SecurityGroupSettingsRequest = {
    type = "structure",
    id = "SecurityGroupSettingsRequest",
    members = {
        lockoutThreshold = {
            type = "integer",
        },
        permittedNetworks = {
            type = "list",
            member = { type = "string" },
        },
        enableGuestFederation = {
            type = "boolean",
        },
        globalFederation = {
            type = "boolean",
        },
        federationMode = {
            type = "integer",
        },
        enableRestrictedGlobalFederation = {
            type = "boolean",
        },
        permittedWickrAwsNetworks = {
            type = "list",
            member = M.WickrAwsNetworks,
        },
        permittedWickrEnterpriseNetworks = {
            type = "list",
            member = M.PermittedWickrEnterpriseNetwork,
        },
    },
}

M.CreateSecurityGroupInput = {
    type = "structure",
    id = "CreateSecurityGroupInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        securityGroupSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SecurityGroupSettingsRequest }),
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Client-Token",
                idempotency_token = true,
            },
        },
    },
}

M.PasswordRequirements = {
    type = "structure",
    id = "PasswordRequirements",
    members = {
        lowercase = {
            type = "integer",
        },
        minLength = {
            type = "integer",
        },
        numbers = {
            type = "integer",
        },
        symbols = {
            type = "integer",
        },
        uppercase = {
            type = "integer",
        },
    },
}

M.ShredderSettings = {
    type = "structure",
    id = "ShredderSettings",
    members = {
        canProcessManually = {
            type = "boolean",
        },
        intensity = {
            type = "integer",
        },
    },
}

M.SecurityGroupSettings = {
    type = "structure",
    id = "SecurityGroupSettings",
    members = {
        alwaysReauthenticate = {
            type = "boolean",
        },
        atakPackageValues = {
            type = "list",
            member = { type = "string" },
        },
        calling = M.CallingSettings,
        checkForUpdates = {
            type = "boolean",
        },
        enableAtak = {
            type = "boolean",
        },
        enableCrashReports = {
            type = "boolean",
        },
        enableFileDownload = {
            type = "boolean",
        },
        enableGuestFederation = {
            type = "boolean",
        },
        enableNotificationPreview = {
            type = "boolean",
        },
        enableOpenAccessOption = {
            type = "boolean",
        },
        enableRestrictedGlobalFederation = {
            type = "boolean",
        },
        filesEnabled = {
            type = "boolean",
        },
        forceDeviceLockout = {
            type = "integer",
        },
        forceOpenAccess = {
            type = "boolean",
        },
        forceReadReceipts = {
            type = "boolean",
        },
        globalFederation = {
            type = "boolean",
        },
        isAtoEnabled = {
            type = "boolean",
        },
        isLinkPreviewEnabled = {
            type = "boolean",
        },
        locationAllowMaps = {
            type = "boolean",
        },
        locationEnabled = {
            type = "boolean",
        },
        maxAutoDownloadSize = {
            type = "long",
        },
        maxBor = {
            type = "integer",
        },
        maxTtl = {
            type = "long",
        },
        messageForwardingEnabled = {
            type = "boolean",
        },
        passwordRequirements = M.PasswordRequirements,
        presenceEnabled = {
            type = "boolean",
        },
        quickResponses = {
            type = "list",
            member = { type = "string" },
        },
        showMasterRecoveryKey = {
            type = "boolean",
        },
        shredder = M.ShredderSettings,
        ssoMaxIdleMinutes = {
            type = "integer",
        },
        federationMode = {
            type = "integer",
        },
        lockoutThreshold = {
            type = "integer",
        },
        permittedNetworks = {
            type = "list",
            member = { type = "string" },
        },
        permittedWickrAwsNetworks = {
            type = "list",
            member = M.WickrAwsNetworks,
        },
        permittedWickrEnterpriseNetworks = {
            type = "list",
            member = M.PermittedWickrEnterpriseNetwork,
        },
    },
}

M.SecurityGroup = {
    type = "structure",
    id = "SecurityGroup",
    members = {
        activeMembers = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        botMembers = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        activeDirectoryGuid = {
            type = "string",
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        isDefault = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modified = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        securityGroupSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SecurityGroupSettings }),
    },
}

M.CreateSecurityGroupOutput = {
    type = "structure",
    id = "CreateSecurityGroupOutput",
    members = {
        securityGroup = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SecurityGroup }),
    },
}

M.DataRetentionActionType = {
    ENABLE = "ENABLE",
    DISABLE = "DISABLE",
    PUBKEY_MSG_ACK = "PUBKEY_MSG_ACK",
}

M.DeleteBotInput = {
    type = "structure",
    id = "DeleteBotInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteBotOutput = {
    type = "structure",
    id = "DeleteBotOutput",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteDataRetentionBotInput = {
    type = "structure",
    id = "DeleteDataRetentionBotInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDataRetentionBotOutput = {
    type = "structure",
    id = "DeleteDataRetentionBotOutput",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteNetworkInput = {
    type = "structure",
    id = "DeleteNetworkInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Client-Token",
                idempotency_token = true,
            },
        },
    },
}

M.DeleteNetworkOutput = {
    type = "structure",
    id = "DeleteNetworkOutput",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteSecurityGroupInput = {
    type = "structure",
    id = "DeleteSecurityGroupInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        groupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSecurityGroupOutput = {
    type = "structure",
    id = "DeleteSecurityGroupOutput",
    members = {
        message = {
            type = "string",
        },
        networkId = {
            type = "string",
        },
        groupId = {
            type = "string",
        },
    },
}

M.GetBotInput = {
    type = "structure",
    id = "GetBotInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetBotOutput = {
    type = "structure",
    id = "GetBotOutput",
    members = {
        botId = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        username = {
            type = "string",
        },
        uname = {
            type = "string",
        },
        pubkey = {
            type = "string",
        },
        status = {
            type = "number",
        },
        groupId = {
            type = "string",
        },
        hasChallenge = {
            type = "boolean",
        },
        suspended = {
            type = "boolean",
        },
        lastLogin = {
            type = "string",
        },
    },
}

M.GetBotsCountInput = {
    type = "structure",
    id = "GetBotsCountInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetBotsCountOutput = {
    type = "structure",
    id = "GetBotsCountOutput",
    members = {
        pending = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        active = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        total = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDataRetentionBotInput = {
    type = "structure",
    id = "GetDataRetentionBotInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDataRetentionBotOutput = {
    type = "structure",
    id = "GetDataRetentionBotOutput",
    members = {
        botName = {
            type = "string",
        },
        botExists = {
            type = "boolean",
        },
        isBotActive = {
            type = "boolean",
        },
        isDataRetentionBotRegistered = {
            type = "boolean",
        },
        isDataRetentionServiceEnabled = {
            type = "boolean",
        },
        isPubkeyMsgAcked = {
            type = "boolean",
        },
    },
}

M.GetGuestUserHistoryCountInput = {
    type = "structure",
    id = "GetGuestUserHistoryCountInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GuestUserHistoryCount = {
    type = "structure",
    id = "GuestUserHistoryCount",
    members = {
        month = {
            type = "string",
            traits = {
                required = true,
            },
        },
        count = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetGuestUserHistoryCountOutput = {
    type = "structure",
    id = "GetGuestUserHistoryCountOutput",
    members = {
        history = {
            type = "list",
            member = M.GuestUserHistoryCount,
            traits = {
                required = true,
            },
        },
    },
}

M.GetNetworkInput = {
    type = "structure",
    id = "GetNetworkInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetNetworkOutput = {
    type = "structure",
    id = "GetNetworkOutput",
    members = {
        networkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accessLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awsAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        standing = {
            type = "integer",
        },
        freeTrialExpiration = {
            type = "string",
        },
        migrationState = {
            type = "integer",
        },
        encryptionKeyArn = {
            type = "string",
        },
    },
}

M.GetNetworkSettingsInput = {
    type = "structure",
    id = "GetNetworkSettingsInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Setting = {
    type = "structure",
    id = "Setting",
    members = {
        optionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetNetworkSettingsOutput = {
    type = "structure",
    id = "GetNetworkSettingsOutput",
    members = {
        settings = {
            type = "list",
            member = M.Setting,
            traits = {
                required = true,
            },
        },
    },
}

M.GetOidcInfoInput = {
    type = "structure",
    id = "GetOidcInfoInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientId = {
            type = "string",
            traits = {
                http_query = "clientId",
            },
        },
        code = {
            type = "string",
            traits = {
                http_query = "code",
            },
        },
        grantType = {
            type = "string",
            traits = {
                http_query = "grantType",
            },
        },
        redirectUri = {
            type = "string",
            traits = {
                http_query = "redirectUri",
            },
        },
        url = {
            type = "string",
            traits = {
                http_query = "url",
            },
        },
        clientSecret = {
            type = "string",
            traits = {
                http_query = "clientSecret",
            },
        },
        codeVerifier = {
            type = "string",
            traits = {
                http_query = "codeVerifier",
            },
        },
        certificate = {
            type = "string",
            traits = {
                http_query = "certificate",
            },
        },
    },
}

M.OidcConfigInfo = {
    type = "structure",
    id = "OidcConfigInfo",
    members = {
        applicationName = {
            type = "string",
        },
        clientId = {
            type = "string",
        },
        companyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scopes = {
            type = "string",
            traits = {
                required = true,
            },
        },
        issuer = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientSecret = {
            type = "string",
        },
        secret = {
            type = "string",
        },
        redirectUrl = {
            type = "string",
        },
        userId = {
            type = "string",
        },
        customUsername = {
            type = "string",
        },
        caCertificate = {
            type = "string",
        },
        applicationId = {
            type = "integer",
        },
        ssoTokenBufferMinutes = {
            type = "integer",
        },
        extraAuthParams = {
            type = "string",
        },
    },
}

M.OidcTokenInfo = {
    type = "structure",
    id = "OidcTokenInfo",
    members = {
        codeVerifier = {
            type = "string",
        },
        codeChallenge = {
            type = "string",
        },
        accessToken = {
            type = "string",
        },
        idToken = {
            type = "string",
        },
        refreshToken = {
            type = "string",
        },
        tokenType = {
            type = "string",
        },
        expiresIn = {
            type = "long",
        },
    },
}

M.GetOidcInfoOutput = {
    type = "structure",
    id = "GetOidcInfoOutput",
    members = {
        openidConnectInfo = M.OidcConfigInfo,
        tokenInfo = M.OidcTokenInfo,
    },
}

M.GetOpentdfConfigInput = {
    type = "structure",
    id = "GetOpentdfConfigInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetOpentdfConfigOutput = {
    type = "structure",
    id = "GetOpentdfConfigOutput",
    members = {
        clientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientSecret = {
            type = "string",
            traits = {
                required = true,
            },
        },
        provider = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSecurityGroupInput = {
    type = "structure",
    id = "GetSecurityGroupInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        groupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSecurityGroupOutput = {
    type = "structure",
    id = "GetSecurityGroupOutput",
    members = {
        securityGroup = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SecurityGroup }),
    },
}

M.GetUserInput = {
    type = "structure",
    id = "GetUserInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                http_query = "startTime",
                timestamp_format = "epoch-seconds",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                http_query = "endTime",
                timestamp_format = "epoch-seconds",
            },
        },
    },
}

M.GetUserOutput = {
    type = "structure",
    id = "GetUserOutput",
    members = {
        userId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        firstName = {
            type = "string",
        },
        lastName = {
            type = "string",
        },
        username = {
            type = "string",
        },
        isAdmin = {
            type = "boolean",
        },
        suspended = {
            type = "boolean",
        },
        status = {
            type = "integer",
        },
        lastActivity = {
            type = "integer",
        },
        lastLogin = {
            type = "integer",
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetUsersCountInput = {
    type = "structure",
    id = "GetUsersCountInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetUsersCountOutput = {
    type = "structure",
    id = "GetUsersCountOutput",
    members = {
        pending = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        active = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        rejected = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        remaining = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        total = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.GuestUser = {
    type = "structure",
    id = "GuestUser",
    members = {
        billingPeriod = {
            type = "string",
            traits = {
                required = true,
            },
        },
        username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        usernameHash = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SortDirection = {
    ASC = "ASC",
    DESC = "DESC",
}

M.ListBlockedGuestUsersInput = {
    type = "structure",
    id = "ListBlockedGuestUsersInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        sortDirection = {
            type = "string",
            traits = {
                http_query = "sortDirection",
            },
        },
        sortFields = {
            type = "string",
            traits = {
                http_query = "sortFields",
            },
        },
        username = {
            type = "string",
            traits = {
                http_query = "username",
            },
        },
        admin = {
            type = "string",
            traits = {
                http_query = "admin",
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

M.ListBlockedGuestUsersOutput = {
    type = "structure",
    id = "ListBlockedGuestUsersOutput",
    members = {
        nextToken = {
            type = "string",
        },
        blocklist = {
            type = "list",
            member = M.BlockedGuestUser,
            traits = {
                required = true,
            },
        },
    },
}

M.ListBotsInput = {
    type = "structure",
    id = "ListBotsInput",
    members = {
        networkId = {
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
        sortFields = {
            type = "string",
            traits = {
                http_query = "sortFields",
            },
        },
        sortDirection = {
            type = "string",
            traits = {
                http_query = "sortDirection",
            },
        },
        displayName = {
            type = "string",
            traits = {
                http_query = "displayName",
            },
        },
        username = {
            type = "string",
            traits = {
                http_query = "username",
            },
        },
        status = {
            type = "number",
            traits = {
                http_query = "status",
            },
        },
        groupId = {
            type = "string",
            traits = {
                http_query = "groupId",
            },
        },
    },
}

M.ListBotsOutput = {
    type = "structure",
    id = "ListBotsOutput",
    members = {
        bots = {
            type = "list",
            member = M.Bot,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDevicesForUserInput = {
    type = "structure",
    id = "ListDevicesForUserInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userId = {
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
        sortFields = {
            type = "string",
            traits = {
                http_query = "sortFields",
            },
        },
        sortDirection = {
            type = "string",
            traits = {
                http_query = "sortDirection",
            },
        },
    },
}

M.ListDevicesForUserOutput = {
    type = "structure",
    id = "ListDevicesForUserOutput",
    members = {
        nextToken = {
            type = "string",
        },
        devices = {
            type = "list",
            member = M.BasicDeviceObject,
            traits = {
                required = true,
            },
        },
    },
}

M.ListGuestUsersInput = {
    type = "structure",
    id = "ListGuestUsersInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        sortDirection = {
            type = "string",
            traits = {
                http_query = "sortDirection",
            },
        },
        sortFields = {
            type = "string",
            traits = {
                http_query = "sortFields",
            },
        },
        username = {
            type = "string",
            traits = {
                http_query = "username",
            },
        },
        billingPeriod = {
            type = "string",
            traits = {
                http_query = "billingPeriod",
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

M.ListGuestUsersOutput = {
    type = "structure",
    id = "ListGuestUsersOutput",
    members = {
        nextToken = {
            type = "string",
        },
        guestlist = {
            type = "list",
            member = M.GuestUser,
            traits = {
                required = true,
            },
        },
    },
}

M.ListNetworksInput = {
    type = "structure",
    id = "ListNetworksInput",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        sortFields = {
            type = "string",
            traits = {
                http_query = "sortFields",
            },
        },
        sortDirection = {
            type = "string",
            traits = {
                http_query = "sortDirection",
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

M.Network = {
    type = "structure",
    id = "Network",
    members = {
        networkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accessLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awsAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        standing = {
            type = "integer",
        },
        freeTrialExpiration = {
            type = "string",
        },
        migrationState = {
            type = "integer",
        },
        encryptionKeyArn = {
            type = "string",
        },
    },
}

M.ListNetworksOutput = {
    type = "structure",
    id = "ListNetworksOutput",
    members = {
        networks = {
            type = "list",
            member = M.Network,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSecurityGroupsInput = {
    type = "structure",
    id = "ListSecurityGroupsInput",
    members = {
        networkId = {
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
        sortFields = {
            type = "string",
            traits = {
                http_query = "sortFields",
            },
        },
        sortDirection = {
            type = "string",
            traits = {
                http_query = "sortDirection",
            },
        },
    },
}

M.ListSecurityGroupsOutput = {
    type = "structure",
    id = "ListSecurityGroupsOutput",
    members = {
        securityGroups = {
            type = "list",
            member = M.SecurityGroup,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSecurityGroupUsersInput = {
    type = "structure",
    id = "ListSecurityGroupUsersInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        groupId = {
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
        sortFields = {
            type = "string",
            traits = {
                http_query = "sortFields",
            },
        },
        sortDirection = {
            type = "string",
            traits = {
                http_query = "sortDirection",
            },
        },
    },
}

M.ListSecurityGroupUsersOutput = {
    type = "structure",
    id = "ListSecurityGroupUsersOutput",
    members = {
        users = {
            type = "list",
            member = M.User,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UserStatus = {
    PENDING = 1,
    ACTIVE = 2,
}

M.ListUsersInput = {
    type = "structure",
    id = "ListUsersInput",
    members = {
        networkId = {
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
        sortFields = {
            type = "string",
            traits = {
                http_query = "sortFields",
            },
        },
        sortDirection = {
            type = "string",
            traits = {
                http_query = "sortDirection",
            },
        },
        firstName = {
            type = "string",
            traits = {
                http_query = "firstName",
            },
        },
        lastName = {
            type = "string",
            traits = {
                http_query = "lastName",
            },
        },
        username = {
            type = "string",
            traits = {
                http_query = "username",
            },
        },
        status = {
            type = "number",
            traits = {
                http_query = "status",
            },
        },
        groupId = {
            type = "string",
            traits = {
                http_query = "groupId",
            },
        },
    },
}

M.ListUsersOutput = {
    type = "structure",
    id = "ListUsersOutput",
    members = {
        nextToken = {
            type = "string",
        },
        users = {
            type = "list",
            member = M.User,
        },
    },
}

M.Status = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
    FORCE_ENABLED = "FORCE_ENABLED",
}

M.ReadReceiptConfig = {
    type = "structure",
    id = "ReadReceiptConfig",
    members = {
        status = {
            type = "string",
        },
    },
}

M.NetworkSettings = {
    type = "structure",
    id = "NetworkSettings",
    members = {
        enableClientMetrics = {
            type = "boolean",
        },
        readReceiptConfig = M.ReadReceiptConfig,
        dataRetention = {
            type = "boolean",
        },
        enableTrustedDataFormat = {
            type = "boolean",
        },
    },
}

M.RegisterOidcConfigInput = {
    type = "structure",
    id = "RegisterOidcConfigInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        companyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customUsername = {
            type = "string",
        },
        extraAuthParams = {
            type = "string",
        },
        issuer = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scopes = {
            type = "string",
            traits = {
                required = true,
            },
        },
        secret = {
            type = "string",
        },
        ssoTokenBufferMinutes = {
            type = "integer",
        },
        userId = {
            type = "string",
        },
    },
}

M.RegisterOidcConfigOutput = {
    type = "structure",
    id = "RegisterOidcConfigOutput",
    members = {
        applicationName = {
            type = "string",
        },
        clientId = {
            type = "string",
        },
        companyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scopes = {
            type = "string",
            traits = {
                required = true,
            },
        },
        issuer = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientSecret = {
            type = "string",
        },
        secret = {
            type = "string",
        },
        redirectUrl = {
            type = "string",
        },
        userId = {
            type = "string",
        },
        customUsername = {
            type = "string",
        },
        caCertificate = {
            type = "string",
        },
        applicationId = {
            type = "integer",
        },
        ssoTokenBufferMinutes = {
            type = "integer",
        },
        extraAuthParams = {
            type = "string",
        },
    },
}

M.RegisterOidcConfigTestInput = {
    type = "structure",
    id = "RegisterOidcConfigTestInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        extraAuthParams = {
            type = "string",
        },
        issuer = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scopes = {
            type = "string",
            traits = {
                required = true,
            },
        },
        certificate = {
            type = "string",
        },
    },
}

M.RegisterOidcConfigTestOutput = {
    type = "structure",
    id = "RegisterOidcConfigTestOutput",
    members = {
        tokenEndpoint = {
            type = "string",
        },
        userinfoEndpoint = {
            type = "string",
        },
        responseTypesSupported = {
            type = "list",
            member = { type = "string" },
        },
        scopesSupported = {
            type = "list",
            member = { type = "string" },
        },
        issuer = {
            type = "string",
        },
        authorizationEndpoint = {
            type = "string",
        },
        endSessionEndpoint = {
            type = "string",
        },
        logoutEndpoint = {
            type = "string",
        },
        grantTypesSupported = {
            type = "list",
            member = { type = "string" },
        },
        revocationEndpoint = {
            type = "string",
        },
        tokenEndpointAuthMethodsSupported = {
            type = "list",
            member = { type = "string" },
        },
        microsoftMultiRefreshToken = {
            type = "boolean",
        },
    },
}

M.RegisterOpentdfConfigInput = {
    type = "structure",
    id = "RegisterOpentdfConfigInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientSecret = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        provider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dryRun = {
            type = "boolean",
            traits = {
                http_query = "dryRun",
            },
        },
    },
}

M.RegisterOpentdfConfigOutput = {
    type = "structure",
    id = "RegisterOpentdfConfigOutput",
    members = {
        clientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientSecret = {
            type = "string",
            traits = {
                required = true,
            },
        },
        provider = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateBotInput = {
    type = "structure",
    id = "UpdateBotInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        groupId = {
            type = "string",
        },
        challenge = {
            type = "string",
        },
        suspend = {
            type = "boolean",
        },
    },
}

M.UpdateBotOutput = {
    type = "structure",
    id = "UpdateBotOutput",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdateDataRetentionInput = {
    type = "structure",
    id = "UpdateDataRetentionInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        actionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateDataRetentionOutput = {
    type = "structure",
    id = "UpdateDataRetentionOutput",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdateGuestUserInput = {
    type = "structure",
    id = "UpdateGuestUserInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        usernameHash = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        block = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateGuestUserOutput = {
    type = "structure",
    id = "UpdateGuestUserOutput",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdateNetworkInput = {
    type = "structure",
    id = "UpdateNetworkInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        networkName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Client-Token",
                idempotency_token = true,
            },
        },
        encryptionKeyArn = {
            type = "string",
        },
    },
}

M.UpdateNetworkOutput = {
    type = "structure",
    id = "UpdateNetworkOutput",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdateNetworkSettingsInput = {
    type = "structure",
    id = "UpdateNetworkSettingsInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        settings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NetworkSettings }),
    },
}

M.UpdateNetworkSettingsOutput = {
    type = "structure",
    id = "UpdateNetworkSettingsOutput",
    members = {
        settings = {
            type = "list",
            member = M.Setting,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSecurityGroupInput = {
    type = "structure",
    id = "UpdateSecurityGroupInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        groupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        securityGroupSettings = M.SecurityGroupSettings,
    },
}

M.UpdateSecurityGroupOutput = {
    type = "structure",
    id = "UpdateSecurityGroupOutput",
    members = {
        securityGroup = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SecurityGroup }),
    },
}

M.UpdateUserDetails = {
    type = "structure",
    id = "UpdateUserDetails",
    members = {
        firstName = {
            type = "string",
        },
        lastName = {
            type = "string",
        },
        username = {
            type = "string",
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        inviteCode = {
            type = "string",
        },
        inviteCodeTtl = {
            type = "integer",
        },
        codeValidation = {
            type = "boolean",
        },
    },
}

M.UpdateUserInput = {
    type = "structure",
    id = "UpdateUserInput",
    members = {
        networkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userDetails = M.UpdateUserDetails,
    },
}

M.UpdateUserOutput = {
    type = "structure",
    id = "UpdateUserOutput",
    members = {
        userId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        firstName = {
            type = "string",
        },
        lastName = {
            type = "string",
        },
        middleName = {
            type = "string",
        },
        suspended = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        modified = {
            type = "integer",
        },
        status = {
            type = "integer",
        },
        inviteCode = {
            type = "string",
        },
        inviteExpiration = {
            type = "integer",
        },
        codeValidation = {
            type = "boolean",
        },
    },
}

return M
