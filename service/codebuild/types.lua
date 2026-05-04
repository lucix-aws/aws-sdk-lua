local M = {}

M.AccountLimitExceededException = {
    type = "structure",
    id = "AccountLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AccountSuspendedException = {
    type = "structure",
    id = "AccountSuspendedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ArtifactNamespace = {
    NONE = "NONE",
    BUILD_ID = "BUILD_ID",
}

M.ArtifactPackaging = {
    NONE = "NONE",
    ZIP = "ZIP",
}

M.ArtifactsType = {
    CODEPIPELINE = "CODEPIPELINE",
    S3 = "S3",
    NO_ARTIFACTS = "NO_ARTIFACTS",
}

M.AuthType = {
    OAUTH = "OAUTH",
    BASIC_AUTH = "BASIC_AUTH",
    PERSONAL_ACCESS_TOKEN = "PERSONAL_ACCESS_TOKEN",
    CODECONNECTIONS = "CODECONNECTIONS",
    SECRETS_MANAGER = "SECRETS_MANAGER",
}

M.AutoRetryConfig = {
    type = "structure",
    id = "AutoRetryConfig",
    members = {
        autoRetryLimit = {
            type = "integer",
        },
        autoRetryNumber = {
            type = "integer",
        },
        nextAutoRetry = {
            type = "string",
        },
        previousAutoRetry = {
            type = "string",
        },
    },
}

