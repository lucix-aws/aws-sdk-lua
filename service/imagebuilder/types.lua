local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SeverityCounts = {
    type = "structure",
    members = {
        all = {
            type = "long",
        },
        critical = {
            type = "long",
        },
        high = {
            type = "long",
        },
        medium = {
            type = "long",
        },
    },
}

M.AccountAggregation = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
        },
        severityCounts = M.SeverityCounts,
    },
}

M.SystemsManagerAgent = {
    type = "structure",
    members = {
        uninstallAfterBuild = {
            type = "boolean",
        },
    },
}

M.AdditionalInstanceConfiguration = {
    type = "structure",
    members = {
        systemsManagerAgent = M.SystemsManagerAgent,
        userDataOverride = {
            type = "string",
        },
    },
}

M.ImageStatus = {
    PENDING = "PENDING",
    CREATING = "CREATING",
    BUILDING = "BUILDING",
    TESTING = "TESTING",
    DISTRIBUTING = "DISTRIBUTING",
    INTEGRATING = "INTEGRATING",
    AVAILABLE = "AVAILABLE",
    CANCELLED = "CANCELLED",
    FAILED = "FAILED",
    DEPRECATED = "DEPRECATED",
    DELETED = "DELETED",
    DISABLED = "DISABLED",
}

M.ImageState = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        reason = {
            type = "string",
        },
    },
}

M.Ami = {
    type = "structure",
    members = {
        region = {
            type = "string",
        },
        image = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        state = M.ImageState,
        accountId = {
            type = "string",
        },
    },
}

M.LaunchPermissionConfiguration = {
    type = "structure",
    members = {
        userIds = {
            type = "list",
            member = { type = "string" },
        },
        userGroups = {
            type = "list",
            member = { type = "string" },
        },
        organizationArns = {
            type = "list",
            member = { type = "string" },
        },
        organizationalUnitArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AmiDistributionConfiguration = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        targetAccountIds = {
            type = "list",
            member = { type = "string" },
        },
        amiTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        kmsKeyId = {
            type = "string",
        },
        launchPermission = M.LaunchPermissionConfiguration,
    },
}

M.AutoDisablePolicy = {
    type = "structure",
    members = {
        failureCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.BuildType = {
    USER_INITIATED = "USER_INITIATED",
    SCHEDULED = "SCHEDULED",
    IMPORT = "IMPORT",
    IMPORT_ISO = "IMPORT_ISO",
}

M.CallRateLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CancelImageCreationInput = {
    type = "structure",
    members = {
        imageBuildVersionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.CancelImageCreationOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
        imageBuildVersionArn = {
            type = "string",
        },
    },
}

M.ClientException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ForbiddenException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IdempotentParameterMismatchException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceInUseException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CancelLifecycleExecutionInput = {
    type = "structure",
    members = {
        lifecycleExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.CancelLifecycleExecutionOutput = {
    type = "structure",
    members = {
        lifecycleExecutionId = {
            type = "string",
        },
    },
}

M.ComponentParameterDetail = {
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
        defaultValue = {
            type = "list",
            member = { type = "string" },
        },
        description = {
            type = "string",
        },
    },
}

M.Platform = {
    WINDOWS = "Windows",
    LINUX = "Linux",
    MACOS = "macOS",
}

M.ProductCodeType = {
    MARKETPLACE = "marketplace",
}

M.ProductCodeListItem = {
    type = "structure",
    members = {
        productCodeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        productCodeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ComponentStatus = {
    DEPRECATED = "DEPRECATED",
    DISABLED = "DISABLED",
    ACTIVE = "ACTIVE",
}

M.ComponentState = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        reason = {
            type = "string",
        },
    },
}

M.ComponentType = {
    BUILD = "BUILD",
    TEST = "TEST",
}

M.Component = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        version = {
            type = "string",
        },
        description = {
            type = "string",
        },
        changeDescription = {
            type = "string",
        },
        type = {
            type = "string",
        },
        platform = {
            type = "string",
        },
        supportedOsVersions = {
            type = "list",
            member = { type = "string" },
        },
        state = M.ComponentState,
        parameters = {
            type = "list",
            member = M.ComponentParameterDetail,
        },
        owner = {
            type = "string",
        },
        data = {
            type = "string",
        },
        kmsKeyId = {
            type = "string",
        },
        encrypted = {
            type = "boolean",
        },
        dateCreated = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        publisher = {
            type = "string",
        },
        obfuscate = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        productCodes = {
            type = "list",
            member = M.ProductCodeListItem,
        },
    },
}

M.ComponentParameter = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ComponentConfiguration = {
    type = "structure",
    members = {
        componentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameters = {
            type = "list",
            member = M.ComponentParameter,
        },
    },
}

M.ComponentFormat = {
    SHELL = "SHELL",
}

M.ComponentSummary = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        version = {
            type = "string",
        },
        platform = {
            type = "string",
        },
        supportedOsVersions = {
            type = "list",
            member = { type = "string" },
        },
        state = M.ComponentState,
        type = {
            type = "string",
        },
        owner = {
            type = "string",
        },
        description = {
            type = "string",
        },
        changeDescription = {
            type = "string",
        },
        dateCreated = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        publisher = {
            type = "string",
        },
        obfuscate = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ComponentVersion = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        version = {
            type = "string",
        },
        description = {
            type = "string",
        },
        platform = {
            type = "string",
        },
        supportedOsVersions = {
            type = "list",
            member = { type = "string" },
        },
        type = {
            type = "string",
        },
        owner = {
            type = "string",
        },
        dateCreated = {
            type = "string",
        },
        status = {
            type = "string",
        },
        productCodes = {
            type = "list",
            member = M.ProductCodeListItem,
        },
    },
}

M.Container = {
    type = "structure",
    members = {
        region = {
            type = "string",
        },
        imageUris = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ContainerRepositoryService = {
    ECR = "ECR",
}

M.TargetContainerRepository = {
    type = "structure",
    members = {
        service = {
            type = "string",
            traits = {
                required = true,
            },
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ContainerDistributionConfiguration = {
    type = "structure",
    members = {
        description = {
            type = "string",
        },
        containerTags = {
            type = "list",
            member = { type = "string" },
        },
        targetRepository = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TargetContainerRepository }),
    },
}

M.ContainerType = {
    DOCKER = "DOCKER",
}

M.EbsVolumeType = {
    STANDARD = "standard",
    IO1 = "io1",
    IO2 = "io2",
    GP2 = "gp2",
    GP3 = "gp3",
    SC1 = "sc1",
    ST1 = "st1",
}

M.EbsInstanceBlockDeviceSpecification = {
    type = "structure",
    members = {
        encrypted = {
            type = "boolean",
        },
        deleteOnTermination = {
            type = "boolean",
        },
        iops = {
            type = "integer",
        },
        kmsKeyId = {
            type = "string",
        },
        snapshotId = {
            type = "string",
        },
        volumeSize = {
            type = "integer",
        },
        volumeType = {
            type = "string",
        },
        throughput = {
            type = "integer",
        },
    },
}

M.InstanceBlockDeviceMapping = {
    type = "structure",
    members = {
        deviceName = {
            type = "string",
        },
        ebs = M.EbsInstanceBlockDeviceSpecification,
        virtualName = {
            type = "string",
        },
        noDevice = {
            type = "string",
        },
    },
}

M.InstanceConfiguration = {
    type = "structure",
    members = {
        image = {
            type = "string",
        },
        blockDeviceMappings = {
            type = "list",
            member = M.InstanceBlockDeviceMapping,
        },
    },
}

M.ContainerRecipe = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        containerType = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        platform = {
            type = "string",
        },
        owner = {
            type = "string",
        },
        version = {
            type = "string",
        },
        components = {
            type = "list",
            member = M.ComponentConfiguration,
        },
        instanceConfiguration = M.InstanceConfiguration,
        dockerfileTemplateData = {
            type = "string",
        },
        kmsKeyId = {
            type = "string",
        },
        encrypted = {
            type = "boolean",
        },
        parentImage = {
            type = "string",
        },
        dateCreated = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        workingDirectory = {
            type = "string",
        },
        targetRepository = M.TargetContainerRepository,
    },
}

M.ContainerRecipeSummary = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        containerType = {
            type = "string",
        },
        name = {
            type = "string",
        },
        platform = {
            type = "string",
        },
        owner = {
            type = "string",
        },
        parentImage = {
            type = "string",
        },
        dateCreated = {
            type = "string",
        },
        instanceImage = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateComponentInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        semanticVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        changeDescription = {
            type = "string",
        },
        platform = {
            type = "string",
            traits = {
                required = true,
            },
        },
        supportedOsVersions = {
            type = "list",
            member = { type = "string" },
        },
        data = {
            type = "string",
        },
        uri = {
            type = "string",
        },
        kmsKeyId = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        dryRun = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.LatestVersionReferences = {
    type = "structure",
    members = {
        latestVersionArn = {
            type = "string",
        },
        latestMajorVersionArn = {
            type = "string",
        },
        latestMinorVersionArn = {
            type = "string",
        },
        latestPatchVersionArn = {
            type = "string",
        },
    },
}

M.CreateComponentOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
        componentBuildVersionArn = {
            type = "string",
        },
        latestVersionReferences = M.LatestVersionReferences,
    },
}

