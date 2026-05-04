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
    id = "ResourceStatus",
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
    id = "Account",
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
        resourceStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceStatus }),
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
    id = "AccountAggregation",
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
    id = "SeverityCounts",
    members = {
        all = {
            type = "long",
        },
        medium = {
            type = "long",
        },
        high = {
            type = "long",
        },
        critical = {
            type = "long",
        },
    },
}

M.AccountAggregationResponse = {
    type = "structure",
    id = "AccountAggregationResponse",
    members = {
        accountId = {
            type = "string",
        },
        severityCounts = M.SeverityCounts,
        exploitAvailableCount = {
            type = "long",
        },
        fixAvailableCount = {
            type = "long",
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
    id = "CisStringFilter",
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
    id = "State",
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
    id = "ResourceState",
    members = {
        ec2 = setmetatable({ traits = {
            required = true,
        } }, { __index = M.State }),
        ecr = setmetatable({ traits = {
            required = true,
        } }, { __index = M.State }),
        lambda = M.State,
        lambdaCode = M.State,
        codeRepository = M.State,
    },
}

M.AccountState = {
    type = "structure",
    id = "AccountState",
    members = {
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        state = setmetatable({ traits = {
            required = true,
        } }, { __index = M.State }),
        resourceState = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceState }),
    },
}

M.StringComparison = {
    EQUALS = "EQUALS",
    PREFIX = "PREFIX",
    NOT_EQUALS = "NOT_EQUALS",
}

