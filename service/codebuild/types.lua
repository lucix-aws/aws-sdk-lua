local M = {}

M.AccountLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AccountSuspendedException = {
    type = "structure",
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
    members = {
        autoRetryLimit = {
            type = "number",
        },
        autoRetryNumber = {
            type = "number",
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
    members = {
        ids = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BuildNotDeleted = {
    type = "structure",
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
    members = {
        buildsDeleted = {
            type = "list",
            member_type = "string",
        },
        buildsNotDeleted = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.InvalidInputException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BatchGetBuildBatchesInput = {
    type = "structure",
    members = {
        ids = {
            type = "list",
            member_type = "string",
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
    members = {
        maximumBuildsAllowed = {
            type = "number",
        },
        computeTypesAllowed = {
            type = "list",
            member_type = "string",
        },
        fleetsAllowed = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ProjectBuildBatchConfig = {
    type = "structure",
    members = {
        serviceRole = {
            type = "string",
        },
        combineArtifacts = {
            type = "boolean",
        },
        restrictions = {
            type = "structure",
        },
        timeoutInMins = {
            type = "number",
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
        primaryArtifact = {
            type = "structure",
        },
        secondaryArtifacts = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BuildGroup = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
        },
        dependsOn = {
            type = "list",
            member_type = "string",
        },
        ignoreFailure = {
            type = "boolean",
        },
        currentBuildSummary = {
            type = "structure",
        },
        priorBuildSummaryList = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
    members = {
        vCpu = {
            type = "number",
        },
        memory = {
            type = "number",
        },
        disk = {
            type = "number",
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
    members = {
        computeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        securityGroupIds = {
            type = "list",
            member_type = "string",
        },
        status = {
            type = "structure",
        },
    },
}

M.EnvironmentVariableType = {
    PLAINTEXT = "PLAINTEXT",
    PARAMETER_STORE = "PARAMETER_STORE",
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

M.ProjectFleet = {
    type = "structure",
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
        computeConfiguration = {
            type = "structure",
        },
        fleet = {
            type = "structure",
        },
        environmentVariables = {
            type = "list",
            member_type = "structure",
        },
        privilegedMode = {
            type = "boolean",
        },
        certificate = {
            type = "string",
        },
        registryCredential = {
            type = "structure",
        },
        imagePullCredentialsType = {
            type = "string",
        },
        dockerServer = {
            type = "structure",
        },
    },
}

M.FileSystemType = {
    EFS = "EFS",
}

M.ProjectFileSystemLocation = {
    type = "structure",
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
    members = {
        cloudWatchLogs = {
            type = "structure",
        },
        s3Logs = {
            type = "structure",
        },
    },
}

M.PhaseContext = {
    type = "structure",
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
            type = "number",
        },
        contexts = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        gitSubmodulesConfig = {
            type = "structure",
        },
        buildspec = {
            type = "string",
        },
        auth = {
            type = "structure",
        },
        reportBuildStatus = {
            type = "boolean",
        },
        buildStatusConfig = {
            type = "structure",
        },
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
    members = {
        vpcId = {
            type = "string",
        },
        subnets = {
            type = "list",
            member_type = "string",
        },
        securityGroupIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.BuildBatch = {
    type = "structure",
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
            member_type = "structure",
        },
        source = {
            type = "structure",
        },
        secondarySources = {
            type = "list",
            member_type = "structure",
        },
        secondarySourceVersions = {
            type = "list",
            member_type = "structure",
        },
        artifacts = {
            type = "structure",
        },
        secondaryArtifacts = {
            type = "list",
            member_type = "structure",
        },
        cache = {
            type = "structure",
        },
        environment = {
            type = "structure",
        },
        serviceRole = {
            type = "string",
        },
        logConfig = {
            type = "structure",
        },
        buildTimeoutInMinutes = {
            type = "number",
        },
        queuedTimeoutInMinutes = {
            type = "number",
        },
        complete = {
            type = "boolean",
        },
        initiator = {
            type = "string",
        },
        vpcConfig = {
            type = "structure",
        },
        encryptionKey = {
            type = "string",
        },
        buildBatchNumber = {
            type = "number",
        },
        fileSystemLocations = {
            type = "list",
            member_type = "structure",
        },
        buildBatchConfig = {
            type = "structure",
        },
        buildGroups = {
            type = "list",
            member_type = "structure",
        },
        debugSessionEnabled = {
            type = "boolean",
        },
        reportArns = {
            type = "list",
            member_type = "string",
        },
    },
}

M.BatchGetBuildBatchesOutput = {
    type = "structure",
    members = {
        buildBatches = {
            type = "list",
            member_type = "structure",
        },
        buildBatchesNotFound = {
            type = "list",
            member_type = "string",
        },
    },
}

M.BatchGetBuildsInput = {
    type = "structure",
    members = {
        ids = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DebugSession = {
    type = "structure",
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
        cloudWatchLogs = {
            type = "structure",
        },
        s3Logs = {
            type = "structure",
        },
    },
}

M.NetworkInterface = {
    type = "structure",
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
            type = "number",
        },
        contexts = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Build = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        buildNumber = {
            type = "number",
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
            member_type = "structure",
        },
        source = {
            type = "structure",
        },
        secondarySources = {
            type = "list",
            member_type = "structure",
        },
        secondarySourceVersions = {
            type = "list",
            member_type = "structure",
        },
        artifacts = {
            type = "structure",
        },
        secondaryArtifacts = {
            type = "list",
            member_type = "structure",
        },
        cache = {
            type = "structure",
        },
        environment = {
            type = "structure",
        },
        serviceRole = {
            type = "string",
        },
        logs = {
            type = "structure",
        },
        timeoutInMinutes = {
            type = "number",
        },
        queuedTimeoutInMinutes = {
            type = "number",
        },
        buildComplete = {
            type = "boolean",
        },
        initiator = {
            type = "string",
        },
        vpcConfig = {
            type = "structure",
        },
        networkInterface = {
            type = "structure",
        },
        encryptionKey = {
            type = "string",
        },
        exportedEnvironmentVariables = {
            type = "list",
            member_type = "structure",
        },
        reportArns = {
            type = "list",
            member_type = "string",
        },
        fileSystemLocations = {
            type = "list",
            member_type = "structure",
        },
        debugSession = {
            type = "structure",
        },
        buildBatchArn = {
            type = "string",
        },
        autoRetryConfig = {
            type = "structure",
        },
    },
}

M.BatchGetBuildsOutput = {
    type = "structure",
    members = {
        builds = {
            type = "list",
            member_type = "structure",
        },
        buildsNotFound = {
            type = "list",
            member_type = "string",
        },
    },
}

M.BatchGetCommandExecutionsInput = {
    type = "structure",
    members = {
        sandboxId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        commandExecutionIds = {
            type = "list",
            member_type = "string",
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
        logs = {
            type = "structure",
        },
        sandboxArn = {
            type = "string",
        },
    },
}

M.BatchGetCommandExecutionsOutput = {
    type = "structure",
    members = {
        commandExecutions = {
            type = "list",
            member_type = "structure",
        },
        commandExecutionsNotFound = {
            type = "list",
            member_type = "string",
        },
    },
}

M.BatchGetFleetsInput = {
    type = "structure",
    members = {
        names = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProxyConfiguration = {
    type = "structure",
    members = {
        defaultBehavior = {
            type = "string",
        },
        orderedProxyRules = {
            type = "list",
            member_type = "structure",
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
    members = {
        metricType = {
            type = "string",
        },
        targetValue = {
            type = "number",
        },
    },
}

M.ScalingConfigurationOutput = {
    type = "structure",
    members = {
        scalingType = {
            type = "string",
        },
        targetTrackingScalingConfigs = {
            type = "list",
            member_type = "structure",
        },
        maxCapacity = {
            type = "number",
        },
        desiredCapacity = {
            type = "number",
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
        status = {
            type = "structure",
        },
        baseCapacity = {
            type = "number",
        },
        environmentType = {
            type = "string",
        },
        computeType = {
            type = "string",
        },
        computeConfiguration = {
            type = "structure",
        },
        scalingConfiguration = {
            type = "structure",
        },
        overflowBehavior = {
            type = "string",
        },
        vpcConfig = {
            type = "structure",
        },
        proxyConfiguration = {
            type = "structure",
        },
        imageId = {
            type = "string",
        },
        fleetServiceRole = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchGetFleetsOutput = {
    type = "structure",
    members = {
        fleets = {
            type = "list",
            member_type = "structure",
        },
        fleetsNotFound = {
            type = "list",
            member_type = "string",
        },
    },
}

M.BatchGetProjectsInput = {
    type = "structure",
    members = {
        names = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProjectArtifacts = {
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
    members = {
        badgeEnabled = {
            type = "boolean",
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
    members = {
        requiresCommentApproval = {
            type = "string",
            traits = {
                required = true,
            },
        },
        approverRoles = {
            type = "list",
            member_type = "string",
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
            member_type = "list",
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
        scopeConfiguration = {
            type = "structure",
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        pullRequestBuildPolicy = {
            type = "structure",
        },
    },
}

M.Project = {
    type = "structure",
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
        source = {
            type = "structure",
        },
        secondarySources = {
            type = "list",
            member_type = "structure",
        },
        sourceVersion = {
            type = "string",
        },
        secondarySourceVersions = {
            type = "list",
            member_type = "structure",
        },
        artifacts = {
            type = "structure",
        },
        secondaryArtifacts = {
            type = "list",
            member_type = "structure",
        },
        cache = {
            type = "structure",
        },
        environment = {
            type = "structure",
        },
        serviceRole = {
            type = "string",
        },
        timeoutInMinutes = {
            type = "number",
        },
        queuedTimeoutInMinutes = {
            type = "number",
        },
        encryptionKey = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        created = {
            type = "timestamp",
        },
        lastModified = {
            type = "timestamp",
        },
        webhook = {
            type = "structure",
        },
        vpcConfig = {
            type = "structure",
        },
        badge = {
            type = "structure",
        },
        logsConfig = {
            type = "structure",
        },
        fileSystemLocations = {
            type = "list",
            member_type = "structure",
        },
        buildBatchConfig = {
            type = "structure",
        },
        concurrentBuildLimit = {
            type = "number",
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
            type = "number",
        },
    },
}

M.BatchGetProjectsOutput = {
    type = "structure",
    members = {
        projects = {
            type = "list",
            member_type = "structure",
        },
        projectsNotFound = {
            type = "list",
            member_type = "string",
        },
    },
}

M.BatchGetReportGroupsInput = {
    type = "structure",
    members = {
        reportGroupArns = {
            type = "list",
            member_type = "string",
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
    members = {
        exportConfigType = {
            type = "string",
        },
        s3Destination = {
            type = "structure",
        },
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
        exportConfig = {
            type = "structure",
        },
        created = {
            type = "timestamp",
        },
        lastModified = {
            type = "timestamp",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        status = {
            type = "string",
        },
    },
}

M.BatchGetReportGroupsOutput = {
    type = "structure",
    members = {
        reportGroups = {
            type = "list",
            member_type = "structure",
        },
        reportGroupsNotFound = {
            type = "list",
            member_type = "string",
        },
    },
}

M.BatchGetReportsInput = {
    type = "structure",
    members = {
        reportArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CodeCoverageReportSummary = {
    type = "structure",
    members = {
        lineCoveragePercentage = {
            type = "number",
        },
        linesCovered = {
            type = "number",
        },
        linesMissed = {
            type = "number",
        },
        branchCoveragePercentage = {
            type = "number",
        },
        branchesCovered = {
            type = "number",
        },
        branchesMissed = {
            type = "number",
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
    members = {
        total = {
            type = "number",
            traits = {
                required = true,
            },
        },
        statusCounts = {
            type = "map",
            key_type = "string",
            value_type = "number",
            traits = {
                required = true,
            },
        },
        durationInNanoSeconds = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.Report = {
    type = "structure",
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
        exportConfig = {
            type = "structure",
        },
        truncated = {
            type = "boolean",
        },
        testSummary = {
            type = "structure",
        },
        codeCoverageSummary = {
            type = "structure",
        },
    },
}

M.BatchGetReportsOutput = {
    type = "structure",
    members = {
        reports = {
            type = "list",
            member_type = "structure",
        },
        reportsNotFound = {
            type = "list",
            member_type = "string",
        },
    },
}

M.BatchGetSandboxesInput = {
    type = "structure",
    members = {
        ids = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SandboxSessionPhase = {
    type = "structure",
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
            type = "number",
        },
        contexts = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SandboxSession = {
    type = "structure",
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
            member_type = "structure",
        },
        resolvedSourceVersion = {
            type = "string",
        },
        logs = {
            type = "structure",
        },
        networkInterface = {
            type = "structure",
        },
    },
}

M.Sandbox = {
    type = "structure",
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
        source = {
            type = "structure",
        },
        sourceVersion = {
            type = "string",
        },
        secondarySources = {
            type = "list",
            member_type = "structure",
        },
        secondarySourceVersions = {
            type = "list",
            member_type = "structure",
        },
        environment = {
            type = "structure",
        },
        fileSystemLocations = {
            type = "list",
            member_type = "structure",
        },
        timeoutInMinutes = {
            type = "number",
        },
        queuedTimeoutInMinutes = {
            type = "number",
        },
        vpcConfig = {
            type = "structure",
        },
        logConfig = {
            type = "structure",
        },
        encryptionKey = {
            type = "string",
        },
        serviceRole = {
            type = "string",
        },
        currentSession = {
            type = "structure",
        },
    },
}

M.BatchGetSandboxesOutput = {
    type = "structure",
    members = {
        sandboxes = {
            type = "list",
            member_type = "structure",
        },
        sandboxesNotFound = {
            type = "list",
            member_type = "string",
        },
    },
}

M.BuildBatchFilter = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
    },
}

M.ScalingConfigurationInput = {
    type = "structure",
    members = {
        scalingType = {
            type = "string",
        },
        targetTrackingScalingConfigs = {
            type = "list",
            member_type = "structure",
        },
        maxCapacity = {
            type = "number",
        },
    },
}

M.CreateFleetInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        baseCapacity = {
            type = "number",
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
        computeConfiguration = {
            type = "structure",
        },
        scalingConfiguration = {
            type = "structure",
        },
        overflowBehavior = {
            type = "string",
        },
        vpcConfig = {
            type = "structure",
        },
        proxyConfiguration = {
            type = "structure",
        },
        imageId = {
            type = "string",
        },
        fleetServiceRole = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateFleetOutput = {
    type = "structure",
    members = {
        fleet = {
            type = "structure",
        },
    },
}

M.ResourceAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateProjectInput = {
    type = "structure",
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
        source = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        secondarySources = {
            type = "list",
            member_type = "structure",
        },
        sourceVersion = {
            type = "string",
        },
        secondarySourceVersions = {
            type = "list",
            member_type = "structure",
        },
        artifacts = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        secondaryArtifacts = {
            type = "list",
            member_type = "structure",
        },
        cache = {
            type = "structure",
        },
        environment = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        serviceRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timeoutInMinutes = {
            type = "number",
        },
        queuedTimeoutInMinutes = {
            type = "number",
        },
        encryptionKey = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        vpcConfig = {
            type = "structure",
        },
        badgeEnabled = {
            type = "boolean",
        },
        logsConfig = {
            type = "structure",
        },
        fileSystemLocations = {
            type = "list",
            member_type = "structure",
        },
        buildBatchConfig = {
            type = "structure",
        },
        concurrentBuildLimit = {
            type = "number",
        },
        autoRetryLimit = {
            type = "number",
        },
    },
}

M.CreateProjectOutput = {
    type = "structure",
    members = {
        project = {
            type = "structure",
        },
    },
}

M.CreateReportGroupInput = {
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
        exportConfig = {
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

M.CreateReportGroupOutput = {
    type = "structure",
    members = {
        reportGroup = {
            type = "structure",
        },
    },
}

M.CreateWebhookInput = {
    type = "structure",
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
            member_type = "list",
        },
        buildType = {
            type = "string",
        },
        manualCreation = {
            type = "boolean",
        },
        scopeConfiguration = {
            type = "structure",
        },
        pullRequestBuildPolicy = {
            type = "structure",
        },
    },
}

M.CreateWebhookOutput = {
    type = "structure",
    members = {
        webhook = {
            type = "structure",
        },
    },
}

M.OAuthProviderException = {
    type = "structure",
    error = "client",
    members = {
        message = {
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

M.DeleteBuildBatchInput = {
    type = "structure",
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
    members = {
        statusCode = {
            type = "string",
        },
        buildsDeleted = {
            type = "list",
            member_type = "string",
        },
        buildsNotDeleted = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DeleteFleetInput = {
    type = "structure",
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
}

M.DeleteProjectInput = {
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

M.DeleteProjectOutput = {
    type = "structure",
}

M.DeleteReportInput = {
    type = "structure",
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
}

M.DeleteReportGroupInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deleteReports = {
            type = "boolean",
        },
    },
}

M.DeleteReportGroupOutput = {
    type = "structure",
}

M.DeleteResourcePolicyInput = {
    type = "structure",
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
}

M.DeleteSourceCredentialsInput = {
    type = "structure",
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
    members = {
        arn = {
            type = "string",
        },
    },
}

M.DeleteWebhookInput = {
    type = "structure",
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
            type = "number",
        },
        sortOrder = {
            type = "string",
        },
        sortBy = {
            type = "string",
        },
        minLineCoveragePercentage = {
            type = "number",
        },
        maxLineCoveragePercentage = {
            type = "number",
        },
    },
}

M.CodeCoverage = {
    type = "structure",
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
            type = "number",
        },
        linesCovered = {
            type = "number",
        },
        linesMissed = {
            type = "number",
        },
        branchCoveragePercentage = {
            type = "number",
        },
        branchesCovered = {
            type = "number",
        },
        branchesMissed = {
            type = "number",
        },
        expired = {
            type = "timestamp",
        },
    },
}

M.DescribeCodeCoveragesOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        codeCoverages = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TestCaseFilter = {
    type = "structure",
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
            type = "number",
        },
        filter = {
            type = "structure",
        },
    },
}

M.TestCase = {
    type = "structure",
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
            type = "number",
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
    members = {
        nextToken = {
            type = "string",
        },
        testCases = {
            type = "list",
            member_type = "structure",
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
    members = {
        reportGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        numOfReports = {
            type = "number",
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
    members = {
        stats = {
            type = "structure",
        },
        rawData = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetResourcePolicyInput = {
    type = "structure",
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
    members = {
        arn = {
            type = "string",
        },
    },
}

M.InvalidateProjectCacheInput = {
    type = "structure",
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
}

M.ListBuildBatchesInput = {
    type = "structure",
    members = {
        filter = {
            type = "structure",
        },
        maxResults = {
            type = "number",
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
    members = {
        ids = {
            type = "list",
            member_type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBuildBatchesForProjectInput = {
    type = "structure",
    members = {
        projectName = {
            type = "string",
        },
        filter = {
            type = "structure",
        },
        maxResults = {
            type = "number",
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
    members = {
        ids = {
            type = "list",
            member_type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBuildsInput = {
    type = "structure",
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
    members = {
        ids = {
            type = "list",
            member_type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBuildsForProjectInput = {
    type = "structure",
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
    members = {
        ids = {
            type = "list",
            member_type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListCommandExecutionsForSandboxInput = {
    type = "structure",
    members = {
        sandboxId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "number",
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
    members = {
        commandExecutions = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListCuratedEnvironmentImagesInput = {
    type = "structure",
}

M.EnvironmentImage = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        versions = {
            type = "list",
            member_type = "string",
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
    members = {
        language = {
            type = "string",
        },
        images = {
            type = "list",
            member_type = "structure",
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
    members = {
        platform = {
            type = "string",
        },
        languages = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListCuratedEnvironmentImagesOutput = {
    type = "structure",
    members = {
        platforms = {
            type = "list",
            member_type = "structure",
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
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
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
    members = {
        nextToken = {
            type = "string",
        },
        fleets = {
            type = "list",
            member_type = "string",
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
    members = {
        nextToken = {
            type = "string",
        },
        projects = {
            type = "list",
            member_type = "string",
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
            type = "number",
        },
    },
}

M.ListReportGroupsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        reportGroups = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ReportFilter = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
    },
}

M.ListReportsInput = {
    type = "structure",
    members = {
        sortOrder = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
        filter = {
            type = "structure",
        },
    },
}

M.ListReportsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        reports = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListReportsForReportGroupInput = {
    type = "structure",
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
            type = "number",
        },
        filter = {
            type = "structure",
        },
    },
}

M.ListReportsForReportGroupOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        reports = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListSandboxesInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
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
    members = {
        ids = {
            type = "list",
            member_type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSandboxesForProjectInput = {
    type = "structure",
    members = {
        projectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "number",
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
    members = {
        ids = {
            type = "list",
            member_type = "string",
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
    members = {
        sortBy = {
            type = "string",
        },
        sortOrder = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSharedProjectsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        projects = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListSharedReportGroupsInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.ListSharedReportGroupsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        reportGroups = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListSourceCredentialsInput = {
    type = "structure",
}

M.SourceCredentialsInfo = {
    type = "structure",
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
    members = {
        sourceCredentialsInfos = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
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
    members = {
        resourceArn = {
            type = "string",
        },
    },
}

M.RetryBuildInput = {
    type = "structure",
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
    members = {
        build = {
            type = "structure",
        },
    },
}

M.RetryBuildBatchType = {
    RETRY_ALL_BUILDS = "RETRY_ALL_BUILDS",
    RETRY_FAILED_BUILDS = "RETRY_FAILED_BUILDS",
}

M.RetryBuildBatchInput = {
    type = "structure",
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
    members = {
        buildBatch = {
            type = "structure",
        },
    },
}

M.StartBuildInput = {
    type = "structure",
    members = {
        projectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        secondarySourcesOverride = {
            type = "list",
            member_type = "structure",
        },
        secondarySourcesVersionOverride = {
            type = "list",
            member_type = "structure",
        },
        sourceVersion = {
            type = "string",
        },
        artifactsOverride = {
            type = "structure",
        },
        secondaryArtifactsOverride = {
            type = "list",
            member_type = "structure",
        },
        environmentVariablesOverride = {
            type = "list",
            member_type = "structure",
        },
        sourceTypeOverride = {
            type = "string",
        },
        sourceLocationOverride = {
            type = "string",
        },
        sourceAuthOverride = {
            type = "structure",
        },
        gitCloneDepthOverride = {
            type = "number",
        },
        gitSubmodulesConfigOverride = {
            type = "structure",
        },
        buildspecOverride = {
            type = "string",
        },
        insecureSslOverride = {
            type = "boolean",
        },
        reportBuildStatusOverride = {
            type = "boolean",
        },
        buildStatusConfigOverride = {
            type = "structure",
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
        cacheOverride = {
            type = "structure",
        },
        serviceRoleOverride = {
            type = "string",
        },
        privilegedModeOverride = {
            type = "boolean",
        },
        timeoutInMinutesOverride = {
            type = "number",
        },
        queuedTimeoutInMinutesOverride = {
            type = "number",
        },
        encryptionKeyOverride = {
            type = "string",
        },
        idempotencyToken = {
            type = "string",
        },
        logsConfigOverride = {
            type = "structure",
        },
        registryCredentialOverride = {
            type = "structure",
        },
        imagePullCredentialsTypeOverride = {
            type = "string",
        },
        debugSessionEnabled = {
            type = "boolean",
        },
        fleetOverride = {
            type = "structure",
        },
        autoRetryLimitOverride = {
            type = "number",
        },
    },
}

M.StartBuildOutput = {
    type = "structure",
    members = {
        build = {
            type = "structure",
        },
    },
}

M.StartBuildBatchInput = {
    type = "structure",
    members = {
        projectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        secondarySourcesOverride = {
            type = "list",
            member_type = "structure",
        },
        secondarySourcesVersionOverride = {
            type = "list",
            member_type = "structure",
        },
        sourceVersion = {
            type = "string",
        },
        artifactsOverride = {
            type = "structure",
        },
        secondaryArtifactsOverride = {
            type = "list",
            member_type = "structure",
        },
        environmentVariablesOverride = {
            type = "list",
            member_type = "structure",
        },
        sourceTypeOverride = {
            type = "string",
        },
        sourceLocationOverride = {
            type = "string",
        },
        sourceAuthOverride = {
            type = "structure",
        },
        gitCloneDepthOverride = {
            type = "number",
        },
        gitSubmodulesConfigOverride = {
            type = "structure",
        },
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
        cacheOverride = {
            type = "structure",
        },
        serviceRoleOverride = {
            type = "string",
        },
        privilegedModeOverride = {
            type = "boolean",
        },
        buildTimeoutInMinutesOverride = {
            type = "number",
        },
        queuedTimeoutInMinutesOverride = {
            type = "number",
        },
        encryptionKeyOverride = {
            type = "string",
        },
        idempotencyToken = {
            type = "string",
        },
        logsConfigOverride = {
            type = "structure",
        },
        registryCredentialOverride = {
            type = "structure",
        },
        imagePullCredentialsTypeOverride = {
            type = "string",
        },
        buildBatchConfigOverride = {
            type = "structure",
        },
        debugSessionEnabled = {
            type = "boolean",
        },
    },
}

M.StartBuildBatchOutput = {
    type = "structure",
    members = {
        buildBatch = {
            type = "structure",
        },
    },
}

M.StartCommandExecutionInput = {
    type = "structure",
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
    members = {
        commandExecution = {
            type = "structure",
        },
    },
}

M.StartSandboxInput = {
    type = "structure",
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
    members = {
        sandbox = {
            type = "structure",
        },
    },
}

M.StartSandboxConnectionInput = {
    type = "structure",
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
    members = {
        ssmSession = {
            type = "structure",
        },
    },
}

M.StopBuildInput = {
    type = "structure",
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
    members = {
        build = {
            type = "structure",
        },
    },
}

M.StopBuildBatchInput = {
    type = "structure",
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
    members = {
        buildBatch = {
            type = "structure",
        },
    },
}

M.StopSandboxInput = {
    type = "structure",
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
    members = {
        sandbox = {
            type = "structure",
        },
    },
}

M.UpdateFleetInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        baseCapacity = {
            type = "number",
        },
        environmentType = {
            type = "string",
        },
        computeType = {
            type = "string",
        },
        computeConfiguration = {
            type = "structure",
        },
        scalingConfiguration = {
            type = "structure",
        },
        overflowBehavior = {
            type = "string",
        },
        vpcConfig = {
            type = "structure",
        },
        proxyConfiguration = {
            type = "structure",
        },
        imageId = {
            type = "string",
        },
        fleetServiceRole = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateFleetOutput = {
    type = "structure",
    members = {
        fleet = {
            type = "structure",
        },
    },
}

M.UpdateProjectInput = {
    type = "structure",
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
        source = {
            type = "structure",
        },
        secondarySources = {
            type = "list",
            member_type = "structure",
        },
        sourceVersion = {
            type = "string",
        },
        secondarySourceVersions = {
            type = "list",
            member_type = "structure",
        },
        artifacts = {
            type = "structure",
        },
        secondaryArtifacts = {
            type = "list",
            member_type = "structure",
        },
        cache = {
            type = "structure",
        },
        environment = {
            type = "structure",
        },
        serviceRole = {
            type = "string",
        },
        timeoutInMinutes = {
            type = "number",
        },
        queuedTimeoutInMinutes = {
            type = "number",
        },
        encryptionKey = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        vpcConfig = {
            type = "structure",
        },
        badgeEnabled = {
            type = "boolean",
        },
        logsConfig = {
            type = "structure",
        },
        fileSystemLocations = {
            type = "list",
            member_type = "structure",
        },
        buildBatchConfig = {
            type = "structure",
        },
        concurrentBuildLimit = {
            type = "number",
        },
        autoRetryLimit = {
            type = "number",
        },
    },
}

M.UpdateProjectOutput = {
    type = "structure",
    members = {
        project = {
            type = "structure",
        },
    },
}

M.UpdateProjectVisibilityInput = {
    type = "structure",
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
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        exportConfig = {
            type = "structure",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateReportGroupOutput = {
    type = "structure",
    members = {
        reportGroup = {
            type = "structure",
        },
    },
}

M.UpdateWebhookInput = {
    type = "structure",
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
        },
        filterGroups = {
            type = "list",
            member_type = "list",
        },
        buildType = {
            type = "string",
        },
        pullRequestBuildPolicy = {
            type = "structure",
        },
    },
}

M.UpdateWebhookOutput = {
    type = "structure",
    members = {
        webhook = {
            type = "structure",
        },
    },
}

return M