M.DryRunOperationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidParameterCombinationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidVersionNumberException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateContainerRecipeInput = {
    type = "structure",
    members = {
        containerType = {
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
        semanticVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        components = {
            type = "list",
            member = M.ComponentConfiguration,
        },
        instanceConfiguration = M.InstanceConfiguration,
        dockerfileTemplateData = {
            type = "string",
        },
        dockerfileTemplateUri = {
            type = "string",
        },
        platformOverride = {
            type = "string",
        },
        imageOsVersionOverride = {
            type = "string",
        },
        parentImage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        workingDirectory = {
            type = "string",
        },
        targetRepository = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TargetContainerRepository }),
        kmsKeyId = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.CreateContainerRecipeOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
        containerRecipeArn = {
            type = "string",
        },
        latestVersionReferences = M.LatestVersionReferences,
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

M.FastLaunchLaunchTemplateSpecification = {
    type = "structure",
    members = {
        launchTemplateId = {
            type = "string",
        },
        launchTemplateName = {
            type = "string",
        },
        launchTemplateVersion = {
            type = "string",
        },
    },
}

M.FastLaunchSnapshotConfiguration = {
    type = "structure",
    members = {
        targetResourceCount = {
            type = "integer",
        },
    },
}

M.FastLaunchConfiguration = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        snapshotConfiguration = M.FastLaunchSnapshotConfiguration,
        maxParallelLaunches = {
            type = "integer",
        },
        launchTemplate = M.FastLaunchLaunchTemplateSpecification,
        accountId = {
            type = "string",
        },
    },
}

M.LaunchTemplateConfiguration = {
    type = "structure",
    members = {
        launchTemplateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountId = {
            type = "string",
        },
        setDefaultVersion = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DiskImageFormat = {
    VMDK = "VMDK",
    RAW = "RAW",
    VHD = "VHD",
}

M.S3ExportConfiguration = {
    type = "structure",
    members = {
        roleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        diskImageFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3Prefix = {
            type = "string",
        },
    },
}

M.SsmParameterDataType = {
    TEXT = "text",
    AWS_EC2_IMAGE = "aws:ec2:image",
}

M.SsmParameterConfiguration = {
    type = "structure",
    members = {
        amiAccountId = {
            type = "string",
        },
        parameterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataType = {
            type = "string",
        },
    },
}

M.Distribution = {
    type = "structure",
    members = {
        region = {
            type = "string",
            traits = {
                required = true,
            },
        },
        amiDistributionConfiguration = M.AmiDistributionConfiguration,
        containerDistributionConfiguration = M.ContainerDistributionConfiguration,
        licenseConfigurationArns = {
            type = "list",
            member = { type = "string" },
        },
        launchTemplateConfigurations = {
            type = "list",
            member = M.LaunchTemplateConfiguration,
        },
        s3ExportConfiguration = M.S3ExportConfiguration,
        fastLaunchConfigurations = {
            type = "list",
            member = M.FastLaunchConfiguration,
        },
        ssmParameterConfigurations = {
            type = "list",
            member = M.SsmParameterConfiguration,
        },
    },
}

M.CreateDistributionConfigurationInput = {
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
        distributions = {
            type = "list",
            member = M.Distribution,
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.CreateDistributionConfigurationOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
        distributionConfigurationArn = {
            type = "string",
        },
    },
}

M.EcrConfiguration = {
    type = "structure",
    members = {
        repositoryName = {
            type = "string",
        },
        containerTags = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ImageScanningConfiguration = {
    type = "structure",
    members = {
        imageScanningEnabled = {
            type = "boolean",
        },
        ecrConfiguration = M.EcrConfiguration,
    },
}

M.ImageTestsConfiguration = {
    type = "structure",
    members = {
        imageTestsEnabled = {
            type = "boolean",
        },
        timeoutMinutes = {
            type = "integer",
        },
    },
}

M.ImageLoggingConfiguration = {
    type = "structure",
    members = {
        logGroupName = {
            type = "string",
        },
    },
}

M.OnWorkflowFailure = {
    CONTINUE = "CONTINUE",
    ABORT = "ABORT",
}

M.WorkflowParameter = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.WorkflowConfiguration = {
    type = "structure",
    members = {
        workflowArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameters = {
            type = "list",
            member = M.WorkflowParameter,
        },
        parallelGroup = {
            type = "string",
        },
        onFailure = {
            type = "string",
        },
    },
}

M.CreateImageInput = {
    type = "structure",
    members = {
        imageRecipeArn = {
            type = "string",
        },
        containerRecipeArn = {
            type = "string",
        },
        distributionConfigurationArn = {
            type = "string",
        },
        infrastructureConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imageTestsConfiguration = M.ImageTestsConfiguration,
        enhancedImageMetadataEnabled = {
            type = "boolean",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        imageScanningConfiguration = M.ImageScanningConfiguration,
        workflows = {
            type = "list",
            member = M.WorkflowConfiguration,
        },
        executionRole = {
            type = "string",
        },
        loggingConfiguration = M.ImageLoggingConfiguration,
    },
}

M.CreateImageOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
        imageBuildVersionArn = {
            type = "string",
        },
        latestVersionReferences = M.LatestVersionReferences,
    },
}

M.PipelineLoggingConfiguration = {
    type = "structure",
    members = {
        imageLogGroupName = {
            type = "string",
        },
        pipelineLogGroupName = {
            type = "string",
        },
    },
}

M.PipelineExecutionStartCondition = {
    EXPRESSION_MATCH_ONLY = "EXPRESSION_MATCH_ONLY",
    EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE = "EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE",
}

M.Schedule = {
    type = "structure",
    members = {
        scheduleExpression = {
            type = "string",
        },
        timezone = {
            type = "string",
        },
        pipelineExecutionStartCondition = {
            type = "string",
        },
        autoDisablePolicy = M.AutoDisablePolicy,
    },
}

M.PipelineStatus = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.CreateImagePipelineInput = {
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
        imageRecipeArn = {
            type = "string",
        },
        containerRecipeArn = {
            type = "string",
        },
        infrastructureConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        distributionConfigurationArn = {
            type = "string",
        },
        imageTestsConfiguration = M.ImageTestsConfiguration,
        enhancedImageMetadataEnabled = {
            type = "boolean",
        },
        schedule = M.Schedule,
        status = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        imageTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        imageScanningConfiguration = M.ImageScanningConfiguration,
        workflows = {
            type = "list",
            member = M.WorkflowConfiguration,
        },
        executionRole = {
            type = "string",
        },
        loggingConfiguration = M.PipelineLoggingConfiguration,
    },
}

M.CreateImagePipelineOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
        imagePipelineArn = {
            type = "string",
        },
    },
}

