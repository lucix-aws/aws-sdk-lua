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

M.Status = {
    ENABLING = "ENABLING",
    ENABLED = "ENABLED",
    DISABLING = "DISABLING",
    DISABLED = "DISABLED",
    SUSPENDING = "SUSPENDING",
    SUSPENDED = "SUSPENDED",
}

M.ResourceStatus = {
    type = "structure",
    members = {
        ec2 = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ecr = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lambda = {
            type = "string",
        },
        lambdaCode = {
            type = "string",
        },
        codeRepository = {
            type = "string",
        },
    },
}

M.Account = {
    type = "structure",
    members = {
        accountId = {
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
        resourceStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AggregationFindingType = {
    NETWORK_REACHABILITY = "NETWORK_REACHABILITY",
    PACKAGE_VULNERABILITY = "PACKAGE_VULNERABILITY",
    CODE_VULNERABILITY = "CODE_VULNERABILITY",
}

M.AggregationResourceType = {
    AWS_EC2_INSTANCE = "AWS_EC2_INSTANCE",
    AWS_ECR_CONTAINER_IMAGE = "AWS_ECR_CONTAINER_IMAGE",
    AWS_LAMBDA_FUNCTION = "AWS_LAMBDA_FUNCTION",
    CODE_REPOSITORY = "CODE_REPOSITORY",
}

M.AccountSortBy = {
    CRITICAL = "CRITICAL",
    HIGH = "HIGH",
    ALL = "ALL",
}

M.SortOrder = {
    ASC = "ASC",
    DESC = "DESC",
}

M.AccountAggregation = {
    type = "structure",
    members = {
        findingType = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        sortOrder = {
            type = "string",
        },
        sortBy = {
            type = "string",
        },
    },
}

M.SeverityCounts = {
    type = "structure",
    members = {
        all = {
            type = "number",
        },
        medium = {
            type = "number",
        },
        high = {
            type = "number",
        },
        critical = {
            type = "number",
        },
    },
}

M.AccountAggregationResponse = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
        },
        severityCounts = {
            type = "structure",
        },
        exploitAvailableCount = {
            type = "number",
        },
        fixAvailableCount = {
            type = "number",
        },
    },
}

M.CisStringComparison = {
    EQUALS = "EQUALS",
    PREFIX = "PREFIX",
    NOT_EQUALS = "NOT_EQUALS",
}

