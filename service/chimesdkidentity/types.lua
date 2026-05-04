local M = {}

M.AllowMessages = {
    ALL = "ALL",
    NONE = "NONE",
}

M.AppInstance = {
    type = "structure",
    id = "AppInstance",
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
    id = "Identity",
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
    id = "AppInstanceAdmin",
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
    id = "AppInstanceAdminSummary",
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
    id = "InvokedBy",
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
    id = "LexConfiguration",
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
    id = "Configuration",
    members = {
        Lex = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LexConfiguration }),
    },
}

M.AppInstanceBot = {
    type = "structure",
    id = "AppInstanceBot",
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
    id = "AppInstanceBotSummary",
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
    id = "AppInstanceSummary",
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
    id = "ChannelRetentionSettings",
    members = {
        RetentionDays = {
            type = "integer",
        },
    },
}

M.AppInstanceRetentionSettings = {
    type = "structure",
    id = "AppInstanceRetentionSettings",
    members = {
        ChannelRetentionSettings = M.ChannelRetentionSettings,
    },
}

M.ExpirationCriterion = {
    CREATED_TIMESTAMP = "CREATED_TIMESTAMP",
}

M.ExpirationSettings = {
    type = "structure",
    id = "ExpirationSettings",
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
    id = "AppInstanceUser",
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
    id = "EndpointAttributes",
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
    id = "EndpointState",
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
    id = "AppInstanceUserEndpoint",
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
    id = "AppInstanceUserEndpointSummary",
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
    id = "AppInstanceUserSummary",
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
    id = "BadRequestException",
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
    id = "ConflictException",
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

M.CreateAppInstanceInput = {
    type = "structure",
    id = "CreateAppInstanceInput",
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
    id = "CreateAppInstanceOutput",
    members = {
        AppInstanceArn = {
            type = "string",
        },
    },
}

M.ForbiddenException = {
    type = "structure",
    id = "ForbiddenException",
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
    id = "ResourceLimitExceededException",
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
    id = "ServiceFailureException",
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
    id = "ServiceUnavailableException",
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
    id = "ThrottledClientException",
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
    id = "UnauthorizedClientException",
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
    id = "CreateAppInstanceAdminInput",
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
    id = "CreateAppInstanceAdminOutput",
    members = {
        AppInstanceAdmin = M.Identity,
        AppInstanceArn = {
            type = "string",
        },
    },
}

M.CreateAppInstanceBotInput = {
    type = "structure",
    id = "CreateAppInstanceBotInput",
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
    id = "CreateAppInstanceBotOutput",
    members = {
        AppInstanceBotArn = {
            type = "string",
        },
    },
}

M.CreateAppInstanceUserInput = {
    type = "structure",
    id = "CreateAppInstanceUserInput",
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
    id = "CreateAppInstanceUserOutput",
    members = {
        AppInstanceUserArn = {
            type = "string",
        },
    },
}

M.DeleteAppInstanceInput = {
    type = "structure",
    id = "DeleteAppInstanceInput",
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
    id = "DeleteAppInstanceOutput",
}

M.DeleteAppInstanceAdminInput = {
    type = "structure",
    id = "DeleteAppInstanceAdminInput",
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
    id = "DeleteAppInstanceAdminOutput",
}

M.DeleteAppInstanceBotInput = {
    type = "structure",
    id = "DeleteAppInstanceBotInput",
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
    id = "DeleteAppInstanceBotOutput",
}

M.DeleteAppInstanceUserInput = {
    type = "structure",
    id = "DeleteAppInstanceUserInput",
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
    id = "DeleteAppInstanceUserOutput",
}

M.DeregisterAppInstanceUserEndpointInput = {
    type = "structure",
    id = "DeregisterAppInstanceUserEndpointInput",
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
    id = "DeregisterAppInstanceUserEndpointOutput",
}

M.DescribeAppInstanceInput = {
    type = "structure",
    id = "DescribeAppInstanceInput",
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
    id = "DescribeAppInstanceOutput",
    members = {
        AppInstance = M.AppInstance,
    },
}

M.DescribeAppInstanceAdminInput = {
    type = "structure",
    id = "DescribeAppInstanceAdminInput",
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
    id = "DescribeAppInstanceAdminOutput",
    members = {
        AppInstanceAdmin = M.AppInstanceAdmin,
    },
}

M.DescribeAppInstanceBotInput = {
    type = "structure",
    id = "DescribeAppInstanceBotInput",
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
    id = "DescribeAppInstanceBotOutput",
    members = {
        AppInstanceBot = M.AppInstanceBot,
    },
}

M.NotFoundException = {
    type = "structure",
    id = "NotFoundException",
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
    id = "DescribeAppInstanceUserInput",
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
    id = "DescribeAppInstanceUserOutput",
    members = {
        AppInstanceUser = M.AppInstanceUser,
    },
}

M.DescribeAppInstanceUserEndpointInput = {
    type = "structure",
    id = "DescribeAppInstanceUserEndpointInput",
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
    id = "DescribeAppInstanceUserEndpointOutput",
    members = {
        AppInstanceUserEndpoint = M.AppInstanceUserEndpoint,
    },
}

M.GetAppInstanceRetentionSettingsInput = {
    type = "structure",
    id = "GetAppInstanceRetentionSettingsInput",
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
    id = "GetAppInstanceRetentionSettingsOutput",
    members = {
        AppInstanceRetentionSettings = M.AppInstanceRetentionSettings,
        InitiateDeletionTimestamp = {
            type = "timestamp",
        },
    },
}

M.ListAppInstanceAdminsInput = {
    type = "structure",
    id = "ListAppInstanceAdminsInput",
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
    id = "ListAppInstanceAdminsOutput",
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
    id = "ListAppInstanceBotsInput",
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
    id = "ListAppInstanceBotsOutput",
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
    id = "ListAppInstancesInput",
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
    id = "ListAppInstancesOutput",
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
    id = "ListAppInstanceUserEndpointsInput",
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
    id = "ListAppInstanceUserEndpointsOutput",
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
    id = "ListAppInstanceUsersInput",
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
    id = "ListAppInstanceUsersOutput",
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
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutAppInstanceRetentionSettingsInput = {
    type = "structure",
    id = "PutAppInstanceRetentionSettingsInput",
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
    id = "PutAppInstanceRetentionSettingsOutput",
    members = {
        AppInstanceRetentionSettings = M.AppInstanceRetentionSettings,
        InitiateDeletionTimestamp = {
            type = "timestamp",
        },
    },
}

M.PutAppInstanceUserExpirationSettingsInput = {
    type = "structure",
    id = "PutAppInstanceUserExpirationSettingsInput",
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
    id = "PutAppInstanceUserExpirationSettingsOutput",
    members = {
        AppInstanceUserArn = {
            type = "string",
        },
        ExpirationSettings = M.ExpirationSettings,
    },
}

M.RegisterAppInstanceUserEndpointInput = {
    type = "structure",
    id = "RegisterAppInstanceUserEndpointInput",
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
    id = "RegisterAppInstanceUserEndpointOutput",
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
    id = "TagResourceInput",
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
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

M.UpdateAppInstanceInput = {
    type = "structure",
    id = "UpdateAppInstanceInput",
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
    id = "UpdateAppInstanceOutput",
    members = {
        AppInstanceArn = {
            type = "string",
        },
    },
}

M.UpdateAppInstanceBotInput = {
    type = "structure",
    id = "UpdateAppInstanceBotInput",
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
    id = "UpdateAppInstanceBotOutput",
    members = {
        AppInstanceBotArn = {
            type = "string",
        },
    },
}

M.UpdateAppInstanceUserInput = {
    type = "structure",
    id = "UpdateAppInstanceUserInput",
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
    id = "UpdateAppInstanceUserOutput",
    members = {
        AppInstanceUserArn = {
            type = "string",
        },
    },
}

M.UpdateAppInstanceUserEndpointInput = {
    type = "structure",
    id = "UpdateAppInstanceUserEndpointInput",
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
    id = "UpdateAppInstanceUserEndpointOutput",
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
