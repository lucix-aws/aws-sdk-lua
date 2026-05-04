local M = {}

M.AllowMessages = {
    ALL = "ALL",
    NONE = "NONE",
}

M.AppInstance = {
    type = "structure",
    members = {
        AppInstanceArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        LastUpdatedTimestamp = {
            type = "timestamp",
        },
        Metadata = {
            type = "string",
        },
    },
}

M.Identity = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.AppInstanceAdmin = {
    type = "structure",
    members = {
        Admin = M.Identity,
        AppInstanceArn = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.AppInstanceAdminSummary = {
    type = "structure",
    members = {
        Admin = M.Identity,
    },
}

M.StandardMessages = {
    AUTO = "AUTO",
    ALL = "ALL",
    MENTIONS = "MENTIONS",
    NONE = "NONE",
}

M.TargetedMessages = {
    ALL = "ALL",
    NONE = "NONE",
}

M.InvokedBy = {
    type = "structure",
    members = {
        StandardMessages = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetedMessages = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RespondsTo = {
    STANDARD_MESSAGES = "STANDARD_MESSAGES",
}

M.LexConfiguration = {
    type = "structure",
    members = {
        RespondsTo = {
            type = "string",
        },
        InvokedBy = M.InvokedBy,
        LexBotAliasArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LocaleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WelcomeIntent = {
            type = "string",
        },
    },
}

M.Configuration = {
    type = "structure",
    members = {
        Lex = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LexConfiguration }),
    },
}

M.AppInstanceBot = {
    type = "structure",
    members = {
        AppInstanceBotArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Configuration = M.Configuration,
        CreatedTimestamp = {
            type = "timestamp",
        },
        LastUpdatedTimestamp = {
            type = "timestamp",
        },
        Metadata = {
            type = "string",
        },
    },
}

M.AppInstanceBotSummary = {
    type = "structure",
    members = {
        AppInstanceBotArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Metadata = {
            type = "string",
        },
    },
}

M.AppInstanceSummary = {
    type = "structure",
    members = {
        AppInstanceArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Metadata = {
            type = "string",
        },
    },
}

M.ChannelRetentionSettings = {
    type = "structure",
    members = {
        RetentionDays = {
            type = "integer",
        },
    },
}

M.AppInstanceRetentionSettings = {
    type = "structure",
    members = {
        ChannelRetentionSettings = M.ChannelRetentionSettings,
    },
}

M.ExpirationCriterion = {
    CREATED_TIMESTAMP = "CREATED_TIMESTAMP",
}

M.ExpirationSettings = {
    type = "structure",
    members = {
        ExpirationDays = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        ExpirationCriterion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AppInstanceUser = {
    type = "structure",
    members = {
        AppInstanceUserArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Metadata = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        LastUpdatedTimestamp = {
            type = "timestamp",
        },
        ExpirationSettings = M.ExpirationSettings,
    },
}

M.EndpointAttributes = {
    type = "structure",
    members = {
        DeviceToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VoipDeviceToken = {
            type = "string",
        },
    },
}

M.EndpointStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.EndpointStatusReason = {
    INVALID_DEVICE_TOKEN = "INVALID_DEVICE_TOKEN",
    INVALID_PINPOINT_ARN = "INVALID_PINPOINT_ARN",
}

M.EndpointState = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StatusReason = {
            type = "string",
        },
    },
}

M.AppInstanceUserEndpointType = {
    APNS = "APNS",
    APNS_SANDBOX = "APNS_SANDBOX",
    GCM = "GCM",
}

M.AppInstanceUserEndpoint = {
    type = "structure",
    members = {
        AppInstanceUserArn = {
            type = "string",
        },
        EndpointId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        EndpointAttributes = M.EndpointAttributes,
        CreatedTimestamp = {
            type = "timestamp",
        },
        LastUpdatedTimestamp = {
            type = "timestamp",
        },
        AllowMessages = {
            type = "string",
        },
        EndpointState = M.EndpointState,
    },
}

M.AppInstanceUserEndpointSummary = {
    type = "structure",
    members = {
        AppInstanceUserArn = {
            type = "string",
        },
        EndpointId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        AllowMessages = {
            type = "string",
        },
        EndpointState = M.EndpointState,
    },
}

M.AppInstanceUserSummary = {
    type = "structure",
    members = {
        AppInstanceUserArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Metadata = {
            type = "string",
        },
    },
}

M.ErrorCode = {
    BadRequest = "BadRequest",
    Conflict = "Conflict",
    Forbidden = "Forbidden",
    NotFound = "NotFound",
    PreconditionFailed = "PreconditionFailed",
    ResourceLimitExceeded = "ResourceLimitExceeded",
    ServiceFailure = "ServiceFailure",
    AccessDenied = "AccessDenied",
    ServiceUnavailable = "ServiceUnavailable",
    Throttled = "Throttled",
    Throttling = "Throttling",
    Unauthorized = "Unauthorized",
    Unprocessable = "Unprocessable",
    VoiceConnectorGroupAssociationsExist = "VoiceConnectorGroupAssociationsExist",
    PhoneNumberAssociationsExist = "PhoneNumberAssociationsExist",
}

M.BadRequestException = {
    type = "structure",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
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

M.CreateAppInstanceInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Metadata = {
            type = "string",
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateAppInstanceOutput = {
    type = "structure",
    members = {
        AppInstanceArn = {
            type = "string",
        },
    },
}

M.ForbiddenException = {
    type = "structure",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ResourceLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ServiceFailureException = {
    type = "structure",
    error = "server",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    error = "server",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ThrottledClientException = {
    type = "structure",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.UnauthorizedClientException = {
    type = "structure",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.CreateAppInstanceAdminInput = {
    type = "structure",
    members = {
        AppInstanceAdminArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AppInstanceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CreateAppInstanceAdminOutput = {
    type = "structure",
    members = {
        AppInstanceAdmin = M.Identity,
        AppInstanceArn = {
            type = "string",
        },
    },
}

M.CreateAppInstanceBotInput = {
    type = "structure",
    members = {
        AppInstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Metadata = {
            type = "string",
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        Configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Configuration }),
    },
}

M.CreateAppInstanceBotOutput = {
    type = "structure",
    members = {
        AppInstanceBotArn = {
            type = "string",
        },
    },
}

M.CreateAppInstanceUserInput = {
    type = "structure",
    members = {
        AppInstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AppInstanceUserId = {
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
        Metadata = {
            type = "string",
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ExpirationSettings = M.ExpirationSettings,
    },
}

M.CreateAppInstanceUserOutput = {
    type = "structure",
    members = {
        AppInstanceUserArn = {
            type = "string",
        },
    },
}

M.DeleteAppInstanceInput = {
    type = "structure",
    members = {
        AppInstanceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAppInstanceOutput = {
    type = "structure",
}

M.DeleteAppInstanceAdminInput = {
    type = "structure",
    members = {
        AppInstanceAdminArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AppInstanceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAppInstanceAdminOutput = {
    type = "structure",
}

M.DeleteAppInstanceBotInput = {
    type = "structure",
    members = {
        AppInstanceBotArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAppInstanceBotOutput = {
    type = "structure",
}

M.DeleteAppInstanceUserInput = {
    type = "structure",
    members = {
        AppInstanceUserArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAppInstanceUserOutput = {
    type = "structure",
}

M.DeregisterAppInstanceUserEndpointInput = {
    type = "structure",
    members = {
        AppInstanceUserArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EndpointId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeregisterAppInstanceUserEndpointOutput = {
    type = "structure",
}

M.DescribeAppInstanceInput = {
    type = "structure",
    members = {
        AppInstanceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeAppInstanceOutput = {
    type = "structure",
    members = {
        AppInstance = M.AppInstance,
    },
}

M.DescribeAppInstanceAdminInput = {
    type = "structure",
    members = {
        AppInstanceAdminArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AppInstanceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeAppInstanceAdminOutput = {
    type = "structure",
    members = {
        AppInstanceAdmin = M.AppInstanceAdmin,
    },
}

M.DescribeAppInstanceBotInput = {
    type = "structure",
    members = {
        AppInstanceBotArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeAppInstanceBotOutput = {
    type = "structure",
    members = {
        AppInstanceBot = M.AppInstanceBot,
    },
}

M.NotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.DescribeAppInstanceUserInput = {
    type = "structure",
    members = {
        AppInstanceUserArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeAppInstanceUserOutput = {
    type = "structure",
    members = {
        AppInstanceUser = M.AppInstanceUser,
    },
}

M.DescribeAppInstanceUserEndpointInput = {
    type = "structure",
    members = {
        AppInstanceUserArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EndpointId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeAppInstanceUserEndpointOutput = {
    type = "structure",
    members = {
        AppInstanceUserEndpoint = M.AppInstanceUserEndpoint,
    },
}

M.GetAppInstanceRetentionSettingsInput = {
    type = "structure",
    members = {
        AppInstanceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAppInstanceRetentionSettingsOutput = {
    type = "structure",
    members = {
        AppInstanceRetentionSettings = M.AppInstanceRetentionSettings,
        InitiateDeletionTimestamp = {
            type = "timestamp",
        },
    },
}

M.ListAppInstanceAdminsInput = {
    type = "structure",
    members = {
        AppInstanceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
    },
}

M.ListAppInstanceAdminsOutput = {
    type = "structure",
    members = {
        AppInstanceArn = {
            type = "string",
        },
        AppInstanceAdmins = {
            type = "list",
            member = M.AppInstanceAdminSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAppInstanceBotsInput = {
    type = "structure",
    members = {
        AppInstanceArn = {
            type = "string",
            traits = {
                http_query = "app-instance-arn",
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
    },
}

M.ListAppInstanceBotsOutput = {
    type = "structure",
    members = {
        AppInstanceArn = {
            type = "string",
        },
        AppInstanceBots = {
            type = "list",
            member = M.AppInstanceBotSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAppInstancesInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
    },
}

M.ListAppInstancesOutput = {
    type = "structure",
    members = {
        AppInstances = {
            type = "list",
            member = M.AppInstanceSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAppInstanceUserEndpointsInput = {
    type = "structure",
    members = {
        AppInstanceUserArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
    },
}

M.ListAppInstanceUserEndpointsOutput = {
    type = "structure",
    members = {
        AppInstanceUserEndpoints = {
            type = "list",
            member = M.AppInstanceUserEndpointSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAppInstanceUsersInput = {
    type = "structure",
    members = {
        AppInstanceArn = {
            type = "string",
            traits = {
                http_query = "app-instance-arn",
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
    },
}

M.ListAppInstanceUsersOutput = {
    type = "structure",
    members = {
        AppInstanceArn = {
            type = "string",
        },
        AppInstanceUsers = {
            type = "list",
            member = M.AppInstanceUserSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                http_query = "arn",
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutAppInstanceRetentionSettingsInput = {
    type = "structure",
    members = {
        AppInstanceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AppInstanceRetentionSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AppInstanceRetentionSettings }),
    },
}

M.PutAppInstanceRetentionSettingsOutput = {
    type = "structure",
    members = {
        AppInstanceRetentionSettings = M.AppInstanceRetentionSettings,
        InitiateDeletionTimestamp = {
            type = "timestamp",
        },
    },
}

M.PutAppInstanceUserExpirationSettingsInput = {
    type = "structure",
    members = {
        AppInstanceUserArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpirationSettings = M.ExpirationSettings,
    },
}

M.PutAppInstanceUserExpirationSettingsOutput = {
    type = "structure",
    members = {
        AppInstanceUserArn = {
            type = "string",
        },
        ExpirationSettings = M.ExpirationSettings,
    },
}

M.RegisterAppInstanceUserEndpointInput = {
    type = "structure",
    members = {
        AppInstanceUserArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointAttributes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EndpointAttributes }),
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        AllowMessages = {
            type = "string",
        },
    },
}

M.RegisterAppInstanceUserEndpointOutput = {
    type = "structure",
    members = {
        AppInstanceUserArn = {
            type = "string",
        },
        EndpointId = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
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
        ResourceARN = {
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
}

M.UpdateAppInstanceInput = {
    type = "structure",
    members = {
        AppInstanceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Metadata = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAppInstanceOutput = {
    type = "structure",
    members = {
        AppInstanceArn = {
            type = "string",
        },
    },
}

M.UpdateAppInstanceBotInput = {
    type = "structure",
    members = {
        AppInstanceBotArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Metadata = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Configuration = M.Configuration,
    },
}

M.UpdateAppInstanceBotOutput = {
    type = "structure",
    members = {
        AppInstanceBotArn = {
            type = "string",
        },
    },
}

M.UpdateAppInstanceUserInput = {
    type = "structure",
    members = {
        AppInstanceUserArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Metadata = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAppInstanceUserOutput = {
    type = "structure",
    members = {
        AppInstanceUserArn = {
            type = "string",
        },
    },
}

M.UpdateAppInstanceUserEndpointInput = {
    type = "structure",
    members = {
        AppInstanceUserArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EndpointId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        AllowMessages = {
            type = "string",
        },
    },
}

M.UpdateAppInstanceUserEndpointOutput = {
    type = "structure",
    members = {
        AppInstanceUserArn = {
            type = "string",
        },
        EndpointId = {
            type = "string",
        },
    },
}

return M
