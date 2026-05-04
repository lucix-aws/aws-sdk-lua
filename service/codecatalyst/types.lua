local M = {}

M.AccessDeniedException = {
    type = "structure",
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
}

M.ListAccessTokensInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.AccessTokenSummary = {
    type = "structure",
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
    members = {
        items = {
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

M.GetUserDetailsInput = {
    type = "structure",
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
        primaryEmail = {
            type = "structure",
        },
        version = {
            type = "string",
        },
    },
}

M.DeleteSpaceInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.OperationType = {
    READONLY = "READONLY",
    MUTATION = "MUTATION",
}

M.ProjectInformation = {
    type = "structure",
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
        userIdentity = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        projectInformation = {
            type = "structure",
        },
        requestId = {
            type = "string",
        },
        requestPayload = {
            type = "structure",
        },
        responsePayload = {
            type = "structure",
        },
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
    members = {
        nextToken = {
            type = "string",
        },
        items = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSpaceInput = {
    type = "structure",
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
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.Ide = {
    type = "structure",
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
    members = {
        sizeInGiB = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.DevEnvironmentRepositorySummary = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        alias = {
            type = "string",
        },
        ides = {
            type = "list",
            member_type = "structure",
        },
        instanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inactivityTimeoutMinutes = {
            type = "number",
            traits = {
                required = true,
            },
        },
        persistentStorage = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        vpcConnectionName = {
            type = "string",
        },
    },
}

M.ListDevEnvironmentsOutput = {
    type = "structure",
    members = {
        items = {
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

M.ListSpacesInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
    },
}

M.SpaceSummary = {
    type = "structure",
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
    members = {
        nextToken = {
            type = "string",
        },
        items = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateProjectInput = {
    type = "structure",
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
    members = {
        sizeInGiB = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.RepositoryInput = {
    type = "structure",
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
            member_type = "structure",
        },
        clientToken = {
            type = "string",
        },
        alias = {
            type = "string",
        },
        ides = {
            type = "list",
            member_type = "structure",
        },
        instanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inactivityTimeoutMinutes = {
            type = "number",
        },
        persistentStorage = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        vpcConnectionName = {
            type = "string",
        },
    },
}

M.CreateDevEnvironmentOutput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        alias = {
            type = "string",
        },
        ides = {
            type = "list",
            member_type = "structure",
        },
        instanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inactivityTimeoutMinutes = {
            type = "number",
            traits = {
                required = true,
            },
        },
        persistentStorage = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        vpcConnectionName = {
            type = "string",
        },
    },
}

M.ListDevEnvironmentSessionsInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.DevEnvironmentSessionSummary = {
    type = "structure",
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
    members = {
        items = {
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

M.StartDevEnvironmentInput = {
    type = "structure",
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
            member_type = "structure",
        },
        instanceType = {
            type = "string",
        },
        inactivityTimeoutMinutes = {
            type = "number",
        },
    },
}

M.StartDevEnvironmentOutput = {
    type = "structure",
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
    members = {
        command = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arguments = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DevEnvironmentSessionType = {
    SSM = "SSM",
    SSH = "SSH",
}

M.DevEnvironmentSessionConfiguration = {
    type = "structure",
    members = {
        sessionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executeCommandSessionConfiguration = {
            type = "structure",
        },
    },
}

M.StartDevEnvironmentSessionInput = {
    type = "structure",
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
        sessionConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DevEnvironmentAccessDetails = {
    type = "structure",
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
    members = {
        accessDetails = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
        },
        instanceType = {
            type = "string",
        },
        inactivityTimeoutMinutes = {
            type = "number",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UpdateDevEnvironmentOutput = {
    type = "structure",
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
            member_type = "structure",
        },
        instanceType = {
            type = "string",
        },
        inactivityTimeoutMinutes = {
            type = "number",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.GetProjectInput = {
    type = "structure",
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
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "string",
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
            type = "number",
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ProjectSummary = {
    type = "structure",
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
    members = {
        nextToken = {
            type = "string",
        },
        items = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateSourceRepositoryInput = {
    type = "structure",
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
            },
        },
        createdTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSourceRepositoryCloneUrlsInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.ListSourceRepositoriesItem = {
    type = "structure",
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
            },
        },
        createdTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListSourceRepositoriesOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.CreateSourceRepositoryBranchInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.ListSourceRepositoryBranchesItem = {
    type = "structure",
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
    members = {
        nextToken = {
            type = "string",
        },
        items = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateProjectInput = {
    type = "structure",
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
        definition = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
}

M.ListWorkflowsInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        sortBy = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.WorkflowDefinitionSummary = {
    type = "structure",
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
        definition = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    members = {
        nextToken = {
            type = "string",
        },
        items = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetWorkflowRunInput = {
    type = "structure",
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
}

M.GetWorkflowRunOutput = {
    type = "structure",
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
            member_type = "structure",
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
}

M.ListWorkflowRunsInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        sortBy = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.WorkflowRunSummary = {
    type = "structure",
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
            member_type = "structure",
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
    members = {
        nextToken = {
            type = "string",
        },
        items = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.StartWorkflowRunInput = {
    type = "structure",
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
        },
    },
}

M.StartWorkflowRunOutput = {
    type = "structure",
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
}

M.VerifySessionOutput = {
    type = "structure",
    members = {
        identity = {
            type = "string",
        },
    },
}

return M