M.StringFilter = {
    type = "structure",
    id = "StringFilter",
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
    id = "AmiAggregation",
    members = {
        amis = {
            type = "list",
            member = M.StringFilter,
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
    id = "NumberFilter",
    members = {
        upperInclusive = {
            type = "double",
        },
        lowerInclusive = {
            type = "double",
        },
    },
}

M.DateFilter = {
    type = "structure",
    id = "DateFilter",
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
    id = "AwsEcrContainerAggregation",
    members = {
        resourceIds = {
            type = "list",
            member = M.StringFilter,
        },
        imageShas = {
            type = "list",
            member = M.StringFilter,
        },
        repositories = {
            type = "list",
            member = M.StringFilter,
        },
        architectures = {
            type = "list",
            member = M.StringFilter,
        },
        imageTags = {
            type = "list",
            member = M.StringFilter,
        },
        sortOrder = {
            type = "string",
        },
        sortBy = {
            type = "string",
        },
        lastInUseAt = {
            type = "list",
            member = M.DateFilter,
        },
        inUseCount = {
            type = "list",
            member = M.NumberFilter,
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
    id = "CodeRepositoryAggregation",
    members = {
        projectNames = {
            type = "list",
            member = M.StringFilter,
        },
        providerTypes = {
            type = "list",
            member = M.StringFilter,
        },
        sortOrder = {
            type = "string",
        },
        sortBy = {
            type = "string",
        },
        resourceIds = {
            type = "list",
            member = M.StringFilter,
        },
    },
}

M.MapComparison = {
    EQUALS = "EQUALS",
}

M.MapFilter = {
    type = "structure",
    id = "MapFilter",
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
    id = "Ec2InstanceAggregation",
    members = {
        amis = {
            type = "list",
            member = M.StringFilter,
        },
        operatingSystems = {
            type = "list",
            member = M.StringFilter,
        },
        instanceIds = {
            type = "list",
            member = M.StringFilter,
        },
        instanceTags = {
            type = "list",
            member = M.MapFilter,
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
    id = "FindingTypeAggregation",
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
    id = "ImageLayerAggregation",
    members = {
        repositories = {
            type = "list",
            member = M.StringFilter,
        },
        resourceIds = {
            type = "list",
            member = M.StringFilter,
        },
        layerHashes = {
            type = "list",
            member = M.StringFilter,
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
    id = "LambdaFunctionAggregation",
    members = {
        resourceIds = {
            type = "list",
            member = M.StringFilter,
        },
        functionNames = {
            type = "list",
            member = M.StringFilter,
        },
        runtimes = {
            type = "list",
            member = M.StringFilter,
        },
        functionTags = {
            type = "list",
            member = M.MapFilter,
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
    id = "LambdaLayerAggregation",
    members = {
        functionNames = {
            type = "list",
            member = M.StringFilter,
        },
        resourceIds = {
            type = "list",
            member = M.StringFilter,
        },
        layerArns = {
            type = "list",
            member = M.StringFilter,
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
    id = "PackageAggregation",
    members = {
        packageNames = {
            type = "list",
            member = M.StringFilter,
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
    id = "RepositoryAggregation",
    members = {
        repositories = {
            type = "list",
            member = M.StringFilter,
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
    id = "TitleAggregation",
    members = {
        titles = {
            type = "list",
            member = M.StringFilter,
        },
        vulnerabilityIds = {
            type = "list",
            member = M.StringFilter,
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
    id = "AggregationRequest",
    members = {
        accountAggregation = M.AccountAggregation,
        amiAggregation = M.AmiAggregation,
        awsEcrContainerAggregation = M.AwsEcrContainerAggregation,
        ec2InstanceAggregation = M.Ec2InstanceAggregation,
        findingTypeAggregation = M.FindingTypeAggregation,
        imageLayerAggregation = M.ImageLayerAggregation,
        packageAggregation = M.PackageAggregation,
        repositoryAggregation = M.RepositoryAggregation,
        titleAggregation = M.TitleAggregation,
        lambdaLayerAggregation = M.LambdaLayerAggregation,
        lambdaFunctionAggregation = M.LambdaFunctionAggregation,
        codeRepositoryAggregation = M.CodeRepositoryAggregation,
    },
}

M.AmiAggregationResponse = {
    type = "structure",
    id = "AmiAggregationResponse",
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
        severityCounts = M.SeverityCounts,
        affectedInstances = {
            type = "long",
        },
    },
}

M.AwsEcrContainerAggregationResponse = {
    type = "structure",
    id = "AwsEcrContainerAggregationResponse",
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
            member = { type = "string" },
        },
        accountId = {
            type = "string",
        },
        severityCounts = M.SeverityCounts,
        lastInUseAt = {
            type = "timestamp",
        },
        inUseCount = {
            type = "long",
        },
    },
}

M.CodeRepositoryAggregationResponse = {
    type = "structure",
    id = "CodeRepositoryAggregationResponse",
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
        severityCounts = M.SeverityCounts,
        exploitAvailableActiveFindingsCount = {
            type = "long",
        },
        fixAvailableActiveFindingsCount = {
            type = "long",
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
    id = "Ec2InstanceAggregationResponse",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        accountId = {
            type = "string",
        },
        severityCounts = M.SeverityCounts,
        networkFindings = {
            type = "long",
        },
    },
}

M.FindingTypeAggregationResponse = {
    type = "structure",
    id = "FindingTypeAggregationResponse",
    members = {
        accountId = {
            type = "string",
        },
        severityCounts = M.SeverityCounts,
        exploitAvailableCount = {
            type = "long",
        },
        fixAvailableCount = {
            type = "long",
        },
    },
}

M.ImageLayerAggregationResponse = {
    type = "structure",
    id = "ImageLayerAggregationResponse",
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
        severityCounts = M.SeverityCounts,
    },
}

M.LambdaFunctionAggregationResponse = {
    type = "structure",
    id = "LambdaFunctionAggregationResponse",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        accountId = {
            type = "string",
        },
        severityCounts = M.SeverityCounts,
        lastModifiedAt = {
            type = "timestamp",
        },
    },
}

M.LambdaLayerAggregationResponse = {
    type = "structure",
    id = "LambdaLayerAggregationResponse",
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
        severityCounts = M.SeverityCounts,
    },
}

M.PackageAggregationResponse = {
    type = "structure",
    id = "PackageAggregationResponse",
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
        severityCounts = M.SeverityCounts,
    },
}

M.RepositoryAggregationResponse = {
    type = "structure",
    id = "RepositoryAggregationResponse",
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
        severityCounts = M.SeverityCounts,
        affectedImages = {
            type = "long",
        },
    },
}

M.TitleAggregationResponse = {
    type = "structure",
    id = "TitleAggregationResponse",
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
        severityCounts = M.SeverityCounts,
    },
}

M.AggregationResponse = {
    type = "union",
    id = "AggregationResponse",
    members = {
        accountAggregation = M.AccountAggregationResponse,
        amiAggregation = M.AmiAggregationResponse,
        awsEcrContainerAggregation = M.AwsEcrContainerAggregationResponse,
        ec2InstanceAggregation = M.Ec2InstanceAggregationResponse,
        findingTypeAggregation = M.FindingTypeAggregationResponse,
        imageLayerAggregation = M.ImageLayerAggregationResponse,
        packageAggregation = M.PackageAggregationResponse,
        repositoryAggregation = M.RepositoryAggregationResponse,
        titleAggregation = M.TitleAggregationResponse,
        lambdaLayerAggregation = M.LambdaLayerAggregationResponse,
        lambdaFunctionAggregation = M.LambdaFunctionAggregationResponse,
        codeRepositoryAggregation = M.CodeRepositoryAggregationResponse,
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
    id = "CodeSecurityResource",
    members = {
        projectId = {
            type = "string",
        },
    },
}

M.AssociateConfigurationRequest = {
    type = "structure",
    id = "AssociateConfigurationRequest",
    members = {
        scanConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CodeSecurityResource }),
    },
}

M.AssociateMemberInput = {
    type = "structure",
    id = "AssociateMemberInput",
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
    id = "AssociateMemberOutput",
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
    id = "InternalServerException",
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
                http_header = "Retry-After",
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
    id = "ThrottlingException",
    error = "client",
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
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    id = "ValidationExceptionField",
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
    id = "ValidationException",
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
            member = M.ValidationExceptionField,
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
    id = "AtigData",
    members = {
        firstSeen = {
            type = "timestamp",
        },
        lastSeen = {
            type = "timestamp",
        },
        targets = {
            type = "list",
            member = { type = "string" },
        },
        ttps = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AutoEnable = {
    type = "structure",
    id = "AutoEnable",
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
    id = "AwsEc2InstanceDetails",
    members = {
        type = {
            type = "string",
        },
        imageId = {
            type = "string",
        },
        ipV4Addresses = {
            type = "list",
            member = { type = "string" },
        },
        ipV6Addresses = {
            type = "list",
            member = { type = "string" },
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
    id = "AwsEcrContainerImageDetails",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imageTags = {
            type = "list",
            member = { type = "string" },
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
            type = "long",
        },
    },
}

M.AwsEcsMetadataDetails = {
    type = "structure",
    id = "AwsEcsMetadataDetails",
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
    id = "AwsEksWorkloadInfo",
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
    id = "AwsEksMetadataDetails",
    members = {
        namespace = {
            type = "string",
        },
        workloadInfoList = {
            type = "list",
            member = M.AwsEksWorkloadInfo,
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
    id = "LambdaVpcConfig",
    members = {
        subnetIds = {
            type = "list",
            member = { type = "string" },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        vpcId = {
            type = "string",
        },
    },
}

M.AwsLambdaFunctionDetails = {
    type = "structure",
    id = "AwsLambdaFunctionDetails",
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
            member = { type = "string" },
        },
        vpcConfig = M.LambdaVpcConfig,
        packageType = {
            type = "string",
        },
        architectures = {
            type = "list",
            member = { type = "string" },
        },
        lastModifiedAt = {
            type = "timestamp",
        },
    },
}

M.BadRequestException = {
    type = "structure",
    id = "BadRequestException",
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
    id = "BatchAssociateCodeSecurityScanConfigurationInput",
    members = {
        associateConfigurationRequests = {
            type = "list",
            member = M.AssociateConfigurationRequest,
            traits = {
                required = true,
            },
        },
    },
}

M.FailedAssociationResult = {
    type = "structure",
    id = "FailedAssociationResult",
    members = {
        scanConfigurationArn = {
            type = "string",
        },
        resource = M.CodeSecurityResource,
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
    id = "SuccessfulAssociationResult",
    members = {
        scanConfigurationArn = {
            type = "string",
        },
        resource = M.CodeSecurityResource,
    },
}

M.BatchAssociateCodeSecurityScanConfigurationOutput = {
    type = "structure",
    id = "BatchAssociateCodeSecurityScanConfigurationOutput",
    members = {
        failedAssociations = {
            type = "list",
            member = M.FailedAssociationResult,
        },
        successfulAssociations = {
            type = "list",
            member = M.SuccessfulAssociationResult,
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

M.DisassociateConfigurationRequest = {
    type = "structure",
    id = "DisassociateConfigurationRequest",
    members = {
        scanConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CodeSecurityResource }),
    },
}

M.BatchDisassociateCodeSecurityScanConfigurationInput = {
    type = "structure",
    id = "BatchDisassociateCodeSecurityScanConfigurationInput",
    members = {
        disassociateConfigurationRequests = {
            type = "list",
            member = M.DisassociateConfigurationRequest,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDisassociateCodeSecurityScanConfigurationOutput = {
    type = "structure",
    id = "BatchDisassociateCodeSecurityScanConfigurationOutput",
    members = {
        failedAssociations = {
            type = "list",
            member = M.FailedAssociationResult,
        },
        successfulAssociations = {
            type = "list",
            member = M.SuccessfulAssociationResult,
        },
    },
}

M.BatchGetAccountStatusInput = {
    type = "structure",
    id = "BatchGetAccountStatusInput",
    members = {
        accountIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.FailedAccount = {
    type = "structure",
    id = "FailedAccount",
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
        resourceStatus = M.ResourceStatus,
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
    id = "BatchGetAccountStatusOutput",
    members = {
        accounts = {
            type = "list",
            member = M.AccountState,
            traits = {
                required = true,
            },
        },
        failedAccounts = {
            type = "list",
            member = M.FailedAccount,
        },
    },
}

M.BatchGetCodeSnippetInput = {
    type = "structure",
    id = "BatchGetCodeSnippetInput",
    members = {
        findingArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CodeLine = {
    type = "structure",
    id = "CodeLine",
    members = {
        content = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lineNumber = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.SuggestedFix = {
    type = "structure",
    id = "SuggestedFix",
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
    id = "CodeSnippetResult",
    members = {
        findingArn = {
            type = "string",
        },
        startLine = {
            type = "integer",
        },
        endLine = {
            type = "integer",
        },
        codeSnippet = {
            type = "list",
            member = M.CodeLine,
        },
        suggestedFixes = {
            type = "list",
            member = M.SuggestedFix,
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
    id = "CodeSnippetError",
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
    id = "BatchGetCodeSnippetOutput",
    members = {
        codeSnippetResults = {
            type = "list",
            member = M.CodeSnippetResult,
        },
        errors = {
            type = "list",
            member = M.CodeSnippetError,
        },
    },
}

M.BatchGetFindingDetailsInput = {
    type = "structure",
    id = "BatchGetFindingDetailsInput",
    members = {
        findingArns = {
            type = "list",
            member = { type = "string" },
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
    id = "FindingDetailsError",
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
    id = "CisaData",
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
    id = "Evidence",
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
    id = "ExploitObserved",
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
    id = "FindingDetail",
    members = {
        findingArn = {
            type = "string",
        },
        cisaData = M.CisaData,
        riskScore = {
            type = "integer",
        },
        evidences = {
            type = "list",
            member = M.Evidence,
        },
        ttps = {
            type = "list",
            member = { type = "string" },
        },
        tools = {
            type = "list",
            member = { type = "string" },
        },
        exploitObserved = M.ExploitObserved,
        referenceUrls = {
            type = "list",
            member = { type = "string" },
        },
        cwes = {
            type = "list",
            member = { type = "string" },
        },
        epssScore = {
            type = "double",
        },
    },
}

M.BatchGetFindingDetailsOutput = {
    type = "structure",
    id = "BatchGetFindingDetailsOutput",
    members = {
        findingDetails = {
            type = "list",
            member = M.FindingDetail,
        },
        errors = {
            type = "list",
            member = M.FindingDetailsError,
        },
    },
}

M.BatchGetFreeTrialInfoInput = {
    type = "structure",
    id = "BatchGetFreeTrialInfoInput",
    members = {
        accountIds = {
            type = "list",
            member = { type = "string" },
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
    id = "FreeTrialInfo",
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
    id = "FreeTrialAccountInfo",
    members = {
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        freeTrialInfo = {
            type = "list",
            member = M.FreeTrialInfo,
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
    id = "FreeTrialInfoError",
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
    id = "BatchGetFreeTrialInfoOutput",
    members = {
        accounts = {
            type = "list",
            member = M.FreeTrialAccountInfo,
            traits = {
                required = true,
            },
        },
        failedAccounts = {
            type = "list",
            member = M.FreeTrialInfoError,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetMemberEc2DeepInspectionStatusInput = {
    type = "structure",
    id = "BatchGetMemberEc2DeepInspectionStatusInput",
    members = {
        accountIds = {
            type = "list",
            member = { type = "string" },
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
    id = "MemberAccountEc2DeepInspectionStatusState",
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
    id = "FailedMemberAccountEc2DeepInspectionStatusState",
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
    id = "BatchGetMemberEc2DeepInspectionStatusOutput",
    members = {
        accountIds = {
            type = "list",
            member = M.MemberAccountEc2DeepInspectionStatusState,
        },
        failedAccountIds = {
            type = "list",
            member = M.FailedMemberAccountEc2DeepInspectionStatusState,
        },
    },
}

M.MemberAccountEc2DeepInspectionStatus = {
    type = "structure",
    id = "MemberAccountEc2DeepInspectionStatus",
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
    id = "BatchUpdateMemberEc2DeepInspectionStatusInput",
    members = {
        accountIds = {
            type = "list",
            member = M.MemberAccountEc2DeepInspectionStatus,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateMemberEc2DeepInspectionStatusOutput = {
    type = "structure",
    id = "BatchUpdateMemberEc2DeepInspectionStatusOutput",
    members = {
        accountIds = {
            type = "list",
            member = M.MemberAccountEc2DeepInspectionStatusState,
        },
        failedAccountIds = {
            type = "list",
            member = M.FailedMemberAccountEc2DeepInspectionStatusState,
        },
    },
}

M.CancelFindingsReportInput = {
    type = "structure",
    id = "CancelFindingsReportInput",
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
    id = "CancelFindingsReportOutput",
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
    id = "CancelSbomExportInput",
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
    id = "CancelSbomExportOutput",
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
    id = "StatusCounts",
    members = {
        failed = {
            type = "integer",
        },
        skipped = {
            type = "integer",
        },
        passed = {
            type = "integer",
        },
    },
}

M.CisCheckAggregation = {
    type = "structure",
    id = "CisCheckAggregation",
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
        statusCounts = M.StatusCounts,
        platform = {
            type = "string",
        },
    },
}

M.CisDateFilter = {
    type = "structure",
    id = "CisDateFilter",
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
    id = "CisFindingStatusFilter",
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
    id = "CisNumberFilter",
    members = {
        upperInclusive = {
            type = "integer",
        },
        lowerInclusive = {
            type = "integer",
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
    id = "CisResultStatusFilter",
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
    id = "CisTargets",
    members = {
        accountIds = {
            type = "list",
            member = { type = "string" },
        },
        targetResourceTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.CisScan = {
    type = "structure",
    id = "CisScan",
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
            type = "integer",
        },
        totalChecks = {
            type = "integer",
        },
        targets = M.CisTargets,
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
    id = "Time",
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
    id = "DailySchedule",
    members = {
        startTime = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Time }),
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
    id = "MonthlySchedule",
    members = {
        startTime = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Time }),
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
    id = "OneTimeSchedule",
}

M.WeeklySchedule = {
    type = "structure",
    id = "WeeklySchedule",
    members = {
        startTime = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Time }),
        days = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.Schedule = {
    type = "union",
    id = "Schedule",
    members = {
        oneTime = M.OneTimeSchedule,
        daily = M.DailySchedule,
        weekly = M.WeeklySchedule,
        monthly = M.MonthlySchedule,
    },
}

M.CisScanConfiguration = {
    type = "structure",
    id = "CisScanConfiguration",
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
        schedule = M.Schedule,
        targets = M.CisTargets,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CisScanConfigurationsSortBy = {
    SCAN_NAME = "SCAN_NAME",
    SCAN_CONFIGURATION_ARN = "SCAN_CONFIGURATION_ARN",
}

M.CisScanResultDetails = {
    type = "structure",
    id = "CisScanResultDetails",
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
    id = "CisSecurityLevelFilter",
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
    id = "CisScanResultDetailsFilterCriteria",
    members = {
        findingStatusFilters = {
            type = "list",
            member = M.CisFindingStatusFilter,
        },
        checkIdFilters = {
            type = "list",
            member = M.CisStringFilter,
        },
        titleFilters = {
            type = "list",
            member = M.CisStringFilter,
        },
        securityLevelFilters = {
            type = "list",
            member = M.CisSecurityLevelFilter,
        },
        findingArnFilters = {
            type = "list",
            member = M.CisStringFilter,
        },
    },
}

M.CisScanResultDetailsSortBy = {
    CHECK_ID = "CHECK_ID",
    STATUS = "STATUS",
}

M.CisScanResultsAggregatedByChecksFilterCriteria = {
    type = "structure",
    id = "CisScanResultsAggregatedByChecksFilterCriteria",
    members = {
        accountIdFilters = {
            type = "list",
            member = M.CisStringFilter,
        },
        checkIdFilters = {
            type = "list",
            member = M.CisStringFilter,
        },
        titleFilters = {
            type = "list",
            member = M.CisStringFilter,
        },
        platformFilters = {
            type = "list",
            member = M.CisStringFilter,
        },
        failedResourcesFilters = {
            type = "list",
            member = M.CisNumberFilter,
        },
        securityLevelFilters = {
            type = "list",
            member = M.CisSecurityLevelFilter,
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
    id = "TagFilter",
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
    id = "CisTargetStatusFilter",
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
    id = "CisTargetStatusReasonFilter",
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
    id = "CisScanResultsAggregatedByTargetResourceFilterCriteria",
    members = {
        accountIdFilters = {
            type = "list",
            member = M.CisStringFilter,
        },
        statusFilters = {
            type = "list",
            member = M.CisResultStatusFilter,
        },
        checkIdFilters = {
            type = "list",
            member = M.CisStringFilter,
        },
        targetResourceIdFilters = {
            type = "list",
            member = M.CisStringFilter,
        },
        targetResourceTagFilters = {
            type = "list",
            member = M.TagFilter,
        },
        platformFilters = {
            type = "list",
            member = M.CisStringFilter,
        },
        targetStatusFilters = {
            type = "list",
            member = M.CisTargetStatusFilter,
        },
        targetStatusReasonFilters = {
            type = "list",
            member = M.CisTargetStatusReasonFilter,
        },
        failedChecksFilters = {
            type = "list",
            member = M.CisNumberFilter,
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
    id = "CisScanStatusFilter",
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
    id = "CisSessionMessage",
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
    id = "CisTargetResourceAggregation",
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
            key = { type = "string" },
            value = { type = "list" },
        },
        statusCounts = M.StatusCounts,
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
    id = "ClusterMetadata",
    members = {
        awsEcsMetadataDetails = M.AwsEcsMetadataDetails,
        awsEksMetadataDetails = M.AwsEksMetadataDetails,
    },
}

M.ClusterDetails = {
    type = "structure",
    id = "ClusterDetails",
    members = {
        lastInUse = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        runningUnitCount = {
            type = "long",
        },
        stoppedUnitCount = {
            type = "long",
        },
        clusterMetadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ClusterMetadata }),
    },
}

M.ClusterForImageFilterCriteria = {
    type = "structure",
    id = "ClusterForImageFilterCriteria",
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
    id = "ClusterInformation",
    members = {
        clusterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clusterDetails = {
            type = "list",
            member = M.ClusterDetails,
        },
    },
}

M.CodeFilePath = {
    type = "structure",
    id = "CodeFilePath",
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
            type = "integer",
            traits = {
                default = nil,
                required = true,
            },
        },
        endLine = {
            type = "integer",
            traits = {
                default = nil,
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
    id = "CodeRepositoryDetails",
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
    id = "ScanStatus",
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
    id = "CodeRepositoryOnDemandScan",
    members = {
        lastScannedCommitId = {
            type = "string",
        },
        lastScanAt = {
            type = "timestamp",
        },
        scanStatus = M.ScanStatus,
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
    id = "ProjectContinuousIntegrationScanConfiguration",
    members = {
        supportedEvent = {
            type = "string",
        },
        ruleSetCategories = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ProjectPeriodicScanConfiguration = {
    type = "structure",
    id = "ProjectPeriodicScanConfiguration",
    members = {
        frequencyExpression = {
            type = "string",
        },
        ruleSetCategories = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ProjectCodeSecurityScanConfiguration = {
    type = "structure",
    id = "ProjectCodeSecurityScanConfiguration",
    members = {
        periodicScanConfigurations = {
            type = "list",
            member = M.ProjectPeriodicScanConfiguration,
        },
        continuousIntegrationScanConfigurations = {
            type = "list",
            member = M.ProjectContinuousIntegrationScanConfiguration,
        },
    },
}

M.CodeRepositoryMetadata = {
    type = "structure",
    id = "CodeRepositoryMetadata",
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
        scanConfiguration = M.ProjectCodeSecurityScanConfiguration,
        onDemandScan = M.CodeRepositoryOnDemandScan,
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
    id = "CodeSecurityIntegrationSummary",
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ContinuousIntegrationScanConfiguration = {
    type = "structure",
    id = "ContinuousIntegrationScanConfiguration",
    members = {
        supportedEvents = {
            type = "list",
            member = { type = "string" },
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
    id = "PeriodicScanConfiguration",
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
    id = "CodeSecurityScanConfiguration",
    members = {
        periodicScanConfiguration = M.PeriodicScanConfiguration,
        continuousIntegrationScanConfiguration = M.ContinuousIntegrationScanConfiguration,
        ruleSetCategories = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CodeSecurityScanConfigurationAssociationSummary = {
    type = "structure",
    id = "CodeSecurityScanConfigurationAssociationSummary",
    members = {
        resource = M.CodeSecurityResource,
    },
}

M.ProjectSelectionScope = {
    ALL = "ALL",
}

M.ScopeSettings = {
    type = "structure",
    id = "ScopeSettings",
    members = {
        projectSelectionScope = {
            type = "string",
        },
    },
}

M.CodeSecurityScanConfigurationSummary = {
    type = "structure",
    id = "CodeSecurityScanConfigurationSummary",
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
            member = { type = "string" },
        },
        ruleSetCategories = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        scopeSettings = M.ScopeSettings,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CodeVulnerabilityDetails = {
    type = "structure",
    id = "CodeVulnerabilityDetails",
    members = {
        filePath = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CodeFilePath }),
        detectorTags = {
            type = "list",
            member = { type = "string" },
        },
        referenceUrls = {
            type = "list",
            member = { type = "string" },
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ComputePlatform = {
    type = "structure",
    id = "ComputePlatform",
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
    id = "Counts",
    members = {
        count = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        groupKey = {
            type = "string",
        },
    },
}

M.CoverageDateFilter = {
    type = "structure",
    id = "CoverageDateFilter",
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
    id = "CoverageStringFilter",
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
    id = "CoverageMapFilter",
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
    id = "CoverageNumberFilter",
    members = {
        upperInclusive = {
            type = "long",
        },
        lowerInclusive = {
            type = "long",
        },
    },
}

M.CoverageFilterCriteria = {
    type = "structure",
    id = "CoverageFilterCriteria",
    members = {
        scanStatusCode = {
            type = "list",
            member = M.CoverageStringFilter,
        },
        scanStatusReason = {
            type = "list",
            member = M.CoverageStringFilter,
        },
        accountId = {
            type = "list",
            member = M.CoverageStringFilter,
        },
        resourceId = {
            type = "list",
            member = M.CoverageStringFilter,
        },
        resourceType = {
            type = "list",
            member = M.CoverageStringFilter,
        },
        scanType = {
            type = "list",
            member = M.CoverageStringFilter,
        },
        ecrRepositoryName = {
            type = "list",
            member = M.CoverageStringFilter,
        },
        ecrImageTags = {
            type = "list",
            member = M.CoverageStringFilter,
        },
        ec2InstanceTags = {
            type = "list",
            member = M.CoverageMapFilter,
        },
        lambdaFunctionName = {
            type = "list",
            member = M.CoverageStringFilter,
        },
        lambdaFunctionTags = {
            type = "list",
            member = M.CoverageMapFilter,
        },
        lambdaFunctionRuntime = {
            type = "list",
            member = M.CoverageStringFilter,
        },
        lastScannedAt = {
            type = "list",
            member = M.CoverageDateFilter,
        },
        scanMode = {
            type = "list",
            member = M.CoverageStringFilter,
        },
        imagePulledAt = {
            type = "list",
            member = M.CoverageDateFilter,
        },
        ecrImageLastInUseAt = {
            type = "list",
            member = M.CoverageDateFilter,
        },
        ecrImageInUseCount = {
            type = "list",
            member = M.CoverageNumberFilter,
        },
        codeRepositoryProjectName = {
            type = "list",
            member = M.CoverageStringFilter,
        },
        codeRepositoryProviderType = {
            type = "list",
            member = M.CoverageStringFilter,
        },
        codeRepositoryProviderTypeVisibility = {
            type = "list",
            member = M.CoverageStringFilter,
        },
        lastScannedCommitId = {
            type = "list",
            member = M.CoverageStringFilter,
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
    id = "Ec2Metadata",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
    id = "EcrContainerImageMetadata",
    members = {
        tags = {
            type = "list",
            member = { type = "string" },
        },
        imagePulledAt = {
            type = "timestamp",
        },
        lastInUseAt = {
            type = "timestamp",
        },
        inUseCount = {
            type = "long",
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
    id = "EcrRepositoryMetadata",
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
    id = "LambdaFunctionMetadata",
    members = {
        functionTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        layers = {
            type = "list",
            member = { type = "string" },
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
    id = "ResourceScanMetadata",
    members = {
        ecrRepository = M.EcrRepositoryMetadata,
        ecrImage = M.EcrContainerImageMetadata,
        ec2 = M.Ec2Metadata,
        lambdaFunction = M.LambdaFunctionMetadata,
        codeRepository = M.CodeRepositoryMetadata,
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
    id = "CoveredResource",
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
        scanStatus = M.ScanStatus,
        resourceMetadata = M.ResourceScanMetadata,
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
    id = "CreateCisTargets",
    members = {
        accountIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        targetResourceTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
            traits = {
                required = true,
            },
        },
    },
}

M.CreateCisScanConfigurationInput = {
    type = "structure",
    id = "CreateCisScanConfigurationInput",
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
        schedule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Schedule }),
        targets = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CreateCisTargets }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateCisScanConfigurationOutput = {
    type = "structure",
    id = "CreateCisScanConfigurationOutput",
    members = {
        scanConfigurationArn = {
            type = "string",
        },
    },
}

M.CreateGitLabSelfManagedIntegrationDetail = {
    type = "structure",
    id = "CreateGitLabSelfManagedIntegrationDetail",
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
    id = "CreateIntegrationDetail",
    members = {
        gitlabSelfManaged = M.CreateGitLabSelfManagedIntegrationDetail,
    },
}

M.CreateCodeSecurityIntegrationInput = {
    type = "structure",
    id = "CreateCodeSecurityIntegrationInput",
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
        details = M.CreateIntegrationDetail,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateCodeSecurityIntegrationOutput = {
    type = "structure",
    id = "CreateCodeSecurityIntegrationOutput",
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
    id = "CreateCodeSecurityScanConfigurationInput",
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
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CodeSecurityScanConfiguration }),
        scopeSettings = M.ScopeSettings,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateCodeSecurityScanConfigurationOutput = {
    type = "structure",
    id = "CreateCodeSecurityScanConfigurationOutput",
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
    id = "PortRangeFilter",
    members = {
        beginInclusive = {
            type = "integer",
        },
        endInclusive = {
            type = "integer",
        },
    },
}

M.PackageFilter = {
    type = "structure",
    id = "PackageFilter",
    members = {
        name = M.StringFilter,
        version = M.StringFilter,
        epoch = M.NumberFilter,
        release = M.StringFilter,
        architecture = M.StringFilter,
        sourceLayerHash = M.StringFilter,
        sourceLambdaLayerArn = M.StringFilter,
        filePath = M.StringFilter,
    },
}

M.FilterCriteria = {
    type = "structure",
    id = "FilterCriteria",
    members = {
        findingArn = {
            type = "list",
            member = M.StringFilter,
        },
        awsAccountId = {
            type = "list",
            member = M.StringFilter,
        },
        findingType = {
            type = "list",
            member = M.StringFilter,
        },
        severity = {
            type = "list",
            member = M.StringFilter,
        },
        firstObservedAt = {
            type = "list",
            member = M.DateFilter,
        },
        lastObservedAt = {
            type = "list",
            member = M.DateFilter,
        },
        updatedAt = {
            type = "list",
            member = M.DateFilter,
        },
        findingStatus = {
            type = "list",
            member = M.StringFilter,
        },
        title = {
            type = "list",
            member = M.StringFilter,
        },
        inspectorScore = {
            type = "list",
            member = M.NumberFilter,
        },
        resourceType = {
            type = "list",
            member = M.StringFilter,
        },
        resourceId = {
            type = "list",
            member = M.StringFilter,
        },
        resourceTags = {
            type = "list",
            member = M.MapFilter,
        },
        ec2InstanceImageId = {
            type = "list",
            member = M.StringFilter,
        },
        ec2InstanceVpcId = {
            type = "list",
            member = M.StringFilter,
        },
        ec2InstanceSubnetId = {
            type = "list",
            member = M.StringFilter,
        },
        ecrImagePushedAt = {
            type = "list",
            member = M.DateFilter,
        },
        ecrImageArchitecture = {
            type = "list",
            member = M.StringFilter,
        },
        ecrImageRegistry = {
            type = "list",
            member = M.StringFilter,
        },
        ecrImageRepositoryName = {
            type = "list",
            member = M.StringFilter,
        },
        ecrImageTags = {
            type = "list",
            member = M.StringFilter,
        },
        ecrImageHash = {
            type = "list",
            member = M.StringFilter,
        },
        ecrImageLastInUseAt = {
            type = "list",
            member = M.DateFilter,
        },
        ecrImageInUseCount = {
            type = "list",
            member = M.NumberFilter,
        },
        portRange = {
            type = "list",
            member = M.PortRangeFilter,
        },
        networkProtocol = {
            type = "list",
            member = M.StringFilter,
        },
        componentId = {
            type = "list",
            member = M.StringFilter,
        },
        componentType = {
            type = "list",
            member = M.StringFilter,
        },
        vulnerabilityId = {
            type = "list",
            member = M.StringFilter,
        },
        vulnerabilitySource = {
            type = "list",
            member = M.StringFilter,
        },
        vendorSeverity = {
            type = "list",
            member = M.StringFilter,
        },
        vulnerablePackages = {
            type = "list",
            member = M.PackageFilter,
        },
        relatedVulnerabilities = {
            type = "list",
            member = M.StringFilter,
        },
        fixAvailable = {
            type = "list",
            member = M.StringFilter,
        },
        lambdaFunctionName = {
            type = "list",
            member = M.StringFilter,
        },
        lambdaFunctionLayers = {
            type = "list",
            member = M.StringFilter,
        },
        lambdaFunctionRuntime = {
            type = "list",
            member = M.StringFilter,
        },
        lambdaFunctionLastModifiedAt = {
            type = "list",
            member = M.DateFilter,
        },
        lambdaFunctionExecutionRoleArn = {
            type = "list",
            member = M.StringFilter,
        },
        exploitAvailable = {
            type = "list",
            member = M.StringFilter,
        },
        codeVulnerabilityDetectorName = {
            type = "list",
            member = M.StringFilter,
        },
        codeVulnerabilityDetectorTags = {
            type = "list",
            member = M.StringFilter,
        },
        codeVulnerabilityFilePath = {
            type = "list",
            member = M.StringFilter,
        },
        epssScore = {
            type = "list",
            member = M.NumberFilter,
        },
        codeRepositoryProjectName = {
            type = "list",
            member = M.StringFilter,
        },
        codeRepositoryProviderType = {
            type = "list",
            member = M.StringFilter,
        },
    },
}

M.CreateFilterInput = {
    type = "structure",
    id = "CreateFilterInput",
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
        filterCriteria = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FilterCriteria }),
        name = {
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
        reason = {
            type = "string",
        },
    },
}

M.CreateFilterOutput = {
    type = "structure",
    id = "CreateFilterOutput",
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
    id = "Destination",
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
    id = "CreateFindingsReportInput",
    members = {
        filterCriteria = M.FilterCriteria,
        reportFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3Destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Destination }),
    },
}

M.CreateFindingsReportOutput = {
    type = "structure",
    id = "CreateFindingsReportOutput",
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
    id = "ResourceStringFilter",
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
    id = "ResourceMapFilter",
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
    id = "ResourceFilterCriteria",
    members = {
        accountId = {
            type = "list",
            member = M.ResourceStringFilter,
        },
        resourceId = {
            type = "list",
            member = M.ResourceStringFilter,
        },
        resourceType = {
            type = "list",
            member = M.ResourceStringFilter,
        },
        ecrRepositoryName = {
            type = "list",
            member = M.ResourceStringFilter,
        },
        lambdaFunctionName = {
            type = "list",
            member = M.ResourceStringFilter,
        },
        ecrImageTags = {
            type = "list",
            member = M.ResourceStringFilter,
        },
        ec2InstanceTags = {
            type = "list",
            member = M.ResourceMapFilter,
        },
        lambdaFunctionTags = {
            type = "list",
            member = M.ResourceMapFilter,
        },
    },
}

M.CreateSbomExportInput = {
    type = "structure",
    id = "CreateSbomExportInput",
    members = {
        resourceFilterCriteria = M.ResourceFilterCriteria,
        reportFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3Destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Destination }),
    },
}

M.CreateSbomExportOutput = {
    type = "structure",
    id = "CreateSbomExportOutput",
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
    id = "Cvss2",
    members = {
        baseScore = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        scoringVector = {
            type = "string",
        },
    },
}

M.Cvss3 = {
    type = "structure",
    id = "Cvss3",
    members = {
        baseScore = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        scoringVector = {
            type = "string",
        },
    },
}

M.Cvss4 = {
    type = "structure",
    id = "Cvss4",
    members = {
        baseScore = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        scoringVector = {
            type = "string",
        },
    },
}

M.CvssScore = {
    type = "structure",
    id = "CvssScore",
    members = {
        baseScore = {
            type = "double",
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
    id = "CvssScoreAdjustment",
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
    id = "CvssScoreDetails",
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
            type = "double",
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
            member = M.CvssScoreAdjustment,
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
    id = "DelegatedAdmin",
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
    id = "DelegatedAdminAccount",
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
    id = "DeleteCisScanConfigurationInput",
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
    id = "DeleteCisScanConfigurationOutput",
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
    id = "DeleteCodeSecurityIntegrationInput",
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
    id = "DeleteCodeSecurityIntegrationOutput",
    members = {
        integrationArn = {
            type = "string",
        },
    },
}

M.DeleteCodeSecurityScanConfigurationInput = {
    type = "structure",
    id = "DeleteCodeSecurityScanConfigurationInput",
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
    id = "DeleteCodeSecurityScanConfigurationOutput",
    members = {
        scanConfigurationArn = {
            type = "string",
        },
    },
}

M.DeleteFilterInput = {
    type = "structure",
    id = "DeleteFilterInput",
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
    id = "DeleteFilterOutput",
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
    id = "DescribeOrganizationConfigurationInput",
}

M.DescribeOrganizationConfigurationOutput = {
    type = "structure",
    id = "DescribeOrganizationConfigurationOutput",
    members = {
        autoEnable = M.AutoEnable,
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
    id = "DisableInput",
    members = {
        accountIds = {
            type = "list",
            member = { type = "string" },
        },
        resourceTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DisableOutput = {
    type = "structure",
    id = "DisableOutput",
    members = {
        accounts = {
            type = "list",
            member = M.Account,
            traits = {
                required = true,
            },
        },
        failedAccounts = {
            type = "list",
            member = M.FailedAccount,
        },
    },
}

M.DisableDelegatedAdminAccountInput = {
    type = "structure",
    id = "DisableDelegatedAdminAccountInput",
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
    id = "DisableDelegatedAdminAccountOutput",
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
    id = "DisassociateMemberInput",
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
    id = "DisassociateMemberOutput",
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
    id = "Ec2Configuration",
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
    id = "Ec2ScanModeState",
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
    id = "Ec2ConfigurationState",
    members = {
        scanModeState = M.Ec2ScanModeState,
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
    id = "EcrConfiguration",
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
    id = "EcrRescanDurationState",
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
    id = "EcrConfigurationState",
    members = {
        rescanDurationState = M.EcrRescanDurationState,
    },
}

M.EnableInput = {
    type = "structure",
    id = "EnableInput",
    members = {
        accountIds = {
            type = "list",
            member = { type = "string" },
        },
        resourceTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
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

M.EnableOutput = {
    type = "structure",
    id = "EnableOutput",
    members = {
        accounts = {
            type = "list",
            member = M.Account,
            traits = {
                required = true,
            },
        },
        failedAccounts = {
            type = "list",
            member = M.FailedAccount,
        },
    },
}

M.EnableDelegatedAdminAccountInput = {
    type = "structure",
    id = "EnableDelegatedAdminAccountInput",
    members = {
        delegatedAdminAccountId = {
            type = "string",
            traits = {
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

M.EnableDelegatedAdminAccountOutput = {
    type = "structure",
    id = "EnableDelegatedAdminAccountOutput",
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
    id = "Epss",
    members = {
        score = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.EpssDetails = {
    type = "structure",
    id = "EpssDetails",
    members = {
        score = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.ExploitabilityDetails = {
    type = "structure",
    id = "ExploitabilityDetails",
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
    id = "Filter",
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
        criteria = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FilterCriteria }),
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
            key = { type = "string" },
            value = { type = "string" },
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
    id = "InspectorScoreDetails",
    members = {
        adjustedCvss = M.CvssScoreDetails,
    },
}

M.Step = {
    type = "structure",
    id = "Step",
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
    id = "NetworkPath",
    members = {
        steps = {
            type = "list",
            member = M.Step,
        },
    },
}

M.PortRange = {
    type = "structure",
    id = "PortRange",
    members = {
        begin = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        end = {
            type = "integer",
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
    id = "NetworkReachabilityDetails",
    members = {
        openPortRange = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PortRange }),
        protocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkPath = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NetworkPath }),
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
    id = "VulnerablePackage",
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
            type = "integer",
            traits = {
                default = 0,
            },
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
            traits = {
                required = true,
            },
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

M.Recommendation = {
    type = "structure",
    id = "Recommendation",
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
    id = "Remediation",
    members = {
        recommendation = M.Recommendation,
    },
}

M.ResourceDetails = {
    type = "structure",
    id = "ResourceDetails",
    members = {
        awsEc2Instance = M.AwsEc2InstanceDetails,
        awsEcrContainerImage = M.AwsEcrContainerImageDetails,
        awsLambdaFunction = M.AwsLambdaFunctionDetails,
        codeRepository = M.CodeRepositoryDetails,
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
    id = "Resource",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        details = M.ResourceDetails,
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
    id = "Finding",
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
        remediation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Remediation }),
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
            member = M.Resource,
            traits = {
                required = true,
            },
        },
        inspectorScore = {
            type = "double",
        },
        inspectorScoreDetails = M.InspectorScoreDetails,
        networkReachabilityDetails = M.NetworkReachabilityDetails,
        packageVulnerabilityDetails = M.PackageVulnerabilityDetails,
        fixAvailable = {
            type = "string",
        },
        exploitAvailable = {
            type = "string",
        },
        exploitabilityDetails = M.ExploitabilityDetails,
        codeVulnerabilityDetails = M.CodeVulnerabilityDetails,
        epss = M.EpssDetails,
    },
}

M.GetCisScanReportInput = {
    type = "structure",
    id = "GetCisScanReportInput",
    members = {
        scanArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetAccounts = {
            type = "list",
            member = { type = "string" },
        },
        reportFormat = {
            type = "string",
            traits = {
                default = "PDF",
            },
        },
    },
}

M.GetCisScanReportOutput = {
    type = "structure",
    id = "GetCisScanReportOutput",
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
    id = "GetCisScanResultDetailsInput",
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
        filterCriteria = M.CisScanResultDetailsFilterCriteria,
        sortBy = {
            type = "string",
            traits = {
                default = "CHECK_ID",
            },
        },
        sortOrder = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 300,
            },
        },
    },
}

M.GetCisScanResultDetailsOutput = {
    type = "structure",
    id = "GetCisScanResultDetailsOutput",
    members = {
        scanResultDetails = {
            type = "list",
            member = M.CisScanResultDetails,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetClustersForImageInput = {
    type = "structure",
    id = "GetClustersForImageInput",
    members = {
        filter = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ClusterForImageFilterCriteria }),
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetClustersForImageOutput = {
    type = "structure",
    id = "GetClustersForImageOutput",
    members = {
        cluster = {
            type = "list",
            member = M.ClusterInformation,
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
    id = "GetCodeSecurityIntegrationInput",
    members = {
        integrationArn = {
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
    },
}

M.GetCodeSecurityIntegrationOutput = {
    type = "structure",
    id = "GetCodeSecurityIntegrationOutput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        authorizationUrl = {
            type = "string",
        },
    },
}

M.GetCodeSecurityScanInput = {
    type = "structure",
    id = "GetCodeSecurityScanInput",
    members = {
        resource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CodeSecurityResource }),
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
    id = "GetCodeSecurityScanOutput",
    members = {
        scanId = {
            type = "string",
        },
        resource = M.CodeSecurityResource,
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
    id = "GetCodeSecurityScanConfigurationInput",
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
    id = "GetCodeSecurityScanConfigurationOutput",
    members = {
        scanConfigurationArn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        configuration = M.CodeSecurityScanConfiguration,
        level = {
            type = "string",
        },
        scopeSettings = M.ScopeSettings,
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetConfigurationInput = {
    type = "structure",
    id = "GetConfigurationInput",
}

M.GetConfigurationOutput = {
    type = "structure",
    id = "GetConfigurationOutput",
    members = {
        ecrConfiguration = M.EcrConfigurationState,
        ec2Configuration = M.Ec2ConfigurationState,
    },
}

M.GetDelegatedAdminAccountInput = {
    type = "structure",
    id = "GetDelegatedAdminAccountInput",
}

M.GetDelegatedAdminAccountOutput = {
    type = "structure",
    id = "GetDelegatedAdminAccountOutput",
    members = {
        delegatedAdmin = M.DelegatedAdmin,
    },
}

M.GetEc2DeepInspectionConfigurationInput = {
    type = "structure",
    id = "GetEc2DeepInspectionConfigurationInput",
}

M.GetEc2DeepInspectionConfigurationOutput = {
    type = "structure",
    id = "GetEc2DeepInspectionConfigurationOutput",
    members = {
        packagePaths = {
            type = "list",
            member = { type = "string" },
        },
        orgPackagePaths = {
            type = "list",
            member = { type = "string" },
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
    id = "GetEncryptionKeyInput",
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
    id = "GetEncryptionKeyOutput",
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
    id = "GetFindingsReportStatusInput",
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
    id = "GetFindingsReportStatusOutput",
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
        destination = M.Destination,
        filterCriteria = M.FilterCriteria,
    },
}

M.GetMemberInput = {
    type = "structure",
    id = "GetMemberInput",
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
    id = "Member",
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
    id = "GetMemberOutput",
    members = {
        member = M.Member,
    },
}

M.GetSbomExportInput = {
    type = "structure",
    id = "GetSbomExportInput",
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
    id = "GetSbomExportOutput",
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
        s3Destination = M.Destination,
        filterCriteria = M.ResourceFilterCriteria,
    },
}

M.Service = {
    EC2 = "EC2",
    ECR = "ECR",
    LAMBDA = "LAMBDA",
}

M.ListAccountPermissionsInput = {
    type = "structure",
    id = "ListAccountPermissionsInput",
    members = {
        service = {
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

M.Operation = {
    ENABLE_SCANNING = "ENABLE_SCANNING",
    DISABLE_SCANNING = "DISABLE_SCANNING",
    ENABLE_REPOSITORY = "ENABLE_REPOSITORY",
    DISABLE_REPOSITORY = "DISABLE_REPOSITORY",
}

M.Permission = {
    type = "structure",
    id = "Permission",
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
    id = "ListAccountPermissionsOutput",
    members = {
        permissions = {
            type = "list",
            member = M.Permission,
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
    id = "ListCisScanConfigurationsFilterCriteria",
    members = {
        scanNameFilters = {
            type = "list",
            member = M.CisStringFilter,
        },
        targetResourceTagFilters = {
            type = "list",
            member = M.TagFilter,
        },
        scanConfigurationArnFilters = {
            type = "list",
            member = M.CisStringFilter,
        },
    },
}

M.ListCisScanConfigurationsInput = {
    type = "structure",
    id = "ListCisScanConfigurationsInput",
    members = {
        filterCriteria = M.ListCisScanConfigurationsFilterCriteria,
        sortBy = {
            type = "string",
            traits = {
                default = "SCAN_NAME",
            },
        },
        sortOrder = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 100,
            },
        },
    },
}

M.ListCisScanConfigurationsOutput = {
    type = "structure",
    id = "ListCisScanConfigurationsOutput",
    members = {
        scanConfigurations = {
            type = "list",
            member = M.CisScanConfiguration,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListCisScanResultsAggregatedByChecksInput = {
    type = "structure",
    id = "ListCisScanResultsAggregatedByChecksInput",
    members = {
        scanArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filterCriteria = M.CisScanResultsAggregatedByChecksFilterCriteria,
        sortBy = {
            type = "string",
            traits = {
                default = "FAILED_COUNTS",
            },
        },
        sortOrder = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 100,
            },
        },
    },
}

M.ListCisScanResultsAggregatedByChecksOutput = {
    type = "structure",
    id = "ListCisScanResultsAggregatedByChecksOutput",
    members = {
        checkAggregations = {
            type = "list",
            member = M.CisCheckAggregation,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListCisScanResultsAggregatedByTargetResourceInput = {
    type = "structure",
    id = "ListCisScanResultsAggregatedByTargetResourceInput",
    members = {
        scanArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filterCriteria = M.CisScanResultsAggregatedByTargetResourceFilterCriteria,
        sortBy = {
            type = "string",
            traits = {
                default = "FAILED_COUNTS",
            },
        },
        sortOrder = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 100,
            },
        },
    },
}

M.ListCisScanResultsAggregatedByTargetResourceOutput = {
    type = "structure",
    id = "ListCisScanResultsAggregatedByTargetResourceOutput",
    members = {
        targetResourceAggregations = {
            type = "list",
            member = M.CisTargetResourceAggregation,
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
    id = "ListCisScansFilterCriteria",
    members = {
        scanNameFilters = {
            type = "list",
            member = M.CisStringFilter,
        },
        targetResourceTagFilters = {
            type = "list",
            member = M.TagFilter,
        },
        targetResourceIdFilters = {
            type = "list",
            member = M.CisStringFilter,
        },
        scanStatusFilters = {
            type = "list",
            member = M.CisScanStatusFilter,
        },
        scanAtFilters = {
            type = "list",
            member = M.CisDateFilter,
        },
        scanConfigurationArnFilters = {
            type = "list",
            member = M.CisStringFilter,
        },
        scanArnFilters = {
            type = "list",
            member = M.CisStringFilter,
        },
        scheduledByFilters = {
            type = "list",
            member = M.CisStringFilter,
        },
        failedChecksFilters = {
            type = "list",
            member = M.CisNumberFilter,
        },
        targetAccountIdFilters = {
            type = "list",
            member = M.CisStringFilter,
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
    id = "ListCisScansInput",
    members = {
        filterCriteria = M.ListCisScansFilterCriteria,
        detailLevel = {
            type = "string",
        },
        sortBy = {
            type = "string",
            traits = {
                default = "SCAN_START_DATE",
            },
        },
        sortOrder = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 100,
            },
        },
    },
}

M.ListCisScansOutput = {
    type = "structure",
    id = "ListCisScansOutput",
    members = {
        scans = {
            type = "list",
            member = M.CisScan,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListCodeSecurityIntegrationsInput = {
    type = "structure",
    id = "ListCodeSecurityIntegrationsInput",
    members = {
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
    },
}

M.ListCodeSecurityIntegrationsOutput = {
    type = "structure",
    id = "ListCodeSecurityIntegrationsOutput",
    members = {
        integrations = {
            type = "list",
            member = M.CodeSecurityIntegrationSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListCodeSecurityScanConfigurationAssociationsInput = {
    type = "structure",
    id = "ListCodeSecurityScanConfigurationAssociationsInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListCodeSecurityScanConfigurationAssociationsOutput = {
    type = "structure",
    id = "ListCodeSecurityScanConfigurationAssociationsOutput",
    members = {
        associations = {
            type = "list",
            member = M.CodeSecurityScanConfigurationAssociationSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListCodeSecurityScanConfigurationsInput = {
    type = "structure",
    id = "ListCodeSecurityScanConfigurationsInput",
    members = {
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
    },
}

M.ListCodeSecurityScanConfigurationsOutput = {
    type = "structure",
    id = "ListCodeSecurityScanConfigurationsOutput",
    members = {
        configurations = {
            type = "list",
            member = M.CodeSecurityScanConfigurationSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListCoverageInput = {
    type = "structure",
    id = "ListCoverageInput",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
        filterCriteria = M.CoverageFilterCriteria,
    },
}

M.ListCoverageOutput = {
    type = "structure",
    id = "ListCoverageOutput",
    members = {
        nextToken = {
            type = "string",
        },
        coveredResources = {
            type = "list",
            member = M.CoveredResource,
        },
    },
}

M.ListCoverageStatisticsInput = {
    type = "structure",
    id = "ListCoverageStatisticsInput",
    members = {
        filterCriteria = M.CoverageFilterCriteria,
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
    id = "ListCoverageStatisticsOutput",
    members = {
        countsByGroup = {
            type = "list",
            member = M.Counts,
        },
        totalCounts = {
            type = "long",
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
    id = "ListDelegatedAdminAccountsInput",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDelegatedAdminAccountsOutput = {
    type = "structure",
    id = "ListDelegatedAdminAccountsOutput",
    members = {
        delegatedAdminAccounts = {
            type = "list",
            member = M.DelegatedAdminAccount,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListFiltersInput = {
    type = "structure",
    id = "ListFiltersInput",
    members = {
        arns = {
            type = "list",
            member = { type = "string" },
        },
        action = {
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

M.ListFiltersOutput = {
    type = "structure",
    id = "ListFiltersOutput",
    members = {
        filters = {
            type = "list",
            member = M.Filter,
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
    id = "ListFindingAggregationsInput",
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
            type = "integer",
        },
        accountIds = {
            type = "list",
            member = M.StringFilter,
        },
        aggregationRequest = M.AggregationRequest,
    },
}

M.ListFindingAggregationsOutput = {
    type = "structure",
    id = "ListFindingAggregationsOutput",
    members = {
        aggregationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        responses = {
            type = "list",
            member = M.AggregationResponse,
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
    id = "SortCriteria",
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
    id = "ListFindingsInput",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
        filterCriteria = M.FilterCriteria,
        sortCriteria = M.SortCriteria,
    },
}

M.ListFindingsOutput = {
    type = "structure",
    id = "ListFindingsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        findings = {
            type = "list",
            member = M.Finding,
        },
    },
}

M.ListMembersInput = {
    type = "structure",
    id = "ListMembersInput",
    members = {
        onlyAssociated = {
            type = "boolean",
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListMembersOutput = {
    type = "structure",
    id = "ListMembersOutput",
    members = {
        members = {
            type = "list",
            member = M.Member,
        },
        nextToken = {
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

M.ListUsageTotalsInput = {
    type = "structure",
    id = "ListUsageTotalsInput",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
        accountIds = {
            type = "list",
            member = { type = "string" },
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
    id = "Usage",
    members = {
        type = {
            type = "string",
        },
        total = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        estimatedMonthlyCost = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        currency = {
            type = "string",
        },
    },
}

M.UsageTotal = {
    type = "structure",
    id = "UsageTotal",
    members = {
        accountId = {
            type = "string",
        },
        usage = {
            type = "list",
            member = M.Usage,
        },
    },
}

M.ListUsageTotalsOutput = {
    type = "structure",
    id = "ListUsageTotalsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        totals = {
            type = "list",
            member = M.UsageTotal,
        },
    },
}

M.ResetEncryptionKeyInput = {
    type = "structure",
    id = "ResetEncryptionKeyInput",
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
    id = "ResetEncryptionKeyOutput",
}

M.SearchVulnerabilitiesFilterCriteria = {
    type = "structure",
    id = "SearchVulnerabilitiesFilterCriteria",
    members = {
        vulnerabilityIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.SearchVulnerabilitiesInput = {
    type = "structure",
    id = "SearchVulnerabilitiesInput",
    members = {
        filterCriteria = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SearchVulnerabilitiesFilterCriteria }),
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
    id = "Vulnerability",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cwes = {
            type = "list",
            member = { type = "string" },
        },
        cisaData = M.CisaData,
        source = {
            type = "string",
        },
        description = {
            type = "string",
        },
        atigData = M.AtigData,
        vendorSeverity = {
            type = "string",
        },
        cvss4 = M.Cvss4,
        cvss3 = M.Cvss3,
        relatedVulnerabilities = {
            type = "list",
            member = { type = "string" },
        },
        cvss2 = M.Cvss2,
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
            member = { type = "string" },
        },
        exploitObserved = M.ExploitObserved,
        detectionPlatforms = {
            type = "list",
            member = { type = "string" },
        },
        epss = M.Epss,
    },
}

M.SearchVulnerabilitiesOutput = {
    type = "structure",
    id = "SearchVulnerabilitiesOutput",
    members = {
        vulnerabilities = {
            type = "list",
            member = M.Vulnerability,
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
    id = "SendCisSessionHealthInput",
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
    id = "SendCisSessionHealthOutput",
}

M.SendCisSessionTelemetryInput = {
    type = "structure",
    id = "SendCisSessionTelemetryInput",
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
            member = M.CisSessionMessage,
            traits = {
                required = true,
            },
        },
    },
}

M.SendCisSessionTelemetryOutput = {
    type = "structure",
    id = "SendCisSessionTelemetryOutput",
}

M.StartCisSessionMessage = {
    type = "structure",
    id = "StartCisSessionMessage",
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
    id = "StartCisSessionInput",
    members = {
        scanJobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StartCisSessionMessage }),
    },
}

M.StartCisSessionOutput = {
    type = "structure",
    id = "StartCisSessionOutput",
}

M.StartCodeSecurityScanInput = {
    type = "structure",
    id = "StartCodeSecurityScanInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        resource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CodeSecurityResource }),
    },
}

M.StartCodeSecurityScanOutput = {
    type = "structure",
    id = "StartCodeSecurityScanOutput",
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
    id = "StopCisMessageProgress",
    members = {
        totalChecks = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        successfulChecks = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        failedChecks = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        notEvaluatedChecks = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        unknownChecks = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        notApplicableChecks = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        informationalChecks = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        errorChecks = {
            type = "integer",
            traits = {
                default = 0,
            },
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
    id = "StopCisSessionMessage",
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
        progress = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StopCisMessageProgress }),
        computePlatform = M.ComputePlatform,
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
    id = "StopCisSessionInput",
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
        message = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StopCisSessionMessage }),
    },
}

M.StopCisSessionOutput = {
    type = "structure",
    id = "StopCisSessionOutput",
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

M.UpdateCisTargets = {
    type = "structure",
    id = "UpdateCisTargets",
    members = {
        accountIds = {
            type = "list",
            member = { type = "string" },
        },
        targetResourceTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.UpdateCisScanConfigurationInput = {
    type = "structure",
    id = "UpdateCisScanConfigurationInput",
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
        schedule = M.Schedule,
        targets = M.UpdateCisTargets,
    },
}

M.UpdateCisScanConfigurationOutput = {
    type = "structure",
    id = "UpdateCisScanConfigurationOutput",
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
    id = "UpdateGitHubIntegrationDetail",
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
    id = "UpdateGitLabSelfManagedIntegrationDetail",
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
    id = "UpdateIntegrationDetails",
    members = {
        gitlabSelfManaged = M.UpdateGitLabSelfManagedIntegrationDetail,
        github = M.UpdateGitHubIntegrationDetail,
    },
}

M.UpdateCodeSecurityIntegrationInput = {
    type = "structure",
    id = "UpdateCodeSecurityIntegrationInput",
    members = {
        integrationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        details = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UpdateIntegrationDetails }),
    },
}

M.UpdateCodeSecurityIntegrationOutput = {
    type = "structure",
    id = "UpdateCodeSecurityIntegrationOutput",
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
    id = "UpdateCodeSecurityScanConfigurationInput",
    members = {
        scanConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CodeSecurityScanConfiguration }),
    },
}

M.UpdateCodeSecurityScanConfigurationOutput = {
    type = "structure",
    id = "UpdateCodeSecurityScanConfigurationOutput",
    members = {
        scanConfigurationArn = {
            type = "string",
        },
    },
}

M.UpdateConfigurationInput = {
    type = "structure",
    id = "UpdateConfigurationInput",
    members = {
        ecrConfiguration = M.EcrConfiguration,
        ec2Configuration = M.Ec2Configuration,
    },
}

M.UpdateConfigurationOutput = {
    type = "structure",
    id = "UpdateConfigurationOutput",
}

M.UpdateEc2DeepInspectionConfigurationInput = {
    type = "structure",
    id = "UpdateEc2DeepInspectionConfigurationInput",
    members = {
        activateDeepInspection = {
            type = "boolean",
        },
        packagePaths = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateEc2DeepInspectionConfigurationOutput = {
    type = "structure",
    id = "UpdateEc2DeepInspectionConfigurationOutput",
    members = {
        packagePaths = {
            type = "list",
            member = { type = "string" },
        },
        orgPackagePaths = {
            type = "list",
            member = { type = "string" },
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
    id = "UpdateEncryptionKeyInput",
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
    id = "UpdateEncryptionKeyOutput",
}

M.UpdateFilterInput = {
    type = "structure",
    id = "UpdateFilterInput",
    members = {
        action = {
            type = "string",
        },
        description = {
            type = "string",
        },
        filterCriteria = M.FilterCriteria,
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
    id = "UpdateFilterOutput",
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
    id = "UpdateOrganizationConfigurationInput",
    members = {
        autoEnable = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutoEnable }),
    },
}

M.UpdateOrganizationConfigurationOutput = {
    type = "structure",
    id = "UpdateOrganizationConfigurationOutput",
    members = {
        autoEnable = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutoEnable }),
    },
}

M.UpdateOrgEc2DeepInspectionConfigurationInput = {
    type = "structure",
    id = "UpdateOrgEc2DeepInspectionConfigurationInput",
    members = {
        orgPackagePaths = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateOrgEc2DeepInspectionConfigurationOutput = {
    type = "structure",
    id = "UpdateOrgEc2DeepInspectionConfigurationOutput",
}

return M
