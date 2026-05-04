local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SeverityCounts = {
    type = "structure",
    id = "SeverityCounts",
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
    id = "AccountAggregation",
    members = {
        accountId = {
            type = "string",
        },
        severityCounts = M.SeverityCounts,
    },
}

M.SystemsManagerAgent = {
    type = "structure",
    id = "SystemsManagerAgent",
    members = {
        uninstallAfterBuild = {
            type = "boolean",
        },
    },
}

M.AdditionalInstanceConfiguration = {
    type = "structure",
    id = "AdditionalInstanceConfiguration",
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
    id = "ImageState",
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
    id = "Ami",
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
    id = "LaunchPermissionConfiguration",
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
    id = "AmiDistributionConfiguration",
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
    id = "AutoDisablePolicy",
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
    id = "CallRateLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CancelImageCreationInput = {
    type = "structure",
    id = "CancelImageCreationInput",
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
    id = "CancelImageCreationOutput",
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
    id = "ClientException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ForbiddenException = {
    type = "structure",
    id = "ForbiddenException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IdempotentParameterMismatchException = {
    type = "structure",
    id = "IdempotentParameterMismatchException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    id = "InvalidRequestException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceInUseException = {
    type = "structure",
    id = "ResourceInUseException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceException = {
    type = "structure",
    id = "ServiceException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    id = "ServiceUnavailableException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CancelLifecycleExecutionInput = {
    type = "structure",
    id = "CancelLifecycleExecutionInput",
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
    id = "CancelLifecycleExecutionOutput",
    members = {
        lifecycleExecutionId = {
            type = "string",
        },
    },
}

M.ComponentParameterDetail = {
    type = "structure",
    id = "ComponentParameterDetail",
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
    id = "ProductCodeListItem",
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
    id = "ComponentState",
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
    id = "Component",
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
    id = "ComponentParameter",
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
    id = "ComponentConfiguration",
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
    id = "ComponentSummary",
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
    id = "ComponentVersion",
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
    id = "Container",
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
    id = "TargetContainerRepository",
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
    id = "ContainerDistributionConfiguration",
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
    id = "EbsInstanceBlockDeviceSpecification",
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
    id = "InstanceBlockDeviceMapping",
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
    id = "InstanceConfiguration",
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
    id = "ContainerRecipe",
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
    id = "ContainerRecipeSummary",
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
    id = "CreateComponentInput",
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
    id = "LatestVersionReferences",
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
    id = "CreateComponentOutput",
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
    id = "DryRunOperationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidParameterCombinationException = {
    type = "structure",
    id = "InvalidParameterCombinationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidVersionNumberException = {
    type = "structure",
    id = "InvalidVersionNumberException",
    error = "client",
    members = {
        message = {
            type = "string",
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
        },
    },
}

M.CreateContainerRecipeInput = {
    type = "structure",
    id = "CreateContainerRecipeInput",
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
    id = "CreateContainerRecipeOutput",
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
    id = "ResourceAlreadyExistsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.FastLaunchLaunchTemplateSpecification = {
    type = "structure",
    id = "FastLaunchLaunchTemplateSpecification",
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
    id = "FastLaunchSnapshotConfiguration",
    members = {
        targetResourceCount = {
            type = "integer",
        },
    },
}

M.FastLaunchConfiguration = {
    type = "structure",
    id = "FastLaunchConfiguration",
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
    id = "LaunchTemplateConfiguration",
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
    id = "S3ExportConfiguration",
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
    id = "SsmParameterConfiguration",
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
    id = "Distribution",
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
    id = "CreateDistributionConfigurationInput",
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
    id = "CreateDistributionConfigurationOutput",
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
    id = "EcrConfiguration",
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
    id = "ImageScanningConfiguration",
    members = {
        imageScanningEnabled = {
            type = "boolean",
        },
        ecrConfiguration = M.EcrConfiguration,
    },
}

M.ImageTestsConfiguration = {
    type = "structure",
    id = "ImageTestsConfiguration",
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
    id = "ImageLoggingConfiguration",
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
    id = "WorkflowParameter",
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
    id = "WorkflowConfiguration",
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
    id = "CreateImageInput",
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
    id = "CreateImageOutput",
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
    id = "PipelineLoggingConfiguration",
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
    id = "Schedule",
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
    id = "CreateImagePipelineInput",
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
    id = "CreateImagePipelineOutput",
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
    id = "CreateImageRecipeInput",
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
    id = "CreateImageRecipeOutput",
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
    id = "InstanceMetadataOptions",
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
    id = "S3Logs",
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
    id = "Logging",
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
    id = "Placement",
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
    id = "CreateInfrastructureConfigurationInput",
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
    id = "CreateInfrastructureConfigurationOutput",
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
    id = "LifecyclePolicyDetailActionIncludeResources",
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
    id = "LifecyclePolicyDetailAction",
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
    id = "LifecyclePolicyDetailExclusionRulesAmisLastLaunched",
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
    id = "LifecyclePolicyDetailExclusionRulesAmis",
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
    id = "LifecyclePolicyDetailExclusionRules",
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
    id = "LifecyclePolicyDetailFilter",
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
    id = "LifecyclePolicyDetail",
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
    id = "LifecyclePolicyResourceSelectionRecipe",
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
    id = "LifecyclePolicyResourceSelection",
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
    id = "CreateLifecyclePolicyInput",
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
    id = "CreateLifecyclePolicyOutput",
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
    id = "CreateWorkflowInput",
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
    id = "CreateWorkflowOutput",
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
    id = "CvssScore",
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
    id = "CvssScoreAdjustment",
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
    id = "CvssScoreDetails",
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
    id = "DeleteComponentInput",
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
    id = "DeleteComponentOutput",
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
    id = "ResourceDependencyException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteContainerRecipeInput = {
    type = "structure",
    id = "DeleteContainerRecipeInput",
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
    id = "DeleteContainerRecipeOutput",
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
    id = "DeleteDistributionConfigurationInput",
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
    id = "DeleteDistributionConfigurationOutput",
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
    id = "DeleteImageInput",
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
    id = "DeleteImageOutput",
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
    id = "DeleteImagePipelineInput",
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
    id = "DeleteImagePipelineOutput",
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
    id = "DeleteImageRecipeInput",
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
    id = "DeleteImageRecipeOutput",
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
    id = "DeleteInfrastructureConfigurationInput",
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
    id = "DeleteInfrastructureConfigurationOutput",
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
    id = "DeleteLifecyclePolicyInput",
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
    id = "DeleteLifecyclePolicyOutput",
    members = {
        lifecyclePolicyArn = {
            type = "string",
        },
    },
}

M.DeleteWorkflowInput = {
    type = "structure",
    id = "DeleteWorkflowInput",
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
    id = "DeleteWorkflowOutput",
    members = {
        workflowBuildVersionArn = {
            type = "string",
        },
    },
}

M.DistributeImageInput = {
    type = "structure",
    id = "DistributeImageInput",
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
    id = "DistributeImageOutput",
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
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    id = "TooManyRequestsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DistributionConfiguration = {
    type = "structure",
    id = "DistributionConfiguration",
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
    id = "DistributionConfigurationSummary",
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
    id = "Filter",
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
    id = "GetComponentInput",
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
    id = "GetComponentOutput",
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
    id = "GetComponentPolicyInput",
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
    id = "GetComponentPolicyOutput",
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
    id = "GetContainerRecipeInput",
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
    id = "GetContainerRecipeOutput",
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
    id = "GetContainerRecipePolicyInput",
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
    id = "GetContainerRecipePolicyOutput",
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
    id = "GetDistributionConfigurationInput",
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
    id = "GetDistributionConfigurationOutput",
    members = {
        requestId = {
            type = "string",
        },
        distributionConfiguration = M.DistributionConfiguration,
    },
}

M.GetImageInput = {
    type = "structure",
    id = "GetImageInput",
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
    id = "ImageRecipe",
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
    id = "InfrastructureConfiguration",
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
    id = "OutputResources",
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
    id = "ImageScanState",
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
    id = "Image",
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
    id = "GetImageOutput",
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
    id = "GetImagePipelineInput",
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
    id = "ImagePipeline",
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
    id = "GetImagePipelineOutput",
    members = {
        requestId = {
            type = "string",
        },
        imagePipeline = M.ImagePipeline,
    },
}

M.GetImagePolicyInput = {
    type = "structure",
    id = "GetImagePolicyInput",
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
    id = "GetImagePolicyOutput",
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
    id = "GetImageRecipeInput",
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
    id = "GetImageRecipeOutput",
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
    id = "GetImageRecipePolicyInput",
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
    id = "GetImageRecipePolicyOutput",
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
    id = "GetInfrastructureConfigurationInput",
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
    id = "GetInfrastructureConfigurationOutput",
    members = {
        requestId = {
            type = "string",
        },
        infrastructureConfiguration = M.InfrastructureConfiguration,
    },
}

M.GetLifecycleExecutionInput = {
    type = "structure",
    id = "GetLifecycleExecutionInput",
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
    id = "LifecycleExecutionResourcesImpactedSummary",
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
    id = "LifecycleExecutionState",
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
    id = "LifecycleExecution",
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
    id = "GetLifecycleExecutionOutput",
    members = {
        lifecycleExecution = M.LifecycleExecution,
    },
}

M.GetLifecyclePolicyInput = {
    type = "structure",
    id = "GetLifecyclePolicyInput",
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
    id = "LifecyclePolicy",
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
    id = "GetLifecyclePolicyOutput",
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
    id = "GetMarketplaceResourceInput",
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
    id = "GetMarketplaceResourceOutput",
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
    id = "GetWorkflowInput",
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
    id = "WorkflowParameterDetail",
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
    id = "WorkflowState",
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
    id = "Workflow",
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
    id = "GetWorkflowOutput",
    members = {
        workflow = M.Workflow,
        latestVersionReferences = M.LatestVersionReferences,
    },
}

M.GetWorkflowExecutionInput = {
    type = "structure",
    id = "GetWorkflowExecutionInput",
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
    id = "GetWorkflowExecutionOutput",
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
    id = "GetWorkflowStepExecutionInput",
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
    id = "GetWorkflowStepExecutionOutput",
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
    id = "ImageAggregation",
    members = {
        imageBuildVersionArn = {
            type = "string",
        },
        severityCounts = M.SeverityCounts,
    },
}

M.ImportComponentInput = {
    type = "structure",
    id = "ImportComponentInput",
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
    id = "ImportComponentOutput",
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
    id = "RegisterImageOptions",
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
    id = "WindowsConfiguration",
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
    id = "ImportDiskImageInput",
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
    id = "ImportDiskImageOutput",
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
    id = "ImportVmImageInput",
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
    id = "ImportVmImageOutput",
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
    id = "InvalidPaginationTokenException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListComponentBuildVersionsInput = {
    type = "structure",
    id = "ListComponentBuildVersionsInput",
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
    id = "ListComponentBuildVersionsOutput",
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
    id = "ListComponentsInput",
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
    id = "ListComponentsOutput",
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
    id = "ListContainerRecipesInput",
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
    id = "ListContainerRecipesOutput",
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
    id = "ListDistributionConfigurationsInput",
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
    id = "ListDistributionConfigurationsOutput",
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
    id = "ListImageBuildVersionsInput",
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
    id = "ImageSummary",
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
    id = "ListImageBuildVersionsOutput",
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
    id = "ListImagePackagesInput",
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
    id = "ImagePackage",
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
    id = "ListImagePackagesOutput",
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
    id = "ListImagePipelineImagesInput",
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
    id = "ListImagePipelineImagesOutput",
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
    id = "ListImagePipelinesInput",
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
    id = "ListImagePipelinesOutput",
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
    id = "ListImageRecipesInput",
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
    id = "ImageRecipeSummary",
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
    id = "ListImageRecipesOutput",
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
    id = "ListImagesInput",
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
    id = "ImageVersion",
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
    id = "ListImagesOutput",
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
    id = "ListImageScanFindingAggregationsInput",
    members = {
        filter = M.Filter,
        nextToken = {
            type = "string",
        },
    },
}

M.ImagePipelineAggregation = {
    type = "structure",
    id = "ImagePipelineAggregation",
    members = {
        imagePipelineArn = {
            type = "string",
        },
        severityCounts = M.SeverityCounts,
    },
}

M.VulnerabilityIdAggregation = {
    type = "structure",
    id = "VulnerabilityIdAggregation",
    members = {
        vulnerabilityId = {
            type = "string",
        },
        severityCounts = M.SeverityCounts,
    },
}

M.ImageScanFindingAggregation = {
    type = "structure",
    id = "ImageScanFindingAggregation",
    members = {
        accountAggregation = M.AccountAggregation,
        imageAggregation = M.ImageAggregation,
        imagePipelineAggregation = M.ImagePipelineAggregation,
        vulnerabilityIdAggregation = M.VulnerabilityIdAggregation,
    },
}

M.ListImageScanFindingAggregationsOutput = {
    type = "structure",
    id = "ListImageScanFindingAggregationsOutput",
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
    id = "ImageScanFindingsFilter",
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
    id = "ListImageScanFindingsInput",
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
    id = "InspectorScoreDetails",
    members = {
        adjustedCvss = M.CvssScoreDetails,
    },
}

M.VulnerablePackage = {
    type = "structure",
    id = "VulnerablePackage",
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
    id = "PackageVulnerabilityDetails",
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
    id = "RemediationRecommendation",
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
    id = "Remediation",
    members = {
        recommendation = M.RemediationRecommendation,
    },
}

M.ImageScanFinding = {
    type = "structure",
    id = "ImageScanFinding",
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
    id = "ListImageScanFindingsOutput",
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
    id = "ListInfrastructureConfigurationsInput",
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
    id = "InfrastructureConfigurationSummary",
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
    id = "ListInfrastructureConfigurationsOutput",
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
    id = "ListLifecycleExecutionResourcesInput",
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
    id = "LifecycleExecutionResourceAction",
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
    id = "LifecycleExecutionResourceState",
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
    id = "LifecycleExecutionSnapshotResource",
    members = {
        snapshotId = {
            type = "string",
        },
        state = M.LifecycleExecutionResourceState,
    },
}

M.LifecycleExecutionResource = {
    type = "structure",
    id = "LifecycleExecutionResource",
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
    id = "ListLifecycleExecutionResourcesOutput",
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
    id = "ListLifecycleExecutionsInput",
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
    id = "ListLifecycleExecutionsOutput",
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
    id = "ListLifecyclePoliciesInput",
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
    id = "LifecyclePolicySummary",
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
    id = "ListLifecyclePoliciesOutput",
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
    id = "InvalidParameterException",
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
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
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
    id = "ListWaitingWorkflowStepsInput",
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
    id = "WorkflowStepExecution",
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
    id = "ListWaitingWorkflowStepsOutput",
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
    id = "ListWorkflowBuildVersionsInput",
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
    id = "WorkflowSummary",
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
    id = "ListWorkflowBuildVersionsOutput",
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
    id = "ListWorkflowExecutionsInput",
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
    id = "WorkflowExecutionMetadata",
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
    id = "ListWorkflowExecutionsOutput",
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
    id = "ListWorkflowsInput",
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
    id = "WorkflowVersion",
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
    id = "ListWorkflowsOutput",
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
    id = "ListWorkflowStepExecutionsInput",
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
    id = "WorkflowStepMetadata",
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
    id = "ListWorkflowStepExecutionsOutput",
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
    id = "InvalidParameterValueException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutComponentPolicyInput = {
    type = "structure",
    id = "PutComponentPolicyInput",
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
    id = "PutComponentPolicyOutput",
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
    id = "PutContainerRecipePolicyInput",
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
    id = "PutContainerRecipePolicyOutput",
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
    id = "PutImagePolicyInput",
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
    id = "PutImagePolicyOutput",
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
    id = "PutImageRecipePolicyInput",
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
    id = "PutImageRecipePolicyOutput",
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
    id = "RetryImageInput",
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
    id = "RetryImageOutput",
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
    id = "SendWorkflowStepActionInput",
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
    id = "SendWorkflowStepActionOutput",
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
    id = "StartImagePipelineExecutionInput",
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
    id = "StartImagePipelineExecutionOutput",
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
    id = "ResourceStateUpdateExclusionRules",
    members = {
        amis = M.LifecyclePolicyDetailExclusionRulesAmis,
    },
}

M.ResourceStateUpdateIncludeResources = {
    type = "structure",
    id = "ResourceStateUpdateIncludeResources",
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
    id = "ResourceState",
    members = {
        status = {
            type = "string",
        },
    },
}

M.StartResourceStateUpdateInput = {
    type = "structure",
    id = "StartResourceStateUpdateInput",
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
    id = "StartResourceStateUpdateOutput",
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
    id = "TagResourceInput",
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
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

M.UpdateDistributionConfigurationInput = {
    type = "structure",
    id = "UpdateDistributionConfigurationInput",
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
    id = "UpdateDistributionConfigurationOutput",
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
    id = "UpdateImagePipelineInput",
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
    id = "UpdateImagePipelineOutput",
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
    id = "UpdateInfrastructureConfigurationInput",
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
    id = "UpdateInfrastructureConfigurationOutput",
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
    id = "UpdateLifecyclePolicyInput",
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
    id = "UpdateLifecyclePolicyOutput",
    members = {
        lifecyclePolicyArn = {
            type = "string",
        },
    },
}

return M
