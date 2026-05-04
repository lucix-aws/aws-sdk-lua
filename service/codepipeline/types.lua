local M = {}

M.AcknowledgeJobInput = {
    type = "structure",
    id = "AcknowledgeJobInput",
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
    id = "AcknowledgeJobOutput",
    members = {
        status = {
            type = "string",
        },
    },
}

M.InvalidNonceException = {
    type = "structure",
    id = "InvalidNonceException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.JobNotFoundException = {
    type = "structure",
    id = "JobNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
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
        },
    },
}

M.AcknowledgeThirdPartyJobInput = {
    type = "structure",
    id = "AcknowledgeThirdPartyJobInput",
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
    id = "AcknowledgeThirdPartyJobOutput",
    members = {
        status = {
            type = "string",
        },
    },
}

M.InvalidClientTokenException = {
    type = "structure",
    id = "InvalidClientTokenException",
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
    id = "ActionConfiguration",
    members = {
        configuration = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
    id = "ActionConfigurationProperty",
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
                default = false,
                required = true,
            },
        },
        key = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        secret = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        queryable = {
            type = "boolean",
            traits = {
                default = false,
            },
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
    id = "ActionContext",
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
    id = "ActionTypeId",
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
    id = "EnvironmentVariable",
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
    id = "InputArtifact",
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
    id = "OutputArtifact",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        files = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ActionDeclaration = {
    type = "structure",
    id = "ActionDeclaration",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actionTypeId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActionTypeId }),
        runOrder = {
            type = "integer",
        },
        configuration = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        commands = {
            type = "list",
            member = { type = "string" },
        },
        outputArtifacts = {
            type = "list",
            member = M.OutputArtifact,
        },
        inputArtifacts = {
            type = "list",
            member = M.InputArtifact,
        },
        outputVariables = {
            type = "list",
            member = { type = "string" },
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
            type = "integer",
        },
        environmentVariables = {
            type = "list",
            member = M.EnvironmentVariable,
        },
    },
}

M.ErrorDetails = {
    type = "structure",
    id = "ErrorDetails",
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
    id = "ActionExecution",
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
            type = "integer",
        },
        errorDetails = M.ErrorDetails,
        logStreamARN = {
            type = "string",
        },
    },
}

M.S3Location = {
    type = "structure",
    id = "S3Location",
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
    id = "ArtifactDetail",
    members = {
        name = {
            type = "string",
        },
        s3location = M.S3Location,
    },
}

M.ActionExecutionInput = {
    type = "structure",
    id = "ActionExecutionInput",
    members = {
        actionTypeId = M.ActionTypeId,
        configuration = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        resolvedConfiguration = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        roleArn = {
            type = "string",
        },
        region = {
            type = "string",
        },
        inputArtifacts = {
            type = "list",
            member = M.ArtifactDetail,
        },
        namespace = {
            type = "string",
        },
    },
}

M.ActionExecutionResult = {
    type = "structure",
    id = "ActionExecutionResult",
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
        errorDetails = M.ErrorDetails,
        logStreamARN = {
            type = "string",
        },
    },
}

M.ActionExecutionOutput = {
    type = "structure",
    id = "ActionExecutionOutput",
    members = {
        outputArtifacts = {
            type = "list",
            member = M.ArtifactDetail,
        },
        executionResult = M.ActionExecutionResult,
        outputVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ActionExecutionDetail = {
    type = "structure",
    id = "ActionExecutionDetail",
    members = {
        pipelineExecutionId = {
            type = "string",
        },
        actionExecutionId = {
            type = "string",
        },
        pipelineVersion = {
            type = "integer",
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
        input = M.ActionExecutionInput,
        output = M.ActionExecutionOutput,
    },
}

M.StartTimeRange = {
    Latest = "Latest",
    All = "All",
}

M.LatestInPipelineExecutionFilter = {
    type = "structure",
    id = "LatestInPipelineExecutionFilter",
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
    id = "ActionExecutionFilter",
    members = {
        pipelineExecutionId = {
            type = "string",
        },
        latestInPipelineExecution = M.LatestInPipelineExecutionFilter,
    },
}

M.ActionExecutionNotFoundException = {
    type = "structure",
    id = "ActionExecutionNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ActionNotFoundException = {
    type = "structure",
    id = "ActionNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ActionRevision = {
    type = "structure",
    id = "ActionRevision",
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
    id = "ActionState",
    members = {
        actionName = {
            type = "string",
        },
        currentRevision = M.ActionRevision,
        latestExecution = M.ActionExecution,
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
    id = "ArtifactDetails",
    members = {
        minimumCount = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        maximumCount = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.ActionTypeSettings = {
    type = "structure",
    id = "ActionTypeSettings",
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
    id = "ActionType",
    members = {
        id = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActionTypeId }),
        settings = M.ActionTypeSettings,
        actionConfigurationProperties = {
            type = "list",
            member = M.ActionConfigurationProperty,
        },
        inputArtifactDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ArtifactDetails }),
        outputArtifactDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ArtifactDetails }),
    },
}