M.CreateImageRecipeInput = {
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
        semanticVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        components = {
            type = "list",
            member = M.ComponentConfiguration,
        },
        parentImage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        blockDeviceMappings = {
            type = "list",
            member = M.InstanceBlockDeviceMapping,
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        workingDirectory = {
            type = "string",
        },
        additionalInstanceConfiguration = M.AdditionalInstanceConfiguration,
        amiTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.CreateImageRecipeOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
        imageRecipeArn = {
            type = "string",
        },
        latestVersionReferences = M.LatestVersionReferences,
    },
}

M.InstanceMetadataOptions = {
    type = "structure",
    members = {
        httpTokens = {
            type = "string",
        },
        httpPutResponseHopLimit = {
            type = "integer",
        },
    },
}

M.S3Logs = {
    type = "structure",
    members = {
        s3BucketName = {
            type = "string",
        },
        s3KeyPrefix = {
            type = "string",
        },
    },
}

M.Logging = {
    type = "structure",
    members = {
        s3Logs = M.S3Logs,
    },
}

M.TenancyType = {
    DEFAULT = "default",
    DEDICATED = "dedicated",
    HOST = "host",
}

M.Placement = {
    type = "structure",
    members = {
        availabilityZone = {
            type = "string",
        },
        tenancy = {
            type = "string",
        },
        hostId = {
            type = "string",
        },
        hostResourceGroupArn = {
            type = "string",
        },
    },
}

M.CreateInfrastructureConfigurationInput = {
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
        instanceTypes = {
            type = "list",
            member = { type = "string" },
        },
        instanceProfileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        subnetId = {
            type = "string",
        },
        logging = M.Logging,
        keyPair = {
            type = "string",
        },
        terminateInstanceOnFailure = {
            type = "boolean",
        },
        snsTopicArn = {
            type = "string",
        },
        resourceTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        instanceMetadataOptions = M.InstanceMetadataOptions,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        placement = M.Placement,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.CreateInfrastructureConfigurationOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
        infrastructureConfigurationArn = {
            type = "string",
        },
    },
}

M.LifecyclePolicyDetailActionIncludeResources = {
    type = "structure",
    members = {
        amis = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        snapshots = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        containers = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.LifecyclePolicyDetailActionType = {
    DELETE = "DELETE",
    DEPRECATE = "DEPRECATE",
    DISABLE = "DISABLE",
}

M.LifecyclePolicyDetailAction = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        includeResources = M.LifecyclePolicyDetailActionIncludeResources,
    },
}

M.LifecyclePolicyTimeUnit = {
    DAYS = "DAYS",
    WEEKS = "WEEKS",
    MONTHS = "MONTHS",
    YEARS = "YEARS",
}

M.LifecyclePolicyDetailExclusionRulesAmisLastLaunched = {
    type = "structure",
    members = {
        value = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LifecyclePolicyDetailExclusionRulesAmis = {
    type = "structure",
    members = {
        isPublic = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        regions = {
            type = "list",
            member = { type = "string" },
        },
        sharedAccounts = {
            type = "list",
            member = { type = "string" },
        },
        lastLaunched = M.LifecyclePolicyDetailExclusionRulesAmisLastLaunched,
        tagMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.LifecyclePolicyDetailExclusionRules = {
    type = "structure",
    members = {
        tagMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        amis = M.LifecyclePolicyDetailExclusionRulesAmis,
    },
}

M.LifecyclePolicyDetailFilterType = {
    AGE = "AGE",
    COUNT = "COUNT",
}

M.LifecyclePolicyDetailFilter = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        unit = {
            type = "string",
        },
        retainAtLeast = {
            type = "integer",
        },
    },
}

M.LifecyclePolicyDetail = {
    type = "structure",
    members = {
        action = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LifecyclePolicyDetailAction }),
        filter = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LifecyclePolicyDetailFilter }),
        exclusionRules = M.LifecyclePolicyDetailExclusionRules,
    },
}

M.LifecyclePolicyResourceSelectionRecipe = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        semanticVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LifecyclePolicyResourceSelection = {
    type = "structure",
    members = {
        recipes = {
            type = "list",
            member = M.LifecyclePolicyResourceSelectionRecipe,
        },
        tagMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.LifecyclePolicyResourceType = {
    AMI_IMAGE = "AMI_IMAGE",
    CONTAINER_IMAGE = "CONTAINER_IMAGE",
}

M.LifecyclePolicyStatus = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.CreateLifecyclePolicyInput = {
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
        status = {
            type = "string",
        },
        executionRole = {
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
        policyDetails = {
            type = "list",
            member = M.LifecyclePolicyDetail,
            traits = {
                required = true,
            },
        },
        resourceSelection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LifecyclePolicyResourceSelection }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.CreateLifecyclePolicyOutput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
        },
        lifecyclePolicyArn = {
            type = "string",
        },
    },
}

M.WorkflowType = {
    BUILD = "BUILD",
    TEST = "TEST",
    DISTRIBUTION = "DISTRIBUTION",
}

M.CreateWorkflowInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        semanticVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        changeDescription = {
            type = "string",
        },
        data = {
            type = "string",
        },
        uri = {
            type = "string",
        },
        kmsKeyId = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dryRun = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CreateWorkflowOutput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
        },
        workflowBuildVersionArn = {
            type = "string",
        },
        latestVersionReferences = M.LatestVersionReferences,
    },
}

M.CvssScore = {
    type = "structure",
    members = {
        baseScore = {
            type = "double",
        },
        scoringVector = {
            type = "string",
        },
        version = {
            type = "string",
        },
        source = {
            type = "string",
        },
    },
}

M.CvssScoreAdjustment = {
    type = "structure",
    members = {
        metric = {
            type = "string",
        },
        reason = {
            type = "string",
        },
    },
}

M.CvssScoreDetails = {
    type = "structure",
    members = {
        scoreSource = {
            type = "string",
        },
        cvssSource = {
            type = "string",
        },
        version = {
            type = "string",
        },
        score = {
            type = "double",
        },
        scoringVector = {
            type = "string",
        },
        adjustments = {
            type = "list",
            member = M.CvssScoreAdjustment,
        },
    },
}

M.DeleteComponentInput = {
    type = "structure",
    members = {
        componentBuildVersionArn = {
            type = "string",
            traits = {
                http_query = "componentBuildVersionArn",
                required = true,
            },
        },
    },
}

M.DeleteComponentOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        componentBuildVersionArn = {
            type = "string",
        },
    },
}

M.ResourceDependencyException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteContainerRecipeInput = {
    type = "structure",
    members = {
        containerRecipeArn = {
            type = "string",
            traits = {
                http_query = "containerRecipeArn",
                required = true,
            },
        },
    },
}