M.BatchDeleteBuildsInput = {
    type = "structure",
    id = "BatchDeleteBuildsInput",
    members = {
        ids = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BuildNotDeleted = {
    type = "structure",
    id = "BuildNotDeleted",
    members = {
        id = {
            type = "string",
        },
        statusCode = {
            type = "string",
        },
    },
}

M.BatchDeleteBuildsOutput = {
    type = "structure",
    id = "BatchDeleteBuildsOutput",
    members = {
        buildsDeleted = {
            type = "list",
            member = { type = "string" },
        },
        buildsNotDeleted = {
            type = "list",
            member = M.BuildNotDeleted,
        },
    },
}

M.InvalidInputException = {
    type = "structure",
    id = "InvalidInputException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BatchGetBuildBatchesInput = {
    type = "structure",
    id = "BatchGetBuildBatchesInput",
    members = {
        ids = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BucketOwnerAccess = {
    NONE = "NONE",
    READ_ONLY = "READ_ONLY",
    FULL = "FULL",
}

M.BuildArtifacts = {
    type = "structure",
    id = "BuildArtifacts",
    members = {
        location = {
            type = "string",
        },
        sha256sum = {
            type = "string",
        },
        md5sum = {
            type = "string",
        },
        overrideArtifactName = {
            type = "boolean",
        },
        encryptionDisabled = {
            type = "boolean",
        },
        artifactIdentifier = {
            type = "string",
        },
        bucketOwnerAccess = {
            type = "string",
        },
    },
}

M.BatchReportModeType = {
    REPORT_INDIVIDUAL_BUILDS = "REPORT_INDIVIDUAL_BUILDS",
    REPORT_AGGREGATED_BATCH = "REPORT_AGGREGATED_BATCH",
}

M.BatchRestrictions = {
    type = "structure",
    id = "BatchRestrictions",
    members = {
        maximumBuildsAllowed = {
            type = "integer",
        },
        computeTypesAllowed = {
            type = "list",
            member = { type = "string" },
        },
        fleetsAllowed = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ProjectBuildBatchConfig = {
    type = "structure",
    id = "ProjectBuildBatchConfig",
    members = {
        serviceRole = {
            type = "string",
        },
        combineArtifacts = {
            type = "boolean",
        },
        restrictions = M.BatchRestrictions,
        timeoutInMins = {
            type = "integer",
        },
        batchReportMode = {
            type = "string",
        },
    },
}

M.StatusType = {
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    FAULT = "FAULT",
    TIMED_OUT = "TIMED_OUT",
    IN_PROGRESS = "IN_PROGRESS",
    STOPPED = "STOPPED",
}

M.ResolvedArtifact = {
    type = "structure",
    id = "ResolvedArtifact",
    members = {
        type = {
            type = "string",
        },
        location = {
            type = "string",
        },
        identifier = {
            type = "string",
        },
    },
}

M.BuildSummary = {
    type = "structure",
    id = "BuildSummary",
    members = {
        arn = {
            type = "string",
        },
        requestedOn = {
            type = "timestamp",
        },
        buildStatus = {
            type = "string",
        },
        primaryArtifact = M.ResolvedArtifact,
        secondaryArtifacts = {
            type = "list",
            member = M.ResolvedArtifact,
        },
    },
}

M.BuildGroup = {
    type = "structure",
    id = "BuildGroup",
    members = {
        identifier = {
            type = "string",
        },
        dependsOn = {
            type = "list",
            member = { type = "string" },
        },
        ignoreFailure = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        currentBuildSummary = M.BuildSummary,
        priorBuildSummaryList = {
            type = "list",
            member = M.BuildSummary,
        },
    },
}

M.CacheMode = {
    LOCAL_DOCKER_LAYER_CACHE = "LOCAL_DOCKER_LAYER_CACHE",
    LOCAL_SOURCE_CACHE = "LOCAL_SOURCE_CACHE",
    LOCAL_CUSTOM_CACHE = "LOCAL_CUSTOM_CACHE",
}

M.CacheType = {
    NO_CACHE = "NO_CACHE",
    S3 = "S3",
    LOCAL = "LOCAL",
}

M.ProjectCache = {
    type = "structure",
    id = "ProjectCache",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        location = {
            type = "string",
        },
        modes = {
            type = "list",
            member = { type = "string" },
        },
        cacheNamespace = {
            type = "string",
        },
    },
}

M.MachineType = {
    GENERAL = "GENERAL",
    NVME = "NVME",
}

M.ComputeConfiguration = {
    type = "structure",
    id = "ComputeConfiguration",
    members = {
        vCpu = {
            type = "long",
        },
        memory = {
            type = "long",
        },
        disk = {
            type = "long",
        },
        machineType = {
            type = "string",
        },
        instanceType = {
            type = "string",
        },
    },
}

M.ComputeType = {
    BUILD_GENERAL1_SMALL = "BUILD_GENERAL1_SMALL",
    BUILD_GENERAL1_MEDIUM = "BUILD_GENERAL1_MEDIUM",
    BUILD_GENERAL1_LARGE = "BUILD_GENERAL1_LARGE",
    BUILD_GENERAL1_XLARGE = "BUILD_GENERAL1_XLARGE",
    BUILD_GENERAL1_2XLARGE = "BUILD_GENERAL1_2XLARGE",
    BUILD_LAMBDA_1GB = "BUILD_LAMBDA_1GB",
    BUILD_LAMBDA_2GB = "BUILD_LAMBDA_2GB",
    BUILD_LAMBDA_4GB = "BUILD_LAMBDA_4GB",
    BUILD_LAMBDA_8GB = "BUILD_LAMBDA_8GB",
    BUILD_LAMBDA_10GB = "BUILD_LAMBDA_10GB",
    ATTRIBUTE_BASED_COMPUTE = "ATTRIBUTE_BASED_COMPUTE",
    CUSTOM_INSTANCE_TYPE = "CUSTOM_INSTANCE_TYPE",
}

M.DockerServerStatus = {
    type = "structure",
    id = "DockerServerStatus",
    members = {
        status = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.DockerServer = {
    type = "structure",
    id = "DockerServer",
    members = {
        computeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        status = M.DockerServerStatus,
    },
}

M.EnvironmentVariableType = {
    PLAINTEXT = "PLAINTEXT",
    PARAMETER_STORE = "PARAMETER_STORE",
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

M.ProjectFleet = {
    type = "structure",
    id = "ProjectFleet",
    members = {
        fleetArn = {
            type = "string",
        },
    },
}

M.ImagePullCredentialsType = {
    CODEBUILD = "CODEBUILD",
    SERVICE_ROLE = "SERVICE_ROLE",
}

M.CredentialProviderType = {
    SECRETS_MANAGER = "SECRETS_MANAGER",
}

M.RegistryCredential = {
    type = "structure",
    id = "RegistryCredential",
    members = {
        credential = {
            type = "string",
            traits = {
                required = true,
            },
        },
        credentialProvider = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EnvironmentType = {
    WINDOWS_CONTAINER = "WINDOWS_CONTAINER",
    LINUX_CONTAINER = "LINUX_CONTAINER",
    LINUX_GPU_CONTAINER = "LINUX_GPU_CONTAINER",
    ARM_CONTAINER = "ARM_CONTAINER",
    WINDOWS_SERVER_2019_CONTAINER = "WINDOWS_SERVER_2019_CONTAINER",
    WINDOWS_SERVER_2022_CONTAINER = "WINDOWS_SERVER_2022_CONTAINER",
    LINUX_LAMBDA_CONTAINER = "LINUX_LAMBDA_CONTAINER",
    ARM_LAMBDA_CONTAINER = "ARM_LAMBDA_CONTAINER",
    LINUX_EC2 = "LINUX_EC2",
    ARM_EC2 = "ARM_EC2",
    WINDOWS_EC2 = "WINDOWS_EC2",
    MAC_ARM = "MAC_ARM",
}

M.ProjectEnvironment = {
    type = "structure",
    id = "ProjectEnvironment",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        image = {
            type = "string",
            traits = {
                required = true,
            },
        },
        computeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        computeConfiguration = M.ComputeConfiguration,
        fleet = M.ProjectFleet,
        environmentVariables = {
            type = "list",
            member = M.EnvironmentVariable,
        },
        privilegedMode = {
            type = "boolean",
        },
        certificate = {
            type = "string",
        },
        registryCredential = M.RegistryCredential,
        imagePullCredentialsType = {
            type = "string",
        },
        dockerServer = M.DockerServer,
    },
}

M.FileSystemType = {
    EFS = "EFS",
}

M.ProjectFileSystemLocation = {
    type = "structure",
    id = "ProjectFileSystemLocation",
    members = {
        type = {
            type = "string",
        },
        location = {
            type = "string",
        },
        mountPoint = {
            type = "string",
        },
        identifier = {
            type = "string",
        },
        mountOptions = {
            type = "string",
        },
    },
}

M.LogsConfigStatusType = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CloudWatchLogsConfig = {
    type = "structure",
    id = "CloudWatchLogsConfig",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        groupName = {
            type = "string",
        },
        streamName = {
            type = "string",
        },
    },
}

M.S3LogsConfig = {
    type = "structure",
    id = "S3LogsConfig",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        location = {
            type = "string",
        },
        encryptionDisabled = {
            type = "boolean",
        },
        bucketOwnerAccess = {
            type = "string",
        },
    },
}

M.LogsConfig = {
    type = "structure",
    id = "LogsConfig",
    members = {
        cloudWatchLogs = M.CloudWatchLogsConfig,
        s3Logs = M.S3LogsConfig,
    },
}

M.PhaseContext = {
    type = "structure",
    id = "PhaseContext",
    members = {
        statusCode = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.BuildBatchPhaseType = {
    SUBMITTED = "SUBMITTED",
    DOWNLOAD_BATCHSPEC = "DOWNLOAD_BATCHSPEC",
    IN_PROGRESS = "IN_PROGRESS",
    COMBINE_ARTIFACTS = "COMBINE_ARTIFACTS",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    STOPPED = "STOPPED",
}

M.BuildBatchPhase = {
    type = "structure",
    id = "BuildBatchPhase",
    members = {
        phaseType = {
            type = "string",
        },
        phaseStatus = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        durationInSeconds = {
            type = "long",
        },
        contexts = {
            type = "list",
            member = M.PhaseContext,
        },
    },
}

M.SourceAuthType = {
    OAUTH = "OAUTH",
    CODECONNECTIONS = "CODECONNECTIONS",
    SECRETS_MANAGER = "SECRETS_MANAGER",
}

M.SourceAuth = {
    type = "structure",
    id = "SourceAuth",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resource = {
            type = "string",
        },
    },
}

M.BuildStatusConfig = {
    type = "structure",
    id = "BuildStatusConfig",
    members = {
        context = {
            type = "string",
        },
        targetUrl = {
            type = "string",
        },
    },
}

M.GitSubmodulesConfig = {
    type = "structure",
    id = "GitSubmodulesConfig",
    members = {
        fetchSubmodules = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.SourceType = {
    CODECOMMIT = "CODECOMMIT",
    CODEPIPELINE = "CODEPIPELINE",
    GITHUB = "GITHUB",
    GITLAB = "GITLAB",
    GITLAB_SELF_MANAGED = "GITLAB_SELF_MANAGED",
    S3 = "S3",
    BITBUCKET = "BITBUCKET",
    GITHUB_ENTERPRISE = "GITHUB_ENTERPRISE",
    NO_SOURCE = "NO_SOURCE",
}

M.ProjectSource = {
    type = "structure",
    id = "ProjectSource",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        location = {
            type = "string",
        },
        gitCloneDepth = {
            type = "integer",
        },
        gitSubmodulesConfig = M.GitSubmodulesConfig,
        buildspec = {
            type = "string",
        },
        auth = M.SourceAuth,
        reportBuildStatus = {
            type = "boolean",
        },
        buildStatusConfig = M.BuildStatusConfig,
        insecureSsl = {
            type = "boolean",
        },
        sourceIdentifier = {
            type = "string",
        },
    },
}

M.ProjectSourceVersion = {
    type = "structure",
    id = "ProjectSourceVersion",
    members = {
        sourceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VpcConfig = {
    type = "structure",
    id = "VpcConfig",
    members = {
        vpcId = {
            type = "string",
        },
        subnets = {
            type = "list",
            member = { type = "string" },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BuildBatch = {
    type = "structure",
    id = "BuildBatch",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        currentPhase = {
            type = "string",
        },
        buildBatchStatus = {
            type = "string",
        },
        sourceVersion = {
            type = "string",
        },
        resolvedSourceVersion = {
            type = "string",
        },
        projectName = {
            type = "string",
        },
        phases = {
            type = "list",
            member = M.BuildBatchPhase,
        },
        source = M.ProjectSource,
        secondarySources = {
            type = "list",
            member = M.ProjectSource,
        },
        secondarySourceVersions = {
            type = "list",
            member = M.ProjectSourceVersion,
        },
        artifacts = M.BuildArtifacts,
        secondaryArtifacts = {
            type = "list",
            member = M.BuildArtifacts,
        },
        cache = M.ProjectCache,
        environment = M.ProjectEnvironment,
        serviceRole = {
            type = "string",
        },
        logConfig = M.LogsConfig,
        buildTimeoutInMinutes = {
            type = "integer",
        },
        queuedTimeoutInMinutes = {
            type = "integer",
        },
        complete = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        initiator = {
            type = "string",
        },
        vpcConfig = M.VpcConfig,
        encryptionKey = {
            type = "string",
        },
        buildBatchNumber = {
            type = "long",
        },
        fileSystemLocations = {
            type = "list",
            member = M.ProjectFileSystemLocation,
        },
        buildBatchConfig = M.ProjectBuildBatchConfig,
        buildGroups = {
            type = "list",
            member = M.BuildGroup,
        },
        debugSessionEnabled = {
            type = "boolean",
        },
        reportArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BatchGetBuildBatchesOutput = {
    type = "structure",
    id = "BatchGetBuildBatchesOutput",
    members = {
        buildBatches = {
            type = "list",
            member = M.BuildBatch,
        },
        buildBatchesNotFound = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BatchGetBuildsInput = {
    type = "structure",
    id = "BatchGetBuildsInput",
    members = {
        ids = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DebugSession = {
    type = "structure",
    id = "DebugSession",
    members = {
        sessionEnabled = {
            type = "boolean",
        },
        sessionTarget = {
            type = "string",
        },
    },
}

M.ExportedEnvironmentVariable = {
    type = "structure",
    id = "ExportedEnvironmentVariable",
    members = {
        name = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.LogsLocation = {
    type = "structure",
    id = "LogsLocation",
    members = {
        groupName = {
            type = "string",
        },
        streamName = {
            type = "string",
        },
        deepLink = {
            type = "string",
        },
        s3DeepLink = {
            type = "string",
        },
        cloudWatchLogsArn = {
            type = "string",
        },
        s3LogsArn = {
            type = "string",
        },
        cloudWatchLogs = M.CloudWatchLogsConfig,
        s3Logs = M.S3LogsConfig,
    },
}

M.NetworkInterface = {
    type = "structure",
    id = "NetworkInterface",
    members = {
        subnetId = {
            type = "string",
        },
        networkInterfaceId = {
            type = "string",
        },
    },
}

M.BuildPhaseType = {
    SUBMITTED = "SUBMITTED",
    QUEUED = "QUEUED",
    PROVISIONING = "PROVISIONING",
    DOWNLOAD_SOURCE = "DOWNLOAD_SOURCE",
    INSTALL = "INSTALL",
    PRE_BUILD = "PRE_BUILD",
    BUILD = "BUILD",
    POST_BUILD = "POST_BUILD",
    UPLOAD_ARTIFACTS = "UPLOAD_ARTIFACTS",
    FINALIZING = "FINALIZING",
    COMPLETED = "COMPLETED",
}

M.BuildPhase = {
    type = "structure",
    id = "BuildPhase",
    members = {
        phaseType = {
            type = "string",
        },
        phaseStatus = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        durationInSeconds = {
            type = "long",
        },
        contexts = {
            type = "list",
            member = M.PhaseContext,
        },
    },
}

M.Build = {
    type = "structure",
    id = "Build",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        buildNumber = {
            type = "long",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        currentPhase = {
            type = "string",
        },
        buildStatus = {
            type = "string",
        },
        sourceVersion = {
            type = "string",
        },
        resolvedSourceVersion = {
            type = "string",
        },
        projectName = {
            type = "string",
        },
        phases = {
            type = "list",
            member = M.BuildPhase,
        },
        source = M.ProjectSource,
        secondarySources = {
            type = "list",
            member = M.ProjectSource,
        },
        secondarySourceVersions = {
            type = "list",
            member = M.ProjectSourceVersion,
        },
        artifacts = M.BuildArtifacts,
        secondaryArtifacts = {
            type = "list",
            member = M.BuildArtifacts,
        },
        cache = M.ProjectCache,
        environment = M.ProjectEnvironment,
        serviceRole = {
            type = "string",
        },
        logs = M.LogsLocation,
        timeoutInMinutes = {
            type = "integer",
        },
        queuedTimeoutInMinutes = {
            type = "integer",
        },
        buildComplete = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        initiator = {
            type = "string",
        },
        vpcConfig = M.VpcConfig,
        networkInterface = M.NetworkInterface,
        encryptionKey = {
            type = "string",
        },
        exportedEnvironmentVariables = {
            type = "list",
            member = M.ExportedEnvironmentVariable,
        },
        reportArns = {
            type = "list",
            member = { type = "string" },
        },
        fileSystemLocations = {
            type = "list",
            member = M.ProjectFileSystemLocation,
        },
        debugSession = M.DebugSession,
        buildBatchArn = {
            type = "string",
        },
        autoRetryConfig = M.AutoRetryConfig,
    },
}

M.BatchGetBuildsOutput = {
    type = "structure",
    id = "BatchGetBuildsOutput",
    members = {
        builds = {
            type = "list",
            member = M.Build,
        },
        buildsNotFound = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BatchGetCommandExecutionsInput = {
    type = "structure",
    id = "BatchGetCommandExecutionsInput",
    members = {
        sandboxId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        commandExecutionIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CommandType = {
    SHELL = "SHELL",
}

M.CommandExecution = {
    type = "structure",
    id = "CommandExecution",
    members = {
        id = {
            type = "string",
        },
        sandboxId = {
            type = "string",
        },
        submitTime = {
            type = "timestamp",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        command = {
            type = "string",
        },
        type = {
            type = "string",
        },
        exitCode = {
            type = "string",
        },
        standardOutputContent = {
            type = "string",
        },
        standardErrContent = {
            type = "string",
        },
        logs = M.LogsLocation,
        sandboxArn = {
            type = "string",
        },
    },
}

M.BatchGetCommandExecutionsOutput = {
    type = "structure",
    id = "BatchGetCommandExecutionsOutput",
    members = {
        commandExecutions = {
            type = "list",
            member = M.CommandExecution,
        },
        commandExecutionsNotFound = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BatchGetFleetsInput = {
    type = "structure",
    id = "BatchGetFleetsInput",
    members = {
        names = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.FleetOverflowBehavior = {
    QUEUE = "QUEUE",
    ON_DEMAND = "ON_DEMAND",
}

M.FleetProxyRuleBehavior = {
    ALLOW_ALL = "ALLOW_ALL",
    DENY_ALL = "DENY_ALL",
}

M.FleetProxyRuleEffectType = {
    ALLOW = "ALLOW",
    DENY = "DENY",
}

M.FleetProxyRuleType = {
    DOMAIN = "DOMAIN",
    IP = "IP",
}

M.FleetProxyRule = {
    type = "structure",
    id = "FleetProxyRule",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        effect = {
            type = "string",
            traits = {
                required = true,
            },
        },
        entities = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ProxyConfiguration = {
    type = "structure",
    id = "ProxyConfiguration",
    members = {
        defaultBehavior = {
            type = "string",
        },
        orderedProxyRules = {
            type = "list",
            member = M.FleetProxyRule,
        },
    },
}

M.FleetScalingType = {
    TARGET_TRACKING_SCALING = "TARGET_TRACKING_SCALING",
}

M.FleetScalingMetricType = {
    FLEET_UTILIZATION_RATE = "FLEET_UTILIZATION_RATE",
}

M.TargetTrackingScalingConfiguration = {
    type = "structure",
    id = "TargetTrackingScalingConfiguration",
    members = {
        metricType = {
            type = "string",
        },
        targetValue = {
            type = "double",
        },
    },
}

M.ScalingConfigurationOutput = {
    type = "structure",
    id = "ScalingConfigurationOutput",
    members = {
        scalingType = {
            type = "string",
        },
        targetTrackingScalingConfigs = {
            type = "list",
            member = M.TargetTrackingScalingConfiguration,
        },
        maxCapacity = {
            type = "integer",
        },
        desiredCapacity = {
            type = "integer",
        },
    },
}

M.FleetContextCode = {
    CREATE_FAILED = "CREATE_FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
    ACTION_REQUIRED = "ACTION_REQUIRED",
    PENDING_DELETION = "PENDING_DELETION",
    INSUFFICIENT_CAPACITY = "INSUFFICIENT_CAPACITY",
}

M.FleetStatusCode = {
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    ROTATING = "ROTATING",
    PENDING_DELETION = "PENDING_DELETION",
    DELETING = "DELETING",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATE_ROLLBACK_FAILED = "UPDATE_ROLLBACK_FAILED",
    ACTIVE = "ACTIVE",
}

M.FleetStatus = {
    type = "structure",
    id = "FleetStatus",
    members = {
        statusCode = {
            type = "string",
        },
        context = {
            type = "string",
        },
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
        },
        value = {
            type = "string",
        },
    },
}

M.Fleet = {
    type = "structure",
    id = "Fleet",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        id = {
            type = "string",
        },
        created = {
            type = "timestamp",
        },
        lastModified = {
            type = "timestamp",
        },
        status = M.FleetStatus,
        baseCapacity = {
            type = "integer",
        },
        environmentType = {
            type = "string",
        },
        computeType = {
            type = "string",
        },
        computeConfiguration = M.ComputeConfiguration,
        scalingConfiguration = M.ScalingConfigurationOutput,
        overflowBehavior = {
            type = "string",
        },
        vpcConfig = M.VpcConfig,
        proxyConfiguration = M.ProxyConfiguration,
        imageId = {
            type = "string",
        },
        fleetServiceRole = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.BatchGetFleetsOutput = {
    type = "structure",
    id = "BatchGetFleetsOutput",
    members = {
        fleets = {
            type = "list",
            member = M.Fleet,
        },
        fleetsNotFound = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BatchGetProjectsInput = {
    type = "structure",
    id = "BatchGetProjectsInput",
    members = {
        names = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ProjectArtifacts = {
    type = "structure",
    id = "ProjectArtifacts",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        location = {
            type = "string",
        },
        path = {
            type = "string",
        },
        namespaceType = {
            type = "string",
        },
        name = {
            type = "string",
        },
        packaging = {
            type = "string",
        },
        overrideArtifactName = {
            type = "boolean",
        },
        encryptionDisabled = {
            type = "boolean",
        },
        artifactIdentifier = {
            type = "string",
        },
        bucketOwnerAccess = {
            type = "string",
        },
    },
}

M.ProjectBadge = {
    type = "structure",
    id = "ProjectBadge",
    members = {
        badgeEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        badgeRequestUrl = {
            type = "string",
        },
    },
}

M.ProjectVisibilityType = {
    PUBLIC_READ = "PUBLIC_READ",
    PRIVATE = "PRIVATE",
}

M.WebhookBuildType = {
    BUILD = "BUILD",
    BUILD_BATCH = "BUILD_BATCH",
    RUNNER_BUILDKITE_BUILD = "RUNNER_BUILDKITE_BUILD",
}

M.WebhookFilterType = {
    EVENT = "EVENT",
    BASE_REF = "BASE_REF",
    HEAD_REF = "HEAD_REF",
    ACTOR_ACCOUNT_ID = "ACTOR_ACCOUNT_ID",
    FILE_PATH = "FILE_PATH",
    COMMIT_MESSAGE = "COMMIT_MESSAGE",
    WORKFLOW_NAME = "WORKFLOW_NAME",
    TAG_NAME = "TAG_NAME",
    RELEASE_NAME = "RELEASE_NAME",
    REPOSITORY_NAME = "REPOSITORY_NAME",
    ORGANIZATION_NAME = "ORGANIZATION_NAME",
}

M.WebhookFilter = {
    type = "structure",
    id = "WebhookFilter",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        pattern = {
            type = "string",
            traits = {
                required = true,
            },
        },
        excludeMatchedPattern = {
            type = "boolean",
        },
    },
}

M.PullRequestBuildApproverRole = {
    GITHUB_READ = "GITHUB_READ",
    GITHUB_TRIAGE = "GITHUB_TRIAGE",
    GITHUB_WRITE = "GITHUB_WRITE",
    GITHUB_MAINTAIN = "GITHUB_MAINTAIN",
    GITHUB_ADMIN = "GITHUB_ADMIN",
    GITLAB_GUEST = "GITLAB_GUEST",
    GITLAB_PLANNER = "GITLAB_PLANNER",
    GITLAB_REPORTER = "GITLAB_REPORTER",
    GITLAB_DEVELOPER = "GITLAB_DEVELOPER",
    GITLAB_MAINTAINER = "GITLAB_MAINTAINER",
    GITLAB_OWNER = "GITLAB_OWNER",
    BITBUCKET_READ = "BITBUCKET_READ",
    BITBUCKET_WRITE = "BITBUCKET_WRITE",
    BITBUCKET_ADMIN = "BITBUCKET_ADMIN",
}

M.PullRequestBuildCommentApproval = {
    DISABLED = "DISABLED",
    ALL_PULL_REQUESTS = "ALL_PULL_REQUESTS",
    FORK_PULL_REQUESTS = "FORK_PULL_REQUESTS",
}

M.PullRequestBuildPolicy = {
    type = "structure",
    id = "PullRequestBuildPolicy",
    members = {
        requiresCommentApproval = {
            type = "string",
            traits = {
                required = true,
            },
        },
        approverRoles = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.WebhookScopeType = {
    GITHUB_ORGANIZATION = "GITHUB_ORGANIZATION",
    GITHUB_GLOBAL = "GITHUB_GLOBAL",
    GITLAB_GROUP = "GITLAB_GROUP",
}

M.ScopeConfiguration = {
    type = "structure",
    id = "ScopeConfiguration",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domain = {
            type = "string",
        },
        scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.WebhookStatus = {
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
}

M.Webhook = {
    type = "structure",
    id = "Webhook",
    members = {
        url = {
            type = "string",
        },
        payloadUrl = {
            type = "string",
        },
        secret = {
            type = "string",
        },
        branchFilter = {
            type = "string",
        },
        filterGroups = {
            type = "list",
            member = { type = "list" },
        },
        buildType = {
            type = "string",
        },
        manualCreation = {
            type = "boolean",
        },
        lastModifiedSecret = {
            type = "timestamp",
        },
        scopeConfiguration = M.ScopeConfiguration,
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        pullRequestBuildPolicy = M.PullRequestBuildPolicy,
    },
}

M.Project = {
    type = "structure",
    id = "Project",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        description = {
            type = "string",
        },
        source = M.ProjectSource,
        secondarySources = {
            type = "list",
            member = M.ProjectSource,
        },
        sourceVersion = {
            type = "string",
        },
        secondarySourceVersions = {
            type = "list",
            member = M.ProjectSourceVersion,
        },
        artifacts = M.ProjectArtifacts,
        secondaryArtifacts = {
            type = "list",
            member = M.ProjectArtifacts,
        },
        cache = M.ProjectCache,
        environment = M.ProjectEnvironment,
        serviceRole = {
            type = "string",
        },
        timeoutInMinutes = {
            type = "integer",
        },
        queuedTimeoutInMinutes = {
            type = "integer",
        },
        encryptionKey = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        created = {
            type = "timestamp",
        },
        lastModified = {
            type = "timestamp",
        },
        webhook = M.Webhook,
        vpcConfig = M.VpcConfig,
        badge = M.ProjectBadge,
        logsConfig = M.LogsConfig,
        fileSystemLocations = {
            type = "list",
            member = M.ProjectFileSystemLocation,
        },
        buildBatchConfig = M.ProjectBuildBatchConfig,
        concurrentBuildLimit = {
            type = "integer",
        },
        projectVisibility = {
            type = "string",
        },
        publicProjectAlias = {
            type = "string",
        },
        resourceAccessRole = {
            type = "string",
        },
        autoRetryLimit = {
            type = "integer",
        },
    },
}

M.BatchGetProjectsOutput = {
    type = "structure",
    id = "BatchGetProjectsOutput",
    members = {
        projects = {
            type = "list",
            member = M.Project,
        },
        projectsNotFound = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BatchGetReportGroupsInput = {
    type = "structure",
    id = "BatchGetReportGroupsInput",
    members = {
        reportGroupArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ReportExportConfigType = {
    S3 = "S3",
    NO_EXPORT = "NO_EXPORT",
}

M.ReportPackagingType = {
    ZIP = "ZIP",
    NONE = "NONE",
}

M.S3ReportExportConfig = {
    type = "structure",
    id = "S3ReportExportConfig",
    members = {
        bucket = {
            type = "string",
        },
        bucketOwner = {
            type = "string",
        },
        path = {
            type = "string",
        },
        packaging = {
            type = "string",
        },
        encryptionKey = {
            type = "string",
        },
        encryptionDisabled = {
            type = "boolean",
        },
    },
}

M.ReportExportConfig = {
    type = "structure",
    id = "ReportExportConfig",
    members = {
        exportConfigType = {
            type = "string",
        },
        s3Destination = M.S3ReportExportConfig,
    },
}

M.ReportGroupStatusType = {
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
}

M.ReportType = {
    TEST = "TEST",
    CODE_COVERAGE = "CODE_COVERAGE",
}

M.ReportGroup = {
    type = "structure",
    id = "ReportGroup",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        type = {
            type = "string",
        },
        exportConfig = M.ReportExportConfig,
        created = {
            type = "timestamp",
        },
        lastModified = {
            type = "timestamp",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        status = {
            type = "string",
        },
    },
}

M.BatchGetReportGroupsOutput = {
    type = "structure",
    id = "BatchGetReportGroupsOutput",
    members = {
        reportGroups = {
            type = "list",
            member = M.ReportGroup,
        },
        reportGroupsNotFound = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BatchGetReportsInput = {
    type = "structure",
    id = "BatchGetReportsInput",
    members = {
        reportArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CodeCoverageReportSummary = {
    type = "structure",
    id = "CodeCoverageReportSummary",
    members = {
        lineCoveragePercentage = {
            type = "double",
        },
        linesCovered = {
            type = "integer",
        },
        linesMissed = {
            type = "integer",
        },
        branchCoveragePercentage = {
            type = "double",
        },
        branchesCovered = {
            type = "integer",
        },
        branchesMissed = {
            type = "integer",
        },
    },
}

M.ReportStatusType = {
    GENERATING = "GENERATING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    INCOMPLETE = "INCOMPLETE",
    DELETING = "DELETING",
}

M.TestReportSummary = {
    type = "structure",
    id = "TestReportSummary",
    members = {
        total = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        statusCounts = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
            traits = {
                required = true,
            },
        },
        durationInNanoSeconds = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.Report = {
    type = "structure",
    id = "Report",
    members = {
        arn = {
            type = "string",
        },
        type = {
            type = "string",
        },
        name = {
            type = "string",
        },
        reportGroupArn = {
            type = "string",
        },
        executionId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        created = {
            type = "timestamp",
        },
        expired = {
            type = "timestamp",
        },
        exportConfig = M.ReportExportConfig,
        truncated = {
            type = "boolean",
        },
        testSummary = M.TestReportSummary,
        codeCoverageSummary = M.CodeCoverageReportSummary,
    },
}

M.BatchGetReportsOutput = {
    type = "structure",
    id = "BatchGetReportsOutput",
    members = {
        reports = {
            type = "list",
            member = M.Report,
        },
        reportsNotFound = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BatchGetSandboxesInput = {
    type = "structure",
    id = "BatchGetSandboxesInput",
    members = {
        ids = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.SandboxSessionPhase = {
    type = "structure",
    id = "SandboxSessionPhase",
    members = {
        phaseType = {
            type = "string",
        },
        phaseStatus = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        durationInSeconds = {
            type = "long",
        },
        contexts = {
            type = "list",
            member = M.PhaseContext,
        },
    },
}

M.SandboxSession = {
    type = "structure",
    id = "SandboxSession",
    members = {
        id = {
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
        currentPhase = {
            type = "string",
        },
        phases = {
            type = "list",
            member = M.SandboxSessionPhase,
        },
        resolvedSourceVersion = {
            type = "string",
        },
        logs = M.LogsLocation,
        networkInterface = M.NetworkInterface,
    },
}

M.Sandbox = {
    type = "structure",
    id = "Sandbox",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        projectName = {
            type = "string",
        },
        requestTime = {
            type = "timestamp",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        source = M.ProjectSource,
        sourceVersion = {
            type = "string",
        },
        secondarySources = {
            type = "list",
            member = M.ProjectSource,
        },
        secondarySourceVersions = {
            type = "list",
            member = M.ProjectSourceVersion,
        },
        environment = M.ProjectEnvironment,
        fileSystemLocations = {
            type = "list",
            member = M.ProjectFileSystemLocation,
        },
        timeoutInMinutes = {
            type = "integer",
        },
        queuedTimeoutInMinutes = {
            type = "integer",
        },
        vpcConfig = M.VpcConfig,
        logConfig = M.LogsConfig,
        encryptionKey = {
            type = "string",
        },
        serviceRole = {
            type = "string",
        },
        currentSession = M.SandboxSession,
    },
}

M.BatchGetSandboxesOutput = {
    type = "structure",
    id = "BatchGetSandboxesOutput",
    members = {
        sandboxes = {
            type = "list",
            member = M.Sandbox,
        },
        sandboxesNotFound = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BuildBatchFilter = {
    type = "structure",
    id = "BuildBatchFilter",
    members = {
        status = {
            type = "string",
        },
    },
}

M.ScalingConfigurationInput = {
    type = "structure",
    id = "ScalingConfigurationInput",
    members = {
        scalingType = {
            type = "string",
        },
        targetTrackingScalingConfigs = {
            type = "list",
            member = M.TargetTrackingScalingConfiguration,
        },
        maxCapacity = {
            type = "integer",
        },
    },
}

M.CreateFleetInput = {
    type = "structure",
    id = "CreateFleetInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        baseCapacity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        environmentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        computeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        computeConfiguration = M.ComputeConfiguration,
        scalingConfiguration = M.ScalingConfigurationInput,
        overflowBehavior = {
            type = "string",
        },
        vpcConfig = M.VpcConfig,
        proxyConfiguration = M.ProxyConfiguration,
        imageId = {
            type = "string",
        },
        fleetServiceRole = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateFleetOutput = {
    type = "structure",
    id = "CreateFleetOutput",
    members = {
        fleet = M.Fleet,
    },
}

M.ResourceAlreadyExistsException = {
    type = "structure",
    id = "ResourceAlreadyExistsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateProjectInput = {
    type = "structure",
    id = "CreateProjectInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProjectSource }),
        secondarySources = {
            type = "list",
            member = M.ProjectSource,
        },
        sourceVersion = {
            type = "string",
        },
        secondarySourceVersions = {
            type = "list",
            member = M.ProjectSourceVersion,
        },
        artifacts = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProjectArtifacts }),
        secondaryArtifacts = {
            type = "list",
            member = M.ProjectArtifacts,
        },
        cache = M.ProjectCache,
        environment = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProjectEnvironment }),
        serviceRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timeoutInMinutes = {
            type = "integer",
        },
        queuedTimeoutInMinutes = {
            type = "integer",
        },
        encryptionKey = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        vpcConfig = M.VpcConfig,
        badgeEnabled = {
            type = "boolean",
        },
        logsConfig = M.LogsConfig,
        fileSystemLocations = {
            type = "list",
            member = M.ProjectFileSystemLocation,
        },
        buildBatchConfig = M.ProjectBuildBatchConfig,
        concurrentBuildLimit = {
            type = "integer",
        },
        autoRetryLimit = {
            type = "integer",
        },
    },
}

M.CreateProjectOutput = {
    type = "structure",
    id = "CreateProjectOutput",
    members = {
        project = M.Project,
    },
}

M.CreateReportGroupInput = {
    type = "structure",
    id = "CreateReportGroupInput",
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
        exportConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReportExportConfig }),
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateReportGroupOutput = {
    type = "structure",
    id = "CreateReportGroupOutput",
    members = {
        reportGroup = M.ReportGroup,
    },
}

M.CreateWebhookInput = {
    type = "structure",
    id = "CreateWebhookInput",
    members = {
        projectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        branchFilter = {
            type = "string",
        },
        filterGroups = {
            type = "list",
            member = { type = "list" },
        },
        buildType = {
            type = "string",
        },
        manualCreation = {
            type = "boolean",
        },
        scopeConfiguration = M.ScopeConfiguration,
        pullRequestBuildPolicy = M.PullRequestBuildPolicy,
    },
}

M.CreateWebhookOutput = {
    type = "structure",
    id = "CreateWebhookOutput",
    members = {
        webhook = M.Webhook,
    },
}

M.OAuthProviderException = {
    type = "structure",
    id = "OAuthProviderException",
    error = "client",
    members = {
        message = {
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

M.DeleteBuildBatchInput = {
    type = "structure",
    id = "DeleteBuildBatchInput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteBuildBatchOutput = {
    type = "structure",
    id = "DeleteBuildBatchOutput",
    members = {
        statusCode = {
            type = "string",
        },
        buildsDeleted = {
            type = "list",
            member = { type = "string" },
        },
        buildsNotDeleted = {
            type = "list",
            member = M.BuildNotDeleted,
        },
    },
}

M.DeleteFleetInput = {
    type = "structure",
    id = "DeleteFleetInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteFleetOutput = {
    type = "structure",
    id = "DeleteFleetOutput",
}

M.DeleteProjectInput = {
    type = "structure",
    id = "DeleteProjectInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteProjectOutput = {
    type = "structure",
    id = "DeleteProjectOutput",
}

M.DeleteReportInput = {
    type = "structure",
    id = "DeleteReportInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteReportOutput = {
    type = "structure",
    id = "DeleteReportOutput",
}

M.DeleteReportGroupInput = {
    type = "structure",
    id = "DeleteReportGroupInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deleteReports = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DeleteReportGroupOutput = {
    type = "structure",
    id = "DeleteReportGroupOutput",
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    id = "DeleteResourcePolicyInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteResourcePolicyOutput = {
    type = "structure",
    id = "DeleteResourcePolicyOutput",
}

M.DeleteSourceCredentialsInput = {
    type = "structure",
    id = "DeleteSourceCredentialsInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSourceCredentialsOutput = {
    type = "structure",
    id = "DeleteSourceCredentialsOutput",
    members = {
        arn = {
            type = "string",
        },
    },
}

M.DeleteWebhookInput = {
    type = "structure",
    id = "DeleteWebhookInput",
    members = {
        projectName = {
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

M.ReportCodeCoverageSortByType = {
    LINE_COVERAGE_PERCENTAGE = "LINE_COVERAGE_PERCENTAGE",
    FILE_PATH = "FILE_PATH",
}

M.SortOrderType = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.DescribeCodeCoveragesInput = {
    type = "structure",
    id = "DescribeCodeCoveragesInput",
    members = {
        reportArn = {
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
        sortOrder = {
            type = "string",
        },
        sortBy = {
            type = "string",
        },
        minLineCoveragePercentage = {
            type = "double",
        },
        maxLineCoveragePercentage = {
            type = "double",
        },
    },
}

M.CodeCoverage = {
    type = "structure",
    id = "CodeCoverage",
    members = {
        id = {
            type = "string",
        },
        reportARN = {
            type = "string",
        },
        filePath = {
            type = "string",
        },
        lineCoveragePercentage = {
            type = "double",
        },
        linesCovered = {
            type = "integer",
        },
        linesMissed = {
            type = "integer",
        },
        branchCoveragePercentage = {
            type = "double",
        },
        branchesCovered = {
            type = "integer",
        },
        branchesMissed = {
            type = "integer",
        },
        expired = {
            type = "timestamp",
        },
    },
}

M.DescribeCodeCoveragesOutput = {
    type = "structure",
    id = "DescribeCodeCoveragesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        codeCoverages = {
            type = "list",
            member = M.CodeCoverage,
        },
    },
}

M.TestCaseFilter = {
    type = "structure",
    id = "TestCaseFilter",
    members = {
        status = {
            type = "string",
        },
        keyword = {
            type = "string",
        },
    },
}

M.DescribeTestCasesInput = {
    type = "structure",
    id = "DescribeTestCasesInput",
    members = {
        reportArn = {
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
        filter = M.TestCaseFilter,
    },
}

M.TestCase = {
    type = "structure",
    id = "TestCase",
    members = {
        reportArn = {
            type = "string",
        },
        testRawDataPath = {
            type = "string",
        },
        prefix = {
            type = "string",
        },
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
        durationInNanoSeconds = {
            type = "long",
        },
        message = {
            type = "string",
        },
        expired = {
            type = "timestamp",
        },
        testSuiteName = {
            type = "string",
        },
    },
}

M.DescribeTestCasesOutput = {
    type = "structure",
    id = "DescribeTestCasesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        testCases = {
            type = "list",
            member = M.TestCase,
        },
    },
}

M.ReportGroupTrendFieldType = {
    PASS_RATE = "PASS_RATE",
    DURATION = "DURATION",
    TOTAL = "TOTAL",
    LINE_COVERAGE = "LINE_COVERAGE",
    LINES_COVERED = "LINES_COVERED",
    LINES_MISSED = "LINES_MISSED",
    BRANCH_COVERAGE = "BRANCH_COVERAGE",
    BRANCHES_COVERED = "BRANCHES_COVERED",
    BRANCHES_MISSED = "BRANCHES_MISSED",
}

M.GetReportGroupTrendInput = {
    type = "structure",
    id = "GetReportGroupTrendInput",
    members = {
        reportGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        numOfReports = {
            type = "integer",
        },
        trendField = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReportWithRawData = {
    type = "structure",
    id = "ReportWithRawData",
    members = {
        reportArn = {
            type = "string",
        },
        data = {
            type = "string",
        },
    },
}

M.ReportGroupTrendStats = {
    type = "structure",
    id = "ReportGroupTrendStats",
    members = {
        average = {
            type = "string",
        },
        max = {
            type = "string",
        },
        min = {
            type = "string",
        },
    },
}

M.GetReportGroupTrendOutput = {
    type = "structure",
    id = "GetReportGroupTrendOutput",
    members = {
        stats = M.ReportGroupTrendStats,
        rawData = {
            type = "list",
            member = M.ReportWithRawData,
        },
    },
}

M.GetResourcePolicyInput = {
    type = "structure",
    id = "GetResourcePolicyInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetResourcePolicyOutput = {
    type = "structure",
    id = "GetResourcePolicyOutput",
    members = {
        policy = {
            type = "string",
        },
    },
}

M.ServerType = {
    GITHUB = "GITHUB",
    BITBUCKET = "BITBUCKET",
    GITHUB_ENTERPRISE = "GITHUB_ENTERPRISE",
    GITLAB = "GITLAB",
    GITLAB_SELF_MANAGED = "GITLAB_SELF_MANAGED",
}

M.ImportSourceCredentialsInput = {
    type = "structure",
    id = "ImportSourceCredentialsInput",
    members = {
        username = {
            type = "string",
        },
        token = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serverType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        shouldOverwrite = {
            type = "boolean",
        },
    },
}

M.ImportSourceCredentialsOutput = {
    type = "structure",
    id = "ImportSourceCredentialsOutput",
    members = {
        arn = {
            type = "string",
        },
    },
}

M.InvalidateProjectCacheInput = {
    type = "structure",
    id = "InvalidateProjectCacheInput",
    members = {
        projectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InvalidateProjectCacheOutput = {
    type = "structure",
    id = "InvalidateProjectCacheOutput",
}

M.ListBuildBatchesInput = {
    type = "structure",
    id = "ListBuildBatchesInput",
    members = {
        filter = M.BuildBatchFilter,
        maxResults = {
            type = "integer",
        },
        sortOrder = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBuildBatchesOutput = {
    type = "structure",
    id = "ListBuildBatchesOutput",
    members = {
        ids = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBuildBatchesForProjectInput = {
    type = "structure",
    id = "ListBuildBatchesForProjectInput",
    members = {
        projectName = {
            type = "string",
        },
        filter = M.BuildBatchFilter,
        maxResults = {
            type = "integer",
        },
        sortOrder = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBuildBatchesForProjectOutput = {
    type = "structure",
    id = "ListBuildBatchesForProjectOutput",
    members = {
        ids = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBuildsInput = {
    type = "structure",
    id = "ListBuildsInput",
    members = {
        sortOrder = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBuildsOutput = {
    type = "structure",
    id = "ListBuildsOutput",
    members = {
        ids = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBuildsForProjectInput = {
    type = "structure",
    id = "ListBuildsForProjectInput",
    members = {
        projectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sortOrder = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBuildsForProjectOutput = {
    type = "structure",
    id = "ListBuildsForProjectOutput",
    members = {
        ids = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListCommandExecutionsForSandboxInput = {
    type = "structure",
    id = "ListCommandExecutionsForSandboxInput",
    members = {
        sandboxId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
        },
        sortOrder = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListCommandExecutionsForSandboxOutput = {
    type = "structure",
    id = "ListCommandExecutionsForSandboxOutput",
    members = {
        commandExecutions = {
            type = "list",
            member = M.CommandExecution,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListCuratedEnvironmentImagesInput = {
    type = "structure",
    id = "ListCuratedEnvironmentImagesInput",
}

M.EnvironmentImage = {
    type = "structure",
    id = "EnvironmentImage",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        versions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.LanguageType = {
    JAVA = "JAVA",
    PYTHON = "PYTHON",
    NODE_JS = "NODE_JS",
    RUBY = "RUBY",
    GOLANG = "GOLANG",
    DOCKER = "DOCKER",
    ANDROID = "ANDROID",
    DOTNET = "DOTNET",
    BASE = "BASE",
    PHP = "PHP",
}

M.EnvironmentLanguage = {
    type = "structure",
    id = "EnvironmentLanguage",
    members = {
        language = {
            type = "string",
        },
        images = {
            type = "list",
            member = M.EnvironmentImage,
        },
    },
}

M.PlatformType = {
    DEBIAN = "DEBIAN",
    AMAZON_LINUX = "AMAZON_LINUX",
    UBUNTU = "UBUNTU",
    WINDOWS_SERVER = "WINDOWS_SERVER",
}

M.EnvironmentPlatform = {
    type = "structure",
    id = "EnvironmentPlatform",
    members = {
        platform = {
            type = "string",
        },
        languages = {
            type = "list",
            member = M.EnvironmentLanguage,
        },
    },
}

M.ListCuratedEnvironmentImagesOutput = {
    type = "structure",
    id = "ListCuratedEnvironmentImagesOutput",
    members = {
        platforms = {
            type = "list",
            member = M.EnvironmentPlatform,
        },
    },
}

M.FleetSortByType = {
    NAME = "NAME",
    CREATED_TIME = "CREATED_TIME",
    LAST_MODIFIED_TIME = "LAST_MODIFIED_TIME",
}

M.ListFleetsInput = {
    type = "structure",
    id = "ListFleetsInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        sortOrder = {
            type = "string",
        },
        sortBy = {
            type = "string",
        },
    },
}

M.ListFleetsOutput = {
    type = "structure",
    id = "ListFleetsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        fleets = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ProjectSortByType = {
    NAME = "NAME",
    CREATED_TIME = "CREATED_TIME",
    LAST_MODIFIED_TIME = "LAST_MODIFIED_TIME",
}

M.ListProjectsInput = {
    type = "structure",
    id = "ListProjectsInput",
    members = {
        sortBy = {
            type = "string",
        },
        sortOrder = {
            type = "string",
        },
        nextToken = {
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
        projects = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ReportGroupSortByType = {
    NAME = "NAME",
    CREATED_TIME = "CREATED_TIME",
    LAST_MODIFIED_TIME = "LAST_MODIFIED_TIME",
}

M.ListReportGroupsInput = {
    type = "structure",
    id = "ListReportGroupsInput",
    members = {
        sortOrder = {
            type = "string",
        },
        sortBy = {
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

M.ListReportGroupsOutput = {
    type = "structure",
    id = "ListReportGroupsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        reportGroups = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ReportFilter = {
    type = "structure",
    id = "ReportFilter",
    members = {
        status = {
            type = "string",
        },
    },
}

M.ListReportsInput = {
    type = "structure",
    id = "ListReportsInput",
    members = {
        sortOrder = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        filter = M.ReportFilter,
    },
}

M.ListReportsOutput = {
    type = "structure",
    id = "ListReportsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        reports = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListReportsForReportGroupInput = {
    type = "structure",
    id = "ListReportsForReportGroupInput",
    members = {
        reportGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        sortOrder = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        filter = M.ReportFilter,
    },
}

M.ListReportsForReportGroupOutput = {
    type = "structure",
    id = "ListReportsForReportGroupOutput",
    members = {
        nextToken = {
            type = "string",
        },
        reports = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListSandboxesInput = {
    type = "structure",
    id = "ListSandboxesInput",
    members = {
        maxResults = {
            type = "integer",
        },
        sortOrder = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSandboxesOutput = {
    type = "structure",
    id = "ListSandboxesOutput",
    members = {
        ids = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSandboxesForProjectInput = {
    type = "structure",
    id = "ListSandboxesForProjectInput",
    members = {
        projectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
        },
        sortOrder = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSandboxesForProjectOutput = {
    type = "structure",
    id = "ListSandboxesForProjectOutput",
    members = {
        ids = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SharedResourceSortByType = {
    ARN = "ARN",
    MODIFIED_TIME = "MODIFIED_TIME",
}

M.ListSharedProjectsInput = {
    type = "structure",
    id = "ListSharedProjectsInput",
    members = {
        sortBy = {
            type = "string",
        },
        sortOrder = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSharedProjectsOutput = {
    type = "structure",
    id = "ListSharedProjectsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        projects = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListSharedReportGroupsInput = {
    type = "structure",
    id = "ListSharedReportGroupsInput",
    members = {
        sortOrder = {
            type = "string",
        },
        sortBy = {
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

M.ListSharedReportGroupsOutput = {
    type = "structure",
    id = "ListSharedReportGroupsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        reportGroups = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListSourceCredentialsInput = {
    type = "structure",
    id = "ListSourceCredentialsInput",
}

M.SourceCredentialsInfo = {
    type = "structure",
    id = "SourceCredentialsInfo",
    members = {
        arn = {
            type = "string",
        },
        serverType = {
            type = "string",
        },
        authType = {
            type = "string",
        },
        resource = {
            type = "string",
        },
    },
}

M.ListSourceCredentialsOutput = {
    type = "structure",
    id = "ListSourceCredentialsOutput",
    members = {
        sourceCredentialsInfos = {
            type = "list",
            member = M.SourceCredentialsInfo,
        },
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    id = "PutResourcePolicyInput",
    members = {
        policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutResourcePolicyOutput = {
    type = "structure",
    id = "PutResourcePolicyOutput",
    members = {
        resourceArn = {
            type = "string",
        },
    },
}

M.RetryBuildInput = {
    type = "structure",
    id = "RetryBuildInput",
    members = {
        id = {
            type = "string",
        },
        idempotencyToken = {
            type = "string",
        },
    },
}

M.RetryBuildOutput = {
    type = "structure",
    id = "RetryBuildOutput",
    members = {
        build = M.Build,
    },
}

M.RetryBuildBatchType = {
    RETRY_ALL_BUILDS = "RETRY_ALL_BUILDS",
    RETRY_FAILED_BUILDS = "RETRY_FAILED_BUILDS",
}

M.RetryBuildBatchInput = {
    type = "structure",
    id = "RetryBuildBatchInput",
    members = {
        id = {
            type = "string",
        },
        idempotencyToken = {
            type = "string",
        },
        retryType = {
            type = "string",
        },
    },
}

M.RetryBuildBatchOutput = {
    type = "structure",
    id = "RetryBuildBatchOutput",
    members = {
        buildBatch = M.BuildBatch,
    },
}

M.StartBuildInput = {
    type = "structure",
    id = "StartBuildInput",
    members = {
        projectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        secondarySourcesOverride = {
            type = "list",
            member = M.ProjectSource,
        },
        secondarySourcesVersionOverride = {
            type = "list",
            member = M.ProjectSourceVersion,
        },
        sourceVersion = {
            type = "string",
        },
        artifactsOverride = M.ProjectArtifacts,
        secondaryArtifactsOverride = {
            type = "list",
            member = M.ProjectArtifacts,
        },
        environmentVariablesOverride = {
            type = "list",
            member = M.EnvironmentVariable,
        },
        sourceTypeOverride = {
            type = "string",
        },
        sourceLocationOverride = {
            type = "string",
        },
        sourceAuthOverride = M.SourceAuth,
        gitCloneDepthOverride = {
            type = "integer",
        },
        gitSubmodulesConfigOverride = M.GitSubmodulesConfig,
        buildspecOverride = {
            type = "string",
        },
        insecureSslOverride = {
            type = "boolean",
        },
        reportBuildStatusOverride = {
            type = "boolean",
        },
        buildStatusConfigOverride = M.BuildStatusConfig,
        environmentTypeOverride = {
            type = "string",
        },
        imageOverride = {
            type = "string",
        },
        computeTypeOverride = {
            type = "string",
        },
        certificateOverride = {
            type = "string",
        },
        cacheOverride = M.ProjectCache,
        serviceRoleOverride = {
            type = "string",
        },
        privilegedModeOverride = {
            type = "boolean",
        },
        timeoutInMinutesOverride = {
            type = "integer",
        },
        queuedTimeoutInMinutesOverride = {
            type = "integer",
        },
        encryptionKeyOverride = {
            type = "string",
        },
        idempotencyToken = {
            type = "string",
        },
        logsConfigOverride = M.LogsConfig,
        registryCredentialOverride = M.RegistryCredential,
        imagePullCredentialsTypeOverride = {
            type = "string",
        },
        debugSessionEnabled = {
            type = "boolean",
        },
        fleetOverride = M.ProjectFleet,
        autoRetryLimitOverride = {
            type = "integer",
        },
    },
}

M.StartBuildOutput = {
    type = "structure",
    id = "StartBuildOutput",
    members = {
        build = M.Build,
    },
}

M.StartBuildBatchInput = {
    type = "structure",
    id = "StartBuildBatchInput",
    members = {
        projectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        secondarySourcesOverride = {
            type = "list",
            member = M.ProjectSource,
        },
        secondarySourcesVersionOverride = {
            type = "list",
            member = M.ProjectSourceVersion,
        },
        sourceVersion = {
            type = "string",
        },
        artifactsOverride = M.ProjectArtifacts,
        secondaryArtifactsOverride = {
            type = "list",
            member = M.ProjectArtifacts,
        },
        environmentVariablesOverride = {
            type = "list",
            member = M.EnvironmentVariable,
        },
        sourceTypeOverride = {
            type = "string",
        },
        sourceLocationOverride = {
            type = "string",
        },
        sourceAuthOverride = M.SourceAuth,
        gitCloneDepthOverride = {
            type = "integer",
        },
        gitSubmodulesConfigOverride = M.GitSubmodulesConfig,
        buildspecOverride = {
            type = "string",
        },
        insecureSslOverride = {
            type = "boolean",
        },
        reportBuildBatchStatusOverride = {
            type = "boolean",
        },
        environmentTypeOverride = {
            type = "string",
        },
        imageOverride = {
            type = "string",
        },
        computeTypeOverride = {
            type = "string",
        },
        certificateOverride = {
            type = "string",
        },
        cacheOverride = M.ProjectCache,
        serviceRoleOverride = {
            type = "string",
        },
        privilegedModeOverride = {
            type = "boolean",
        },
        buildTimeoutInMinutesOverride = {
            type = "integer",
        },
        queuedTimeoutInMinutesOverride = {
            type = "integer",
        },
        encryptionKeyOverride = {
            type = "string",
        },
        idempotencyToken = {
            type = "string",
        },
        logsConfigOverride = M.LogsConfig,
        registryCredentialOverride = M.RegistryCredential,
        imagePullCredentialsTypeOverride = {
            type = "string",
        },
        buildBatchConfigOverride = M.ProjectBuildBatchConfig,
        debugSessionEnabled = {
            type = "boolean",
        },
    },
}

M.StartBuildBatchOutput = {
    type = "structure",
    id = "StartBuildBatchOutput",
    members = {
        buildBatch = M.BuildBatch,
    },
}

M.StartCommandExecutionInput = {
    type = "structure",
    id = "StartCommandExecutionInput",
    members = {
        sandboxId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        command = {
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

M.StartCommandExecutionOutput = {
    type = "structure",
    id = "StartCommandExecutionOutput",
    members = {
        commandExecution = M.CommandExecution,
    },
}

M.StartSandboxInput = {
    type = "structure",
    id = "StartSandboxInput",
    members = {
        projectName = {
            type = "string",
        },
        idempotencyToken = {
            type = "string",
        },
    },
}

M.StartSandboxOutput = {
    type = "structure",
    id = "StartSandboxOutput",
    members = {
        sandbox = M.Sandbox,
    },
}

M.StartSandboxConnectionInput = {
    type = "structure",
    id = "StartSandboxConnectionInput",
    members = {
        sandboxId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SSMSession = {
    type = "structure",
    id = "SSMSession",
    members = {
        sessionId = {
            type = "string",
        },
        tokenValue = {
            type = "string",
        },
        streamUrl = {
            type = "string",
        },
    },
}

M.StartSandboxConnectionOutput = {
    type = "structure",
    id = "StartSandboxConnectionOutput",
    members = {
        ssmSession = M.SSMSession,
    },
}

M.StopBuildInput = {
    type = "structure",
    id = "StopBuildInput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopBuildOutput = {
    type = "structure",
    id = "StopBuildOutput",
    members = {
        build = M.Build,
    },
}

M.StopBuildBatchInput = {
    type = "structure",
    id = "StopBuildBatchInput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopBuildBatchOutput = {
    type = "structure",
    id = "StopBuildBatchOutput",
    members = {
        buildBatch = M.BuildBatch,
    },
}

M.StopSandboxInput = {
    type = "structure",
    id = "StopSandboxInput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopSandboxOutput = {
    type = "structure",
    id = "StopSandboxOutput",
    members = {
        sandbox = M.Sandbox,
    },
}

M.UpdateFleetInput = {
    type = "structure",
    id = "UpdateFleetInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        baseCapacity = {
            type = "integer",
        },
        environmentType = {
            type = "string",
        },
        computeType = {
            type = "string",
        },
        computeConfiguration = M.ComputeConfiguration,
        scalingConfiguration = M.ScalingConfigurationInput,
        overflowBehavior = {
            type = "string",
        },
        vpcConfig = M.VpcConfig,
        proxyConfiguration = M.ProxyConfiguration,
        imageId = {
            type = "string",
        },
        fleetServiceRole = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.UpdateFleetOutput = {
    type = "structure",
    id = "UpdateFleetOutput",
    members = {
        fleet = M.Fleet,
    },
}

M.UpdateProjectInput = {
    type = "structure",
    id = "UpdateProjectInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        source = M.ProjectSource,
        secondarySources = {
            type = "list",
            member = M.ProjectSource,
        },
        sourceVersion = {
            type = "string",
        },
        secondarySourceVersions = {
            type = "list",
            member = M.ProjectSourceVersion,
        },
        artifacts = M.ProjectArtifacts,
        secondaryArtifacts = {
            type = "list",
            member = M.ProjectArtifacts,
        },
        cache = M.ProjectCache,
        environment = M.ProjectEnvironment,
        serviceRole = {
            type = "string",
        },
        timeoutInMinutes = {
            type = "integer",
        },
        queuedTimeoutInMinutes = {
            type = "integer",
        },
        encryptionKey = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        vpcConfig = M.VpcConfig,
        badgeEnabled = {
            type = "boolean",
        },
        logsConfig = M.LogsConfig,
        fileSystemLocations = {
            type = "list",
            member = M.ProjectFileSystemLocation,
        },
        buildBatchConfig = M.ProjectBuildBatchConfig,
        concurrentBuildLimit = {
            type = "integer",
        },
        autoRetryLimit = {
            type = "integer",
        },
    },
}

M.UpdateProjectOutput = {
    type = "structure",
    id = "UpdateProjectOutput",
    members = {
        project = M.Project,
    },
}

M.UpdateProjectVisibilityInput = {
    type = "structure",
    id = "UpdateProjectVisibilityInput",
    members = {
        projectArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectVisibility = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceAccessRole = {
            type = "string",
        },
    },
}

M.UpdateProjectVisibilityOutput = {
    type = "structure",
    id = "UpdateProjectVisibilityOutput",
    members = {
        projectArn = {
            type = "string",
        },
        publicProjectAlias = {
            type = "string",
        },
        projectVisibility = {
            type = "string",
        },
    },
}

M.UpdateReportGroupInput = {
    type = "structure",
    id = "UpdateReportGroupInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        exportConfig = M.ReportExportConfig,
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.UpdateReportGroupOutput = {
    type = "structure",
    id = "UpdateReportGroupOutput",
    members = {
        reportGroup = M.ReportGroup,
    },
}

M.UpdateWebhookInput = {
    type = "structure",
    id = "UpdateWebhookInput",
    members = {
        projectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        branchFilter = {
            type = "string",
        },
        rotateSecret = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        filterGroups = {
            type = "list",
            member = { type = "list" },
        },
        buildType = {
            type = "string",
        },
        pullRequestBuildPolicy = M.PullRequestBuildPolicy,
    },
}

M.UpdateWebhookOutput = {
    type = "structure",
    id = "UpdateWebhookOutput",
    members = {
        webhook = M.Webhook,
    },
}

return M