M.ActionTypeArtifactDetails = {
    type = "structure",
    id = "ActionTypeArtifactDetails",
    members = {
        minimumCount = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        maximumCount = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.JobWorkerExecutorConfiguration = {
    type = "structure",
    id = "JobWorkerExecutorConfiguration",
    members = {
        pollingAccounts = {
            type = "list",
            member = { type = "string" },
        },
        pollingServicePrincipals = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.LambdaExecutorConfiguration = {
    type = "structure",
    id = "LambdaExecutorConfiguration",
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
    id = "ExecutorConfiguration",
    members = {
        lambdaExecutorConfiguration = M.LambdaExecutorConfiguration,
        jobWorkerExecutorConfiguration = M.JobWorkerExecutorConfiguration,
    },
}

M.ExecutorType = {
    JobWorker = "JobWorker",
    Lambda = "Lambda",
}

M.ActionTypeExecutor = {
    type = "structure",
    id = "ActionTypeExecutor",
    members = {
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExecutorConfiguration }),
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
            type = "integer",
        },
    },
}

M.ActionTypeIdentifier = {
    type = "structure",
    id = "ActionTypeIdentifier",
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
    id = "ActionTypePermissions",
    members = {
        allowedAccounts = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ActionTypeProperty = {
    type = "structure",
    id = "ActionTypeProperty",
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
                default = false,
                required = true,
            },
        },
        key = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        noEcho = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        queryable = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.ActionTypeUrls = {
    type = "structure",
    id = "ActionTypeUrls",
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
    id = "ActionTypeDeclaration",
    members = {
        description = {
            type = "string",
        },
        executor = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActionTypeExecutor }),
        id = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActionTypeIdentifier }),
        inputArtifactDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActionTypeArtifactDetails }),
        outputArtifactDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActionTypeArtifactDetails }),
        permissions = M.ActionTypePermissions,
        properties = {
            type = "list",
            member = M.ActionTypeProperty,
        },
        urls = M.ActionTypeUrls,
    },
}

M.ActionTypeNotFoundException = {
    type = "structure",
    id = "ActionTypeNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApprovalAlreadyCompletedException = {
    type = "structure",
    id = "ApprovalAlreadyCompletedException",
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
    id = "ApprovalResult",
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
    id = "S3ArtifactLocation",
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
    id = "ArtifactLocation",
    members = {
        type = {
            type = "string",
        },
        s3Location = M.S3ArtifactLocation,
    },
}

M.Artifact = {
    type = "structure",
    id = "Artifact",
    members = {
        name = {
            type = "string",
        },
        revision = {
            type = "string",
        },
        location = M.ArtifactLocation,
    },
}

M.ArtifactRevision = {
    type = "structure",
    id = "ArtifactRevision",
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
    id = "EncryptionKey",
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
    id = "ArtifactStore",
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
        encryptionKey = M.EncryptionKey,
    },
}

M.AWSSessionCredentials = {
    type = "structure",
    id = "AWSSessionCredentials",
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
    id = "RuleTypeId",
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
    id = "RuleDeclaration",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ruleTypeId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleTypeId }),
        configuration = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        commands = {
            type = "list",
            member = { type = "string" },
        },
        inputArtifacts = {
            type = "list",
            member = M.InputArtifact,
        },
        roleArn = {
            type = "string",
        },
        region = {
            type = "string",
        },
        timeoutInMinutes = {
            type = "integer",
        },
    },
}

M.Condition = {
    type = "structure",
    id = "Condition",
    members = {
        result = {
            type = "string",
        },
        rules = {
            type = "list",
            member = M.RuleDeclaration,
        },
    },
}