M.DeleteContainerRecipeOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        containerRecipeArn = {
            type = "string",
        },
    },
}

M.DeleteDistributionConfigurationInput = {
    type = "structure",
    members = {
        distributionConfigurationArn = {
            type = "string",
            traits = {
                http_query = "distributionConfigurationArn",
                required = true,
            },
        },
    },
}

M.DeleteDistributionConfigurationOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        distributionConfigurationArn = {
            type = "string",
        },
    },
}

M.DeleteImageInput = {
    type = "structure",
    members = {
        imageBuildVersionArn = {
            type = "string",
            traits = {
                http_query = "imageBuildVersionArn",
                required = true,
            },
        },
    },
}

M.DeleteImageOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        imageBuildVersionArn = {
            type = "string",
        },
    },
}

M.DeleteImagePipelineInput = {
    type = "structure",
    members = {
        imagePipelineArn = {
            type = "string",
            traits = {
                http_query = "imagePipelineArn",
                required = true,
            },
        },
    },
}

M.DeleteImagePipelineOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        imagePipelineArn = {
            type = "string",
        },
    },
}

M.DeleteImageRecipeInput = {
    type = "structure",
    members = {
        imageRecipeArn = {
            type = "string",
            traits = {
                http_query = "imageRecipeArn",
                required = true,
            },
        },
    },
}

M.DeleteImageRecipeOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        imageRecipeArn = {
            type = "string",
        },
    },
}

M.DeleteInfrastructureConfigurationInput = {
    type = "structure",
    members = {
        infrastructureConfigurationArn = {
            type = "string",
            traits = {
                http_query = "infrastructureConfigurationArn",
                required = true,
            },
        },
    },
}

M.DeleteInfrastructureConfigurationOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        infrastructureConfigurationArn = {
            type = "string",
        },
    },
}

M.DeleteLifecyclePolicyInput = {
    type = "structure",
    members = {
        lifecyclePolicyArn = {
            type = "string",
            traits = {
                http_query = "lifecyclePolicyArn",
                required = true,
            },
        },
    },
}

M.DeleteLifecyclePolicyOutput = {
    type = "structure",
    members = {
        lifecyclePolicyArn = {
            type = "string",
        },
    },
}

M.DeleteWorkflowInput = {
    type = "structure",
    members = {
        workflowBuildVersionArn = {
            type = "string",
            traits = {
                http_query = "workflowBuildVersionArn",
                required = true,
            },
        },
    },
}

M.DeleteWorkflowOutput = {
    type = "structure",
    members = {
        workflowBuildVersionArn = {
            type = "string",
        },
    },
}

M.DistributeImageInput = {
    type = "structure",
    members = {
        sourceImage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        distributionConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        loggingConfiguration = M.ImageLoggingConfiguration,
    },
}

M.DistributeImageOutput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
        },
        imageBuildVersionArn = {
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

M.TooManyRequestsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DistributionConfiguration = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        distributions = {
            type = "list",
            member = M.Distribution,
        },
        timeoutMinutes = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        dateCreated = {
            type = "string",
        },
        dateUpdated = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DistributionConfigurationSummary = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        dateCreated = {
            type = "string",
        },
        dateUpdated = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        regions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.Filter = {
    type = "structure",
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

M.GetComponentInput = {
    type = "structure",
    members = {
        componentBuildVersionArn = {
            type = "string",
            traits = {
                http_query = "componentBuildVersionArn",
                required = true,
            },
        },
    },
}

M.GetComponentOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        component = M.Component,
        latestVersionReferences = M.LatestVersionReferences,
    },
}

M.GetComponentPolicyInput = {
    type = "structure",
    members = {
        componentArn = {
            type = "string",
            traits = {
                http_query = "componentArn",
                required = true,
            },
        },
    },
}

M.GetComponentPolicyOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        policy = {
            type = "string",
        },
    },
}

M.GetContainerRecipeInput = {
    type = "structure",
    members = {
        containerRecipeArn = {
            type = "string",
            traits = {
                http_query = "containerRecipeArn",
                required = true,
            },
        },
    },
}

M.GetContainerRecipeOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        containerRecipe = M.ContainerRecipe,
        latestVersionReferences = M.LatestVersionReferences,
    },
}

M.GetContainerRecipePolicyInput = {
    type = "structure",
    members = {
        containerRecipeArn = {
            type = "string",
            traits = {
                http_query = "containerRecipeArn",
                required = true,
            },
        },
    },
}

M.GetContainerRecipePolicyOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        policy = {
            type = "string",
        },
    },
}

M.GetDistributionConfigurationInput = {
    type = "structure",
    members = {
        distributionConfigurationArn = {
            type = "string",
            traits = {
                http_query = "distributionConfigurationArn",
                required = true,
            },
        },
    },
}

M.GetDistributionConfigurationOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        distributionConfiguration = M.DistributionConfiguration,
    },
}

M.GetImageInput = {
    type = "structure",
    members = {
        imageBuildVersionArn = {
            type = "string",
            traits = {
                http_query = "imageBuildVersionArn",
                required = true,
            },
        },
    },
}

M.ImageType = {
    AMI = "AMI",
    DOCKER = "DOCKER",
}

M.ImageRecipe = {
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
        description = {
            type = "string",
        },
        platform = {
            type = "string",
        },
        owner = {
            type = "string",
        },
        version = {
            type = "string",
        },
        components = {
            type = "list",
            member = M.ComponentConfiguration,
        },
        parentImage = {
            type = "string",
        },
        blockDeviceMappings = {
            type = "list",
            member = M.InstanceBlockDeviceMapping,
        },
        dateCreated = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        workingDirectory = {
            type = "string",
        },
        additionalInstanceConfiguration = M.AdditionalInstanceConfiguration,
        amiTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ImageSource = {
    AMAZON_MANAGED = "AMAZON_MANAGED",
    AWS_MARKETPLACE = "AWS_MARKETPLACE",
    IMPORTED = "IMPORTED",
    CUSTOM = "CUSTOM",
}

M.InfrastructureConfiguration = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        instanceTypes = {
            type = "list",
            member = { type = "string" },
        },
        instanceProfileName = {
            type = "string",
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        subnetId = {
            type = "string",
        },
        logging = M.Logging,
        keyPair = {
            type = "string",
        },
        terminateInstanceOnFailure = {
            type = "boolean",
        },
        snsTopicArn = {
            type = "string",
        },
        dateCreated = {
            type = "string",
        },
        dateUpdated = {
            type = "string",
        },
        resourceTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        instanceMetadataOptions = M.InstanceMetadataOptions,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        placement = M.Placement,
    },
}

M.OutputResources = {
    type = "structure",
    members = {
        amis = {
            type = "list",
            member = M.Ami,
        },
        containers = {
            type = "list",
            member = M.Container,
        },
    },
}

M.ImageScanStatus = {
    PENDING = "PENDING",
    SCANNING = "SCANNING",
    COLLECTING = "COLLECTING",
    COMPLETED = "COMPLETED",
    ABANDONED = "ABANDONED",
    FAILED = "FAILED",
    TIMED_OUT = "TIMED_OUT",
}

M.ImageScanState = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        reason = {
            type = "string",
        },
    },
}

