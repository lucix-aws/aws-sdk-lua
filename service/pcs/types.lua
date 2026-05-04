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

M.AccountingMode = {
    STANDARD = "STANDARD",
    NONE = "NONE",
}

M.Accounting = {
    type = "structure",
    members = {
        defaultPurgeTimeInDays = {
            type = "number",
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
    members = {
        defaultPurgeTimeInDays = {
            type = "number",
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
    members = {
        minInstanceCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        maxInstanceCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.SlurmCustomSetting = {
    type = "structure",
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
    members = {
        slurmCustomSettings = {
            type = "list",
            member_type = "structure",
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
    members = {
        allocationStrategy = {
            type = "string",
        },
    },
}

M.CreateComputeNodeGroupInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        purchaseOption = {
            type = "string",
        },
        customLaunchTemplate = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        iamInstanceProfileArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scalingConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        instanceConfigs = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        spotOptions = {
            type = "structure",
        },
        slurmConfiguration = {
            type = "structure",
        },
        clientToken = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ErrorInfo = {
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

M.ScalingConfiguration = {
    type = "structure",
    members = {
        minInstanceCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        maxInstanceCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ComputeNodeGroupSlurmConfiguration = {
    type = "structure",
    members = {
        slurmCustomSettings = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        purchaseOption = {
            type = "string",
        },
        customLaunchTemplate = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        iamInstanceProfileArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scalingConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        instanceConfigs = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        spotOptions = {
            type = "structure",
        },
        slurmConfiguration = {
            type = "structure",
        },
        errorInfo = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateComputeNodeGroupOutput = {
    type = "structure",
    members = {
        computeNodeGroup = {
            type = "structure",
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
    UNKNOWN_OPERATION = "unknownOperation",
    CANNOT_PARSE = "cannotParse",
    FIELD_VALIDATION_FAILED = "fieldValidationFailed",
    OTHER = "other",
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
        fieldList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DeleteComputeNodeGroupInput = {
    type = "structure",
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
        },
    },
}

M.DeleteComputeNodeGroupOutput = {
    type = "structure",
}

M.GetComputeNodeGroupInput = {
    type = "structure",
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
    members = {
        computeNodeGroup = {
            type = "structure",
        },
    },
}

M.ListComputeNodeGroupsInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.ComputeNodeGroupSummary = {
    type = "structure",
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
    members = {
        computeNodeGroups = {
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

M.UpdateComputeNodeGroupSlurmConfigurationRequest = {
    type = "structure",
    members = {
        slurmCustomSettings = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateComputeNodeGroupInput = {
    type = "structure",
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
            member_type = "string",
        },
        customLaunchTemplate = {
            type = "structure",
        },
        purchaseOption = {
            type = "string",
        },
        spotOptions = {
            type = "structure",
        },
        scalingConfiguration = {
            type = "structure",
        },
        iamInstanceProfileArn = {
            type = "string",
        },
        slurmConfiguration = {
            type = "structure",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UpdateComputeNodeGroupOutput = {
    type = "structure",
    members = {
        computeNodeGroup = {
            type = "structure",
        },
    },
}

M.NetworkType = {
    IPV4 = "IPV4",
    IPV6 = "IPV6",
}

M.NetworkingRequest = {
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
    members = {
        scaleDownIdleTimeInSeconds = {
            type = "number",
        },
        slurmCustomSettings = {
            type = "list",
            member_type = "structure",
        },
        slurmdbdCustomSettings = {
            type = "list",
            member_type = "structure",
        },
        cgroupCustomSettings = {
            type = "list",
            member_type = "structure",
        },
        accounting = {
            type = "structure",
        },
        slurmRest = {
            type = "structure",
        },
    },
}

M.CreateClusterInput = {
    type = "structure",
    members = {
        clusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scheduler = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        size = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networking = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        slurmConfiguration = {
            type = "structure",
        },
        clientToken = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
    members = {
        subnetIds = {
            type = "list",
            member_type = "string",
        },
        securityGroupIds = {
            type = "list",
            member_type = "string",
        },
        networkType = {
            type = "string",
        },
    },
}

M.Scheduler = {
    type = "structure",
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
    members = {
        jwtKey = {
            type = "structure",
        },
    },
}

M.SlurmRest = {
    type = "structure",
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
    members = {
        scaleDownIdleTimeInSeconds = {
            type = "number",
        },
        slurmCustomSettings = {
            type = "list",
            member_type = "structure",
        },
        slurmdbdCustomSettings = {
            type = "list",
            member_type = "structure",
        },
        cgroupCustomSettings = {
            type = "list",
            member_type = "structure",
        },
        authKey = {
            type = "structure",
        },
        jwtAuth = {
            type = "structure",
        },
        accounting = {
            type = "structure",
        },
        slurmRest = {
            type = "structure",
        },
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
        scheduler = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        size = {
            type = "string",
            traits = {
                required = true,
            },
        },
        slurmConfiguration = {
            type = "structure",
        },
        networking = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        endpoints = {
            type = "list",
            member_type = "structure",
        },
        errorInfo = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateClusterOutput = {
    type = "structure",
    members = {
        cluster = {
            type = "structure",
        },
    },
}

M.DeleteClusterInput = {
    type = "structure",
    members = {
        clusterIdentifier = {
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

M.DeleteClusterOutput = {
    type = "structure",
}

M.GetClusterInput = {
    type = "structure",
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
    members = {
        cluster = {
            type = "structure",
        },
    },
}

M.ListClustersInput = {
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

M.ClusterSummary = {
    type = "structure",
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
    members = {
        clusters = {
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

M.ComputeNodeGroupConfiguration = {
    type = "structure",
    members = {
        computeNodeGroupId = {
            type = "string",
        },
    },
}

M.QueueSlurmConfigurationRequest = {
    type = "structure",
    members = {
        slurmCustomSettings = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateQueueInput = {
    type = "structure",
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
            member_type = "structure",
        },
        slurmConfiguration = {
            type = "structure",
        },
        clientToken = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.QueueSlurmConfiguration = {
    type = "structure",
    members = {
        slurmCustomSettings = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        slurmConfiguration = {
            type = "structure",
        },
        errorInfo = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateQueueOutput = {
    type = "structure",
    members = {
        queue = {
            type = "structure",
        },
    },
}

M.DeleteQueueInput = {
    type = "structure",
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
        },
    },
}

M.DeleteQueueOutput = {
    type = "structure",
}

M.GetQueueInput = {
    type = "structure",
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
    members = {
        queue = {
            type = "structure",
        },
    },
}

M.ListQueuesInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.QueueSummary = {
    type = "structure",
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
    members = {
        queues = {
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

M.UpdateQueueSlurmConfigurationRequest = {
    type = "structure",
    members = {
        slurmCustomSettings = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateQueueInput = {
    type = "structure",
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
            member_type = "structure",
        },
        slurmConfiguration = {
            type = "structure",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UpdateQueueOutput = {
    type = "structure",
    members = {
        queue = {
            type = "structure",
        },
    },
}

M.RegisterComputeNodeGroupInstanceInput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAccountingRequest = {
    type = "structure",
    members = {
        defaultPurgeTimeInDays = {
            type = "number",
        },
        mode = {
            type = "string",
        },
    },
}

M.UpdateSlurmRestRequest = {
    type = "structure",
    members = {
        mode = {
            type = "string",
        },
    },
}

M.UpdateClusterSlurmConfigurationRequest = {
    type = "structure",
    members = {
        scaleDownIdleTimeInSeconds = {
            type = "number",
        },
        slurmCustomSettings = {
            type = "list",
            member_type = "structure",
        },
        slurmdbdCustomSettings = {
            type = "list",
            member_type = "structure",
        },
        cgroupCustomSettings = {
            type = "list",
            member_type = "structure",
        },
        accounting = {
            type = "structure",
        },
        slurmRest = {
            type = "structure",
        },
    },
}

M.UpdateClusterInput = {
    type = "structure",
    members = {
        clusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        slurmConfiguration = {
            type = "structure",
        },
    },
}

M.UpdateClusterOutput = {
    type = "structure",
    members = {
        cluster = {
            type = "structure",
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
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

return M
