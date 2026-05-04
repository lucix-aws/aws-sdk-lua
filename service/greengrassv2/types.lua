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

M.AssociateClientDeviceWithCoreDeviceEntry = {
    type = "structure",
    members = {
        thingName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateClientDeviceWithCoreDeviceErrorEntry = {
    type = "structure",
    members = {
        thingName = {
            type = "string",
        },
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.AssociatedClientDevice = {
    type = "structure",
    members = {
        thingName = {
            type = "string",
        },
        associationTimestamp = {
            type = "timestamp",
        },
    },
}

M.AssociateServiceRoleToAccountInput = {
    type = "structure",
    members = {
        roleArn = {
            type = "string",
            traits = {
                json_name = "RoleArn",
                required = true,
            },
        },
    },
}

M.AssociateServiceRoleToAccountOutput = {
    type = "structure",
    members = {
        associatedAt = {
            type = "string",
            traits = {
                json_name = "AssociatedAt",
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retryAfterSeconds = {
            type = "integer",
            traits = {
                default = 0,
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
    UNKNOWN_OPERATION = "UNKNOWN_OPERATION",
    CANNOT_PARSE = "CANNOT_PARSE",
    FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED",
    OTHER = "OTHER",
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
        reason = {
            type = "string",
        },
        fields = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.BatchAssociateClientDeviceWithCoreDeviceInput = {
    type = "structure",
    members = {
        entries = {
            type = "list",
            member = M.AssociateClientDeviceWithCoreDeviceEntry,
        },
        coreDeviceThingName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.BatchAssociateClientDeviceWithCoreDeviceOutput = {
    type = "structure",
    members = {
        errorEntries = {
            type = "list",
            member = M.AssociateClientDeviceWithCoreDeviceErrorEntry,
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
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
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
        quotaCode = {
            type = "string",
        },
        serviceCode = {
            type = "string",
        },
        retryAfterSeconds = {
            type = "integer",
            traits = {
                default = 0,
                http_header = "Retry-After",
            },
        },
    },
}

M.DisassociateClientDeviceFromCoreDeviceEntry = {
    type = "structure",
    members = {
        thingName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDisassociateClientDeviceFromCoreDeviceInput = {
    type = "structure",
    members = {
        entries = {
            type = "list",
            member = M.DisassociateClientDeviceFromCoreDeviceEntry,
        },
        coreDeviceThingName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateClientDeviceFromCoreDeviceErrorEntry = {
    type = "structure",
    members = {
        thingName = {
            type = "string",
        },
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.BatchDisassociateClientDeviceFromCoreDeviceOutput = {
    type = "structure",
    members = {
        errorEntries = {
            type = "list",
            member = M.DisassociateClientDeviceFromCoreDeviceErrorEntry,
        },
    },
}

M.CancelDeploymentInput = {
    type = "structure",
    members = {
        deploymentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CancelDeploymentOutput = {
    type = "structure",
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
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CloudComponentState = {
    REQUESTED = "REQUESTED",
    INITIATED = "INITIATED",
    DEPLOYABLE = "DEPLOYABLE",
    FAILED = "FAILED",
    DEPRECATED = "DEPRECATED",
}

M.VendorGuidance = {
    ACTIVE = "ACTIVE",
    DISCONTINUED = "DISCONTINUED",
    DELETED = "DELETED",
}

M.CloudComponentStatus = {
    type = "structure",
    members = {
        componentState = {
            type = "string",
        },
        message = {
            type = "string",
        },
        errors = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        vendorGuidance = {
            type = "string",
        },
        vendorGuidanceMessage = {
            type = "string",
        },
    },
}

M.ComponentPlatform = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ComponentLatestVersion = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        componentVersion = {
            type = "string",
        },
        creationTimestamp = {
            type = "timestamp",
        },
        description = {
            type = "string",
        },
        publisher = {
            type = "string",
        },
        platforms = {
            type = "list",
            member = M.ComponentPlatform,
        },
    },
}

M.Component = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        componentName = {
            type = "string",
        },
        latestVersion = M.ComponentLatestVersion,
    },
}

M.ComponentCandidate = {
    type = "structure",
    members = {
        componentName = {
            type = "string",
        },
        componentVersion = {
            type = "string",
        },
        versionRequirements = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ComponentConfigurationUpdate = {
    type = "structure",
    members = {
        merge = {
            type = "string",
        },
        reset = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ComponentDependencyType = {
    HARD = "HARD",
    SOFT = "SOFT",
}

M.ComponentDependencyRequirement = {
    type = "structure",
    members = {
        versionRequirement = {
            type = "string",
        },
        dependencyType = {
            type = "string",
        },
    },
}

M.SystemResourceLimits = {
    type = "structure",
    members = {
        memory = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        cpus = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.ComponentRunWith = {
    type = "structure",
    members = {
        posixUser = {
            type = "string",
        },
        systemResourceLimits = M.SystemResourceLimits,
        windowsUser = {
            type = "string",
        },
    },
}

M.ComponentDeploymentSpecification = {
    type = "structure",
    members = {
        componentVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configurationUpdate = M.ComponentConfigurationUpdate,
        runWith = M.ComponentRunWith,
    },
}

M.ComponentVersionListItem = {
    type = "structure",
    members = {
        componentName = {
            type = "string",
        },
        componentVersion = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.ComponentVisibilityScope = {
    PRIVATE = "PRIVATE",
    PUBLIC = "PUBLIC",
}

M.ConnectivityInfo = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                json_name = "Id",
            },
        },
        hostAddress = {
            type = "string",
            traits = {
                json_name = "HostAddress",
            },
        },
        portNumber = {
            type = "integer",
            traits = {
                default = 0,
                json_name = "PortNumber",
            },
        },
        metadata = {
            type = "string",
            traits = {
                json_name = "Metadata",
            },
        },
    },
}

M.CoreDeviceStatus = {
    HEALTHY = "HEALTHY",
    UNHEALTHY = "UNHEALTHY",
}

M.CoreDevice = {
    type = "structure",
    members = {
        coreDeviceThingName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        lastStatusUpdateTimestamp = {
            type = "timestamp",
        },
        platform = {
            type = "string",
        },
        architecture = {
            type = "string",
        },
        runtime = {
            type = "string",
        },
    },
}

M.LambdaEventSourceType = {
    PUB_SUB = "PUB_SUB",
    IOT_CORE = "IOT_CORE",
}

M.LambdaEventSource = {
    type = "structure",
    members = {
        topic = {
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

M.LambdaInputPayloadEncodingType = {
    JSON = "json",
    BINARY = "binary",
}

M.LambdaFilesystemPermission = {
    RO = "ro",
    RW = "rw",
}

M.LambdaDeviceMount = {
    type = "structure",
    members = {
        path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        permission = {
            type = "string",
        },
        addGroupOwner = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.LambdaVolumeMount = {
    type = "structure",
    members = {
        sourcePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        permission = {
            type = "string",
        },
        addGroupOwner = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.LambdaContainerParams = {
    type = "structure",
    members = {
        memorySizeInKB = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        mountROSysfs = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        volumes = {
            type = "list",
            member = M.LambdaVolumeMount,
        },
        devices = {
            type = "list",
            member = M.LambdaDeviceMount,
        },
    },
}

M.LambdaIsolationMode = {
    GREENGRASS_CONTAINER = "GreengrassContainer",
    NO_CONTAINER = "NoContainer",
}

M.LambdaLinuxProcessParams = {
    type = "structure",
    members = {
        isolationMode = {
            type = "string",
        },
        containerParams = M.LambdaContainerParams,
    },
}

M.LambdaExecutionParameters = {
    type = "structure",
    members = {
        eventSources = {
            type = "list",
            member = M.LambdaEventSource,
        },
        maxQueueSize = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        maxInstancesCount = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        maxIdleTimeInSeconds = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        timeoutInSeconds = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        statusTimeoutInSeconds = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        pinned = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        inputPayloadEncodingType = {
            type = "string",
        },
        execArgs = {
            type = "list",
            member = { type = "string" },
        },
        environmentVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        linuxProcessParams = M.LambdaLinuxProcessParams,
    },
}

M.LambdaFunctionRecipeSource = {
    type = "structure",
    members = {
        lambdaArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        componentName = {
            type = "string",
        },
        componentVersion = {
            type = "string",
        },
        componentPlatforms = {
            type = "list",
            member = M.ComponentPlatform,
        },
        componentDependencies = {
            type = "map",
            key = { type = "string" },
            value = M.ComponentDependencyRequirement,
        },
        componentLambdaParameters = M.LambdaExecutionParameters,
    },
}

M.CreateComponentVersionInput = {
    type = "structure",
    members = {
        inlineRecipe = {
            type = "blob",
        },
        lambdaFunction = M.LambdaFunctionRecipeSource,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.CreateComponentVersionOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        componentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        componentVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CloudComponentStatus }),
    },
}

M.RequestAlreadyInProgressException = {
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
        resourceId = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        quotaCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeploymentComponentUpdatePolicyAction = {
    NOTIFY_COMPONENTS = "NOTIFY_COMPONENTS",
    SKIP_NOTIFY_COMPONENTS = "SKIP_NOTIFY_COMPONENTS",
}

M.DeploymentComponentUpdatePolicy = {
    type = "structure",
    members = {
        timeoutInSeconds = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        action = {
            type = "string",
        },
    },
}

M.DeploymentConfigurationValidationPolicy = {
    type = "structure",
    members = {
        timeoutInSeconds = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
    },
}

M.DeploymentFailureHandlingPolicy = {
    ROLLBACK = "ROLLBACK",
    DO_NOTHING = "DO_NOTHING",
}

M.DeploymentPolicies = {
    type = "structure",
    members = {
        failureHandlingPolicy = {
            type = "string",
        },
        componentUpdatePolicy = M.DeploymentComponentUpdatePolicy,
        configurationValidationPolicy = M.DeploymentConfigurationValidationPolicy,
    },
}

M.IoTJobAbortAction = {
    CANCEL = "CANCEL",
}

M.IoTJobExecutionFailureType = {
    FAILED = "FAILED",
    REJECTED = "REJECTED",
    TIMED_OUT = "TIMED_OUT",
    ALL = "ALL",
}

M.IoTJobAbortCriteria = {
    type = "structure",
    members = {
        failureType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        thresholdPercentage = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
        minNumberOfExecutedThings = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.IoTJobAbortConfig = {
    type = "structure",
    members = {
        criteriaList = {
            type = "list",
            member = M.IoTJobAbortCriteria,
            traits = {
                required = true,
            },
        },
    },
}

M.IoTJobRateIncreaseCriteria = {
    type = "structure",
    members = {
        numberOfNotifiedThings = {
            type = "integer",
        },
        numberOfSucceededThings = {
            type = "integer",
        },
    },
}

M.IoTJobExponentialRolloutRate = {
    type = "structure",
    members = {
        baseRatePerMinute = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        incrementFactor = {
            type = "double",
            traits = {
                required = true,
            },
        },
        rateIncreaseCriteria = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IoTJobRateIncreaseCriteria }),
    },
}

M.IoTJobExecutionsRolloutConfig = {
    type = "structure",
    members = {
        exponentialRate = M.IoTJobExponentialRolloutRate,
        maximumPerMinute = {
            type = "integer",
        },
    },
}

M.IoTJobTimeoutConfig = {
    type = "structure",
    members = {
        inProgressTimeoutInMinutes = {
            type = "long",
            traits = {
                default = nil,
            },
        },
    },
}

M.DeploymentIoTJobConfiguration = {
    type = "structure",
    members = {
        jobExecutionsRolloutConfig = M.IoTJobExecutionsRolloutConfig,
        abortConfig = M.IoTJobAbortConfig,
        timeoutConfig = M.IoTJobTimeoutConfig,
    },
}

M.CreateDeploymentInput = {
    type = "structure",
    members = {
        targetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deploymentName = {
            type = "string",
        },
        components = {
            type = "map",
            key = { type = "string" },
            value = M.ComponentDeploymentSpecification,
        },
        iotJobConfiguration = M.DeploymentIoTJobConfiguration,
        deploymentPolicies = M.DeploymentPolicies,
        parentTargetArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.CreateDeploymentOutput = {
    type = "structure",
    members = {
        deploymentId = {
            type = "string",
        },
        iotJobId = {
            type = "string",
        },
        iotJobArn = {
            type = "string",
        },
    },
}

M.DeleteComponentInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteComponentOutput = {
    type = "structure",
}

M.DeleteCoreDeviceInput = {
    type = "structure",
    members = {
        coreDeviceThingName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCoreDeviceOutput = {
    type = "structure",
}

M.DeleteDeploymentInput = {
    type = "structure",
    members = {
        deploymentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDeploymentOutput = {
    type = "structure",
}

M.DeploymentStatus = {
    ACTIVE = "ACTIVE",
    COMPLETED = "COMPLETED",
    CANCELED = "CANCELED",
    FAILED = "FAILED",
    INACTIVE = "INACTIVE",
}

M.Deployment = {
    type = "structure",
    members = {
        targetArn = {
            type = "string",
        },
        revisionId = {
            type = "string",
        },
        deploymentId = {
            type = "string",
        },
        deploymentName = {
            type = "string",
        },
        creationTimestamp = {
            type = "timestamp",
        },
        deploymentStatus = {
            type = "string",
        },
        isLatestForTarget = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        parentTargetArn = {
            type = "string",
        },
    },
}

M.DeploymentHistoryFilter = {
    ALL = "ALL",
    LATEST_ONLY = "LATEST_ONLY",
}

M.DescribeComponentInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeComponentOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        componentName = {
            type = "string",
        },
        componentVersion = {
            type = "string",
        },
        creationTimestamp = {
            type = "timestamp",
        },
        publisher = {
            type = "string",
        },
        description = {
            type = "string",
        },
        status = M.CloudComponentStatus,
        platforms = {
            type = "list",
            member = M.ComponentPlatform,
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DisassociateServiceRoleFromAccountInput = {
    type = "structure",
}

M.DisassociateServiceRoleFromAccountOutput = {
    type = "structure",
    members = {
        disassociatedAt = {
            type = "string",
            traits = {
                json_name = "DisassociatedAt",
            },
        },
    },
}

M.EffectiveDeploymentExecutionStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    QUEUED = "QUEUED",
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
    TIMED_OUT = "TIMED_OUT",
    CANCELED = "CANCELED",
    REJECTED = "REJECTED",
    SUCCEEDED = "SUCCEEDED",
}

M.EffectiveDeploymentStatusDetails = {
    type = "structure",
    members = {
        errorStack = {
            type = "list",
            member = { type = "string" },
        },
        errorTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.EffectiveDeployment = {
    type = "structure",
    members = {
        deploymentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deploymentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        iotJobId = {
            type = "string",
        },
        iotJobArn = {
            type = "string",
        },
        description = {
            type = "string",
        },
        targetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        coreDeviceExecutionStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
        },
        creationTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        modifiedTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        statusDetails = M.EffectiveDeploymentStatusDetails,
    },
}

M.RecipeOutputFormat = {
    JSON = "JSON",
    YAML = "YAML",
}

M.GetComponentInput = {
    type = "structure",
    members = {
        recipeOutputFormat = {
            type = "string",
            traits = {
                http_query = "recipeOutputFormat",
            },
        },
        arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetComponentOutput = {
    type = "structure",
    members = {
        recipeOutputFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recipe = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.IotEndpointType = {
    fips = "fips",
    standard = "standard",
}

M.S3EndpointType = {
    REGIONAL = "REGIONAL",
    GLOBAL = "GLOBAL",
}

M.GetComponentVersionArtifactInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        artifactName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        s3EndpointType = {
            type = "string",
            traits = {
                http_query = "s3EndpointType",
            },
        },
        iotEndpointType = {
            type = "string",
            traits = {
                http_header = "x-amz-iot-endpoint-type",
            },
        },
    },
}

M.GetComponentVersionArtifactOutput = {
    type = "structure",
    members = {
        preSignedUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetConnectivityInfoInput = {
    type = "structure",
    members = {
        thingName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetConnectivityInfoOutput = {
    type = "structure",
    members = {
        connectivityInfo = {
            type = "list",
            member = M.ConnectivityInfo,
            traits = {
                json_name = "ConnectivityInfo",
            },
        },
        message = {
            type = "string",
            traits = {
                json_name = "Message",
            },
        },
    },
}

M.GetCoreDeviceInput = {
    type = "structure",
    members = {
        coreDeviceThingName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCoreDeviceOutput = {
    type = "structure",
    members = {
        coreDeviceThingName = {
            type = "string",
        },
        coreVersion = {
            type = "string",
        },
        platform = {
            type = "string",
        },
        architecture = {
            type = "string",
        },
        runtime = {
            type = "string",
        },
        status = {
            type = "string",
        },
        lastStatusUpdateTimestamp = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetDeploymentInput = {
    type = "structure",
    members = {
        deploymentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDeploymentOutput = {
    type = "structure",
    members = {
        targetArn = {
            type = "string",
        },
        revisionId = {
            type = "string",
        },
        deploymentId = {
            type = "string",
        },
        deploymentName = {
            type = "string",
        },
        deploymentStatus = {
            type = "string",
        },
        iotJobId = {
            type = "string",
        },
        iotJobArn = {
            type = "string",
        },
        components = {
            type = "map",
            key = { type = "string" },
            value = M.ComponentDeploymentSpecification,
        },
        deploymentPolicies = M.DeploymentPolicies,
        iotJobConfiguration = M.DeploymentIoTJobConfiguration,
        creationTimestamp = {
            type = "timestamp",
        },
        isLatestForTarget = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        parentTargetArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetServiceRoleForAccountInput = {
    type = "structure",
}

M.GetServiceRoleForAccountOutput = {
    type = "structure",
    members = {
        associatedAt = {
            type = "string",
            traits = {
                json_name = "AssociatedAt",
            },
        },
        roleArn = {
            type = "string",
            traits = {
                json_name = "RoleArn",
            },
        },
    },
}

M.ListClientDevicesAssociatedWithCoreDeviceInput = {
    type = "structure",
    members = {
        coreDeviceThingName = {
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
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListClientDevicesAssociatedWithCoreDeviceOutput = {
    type = "structure",
    members = {
        associatedClientDevices = {
            type = "list",
            member = M.AssociatedClientDevice,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListComponentsInput = {
    type = "structure",
    members = {
        scope = {
            type = "string",
            traits = {
                http_query = "scope",
            },
        },
        maxResults = {
            type = "integer",
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

M.ListComponentsOutput = {
    type = "structure",
    members = {
        components = {
            type = "list",
            member = M.Component,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListComponentVersionsInput = {
    type = "structure",
    members = {
        arn = {
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
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListComponentVersionsOutput = {
    type = "structure",
    members = {
        componentVersions = {
            type = "list",
            member = M.ComponentVersionListItem,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListCoreDevicesInput = {
    type = "structure",
    members = {
        thingGroupArn = {
            type = "string",
            traits = {
                http_query = "thingGroupArn",
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        maxResults = {
            type = "integer",
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
        runtime = {
            type = "string",
            traits = {
                http_query = "runtime",
            },
        },
    },
}

M.ListCoreDevicesOutput = {
    type = "structure",
    members = {
        coreDevices = {
            type = "list",
            member = M.CoreDevice,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDeploymentsInput = {
    type = "structure",
    members = {
        targetArn = {
            type = "string",
            traits = {
                http_query = "targetArn",
            },
        },
        historyFilter = {
            type = "string",
            traits = {
                http_query = "historyFilter",
            },
        },
        parentTargetArn = {
            type = "string",
            traits = {
                http_query = "parentTargetArn",
            },
        },
        maxResults = {
            type = "integer",
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

M.ListDeploymentsOutput = {
    type = "structure",
    members = {
        deployments = {
            type = "list",
            member = M.Deployment,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListEffectiveDeploymentsInput = {
    type = "structure",
    members = {
        coreDeviceThingName = {
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
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListEffectiveDeploymentsOutput = {
    type = "structure",
    members = {
        effectiveDeployments = {
            type = "list",
            member = M.EffectiveDeployment,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.InstalledComponentTopologyFilter = {
    ALL = "ALL",
    ROOT = "ROOT",
}

M.ListInstalledComponentsInput = {
    type = "structure",
    members = {
        coreDeviceThingName = {
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
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        topologyFilter = {
            type = "string",
            traits = {
                http_query = "topologyFilter",
            },
        },
    },
}

M.InstalledComponentLifecycleState = {
    NEW = "NEW",
    INSTALLED = "INSTALLED",
    STARTING = "STARTING",
    RUNNING = "RUNNING",
    STOPPING = "STOPPING",
    ERRORED = "ERRORED",
    BROKEN = "BROKEN",
    FINISHED = "FINISHED",
}

M.InstalledComponent = {
    type = "structure",
    members = {
        componentName = {
            type = "string",
        },
        componentVersion = {
            type = "string",
        },
        lifecycleState = {
            type = "string",
        },
        lifecycleStateDetails = {
            type = "string",
        },
        isRoot = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        lastStatusChangeTimestamp = {
            type = "timestamp",
        },
        lastReportedTimestamp = {
            type = "timestamp",
        },
        lastInstallationSource = {
            type = "string",
        },
        lifecycleStatusCodes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListInstalledComponentsOutput = {
    type = "structure",
    members = {
        installedComponents = {
            type = "list",
            member = M.InstalledComponent,
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
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ResolveComponentCandidatesInput = {
    type = "structure",
    members = {
        platform = M.ComponentPlatform,
        componentCandidates = {
            type = "list",
            member = M.ComponentCandidate,
        },
    },
}

M.ResolvedComponentVersion = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        componentName = {
            type = "string",
        },
        componentVersion = {
            type = "string",
        },
        recipe = {
            type = "blob",
        },
        vendorGuidance = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.ResolveComponentCandidatesOutput = {
    type = "structure",
    members = {
        resolvedComponentVersions = {
            type = "list",
            member = M.ResolvedComponentVersion,
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
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member = { type = "string" },
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

M.UpdateConnectivityInfoInput = {
    type = "structure",
    members = {
        thingName = {
            type = "string",
            traits = {
                http_label = true,
                json_name = "ThingName",
                required = true,
            },
        },
        connectivityInfo = {
            type = "list",
            member = M.ConnectivityInfo,
            traits = {
                json_name = "ConnectivityInfo",
                required = true,
            },
        },
    },
}

M.UpdateConnectivityInfoOutput = {
    type = "structure",
    members = {
        version = {
            type = "string",
            traits = {
                json_name = "Version",
            },
        },
        message = {
            type = "string",
            traits = {
                json_name = "Message",
            },
        },
    },
}

return M