M.Image = {
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
        version = {
            type = "string",
        },
        platform = {
            type = "string",
        },
        enhancedImageMetadataEnabled = {
            type = "boolean",
        },
        osVersion = {
            type = "string",
        },
        state = M.ImageState,
        imageRecipe = M.ImageRecipe,
        containerRecipe = M.ContainerRecipe,
        sourcePipelineName = {
            type = "string",
        },
        sourcePipelineArn = {
            type = "string",
        },
        infrastructureConfiguration = M.InfrastructureConfiguration,
        distributionConfiguration = M.DistributionConfiguration,
        imageTestsConfiguration = M.ImageTestsConfiguration,
        dateCreated = {
            type = "string",
        },
        outputResources = M.OutputResources,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        buildType = {
            type = "string",
        },
        imageSource = {
            type = "string",
        },
        scanState = M.ImageScanState,
        imageScanningConfiguration = M.ImageScanningConfiguration,
        deprecationTime = {
            type = "timestamp",
        },
        lifecycleExecutionId = {
            type = "string",
        },
        executionRole = {
            type = "string",
        },
        workflows = {
            type = "list",
            member = M.WorkflowConfiguration,
        },
        loggingConfiguration = M.ImageLoggingConfiguration,
    },
}

M.GetImageOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        image = M.Image,
        latestVersionReferences = M.LatestVersionReferences,
    },
}

M.GetImagePipelineInput = {
    type = "structure",
    members = {
        imagePipelineArn = {
            type = "string",
            traits = {
                http_query = "imagePipelineArn",
                required = true,
            },
        },
    },
}

M.ImagePipeline = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        platform = {
            type = "string",
        },
        enhancedImageMetadataEnabled = {
            type = "boolean",
        },
        imageRecipeArn = {
            type = "string",
        },
        containerRecipeArn = {
            type = "string",
        },
        infrastructureConfigurationArn = {
            type = "string",
        },
        distributionConfigurationArn = {
            type = "string",
        },
        imageTestsConfiguration = M.ImageTestsConfiguration,
        schedule = M.Schedule,
        status = {
            type = "string",
        },
        dateCreated = {
            type = "string",
        },
        dateUpdated = {
            type = "string",
        },
        dateLastRun = {
            type = "string",
        },
        lastRunStatus = {
            type = "string",
        },
        dateNextRun = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        imageScanningConfiguration = M.ImageScanningConfiguration,
        imageTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        executionRole = {
            type = "string",
        },
        workflows = {
            type = "list",
            member = M.WorkflowConfiguration,
        },
        loggingConfiguration = M.PipelineLoggingConfiguration,
        consecutiveFailures = {
            type = "integer",
        },
    },
}

M.GetImagePipelineOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        imagePipeline = M.ImagePipeline,
    },
}

M.GetImagePolicyInput = {
    type = "structure",
    members = {
        imageArn = {
            type = "string",
            traits = {
                http_query = "imageArn",
                required = true,
            },
        },
    },
}

M.GetImagePolicyOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        policy = {
            type = "string",
        },
    },
}

M.GetImageRecipeInput = {
    type = "structure",
    members = {
        imageRecipeArn = {
            type = "string",
            traits = {
                http_query = "imageRecipeArn",
                required = true,
            },
        },
    },
}

M.GetImageRecipeOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        imageRecipe = M.ImageRecipe,
        latestVersionReferences = M.LatestVersionReferences,
    },
}

M.GetImageRecipePolicyInput = {
    type = "structure",
    members = {
        imageRecipeArn = {
            type = "string",
            traits = {
                http_query = "imageRecipeArn",
                required = true,
            },
        },
    },
}

M.GetImageRecipePolicyOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        policy = {
            type = "string",
        },
    },
}

M.GetInfrastructureConfigurationInput = {
    type = "structure",
    members = {
        infrastructureConfigurationArn = {
            type = "string",
            traits = {
                http_query = "infrastructureConfigurationArn",
                required = true,
            },
        },
    },
}

M.GetInfrastructureConfigurationOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        infrastructureConfiguration = M.InfrastructureConfiguration,
    },
}

M.GetLifecycleExecutionInput = {
    type = "structure",
    members = {
        lifecycleExecutionId = {
            type = "string",
            traits = {
                http_query = "lifecycleExecutionId",
                required = true,
            },
        },
    },
}

M.LifecycleExecutionResourcesImpactedSummary = {
    type = "structure",
    members = {
        hasImpactedResources = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.LifecycleExecutionStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    CANCELLED = "CANCELLED",
    CANCELLING = "CANCELLING",
    FAILED = "FAILED",
    SUCCESS = "SUCCESS",
    PENDING = "PENDING",
}

M.LifecycleExecutionState = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        reason = {
            type = "string",
        },
    },
}

M.LifecycleExecution = {
    type = "structure",
    members = {
        lifecycleExecutionId = {
            type = "string",
        },
        lifecyclePolicyArn = {
            type = "string",
        },
        resourcesImpactedSummary = M.LifecycleExecutionResourcesImpactedSummary,
        state = M.LifecycleExecutionState,
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
    },
}

M.GetLifecycleExecutionOutput = {
    type = "structure",
    members = {
        lifecycleExecution = M.LifecycleExecution,
    },
}

M.GetLifecyclePolicyInput = {
    type = "structure",
    members = {
        lifecyclePolicyArn = {
            type = "string",
            traits = {
                http_query = "lifecyclePolicyArn",
                required = true,
            },
        },
    },
}

M.LifecyclePolicy = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
        },
        executionRole = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        policyDetails = {
            type = "list",
            member = M.LifecyclePolicyDetail,
        },
        resourceSelection = M.LifecyclePolicyResourceSelection,
        dateCreated = {
            type = "timestamp",
        },
        dateUpdated = {
            type = "timestamp",
        },
        dateLastRun = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetLifecyclePolicyOutput = {
    type = "structure",
    members = {
        lifecyclePolicy = M.LifecyclePolicy,
    },
}

M.MarketplaceResourceType = {
    COMPONENT_DATA = "COMPONENT_DATA",
    COMPONENT_ARTIFACT = "COMPONENT_ARTIFACT",
}

M.GetMarketplaceResourceInput = {
    type = "structure",
    members = {
        resourceType = {
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
        resourceLocation = {
            type = "string",
        },
    },
}

M.GetMarketplaceResourceOutput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
        },
        url = {
            type = "string",
        },
        data = {
            type = "string",
        },
    },
}

M.GetWorkflowInput = {
    type = "structure",
    members = {
        workflowBuildVersionArn = {
            type = "string",
            traits = {
                http_query = "workflowBuildVersionArn",
                required = true,
            },
        },
    },
}

M.WorkflowParameterDetail = {
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
        defaultValue = {
            type = "list",
            member = { type = "string" },
        },
        description = {
            type = "string",
        },
    },
}

M.WorkflowStatus = {
    DEPRECATED = "DEPRECATED",
}

M.WorkflowState = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        reason = {
            type = "string",
        },
    },
}

M.Workflow = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        version = {
            type = "string",
        },
        description = {
            type = "string",
        },
        changeDescription = {
            type = "string",
        },
        type = {
            type = "string",
        },
        state = M.WorkflowState,
        owner = {
            type = "string",
        },
        data = {
            type = "string",
        },
        kmsKeyId = {
            type = "string",
        },
        dateCreated = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        parameters = {
            type = "list",
            member = M.WorkflowParameterDetail,
        },
    },
}

M.GetWorkflowOutput = {
    type = "structure",
    members = {
        workflow = M.Workflow,
        latestVersionReferences = M.LatestVersionReferences,
    },
}

M.GetWorkflowExecutionInput = {
    type = "structure",
    members = {
        workflowExecutionId = {
            type = "string",
            traits = {
                http_query = "workflowExecutionId",
                required = true,
            },
        },
    },
}