M.CisStringFilter = {
    type = "structure",
    members = {
        comparison = {
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

M.ErrorCode = {
    ALREADY_ENABLED = "ALREADY_ENABLED",
    ENABLE_IN_PROGRESS = "ENABLE_IN_PROGRESS",
    DISABLE_IN_PROGRESS = "DISABLE_IN_PROGRESS",
    SUSPEND_IN_PROGRESS = "SUSPEND_IN_PROGRESS",
    RESOURCE_NOT_FOUND = "RESOURCE_NOT_FOUND",
    ACCESS_DENIED = "ACCESS_DENIED",
    INTERNAL_ERROR = "INTERNAL_ERROR",
    SSM_UNAVAILABLE = "SSM_UNAVAILABLE",
    SSM_THROTTLED = "SSM_THROTTLED",
    EVENTBRIDGE_UNAVAILABLE = "EVENTBRIDGE_UNAVAILABLE",
    EVENTBRIDGE_THROTTLED = "EVENTBRIDGE_THROTTLED",
    RESOURCE_SCAN_NOT_DISABLED = "RESOURCE_SCAN_NOT_DISABLED",
    DISASSOCIATE_ALL_MEMBERS = "DISASSOCIATE_ALL_MEMBERS",
    ACCOUNT_IS_ISOLATED = "ACCOUNT_IS_ISOLATED",
    EC2_SSM_RESOURCE_DATA_SYNC_LIMIT_EXCEEDED = "EC2_SSM_RESOURCE_DATA_SYNC_LIMIT_EXCEEDED",
    EC2_SSM_ASSOCIATION_VERSION_LIMIT_EXCEEDED = "EC2_SSM_ASSOCIATION_VERSION_LIMIT_EXCEEDED",
    BLOCKED_BY_ORGANIZATION_POLICY = "BLOCKED_BY_ORGANIZATION_POLICY",
}

M.State = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceState = {
    type = "structure",
    members = {
        ec2 = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ecr = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        lambda = {
            type = "structure",
        },
        lambdaCode = {
            type = "structure",
        },
        codeRepository = {
            type = "structure",
        },
    },
}

M.AccountState = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        state = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        resourceState = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.StringComparison = {
    EQUALS = "EQUALS",
    PREFIX = "PREFIX",
    NOT_EQUALS = "NOT_EQUALS",
}

M.StringFilter = {
    type = "structure",
    members = {
        comparison = {
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

M.AmiSortBy = {
    CRITICAL = "CRITICAL",
    HIGH = "HIGH",
    ALL = "ALL",
    AFFECTED_INSTANCES = "AFFECTED_INSTANCES",
}

M.AmiAggregation = {
    type = "structure",
    members = {
        amis = {
            type = "list",
            member_type = "structure",
        },
        sortOrder = {
            type = "string",
        },
        sortBy = {
            type = "string",
        },
    },
}

M.NumberFilter = {
    type = "structure",
    members = {
        upperInclusive = {
            type = "number",
        },
        lowerInclusive = {
            type = "number",
        },
    },
}

M.DateFilter = {
    type = "structure",
    members = {
        startInclusive = {
            type = "timestamp",
        },
        endInclusive = {
            type = "timestamp",
        },
    },
}

M.AwsEcrContainerSortBy = {
    CRITICAL = "CRITICAL",
    HIGH = "HIGH",
    ALL = "ALL",
}

M.AwsEcrContainerAggregation = {
    type = "structure",
    members = {
        resourceIds = {
            type = "list",
            member_type = "structure",
        },
        imageShas = {
            type = "list",
            member_type = "structure",
        },
        repositories = {
            type = "list",
            member_type = "structure",
        },
        architectures = {
            type = "list",
            member_type = "structure",
        },
        imageTags = {
            type = "list",
            member_type = "structure",
        },
        sortOrder = {
            type = "string",
        },
        sortBy = {
            type = "string",
        },
        lastInUseAt = {
            type = "list",
            member_type = "structure",
        },
        inUseCount = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CodeRepositorySortBy = {
    CRITICAL = "CRITICAL",
    HIGH = "HIGH",
    ALL = "ALL",
}

M.CodeRepositoryAggregation = {
    type = "structure",
    members = {
        projectNames = {
            type = "list",
            member_type = "structure",
        },
        providerTypes = {
            type = "list",
            member_type = "structure",
        },
        sortOrder = {
            type = "string",
        },
        sortBy = {
            type = "string",
        },
        resourceIds = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.MapComparison = {
    EQUALS = "EQUALS",
}

M.MapFilter = {
    type = "structure",
    members = {
        comparison = {
            type = "string",
            traits = {
                required = true,
            },
        },
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
        },
    },
}

M.Ec2InstanceSortBy = {
    NETWORK_FINDINGS = "NETWORK_FINDINGS",
    CRITICAL = "CRITICAL",
    HIGH = "HIGH",
    ALL = "ALL",
}

M.Ec2InstanceAggregation = {
    type = "structure",
    members = {
        amis = {
            type = "list",
            member_type = "structure",
        },
        operatingSystems = {
            type = "list",
            member_type = "structure",
        },
        instanceIds = {
            type = "list",
            member_type = "structure",
        },
        instanceTags = {
            type = "list",
            member_type = "structure",
        },
        sortOrder = {
            type = "string",
        },
        sortBy = {
            type = "string",
        },
    },
}

M.FindingTypeSortBy = {
    CRITICAL = "CRITICAL",
    HIGH = "HIGH",
    ALL = "ALL",
}

M.FindingTypeAggregation = {
    type = "structure",
    members = {
        findingType = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        sortOrder = {
            type = "string",
        },
        sortBy = {
            type = "string",
        },
    },
}

M.ImageLayerSortBy = {
    CRITICAL = "CRITICAL",
    HIGH = "HIGH",
    ALL = "ALL",
}

M.ImageLayerAggregation = {
    type = "structure",
    members = {
        repositories = {
            type = "list",
            member_type = "structure",
        },
        resourceIds = {
            type = "list",
            member_type = "structure",
        },
        layerHashes = {
            type = "list",
            member_type = "structure",
        },
        sortOrder = {
            type = "string",
        },
        sortBy = {
            type = "string",
        },
    },
}

M.LambdaFunctionSortBy = {
    CRITICAL = "CRITICAL",
    HIGH = "HIGH",
    ALL = "ALL",
}

M.LambdaFunctionAggregation = {
    type = "structure",
    members = {
        resourceIds = {
            type = "list",
            member_type = "structure",
        },
        functionNames = {
            type = "list",
            member_type = "structure",
        },
        runtimes = {
            type = "list",
            member_type = "structure",
        },
        functionTags = {
            type = "list",
            member_type = "structure",
        },
        sortOrder = {
            type = "string",
        },
        sortBy = {
            type = "string",
        },
    },
}

M.LambdaLayerSortBy = {
    CRITICAL = "CRITICAL",
    HIGH = "HIGH",
    ALL = "ALL",
}

M.LambdaLayerAggregation = {
    type = "structure",
    members = {
        functionNames = {
            type = "list",
            member_type = "structure",
        },
        resourceIds = {
            type = "list",
            member_type = "structure",
        },
        layerArns = {
            type = "list",
            member_type = "structure",
        },
        sortOrder = {
            type = "string",
        },
        sortBy = {
            type = "string",
        },
    },
}

M.PackageSortBy = {
    CRITICAL = "CRITICAL",
    HIGH = "HIGH",
    ALL = "ALL",
}

M.PackageAggregation = {
    type = "structure",
    members = {
        packageNames = {
            type = "list",
            member_type = "structure",
        },
        sortOrder = {
            type = "string",
        },
        sortBy = {
            type = "string",
        },
    },
}

M.RepositorySortBy = {
    CRITICAL = "CRITICAL",
    HIGH = "HIGH",
    ALL = "ALL",
    AFFECTED_IMAGES = "AFFECTED_IMAGES",
}

M.RepositoryAggregation = {
    type = "structure",
    members = {
        repositories = {
            type = "list",
            member_type = "structure",
        },
        sortOrder = {
            type = "string",
        },
        sortBy = {
            type = "string",
        },
    },
}

M.TitleSortBy = {
    CRITICAL = "CRITICAL",
    HIGH = "HIGH",
    ALL = "ALL",
}

M.TitleAggregation = {
    type = "structure",
    members = {
        titles = {
            type = "list",
            member_type = "structure",
        },
        vulnerabilityIds = {
            type = "list",
            member_type = "structure",
        },
        resourceType = {
            type = "string",
        },
        sortOrder = {
            type = "string",
        },
        sortBy = {
            type = "string",
        },
        findingType = {
            type = "string",
        },
    },
}

M.AggregationRequest = {
    type = "union",
    members = {
        accountAggregation = {
            type = "structure",
        },
        amiAggregation = {
            type = "structure",
        },
        awsEcrContainerAggregation = {
            type = "structure",
        },
        ec2InstanceAggregation = {
            type = "structure",
        },
        findingTypeAggregation = {
            type = "structure",
        },
        imageLayerAggregation = {
            type = "structure",
        },
        packageAggregation = {
            type = "structure",
        },
        repositoryAggregation = {
            type = "structure",
        },
        titleAggregation = {
            type = "structure",
        },
        lambdaLayerAggregation = {
            type = "structure",
        },
        lambdaFunctionAggregation = {
            type = "structure",
        },
        codeRepositoryAggregation = {
            type = "structure",
        },
    },
}

M.AmiAggregationResponse = {
    type = "structure",
    members = {
        ami = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountId = {
            type = "string",
        },
        severityCounts = {
            type = "structure",
        },
        affectedInstances = {
            type = "number",
        },
    },
}

M.AwsEcrContainerAggregationResponse = {
    type = "structure",
    members = {
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imageSha = {
            type = "string",
        },
        repository = {
            type = "string",
        },
        architecture = {
            type = "string",
        },
        imageTags = {
            type = "list",
            member_type = "string",
        },
        accountId = {
            type = "string",
        },
        severityCounts = {
            type = "structure",
        },
        lastInUseAt = {
            type = "timestamp",
        },
        inUseCount = {
            type = "number",
        },
    },
}

M.CodeRepositoryAggregationResponse = {
    type = "structure",
    members = {
        projectNames = {
            type = "string",
            traits = {
                required = true,
            },
        },
        providerType = {
            type = "string",
        },
        severityCounts = {
            type = "structure",
        },
        exploitAvailableActiveFindingsCount = {
            type = "number",
        },
        fixAvailableActiveFindingsCount = {
            type = "number",
        },
        accountId = {
            type = "string",
        },
        resourceId = {
            type = "string",
        },
    },
}

M.Ec2InstanceAggregationResponse = {
    type = "structure",
    members = {
        instanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ami = {
            type = "string",
        },
        operatingSystem = {
            type = "string",
        },
        instanceTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        accountId = {
            type = "string",
        },
        severityCounts = {
            type = "structure",
        },
        networkFindings = {
            type = "number",
        },
    },
}

M.FindingTypeAggregationResponse = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
        },
        severityCounts = {
            type = "structure",
        },
        exploitAvailableCount = {
            type = "number",
        },
        fixAvailableCount = {
            type = "number",
        },
    },
}

M.ImageLayerAggregationResponse = {
    type = "structure",
    members = {
        repository = {
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
        layerHash = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        severityCounts = {
            type = "structure",
        },
    },
}

M.LambdaFunctionAggregationResponse = {
    type = "structure",
    members = {
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        functionName = {
            type = "string",
        },
        runtime = {
            type = "string",
        },
        lambdaTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        accountId = {
            type = "string",
        },
        severityCounts = {
            type = "structure",
        },
        lastModifiedAt = {
            type = "timestamp",
        },
    },
}

M.LambdaLayerAggregationResponse = {
    type = "structure",
    members = {
        functionName = {
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
        layerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        severityCounts = {
            type = "structure",
        },
    },
}

M.PackageAggregationResponse = {
    type = "structure",
    members = {
        packageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountId = {
            type = "string",
        },
        severityCounts = {
            type = "structure",
        },
    },
}

M.RepositoryAggregationResponse = {
    type = "structure",
    members = {
        repository = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountId = {
            type = "string",
        },
        severityCounts = {
            type = "structure",
        },
        affectedImages = {
            type = "number",
        },
    },
}

M.TitleAggregationResponse = {
    type = "structure",
    members = {
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vulnerabilityId = {
            type = "string",
        },
        accountId = {
            type = "string",
        },
        severityCounts = {
            type = "structure",
        },
    },
}

M.AggregationResponse = {
    type = "union",
    members = {
        accountAggregation = {
            type = "structure",
        },
        amiAggregation = {
            type = "structure",
        },
        awsEcrContainerAggregation = {
            type = "structure",
        },
        ec2InstanceAggregation = {
            type = "structure",
        },
        findingTypeAggregation = {
            type = "structure",
        },
        imageLayerAggregation = {
            type = "structure",
        },
        packageAggregation = {
            type = "structure",
        },
        repositoryAggregation = {
            type = "structure",
        },
        titleAggregation = {
            type = "structure",
        },
        lambdaLayerAggregation = {
            type = "structure",
        },
        lambdaFunctionAggregation = {
            type = "structure",
        },
        codeRepositoryAggregation = {
            type = "structure",
        },
    },
}

M.AggregationType = {
    FINDING_TYPE = "FINDING_TYPE",
    PACKAGE = "PACKAGE",
    TITLE = "TITLE",
    REPOSITORY = "REPOSITORY",
    AMI = "AMI",
    AWS_EC2_INSTANCE = "AWS_EC2_INSTANCE",
    AWS_ECR_CONTAINER = "AWS_ECR_CONTAINER",
    IMAGE_LAYER = "IMAGE_LAYER",
    ACCOUNT = "ACCOUNT",
    AWS_LAMBDA_FUNCTION = "AWS_LAMBDA_FUNCTION",
    LAMBDA_LAYER = "LAMBDA_LAYER",
    CODE_REPOSITORY = "CODE_REPOSITORY",
}

M.Architecture = {
    X86_64 = "X86_64",
    ARM64 = "ARM64",
}

M.CodeSecurityResource = {
    type = "union",
    members = {
        projectId = {
            type = "string",
        },
    },
}

M.AssociateConfigurationRequest = {
    type = "structure",
    members = {
        scanConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resource = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateMemberInput = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateMemberOutput = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                required = true,
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
            type = "number",
            traits = {
                http_header = "Retry-After",
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
        retryAfterSeconds = {
            type = "number",
            traits = {
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
            traits = {
                required = true,
            },
        },
        fields = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AssociationResultStatusCode = {
    INTERNAL_ERROR = "INTERNAL_ERROR",
    ACCESS_DENIED = "ACCESS_DENIED",
    SCAN_CONFIGURATION_NOT_FOUND = "SCAN_CONFIGURATION_NOT_FOUND",
    INVALID_INPUT = "INVALID_INPUT",
    RESOURCE_NOT_FOUND = "RESOURCE_NOT_FOUND",
    QUOTA_EXCEEDED = "QUOTA_EXCEEDED",
}

M.AtigData = {
    type = "structure",
    members = {
        firstSeen = {
            type = "timestamp",
        },
        lastSeen = {
            type = "timestamp",
        },
        targets = {
            type = "list",
            member_type = "string",
        },
        ttps = {
            type = "list",
            member_type = "string",
        },
    },
}

M.AutoEnable = {
    type = "structure",
    members = {
        ec2 = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        ecr = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        lambda = {
            type = "boolean",
        },
        lambdaCode = {
            type = "boolean",
        },
        codeRepository = {
            type = "boolean",
        },
    },
}

M.AwsEc2InstanceDetails = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        imageId = {
            type = "string",
        },
        ipV4Addresses = {
            type = "list",
            member_type = "string",
        },
        ipV6Addresses = {
            type = "list",
            member_type = "string",
        },
        keyName = {
            type = "string",
        },
        iamInstanceProfileArn = {
            type = "string",
        },
        vpcId = {
            type = "string",
        },
        subnetId = {
            type = "string",
        },
        launchedAt = {
            type = "timestamp",
        },
        platform = {
            type = "string",
        },
    },
}

M.AwsEcrContainerImageDetails = {
    type = "structure",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imageTags = {
            type = "list",
            member_type = "string",
        },
        pushedAt = {
            type = "timestamp",
        },
        author = {
            type = "string",
        },
        architecture = {
            type = "string",
        },
        imageHash = {
            type = "string",
            traits = {
                required = true,
            },
        },
        registry = {
            type = "string",
            traits = {
                required = true,
            },
        },
        platform = {
            type = "string",
        },
        lastInUseAt = {
            type = "timestamp",
        },
        inUseCount = {
            type = "number",
        },
    },
}

M.AwsEcsMetadataDetails = {
    type = "structure",
    members = {
        detailsGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskDefinitionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AwsEksWorkloadInfo = {
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

M.AwsEksMetadataDetails = {
    type = "structure",
    members = {
        namespace = {
            type = "string",
        },
        workloadInfoList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PackageType = {
    IMAGE = "IMAGE",
    ZIP = "ZIP",
}

M.Runtime = {
    NODEJS = "NODEJS",
    NODEJS_12_X = "NODEJS_12_X",
    NODEJS_14_X = "NODEJS_14_X",
    NODEJS_16_X = "NODEJS_16_X",
    JAVA_8 = "JAVA_8",
    JAVA_8_AL2 = "JAVA_8_AL2",
    JAVA_11 = "JAVA_11",
    PYTHON_3_7 = "PYTHON_3_7",
    PYTHON_3_8 = "PYTHON_3_8",
    PYTHON_3_9 = "PYTHON_3_9",
    UNSUPPORTED = "UNSUPPORTED",
    NODEJS_18_X = "NODEJS_18_X",
    GO_1_X = "GO_1_X",
    JAVA_17 = "JAVA_17",
    PYTHON_3_10 = "PYTHON_3_10",
    PYTHON_3_11 = "PYTHON_3_11",
    DOTNETCORE_3_1 = "DOTNETCORE_3_1",
    DOTNET_6 = "DOTNET_6",
    DOTNET_7 = "DOTNET_7",
    RUBY_2_7 = "RUBY_2_7",
    RUBY_3_2 = "RUBY_3_2",
    DOTNET_10 = "DOTNET_10",
    NODEJS_24_X = "NODEJS_24_X",
}

M.LambdaVpcConfig = {
    type = "structure",
    members = {
        subnetIds = {
            type = "list",
            member_type = "string",
        },
        securityGroupIds = {
            type = "list",
            member_type = "string",
        },
        vpcId = {
            type = "string",
        },
    },
}

M.AwsLambdaFunctionDetails = {
    type = "structure",
    members = {
        functionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        runtime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        codeSha256 = {
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
        executionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        layers = {
            type = "list",
            member_type = "string",
        },
        vpcConfig = {
            type = "structure",
        },
        packageType = {
            type = "string",
        },
        architectures = {
            type = "list",
            member_type = "string",
        },
        lastModifiedAt = {
            type = "timestamp",
        },
    },
}

M.BadRequestException = {
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

M.BatchAssociateCodeSecurityScanConfigurationInput = {
    type = "structure",
    members = {
        associateConfigurationRequests = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.FailedAssociationResult = {
    type = "structure",
    members = {
        scanConfigurationArn = {
            type = "string",
        },
        resource = {
            type = "union",
        },
        statusCode = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
    },
}

M.SuccessfulAssociationResult = {
    type = "structure",
    members = {
        scanConfigurationArn = {
            type = "string",
        },
        resource = {
            type = "union",
        },
    },
}

M.BatchAssociateCodeSecurityScanConfigurationOutput = {
    type = "structure",
    members = {
        failedAssociations = {
            type = "list",
            member_type = "structure",
        },
        successfulAssociations = {
            type = "list",
            member_type = "structure",
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

M.DisassociateConfigurationRequest = {
    type = "structure",
    members = {
        scanConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resource = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDisassociateCodeSecurityScanConfigurationInput = {
    type = "structure",
    members = {
        disassociateConfigurationRequests = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDisassociateCodeSecurityScanConfigurationOutput = {
    type = "structure",
    members = {
        failedAssociations = {
            type = "list",
            member_type = "structure",
        },
        successfulAssociations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchGetAccountStatusInput = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.FailedAccount = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        resourceStatus = {
            type = "structure",
        },
        errorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetAccountStatusOutput = {
    type = "structure",
    members = {
        accounts = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        failedAccounts = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchGetCodeSnippetInput = {
    type = "structure",
    members = {
        findingArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CodeLine = {
    type = "structure",
    members = {
        content = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lineNumber = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.SuggestedFix = {
    type = "structure",
    members = {
        description = {
            type = "string",
        },
        code = {
            type = "string",
        },
    },
}

M.CodeSnippetResult = {
    type = "structure",
    members = {
        findingArn = {
            type = "string",
        },
        startLine = {
            type = "number",
        },
        endLine = {
            type = "number",
        },
        codeSnippet = {
            type = "list",
            member_type = "structure",
        },
        suggestedFixes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CodeSnippetErrorCode = {
    INTERNAL_ERROR = "INTERNAL_ERROR",
    ACCESS_DENIED = "ACCESS_DENIED",
    CODE_SNIPPET_NOT_FOUND = "CODE_SNIPPET_NOT_FOUND",
    INVALID_INPUT = "INVALID_INPUT",
}

M.CodeSnippetError = {
    type = "structure",
    members = {
        findingArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetCodeSnippetOutput = {
    type = "structure",
    members = {
        codeSnippetResults = {
            type = "list",
            member_type = "structure",
        },
        errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchGetFindingDetailsInput = {
    type = "structure",
    members = {
        findingArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FindingDetailsErrorCode = {
    INTERNAL_ERROR = "INTERNAL_ERROR",
    ACCESS_DENIED = "ACCESS_DENIED",
    FINDING_DETAILS_NOT_FOUND = "FINDING_DETAILS_NOT_FOUND",
    INVALID_INPUT = "INVALID_INPUT",
}

M.FindingDetailsError = {
    type = "structure",
    members = {
        findingArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CisaData = {
    type = "structure",
    members = {
        dateAdded = {
            type = "timestamp",
        },
        dateDue = {
            type = "timestamp",
        },
        action = {
            type = "string",
        },
    },
}

M.Evidence = {
    type = "structure",
    members = {
        evidenceRule = {
            type = "string",
        },
        evidenceDetail = {
            type = "string",
        },
        severity = {
            type = "string",
        },
    },
}

M.ExploitObserved = {
    type = "structure",
    members = {
        lastSeen = {
            type = "timestamp",
        },
        firstSeen = {
            type = "timestamp",
        },
    },
}

M.FindingDetail = {
    type = "structure",
    members = {
        findingArn = {
            type = "string",
        },
        cisaData = {
            type = "structure",
        },
        riskScore = {
            type = "number",
        },
        evidences = {
            type = "list",
            member_type = "structure",
        },
        ttps = {
            type = "list",
            member_type = "string",
        },
        tools = {
            type = "list",
            member_type = "string",
        },
        exploitObserved = {
            type = "structure",
        },
        referenceUrls = {
            type = "list",
            member_type = "string",
        },
        cwes = {
            type = "list",
            member_type = "string",
        },
        epssScore = {
            type = "number",
        },
    },
}

M.BatchGetFindingDetailsOutput = {
    type = "structure",
    members = {
        findingDetails = {
            type = "list",
            member_type = "structure",
        },
        errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchGetFreeTrialInfoInput = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FreeTrialStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.FreeTrialType = {
    EC2 = "EC2",
    ECR = "ECR",
    LAMBDA = "LAMBDA",
    LAMBDA_CODE = "LAMBDA_CODE",
    CODE_REPOSITORY = "CODE_REPOSITORY",
}

M.FreeTrialInfo = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        start = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        end = {
            type = "timestamp",
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

M.FreeTrialAccountInfo = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        freeTrialInfo = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.FreeTrialInfoErrorCode = {
    ACCESS_DENIED = "ACCESS_DENIED",
    INTERNAL_ERROR = "INTERNAL_ERROR",
}

M.FreeTrialInfoError = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
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

M.BatchGetFreeTrialInfoOutput = {
    type = "structure",
    members = {
        accounts = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        failedAccounts = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetMemberEc2DeepInspectionStatusInput = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.Ec2DeepInspectionStatus = {
    ACTIVATED = "ACTIVATED",
    DEACTIVATED = "DEACTIVATED",
    PENDING = "PENDING",
    FAILED = "FAILED",
}

M.MemberAccountEc2DeepInspectionStatusState = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.FailedMemberAccountEc2DeepInspectionStatusState = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ec2ScanStatus = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.BatchGetMemberEc2DeepInspectionStatusOutput = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member_type = "structure",
        },
        failedAccountIds = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.MemberAccountEc2DeepInspectionStatus = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        activateDeepInspection = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateMemberEc2DeepInspectionStatusInput = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateMemberEc2DeepInspectionStatusOutput = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member_type = "structure",
        },
        failedAccountIds = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CancelFindingsReportInput = {
    type = "structure",
    members = {
        reportId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelFindingsReportOutput = {
    type = "structure",
    members = {
        reportId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelSbomExportInput = {
    type = "structure",
    members = {
        reportId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelSbomExportOutput = {
    type = "structure",
    members = {
        reportId = {
            type = "string",
        },
    },
}

M.CisSecurityLevel = {
    LEVEL_1 = "LEVEL_1",
    LEVEL_2 = "LEVEL_2",
}

M.StatusCounts = {
    type = "structure",
    members = {
        failed = {
            type = "number",
        },
        skipped = {
            type = "number",
        },
        passed = {
            type = "number",
        },
    },
}

M.CisCheckAggregation = {
    type = "structure",
    members = {
        scanArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        checkId = {
            type = "string",
        },
        title = {
            type = "string",
        },
        checkDescription = {
            type = "string",
        },
        level = {
            type = "string",
        },
        accountId = {
            type = "string",
        },
        statusCounts = {
            type = "structure",
        },
        platform = {
            type = "string",
        },
    },
}

M.CisDateFilter = {
    type = "structure",
    members = {
        earliestScanStartTime = {
            type = "timestamp",
        },
        latestScanStartTime = {
            type = "timestamp",
        },
    },
}

M.CisFindingStatus = {
    PASSED = "PASSED",
    FAILED = "FAILED",
    SKIPPED = "SKIPPED",
}

M.CisFindingStatusComparison = {
    EQUALS = "EQUALS",
}

M.CisFindingStatusFilter = {
    type = "structure",
    members = {
        comparison = {
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

M.CisNumberFilter = {
    type = "structure",
    members = {
        upperInclusive = {
            type = "number",
        },
        lowerInclusive = {
            type = "number",
        },
    },
}

M.CisReportFormat = {
    PDF = "PDF",
    CSV = "CSV",
}

M.CisReportStatus = {
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    IN_PROGRESS = "IN_PROGRESS",
}

M.CisResultStatus = {
    PASSED = "PASSED",
    FAILED = "FAILED",
    SKIPPED = "SKIPPED",
}

M.CisResultStatusComparison = {
    EQUALS = "EQUALS",
}

M.CisResultStatusFilter = {
    type = "structure",
    members = {
        comparison = {
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

M.CisRuleStatus = {
    FAILED = "FAILED",
    PASSED = "PASSED",
    NOT_EVALUATED = "NOT_EVALUATED",
    INFORMATIONAL = "INFORMATIONAL",
    UNKNOWN = "UNKNOWN",
    NOT_APPLICABLE = "NOT_APPLICABLE",
    ERROR = "ERROR",
}

M.CisScanStatus = {
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
    CANCELLED = "CANCELLED",
    IN_PROGRESS = "IN_PROGRESS",
}

M.CisTargets = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member_type = "string",
        },
        targetResourceTags = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
    },
}

M.CisScan = {
    type = "structure",
    members = {
        scanArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scanConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        scanName = {
            type = "string",
        },
        scanDate = {
            type = "timestamp",
        },
        failedChecks = {
            type = "number",
        },
        totalChecks = {
            type = "number",
        },
        targets = {
            type = "structure",
        },
        scheduledBy = {
            type = "string",
        },
        securityLevel = {
            type = "string",
        },
    },
}

M.Time = {
    type = "structure",
    members = {
        timeOfDay = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timezone = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DailySchedule = {
    type = "structure",
    members = {
        startTime = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.Day = {
    SUN = "SUN",
    MON = "MON",
    TUE = "TUE",
    WED = "WED",
    THU = "THU",
    FRI = "FRI",
    SAT = "SAT",
}

M.MonthlySchedule = {
    type = "structure",
    members = {
        startTime = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        day = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OneTimeSchedule = {
    type = "structure",
}

M.WeeklySchedule = {
    type = "structure",
    members = {
        startTime = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        days = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Schedule = {
    type = "union",
    members = {
        oneTime = {
            type = "structure",
        },
        daily = {
            type = "structure",
        },
        weekly = {
            type = "structure",
        },
        monthly = {
            type = "structure",
        },
    },
}

M.CisScanConfiguration = {
    type = "structure",
    members = {
        scanConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ownerId = {
            type = "string",
        },
        scanName = {
            type = "string",
        },
        securityLevel = {
            type = "string",
        },
        schedule = {
            type = "union",
        },
        targets = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CisScanConfigurationsSortBy = {
    SCAN_NAME = "SCAN_NAME",
    SCAN_CONFIGURATION_ARN = "SCAN_CONFIGURATION_ARN",
}

M.CisScanResultDetails = {
    type = "structure",
    members = {
        scanArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountId = {
            type = "string",
        },
        targetResourceId = {
            type = "string",
        },
        platform = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        checkId = {
            type = "string",
        },
        title = {
            type = "string",
        },
        checkDescription = {
            type = "string",
        },
        remediation = {
            type = "string",
        },
        level = {
            type = "string",
        },
        findingArn = {
            type = "string",
        },
    },
}

M.CisSecurityLevelComparison = {
    EQUALS = "EQUALS",
}

M.CisSecurityLevelFilter = {
    type = "structure",
    members = {
        comparison = {
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

M.CisScanResultDetailsFilterCriteria = {
    type = "structure",
    members = {
        findingStatusFilters = {
            type = "list",
            member_type = "structure",
        },
        checkIdFilters = {
            type = "list",
            member_type = "structure",
        },
        titleFilters = {
            type = "list",
            member_type = "structure",
        },
        securityLevelFilters = {
            type = "list",
            member_type = "structure",
        },
        findingArnFilters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CisScanResultDetailsSortBy = {
    CHECK_ID = "CHECK_ID",
    STATUS = "STATUS",
}

M.CisScanResultsAggregatedByChecksFilterCriteria = {
    type = "structure",
    members = {
        accountIdFilters = {
            type = "list",
            member_type = "structure",
        },
        checkIdFilters = {
            type = "list",
            member_type = "structure",
        },
        titleFilters = {
            type = "list",
            member_type = "structure",
        },
        platformFilters = {
            type = "list",
            member_type = "structure",
        },
        failedResourcesFilters = {
            type = "list",
            member_type = "structure",
        },
        securityLevelFilters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CisScanResultsAggregatedByChecksSortBy = {
    CHECK_ID = "CHECK_ID",
    TITLE = "TITLE",
    PLATFORM = "PLATFORM",
    FAILED_COUNTS = "FAILED_COUNTS",
    SECURITY_LEVEL = "SECURITY_LEVEL",
}

M.TagComparison = {
    EQUALS = "EQUALS",
}

M.TagFilter = {
    type = "structure",
    members = {
        comparison = {
            type = "string",
            traits = {
                required = true,
            },
        },
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

M.CisTargetStatusComparison = {
    EQUALS = "EQUALS",
}

M.CisTargetStatus = {
    TIMED_OUT = "TIMED_OUT",
    CANCELLED = "CANCELLED",
    COMPLETED = "COMPLETED",
}

M.CisTargetStatusFilter = {
    type = "structure",
    members = {
        comparison = {
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

M.CisTargetStatusReason = {
    SCAN_IN_PROGRESS = "SCAN_IN_PROGRESS",
    UNSUPPORTED_OS = "UNSUPPORTED_OS",
    SSM_UNMANAGED = "SSM_UNMANAGED",
}

M.CisTargetStatusReasonFilter = {
    type = "structure",
    members = {
        comparison = {
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

M.CisScanResultsAggregatedByTargetResourceFilterCriteria = {
    type = "structure",
    members = {
        accountIdFilters = {
            type = "list",
            member_type = "structure",
        },
        statusFilters = {
            type = "list",
            member_type = "structure",
        },
        checkIdFilters = {
            type = "list",
            member_type = "structure",
        },
        targetResourceIdFilters = {
            type = "list",
            member_type = "structure",
        },
        targetResourceTagFilters = {
            type = "list",
            member_type = "structure",
        },
        platformFilters = {
            type = "list",
            member_type = "structure",
        },
        targetStatusFilters = {
            type = "list",
            member_type = "structure",
        },
        targetStatusReasonFilters = {
            type = "list",
            member_type = "structure",
        },
        failedChecksFilters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CisScanResultsAggregatedByTargetResourceSortBy = {
    RESOURCE_ID = "RESOURCE_ID",
    FAILED_COUNTS = "FAILED_COUNTS",
    ACCOUNT_ID = "ACCOUNT_ID",
    PLATFORM = "PLATFORM",
    TARGET_STATUS = "TARGET_STATUS",
    TARGET_STATUS_REASON = "TARGET_STATUS_REASON",
}

M.CisScanStatusComparison = {
    EQUALS = "EQUALS",
}

M.CisScanStatusFilter = {
    type = "structure",
    members = {
        comparison = {
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

M.CisSessionMessage = {
    type = "structure",
    members = {
        ruleId = {
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
        cisRuleDetails = {
            type = "blob",
            traits = {
                required = true,
            },
        },
    },
}

M.CisSortOrder = {
    ASC = "ASC",
    DESC = "DESC",
}

M.CisTargetResourceAggregation = {
    type = "structure",
    members = {
        scanArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetResourceId = {
            type = "string",
        },
        accountId = {
            type = "string",
        },
        targetResourceTags = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        statusCounts = {
            type = "structure",
        },
        platform = {
            type = "string",
        },
        targetStatus = {
            type = "string",
        },
        targetStatusReason = {
            type = "string",
        },
    },
}

M.ClusterMetadata = {
    type = "union",
    members = {
        awsEcsMetadataDetails = {
            type = "structure",
        },
        awsEksMetadataDetails = {
            type = "structure",
        },
    },
}

M.ClusterDetails = {
    type = "structure",
    members = {
        lastInUse = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        runningUnitCount = {
            type = "number",
        },
        stoppedUnitCount = {
            type = "number",
        },
        clusterMetadata = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.ClusterForImageFilterCriteria = {
    type = "structure",
    members = {
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ClusterInformation = {
    type = "structure",
    members = {
        clusterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clusterDetails = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CodeFilePath = {
    type = "structure",
    members = {
        fileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startLine = {
            type = "number",
            traits = {
                required = true,
            },
        },
        endLine = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.CodeRepositoryProviderType = {
    GITHUB = "GITHUB",
    GITLAB_SELF_MANAGED = "GITLAB_SELF_MANAGED",
}

M.CodeRepositoryDetails = {
    type = "structure",
    members = {
        projectName = {
            type = "string",
        },
        integrationArn = {
            type = "string",
        },
        providerType = {
            type = "string",
        },
    },
}

M.ScanStatusReason = {
    PENDING_INITIAL_SCAN = "PENDING_INITIAL_SCAN",
    ACCESS_DENIED = "ACCESS_DENIED",
    INTERNAL_ERROR = "INTERNAL_ERROR",
    UNMANAGED_EC2_INSTANCE = "UNMANAGED_EC2_INSTANCE",
    UNSUPPORTED_OS = "UNSUPPORTED_OS",
    SCAN_ELIGIBILITY_EXPIRED = "SCAN_ELIGIBILITY_EXPIRED",
    RESOURCE_TERMINATED = "RESOURCE_TERMINATED",
    SUCCESSFUL = "SUCCESSFUL",
    NO_RESOURCES_FOUND = "NO_RESOURCES_FOUND",
    IMAGE_SIZE_EXCEEDED = "IMAGE_SIZE_EXCEEDED",
    SCAN_FREQUENCY_MANUAL = "SCAN_FREQUENCY_MANUAL",
    SCAN_FREQUENCY_SCAN_ON_PUSH = "SCAN_FREQUENCY_SCAN_ON_PUSH",
    EC2_INSTANCE_STOPPED = "EC2_INSTANCE_STOPPED",
    PENDING_DISABLE = "PENDING_DISABLE",
    NO_INVENTORY = "NO_INVENTORY",
    STALE_INVENTORY = "STALE_INVENTORY",
    EXCLUDED_BY_TAG = "EXCLUDED_BY_TAG",
    UNSUPPORTED_RUNTIME = "UNSUPPORTED_RUNTIME",
    UNSUPPORTED_MEDIA_TYPE = "UNSUPPORTED_MEDIA_TYPE",
    UNSUPPORTED_CONFIG_FILE = "UNSUPPORTED_CONFIG_FILE",
    DEEP_INSPECTION_PACKAGE_COLLECTION_LIMIT_EXCEEDED = "DEEP_INSPECTION_PACKAGE_COLLECTION_LIMIT_EXCEEDED",
    DEEP_INSPECTION_DAILY_SSM_INVENTORY_LIMIT_EXCEEDED = "DEEP_INSPECTION_DAILY_SSM_INVENTORY_LIMIT_EXCEEDED",
    DEEP_INSPECTION_COLLECTION_TIME_LIMIT_EXCEEDED = "DEEP_INSPECTION_COLLECTION_TIME_LIMIT_EXCEEDED",
    DEEP_INSPECTION_NO_INVENTORY = "DEEP_INSPECTION_NO_INVENTORY",
    AGENTLESS_INSTANCE_STORAGE_LIMIT_EXCEEDED = "AGENTLESS_INSTANCE_STORAGE_LIMIT_EXCEEDED",
    AGENTLESS_INSTANCE_COLLECTION_TIME_LIMIT_EXCEEDED = "AGENTLESS_INSTANCE_COLLECTION_TIME_LIMIT_EXCEEDED",
    PENDING_REVIVAL_SCAN = "PENDING_REVIVAL_SCAN",
    INTEGRATION_CONNECTION_LOST = "INTEGRATION_CONNECTION_LOST",
    ACCESS_DENIED_TO_ENCRYPTION_KEY = "ACCESS_DENIED_TO_ENCRYPTION_KEY",
    UNSUPPORTED_LANGUAGE = "UNSUPPORTED_LANGUAGE",
    NO_SCAN_CONFIGURATION_ASSOCIATED = "NO_SCAN_CONFIGURATION_ASSOCIATED",
    SCAN_IN_PROGRESS = "SCAN_IN_PROGRESS",
    IMAGE_ARCHIVED = "IMAGE_ARCHIVED",
    UNSUPPORTED_CODE_ARTIFACTS = "UNSUPPORTED_CODE_ARTIFACTS",
}

M.ScanStatusCode = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.ScanStatus = {
    type = "structure",
    members = {
        statusCode = {
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

M.CodeRepositoryOnDemandScan = {
    type = "structure",
    members = {
        lastScannedCommitId = {
            type = "string",
        },
        lastScanAt = {
            type = "timestamp",
        },
        scanStatus = {
            type = "structure",
        },
    },
}

M.RuleSetCategory = {
    SAST = "SAST",
    IAC = "IAC",
    SCA = "SCA",
}

M.ContinuousIntegrationScanEvent = {
    PULL_REQUEST = "PULL_REQUEST",
    PUSH = "PUSH",
}

M.ProjectContinuousIntegrationScanConfiguration = {
    type = "structure",
    members = {
        supportedEvent = {
            type = "string",
        },
        ruleSetCategories = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ProjectPeriodicScanConfiguration = {
    type = "structure",
    members = {
        frequencyExpression = {
            type = "string",
        },
        ruleSetCategories = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ProjectCodeSecurityScanConfiguration = {
    type = "structure",
    members = {
        periodicScanConfigurations = {
            type = "list",
            member_type = "structure",
        },
        continuousIntegrationScanConfigurations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CodeRepositoryMetadata = {
    type = "structure",
    members = {
        projectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        integrationArn = {
            type = "string",
        },
        providerType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        providerTypeVisibility = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lastScannedCommitId = {
            type = "string",
        },
        scanConfiguration = {
            type = "structure",
        },
        onDemandScan = {
            type = "structure",
        },
    },
}

M.CodeScanStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    SUCCESSFUL = "SUCCESSFUL",
    FAILED = "FAILED",
    SKIPPED = "SKIPPED",
}

M.IntegrationStatus = {
    PENDING = "PENDING",
    IN_PROGRESS = "IN_PROGRESS",
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    DISABLING = "DISABLING",
}

M.IntegrationType = {
    GITLAB_SELF_MANAGED = "GITLAB_SELF_MANAGED",
    GITHUB = "GITHUB",
}

M.CodeSecurityIntegrationSummary = {
    type = "structure",
    members = {
        integrationArn = {
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
        type = {
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
            traits = {
                required = true,
            },
        },
        createdOn = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdateOn = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ContinuousIntegrationScanConfiguration = {
    type = "structure",
    members = {
        supportedEvents = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PeriodicScanFrequency = {
    WEEKLY = "WEEKLY",
    MONTHLY = "MONTHLY",
    NEVER = "NEVER",
}

M.PeriodicScanConfiguration = {
    type = "structure",
    members = {
        frequency = {
            type = "string",
        },
        frequencyExpression = {
            type = "string",
        },
    },
}

M.CodeSecurityScanConfiguration = {
    type = "structure",
    members = {
        periodicScanConfiguration = {
            type = "structure",
        },
        continuousIntegrationScanConfiguration = {
            type = "structure",
        },
        ruleSetCategories = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CodeSecurityScanConfigurationAssociationSummary = {
    type = "structure",
    members = {
        resource = {
            type = "union",
        },
    },
}

M.ProjectSelectionScope = {
    ALL = "ALL",
}

M.ScopeSettings = {
    type = "structure",
    members = {
        projectSelectionScope = {
            type = "string",
        },
    },
}

M.CodeSecurityScanConfigurationSummary = {
    type = "structure",
    members = {
        scanConfigurationArn = {
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
        ownerAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        periodicScanFrequency = {
            type = "string",
        },
        frequencyExpression = {
            type = "string",
        },
        continuousIntegrationScanSupportedEvents = {
            type = "list",
            member_type = "string",
        },
        ruleSetCategories = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        scopeSettings = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CodeVulnerabilityDetails = {
    type = "structure",
    members = {
        filePath = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        detectorTags = {
            type = "list",
            member_type = "string",
        },
        referenceUrls = {
            type = "list",
            member_type = "string",
        },
        ruleId = {
            type = "string",
        },
        sourceLambdaLayerArn = {
            type = "string",
        },
        detectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        detectorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cwes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ComputePlatform = {
    type = "structure",
    members = {
        vendor = {
            type = "string",
        },
        product = {
            type = "string",
        },
        version = {
            type = "string",
        },
    },
}

M.ConfigurationLevel = {
    ORGANIZATION = "ORGANIZATION",
    ACCOUNT = "ACCOUNT",
}

M.GroupKey = {
    SCAN_STATUS_CODE = "SCAN_STATUS_CODE",
    SCAN_STATUS_REASON = "SCAN_STATUS_REASON",
    ACCOUNT_ID = "ACCOUNT_ID",
    RESOURCE_TYPE = "RESOURCE_TYPE",
    ECR_REPOSITORY_NAME = "ECR_REPOSITORY_NAME",
}

M.Counts = {
    type = "structure",
    members = {
        count = {
            type = "number",
        },
        groupKey = {
            type = "string",
        },
    },
}

M.CoverageDateFilter = {
    type = "structure",
    members = {
        startInclusive = {
            type = "timestamp",
        },
        endInclusive = {
            type = "timestamp",
        },
    },
}

M.CoverageStringComparison = {
    EQUALS = "EQUALS",
    NOT_EQUALS = "NOT_EQUALS",
}

M.CoverageStringFilter = {
    type = "structure",
    members = {
        comparison = {
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

M.CoverageMapComparison = {
    EQUALS = "EQUALS",
}

M.CoverageMapFilter = {
    type = "structure",
    members = {
        comparison = {
            type = "string",
            traits = {
                required = true,
            },
        },
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
        },
    },
}

M.CoverageNumberFilter = {
    type = "structure",
    members = {
        upperInclusive = {
            type = "number",
        },
        lowerInclusive = {
            type = "number",
        },
    },
}

M.CoverageFilterCriteria = {
    type = "structure",
    members = {
        scanStatusCode = {
            type = "list",
            member_type = "structure",
        },
        scanStatusReason = {
            type = "list",
            member_type = "structure",
        },
        accountId = {
            type = "list",
            member_type = "structure",
        },
        resourceId = {
            type = "list",
            member_type = "structure",
        },
        resourceType = {
            type = "list",
            member_type = "structure",
        },
        scanType = {
            type = "list",
            member_type = "structure",
        },
        ecrRepositoryName = {
            type = "list",
            member_type = "structure",
        },
        ecrImageTags = {
            type = "list",
            member_type = "structure",
        },
        ec2InstanceTags = {
            type = "list",
            member_type = "structure",
        },
        lambdaFunctionName = {
            type = "list",
            member_type = "structure",
        },
        lambdaFunctionTags = {
            type = "list",
            member_type = "structure",
        },
        lambdaFunctionRuntime = {
            type = "list",
            member_type = "structure",
        },
        lastScannedAt = {
            type = "list",
            member_type = "structure",
        },
        scanMode = {
            type = "list",
            member_type = "structure",
        },
        imagePulledAt = {
            type = "list",
            member_type = "structure",
        },
        ecrImageLastInUseAt = {
            type = "list",
            member_type = "structure",
        },
        ecrImageInUseCount = {
            type = "list",
            member_type = "structure",
        },
        codeRepositoryProjectName = {
            type = "list",
            member_type = "structure",
        },
        codeRepositoryProviderType = {
            type = "list",
            member_type = "structure",
        },
        codeRepositoryProviderTypeVisibility = {
            type = "list",
            member_type = "structure",
        },
        lastScannedCommitId = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CoverageResourceType = {
    AWS_EC2_INSTANCE = "AWS_EC2_INSTANCE",
    AWS_ECR_CONTAINER_IMAGE = "AWS_ECR_CONTAINER_IMAGE",
    AWS_ECR_REPOSITORY = "AWS_ECR_REPOSITORY",
    AWS_LAMBDA_FUNCTION = "AWS_LAMBDA_FUNCTION",
    CODE_REPOSITORY = "CODE_REPOSITORY",
}

M.Ec2Platform = {
    WINDOWS = "WINDOWS",
    LINUX = "LINUX",
    UNKNOWN = "UNKNOWN",
    MACOS = "MACOS",
}

M.Ec2Metadata = {
    type = "structure",
    members = {
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        amiId = {
            type = "string",
        },
        platform = {
            type = "string",
        },
    },
}

M.EcrContainerImageMetadata = {
    type = "structure",
    members = {
        tags = {
            type = "list",
            member_type = "string",
        },
        imagePulledAt = {
            type = "timestamp",
        },
        lastInUseAt = {
            type = "timestamp",
        },
        inUseCount = {
            type = "number",
        },
    },
}

M.EcrScanFrequency = {
    MANUAL = "MANUAL",
    SCAN_ON_PUSH = "SCAN_ON_PUSH",
    CONTINUOUS_SCAN = "CONTINUOUS_SCAN",
}

M.EcrRepositoryMetadata = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        scanFrequency = {
            type = "string",
        },
    },
}

M.LambdaFunctionMetadata = {
    type = "structure",
    members = {
        functionTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        layers = {
            type = "list",
            member_type = "string",
        },
        functionName = {
            type = "string",
        },
        runtime = {
            type = "string",
        },
    },
}

M.ResourceScanMetadata = {
    type = "structure",
    members = {
        ecrRepository = {
            type = "structure",
        },
        ecrImage = {
            type = "structure",
        },
        ec2 = {
            type = "structure",
        },
        lambdaFunction = {
            type = "structure",
        },
        codeRepository = {
            type = "structure",
        },
    },
}

M.ScanMode = {
    EC2_SSM_AGENT_BASED = "EC2_SSM_AGENT_BASED",
    EC2_AGENTLESS = "EC2_AGENTLESS",
}

M.ScanType = {
    NETWORK = "NETWORK",
    PACKAGE = "PACKAGE",
    CODE = "CODE",
}

M.CoveredResource = {
    type = "structure",
    members = {
        resourceType = {
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
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scanType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scanStatus = {
            type = "structure",
        },
        resourceMetadata = {
            type = "structure",
        },
        lastScannedAt = {
            type = "timestamp",
        },
        scanMode = {
            type = "string",
        },
    },
}

M.CreateCisTargets = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        targetResourceTags = {
            type = "map",
            key_type = "string",
            value_type = "list",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateCisScanConfigurationInput = {
    type = "structure",
    members = {
        scanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        securityLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        schedule = {
            type = "union",
            traits = {
                required = true,
            },
        },
        targets = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateCisScanConfigurationOutput = {
    type = "structure",
    members = {
        scanConfigurationArn = {
            type = "string",
        },
    },
}

M.CreateGitLabSelfManagedIntegrationDetail = {
    type = "structure",
    members = {
        instanceUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accessToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateIntegrationDetail = {
    type = "union",
    members = {
        gitlabSelfManaged = {
            type = "structure",
        },
    },
}

M.CreateCodeSecurityIntegrationInput = {
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
        details = {
            type = "union",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateCodeSecurityIntegrationOutput = {
    type = "structure",
    members = {
        integrationArn = {
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
        authorizationUrl = {
            type = "string",
        },
    },
}

M.CreateCodeSecurityScanConfigurationInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        level = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        scopeSettings = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateCodeSecurityScanConfigurationOutput = {
    type = "structure",
    members = {
        scanConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FilterAction = {
    NONE = "NONE",
    SUPPRESS = "SUPPRESS",
}

M.PortRangeFilter = {
    type = "structure",
    members = {
        beginInclusive = {
            type = "number",
        },
        endInclusive = {
            type = "number",
        },
    },
}

M.PackageFilter = {
    type = "structure",
    members = {
        name = {
            type = "structure",
        },
        version = {
            type = "structure",
        },
        epoch = {
            type = "structure",
        },
        release = {
            type = "structure",
        },
        architecture = {
            type = "structure",
        },
        sourceLayerHash = {
            type = "structure",
        },
        sourceLambdaLayerArn = {
            type = "structure",
        },
        filePath = {
            type = "structure",
        },
    },
}

M.FilterCriteria = {
    type = "structure",
    members = {
        findingArn = {
            type = "list",
            member_type = "structure",
        },
        awsAccountId = {
            type = "list",
            member_type = "structure",
        },
        findingType = {
            type = "list",
            member_type = "structure",
        },
        severity = {
            type = "list",
            member_type = "structure",
        },
        firstObservedAt = {
            type = "list",
            member_type = "structure",
        },
        lastObservedAt = {
            type = "list",
            member_type = "structure",
        },
        updatedAt = {
            type = "list",
            member_type = "structure",
        },
        findingStatus = {
            type = "list",
            member_type = "structure",
        },
        title = {
            type = "list",
            member_type = "structure",
        },
        inspectorScore = {
            type = "list",
            member_type = "structure",
        },
        resourceType = {
            type = "list",
            member_type = "structure",
        },
        resourceId = {
            type = "list",
            member_type = "structure",
        },
        resourceTags = {
            type = "list",
            member_type = "structure",
        },
        ec2InstanceImageId = {
            type = "list",
            member_type = "structure",
        },
        ec2InstanceVpcId = {
            type = "list",
            member_type = "structure",
        },
        ec2InstanceSubnetId = {
            type = "list",
            member_type = "structure",
        },
        ecrImagePushedAt = {
            type = "list",
            member_type = "structure",
        },
        ecrImageArchitecture = {
            type = "list",
            member_type = "structure",
        },
        ecrImageRegistry = {
            type = "list",
            member_type = "structure",
        },
        ecrImageRepositoryName = {
            type = "list",
            member_type = "structure",
        },
        ecrImageTags = {
            type = "list",
            member_type = "structure",
        },
        ecrImageHash = {
            type = "list",
            member_type = "structure",
        },
        ecrImageLastInUseAt = {
            type = "list",
            member_type = "structure",
        },
        ecrImageInUseCount = {
            type = "list",
            member_type = "structure",
        },
        portRange = {
            type = "list",
            member_type = "structure",
        },
        networkProtocol = {
            type = "list",
            member_type = "structure",
        },
        componentId = {
            type = "list",
            member_type = "structure",
        },
        componentType = {
            type = "list",
            member_type = "structure",
        },
        vulnerabilityId = {
            type = "list",
            member_type = "structure",
        },
        vulnerabilitySource = {
            type = "list",
            member_type = "structure",
        },
        vendorSeverity = {
            type = "list",
            member_type = "structure",
        },
        vulnerablePackages = {
            type = "list",
            member_type = "structure",
        },
        relatedVulnerabilities = {
            type = "list",
            member_type = "structure",
        },
        fixAvailable = {
            type = "list",
            member_type = "structure",
        },
        lambdaFunctionName = {
            type = "list",
            member_type = "structure",
        },
        lambdaFunctionLayers = {
            type = "list",
            member_type = "structure",
        },
        lambdaFunctionRuntime = {
            type = "list",
            member_type = "structure",
        },
        lambdaFunctionLastModifiedAt = {
            type = "list",
            member_type = "structure",
        },
        lambdaFunctionExecutionRoleArn = {
            type = "list",
            member_type = "structure",
        },
        exploitAvailable = {
            type = "list",
            member_type = "structure",
        },
        codeVulnerabilityDetectorName = {
            type = "list",
            member_type = "structure",
        },
        codeVulnerabilityDetectorTags = {
            type = "list",
            member_type = "structure",
        },
        codeVulnerabilityFilePath = {
            type = "list",
            member_type = "structure",
        },
        epssScore = {
            type = "list",
            member_type = "structure",
        },
        codeRepositoryProjectName = {
            type = "list",
            member_type = "structure",
        },
        codeRepositoryProviderType = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateFilterInput = {
    type = "structure",
    members = {
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        filterCriteria = {
            type = "structure",
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
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        reason = {
            type = "string",
        },
    },
}

M.CreateFilterOutput = {
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

M.ReportFormat = {
    CSV = "CSV",
    JSON = "JSON",
}

M.Destination = {
    type = "structure",
    members = {
        bucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        keyPrefix = {
            type = "string",
        },
        kmsKeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateFindingsReportInput = {
    type = "structure",
    members = {
        filterCriteria = {
            type = "structure",
        },
        reportFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3Destination = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateFindingsReportOutput = {
    type = "structure",
    members = {
        reportId = {
            type = "string",
        },
    },
}

M.SbomReportFormat = {
    CYCLONEDX_1_4 = "CYCLONEDX_1_4",
    SPDX_2_3 = "SPDX_2_3",
}

M.ResourceStringComparison = {
    EQUALS = "EQUALS",
    NOT_EQUALS = "NOT_EQUALS",
}

M.ResourceStringFilter = {
    type = "structure",
    members = {
        comparison = {
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

M.ResourceMapComparison = {
    EQUALS = "EQUALS",
}

M.ResourceMapFilter = {
    type = "structure",
    members = {
        comparison = {
            type = "string",
            traits = {
                required = true,
            },
        },
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
        },
    },
}

M.ResourceFilterCriteria = {
    type = "structure",
    members = {
        accountId = {
            type = "list",
            member_type = "structure",
        },
        resourceId = {
            type = "list",
            member_type = "structure",
        },
        resourceType = {
            type = "list",
            member_type = "structure",
        },
        ecrRepositoryName = {
            type = "list",
            member_type = "structure",
        },
        lambdaFunctionName = {
            type = "list",
            member_type = "structure",
        },
        ecrImageTags = {
            type = "list",
            member_type = "structure",
        },
        ec2InstanceTags = {
            type = "list",
            member_type = "structure",
        },
        lambdaFunctionTags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateSbomExportInput = {
    type = "structure",
    members = {
        resourceFilterCriteria = {
            type = "structure",
        },
        reportFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3Destination = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateSbomExportOutput = {
    type = "structure",
    members = {
        reportId = {
            type = "string",
        },
    },
}

M.Currency = {
    USD = "USD",
}

M.Cvss2 = {
    type = "structure",
    members = {
        baseScore = {
            type = "number",
        },
        scoringVector = {
            type = "string",
        },
    },
}

M.Cvss3 = {
    type = "structure",
    members = {
        baseScore = {
            type = "number",
        },
        scoringVector = {
            type = "string",
        },
    },
}

M.Cvss4 = {
    type = "structure",
    members = {
        baseScore = {
            type = "number",
        },
        scoringVector = {
            type = "string",
        },
    },
}

M.CvssScore = {
    type = "structure",
    members = {
        baseScore = {
            type = "number",
            traits = {
                required = true,
            },
        },
        scoringVector = {
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
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CvssScoreAdjustment = {
    type = "structure",
    members = {
        metric = {
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

M.CvssScoreDetails = {
    type = "structure",
    members = {
        scoreSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cvssSource = {
            type = "string",
        },
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        score = {
            type = "number",
            traits = {
                required = true,
            },
        },
        scoringVector = {
            type = "string",
            traits = {
                required = true,
            },
        },
        adjustments = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RelationshipStatus = {
    CREATED = "CREATED",
    INVITED = "INVITED",
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
    REMOVED = "REMOVED",
    RESIGNED = "RESIGNED",
    DELETED = "DELETED",
    EMAIL_VERIFICATION_IN_PROGRESS = "EMAIL_VERIFICATION_IN_PROGRESS",
    EMAIL_VERIFICATION_FAILED = "EMAIL_VERIFICATION_FAILED",
    REGION_DISABLED = "REGION_DISABLED",
    ACCOUNT_SUSPENDED = "ACCOUNT_SUSPENDED",
    CANNOT_CREATE_DETECTOR_IN_ORG_MASTER = "CANNOT_CREATE_DETECTOR_IN_ORG_MASTER",
}

M.DelegatedAdmin = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
        },
        relationshipStatus = {
            type = "string",
        },
    },
}

M.DelegatedAdminStatus = {
    ENABLED = "ENABLED",
    DISABLE_IN_PROGRESS = "DISABLE_IN_PROGRESS",
}

M.DelegatedAdminAccount = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.DeleteCisScanConfigurationInput = {
    type = "structure",
    members = {
        scanConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCisScanConfigurationOutput = {
    type = "structure",
    members = {
        scanConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCodeSecurityIntegrationInput = {
    type = "structure",
    members = {
        integrationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCodeSecurityIntegrationOutput = {
    type = "structure",
    members = {
        integrationArn = {
            type = "string",
        },
    },
}

M.DeleteCodeSecurityScanConfigurationInput = {
    type = "structure",
    members = {
        scanConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCodeSecurityScanConfigurationOutput = {
    type = "structure",
    members = {
        scanConfigurationArn = {
            type = "string",
        },
    },
}

M.DeleteFilterInput = {
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

M.DeleteFilterOutput = {
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

M.DescribeOrganizationConfigurationInput = {
    type = "structure",
}

M.DescribeOrganizationConfigurationOutput = {
    type = "structure",
    members = {
        autoEnable = {
            type = "structure",
        },
        maxAccountLimitReached = {
            type = "boolean",
        },
    },
}

M.ResourceScanType = {
    EC2 = "EC2",
    ECR = "ECR",
    LAMBDA = "LAMBDA",
    LAMBDA_CODE = "LAMBDA_CODE",
    CODE_REPOSITORY = "CODE_REPOSITORY",
}

M.DisableInput = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member_type = "string",
        },
        resourceTypes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DisableOutput = {
    type = "structure",
    members = {
        accounts = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        failedAccounts = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DisableDelegatedAdminAccountInput = {
    type = "structure",
    members = {
        delegatedAdminAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisableDelegatedAdminAccountOutput = {
    type = "structure",
    members = {
        delegatedAdminAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateMemberInput = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateMemberOutput = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Ec2ScanMode = {
    EC2_SSM_AGENT_BASED = "EC2_SSM_AGENT_BASED",
    EC2_HYBRID = "EC2_HYBRID",
}

M.Ec2Configuration = {
    type = "structure",
    members = {
        scanMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Ec2ScanModeStatus = {
    SUCCESS = "SUCCESS",
    PENDING = "PENDING",
}

M.Ec2ScanModeState = {
    type = "structure",
    members = {
        scanMode = {
            type = "string",
        },
        scanModeStatus = {
            type = "string",
        },
    },
}

M.Ec2ConfigurationState = {
    type = "structure",
    members = {
        scanModeState = {
            type = "structure",
        },
    },
}

M.EcrPullDateRescanDuration = {
    DAYS_14 = "DAYS_14",
    DAYS_30 = "DAYS_30",
    DAYS_60 = "DAYS_60",
    DAYS_90 = "DAYS_90",
    DAYS_180 = "DAYS_180",
}

M.EcrPullDateRescanMode = {
    LAST_PULL_DATE = "LAST_PULL_DATE",
    LAST_IN_USE_AT = "LAST_IN_USE_AT",
}

M.EcrRescanDuration = {
    LIFETIME = "LIFETIME",
    DAYS_30 = "DAYS_30",
    DAYS_180 = "DAYS_180",
    DAYS_14 = "DAYS_14",
    DAYS_60 = "DAYS_60",
    DAYS_90 = "DAYS_90",
}

M.EcrConfiguration = {
    type = "structure",
    members = {
        rescanDuration = {
            type = "string",
            traits = {
                required = true,
            },
        },
        pullDateRescanDuration = {
            type = "string",
        },
        pullDateRescanMode = {
            type = "string",
        },
    },
}

M.EcrRescanDurationStatus = {
    SUCCESS = "SUCCESS",
    PENDING = "PENDING",
    FAILED = "FAILED",
}

M.EcrRescanDurationState = {
    type = "structure",
    members = {
        rescanDuration = {
            type = "string",
        },
        status = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
        },
        pullDateRescanDuration = {
            type = "string",
        },
        pullDateRescanMode = {
            type = "string",
        },
    },
}

M.EcrConfigurationState = {
    type = "structure",
    members = {
        rescanDurationState = {
            type = "structure",
        },
    },
}

M.EnableInput = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member_type = "string",
        },
        resourceTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.EnableOutput = {
    type = "structure",
    members = {
        accounts = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        failedAccounts = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.EnableDelegatedAdminAccountInput = {
    type = "structure",
    members = {
        delegatedAdminAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.EnableDelegatedAdminAccountOutput = {
    type = "structure",
    members = {
        delegatedAdminAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Epss = {
    type = "structure",
    members = {
        score = {
            type = "number",
        },
    },
}

M.EpssDetails = {
    type = "structure",
    members = {
        score = {
            type = "number",
        },
    },
}

M.ExploitabilityDetails = {
    type = "structure",
    members = {
        lastKnownExploitAt = {
            type = "timestamp",
        },
    },
}

M.ExploitAvailable = {
    YES = "YES",
    NO = "NO",
}

M.ExternalReportStatus = {
    SUCCEEDED = "SUCCEEDED",
    IN_PROGRESS = "IN_PROGRESS",
    CANCELLED = "CANCELLED",
    FAILED = "FAILED",
}

M.Filter = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ownerId = {
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
        criteria = {
            type = "structure",
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
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        reason = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.FixAvailable = {
    YES = "YES",
    NO = "NO",
    PARTIAL = "PARTIAL",
}

M.InspectorScoreDetails = {
    type = "structure",
    members = {
        adjustedCvss = {
            type = "structure",
        },
    },
}

M.Step = {
    type = "structure",
    members = {
        componentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        componentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        componentArn = {
            type = "string",
        },
    },
}

M.NetworkPath = {
    type = "structure",
    members = {
        steps = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PortRange = {
    type = "structure",
    members = {
        begin = {
            type = "number",
            traits = {
                required = true,
            },
        },
        end = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.NetworkProtocol = {
    TCP = "TCP",
    UDP = "UDP",
}

M.NetworkReachabilityDetails = {
    type = "structure",
    members = {
        openPortRange = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        protocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkPath = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PackageManager = {
    BUNDLER = "BUNDLER",
    CARGO = "CARGO",
    COMPOSER = "COMPOSER",
    NPM = "NPM",
    NUGET = "NUGET",
    PIPENV = "PIPENV",
    POETRY = "POETRY",
    YARN = "YARN",
    GOBINARY = "GOBINARY",
    GOMOD = "GOMOD",
    JAR = "JAR",
    OS = "OS",
    PIP = "PIP",
    PYTHONPKG = "PYTHONPKG",
    NODEPKG = "NODEPKG",
    POM = "POM",
    GEMSPEC = "GEMSPEC",
    DOTNET_CORE = "DOTNET_CORE",
}

M.VulnerablePackage = {
    type = "structure",
    members = {
        name = {
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
        sourceLayerHash = {
            type = "string",
        },
        epoch = {
            type = "number",
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
        sourceLambdaLayerArn = {
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
            member_type = "structure",
        },
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cvss = {
            type = "list",
            member_type = "structure",
        },
        relatedVulnerabilities = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
        },
    },
}

M.Recommendation = {
    type = "structure",
    members = {
        text = {
            type = "string",
        },
        Url = {
            type = "string",
        },
    },
}

M.Remediation = {
    type = "structure",
    members = {
        recommendation = {
            type = "structure",
        },
    },
}

M.ResourceDetails = {
    type = "structure",
    members = {
        awsEc2Instance = {
            type = "structure",
        },
        awsEcrContainerImage = {
            type = "structure",
        },
        awsLambdaFunction = {
            type = "structure",
        },
        codeRepository = {
            type = "structure",
        },
    },
}

M.ResourceType = {
    AWS_EC2_INSTANCE = "AWS_EC2_INSTANCE",
    AWS_ECR_CONTAINER_IMAGE = "AWS_ECR_CONTAINER_IMAGE",
    AWS_ECR_REPOSITORY = "AWS_ECR_REPOSITORY",
    AWS_LAMBDA_FUNCTION = "AWS_LAMBDA_FUNCTION",
    CODE_REPOSITORY = "CODE_REPOSITORY",
}

M.Resource = {
    type = "structure",
    members = {
        type = {
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
        partition = {
            type = "string",
        },
        region = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        details = {
            type = "structure",
        },
    },
}

M.Severity = {
    INFORMATIONAL = "INFORMATIONAL",
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
    CRITICAL = "CRITICAL",
    UNTRIAGED = "UNTRIAGED",
}

M.FindingStatus = {
    ACTIVE = "ACTIVE",
    SUPPRESSED = "SUPPRESSED",
    CLOSED = "CLOSED",
}

M.FindingType = {
    NETWORK_REACHABILITY = "NETWORK_REACHABILITY",
    PACKAGE_VULNERABILITY = "PACKAGE_VULNERABILITY",
    CODE_VULNERABILITY = "CODE_VULNERABILITY",
}

M.Finding = {
    type = "structure",
    members = {
        findingArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awsAccountId = {
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
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
        },
        remediation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        severity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        firstObservedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastObservedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resources = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        inspectorScore = {
            type = "number",
        },
        inspectorScoreDetails = {
            type = "structure",
        },
        networkReachabilityDetails = {
            type = "structure",
        },
        packageVulnerabilityDetails = {
            type = "structure",
        },
        fixAvailable = {
            type = "string",
        },
        exploitAvailable = {
            type = "string",
        },
        exploitabilityDetails = {
            type = "structure",
        },
        codeVulnerabilityDetails = {
            type = "structure",
        },
        epss = {
            type = "structure",
        },
    },
}

M.GetCisScanReportInput = {
    type = "structure",
    members = {
        scanArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetAccounts = {
            type = "list",
            member_type = "string",
        },
        reportFormat = {
            type = "string",
        },
    },
}

M.GetCisScanReportOutput = {
    type = "structure",
    members = {
        url = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.GetCisScanResultDetailsInput = {
    type = "structure",
    members = {
        scanArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filterCriteria = {
            type = "structure",
        },
        sortBy = {
            type = "string",
        },
        sortOrder = {
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

M.GetCisScanResultDetailsOutput = {
    type = "structure",
    members = {
        scanResultDetails = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetClustersForImageInput = {
    type = "structure",
    members = {
        filter = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetClustersForImageOutput = {
    type = "structure",
    members = {
        cluster = {
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

M.GetCodeSecurityIntegrationInput = {
    type = "structure",
    members = {
        integrationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetCodeSecurityIntegrationOutput = {
    type = "structure",
    members = {
        integrationArn = {
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
        type = {
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
            traits = {
                required = true,
            },
        },
        createdOn = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdateOn = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        authorizationUrl = {
            type = "string",
        },
    },
}

M.GetCodeSecurityScanInput = {
    type = "structure",
    members = {
        resource = {
            type = "union",
            traits = {
                required = true,
            },
        },
        scanId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetCodeSecurityScanOutput = {
    type = "structure",
    members = {
        scanId = {
            type = "string",
        },
        resource = {
            type = "union",
        },
        accountId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        lastCommitId = {
            type = "string",
        },
    },
}

M.GetCodeSecurityScanConfigurationInput = {
    type = "structure",
    members = {
        scanConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetCodeSecurityScanConfigurationOutput = {
    type = "structure",
    members = {
        scanConfigurationArn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        configuration = {
            type = "structure",
        },
        level = {
            type = "string",
        },
        scopeSettings = {
            type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetConfigurationInput = {
    type = "structure",
}

M.GetConfigurationOutput = {
    type = "structure",
    members = {
        ecrConfiguration = {
            type = "structure",
        },
        ec2Configuration = {
            type = "structure",
        },
    },
}

M.GetDelegatedAdminAccountInput = {
    type = "structure",
}

M.GetDelegatedAdminAccountOutput = {
    type = "structure",
    members = {
        delegatedAdmin = {
            type = "structure",
        },
    },
}

M.GetEc2DeepInspectionConfigurationInput = {
    type = "structure",
}

M.GetEc2DeepInspectionConfigurationOutput = {
    type = "structure",
    members = {
        packagePaths = {
            type = "list",
            member_type = "string",
        },
        orgPackagePaths = {
            type = "list",
            member_type = "string",
        },
        status = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.GetEncryptionKeyInput = {
    type = "structure",
    members = {
        scanType = {
            type = "string",
            traits = {
                http_query = "scanType",
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                http_query = "resourceType",
                required = true,
            },
        },
    },
}

M.GetEncryptionKeyOutput = {
    type = "structure",
    members = {
        kmsKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetFindingsReportStatusInput = {
    type = "structure",
    members = {
        reportId = {
            type = "string",
        },
    },
}

M.ReportingErrorCode = {
    INTERNAL_ERROR = "INTERNAL_ERROR",
    INVALID_PERMISSIONS = "INVALID_PERMISSIONS",
    NO_FINDINGS_FOUND = "NO_FINDINGS_FOUND",
    BUCKET_NOT_FOUND = "BUCKET_NOT_FOUND",
    INCOMPATIBLE_BUCKET_REGION = "INCOMPATIBLE_BUCKET_REGION",
    MALFORMED_KMS_KEY = "MALFORMED_KMS_KEY",
}

M.GetFindingsReportStatusOutput = {
    type = "structure",
    members = {
        reportId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
        destination = {
            type = "structure",
        },
        filterCriteria = {
            type = "structure",
        },
    },
}

M.GetMemberInput = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Member = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
        },
        relationshipStatus = {
            type = "string",
        },
        delegatedAdminAccountId = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
        },
    },
}

M.GetMemberOutput = {
    type = "structure",
    members = {
        member = {
            type = "structure",
        },
    },
}

M.GetSbomExportInput = {
    type = "structure",
    members = {
        reportId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSbomExportOutput = {
    type = "structure",
    members = {
        reportId = {
            type = "string",
        },
        format = {
            type = "string",
        },
        status = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
        s3Destination = {
            type = "structure",
        },
        filterCriteria = {
            type = "structure",
        },
    },
}

M.Service = {
    EC2 = "EC2",
    ECR = "ECR",
    LAMBDA = "LAMBDA",
}

M.ListAccountPermissionsInput = {
    type = "structure",
    members = {
        service = {
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

M.Operation = {
    ENABLE_SCANNING = "ENABLE_SCANNING",
    DISABLE_SCANNING = "DISABLE_SCANNING",
    ENABLE_REPOSITORY = "ENABLE_REPOSITORY",
    DISABLE_REPOSITORY = "DISABLE_REPOSITORY",
}

M.Permission = {
    type = "structure",
    members = {
        service = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operation = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAccountPermissionsOutput = {
    type = "structure",
    members = {
        permissions = {
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

M.ListCisScanConfigurationsFilterCriteria = {
    type = "structure",
    members = {
        scanNameFilters = {
            type = "list",
            member_type = "structure",
        },
        targetResourceTagFilters = {
            type = "list",
            member_type = "structure",
        },
        scanConfigurationArnFilters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListCisScanConfigurationsInput = {
    type = "structure",
    members = {
        filterCriteria = {
            type = "structure",
        },
        sortBy = {
            type = "string",
        },
        sortOrder = {
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

M.ListCisScanConfigurationsOutput = {
    type = "structure",
    members = {
        scanConfigurations = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListCisScanResultsAggregatedByChecksInput = {
    type = "structure",
    members = {
        scanArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filterCriteria = {
            type = "structure",
        },
        sortBy = {
            type = "string",
        },
        sortOrder = {
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

M.ListCisScanResultsAggregatedByChecksOutput = {
    type = "structure",
    members = {
        checkAggregations = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListCisScanResultsAggregatedByTargetResourceInput = {
    type = "structure",
    members = {
        scanArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filterCriteria = {
            type = "structure",
        },
        sortBy = {
            type = "string",
        },
        sortOrder = {
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

M.ListCisScanResultsAggregatedByTargetResourceOutput = {
    type = "structure",
    members = {
        targetResourceAggregations = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListCisScansDetailLevel = {
    ORGANIZATION = "ORGANIZATION",
    MEMBER = "MEMBER",
}

M.ListCisScansFilterCriteria = {
    type = "structure",
    members = {
        scanNameFilters = {
            type = "list",
            member_type = "structure",
        },
        targetResourceTagFilters = {
            type = "list",
            member_type = "structure",
        },
        targetResourceIdFilters = {
            type = "list",
            member_type = "structure",
        },
        scanStatusFilters = {
            type = "list",
            member_type = "structure",
        },
        scanAtFilters = {
            type = "list",
            member_type = "structure",
        },
        scanConfigurationArnFilters = {
            type = "list",
            member_type = "structure",
        },
        scanArnFilters = {
            type = "list",
            member_type = "structure",
        },
        scheduledByFilters = {
            type = "list",
            member_type = "structure",
        },
        failedChecksFilters = {
            type = "list",
            member_type = "structure",
        },
        targetAccountIdFilters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListCisScansSortBy = {
    STATUS = "STATUS",
    SCHEDULED_BY = "SCHEDULED_BY",
    SCAN_START_DATE = "SCAN_START_DATE",
    FAILED_CHECKS = "FAILED_CHECKS",
}

M.ListCisScansInput = {
    type = "structure",
    members = {
        filterCriteria = {
            type = "structure",
        },
        detailLevel = {
            type = "string",
        },
        sortBy = {
            type = "string",
        },
        sortOrder = {
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

M.ListCisScansOutput = {
    type = "structure",
    members = {
        scans = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListCodeSecurityIntegrationsInput = {
    type = "structure",
    members = {
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
    },
}

M.ListCodeSecurityIntegrationsOutput = {
    type = "structure",
    members = {
        integrations = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListCodeSecurityScanConfigurationAssociationsInput = {
    type = "structure",
    members = {
        scanConfigurationArn = {
            type = "string",
            traits = {
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
    },
}

M.ListCodeSecurityScanConfigurationAssociationsOutput = {
    type = "structure",
    members = {
        associations = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListCodeSecurityScanConfigurationsInput = {
    type = "structure",
    members = {
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
    },
}

M.ListCodeSecurityScanConfigurationsOutput = {
    type = "structure",
    members = {
        configurations = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListCoverageInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
        filterCriteria = {
            type = "structure",
        },
    },
}

M.ListCoverageOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        coveredResources = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListCoverageStatisticsInput = {
    type = "structure",
    members = {
        filterCriteria = {
            type = "structure",
        },
        groupBy = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListCoverageStatisticsOutput = {
    type = "structure",
    members = {
        countsByGroup = {
            type = "list",
            member_type = "structure",
        },
        totalCounts = {
            type = "number",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDelegatedAdminAccountsInput = {
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

M.ListDelegatedAdminAccountsOutput = {
    type = "structure",
    members = {
        delegatedAdminAccounts = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListFiltersInput = {
    type = "structure",
    members = {
        arns = {
            type = "list",
            member_type = "string",
        },
        action = {
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

M.ListFiltersOutput = {
    type = "structure",
    members = {
        filters = {
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

M.ListFindingAggregationsInput = {
    type = "structure",
    members = {
        aggregationType = {
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
        accountIds = {
            type = "list",
            member_type = "structure",
        },
        aggregationRequest = {
            type = "union",
        },
    },
}

M.ListFindingAggregationsOutput = {
    type = "structure",
    members = {
        aggregationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        responses = {
            type = "list",
            member_type = "union",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SortField = {
    AWS_ACCOUNT_ID = "AWS_ACCOUNT_ID",
    FINDING_TYPE = "FINDING_TYPE",
    SEVERITY = "SEVERITY",
    FIRST_OBSERVED_AT = "FIRST_OBSERVED_AT",
    LAST_OBSERVED_AT = "LAST_OBSERVED_AT",
    FINDING_STATUS = "FINDING_STATUS",
    RESOURCE_TYPE = "RESOURCE_TYPE",
    ECR_IMAGE_PUSHED_AT = "ECR_IMAGE_PUSHED_AT",
    ECR_IMAGE_REPOSITORY_NAME = "ECR_IMAGE_REPOSITORY_NAME",
    ECR_IMAGE_REGISTRY = "ECR_IMAGE_REGISTRY",
    NETWORK_PROTOCOL = "NETWORK_PROTOCOL",
    COMPONENT_TYPE = "COMPONENT_TYPE",
    VULNERABILITY_ID = "VULNERABILITY_ID",
    VULNERABILITY_SOURCE = "VULNERABILITY_SOURCE",
    INSPECTOR_SCORE = "INSPECTOR_SCORE",
    VENDOR_SEVERITY = "VENDOR_SEVERITY",
    EPSS_SCORE = "EPSS_SCORE",
}

M.SortCriteria = {
    type = "structure",
    members = {
        field = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sortOrder = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListFindingsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
        filterCriteria = {
            type = "structure",
        },
        sortCriteria = {
            type = "structure",
        },
    },
}

M.ListFindingsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        findings = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListMembersInput = {
    type = "structure",
    members = {
        onlyAssociated = {
            type = "boolean",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListMembersOutput = {
    type = "structure",
    members = {
        members = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListUsageTotalsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
        accountIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UsageType = {
    EC2_INSTANCE_HOURS = "EC2_INSTANCE_HOURS",
    ECR_INITIAL_SCAN = "ECR_INITIAL_SCAN",
    ECR_RESCAN = "ECR_RESCAN",
    LAMBDA_FUNCTION_HOURS = "LAMBDA_FUNCTION_HOURS",
    LAMBDA_FUNCTION_CODE_HOURS = "LAMBDA_FUNCTION_CODE_HOURS",
    CODE_REPOSITORY_SAST = "CODE_REPOSITORY_SAST",
    CODE_REPOSITORY_IAC = "CODE_REPOSITORY_IAC",
    CODE_REPOSITORY_SCA = "CODE_REPOSITORY_SCA",
    EC2_AGENTLESS_INSTANCE_HOURS = "EC2_AGENTLESS_INSTANCE_HOURS",
}

M.Usage = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        total = {
            type = "number",
        },
        estimatedMonthlyCost = {
            type = "number",
        },
        currency = {
            type = "string",
        },
    },
}

M.UsageTotal = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
        },
        usage = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListUsageTotalsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        totals = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ResetEncryptionKeyInput = {
    type = "structure",
    members = {
        scanType = {
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

M.ResetEncryptionKeyOutput = {
    type = "structure",
}

M.SearchVulnerabilitiesFilterCriteria = {
    type = "structure",
    members = {
        vulnerabilityIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchVulnerabilitiesInput = {
    type = "structure",
    members = {
        filterCriteria = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.VulnerabilitySource = {
    NVD = "NVD",
}

M.Vulnerability = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cwes = {
            type = "list",
            member_type = "string",
        },
        cisaData = {
            type = "structure",
        },
        source = {
            type = "string",
        },
        description = {
            type = "string",
        },
        atigData = {
            type = "structure",
        },
        vendorSeverity = {
            type = "string",
        },
        cvss4 = {
            type = "structure",
        },
        cvss3 = {
            type = "structure",
        },
        relatedVulnerabilities = {
            type = "list",
            member_type = "string",
        },
        cvss2 = {
            type = "structure",
        },
        vendorCreatedAt = {
            type = "timestamp",
        },
        vendorUpdatedAt = {
            type = "timestamp",
        },
        sourceUrl = {
            type = "string",
        },
        referenceUrls = {
            type = "list",
            member_type = "string",
        },
        exploitObserved = {
            type = "structure",
        },
        detectionPlatforms = {
            type = "list",
            member_type = "string",
        },
        epss = {
            type = "structure",
        },
    },
}

M.SearchVulnerabilitiesOutput = {
    type = "structure",
    members = {
        vulnerabilities = {
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

M.SendCisSessionHealthInput = {
    type = "structure",
    members = {
        scanJobId = {
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

M.SendCisSessionHealthOutput = {
    type = "structure",
}

M.SendCisSessionTelemetryInput = {
    type = "structure",
    members = {
        scanJobId = {
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
        messages = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SendCisSessionTelemetryOutput = {
    type = "structure",
}

M.StartCisSessionMessage = {
    type = "structure",
    members = {
        sessionToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartCisSessionInput = {
    type = "structure",
    members = {
        scanJobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.StartCisSessionOutput = {
    type = "structure",
}

M.StartCodeSecurityScanInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
        },
        resource = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.StartCodeSecurityScanOutput = {
    type = "structure",
    members = {
        scanId = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.StopCisMessageProgress = {
    type = "structure",
    members = {
        totalChecks = {
            type = "number",
        },
        successfulChecks = {
            type = "number",
        },
        failedChecks = {
            type = "number",
        },
        notEvaluatedChecks = {
            type = "number",
        },
        unknownChecks = {
            type = "number",
        },
        notApplicableChecks = {
            type = "number",
        },
        informationalChecks = {
            type = "number",
        },
        errorChecks = {
            type = "number",
        },
    },
}

M.StopCisSessionStatus = {
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
    INTERRUPTED = "INTERRUPTED",
    UNSUPPORTED_OS = "UNSUPPORTED_OS",
}

M.StopCisSessionMessage = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
        },
        progress = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        computePlatform = {
            type = "structure",
        },
        benchmarkVersion = {
            type = "string",
        },
        benchmarkProfile = {
            type = "string",
        },
    },
}

M.StopCisSessionInput = {
    type = "structure",
    members = {
        scanJobId = {
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
        message = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.StopCisSessionOutput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
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

M.UpdateCisTargets = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member_type = "string",
        },
        targetResourceTags = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
    },
}

M.UpdateCisScanConfigurationInput = {
    type = "structure",
    members = {
        scanConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scanName = {
            type = "string",
        },
        securityLevel = {
            type = "string",
        },
        schedule = {
            type = "union",
        },
        targets = {
            type = "structure",
        },
    },
}

M.UpdateCisScanConfigurationOutput = {
    type = "structure",
    members = {
        scanConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateGitHubIntegrationDetail = {
    type = "structure",
    members = {
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        installationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateGitLabSelfManagedIntegrationDetail = {
    type = "structure",
    members = {
        authCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateIntegrationDetails = {
    type = "union",
    members = {
        gitlabSelfManaged = {
            type = "structure",
        },
        github = {
            type = "structure",
        },
    },
}

M.UpdateCodeSecurityIntegrationInput = {
    type = "structure",
    members = {
        integrationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        details = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCodeSecurityIntegrationOutput = {
    type = "structure",
    members = {
        integrationArn = {
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

M.UpdateCodeSecurityScanConfigurationInput = {
    type = "structure",
    members = {
        scanConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCodeSecurityScanConfigurationOutput = {
    type = "structure",
    members = {
        scanConfigurationArn = {
            type = "string",
        },
    },
}

M.UpdateConfigurationInput = {
    type = "structure",
    members = {
        ecrConfiguration = {
            type = "structure",
        },
        ec2Configuration = {
            type = "structure",
        },
    },
}

M.UpdateConfigurationOutput = {
    type = "structure",
}

M.UpdateEc2DeepInspectionConfigurationInput = {
    type = "structure",
    members = {
        activateDeepInspection = {
            type = "boolean",
        },
        packagePaths = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UpdateEc2DeepInspectionConfigurationOutput = {
    type = "structure",
    members = {
        packagePaths = {
            type = "list",
            member_type = "string",
        },
        orgPackagePaths = {
            type = "list",
            member_type = "string",
        },
        status = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.UpdateEncryptionKeyInput = {
    type = "structure",
    members = {
        kmsKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scanType = {
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

M.UpdateEncryptionKeyOutput = {
    type = "structure",
}

M.UpdateFilterInput = {
    type = "structure",
    members = {
        action = {
            type = "string",
        },
        description = {
            type = "string",
        },
        filterCriteria = {
            type = "structure",
        },
        name = {
            type = "string",
        },
        filterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
        },
    },
}

M.UpdateFilterOutput = {
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

M.UpdateOrganizationConfigurationInput = {
    type = "structure",
    members = {
        autoEnable = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateOrganizationConfigurationOutput = {
    type = "structure",
    members = {
        autoEnable = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateOrgEc2DeepInspectionConfigurationInput = {
    type = "structure",
    members = {
        orgPackagePaths = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateOrgEc2DeepInspectionConfigurationOutput = {
    type = "structure",
}

return M
