local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
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
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAccessTokenInput = {
    type = "structure",
    id = "CreateAccessTokenInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expiresTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.CreateAccessTokenOutput = {
    type = "structure",
    id = "CreateAccessTokenOutput",
    members = {
        secret = {
            type = "string",
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
        expiresTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        accessTokenId = {
            type = "string",
            traits = {
                required = true,
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
            traits = {
                required = true,
            },
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
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAccessTokenInput = {
    type = "structure",
    id = "DeleteAccessTokenInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAccessTokenOutput = {
    type = "structure",
    id = "DeleteAccessTokenOutput",
}

M.ListAccessTokensInput = {
    type = "structure",
    id = "ListAccessTokensInput",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.AccessTokenSummary = {
    type = "structure",
    id = "AccessTokenSummary",
    members = {
        id = {
            type = "string",
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
        expiresTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListAccessTokensOutput = {
    type = "structure",
    id = "ListAccessTokensOutput",
    members = {
        items = {
            type = "list",
            member = M.AccessTokenSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetUserDetailsInput = {
    type = "structure",
    id = "GetUserDetailsInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_query = "id",
            },
        },
        userName = {
            type = "string",
            traits = {
                http_query = "userName",
            },
        },
    },
}

M.EmailAddress = {
    type = "structure",
    id = "EmailAddress",
    members = {
        email = {
            type = "string",
        },
        verified = {
            type = "boolean",
        },
    },
}

M.GetUserDetailsOutput = {
    type = "structure",
    id = "GetUserDetailsOutput",
    members = {
        userId = {
            type = "string",
        },
        userName = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        primaryEmail = M.EmailAddress,
        version = {
            type = "string",
        },
    },
}

M.DeleteSpaceInput = {
    type = "structure",
    id = "DeleteSpaceInput",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSpaceOutput = {
    type = "structure",
    id = "DeleteSpaceOutput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
    },
}

M.ListEventLogsInput = {
    type = "structure",
    id = "ListEventLogsInput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        eventName = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.OperationType = {
    READONLY = "READONLY",
    MUTATION = "MUTATION",
}

M.ProjectInformation = {
    type = "structure",
    id = "ProjectInformation",
    members = {
        name = {
            type = "string",
        },
        projectId = {
            type = "string",
        },
    },
}

M.EventPayload = {
    type = "structure",
    id = "EventPayload",
    members = {
        contentType = {
            type = "string",
        },
        data = {
            type = "string",
        },
    },
}

M.UserType = {
    USER = "USER",
    AWS_ACCOUNT = "AWS_ACCOUNT",
    UNKNOWN = "UNKNOWN",
}

M.UserIdentity = {
    type = "structure",
    id = "UserIdentity",
    members = {
        userType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principalId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userName = {
            type = "string",
        },
        awsAccountId = {
            type = "string",
        },
    },
}

M.EventLogEntry = {
    type = "structure",
    id = "EventLogEntry",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventCategory = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        operationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userIdentity = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UserIdentity }),
        projectInformation = M.ProjectInformation,
        requestId = {
            type = "string",
        },
        requestPayload = M.EventPayload,
        responsePayload = M.EventPayload,
        errorCode = {
            type = "string",
        },
        sourceIpAddress = {
            type = "string",
        },
        userAgent = {
            type = "string",
        },
    },
}

M.ListEventLogsOutput = {
    type = "structure",
    id = "ListEventLogsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        items = {
            type = "list",
            member = M.EventLogEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.GetSpaceInput = {
    type = "structure",
    id = "GetSpaceInput",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSpaceOutput = {
    type = "structure",
    id = "GetSpaceOutput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        regionName = {
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
    },
}

M.Filter = {
    type = "structure",
    id = "Filter",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        comparisonOperator = {
            type = "string",
        },
    },
}

M.ListDevEnvironmentsInput = {
    type = "structure",
    id = "ListDevEnvironmentsInput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        projectName = {
            type = "string",
        },
        filters = {
            type = "list",
            member = M.Filter,
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.Ide = {
    type = "structure",
    id = "Ide",
    members = {
        runtime = {
            type = "string",
        },
        name = {
            type = "string",
        },
    },
}

M.InstanceType = {
    DEV_STANDARD1_SMALL = "dev.standard1.small",
    DEV_STANDARD1_MEDIUM = "dev.standard1.medium",
    DEV_STANDARD1_LARGE = "dev.standard1.large",
    DEV_STANDARD1_XLARGE = "dev.standard1.xlarge",
}

M.PersistentStorage = {
    type = "structure",
    id = "PersistentStorage",
    members = {
        sizeInGiB = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.DevEnvironmentRepositorySummary = {
    type = "structure",
    id = "DevEnvironmentRepositorySummary",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        branchName = {
            type = "string",
        },
    },
}

M.DevEnvironmentStatus = {
    PENDING = "PENDING",
    RUNNING = "RUNNING",
    STARTING = "STARTING",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
    FAILED = "FAILED",
    DELETING = "DELETING",
    DELETED = "DELETED",
}

M.DevEnvironmentSummary = {
    type = "structure",
    id = "DevEnvironmentSummary",
    members = {
        spaceName = {
            type = "string",
        },
        projectName = {
            type = "string",
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lastUpdatedTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        creatorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
        },
        repositories = {
            type = "list",
            member = M.DevEnvironmentRepositorySummary,
            traits = {
                required = true,
            },
        },
        alias = {
            type = "string",
        },
        ides = {
            type = "list",
            member = M.Ide,
        },
        instanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inactivityTimeoutMinutes = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        persistentStorage = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PersistentStorage }),
        vpcConnectionName = {
            type = "string",
        },
    },
}

M.ListDevEnvironmentsOutput = {
    type = "structure",
    id = "ListDevEnvironmentsOutput",
    members = {
        items = {
            type = "list",
            member = M.DevEnvironmentSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSpacesInput = {
    type = "structure",
    id = "ListSpacesInput",
    members = {
        nextToken = {
            type = "string",
        },
    },
}

M.SpaceSummary = {
    type = "structure",
    id = "SpaceSummary",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        regionName = {
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
    },
}

M.ListSpacesOutput = {
    type = "structure",
    id = "ListSpacesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        items = {
            type = "list",
            member = M.SpaceSummary,
        },
    },
}

M.CreateProjectInput = {
    type = "structure",
    id = "CreateProjectInput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        displayName = {
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

M.CreateProjectOutput = {
    type = "structure",
    id = "CreateProjectOutput",
    members = {
        spaceName = {
            type = "string",
        },
        name = {
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
    },
}

M.DeleteProjectInput = {
    type = "structure",
    id = "DeleteProjectInput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteProjectOutput = {
    type = "structure",
    id = "DeleteProjectOutput",
    members = {
        spaceName = {
            type = "string",
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
        displayName = {
            type = "string",
        },
    },
}

M.IdeConfiguration = {
    type = "structure",
    id = "IdeConfiguration",
    members = {
        runtime = {
            type = "string",
        },
        name = {
            type = "string",
        },
    },
}

M.PersistentStorageConfiguration = {
    type = "structure",
    id = "PersistentStorageConfiguration",
    members = {
        sizeInGiB = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.RepositoryInput = {
    type = "structure",
    id = "RepositoryInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        branchName = {
            type = "string",
        },
    },
}

M.CreateDevEnvironmentInput = {
    type = "structure",
    id = "CreateDevEnvironmentInput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        repositories = {
            type = "list",
            member = M.RepositoryInput,
        },
        clientToken = {
            type = "string",
        },
        alias = {
            type = "string",
        },
        ides = {
            type = "list",
            member = M.IdeConfiguration,
        },
        instanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inactivityTimeoutMinutes = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        persistentStorage = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PersistentStorageConfiguration }),
        vpcConnectionName = {
            type = "string",
        },
    },
}

M.CreateDevEnvironmentOutput = {
    type = "structure",
    id = "CreateDevEnvironmentOutput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vpcConnectionName = {
            type = "string",
        },
    },
}

M.DeleteDevEnvironmentInput = {
    type = "structure",
    id = "DeleteDevEnvironmentInput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDevEnvironmentOutput = {
    type = "structure",
    id = "DeleteDevEnvironmentOutput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDevEnvironmentInput = {
    type = "structure",
    id = "GetDevEnvironmentInput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDevEnvironmentOutput = {
    type = "structure",
    id = "GetDevEnvironmentOutput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lastUpdatedTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        creatorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
        },
        repositories = {
            type = "list",
            member = M.DevEnvironmentRepositorySummary,
            traits = {
                required = true,
            },
        },
        alias = {
            type = "string",
        },
        ides = {
            type = "list",
            member = M.Ide,
        },
        instanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inactivityTimeoutMinutes = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        persistentStorage = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PersistentStorage }),
        vpcConnectionName = {
            type = "string",
        },
    },
}

