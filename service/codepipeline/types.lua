local M = {}

M.AcknowledgeJobInput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nonce = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JobStatus = {
    Created = "Created",
    Queued = "Queued",
    Dispatched = "Dispatched",
    InProgress = "InProgress",
    TimedOut = "TimedOut",
    Succeeded = "Succeeded",
    Failed = "Failed",
}

M.AcknowledgeJobOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
    },
}

M.InvalidNonceException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.JobNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AcknowledgeThirdPartyJobInput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nonce = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AcknowledgeThirdPartyJobOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
    },
}

M.InvalidClientTokenException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ActionCategory = {
    Source = "Source",
    Build = "Build",
    Deploy = "Deploy",
    Test = "Test",
    Invoke = "Invoke",
    Approval = "Approval",
    Compute = "Compute",
}

M.ActionConfiguration = {
    type = "structure",
    members = {
        configuration = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ActionConfigurationPropertyType = {
    String = "String",
    Number = "Number",
    Boolean = "Boolean",
}

M.ActionConfigurationProperty = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        required = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        key = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        secret = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        queryable = {
            type = "boolean",
        },
        description = {
            type = "string",
        },
        type = {
            type = "string",
        },
    },
}

M.ActionContext = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        actionExecutionId = {
            type = "string",
        },
    },
}

M.ActionOwner = {
    AWS = "AWS",
    ThirdParty = "ThirdParty",
    Custom = "Custom",
}