M.WorkflowExecutionStatus = {
    PENDING = "PENDING",
    SKIPPED = "SKIPPED",
    RUNNING = "RUNNING",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    ROLLBACK_IN_PROGRESS = "ROLLBACK_IN_PROGRESS",
    ROLLBACK_COMPLETED = "ROLLBACK_COMPLETED",
    CANCELLED = "CANCELLED",
}

M.GetWorkflowExecutionOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        workflowBuildVersionArn = {
            type = "string",
        },
        workflowExecutionId = {
            type = "string",
        },
        imageBuildVersionArn = {
            type = "string",
        },
        type = {
            type = "string",
        },
        status = {
            type = "string",
        },
        message = {
            type = "string",
        },
        totalStepCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        totalStepsSucceeded = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        totalStepsFailed = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        totalStepsSkipped = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        startTime = {
            type = "string",
        },
        endTime = {
            type = "string",
        },
        parallelGroup = {
            type = "string",
        },
    },
}

M.GetWorkflowStepExecutionInput = {
    type = "structure",
    members = {
        stepExecutionId = {
            type = "string",
            traits = {
                http_query = "stepExecutionId",
                required = true,
            },
        },
    },
}

M.WorkflowStepExecutionRollbackStatus = {
    RUNNING = "RUNNING",
    COMPLETED = "COMPLETED",
    SKIPPED = "SKIPPED",
    FAILED = "FAILED",
}

M.WorkflowStepExecutionStatus = {
    PENDING = "PENDING",
    SKIPPED = "SKIPPED",
    RUNNING = "RUNNING",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    CANCELLED = "CANCELLED",
}

M.GetWorkflowStepExecutionOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        stepExecutionId = {
            type = "string",
        },
        workflowBuildVersionArn = {
            type = "string",
        },
        workflowExecutionId = {
            type = "string",
        },
        imageBuildVersionArn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        action = {
            type = "string",
        },
        status = {
            type = "string",
        },
        rollbackStatus = {
            type = "string",
        },
        message = {
            type = "string",
        },
        inputs = {
            type = "string",
        },
        outputs = {
            type = "string",
        },
        startTime = {
            type = "string",
        },
        endTime = {
            type = "string",
        },
        onFailure = {
            type = "string",
        },
        timeoutSeconds = {
            type = "integer",
        },
    },
}

M.ImageAggregation = {
    type = "structure",
    members = {
        imageBuildVersionArn = {
            type = "string",
        },
        severityCounts = M.SeverityCounts,
    },
}

M.ImportComponentInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        semanticVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        changeDescription = {
            type = "string",
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        platform = {
            type = "string",
            traits = {
                required = true,
            },
        },
        data = {
            type = "string",
        },
        uri = {
            type = "string",
        },
        kmsKeyId = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.ImportComponentOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
        componentBuildVersionArn = {
            type = "string",
        },
    },
}

M.RegisterImageOptions = {
    type = "structure",
    members = {
        secureBootEnabled = {
            type = "boolean",
        },
        uefiData = {
            type = "string",
        },
    },
}

M.WindowsConfiguration = {
    type = "structure",
    members = {
        imageIndex = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.ImportDiskImageInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        semanticVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        platform = {
            type = "string",
            traits = {
                required = true,
            },
        },
        osVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionRole = {
            type = "string",
        },
        infrastructureConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        loggingConfiguration = M.ImageLoggingConfiguration,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        registerImageOptions = M.RegisterImageOptions,
        windowsConfiguration = M.WindowsConfiguration,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.ImportDiskImageOutput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
        },
        imageBuildVersionArn = {
            type = "string",
        },
    },
}

