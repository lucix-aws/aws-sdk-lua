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

M.AccountingMode = {
    STANDARD = "STANDARD",
    NONE = "NONE",
}

M.Accounting = {
    type = "structure",
    id = "Accounting",
    members = {
        defaultPurgeTimeInDays = {
            type = "integer",
        },
        mode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AccountingRequest = {
    type = "structure",
    id = "AccountingRequest",
    members = {
        defaultPurgeTimeInDays = {
            type = "integer",
        },
        mode = {
            type = "string",
            traits = {
                required = true,
            },
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

M.CustomLaunchTemplate = {
    type = "structure",
    id = "CustomLaunchTemplate",
    members = {
        id = {
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

M.InstanceConfig = {
    type = "structure",
    id = "InstanceConfig",
    members = {
        instanceType = {
            type = "string",
        },
    },
}

M.PurchaseOption = {
    ONDEMAND = "ONDEMAND",
    SPOT = "SPOT",
    CAPACITY_BLOCK = "CAPACITY_BLOCK",
}

M.ScalingConfigurationRequest = {
    type = "structure",
    id = "ScalingConfigurationRequest",
    members = {
        minInstanceCount = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        maxInstanceCount = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.SlurmCustomSetting = {
    type = "structure",
    id = "SlurmCustomSetting",
    members = {
        parameterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameterValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ComputeNodeGroupSlurmConfigurationRequest = {
    type = "structure",
    id = "ComputeNodeGroupSlurmConfigurationRequest",
    members = {
        slurmCustomSettings = {
            type = "list",
            member = M.SlurmCustomSetting,
        },
    },
}

M.SpotAllocationStrategy = {
    LOWEST_PRICE = "lowest-price",
    CAPACITY_OPTIMIZED = "capacity-optimized",
    PRICE_CAPACITY_OPTIMIZED = "price-capacity-optimized",
}

M.SpotOptions = {
    type = "structure",
    id = "SpotOptions",
    members = {
        allocationStrategy = {
            type = "string",
        },
    },
}

M.CreateComputeNodeGroupInput = {
    type = "structure",
    id = "CreateComputeNodeGroupInput",
    members = {
        clusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        computeNodeGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        amiId = {
            type = "string",
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        purchaseOption = {
            type = "string",
        },
        customLaunchTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CustomLaunchTemplate }),
        iamInstanceProfileArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scalingConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScalingConfigurationRequest }),
        instanceConfigs = {
            type = "list",
            member = M.InstanceConfig,
            traits = {
                required = true,
            },
        },
        spotOptions = M.SpotOptions,
        slurmConfiguration = M.ComputeNodeGroupSlurmConfigurationRequest,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ErrorInfo = {
    type = "structure",
    id = "ErrorInfo",
    members = {
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.ScalingConfiguration = {
    type = "structure",
    id = "ScalingConfiguration",
    members = {
        minInstanceCount = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        maxInstanceCount = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.ComputeNodeGroupSlurmConfiguration = {
    type = "structure",
    id = "ComputeNodeGroupSlurmConfiguration",
    members = {
        slurmCustomSettings = {
            type = "list",
            member = M.SlurmCustomSetting,
        },
    },
}

M.ComputeNodeGroupStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    CREATE_FAILED = "CREATE_FAILED",
    DELETE_FAILED = "DELETE_FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
    DELETED = "DELETED",
    SUSPENDING = "SUSPENDING",
    SUSPENDED = "SUSPENDED",
    RESUMING = "RESUMING",
}

M.ComputeNodeGroup = {
    type = "structure",
    id = "ComputeNodeGroup",
    members = {
        name = {
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
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        modifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        amiId = {
            type = "string",
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        purchaseOption = {
            type = "string",
        },
        customLaunchTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CustomLaunchTemplate }),
        iamInstanceProfileArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scalingConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScalingConfiguration }),
        instanceConfigs = {
            type = "list",
            member = M.InstanceConfig,
            traits = {
                required = true,
            },
        },
        spotOptions = M.SpotOptions,
        slurmConfiguration = M.ComputeNodeGroupSlurmConfiguration,
        errorInfo = {
            type = "list",
            member = M.ErrorInfo,
        },
    },
}

M.CreateComputeNodeGroupOutput = {
    type = "structure",
    id = "CreateComputeNodeGroupOutput",
    members = {
        computeNodeGroup = M.ComputeNodeGroup,
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
        serviceCode = {
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
    UNKNOWN_OPERATION = "unknownOperation",
    CANNOT_PARSE = "cannotParse",
    FIELD_VALIDATION_FAILED = "fieldValidationFailed",
    OTHER = "other",
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
        fieldList = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.DeleteComputeNodeGroupInput = {
    type = "structure",
    id = "DeleteComputeNodeGroupInput",
    members = {
        clusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        computeNodeGroupIdentifier = {
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

M.DeleteComputeNodeGroupOutput = {
    type = "structure",
    id = "DeleteComputeNodeGroupOutput",
}

M.GetComputeNodeGroupInput = {
    type = "structure",
    id = "GetComputeNodeGroupInput",
    members = {
        clusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        computeNodeGroupIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetComputeNodeGroupOutput = {
    type = "structure",
    id = "GetComputeNodeGroupOutput",
    members = {
        computeNodeGroup = M.ComputeNodeGroup,
    },
}

M.ListComputeNodeGroupsInput = {
    type = "structure",
    id = "ListComputeNodeGroupsInput",
    members = {
        clusterIdentifier = {
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
            traits = {
                default = 10,
            },
        },
    },
}

M.ComputeNodeGroupSummary = {
    type = "structure",
    id = "ComputeNodeGroupSummary",
    members = {
        name = {
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
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        modifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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

M.ListComputeNodeGroupsOutput = {
    type = "structure",
    id = "ListComputeNodeGroupsOutput",
    members = {
        computeNodeGroups = {
            type = "list",
            member = M.ComputeNodeGroupSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateComputeNodeGroupSlurmConfigurationRequest = {
    type = "structure",
    id = "UpdateComputeNodeGroupSlurmConfigurationRequest",
    members = {
        slurmCustomSettings = {
            type = "list",
            member = M.SlurmCustomSetting,
        },
    },
}

M.UpdateComputeNodeGroupInput = {
    type = "structure",
    id = "UpdateComputeNodeGroupInput",
    members = {
        clusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        computeNodeGroupIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        amiId = {
            type = "string",
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
        },
        customLaunchTemplate = M.CustomLaunchTemplate,
        purchaseOption = {
            type = "string",
        },
        spotOptions = M.SpotOptions,
        scalingConfiguration = M.ScalingConfigurationRequest,
        iamInstanceProfileArn = {
            type = "string",
        },
        slurmConfiguration = M.UpdateComputeNodeGroupSlurmConfigurationRequest,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateComputeNodeGroupOutput = {
    type = "structure",
    id = "UpdateComputeNodeGroupOutput",
    members = {
        computeNodeGroup = M.ComputeNodeGroup,
    },
}

M.NetworkType = {
    IPV4 = "IPV4",
    IPV6 = "IPV6",
}

M.NetworkingRequest = {
    type = "structure",
    id = "NetworkingRequest",
    members = {
        subnetIds = {
            type = "list",
            member = { type = "string" },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        networkType = {
            type = "string",
        },
    },
}

M.SchedulerType = {
    SLURM = "SLURM",
}

M.SchedulerRequest = {
    type = "structure",
    id = "SchedulerRequest",
    members = {
        type = {
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

M.Size = {
    SMALL = "SMALL",
    MEDIUM = "MEDIUM",
    LARGE = "LARGE",
}

M.CgroupCustomSetting = {
    type = "structure",
    id = "CgroupCustomSetting",
    members = {
        parameterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameterValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SlurmdbdCustomSetting = {
    type = "structure",
    id = "SlurmdbdCustomSetting",
    members = {
        parameterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameterValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SlurmRestMode = {
    STANDARD = "STANDARD",
    NONE = "NONE",
}

M.SlurmRestRequest = {
    type = "structure",
    id = "SlurmRestRequest",
    members = {
        mode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ClusterSlurmConfigurationRequest = {
    type = "structure",
    id = "ClusterSlurmConfigurationRequest",
    members = {
        scaleDownIdleTimeInSeconds = {
            type = "integer",
        },
        slurmCustomSettings = {
            type = "list",
            member = M.SlurmCustomSetting,
        },
        slurmdbdCustomSettings = {
            type = "list",
            member = M.SlurmdbdCustomSetting,
        },
        cgroupCustomSettings = {
            type = "list",
            member = M.CgroupCustomSetting,
        },
        accounting = M.AccountingRequest,
        slurmRest = M.SlurmRestRequest,
    },
}

M.CreateClusterInput = {
    type = "structure",
    id = "CreateClusterInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scheduler = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SchedulerRequest }),
        size = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networking = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NetworkingRequest }),
        slurmConfiguration = M.ClusterSlurmConfigurationRequest,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.EndpointType = {
    SLURMCTLD = "SLURMCTLD",
    SLURMDBD = "SLURMDBD",
    SLURMRESTD = "SLURMRESTD",
}

M.Endpoint = {
    type = "structure",
    id = "Endpoint",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        privateIpAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
        publicIpAddress = {
            type = "string",
        },
        ipv6Address = {
            type = "string",
        },
        port = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Networking = {
    type = "structure",
    id = "Networking",
    members = {
        subnetIds = {
            type = "list",
            member = { type = "string" },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        networkType = {
            type = "string",
        },
    },
}

M.Scheduler = {
    type = "structure",
    id = "Scheduler",
    members = {
        type = {
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

M.SlurmAuthKey = {
    type = "structure",
    id = "SlurmAuthKey",
    members = {
        secretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        secretVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JwtKey = {
    type = "structure",
    id = "JwtKey",
    members = {
        secretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        secretVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JwtAuth = {
    type = "structure",
    id = "JwtAuth",
    members = {
        jwtKey = M.JwtKey,
    },
}

M.SlurmRest = {
    type = "structure",
    id = "SlurmRest",
    members = {
        mode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ClusterSlurmConfiguration = {
    type = "structure",
    id = "ClusterSlurmConfiguration",
    members = {
        scaleDownIdleTimeInSeconds = {
            type = "integer",
        },
        slurmCustomSettings = {
            type = "list",
            member = M.SlurmCustomSetting,
        },
        slurmdbdCustomSettings = {
            type = "list",
            member = M.SlurmdbdCustomSetting,
        },
        cgroupCustomSettings = {
            type = "list",
            member = M.CgroupCustomSetting,
        },
        authKey = M.SlurmAuthKey,
        jwtAuth = M.JwtAuth,
        accounting = M.Accounting,
        slurmRest = M.SlurmRest,
    },
}

M.ClusterStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    CREATE_FAILED = "CREATE_FAILED",
    DELETE_FAILED = "DELETE_FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
    SUSPENDING = "SUSPENDING",
    SUSPENDED = "SUSPENDED",
    RESUMING = "RESUMING",
}

M.Cluster = {
    type = "structure",
    id = "Cluster",
    members = {
        name = {
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
        arn = {
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
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        modifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        scheduler = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Scheduler }),
        size = {
            type = "string",
            traits = {
                required = true,
            },
        },
        slurmConfiguration = M.ClusterSlurmConfiguration,
        networking = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Networking }),
        endpoints = {
            type = "list",
            member = M.Endpoint,
        },
        errorInfo = {
            type = "list",
            member = M.ErrorInfo,
        },
    },
}

M.CreateClusterOutput = {
    type = "structure",
    id = "CreateClusterOutput",
    members = {
        cluster = M.Cluster,
    },
}

M.DeleteClusterInput = {
    type = "structure",
    id = "DeleteClusterInput",
    members = {
        clusterIdentifier = {
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

M.DeleteClusterOutput = {
    type = "structure",
    id = "DeleteClusterOutput",
}

M.GetClusterInput = {
    type = "structure",
    id = "GetClusterInput",
    members = {
        clusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetClusterOutput = {
    type = "structure",
    id = "GetClusterOutput",
    members = {
        cluster = M.Cluster,
    },
}

M.ListClustersInput = {
    type = "structure",
    id = "ListClustersInput",
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
                default = 10,
                http_query = "maxResults",
            },
        },
    },
}

M.ClusterSummary = {
    type = "structure",
    id = "ClusterSummary",
    members = {
        name = {
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
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        modifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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

M.ListClustersOutput = {
    type = "structure",
    id = "ListClustersOutput",
    members = {
        clusters = {
            type = "list",
            member = M.ClusterSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ComputeNodeGroupConfiguration = {
    type = "structure",
    id = "ComputeNodeGroupConfiguration",
    members = {
        computeNodeGroupId = {
            type = "string",
        },
    },
}

M.QueueSlurmConfigurationRequest = {
    type = "structure",
    id = "QueueSlurmConfigurationRequest",
    members = {
        slurmCustomSettings = {
            type = "list",
            member = M.SlurmCustomSetting,
        },
    },
}

M.CreateQueueInput = {
    type = "structure",
    id = "CreateQueueInput",
    members = {
        clusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queueName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        computeNodeGroupConfigurations = {
            type = "list",
            member = M.ComputeNodeGroupConfiguration,
        },
        slurmConfiguration = M.QueueSlurmConfigurationRequest,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.QueueSlurmConfiguration = {
    type = "structure",
    id = "QueueSlurmConfiguration",
    members = {
        slurmCustomSettings = {
            type = "list",
            member = M.SlurmCustomSetting,
        },
    },
}

M.QueueStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    CREATE_FAILED = "CREATE_FAILED",
    DELETE_FAILED = "DELETE_FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
    SUSPENDING = "SUSPENDING",
    SUSPENDED = "SUSPENDED",
    RESUMING = "RESUMING",
}

M.Queue = {
    type = "structure",
    id = "Queue",
    members = {
        name = {
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
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        modifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        computeNodeGroupConfigurations = {
            type = "list",
            member = M.ComputeNodeGroupConfiguration,
            traits = {
                required = true,
            },
        },
        slurmConfiguration = M.QueueSlurmConfiguration,
        errorInfo = {
            type = "list",
            member = M.ErrorInfo,
        },
    },
}

M.CreateQueueOutput = {
    type = "structure",
    id = "CreateQueueOutput",
    members = {
        queue = M.Queue,
    },
}

M.DeleteQueueInput = {
    type = "structure",
    id = "DeleteQueueInput",
    members = {
        clusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queueIdentifier = {
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

M.DeleteQueueOutput = {
    type = "structure",
    id = "DeleteQueueOutput",
}

M.GetQueueInput = {
    type = "structure",
    id = "GetQueueInput",
    members = {
        clusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queueIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetQueueOutput = {
    type = "structure",
    id = "GetQueueOutput",
    members = {
        queue = M.Queue,
    },
}

M.ListQueuesInput = {
    type = "structure",
    id = "ListQueuesInput",
    members = {
        clusterIdentifier = {
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
            traits = {
                default = 10,
            },
        },
    },
}

M.QueueSummary = {
    type = "structure",
    id = "QueueSummary",
    members = {
        name = {
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
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        modifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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

M.ListQueuesOutput = {
    type = "structure",
    id = "ListQueuesOutput",
    members = {
        queues = {
            type = "list",
            member = M.QueueSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateQueueSlurmConfigurationRequest = {
    type = "structure",
    id = "UpdateQueueSlurmConfigurationRequest",
    members = {
        slurmCustomSettings = {
            type = "list",
            member = M.SlurmCustomSetting,
        },
    },
}

M.UpdateQueueInput = {
    type = "structure",
    id = "UpdateQueueInput",
    members = {
        clusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queueIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        computeNodeGroupConfigurations = {
            type = "list",
            member = M.ComputeNodeGroupConfiguration,
        },
        slurmConfiguration = M.UpdateQueueSlurmConfigurationRequest,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateQueueOutput = {
    type = "structure",
    id = "UpdateQueueOutput",
    members = {
        queue = M.Queue,
    },
}

M.RegisterComputeNodeGroupInstanceInput = {
    type = "structure",
    id = "RegisterComputeNodeGroupInstanceInput",
    members = {
        clusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bootstrapId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegisterComputeNodeGroupInstanceOutput = {
    type = "structure",
    id = "RegisterComputeNodeGroupInstanceOutput",
    members = {
        nodeID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sharedSecret = {
            type = "string",
            traits = {
                required = true,
            },
        },
        endpoints = {
            type = "list",
            member = M.Endpoint,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAccountingRequest = {
    type = "structure",
    id = "UpdateAccountingRequest",
    members = {
        defaultPurgeTimeInDays = {
            type = "integer",
        },
        mode = {
            type = "string",
        },
    },
}

M.UpdateSlurmRestRequest = {
    type = "structure",
    id = "UpdateSlurmRestRequest",
    members = {
        mode = {
            type = "string",
        },
    },
}

M.UpdateClusterSlurmConfigurationRequest = {
    type = "structure",
    id = "UpdateClusterSlurmConfigurationRequest",
    members = {
        scaleDownIdleTimeInSeconds = {
            type = "integer",
        },
        slurmCustomSettings = {
            type = "list",
            member = M.SlurmCustomSetting,
        },
        slurmdbdCustomSettings = {
            type = "list",
            member = M.SlurmdbdCustomSetting,
        },
        cgroupCustomSettings = {
            type = "list",
            member = M.CgroupCustomSetting,
        },
        accounting = M.UpdateAccountingRequest,
        slurmRest = M.UpdateSlurmRestRequest,
    },
}

M.UpdateClusterInput = {
    type = "structure",
    id = "UpdateClusterInput",
    members = {
        clusterIdentifier = {
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
        slurmConfiguration = M.UpdateClusterSlurmConfigurationRequest,
    },
}

M.UpdateClusterOutput = {
    type = "structure",
    id = "UpdateClusterOutput",
    members = {
        cluster = M.Cluster,
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
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

return M