M.BeforeEntryConditions = {
    type = "structure",
    id = "BeforeEntryConditions",
    members = {
        conditions = {
            type = "list",
            member = M.Condition,
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
    id = "BlockerDeclaration",
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
    id = "ConcurrentModificationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
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
    id = "CreateCustomActionTypeInput",
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
        settings = M.ActionTypeSettings,
        configurationProperties = {
            type = "list",
            member = M.ActionConfigurationProperty,
        },
        inputArtifactDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ArtifactDetails }),
        outputArtifactDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ArtifactDetails }),
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateCustomActionTypeOutput = {
    type = "structure",
    id = "CreateCustomActionTypeOutput",
    members = {
        actionType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActionType }),
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.InvalidTagsException = {
    type = "structure",
    id = "InvalidTagsException",
    error = "client",
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

M.TooManyTagsException = {
    type = "structure",
    id = "TooManyTagsException",
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
    id = "RetryConfiguration",
    members = {
        retryMode = {
            type = "string",
        },
    },
}

M.FailureConditions = {
    type = "structure",
    id = "FailureConditions",
    members = {
        result = {
            type = "string",
        },
        retryConfiguration = M.RetryConfiguration,
        conditions = {
            type = "list",
            member = M.Condition,
        },
    },
}

M.SuccessConditions = {
    type = "structure",
    id = "SuccessConditions",
    members = {
        conditions = {
            type = "list",
            member = M.Condition,
            traits = {
                required = true,
            },
        },
    },
}

M.StageDeclaration = {
    type = "structure",
    id = "StageDeclaration",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        blockers = {
            type = "list",
            member = M.BlockerDeclaration,
        },
        actions = {
            type = "list",
            member = M.ActionDeclaration,
            traits = {
                required = true,
            },
        },
        onFailure = M.FailureConditions,
        onSuccess = M.SuccessConditions,
        beforeEntry = M.BeforeEntryConditions,
    },
}