M.ImportVmImageInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        semanticVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        platform = {
            type = "string",
            traits = {
                required = true,
            },
        },
        osVersion = {
            type = "string",
        },
        vmImportTaskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        loggingConfiguration = M.ImageLoggingConfiguration,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.ImportVmImageOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        imageArn = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.InvalidPaginationTokenException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListComponentBuildVersionsInput = {
    type = "structure",
    members = {
        componentVersionArn = {
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

M.ListComponentBuildVersionsOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        componentSummaryList = {
            type = "list",
            member = M.ComponentSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.Ownership = {
    SELF = "Self",
    SHARED = "Shared",
    AMAZON = "Amazon",
    THIRDPARTY = "ThirdParty",
    AWS_MARKETPLACE = "AWSMarketplace",
}

M.ListComponentsInput = {
    type = "structure",
    members = {
        owner = {
            type = "string",
        },
        filters = {
            type = "list",
            member = M.Filter,
        },
        byName = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListComponentsOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        componentVersionList = {
            type = "list",
            member = M.ComponentVersion,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListContainerRecipesInput = {
    type = "structure",
    members = {
        owner = {
            type = "string",
        },
        filters = {
            type = "list",
            member = M.Filter,
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListContainerRecipesOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        containerRecipeSummaryList = {
            type = "list",
            member = M.ContainerRecipeSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDistributionConfigurationsInput = {
    type = "structure",
    members = {
        filters = {
            type = "list",
            member = M.Filter,
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDistributionConfigurationsOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        distributionConfigurationSummaryList = {
            type = "list",
            member = M.DistributionConfigurationSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListImageBuildVersionsInput = {
    type = "structure",
    members = {
        imageVersionArn = {
            type = "string",
        },
        filters = {
            type = "list",
            member = M.Filter,
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ImageSummary = {
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
        version = {
            type = "string",
        },
        platform = {
            type = "string",
        },
        osVersion = {
            type = "string",
        },
        state = M.ImageState,
        owner = {
            type = "string",
        },
        dateCreated = {
            type = "string",
        },
        outputResources = M.OutputResources,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        buildType = {
            type = "string",
        },
        imageSource = {
            type = "string",
        },
        deprecationTime = {
            type = "timestamp",
        },
        lifecycleExecutionId = {
            type = "string",
        },
        loggingConfiguration = M.ImageLoggingConfiguration,
    },
}

M.ListImageBuildVersionsOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        imageSummaryList = {
            type = "list",
            member = M.ImageSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListImagePackagesInput = {
    type = "structure",
    members = {
        imageBuildVersionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ImagePackage = {
    type = "structure",
    members = {
        packageName = {
            type = "string",
        },
        packageVersion = {
            type = "string",
        },
    },
}

M.ListImagePackagesOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        imagePackageList = {
            type = "list",
            member = M.ImagePackage,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListImagePipelineImagesInput = {
    type = "structure",
    members = {
        imagePipelineArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filters = {
            type = "list",
            member = M.Filter,
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListImagePipelineImagesOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        imageSummaryList = {
            type = "list",
            member = M.ImageSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListImagePipelinesInput = {
    type = "structure",
    members = {
        filters = {
            type = "list",
            member = M.Filter,
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListImagePipelinesOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        imagePipelineList = {
            type = "list",
            member = M.ImagePipeline,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListImageRecipesInput = {
    type = "structure",
    members = {
        owner = {
            type = "string",
        },
        filters = {
            type = "list",
            member = M.Filter,
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ImageRecipeSummary = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        platform = {
            type = "string",
        },
        owner = {
            type = "string",
        },
        parentImage = {
            type = "string",
        },
        dateCreated = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListImageRecipesOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        imageRecipeSummaryList = {
            type = "list",
            member = M.ImageRecipeSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListImagesInput = {
    type = "structure",
    members = {
        owner = {
            type = "string",
        },
        filters = {
            type = "list",
            member = M.Filter,
        },
        byName = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
        includeDeprecated = {
            type = "boolean",
        },
    },
}

M.ImageVersion = {
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
        version = {
            type = "string",
        },
        platform = {
            type = "string",
        },
        osVersion = {
            type = "string",
        },
        owner = {
            type = "string",
        },
        dateCreated = {
            type = "string",
        },
        buildType = {
            type = "string",
        },
        imageSource = {
            type = "string",
        },
    },
}

M.ListImagesOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        imageVersionList = {
            type = "list",
            member = M.ImageVersion,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListImageScanFindingAggregationsInput = {
    type = "structure",
    members = {
        filter = M.Filter,
        nextToken = {
            type = "string",
        },
    },
}

M.ImagePipelineAggregation = {
    type = "structure",
    members = {
        imagePipelineArn = {
            type = "string",
        },
        severityCounts = M.SeverityCounts,
    },
}

M.VulnerabilityIdAggregation = {
    type = "structure",
    members = {
        vulnerabilityId = {
            type = "string",
        },
        severityCounts = M.SeverityCounts,
    },
}

M.ImageScanFindingAggregation = {
    type = "structure",
    members = {
        accountAggregation = M.AccountAggregation,
        imageAggregation = M.ImageAggregation,
        imagePipelineAggregation = M.ImagePipelineAggregation,
        vulnerabilityIdAggregation = M.VulnerabilityIdAggregation,
    },
}

M.ListImageScanFindingAggregationsOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        aggregationType = {
            type = "string",
        },
        responses = {
            type = "list",
            member = M.ImageScanFindingAggregation,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ImageScanFindingsFilter = {
    type = "structure",
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

M.ListImageScanFindingsInput = {
    type = "structure",
    members = {
        filters = {
            type = "list",
            member = M.ImageScanFindingsFilter,
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.InspectorScoreDetails = {
    type = "structure",
    members = {
        adjustedCvss = M.CvssScoreDetails,
    },
}

M.VulnerablePackage = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        version = {
            type = "string",
        },
        sourceLayerHash = {
            type = "string",
        },
        epoch = {
            type = "integer",
        },
        release = {
            type = "string",
        },
        arch = {
            type = "string",
        },
        packageManager = {
            type = "string",
        },
        filePath = {
            type = "string",
        },
        fixedInVersion = {
            type = "string",
        },
        remediation = {
            type = "string",
        },
    },
}

M.PackageVulnerabilityDetails = {
    type = "structure",
    members = {
        vulnerabilityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vulnerablePackages = {
            type = "list",
            member = M.VulnerablePackage,
        },
        source = {
            type = "string",
        },
        cvss = {
            type = "list",
            member = M.CvssScore,
        },
        relatedVulnerabilities = {
            type = "list",
            member = { type = "string" },
        },
        sourceUrl = {
            type = "string",
        },
        vendorSeverity = {
            type = "string",
        },
        vendorCreatedAt = {
            type = "timestamp",
        },
        vendorUpdatedAt = {
            type = "timestamp",
        },
        referenceUrls = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RemediationRecommendation = {
    type = "structure",
    members = {
        text = {
            type = "string",
        },
        url = {
            type = "string",
        },
    },
}

M.Remediation = {
    type = "structure",
    members = {
        recommendation = M.RemediationRecommendation,
    },
}

M.ImageScanFinding = {
    type = "structure",
    members = {
        awsAccountId = {
            type = "string",
        },
        imageBuildVersionArn = {
            type = "string",
        },
        imagePipelineArn = {
            type = "string",
        },
        type = {
            type = "string",
        },
        description = {
            type = "string",
        },
        title = {
            type = "string",
        },
        remediation = M.Remediation,
        severity = {
            type = "string",
        },
        firstObservedAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        inspectorScore = {
            type = "double",
        },
        inspectorScoreDetails = M.InspectorScoreDetails,
        packageVulnerabilityDetails = M.PackageVulnerabilityDetails,
        fixAvailable = {
            type = "string",
        },
    },
}

M.ListImageScanFindingsOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        findings = {
            type = "list",
            member = M.ImageScanFinding,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListInfrastructureConfigurationsInput = {
    type = "structure",
    members = {
        filters = {
            type = "list",
            member = M.Filter,
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.InfrastructureConfigurationSummary = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        dateCreated = {
            type = "string",
        },
        dateUpdated = {
            type = "string",
        },
        resourceTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        instanceTypes = {
            type = "list",
            member = { type = "string" },
        },
        instanceProfileName = {
            type = "string",
        },
        placement = M.Placement,
    },
}

M.ListInfrastructureConfigurationsOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        infrastructureConfigurationSummaryList = {
            type = "list",
            member = M.InfrastructureConfigurationSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListLifecycleExecutionResourcesInput = {
    type = "structure",
    members = {
        lifecycleExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parentResourceId = {
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

M.LifecycleExecutionResourceActionName = {
    AVAILABLE = "AVAILABLE",
    DELETE = "DELETE",
    DEPRECATE = "DEPRECATE",
    DISABLE = "DISABLE",
}

M.LifecycleExecutionResourceAction = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        reason = {
            type = "string",
        },
    },
}

M.LifecycleExecutionResourceStatus = {
    FAILED = "FAILED",
    IN_PROGRESS = "IN_PROGRESS",
    SKIPPED = "SKIPPED",
    SUCCESS = "SUCCESS",
}

M.LifecycleExecutionResourceState = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        reason = {
            type = "string",
        },
    },
}

M.LifecycleExecutionSnapshotResource = {
    type = "structure",
    members = {
        snapshotId = {
            type = "string",
        },
        state = M.LifecycleExecutionResourceState,
    },
}

M.LifecycleExecutionResource = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
        },
        resourceId = {
            type = "string",
        },
        state = M.LifecycleExecutionResourceState,
        action = M.LifecycleExecutionResourceAction,
        region = {
            type = "string",
        },
        snapshots = {
            type = "list",
            member = M.LifecycleExecutionSnapshotResource,
        },
        imageUris = {
            type = "list",
            member = { type = "string" },
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
    },
}

M.ListLifecycleExecutionResourcesOutput = {
    type = "structure",
    members = {
        lifecycleExecutionId = {
            type = "string",
        },
        lifecycleExecutionState = M.LifecycleExecutionState,
        resources = {
            type = "list",
            member = M.LifecycleExecutionResource,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListLifecycleExecutionsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListLifecycleExecutionsOutput = {
    type = "structure",
    members = {
        lifecycleExecutions = {
            type = "list",
            member = M.LifecycleExecution,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListLifecyclePoliciesInput = {
    type = "structure",
    members = {
        filters = {
            type = "list",
            member = M.Filter,
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.LifecyclePolicySummary = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
        },
        executionRole = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        dateCreated = {
            type = "timestamp",
        },
        dateUpdated = {
            type = "timestamp",
        },
        dateLastRun = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListLifecyclePoliciesOutput = {
    type = "structure",
    members = {
        lifecyclePolicySummaryList = {
            type = "list",
            member = M.LifecyclePolicySummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.InvalidParameterException = {
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

M.ListWaitingWorkflowStepsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.WorkflowStepExecution = {
    type = "structure",
    members = {
        stepExecutionId = {
            type = "string",
        },
        imageBuildVersionArn = {
            type = "string",
        },
        workflowExecutionId = {
            type = "string",
        },
        workflowBuildVersionArn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        action = {
            type = "string",
        },
        startTime = {
            type = "string",
        },
    },
}

M.ListWaitingWorkflowStepsOutput = {
    type = "structure",
    members = {
        steps = {
            type = "list",
            member = M.WorkflowStepExecution,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListWorkflowBuildVersionsInput = {
    type = "structure",
    members = {
        workflowVersionArn = {
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

M.WorkflowSummary = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        version = {
            type = "string",
        },
        description = {
            type = "string",
        },
        changeDescription = {
            type = "string",
        },
        type = {
            type = "string",
        },
        owner = {
            type = "string",
        },
        state = M.WorkflowState,
        dateCreated = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListWorkflowBuildVersionsOutput = {
    type = "structure",
    members = {
        workflowSummaryList = {
            type = "list",
            member = M.WorkflowSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListWorkflowExecutionsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
        imageBuildVersionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.WorkflowExecutionMetadata = {
    type = "structure",
    members = {
        workflowBuildVersionArn = {
            type = "string",
        },
        workflowExecutionId = {
            type = "string",
        },
        type = {
            type = "string",
        },
        status = {
            type = "string",
        },
        message = {
            type = "string",
        },
        totalStepCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        totalStepsSucceeded = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        totalStepsFailed = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        totalStepsSkipped = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        startTime = {
            type = "string",
        },
        endTime = {
            type = "string",
        },
        parallelGroup = {
            type = "string",
        },
        retried = {
            type = "boolean",
        },
    },
}

M.ListWorkflowExecutionsOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        workflowExecutions = {
            type = "list",
            member = M.WorkflowExecutionMetadata,
        },
        imageBuildVersionArn = {
            type = "string",
        },
        message = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListWorkflowsInput = {
    type = "structure",
    members = {
        owner = {
            type = "string",
        },
        filters = {
            type = "list",
            member = M.Filter,
        },
        byName = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.WorkflowVersion = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        version = {
            type = "string",
        },
        description = {
            type = "string",
        },
        type = {
            type = "string",
        },
        owner = {
            type = "string",
        },
        dateCreated = {
            type = "string",
        },
    },
}

M.ListWorkflowsOutput = {
    type = "structure",
    members = {
        workflowVersionList = {
            type = "list",
            member = M.WorkflowVersion,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListWorkflowStepExecutionsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
        workflowExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.WorkflowStepMetadata = {
    type = "structure",
    members = {
        stepExecutionId = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        action = {
            type = "string",
        },
        status = {
            type = "string",
        },
        rollbackStatus = {
            type = "string",
        },
        message = {
            type = "string",
        },
        inputs = {
            type = "string",
        },
        outputs = {
            type = "string",
        },
        startTime = {
            type = "string",
        },
        endTime = {
            type = "string",
        },
    },
}

M.ListWorkflowStepExecutionsOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        steps = {
            type = "list",
            member = M.WorkflowStepMetadata,
        },
        workflowBuildVersionArn = {
            type = "string",
        },
        workflowExecutionId = {
            type = "string",
        },
        imageBuildVersionArn = {
            type = "string",
        },
        message = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.InvalidParameterValueException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutComponentPolicyInput = {
    type = "structure",
    members = {
        componentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutComponentPolicyOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        componentArn = {
            type = "string",
        },
    },
}

M.PutContainerRecipePolicyInput = {
    type = "structure",
    members = {
        containerRecipeArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutContainerRecipePolicyOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        containerRecipeArn = {
            type = "string",
        },
    },
}

M.PutImagePolicyInput = {
    type = "structure",
    members = {
        imageArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutImagePolicyOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        imageArn = {
            type = "string",
        },
    },
}

M.PutImageRecipePolicyInput = {
    type = "structure",
    members = {
        imageRecipeArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutImageRecipePolicyOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        imageRecipeArn = {
            type = "string",
        },
    },
}

M.RetryImageInput = {
    type = "structure",
    members = {
        imageBuildVersionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.RetryImageOutput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
        },
        imageBuildVersionArn = {
            type = "string",
        },
    },
}

M.WorkflowStepActionType = {
    RESUME = "RESUME",
    STOP = "STOP",
}

M.SendWorkflowStepActionInput = {
    type = "structure",
    members = {
        stepExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imageBuildVersionArn = {
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
        reason = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.SendWorkflowStepActionOutput = {
    type = "structure",
    members = {
        stepExecutionId = {
            type = "string",
        },
        imageBuildVersionArn = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.StartImagePipelineExecutionInput = {
    type = "structure",
    members = {
        imagePipelineArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
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

M.StartImagePipelineExecutionOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
        imageBuildVersionArn = {
            type = "string",
        },
    },
}

M.ResourceStateUpdateExclusionRules = {
    type = "structure",
    members = {
        amis = M.LifecyclePolicyDetailExclusionRulesAmis,
    },
}

M.ResourceStateUpdateIncludeResources = {
    type = "structure",
    members = {
        amis = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        snapshots = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        containers = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ResourceStatus = {
    AVAILABLE = "AVAILABLE",
    DELETED = "DELETED",
    DEPRECATED = "DEPRECATED",
    DISABLED = "DISABLED",
}

M.ResourceState = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
    },
}

M.StartResourceStateUpdateInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        state = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceState }),
        executionRole = {
            type = "string",
        },
        includeResources = M.ResourceStateUpdateIncludeResources,
        exclusionRules = M.ResourceStateUpdateExclusionRules,
        updateAt = {
            type = "timestamp",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.StartResourceStateUpdateOutput = {
    type = "structure",
    members = {
        lifecycleExecutionId = {
            type = "string",
        },
        resourceArn = {
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

M.UpdateDistributionConfigurationInput = {
    type = "structure",
    members = {
        distributionConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        distributions = {
            type = "list",
            member = M.Distribution,
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.UpdateDistributionConfigurationOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
        distributionConfigurationArn = {
            type = "string",
        },
    },
}

M.UpdateImagePipelineInput = {
    type = "structure",
    members = {
        imagePipelineArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        imageRecipeArn = {
            type = "string",
        },
        containerRecipeArn = {
            type = "string",
        },
        infrastructureConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        distributionConfigurationArn = {
            type = "string",
        },
        imageTestsConfiguration = M.ImageTestsConfiguration,
        enhancedImageMetadataEnabled = {
            type = "boolean",
        },
        schedule = M.Schedule,
        status = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        imageScanningConfiguration = M.ImageScanningConfiguration,
        workflows = {
            type = "list",
            member = M.WorkflowConfiguration,
        },
        loggingConfiguration = M.PipelineLoggingConfiguration,
        executionRole = {
            type = "string",
        },
        imageTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateImagePipelineOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
        imagePipelineArn = {
            type = "string",
        },
    },
}

M.UpdateInfrastructureConfigurationInput = {
    type = "structure",
    members = {
        infrastructureConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        instanceTypes = {
            type = "list",
            member = { type = "string" },
        },
        instanceProfileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        subnetId = {
            type = "string",
        },
        logging = M.Logging,
        keyPair = {
            type = "string",
        },
        terminateInstanceOnFailure = {
            type = "boolean",
        },
        snsTopicArn = {
            type = "string",
        },
        resourceTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        instanceMetadataOptions = M.InstanceMetadataOptions,
        placement = M.Placement,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.UpdateInfrastructureConfigurationOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
        infrastructureConfigurationArn = {
            type = "string",
        },
    },
}

M.UpdateLifecyclePolicyInput = {
    type = "structure",
    members = {
        lifecyclePolicyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
        },
        executionRole = {
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
        policyDetails = {
            type = "list",
            member = M.LifecyclePolicyDetail,
            traits = {
                required = true,
            },
        },
        resourceSelection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LifecyclePolicyResourceSelection }),
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.UpdateLifecyclePolicyOutput = {
    type = "structure",
    members = {
        lifecyclePolicyArn = {
            type = "string",
        },
    },
}

return M