M.ListDevEnvironmentSessionsInput = {
    type = "structure",
    id = "ListDevEnvironmentSessionsInput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        devEnvironmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.DevEnvironmentSessionSummary = {
    type = "structure",
    id = "DevEnvironmentSessionSummary",
    members = {
        spaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        devEnvironmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startedTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListDevEnvironmentSessionsOutput = {
    type = "structure",
    id = "ListDevEnvironmentSessionsOutput",
    members = {
        items = {
            type = "list",
            member = M.DevEnvironmentSessionSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.StartDevEnvironmentInput = {
    type = "structure",
    id = "StartDevEnvironmentInput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ides = {
            type = "list",
            member = M.IdeConfiguration,
        },
        instanceType = {
            type = "string",
        },
        inactivityTimeoutMinutes = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.StartDevEnvironmentOutput = {
    type = "structure",
    id = "StartDevEnvironmentOutput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExecuteCommandSessionConfiguration = {
    type = "structure",
    id = "ExecuteCommandSessionConfiguration",
    members = {
        command = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arguments = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DevEnvironmentSessionType = {
    SSM = "SSM",
    SSH = "SSH",
}

M.DevEnvironmentSessionConfiguration = {
    type = "structure",
    id = "DevEnvironmentSessionConfiguration",
    members = {
        sessionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executeCommandSessionConfiguration = M.ExecuteCommandSessionConfiguration,
    },
}

M.StartDevEnvironmentSessionInput = {
    type = "structure",
    id = "StartDevEnvironmentSessionInput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sessionConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DevEnvironmentSessionConfiguration }),
    },
}

M.DevEnvironmentAccessDetails = {
    type = "structure",
    id = "DevEnvironmentAccessDetails",
    members = {
        streamUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tokenValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartDevEnvironmentSessionOutput = {
    type = "structure",
    id = "StartDevEnvironmentSessionOutput",
    members = {
        accessDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DevEnvironmentAccessDetails }),
        sessionId = {
            type = "string",
        },
        spaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopDevEnvironmentInput = {
    type = "structure",
    id = "StopDevEnvironmentInput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopDevEnvironmentOutput = {
    type = "structure",
    id = "StopDevEnvironmentOutput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopDevEnvironmentSessionInput = {
    type = "structure",
    id = "StopDevEnvironmentSessionInput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        id = {
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

M.StopDevEnvironmentSessionOutput = {
    type = "structure",
    id = "StopDevEnvironmentSessionOutput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateDevEnvironmentInput = {
    type = "structure",
    id = "UpdateDevEnvironmentInput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        alias = {
            type = "string",
        },
        ides = {
            type = "list",
            member = M.IdeConfiguration,
        },
        instanceType = {
            type = "string",
        },
        inactivityTimeoutMinutes = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UpdateDevEnvironmentOutput = {
    type = "structure",
    id = "UpdateDevEnvironmentOutput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        spaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        alias = {
            type = "string",
        },
        ides = {
            type = "list",
            member = M.IdeConfiguration,
        },
        instanceType = {
            type = "string",
        },
        inactivityTimeoutMinutes = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.GetProjectInput = {
    type = "structure",
    id = "GetProjectInput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetProjectOutput = {
    type = "structure",
    id = "GetProjectOutput",
    members = {
        spaceName = {
            type = "string",
        },
        name = {
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
    },
}

M.ComparisonOperator = {
    EQUALS = "EQ",
    GREATER_THAN = "GT",
    GREATER_THAN_OR_EQUALS = "GE",
    LESS_THAN = "LT",
    LESS_THAN_OR_EQUALS = "LE",
    BEGINS_WITH = "BEGINS_WITH",
}

M.FilterKey = {
    HAS_ACCESS_TO = "hasAccessTo",
    NAME = "name",
}

M.ProjectListFilter = {
    type = "structure",
    id = "ProjectListFilter",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        comparisonOperator = {
            type = "string",
        },
    },
}

M.ListProjectsInput = {
    type = "structure",
    id = "ListProjectsInput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        filters = {
            type = "list",
            member = M.ProjectListFilter,
        },
    },
}

M.ProjectSummary = {
    type = "structure",
    id = "ProjectSummary",
    members = {
        name = {
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
    },
}

M.ListProjectsOutput = {
    type = "structure",
    id = "ListProjectsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        items = {
            type = "list",
            member = M.ProjectSummary,
        },
    },
}

M.CreateSourceRepositoryInput = {
    type = "structure",
    id = "CreateSourceRepositoryInput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.CreateSourceRepositoryOutput = {
    type = "structure",
    id = "CreateSourceRepositoryOutput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectName = {
            type = "string",
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
        description = {
            type = "string",
        },
    },
}

M.DeleteSourceRepositoryInput = {
    type = "structure",
    id = "DeleteSourceRepositoryInput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSourceRepositoryOutput = {
    type = "structure",
    id = "DeleteSourceRepositoryOutput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectName = {
            type = "string",
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
    },
}

M.GetSourceRepositoryInput = {
    type = "structure",
    id = "GetSourceRepositoryInput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSourceRepositoryOutput = {
    type = "structure",
    id = "GetSourceRepositoryOutput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectName = {
            type = "string",
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
        description = {
            type = "string",
        },
        lastUpdatedTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        createdTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetSourceRepositoryCloneUrlsInput = {
    type = "structure",
    id = "GetSourceRepositoryCloneUrlsInput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sourceRepositoryName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSourceRepositoryCloneUrlsOutput = {
    type = "structure",
    id = "GetSourceRepositoryCloneUrlsOutput",
    members = {
        https = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListSourceRepositoriesInput = {
    type = "structure",
    id = "ListSourceRepositoriesInput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ListSourceRepositoriesItem = {
    type = "structure",
    id = "ListSourceRepositoriesItem",
    members = {
        id = {
            type = "string",
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
        description = {
            type = "string",
        },
        lastUpdatedTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        createdTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListSourceRepositoriesOutput = {
    type = "structure",
    id = "ListSourceRepositoriesOutput",
    members = {
        items = {
            type = "list",
            member = M.ListSourceRepositoriesItem,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.CreateSourceRepositoryBranchInput = {
    type = "structure",
    id = "CreateSourceRepositoryBranchInput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sourceRepositoryName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        headCommitId = {
            type = "string",
        },
    },
}

M.CreateSourceRepositoryBranchOutput = {
    type = "structure",
    id = "CreateSourceRepositoryBranchOutput",
    members = {
        ref = {
            type = "string",
        },
        name = {
            type = "string",
        },
        lastUpdatedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        headCommitId = {
            type = "string",
        },
    },
}

M.ListSourceRepositoryBranchesInput = {
    type = "structure",
    id = "ListSourceRepositoryBranchesInput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sourceRepositoryName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ListSourceRepositoryBranchesItem = {
    type = "structure",
    id = "ListSourceRepositoryBranchesItem",
    members = {
        ref = {
            type = "string",
        },
        name = {
            type = "string",
        },
        lastUpdatedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        headCommitId = {
            type = "string",
        },
    },
}

M.ListSourceRepositoryBranchesOutput = {
    type = "structure",
    id = "ListSourceRepositoryBranchesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        items = {
            type = "list",
            member = M.ListSourceRepositoryBranchesItem,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateProjectInput = {
    type = "structure",
    id = "UpdateProjectInput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.UpdateProjectOutput = {
    type = "structure",
    id = "UpdateProjectOutput",
    members = {
        spaceName = {
            type = "string",
        },
        name = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.GetWorkflowInput = {
    type = "structure",
    id = "GetWorkflowInput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.WorkflowDefinition = {
    type = "structure",
    id = "WorkflowDefinition",
    members = {
        path = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.WorkflowRunMode = {
    QUEUED = "QUEUED",
    PARALLEL = "PARALLEL",
    SUPERSEDED = "SUPERSEDED",
}

M.WorkflowStatus = {
    INVALID = "INVALID",
    ACTIVE = "ACTIVE",
}

M.GetWorkflowOutput = {
    type = "structure",
    id = "GetWorkflowOutput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
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
        sourceRepositoryName = {
            type = "string",
        },
        sourceBranchName = {
            type = "string",
        },
        definition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowDefinition }),
        createdTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastUpdatedTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        runMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.WorkflowSortCriteria = {
    type = "structure",
    id = "WorkflowSortCriteria",
}

M.ListWorkflowsInput = {
    type = "structure",
    id = "ListWorkflowsInput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        projectName = {
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
        sortBy = {
            type = "list",
            member = M.WorkflowSortCriteria,
        },
    },
}

M.WorkflowDefinitionSummary = {
    type = "structure",
    id = "WorkflowDefinitionSummary",
    members = {
        path = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.WorkflowSummary = {
    type = "structure",
    id = "WorkflowSummary",
    members = {
        id = {
            type = "string",
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
        sourceRepositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceBranchName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        definition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowDefinitionSummary }),
        createdTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastUpdatedTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        runMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListWorkflowsOutput = {
    type = "structure",
    id = "ListWorkflowsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        items = {
            type = "list",
            member = M.WorkflowSummary,
        },
    },
}

M.GetWorkflowRunInput = {
    type = "structure",
    id = "GetWorkflowRunInput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.WorkflowRunStatus = {
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    STOPPED = "STOPPED",
    SUPERSEDED = "SUPERSEDED",
    CANCELLED = "CANCELLED",
    NOT_RUN = "NOT_RUN",
    VALIDATING = "VALIDATING",
    PROVISIONING = "PROVISIONING",
    IN_PROGRESS = "IN_PROGRESS",
    STOPPING = "STOPPING",
    ABANDONED = "ABANDONED",
}

M.WorkflowRunStatusReason = {
    type = "structure",
    id = "WorkflowRunStatusReason",
}

M.GetWorkflowRunOutput = {
    type = "structure",
    id = "GetWorkflowRunOutput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReasons = {
            type = "list",
            member = M.WorkflowRunStatusReason,
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdatedTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.WorkflowRunSortCriteria = {
    type = "structure",
    id = "WorkflowRunSortCriteria",
}

M.ListWorkflowRunsInput = {
    type = "structure",
    id = "ListWorkflowRunsInput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        workflowId = {
            type = "string",
            traits = {
                http_query = "workflowId",
            },
        },
        projectName = {
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
        sortBy = {
            type = "list",
            member = M.WorkflowRunSortCriteria,
        },
    },
}

M.WorkflowRunSummary = {
    type = "structure",
    id = "WorkflowRunSummary",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workflowName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReasons = {
            type = "list",
            member = M.WorkflowRunStatusReason,
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdatedTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListWorkflowRunsOutput = {
    type = "structure",
    id = "ListWorkflowRunsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        items = {
            type = "list",
            member = M.WorkflowRunSummary,
        },
    },
}

M.StartWorkflowRunInput = {
    type = "structure",
    id = "StartWorkflowRunInput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        workflowId = {
            type = "string",
            traits = {
                http_query = "workflowId",
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

M.StartWorkflowRunOutput = {
    type = "structure",
    id = "StartWorkflowRunOutput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSubscriptionInput = {
    type = "structure",
    id = "GetSubscriptionInput",
    members = {
        spaceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSubscriptionOutput = {
    type = "structure",
    id = "GetSubscriptionOutput",
    members = {
        subscriptionType = {
            type = "string",
        },
        awsAccountName = {
            type = "string",
        },
        pendingSubscriptionType = {
            type = "string",
        },
        pendingSubscriptionStartTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.UpdateSpaceInput = {
    type = "structure",
    id = "UpdateSpaceInput",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.UpdateSpaceOutput = {
    type = "structure",
    id = "UpdateSpaceOutput",
    members = {
        name = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.VerifySessionInput = {
    type = "structure",
    id = "VerifySessionInput",
}

M.VerifySessionOutput = {
    type = "structure",
    id = "VerifySessionOutput",
    members = {
        identity = {
            type = "string",
        },
    },
}

return M