M.GitBranchFilterCriteria = {
    type = "structure",
    id = "GitBranchFilterCriteria",
    members = {
        includes = {
            type = "list",
            member = { type = "string" },
        },
        excludes = {
            type = "list",
            member = { type = "string" },
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
    id = "GitFilePathFilterCriteria",
    members = {
        includes = {
            type = "list",
            member = { type = "string" },
        },
        excludes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GitPullRequestFilter = {
    type = "structure",
    id = "GitPullRequestFilter",
    members = {
        events = {
            type = "list",
            member = { type = "string" },
        },
        branches = M.GitBranchFilterCriteria,
        filePaths = M.GitFilePathFilterCriteria,
    },
}

M.GitTagFilterCriteria = {
    type = "structure",
    id = "GitTagFilterCriteria",
    members = {
        includes = {
            type = "list",
            member = { type = "string" },
        },
        excludes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GitPushFilter = {
    type = "structure",
    id = "GitPushFilter",
    members = {
        tags = M.GitTagFilterCriteria,
        branches = M.GitBranchFilterCriteria,
        filePaths = M.GitFilePathFilterCriteria,
    },
}

M.GitConfiguration = {
    type = "structure",
    id = "GitConfiguration",
    members = {
        sourceActionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        push = {
            type = "list",
            member = M.GitPushFilter,
        },
        pullRequest = {
            type = "list",
            member = M.GitPullRequestFilter,
        },
    },
}

M.PipelineTriggerProviderType = {
    CodeStarSourceConnection = "CodeStarSourceConnection",
}

M.PipelineTriggerDeclaration = {
    type = "structure",
    id = "PipelineTriggerDeclaration",
    members = {
        providerType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        gitConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GitConfiguration }),
    },
}

M.PipelineVariableDeclaration = {
    type = "structure",
    id = "PipelineVariableDeclaration",
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
    id = "PipelineDeclaration",
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
        artifactStore = M.ArtifactStore,
        artifactStores = {
            type = "map",
            key = { type = "string" },
            value = M.ArtifactStore,
        },
        stages = {
            type = "list",
            member = M.StageDeclaration,
            traits = {
                required = true,
            },
        },
        version = {
            type = "integer",
        },
        executionMode = {
            type = "string",
        },
        pipelineType = {
            type = "string",
        },
        variables = {
            type = "list",
            member = M.PipelineVariableDeclaration,
        },
        triggers = {
            type = "list",
            member = M.PipelineTriggerDeclaration,
        },
    },
}

M.CreatePipelineInput = {
    type = "structure",
    id = "CreatePipelineInput",
    members = {
        pipeline = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PipelineDeclaration }),
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreatePipelineOutput = {
    type = "structure",
    id = "CreatePipelineOutput",
    members = {
        pipeline = M.PipelineDeclaration,
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.InvalidActionDeclarationException = {
    type = "structure",
    id = "InvalidActionDeclarationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidBlockerDeclarationException = {
    type = "structure",
    id = "InvalidBlockerDeclarationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidStageDeclarationException = {
    type = "structure",
    id = "InvalidStageDeclarationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidStructureException = {
    type = "structure",
    id = "InvalidStructureException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PipelineNameInUseException = {
    type = "structure",
    id = "PipelineNameInUseException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteCustomActionTypeInput = {
    type = "structure",
    id = "DeleteCustomActionTypeInput",
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
    id = "DeleteCustomActionTypeOutput",
}

M.DeletePipelineInput = {
    type = "structure",
    id = "DeletePipelineInput",
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
    id = "DeletePipelineOutput",
}

M.DeleteWebhookInput = {
    type = "structure",
    id = "DeleteWebhookInput",
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
    id = "DeleteWebhookOutput",
}

M.DeregisterWebhookWithThirdPartyInput = {
    type = "structure",
    id = "DeregisterWebhookWithThirdPartyInput",
    members = {
        webhookName = {
            type = "string",
        },
    },
}

M.DeregisterWebhookWithThirdPartyOutput = {
    type = "structure",
    id = "DeregisterWebhookWithThirdPartyOutput",
}

M.WebhookNotFoundException = {
    type = "structure",
    id = "WebhookNotFoundException",
    error = "client",
}

M.StageTransitionType = {
    Inbound = "Inbound",
    Outbound = "Outbound",
}

M.DisableStageTransitionInput = {
    type = "structure",
    id = "DisableStageTransitionInput",
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
    id = "DisableStageTransitionOutput",
}

M.PipelineNotFoundException = {
    type = "structure",
    id = "PipelineNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StageNotFoundException = {
    type = "structure",
    id = "StageNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EnableStageTransitionInput = {
    type = "structure",
    id = "EnableStageTransitionInput",
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
    id = "EnableStageTransitionOutput",
}

M.GetActionTypeInput = {
    type = "structure",
    id = "GetActionTypeInput",
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
    id = "GetActionTypeOutput",
    members = {
        actionType = M.ActionTypeDeclaration,
    },
}

M.GetJobDetailsInput = {
    type = "structure",
    id = "GetJobDetailsInput",
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
    id = "StageContext",
    members = {
        name = {
            type = "string",
        },
    },
}

M.PipelineContext = {
    type = "structure",
    id = "PipelineContext",
    members = {
        pipelineName = {
            type = "string",
        },
        stage = M.StageContext,
        action = M.ActionContext,
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
    id = "JobData",
    members = {
        actionTypeId = M.ActionTypeId,
        actionConfiguration = M.ActionConfiguration,
        pipelineContext = M.PipelineContext,
        inputArtifacts = {
            type = "list",
            member = M.Artifact,
        },
        outputArtifacts = {
            type = "list",
            member = M.Artifact,
        },
        artifactCredentials = M.AWSSessionCredentials,
        continuationToken = {
            type = "string",
        },
        encryptionKey = M.EncryptionKey,
    },
}

M.JobDetails = {
    type = "structure",
    id = "JobDetails",
    members = {
        id = {
            type = "string",
        },
        data = M.JobData,
        accountId = {
            type = "string",
        },
    },
}

M.GetJobDetailsOutput = {
    type = "structure",
    id = "GetJobDetailsOutput",
    members = {
        jobDetails = M.JobDetails,
    },
}

M.GetPipelineInput = {
    type = "structure",
    id = "GetPipelineInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        version = {
            type = "integer",
        },
    },
}

M.PipelineMetadata = {
    type = "structure",
    id = "PipelineMetadata",
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
    id = "GetPipelineOutput",
    members = {
        pipeline = M.PipelineDeclaration,
        metadata = M.PipelineMetadata,
    },
}

M.PipelineVersionNotFoundException = {
    type = "structure",
    id = "PipelineVersionNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetPipelineExecutionInput = {
    type = "structure",
    id = "GetPipelineExecutionInput",
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
    id = "PipelineRollbackMetadata",
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
    id = "ExecutionTrigger",
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
    id = "ResolvedPipelineVariable",
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
    id = "PipelineExecution",
    members = {
        pipelineName = {
            type = "string",
        },
        pipelineVersion = {
            type = "integer",
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
            member = M.ArtifactRevision,
        },
        variables = {
            type = "list",
            member = M.ResolvedPipelineVariable,
        },
        trigger = M.ExecutionTrigger,
        executionMode = {
            type = "string",
        },
        executionType = {
            type = "string",
        },
        rollbackMetadata = M.PipelineRollbackMetadata,
    },
}

M.GetPipelineExecutionOutput = {
    type = "structure",
    id = "GetPipelineExecutionOutput",
    members = {
        pipelineExecution = M.PipelineExecution,
    },
}

M.PipelineExecutionNotFoundException = {
    type = "structure",
    id = "PipelineExecutionNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetPipelineStateInput = {
    type = "structure",
    id = "GetPipelineStateInput",
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
    id = "ConditionExecution",
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
    id = "RuleRevision",
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
    id = "RuleExecution",
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
        errorDetails = M.ErrorDetails,
    },
}

M.RuleState = {
    type = "structure",
    id = "RuleState",
    members = {
        ruleName = {
            type = "string",
        },
        currentRevision = M.RuleRevision,
        latestExecution = M.RuleExecution,
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
    id = "ConditionState",
    members = {
        latestExecution = M.ConditionExecution,
        ruleStates = {
            type = "list",
            member = M.RuleState,
        },
    },
}

M.StageConditionsExecution = {
    type = "structure",
    id = "StageConditionsExecution",
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
    id = "StageConditionState",
    members = {
        latestExecution = M.StageConditionsExecution,
        conditionStates = {
            type = "list",
            member = M.ConditionState,
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
    id = "StageExecution",
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
    id = "TransitionState",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
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
    id = "RetryStageMetadata",
    members = {
        autoStageRetryAttempt = {
            type = "integer",
        },
        manualStageRetryAttempt = {
            type = "integer",
        },
        latestRetryTrigger = {
            type = "string",
        },
    },
}

M.StageState = {
    type = "structure",
    id = "StageState",
    members = {
        stageName = {
            type = "string",
        },
        inboundExecution = M.StageExecution,
        inboundExecutions = {
            type = "list",
            member = M.StageExecution,
        },
        inboundTransitionState = M.TransitionState,
        actionStates = {
            type = "list",
            member = M.ActionState,
        },
        latestExecution = M.StageExecution,
        beforeEntryConditionState = M.StageConditionState,
        onSuccessConditionState = M.StageConditionState,
        onFailureConditionState = M.StageConditionState,
        retryStageMetadata = M.RetryStageMetadata,
    },
}

M.GetPipelineStateOutput = {
    type = "structure",
    id = "GetPipelineStateOutput",
    members = {
        pipelineName = {
            type = "string",
        },
        pipelineVersion = {
            type = "integer",
        },
        stageStates = {
            type = "list",
            member = M.StageState,
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
    id = "GetThirdPartyJobDetailsInput",
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
    id = "ThirdPartyJobData",
    members = {
        actionTypeId = M.ActionTypeId,
        actionConfiguration = M.ActionConfiguration,
        pipelineContext = M.PipelineContext,
        inputArtifacts = {
            type = "list",
            member = M.Artifact,
        },
        outputArtifacts = {
            type = "list",
            member = M.Artifact,
        },
        artifactCredentials = M.AWSSessionCredentials,
        continuationToken = {
            type = "string",
        },
        encryptionKey = M.EncryptionKey,
    },
}

M.ThirdPartyJobDetails = {
    type = "structure",
    id = "ThirdPartyJobDetails",
    members = {
        id = {
            type = "string",
        },
        data = M.ThirdPartyJobData,
        nonce = {
            type = "string",
        },
    },
}

M.GetThirdPartyJobDetailsOutput = {
    type = "structure",
    id = "GetThirdPartyJobDetailsOutput",
    members = {
        jobDetails = M.ThirdPartyJobDetails,
    },
}

M.InvalidJobException = {
    type = "structure",
    id = "InvalidJobException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidNextTokenException = {
    type = "structure",
    id = "InvalidNextTokenException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListActionExecutionsInput = {
    type = "structure",
    id = "ListActionExecutionsInput",
    members = {
        pipelineName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filter = M.ActionExecutionFilter,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListActionExecutionsOutput = {
    type = "structure",
    id = "ListActionExecutionsOutput",
    members = {
        actionExecutionDetails = {
            type = "list",
            member = M.ActionExecutionDetail,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListActionTypesInput = {
    type = "structure",
    id = "ListActionTypesInput",
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
    id = "ListActionTypesOutput",
    members = {
        actionTypes = {
            type = "list",
            member = M.ActionType,
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
    id = "TargetFilter",
    members = {
        name = {
            type = "string",
        },
        values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListDeployActionExecutionTargetsInput = {
    type = "structure",
    id = "ListDeployActionExecutionTargetsInput",
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
            member = M.TargetFilter,
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DeployTargetEventContext = {
    type = "structure",
    id = "DeployTargetEventContext",
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
    id = "DeployTargetEvent",
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
        context = M.DeployTargetEventContext,
    },
}

M.DeployActionExecutionTarget = {
    type = "structure",
    id = "DeployActionExecutionTarget",
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
            member = M.DeployTargetEvent,
        },
    },
}

M.ListDeployActionExecutionTargetsOutput = {
    type = "structure",
    id = "ListDeployActionExecutionTargetsOutput",
    members = {
        targets = {
            type = "list",
            member = M.DeployActionExecutionTarget,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SucceededInStageFilter = {
    type = "structure",
    id = "SucceededInStageFilter",
    members = {
        stageName = {
            type = "string",
        },
    },
}

M.PipelineExecutionFilter = {
    type = "structure",
    id = "PipelineExecutionFilter",
    members = {
        succeededInStage = M.SucceededInStageFilter,
    },
}

M.ListPipelineExecutionsInput = {
    type = "structure",
    id = "ListPipelineExecutionsInput",
    members = {
        pipelineName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
        },
        filter = M.PipelineExecutionFilter,
        nextToken = {
            type = "string",
        },
    },
}

M.SourceRevision = {
    type = "structure",
    id = "SourceRevision",
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
    id = "StopExecutionTrigger",
    members = {
        reason = {
            type = "string",
        },
    },
}

M.PipelineExecutionSummary = {
    type = "structure",
    id = "PipelineExecutionSummary",
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
            member = M.SourceRevision,
        },
        trigger = M.ExecutionTrigger,
        stopTrigger = M.StopExecutionTrigger,
        executionMode = {
            type = "string",
        },
        executionType = {
            type = "string",
        },
        rollbackMetadata = M.PipelineRollbackMetadata,
    },
}

M.ListPipelineExecutionsOutput = {
    type = "structure",
    id = "ListPipelineExecutionsOutput",
    members = {
        pipelineExecutionSummaries = {
            type = "list",
            member = M.PipelineExecutionSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListPipelinesInput = {
    type = "structure",
    id = "ListPipelinesInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.PipelineSummary = {
    type = "structure",
    id = "PipelineSummary",
    members = {
        name = {
            type = "string",
        },
        version = {
            type = "integer",
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
    id = "ListPipelinesOutput",
    members = {
        pipelines = {
            type = "list",
            member = M.PipelineSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RuleExecutionFilter = {
    type = "structure",
    id = "RuleExecutionFilter",
    members = {
        pipelineExecutionId = {
            type = "string",
        },
        latestInPipelineExecution = M.LatestInPipelineExecutionFilter,
    },
}

M.ListRuleExecutionsInput = {
    type = "structure",
    id = "ListRuleExecutionsInput",
    members = {
        pipelineName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filter = M.RuleExecutionFilter,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RuleExecutionInput = {
    type = "structure",
    id = "RuleExecutionInput",
    members = {
        ruleTypeId = M.RuleTypeId,
        configuration = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        resolvedConfiguration = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        roleArn = {
            type = "string",
        },
        region = {
            type = "string",
        },
        inputArtifacts = {
            type = "list",
            member = M.ArtifactDetail,
        },
    },
}

M.RuleExecutionResult = {
    type = "structure",
    id = "RuleExecutionResult",
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
        errorDetails = M.ErrorDetails,
    },
}

M.RuleExecutionOutput = {
    type = "structure",
    id = "RuleExecutionOutput",
    members = {
        executionResult = M.RuleExecutionResult,
    },
}

M.RuleExecutionDetail = {
    type = "structure",
    id = "RuleExecutionDetail",
    members = {
        pipelineExecutionId = {
            type = "string",
        },
        ruleExecutionId = {
            type = "string",
        },
        pipelineVersion = {
            type = "integer",
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
        input = M.RuleExecutionInput,
        output = M.RuleExecutionOutput,
    },
}

M.ListRuleExecutionsOutput = {
    type = "structure",
    id = "ListRuleExecutionsOutput",
    members = {
        ruleExecutionDetails = {
            type = "list",
            member = M.RuleExecutionDetail,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListRuleTypesInput = {
    type = "structure",
    id = "ListRuleTypesInput",
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
    id = "RuleConfigurationProperty",
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
                default = false,
                required = true,
            },
        },
        key = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        secret = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        queryable = {
            type = "boolean",
            traits = {
                default = false,
            },
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
    id = "RuleTypeSettings",
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
    id = "RuleType",
    members = {
        id = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleTypeId }),
        settings = M.RuleTypeSettings,
        ruleConfigurationProperties = {
            type = "list",
            member = M.RuleConfigurationProperty,
        },
        inputArtifactDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ArtifactDetails }),
    },
}

M.ListRuleTypesOutput = {
    type = "structure",
    id = "ListRuleTypesOutput",
    members = {
        ruleTypes = {
            type = "list",
            member = M.RuleType,
            traits = {
                required = true,
            },
        },
    },
}

M.InvalidArnException = {
    type = "structure",
    id = "InvalidArnException",
    error = "client",
    members = {
        message = {
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

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        tags = {
            type = "list",
            member = M.Tag,
        },
        nextToken = {
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

M.ListWebhooksInput = {
    type = "structure",
    id = "ListWebhooksInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
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
    id = "WebhookAuthConfiguration",
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
    id = "WebhookFilterRule",
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
    id = "WebhookDefinition",
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
            member = M.WebhookFilterRule,
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
        authenticationConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WebhookAuthConfiguration }),
    },
}

M.ListWebhookItem = {
    type = "structure",
    id = "ListWebhookItem",
    members = {
        definition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WebhookDefinition }),
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
            member = M.Tag,
        },
    },
}

M.ListWebhooksOutput = {
    type = "structure",
    id = "ListWebhooksOutput",
    members = {
        webhooks = {
            type = "list",
            member = M.ListWebhookItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ConcurrentPipelineExecutionsLimitExceededException = {
    type = "structure",
    id = "ConcurrentPipelineExecutionsLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ConditionNotOverridableException = {
    type = "structure",
    id = "ConditionNotOverridableException",
    error = "client",
    members = {
        message = {
            type = "string",
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
    },
}

M.NotLatestPipelineExecutionException = {
    type = "structure",
    id = "NotLatestPipelineExecutionException",
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
    id = "OverrideStageConditionInput",
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
    id = "OverrideStageConditionOutput",
}

M.PollForJobsInput = {
    type = "structure",
    id = "PollForJobsInput",
    members = {
        actionTypeId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActionTypeId }),
        maxBatchSize = {
            type = "integer",
        },
        queryParam = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.Job = {
    type = "structure",
    id = "Job",
    members = {
        id = {
            type = "string",
        },
        data = M.JobData,
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
    id = "PollForJobsOutput",
    members = {
        jobs = {
            type = "list",
            member = M.Job,
        },
    },
}

M.PollForThirdPartyJobsInput = {
    type = "structure",
    id = "PollForThirdPartyJobsInput",
    members = {
        actionTypeId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActionTypeId }),
        maxBatchSize = {
            type = "integer",
        },
    },
}

M.ThirdPartyJob = {
    type = "structure",
    id = "ThirdPartyJob",
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
    id = "PollForThirdPartyJobsOutput",
    members = {
        jobs = {
            type = "list",
            member = M.ThirdPartyJob,
        },
    },
}

M.PutActionRevisionInput = {
    type = "structure",
    id = "PutActionRevisionInput",
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
        actionRevision = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActionRevision }),
    },
}

M.PutActionRevisionOutput = {
    type = "structure",
    id = "PutActionRevisionOutput",
    members = {
        newRevision = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        pipelineExecutionId = {
            type = "string",
        },
    },
}

M.InvalidApprovalTokenException = {
    type = "structure",
    id = "InvalidApprovalTokenException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutApprovalResultInput = {
    type = "structure",
    id = "PutApprovalResultInput",
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
        result = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ApprovalResult }),
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
    id = "PutApprovalResultOutput",
    members = {
        approvedAt = {
            type = "timestamp",
        },
    },
}

M.InvalidJobStateException = {
    type = "structure",
    id = "InvalidJobStateException",
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
    id = "FailureDetails",
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
    id = "PutJobFailureResultInput",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        failureDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FailureDetails }),
    },
}

M.PutJobFailureResultOutput = {
    type = "structure",
    id = "PutJobFailureResultOutput",
}

M.OutputVariablesSizeExceededException = {
    type = "structure",
    id = "OutputVariablesSizeExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CurrentRevision = {
    type = "structure",
    id = "CurrentRevision",
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
    id = "ExecutionDetails",
    members = {
        summary = {
            type = "string",
        },
        externalExecutionId = {
            type = "string",
        },
        percentComplete = {
            type = "integer",
        },
    },
}

M.PutJobSuccessResultInput = {
    type = "structure",
    id = "PutJobSuccessResultInput",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        currentRevision = M.CurrentRevision,
        continuationToken = {
            type = "string",
        },
        executionDetails = M.ExecutionDetails,
        outputVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.PutJobSuccessResultOutput = {
    type = "structure",
    id = "PutJobSuccessResultOutput",
}

M.PutThirdPartyJobFailureResultInput = {
    type = "structure",
    id = "PutThirdPartyJobFailureResultInput",
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
        failureDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FailureDetails }),
    },
}

M.PutThirdPartyJobFailureResultOutput = {
    type = "structure",
    id = "PutThirdPartyJobFailureResultOutput",
}

M.PutThirdPartyJobSuccessResultInput = {
    type = "structure",
    id = "PutThirdPartyJobSuccessResultInput",
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
        currentRevision = M.CurrentRevision,
        continuationToken = {
            type = "string",
        },
        executionDetails = M.ExecutionDetails,
    },
}

M.PutThirdPartyJobSuccessResultOutput = {
    type = "structure",
    id = "PutThirdPartyJobSuccessResultOutput",
}

M.InvalidWebhookAuthenticationParametersException = {
    type = "structure",
    id = "InvalidWebhookAuthenticationParametersException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidWebhookFilterPatternException = {
    type = "structure",
    id = "InvalidWebhookFilterPatternException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutWebhookInput = {
    type = "structure",
    id = "PutWebhookInput",
    members = {
        webhook = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WebhookDefinition }),
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutWebhookOutput = {
    type = "structure",
    id = "PutWebhookOutput",
    members = {
        webhook = M.ListWebhookItem,
    },
}

M.RegisterWebhookWithThirdPartyInput = {
    type = "structure",
    id = "RegisterWebhookWithThirdPartyInput",
    members = {
        webhookName = {
            type = "string",
        },
    },
}

M.RegisterWebhookWithThirdPartyOutput = {
    type = "structure",
    id = "RegisterWebhookWithThirdPartyOutput",
}

M.RetryStageExecutionInput = {
    type = "structure",
    id = "RetryStageExecutionInput",
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
    id = "RetryStageExecutionOutput",
    members = {
        pipelineExecutionId = {
            type = "string",
        },
    },
}

M.StageNotRetryableException = {
    type = "structure",
    id = "StageNotRetryableException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PipelineExecutionOutdatedException = {
    type = "structure",
    id = "PipelineExecutionOutdatedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RollbackStageInput = {
    type = "structure",
    id = "RollbackStageInput",
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
    id = "RollbackStageOutput",
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
    id = "UnableToRollbackStageException",
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
    id = "SourceRevisionOverride",
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
    id = "PipelineVariable",
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
    id = "StartPipelineExecutionInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        variables = {
            type = "list",
            member = M.PipelineVariable,
        },
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        sourceRevisions = {
            type = "list",
            member = M.SourceRevisionOverride,
        },
    },
}

M.StartPipelineExecutionOutput = {
    type = "structure",
    id = "StartPipelineExecutionOutput",
    members = {
        pipelineExecutionId = {
            type = "string",
        },
    },
}

M.DuplicatedStopRequestException = {
    type = "structure",
    id = "DuplicatedStopRequestException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PipelineExecutionNotStoppableException = {
    type = "structure",
    id = "PipelineExecutionNotStoppableException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StopPipelineExecutionInput = {
    type = "structure",
    id = "StopPipelineExecutionInput",
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
            traits = {
                default = false,
            },
        },
        reason = {
            type = "string",
        },
    },
}

M.StopPipelineExecutionOutput = {
    type = "structure",
    id = "StopPipelineExecutionOutput",
    members = {
        pipelineExecutionId = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
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
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tagKeys = {
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

M.RequestFailedException = {
    type = "structure",
    id = "RequestFailedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdateActionTypeInput = {
    type = "structure",
    id = "UpdateActionTypeInput",
    members = {
        actionType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActionTypeDeclaration }),
    },
}

M.UpdateActionTypeOutput = {
    type = "structure",
    id = "UpdateActionTypeOutput",
}

M.UpdatePipelineInput = {
    type = "structure",
    id = "UpdatePipelineInput",
    members = {
        pipeline = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PipelineDeclaration }),
    },
}

M.UpdatePipelineOutput = {
    type = "structure",
    id = "UpdatePipelineOutput",
    members = {
        pipeline = M.PipelineDeclaration,
    },
}

return M