M.ActionTypeId = {
    type = "structure",
    members = {
        category = {
            type = "string",
            traits = {
                required = true,
            },
        },
        owner = {
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
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EnvironmentVariableType = {
    PLAINTEXT = "PLAINTEXT",
    SECRETS_MANAGER = "SECRETS_MANAGER",
}

M.EnvironmentVariable = {
    type = "structure",
    members = {
        name = {
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
        },
    },
}

M.InputArtifact = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OutputArtifact = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        files = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ActionDeclaration = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actionTypeId = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        runOrder = {
            type = "number",
        },
        configuration = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        commands = {
            type = "list",
            member_type = "string",
        },
        outputArtifacts = {
            type = "list",
            member_type = "structure",
        },
        inputArtifacts = {
            type = "list",
            member_type = "structure",
        },
        outputVariables = {
            type = "list",
            member_type = "string",
        },
        roleArn = {
            type = "string",
        },
        region = {
            type = "string",
        },
        namespace = {
            type = "string",
        },
        timeoutInMinutes = {
            type = "number",
        },
        environmentVariables = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ErrorDetails = {
    type = "structure",
    members = {
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.ActionExecutionStatus = {
    InProgress = "InProgress",
    Abandoned = "Abandoned",
    Succeeded = "Succeeded",
    Failed = "Failed",
}

M.ActionExecution = {
    type = "structure",
    members = {
        actionExecutionId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        summary = {
            type = "string",
        },
        lastStatusChange = {
            type = "timestamp",
        },
        token = {
            type = "string",
        },
        lastUpdatedBy = {
            type = "string",
        },
        externalExecutionId = {
            type = "string",
        },
        externalExecutionUrl = {
            type = "string",
        },
        percentComplete = {
            type = "number",
        },
        errorDetails = {
            type = "structure",
        },
        logStreamARN = {
            type = "string",
        },
    },
}

M.S3Location = {
    type = "structure",
    members = {
        bucket = {
            type = "string",
        },
        key = {
            type = "string",
        },
    },
}

M.ArtifactDetail = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        s3location = {
            type = "structure",
        },
    },
}

M.ActionExecutionInput = {
    type = "structure",
    members = {
        actionTypeId = {
            type = "structure",
        },
        configuration = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        resolvedConfiguration = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        roleArn = {
            type = "string",
        },
        region = {
            type = "string",
        },
        inputArtifacts = {
            type = "list",
            member_type = "structure",
        },
        namespace = {
            type = "string",
        },
    },
}

M.ActionExecutionResult = {
    type = "structure",
    members = {
        externalExecutionId = {
            type = "string",
        },
        externalExecutionSummary = {
            type = "string",
        },
        externalExecutionUrl = {
            type = "string",
        },
        errorDetails = {
            type = "structure",
        },
        logStreamARN = {
            type = "string",
        },
    },
}

M.ActionExecutionOutput = {
    type = "structure",
    members = {
        outputArtifacts = {
            type = "list",
            member_type = "structure",
        },
        executionResult = {
            type = "structure",
        },
        outputVariables = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ActionExecutionDetail = {
    type = "structure",
    members = {
        pipelineExecutionId = {
            type = "string",
        },
        actionExecutionId = {
            type = "string",
        },
        pipelineVersion = {
            type = "number",
        },
        stageName = {
            type = "string",
        },
        actionName = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        lastUpdateTime = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        status = {
            type = "string",
        },
        input = {
            type = "structure",
        },
        output = {
            type = "structure",
        },
    },
}

M.StartTimeRange = {
    Latest = "Latest",
    All = "All",
}

M.LatestInPipelineExecutionFilter = {
    type = "structure",
    members = {
        pipelineExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startTimeRange = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ActionExecutionFilter = {
    type = "structure",
    members = {
        pipelineExecutionId = {
            type = "string",
        },
        latestInPipelineExecution = {
            type = "structure",
        },
    },
}

M.ActionExecutionNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ActionNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ActionRevision = {
    type = "structure",
    members = {
        revisionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revisionChangeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        created = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ActionState = {
    type = "structure",
    members = {
        actionName = {
            type = "string",
        },
        currentRevision = {
            type = "structure",
        },
        latestExecution = {
            type = "structure",
        },
        entityUrl = {
            type = "string",
        },
        revisionUrl = {
            type = "string",
        },
    },
}

M.ArtifactDetails = {
    type = "structure",
    members = {
        minimumCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        maximumCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ActionTypeSettings = {
    type = "structure",
    members = {
        thirdPartyConfigurationUrl = {
            type = "string",
        },
        entityUrlTemplate = {
            type = "string",
        },
        executionUrlTemplate = {
            type = "string",
        },
        revisionUrlTemplate = {
            type = "string",
        },
    },
}

M.ActionType = {
    type = "structure",
    members = {
        id = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        settings = {
            type = "structure",
        },
        actionConfigurationProperties = {
            type = "list",
            member_type = "structure",
        },
        inputArtifactDetails = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        outputArtifactDetails = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ActionTypeArtifactDetails = {
    type = "structure",
    members = {
        minimumCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        maximumCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.JobWorkerExecutorConfiguration = {
    type = "structure",
    members = {
        pollingAccounts = {
            type = "list",
            member_type = "string",
        },
        pollingServicePrincipals = {
            type = "list",
            member_type = "string",
        },
    },
}

M.LambdaExecutorConfiguration = {
    type = "structure",
    members = {
        lambdaFunctionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExecutorConfiguration = {
    type = "structure",
    members = {
        lambdaExecutorConfiguration = {
            type = "structure",
        },
        jobWorkerExecutorConfiguration = {
            type = "structure",
        },
    },
}

M.ExecutorType = {
    JobWorker = "JobWorker",
    Lambda = "Lambda",
}

M.ActionTypeExecutor = {
    type = "structure",
    members = {
        configuration = {
            type = "structure",
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
        policyStatementsTemplate = {
            type = "string",
        },
        jobTimeout = {
            type = "number",
        },
    },
}

M.ActionTypeIdentifier = {
    type = "structure",
    members = {
        category = {
            type = "string",
            traits = {
                required = true,
            },
        },
        owner = {
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
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ActionTypePermissions = {
    type = "structure",
    members = {
        allowedAccounts = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ActionTypeProperty = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        optional = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        key = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        noEcho = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        queryable = {
            type = "boolean",
        },
        description = {
            type = "string",
        },
    },
}

M.ActionTypeUrls = {
    type = "structure",
    members = {
        configurationUrl = {
            type = "string",
        },
        entityUrlTemplate = {
            type = "string",
        },
        executionUrlTemplate = {
            type = "string",
        },
        revisionUrlTemplate = {
            type = "string",
        },
    },
}

M.ActionTypeDeclaration = {
    type = "structure",
    members = {
        description = {
            type = "string",
        },
        executor = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        id = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        inputArtifactDetails = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        outputArtifactDetails = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        permissions = {
            type = "structure",
        },
        properties = {
            type = "list",
            member_type = "structure",
        },
        urls = {
            type = "structure",
        },
    },
}

M.ActionTypeNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApprovalAlreadyCompletedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApprovalStatus = {
    Approved = "Approved",
    Rejected = "Rejected",
}

M.ApprovalResult = {
    type = "structure",
    members = {
        summary = {
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

M.S3ArtifactLocation = {
    type = "structure",
    members = {
        bucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        objectKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ArtifactLocationType = {
    S3 = "S3",
}

M.ArtifactLocation = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        s3Location = {
            type = "structure",
        },
    },
}

M.Artifact = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        revision = {
            type = "string",
        },
        location = {
            type = "structure",
        },
    },
}

M.ArtifactRevision = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        revisionId = {
            type = "string",
        },
        revisionChangeIdentifier = {
            type = "string",
        },
        revisionSummary = {
            type = "string",
        },
        created = {
            type = "timestamp",
        },
        revisionUrl = {
            type = "string",
        },
    },
}

M.EncryptionKeyType = {
    KMS = "KMS",
}

M.EncryptionKey = {
    type = "structure",
    members = {
        id = {
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

M.ArtifactStoreType = {
    S3 = "S3",
}

M.ArtifactStore = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        location = {
            type = "string",
            traits = {
                required = true,
            },
        },
        encryptionKey = {
            type = "structure",
        },
    },
}

M.AWSSessionCredentials = {
    type = "structure",
    members = {
        accessKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        secretAccessKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Result = {
    ROLLBACK = "ROLLBACK",
    FAIL = "FAIL",
    RETRY = "RETRY",
    SKIP = "SKIP",
}

M.RuleCategory = {
    Rule = "Rule",
}

M.RuleOwner = {
    AWS = "AWS",
}

M.RuleTypeId = {
    type = "structure",
    members = {
        category = {
            type = "string",
            traits = {
                required = true,
            },
        },
        owner = {
            type = "string",
        },
        provider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        version = {
            type = "string",
        },
    },
}

M.RuleDeclaration = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ruleTypeId = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        configuration = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        commands = {
            type = "list",
            member_type = "string",
        },
        inputArtifacts = {
            type = "list",
            member_type = "structure",
        },
        roleArn = {
            type = "string",
        },
        region = {
            type = "string",
        },
        timeoutInMinutes = {
            type = "number",
        },
    },
}

M.Condition = {
    type = "structure",
    members = {
        result = {
            type = "string",
        },
        rules = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BeforeEntryConditions = {
    type = "structure",
    members = {
        conditions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BlockerType = {
    Schedule = "Schedule",
}

M.BlockerDeclaration = {
    type = "structure",
    members = {
        name = {
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

M.ConcurrentModificationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Tag = {
    type = "structure",
    members = {
        key = {
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
    },
}

M.CreateCustomActionTypeInput = {
    type = "structure",
    members = {
        category = {
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
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        settings = {
            type = "structure",
        },
        configurationProperties = {
            type = "list",
            member_type = "structure",
        },
        inputArtifactDetails = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        outputArtifactDetails = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateCustomActionTypeOutput = {
    type = "structure",
    members = {
        actionType = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.InvalidTagsException = {
    type = "structure",
    error = "client",
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

M.TooManyTagsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ExecutionMode = {
    QUEUED = "QUEUED",
    SUPERSEDED = "SUPERSEDED",
    PARALLEL = "PARALLEL",
}

M.PipelineType = {
    V1 = "V1",
    V2 = "V2",
}

M.StageRetryMode = {
    FAILED_ACTIONS = "FAILED_ACTIONS",
    ALL_ACTIONS = "ALL_ACTIONS",
}

M.RetryConfiguration = {
    type = "structure",
    members = {
        retryMode = {
            type = "string",
        },
    },
}

M.FailureConditions = {
    type = "structure",
    members = {
        result = {
            type = "string",
        },
        retryConfiguration = {
            type = "structure",
        },
        conditions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SuccessConditions = {
    type = "structure",
    members = {
        conditions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.StageDeclaration = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        blockers = {
            type = "list",
            member_type = "structure",
        },
        actions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        onFailure = {
            type = "structure",
        },
        onSuccess = {
            type = "structure",
        },
        beforeEntry = {
            type = "structure",
        },
    },
}

M.GitBranchFilterCriteria = {
    type = "structure",
    members = {
        includes = {
            type = "list",
            member_type = "string",
        },
        excludes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GitPullRequestEventType = {
    OPEN = "OPEN",
    UPDATED = "UPDATED",
    CLOSED = "CLOSED",
}

M.GitFilePathFilterCriteria = {
    type = "structure",
    members = {
        includes = {
            type = "list",
            member_type = "string",
        },
        excludes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GitPullRequestFilter = {
    type = "structure",
    members = {
        events = {
            type = "list",
            member_type = "string",
        },
        branches = {
            type = "structure",
        },
        filePaths = {
            type = "structure",
        },
    },
}

M.GitTagFilterCriteria = {
    type = "structure",
    members = {
        includes = {
            type = "list",
            member_type = "string",
        },
        excludes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GitPushFilter = {
    type = "structure",
    members = {
        tags = {
            type = "structure",
        },
        branches = {
            type = "structure",
        },
        filePaths = {
            type = "structure",
        },
    },
}

M.GitConfiguration = {
    type = "structure",
    members = {
        sourceActionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        push = {
            type = "list",
            member_type = "structure",
        },
        pullRequest = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PipelineTriggerProviderType = {
    CodeStarSourceConnection = "CodeStarSourceConnection",
}

M.PipelineTriggerDeclaration = {
    type = "structure",
    members = {
        providerType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        gitConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PipelineVariableDeclaration = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        defaultValue = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.PipelineDeclaration = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        artifactStore = {
            type = "structure",
        },
        artifactStores = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        stages = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        version = {
            type = "number",
        },
        executionMode = {
            type = "string",
        },
        pipelineType = {
            type = "string",
        },
        variables = {
            type = "list",
            member_type = "structure",
        },
        triggers = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreatePipelineInput = {
    type = "structure",
    members = {
        pipeline = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreatePipelineOutput = {
    type = "structure",
    members = {
        pipeline = {
            type = "structure",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.InvalidActionDeclarationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidBlockerDeclarationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidStageDeclarationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidStructureException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PipelineNameInUseException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteCustomActionTypeInput = {
    type = "structure",
    members = {
        category = {
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
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCustomActionTypeOutput = {
    type = "structure",
}

M.DeletePipelineInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePipelineOutput = {
    type = "structure",
}

M.DeleteWebhookInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteWebhookOutput = {
    type = "structure",
}

M.DeregisterWebhookWithThirdPartyInput = {
    type = "structure",
    members = {
        webhookName = {
            type = "string",
        },
    },
}

M.DeregisterWebhookWithThirdPartyOutput = {
    type = "structure",
}

M.WebhookNotFoundException = {
    type = "structure",
    error = "client",
}

M.StageTransitionType = {
    Inbound = "Inbound",
    Outbound = "Outbound",
}

M.DisableStageTransitionInput = {
    type = "structure",
    members = {
        pipelineName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        transitionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisableStageTransitionOutput = {
    type = "structure",
}

M.PipelineNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StageNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EnableStageTransitionInput = {
    type = "structure",
    members = {
        pipelineName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        transitionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EnableStageTransitionOutput = {
    type = "structure",
}

M.GetActionTypeInput = {
    type = "structure",
    members = {
        category = {
            type = "string",
            traits = {
                required = true,
            },
        },
        owner = {
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
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetActionTypeOutput = {
    type = "structure",
    members = {
        actionType = {
            type = "structure",
        },
    },
}

M.GetJobDetailsInput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StageContext = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
    },
}

M.PipelineContext = {
    type = "structure",
    members = {
        pipelineName = {
            type = "string",
        },
        stage = {
            type = "structure",
        },
        action = {
            type = "structure",
        },
        pipelineArn = {
            type = "string",
        },
        pipelineExecutionId = {
            type = "string",
        },
    },
}

M.JobData = {
    type = "structure",
    members = {
        actionTypeId = {
            type = "structure",
        },
        actionConfiguration = {
            type = "structure",
        },
        pipelineContext = {
            type = "structure",
        },
        inputArtifacts = {
            type = "list",
            member_type = "structure",
        },
        outputArtifacts = {
            type = "list",
            member_type = "structure",
        },
        artifactCredentials = {
            type = "structure",
        },
        continuationToken = {
            type = "string",
        },
        encryptionKey = {
            type = "structure",
        },
    },
}

M.JobDetails = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        data = {
            type = "structure",
        },
        accountId = {
            type = "string",
        },
    },
}

M.GetJobDetailsOutput = {
    type = "structure",
    members = {
        jobDetails = {
            type = "structure",
        },
    },
}

M.GetPipelineInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        version = {
            type = "number",
        },
    },
}

M.PipelineMetadata = {
    type = "structure",
    members = {
        pipelineArn = {
            type = "string",
        },
        created = {
            type = "timestamp",
        },
        updated = {
            type = "timestamp",
        },
        pollingDisabledAt = {
            type = "timestamp",
        },
    },
}

M.GetPipelineOutput = {
    type = "structure",
    members = {
        pipeline = {
            type = "structure",
        },
        metadata = {
            type = "structure",
        },
    },
}

M.PipelineVersionNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetPipelineExecutionInput = {
    type = "structure",
    members = {
        pipelineName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        pipelineExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExecutionType = {
    STANDARD = "STANDARD",
    ROLLBACK = "ROLLBACK",
}

M.PipelineRollbackMetadata = {
    type = "structure",
    members = {
        rollbackTargetPipelineExecutionId = {
            type = "string",
        },
    },
}

M.PipelineExecutionStatus = {
    Cancelled = "Cancelled",
    InProgress = "InProgress",
    Stopped = "Stopped",
    Stopping = "Stopping",
    Succeeded = "Succeeded",
    Superseded = "Superseded",
    Failed = "Failed",
}

M.TriggerType = {
    CreatePipeline = "CreatePipeline",
    StartPipelineExecution = "StartPipelineExecution",
    PollForSourceChanges = "PollForSourceChanges",
    Webhook = "Webhook",
    CloudWatchEvent = "CloudWatchEvent",
    PutActionRevision = "PutActionRevision",
    WebhookV2 = "WebhookV2",
    ManualRollback = "ManualRollback",
    AutomatedRollback = "AutomatedRollback",
}

M.ExecutionTrigger = {
    type = "structure",
    members = {
        triggerType = {
            type = "string",
        },
        triggerDetail = {
            type = "string",
        },
    },
}

M.ResolvedPipelineVariable = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        resolvedValue = {
            type = "string",
        },
    },
}

M.PipelineExecution = {
    type = "structure",
    members = {
        pipelineName = {
            type = "string",
        },
        pipelineVersion = {
            type = "number",
        },
        pipelineExecutionId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusSummary = {
            type = "string",
        },
        artifactRevisions = {
            type = "list",
            member_type = "structure",
        },
        variables = {
            type = "list",
            member_type = "structure",
        },
        trigger = {
            type = "structure",
        },
        executionMode = {
            type = "string",
        },
        executionType = {
            type = "string",
        },
        rollbackMetadata = {
            type = "structure",
        },
    },
}

M.GetPipelineExecutionOutput = {
    type = "structure",
    members = {
        pipelineExecution = {
            type = "structure",
        },
    },
}

M.PipelineExecutionNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetPipelineStateInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConditionExecutionStatus = {
    InProgress = "InProgress",
    Failed = "Failed",
    Errored = "Errored",
    Succeeded = "Succeeded",
    Cancelled = "Cancelled",
    Abandoned = "Abandoned",
    Overridden = "Overridden",
}

M.ConditionExecution = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        summary = {
            type = "string",
        },
        lastStatusChange = {
            type = "timestamp",
        },
    },
}

M.RuleRevision = {
    type = "structure",
    members = {
        revisionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revisionChangeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        created = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.RuleExecutionStatus = {
    InProgress = "InProgress",
    Abandoned = "Abandoned",
    Succeeded = "Succeeded",
    Failed = "Failed",
}

M.RuleExecution = {
    type = "structure",
    members = {
        ruleExecutionId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        summary = {
            type = "string",
        },
        lastStatusChange = {
            type = "timestamp",
        },
        token = {
            type = "string",
        },
        lastUpdatedBy = {
            type = "string",
        },
        externalExecutionId = {
            type = "string",
        },
        externalExecutionUrl = {
            type = "string",
        },
        errorDetails = {
            type = "structure",
        },
    },
}

M.RuleState = {
    type = "structure",
    members = {
        ruleName = {
            type = "string",
        },
        currentRevision = {
            type = "structure",
        },
        latestExecution = {
            type = "structure",
        },
        entityUrl = {
            type = "string",
        },
        revisionUrl = {
            type = "string",
        },
    },
}

M.ConditionState = {
    type = "structure",
    members = {
        latestExecution = {
            type = "structure",
        },
        ruleStates = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.StageConditionsExecution = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        summary = {
            type = "string",
        },
    },
}

M.StageConditionState = {
    type = "structure",
    members = {
        latestExecution = {
            type = "structure",
        },
        conditionStates = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.StageExecutionStatus = {
    Cancelled = "Cancelled",
    InProgress = "InProgress",
    Failed = "Failed",
    Stopped = "Stopped",
    Stopping = "Stopping",
    Succeeded = "Succeeded",
    Skipped = "Skipped",
}

M.StageExecution = {
    type = "structure",
    members = {
        pipelineExecutionId = {
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
        type = {
            type = "string",
        },
    },
}

M.TransitionState = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
        },
        lastChangedBy = {
            type = "string",
        },
        lastChangedAt = {
            type = "timestamp",
        },
        disabledReason = {
            type = "string",
        },
    },
}

M.RetryTrigger = {
    AutomatedStageRetry = "AutomatedStageRetry",
    ManualStageRetry = "ManualStageRetry",
}

M.RetryStageMetadata = {
    type = "structure",
    members = {
        autoStageRetryAttempt = {
            type = "number",
        },
        manualStageRetryAttempt = {
            type = "number",
        },
        latestRetryTrigger = {
            type = "string",
        },
    },
}

M.StageState = {
    type = "structure",
    members = {
        stageName = {
            type = "string",
        },
        inboundExecution = {
            type = "structure",
        },
        inboundExecutions = {
            type = "list",
            member_type = "structure",
        },
        inboundTransitionState = {
            type = "structure",
        },
        actionStates = {
            type = "list",
            member_type = "structure",
        },
        latestExecution = {
            type = "structure",
        },
        beforeEntryConditionState = {
            type = "structure",
        },
        onSuccessConditionState = {
            type = "structure",
        },
        onFailureConditionState = {
            type = "structure",
        },
        retryStageMetadata = {
            type = "structure",
        },
    },
}

M.GetPipelineStateOutput = {
    type = "structure",
    members = {
        pipelineName = {
            type = "string",
        },
        pipelineVersion = {
            type = "number",
        },
        stageStates = {
            type = "list",
            member_type = "structure",
        },
        created = {
            type = "timestamp",
        },
        updated = {
            type = "timestamp",
        },
    },
}

M.GetThirdPartyJobDetailsInput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThirdPartyJobData = {
    type = "structure",
    members = {
        actionTypeId = {
            type = "structure",
        },
        actionConfiguration = {
            type = "structure",
        },
        pipelineContext = {
            type = "structure",
        },
        inputArtifacts = {
            type = "list",
            member_type = "structure",
        },
        outputArtifacts = {
            type = "list",
            member_type = "structure",
        },
        artifactCredentials = {
            type = "structure",
        },
        continuationToken = {
            type = "string",
        },
        encryptionKey = {
            type = "structure",
        },
    },
}

M.ThirdPartyJobDetails = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        data = {
            type = "structure",
        },
        nonce = {
            type = "string",
        },
    },
}

M.GetThirdPartyJobDetailsOutput = {
    type = "structure",
    members = {
        jobDetails = {
            type = "structure",
        },
    },
}

M.InvalidJobException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidNextTokenException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListActionExecutionsInput = {
    type = "structure",
    members = {
        pipelineName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filter = {
            type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListActionExecutionsOutput = {
    type = "structure",
    members = {
        actionExecutionDetails = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListActionTypesInput = {
    type = "structure",
    members = {
        actionOwnerFilter = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        regionFilter = {
            type = "string",
        },
    },
}

M.ListActionTypesOutput = {
    type = "structure",
    members = {
        actionTypes = {
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

M.TargetFilterName = {
    TARGET_STATUS = "TARGET_STATUS",
}

M.TargetFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        values = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListDeployActionExecutionTargetsInput = {
    type = "structure",
    members = {
        pipelineName = {
            type = "string",
        },
        actionExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DeployTargetEventContext = {
    type = "structure",
    members = {
        ssmCommandId = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.DeployTargetEvent = {
    type = "structure",
    members = {
        name = {
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
        context = {
            type = "structure",
        },
    },
}

M.DeployActionExecutionTarget = {
    type = "structure",
    members = {
        targetId = {
            type = "string",
        },
        targetType = {
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
        events = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListDeployActionExecutionTargetsOutput = {
    type = "structure",
    members = {
        targets = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SucceededInStageFilter = {
    type = "structure",
    members = {
        stageName = {
            type = "string",
        },
    },
}

M.PipelineExecutionFilter = {
    type = "structure",
    members = {
        succeededInStage = {
            type = "structure",
        },
    },
}

M.ListPipelineExecutionsInput = {
    type = "structure",
    members = {
        pipelineName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        filter = {
            type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SourceRevision = {
    type = "structure",
    members = {
        actionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revisionId = {
            type = "string",
        },
        revisionSummary = {
            type = "string",
        },
        revisionUrl = {
            type = "string",
        },
    },
}

M.StopExecutionTrigger = {
    type = "structure",
    members = {
        reason = {
            type = "string",
        },
    },
}

M.PipelineExecutionSummary = {
    type = "structure",
    members = {
        pipelineExecutionId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusSummary = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        lastUpdateTime = {
            type = "timestamp",
        },
        sourceRevisions = {
            type = "list",
            member_type = "structure",
        },
        trigger = {
            type = "structure",
        },
        stopTrigger = {
            type = "structure",
        },
        executionMode = {
            type = "string",
        },
        executionType = {
            type = "string",
        },
        rollbackMetadata = {
            type = "structure",
        },
    },
}

M.ListPipelineExecutionsOutput = {
    type = "structure",
    members = {
        pipelineExecutionSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListPipelinesInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.PipelineSummary = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        version = {
            type = "number",
        },
        pipelineType = {
            type = "string",
        },
        executionMode = {
            type = "string",
        },
        created = {
            type = "timestamp",
        },
        updated = {
            type = "timestamp",
        },
    },
}

M.ListPipelinesOutput = {
    type = "structure",
    members = {
        pipelines = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RuleExecutionFilter = {
    type = "structure",
    members = {
        pipelineExecutionId = {
            type = "string",
        },
        latestInPipelineExecution = {
            type = "structure",
        },
    },
}

M.ListRuleExecutionsInput = {
    type = "structure",
    members = {
        pipelineName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filter = {
            type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RuleExecutionInput = {
    type = "structure",
    members = {
        ruleTypeId = {
            type = "structure",
        },
        configuration = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        resolvedConfiguration = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        roleArn = {
            type = "string",
        },
        region = {
            type = "string",
        },
        inputArtifacts = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RuleExecutionResult = {
    type = "structure",
    members = {
        externalExecutionId = {
            type = "string",
        },
        externalExecutionSummary = {
            type = "string",
        },
        externalExecutionUrl = {
            type = "string",
        },
        errorDetails = {
            type = "structure",
        },
    },
}

M.RuleExecutionOutput = {
    type = "structure",
    members = {
        executionResult = {
            type = "structure",
        },
    },
}

M.RuleExecutionDetail = {
    type = "structure",
    members = {
        pipelineExecutionId = {
            type = "string",
        },
        ruleExecutionId = {
            type = "string",
        },
        pipelineVersion = {
            type = "number",
        },
        stageName = {
            type = "string",
        },
        ruleName = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        lastUpdateTime = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        status = {
            type = "string",
        },
        input = {
            type = "structure",
        },
        output = {
            type = "structure",
        },
    },
}

M.ListRuleExecutionsOutput = {
    type = "structure",
    members = {
        ruleExecutionDetails = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListRuleTypesInput = {
    type = "structure",
    members = {
        ruleOwnerFilter = {
            type = "string",
        },
        regionFilter = {
            type = "string",
        },
    },
}

M.RuleConfigurationPropertyType = {
    String = "String",
    Number = "Number",
    Boolean = "Boolean",
}

M.RuleConfigurationProperty = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        required = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        key = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        secret = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        queryable = {
            type = "boolean",
        },
        description = {
            type = "string",
        },
        type = {
            type = "string",
        },
    },
}

M.RuleTypeSettings = {
    type = "structure",
    members = {
        thirdPartyConfigurationUrl = {
            type = "string",
        },
        entityUrlTemplate = {
            type = "string",
        },
        executionUrlTemplate = {
            type = "string",
        },
        revisionUrlTemplate = {
            type = "string",
        },
    },
}

M.RuleType = {
    type = "structure",
    members = {
        id = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        settings = {
            type = "structure",
        },
        ruleConfigurationProperties = {
            type = "list",
            member_type = "structure",
        },
        inputArtifactDetails = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListRuleTypesOutput = {
    type = "structure",
    members = {
        ruleTypes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.InvalidArnException = {
    type = "structure",
    error = "client",
    members = {
        message = {
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

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        tags = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
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

M.ListWebhooksInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.WebhookAuthenticationType = {
    GITHUB_HMAC = "GITHUB_HMAC",
    IP = "IP",
    UNAUTHENTICATED = "UNAUTHENTICATED",
}

M.WebhookAuthConfiguration = {
    type = "structure",
    members = {
        AllowedIPRange = {
            type = "string",
        },
        SecretToken = {
            type = "string",
        },
    },
}

M.WebhookFilterRule = {
    type = "structure",
    members = {
        jsonPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        matchEquals = {
            type = "string",
        },
    },
}

M.WebhookDefinition = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetPipeline = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetAction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filters = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        authentication = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authenticationConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListWebhookItem = {
    type = "structure",
    members = {
        definition = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        url = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorMessage = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
        lastTriggered = {
            type = "timestamp",
        },
        arn = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListWebhooksOutput = {
    type = "structure",
    members = {
        webhooks = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ConcurrentPipelineExecutionsLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ConditionNotOverridableException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
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
    },
}

M.NotLatestPipelineExecutionException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ConditionType = {
    BEFORE_ENTRY = "BEFORE_ENTRY",
    ON_SUCCESS = "ON_SUCCESS",
}

M.OverrideStageConditionInput = {
    type = "structure",
    members = {
        pipelineName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        pipelineExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        conditionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OverrideStageConditionOutput = {
    type = "structure",
}

M.PollForJobsInput = {
    type = "structure",
    members = {
        actionTypeId = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        maxBatchSize = {
            type = "number",
        },
        queryParam = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.Job = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        data = {
            type = "structure",
        },
        nonce = {
            type = "string",
        },
        accountId = {
            type = "string",
        },
    },
}

M.PollForJobsOutput = {
    type = "structure",
    members = {
        jobs = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PollForThirdPartyJobsInput = {
    type = "structure",
    members = {
        actionTypeId = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        maxBatchSize = {
            type = "number",
        },
    },
}

M.ThirdPartyJob = {
    type = "structure",
    members = {
        clientId = {
            type = "string",
        },
        jobId = {
            type = "string",
        },
    },
}

M.PollForThirdPartyJobsOutput = {
    type = "structure",
    members = {
        jobs = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PutActionRevisionInput = {
    type = "structure",
    members = {
        pipelineName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actionRevision = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutActionRevisionOutput = {
    type = "structure",
    members = {
        newRevision = {
            type = "boolean",
        },
        pipelineExecutionId = {
            type = "string",
        },
    },
}

M.InvalidApprovalTokenException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutApprovalResultInput = {
    type = "structure",
    members = {
        pipelineName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        result = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        token = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutApprovalResultOutput = {
    type = "structure",
    members = {
        approvedAt = {
            type = "timestamp",
        },
    },
}

M.InvalidJobStateException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.FailureType = {
    JobFailed = "JobFailed",
    ConfigurationError = "ConfigurationError",
    PermissionError = "PermissionError",
    RevisionOutOfSync = "RevisionOutOfSync",
    RevisionUnavailable = "RevisionUnavailable",
    SystemUnavailable = "SystemUnavailable",
}

M.FailureDetails = {
    type = "structure",
    members = {
        type = {
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
        externalExecutionId = {
            type = "string",
        },
    },
}

M.PutJobFailureResultInput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        failureDetails = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutJobFailureResultOutput = {
    type = "structure",
}

M.OutputVariablesSizeExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CurrentRevision = {
    type = "structure",
    members = {
        revision = {
            type = "string",
            traits = {
                required = true,
            },
        },
        changeIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        created = {
            type = "timestamp",
        },
        revisionSummary = {
            type = "string",
        },
    },
}

M.ExecutionDetails = {
    type = "structure",
    members = {
        summary = {
            type = "string",
        },
        externalExecutionId = {
            type = "string",
        },
        percentComplete = {
            type = "number",
        },
    },
}

M.PutJobSuccessResultInput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        currentRevision = {
            type = "structure",
        },
        continuationToken = {
            type = "string",
        },
        executionDetails = {
            type = "structure",
        },
        outputVariables = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.PutJobSuccessResultOutput = {
    type = "structure",
}

M.PutThirdPartyJobFailureResultInput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        failureDetails = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutThirdPartyJobFailureResultOutput = {
    type = "structure",
}

M.PutThirdPartyJobSuccessResultInput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        currentRevision = {
            type = "structure",
        },
        continuationToken = {
            type = "string",
        },
        executionDetails = {
            type = "structure",
        },
    },
}

M.PutThirdPartyJobSuccessResultOutput = {
    type = "structure",
}

M.InvalidWebhookAuthenticationParametersException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidWebhookFilterPatternException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutWebhookInput = {
    type = "structure",
    members = {
        webhook = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PutWebhookOutput = {
    type = "structure",
    members = {
        webhook = {
            type = "structure",
        },
    },
}

M.RegisterWebhookWithThirdPartyInput = {
    type = "structure",
    members = {
        webhookName = {
            type = "string",
        },
    },
}

M.RegisterWebhookWithThirdPartyOutput = {
    type = "structure",
}

M.RetryStageExecutionInput = {
    type = "structure",
    members = {
        pipelineName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        pipelineExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retryMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RetryStageExecutionOutput = {
    type = "structure",
    members = {
        pipelineExecutionId = {
            type = "string",
        },
    },
}

M.StageNotRetryableException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PipelineExecutionOutdatedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RollbackStageInput = {
    type = "structure",
    members = {
        pipelineName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetPipelineExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RollbackStageOutput = {
    type = "structure",
    members = {
        pipelineExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UnableToRollbackStageException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SourceRevisionType = {
    COMMIT_ID = "COMMIT_ID",
    IMAGE_DIGEST = "IMAGE_DIGEST",
    S3_OBJECT_VERSION_ID = "S3_OBJECT_VERSION_ID",
    S3_OBJECT_KEY = "S3_OBJECT_KEY",
}

M.SourceRevisionOverride = {
    type = "structure",
    members = {
        actionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revisionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revisionValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PipelineVariable = {
    type = "structure",
    members = {
        name = {
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
    },
}

M.StartPipelineExecutionInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        variables = {
            type = "list",
            member_type = "structure",
        },
        clientRequestToken = {
            type = "string",
        },
        sourceRevisions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.StartPipelineExecutionOutput = {
    type = "structure",
    members = {
        pipelineExecutionId = {
            type = "string",
        },
    },
}

M.DuplicatedStopRequestException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PipelineExecutionNotStoppableException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StopPipelineExecutionInput = {
    type = "structure",
    members = {
        pipelineName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        pipelineExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        abandon = {
            type = "boolean",
        },
        reason = {
            type = "string",
        },
    },
}

M.StopPipelineExecutionOutput = {
    type = "structure",
    members = {
        pipelineExecutionId = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
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
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tagKeys = {
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

M.RequestFailedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdateActionTypeInput = {
    type = "structure",
    members = {
        actionType = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateActionTypeOutput = {
    type = "structure",
}

M.UpdatePipelineInput = {
    type = "structure",
    members = {
        pipeline = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdatePipelineOutput = {
    type = "structure",
    members = {
        pipeline = {
            type = "structure",
        },
    },
}

return M
