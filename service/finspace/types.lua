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

M.AutoScalingMetric = {
    CPU_UTILIZATION_PERCENTAGE = "CPU_UTILIZATION_PERCENTAGE",
}

M.AutoScalingConfiguration = {
    type = "structure",
    members = {
        minNodeCount = {
            type = "integer",
        },
        maxNodeCount = {
            type = "integer",
        },
        autoScalingMetric = {
            type = "string",
        },
        metricTarget = {
            type = "double",
        },
        scaleInCooldownSeconds = {
            type = "double",
        },
        scaleOutCooldownSeconds = {
            type = "double",
        },
    },
}

M.FederationMode = {
    FEDERATED = "FEDERATED",
    LOCAL = "LOCAL",
}

M.FederationParameters = {
    type = "structure",
    members = {
        samlMetadataDocument = {
            type = "string",
        },
        samlMetadataURL = {
            type = "string",
        },
        applicationCallBackURL = {
            type = "string",
        },
        federationURN = {
            type = "string",
        },
        federationProviderName = {
            type = "string",
        },
        attributeMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.SuperuserParameters = {
    type = "structure",
    members = {
        emailAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
        firstName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lastName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateEnvironmentInput = {
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
        kmsKeyId = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        federationMode = {
            type = "string",
        },
        federationParameters = M.FederationParameters,
        superuserParameters = M.SuperuserParameters,
        dataBundles = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateEnvironmentOutput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
        },
        environmentArn = {
            type = "string",
        },
        environmentUrl = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
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

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
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
        },
        reason = {
            type = "string",
        },
    },
}

M.ChangeType = {
    PUT = "PUT",
    DELETE = "DELETE",
}

M.ChangeRequest = {
    type = "structure",
    members = {
        changeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3Path = {
            type = "string",
        },
        dbPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateKxChangesetInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        databaseName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        changeRequests = {
            type = "list",
            member = M.ChangeRequest,
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

M.ErrorDetails = {
    VALIDATION = "The inputs to this request are invalid.",
    SERVICE_QUOTA_EXCEEDED = "Service limits have been exceeded.",
    ACCESS_DENIED = "Missing required permission to perform this request.",
    RESOURCE_NOT_FOUND = "One or more inputs to this request were not found.",
    THROTTLING = "The system temporarily lacks sufficient resources to process the request.",
    INTERNAL_SERVICE_EXCEPTION = "An internal error has occurred.",
    CANCELLED = "Cancelled",
    USER_RECOVERABLE = "A user recoverable error has occurred",
}

M.ErrorInfo = {
    type = "structure",
    members = {
        errorMessage = {
            type = "string",
        },
        errorType = {
            type = "string",
        },
    },
}

M.ChangesetStatus = {
    PENDING = "PENDING",
    PROCESSING = "PROCESSING",
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
}

M.CreateKxChangesetOutput = {
    type = "structure",
    members = {
        changesetId = {
            type = "string",
        },
        databaseName = {
            type = "string",
        },
        environmentId = {
            type = "string",
        },
        changeRequests = {
            type = "list",
            member = M.ChangeRequest,
        },
        createdTimestamp = {
            type = "timestamp",
        },
        lastModifiedTimestamp = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        errorInfo = M.ErrorInfo,
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

M.KxAzMode = {
    SINGLE = "SINGLE",
    MULTI = "MULTI",
}

M.KxCacheStorageConfiguration = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        size = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.CapacityConfiguration = {
    type = "structure",
    members = {
        nodeType = {
            type = "string",
        },
        nodeCount = {
            type = "integer",
        },
    },
}

M.KxClusterType = {
    HDB = "HDB",
    RDB = "RDB",
    GATEWAY = "GATEWAY",
    GP = "GP",
    TICKERPLANT = "TICKERPLANT",
}

M.CodeConfiguration = {
    type = "structure",
    members = {
        s3Bucket = {
            type = "string",
        },
        s3Key = {
            type = "string",
        },
        s3ObjectVersion = {
            type = "string",
        },
    },
}

M.KxCommandLineArgument = {
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

M.KxDatabaseCacheConfiguration = {
    type = "structure",
    members = {
        cacheType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dbPaths = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        dataviewName = {
            type = "string",
        },
    },
}

M.KxDataviewSegmentConfiguration = {
    type = "structure",
    members = {
        dbPaths = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        volumeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        onDemand = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.KxDataviewConfiguration = {
    type = "structure",
    members = {
        dataviewName = {
            type = "string",
        },
        dataviewVersionId = {
            type = "string",
        },
        changesetId = {
            type = "string",
        },
        segmentConfigurations = {
            type = "list",
            member = M.KxDataviewSegmentConfiguration,
        },
    },
}

M.KxDatabaseConfiguration = {
    type = "structure",
    members = {
        databaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cacheConfigurations = {
            type = "list",
            member = M.KxDatabaseCacheConfiguration,
        },
        changesetId = {
            type = "string",
        },
        dataviewName = {
            type = "string",
        },
        dataviewConfiguration = M.KxDataviewConfiguration,
    },
}

M.KxSavedownStorageType = {
    SDS01 = "SDS01",
}

M.KxSavedownStorageConfiguration = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        size = {
            type = "integer",
        },
        volumeName = {
            type = "string",
        },
    },
}

M.KxScalingGroupConfiguration = {
    type = "structure",
    members = {
        scalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        memoryLimit = {
            type = "integer",
        },
        memoryReservation = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        nodeCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        cpu = {
            type = "double",
        },
    },
}

M.TickerplantLogConfiguration = {
    type = "structure",
    members = {
        tickerplantLogVolumes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.IPAddressType = {
    IP_V4 = "IP_V4",
}

M.VpcConfiguration = {
    type = "structure",
    members = {
        vpcId = {
            type = "string",
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
        },
        ipAddressType = {
            type = "string",
        },
    },
}

M.CreateKxClusterInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
        },
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clusterType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tickerplantLogConfiguration = M.TickerplantLogConfiguration,
        databases = {
            type = "list",
            member = M.KxDatabaseConfiguration,
        },
        cacheStorageConfigurations = {
            type = "list",
            member = M.KxCacheStorageConfiguration,
        },
        autoScalingConfiguration = M.AutoScalingConfiguration,
        clusterDescription = {
            type = "string",
        },
        capacityConfiguration = M.CapacityConfiguration,
        releaseLabel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vpcConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VpcConfiguration }),
        initializationScript = {
            type = "string",
        },
        commandLineArguments = {
            type = "list",
            member = M.KxCommandLineArgument,
        },
        code = M.CodeConfiguration,
        executionRole = {
            type = "string",
        },
        savedownStorageConfiguration = M.KxSavedownStorageConfiguration,
        azMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        availabilityZoneId = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        scalingGroupConfiguration = M.KxScalingGroupConfiguration,
    },
}

M.KxClusterStatus = {
    PENDING = "PENDING",
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
    RUNNING = "RUNNING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    DELETED = "DELETED",
    DELETE_FAILED = "DELETE_FAILED",
}

M.VolumeType = {
    NAS_1 = "NAS_1",
}

M.Volume = {
    type = "structure",
    members = {
        volumeName = {
            type = "string",
        },
        volumeType = {
            type = "string",
        },
    },
}

M.CreateKxClusterOutput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        clusterName = {
            type = "string",
        },
        clusterType = {
            type = "string",
        },
        tickerplantLogConfiguration = M.TickerplantLogConfiguration,
        volumes = {
            type = "list",
            member = M.Volume,
        },
        databases = {
            type = "list",
            member = M.KxDatabaseConfiguration,
        },
        cacheStorageConfigurations = {
            type = "list",
            member = M.KxCacheStorageConfiguration,
        },
        autoScalingConfiguration = M.AutoScalingConfiguration,
        clusterDescription = {
            type = "string",
        },
        capacityConfiguration = M.CapacityConfiguration,
        releaseLabel = {
            type = "string",
        },
        vpcConfiguration = M.VpcConfiguration,
        initializationScript = {
            type = "string",
        },
        commandLineArguments = {
            type = "list",
            member = M.KxCommandLineArgument,
        },
        code = M.CodeConfiguration,
        executionRole = {
            type = "string",
        },
        lastModifiedTimestamp = {
            type = "timestamp",
        },
        savedownStorageConfiguration = M.KxSavedownStorageConfiguration,
        azMode = {
            type = "string",
        },
        availabilityZoneId = {
            type = "string",
        },
        createdTimestamp = {
            type = "timestamp",
        },
        scalingGroupConfiguration = M.KxScalingGroupConfiguration,
    },
}

M.CreateKxDatabaseInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        databaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
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
                required = true,
            },
        },
    },
}

M.CreateKxDatabaseOutput = {
    type = "structure",
    members = {
        databaseName = {
            type = "string",
        },
        databaseArn = {
            type = "string",
        },
        environmentId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        createdTimestamp = {
            type = "timestamp",
        },
        lastModifiedTimestamp = {
            type = "timestamp",
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

M.CreateKxDataviewInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        databaseName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dataviewName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        azMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        availabilityZoneId = {
            type = "string",
        },
        changesetId = {
            type = "string",
        },
        segmentConfigurations = {
            type = "list",
            member = M.KxDataviewSegmentConfiguration,
        },
        autoUpdate = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        readWrite = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        description = {
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
                required = true,
            },
        },
    },
}

M.KxDataviewStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    FAILED = "FAILED",
    DELETING = "DELETING",
}

M.CreateKxDataviewOutput = {
    type = "structure",
    members = {
        dataviewName = {
            type = "string",
        },
        databaseName = {
            type = "string",
        },
        environmentId = {
            type = "string",
        },
        azMode = {
            type = "string",
        },
        availabilityZoneId = {
            type = "string",
        },
        changesetId = {
            type = "string",
        },
        segmentConfigurations = {
            type = "list",
            member = M.KxDataviewSegmentConfiguration,
        },
        description = {
            type = "string",
        },
        autoUpdate = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        readWrite = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        createdTimestamp = {
            type = "timestamp",
        },
        lastModifiedTimestamp = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
    },
}

M.CreateKxEnvironmentInput = {
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
        kmsKeyId = {
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
        },
    },
}

M.EnvironmentStatus = {
    CREATE_REQUESTED = "CREATE_REQUESTED",
    CREATING = "CREATING",
    CREATED = "CREATED",
    DELETE_REQUESTED = "DELETE_REQUESTED",
    DELETING = "DELETING",
    DELETED = "DELETED",
    FAILED_CREATION = "FAILED_CREATION",
    RETRY_DELETION = "RETRY_DELETION",
    FAILED_DELETION = "FAILED_DELETION",
    UPDATE_NETWORK_REQUESTED = "UPDATE_NETWORK_REQUESTED",
    UPDATING_NETWORK = "UPDATING_NETWORK",
    FAILED_UPDATING_NETWORK = "FAILED_UPDATING_NETWORK",
    SUSPENDED = "SUSPENDED",
}

M.CreateKxEnvironmentOutput = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
        environmentId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        environmentArn = {
            type = "string",
        },
        kmsKeyId = {
            type = "string",
        },
        creationTimestamp = {
            type = "timestamp",
        },
    },
}

M.CreateKxScalingGroupInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        scalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        hostType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        availabilityZoneId = {
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

M.KxScalingGroupStatus = {
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    DELETED = "DELETED",
    DELETE_FAILED = "DELETE_FAILED",
}

M.CreateKxScalingGroupOutput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
        },
        scalingGroupName = {
            type = "string",
        },
        hostType = {
            type = "string",
        },
        availabilityZoneId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        lastModifiedTimestamp = {
            type = "timestamp",
        },
        createdTimestamp = {
            type = "timestamp",
        },
    },
}

M.CreateKxUserInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        iamRole = {
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
        },
    },
}

M.CreateKxUserOutput = {
    type = "structure",
    members = {
        userName = {
            type = "string",
        },
        userArn = {
            type = "string",
        },
        environmentId = {
            type = "string",
        },
        iamRole = {
            type = "string",
        },
    },
}

M.KxNAS1Type = {
    SSD_1000 = "SSD_1000",
    SSD_250 = "SSD_250",
    HDD_12 = "HDD_12",
}

M.KxNAS1Configuration = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        size = {
            type = "integer",
        },
    },
}

M.KxVolumeType = {
    NAS_1 = "NAS_1",
}

M.CreateKxVolumeInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
        },
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        volumeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        volumeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        nas1Configuration = M.KxNAS1Configuration,
        azMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        availabilityZoneIds = {
            type = "list",
            member = { type = "string" },
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

M.KxVolumeStatus = {
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    UPDATED = "UPDATED",
    UPDATE_FAILED = "UPDATE_FAILED",
    DELETING = "DELETING",
    DELETED = "DELETED",
    DELETE_FAILED = "DELETE_FAILED",
}

M.CreateKxVolumeOutput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
        },
        volumeName = {
            type = "string",
        },
        volumeType = {
            type = "string",
        },
        volumeArn = {
            type = "string",
        },
        nas1Configuration = M.KxNAS1Configuration,
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        azMode = {
            type = "string",
        },
        description = {
            type = "string",
        },
        availabilityZoneIds = {
            type = "list",
            member = { type = "string" },
        },
        createdTimestamp = {
            type = "timestamp",
        },
    },
}

M.DeleteEnvironmentInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteEnvironmentOutput = {
    type = "structure",
}

M.DeleteKxClusterInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
            },
        },
    },
}

M.DeleteKxClusterOutput = {
    type = "structure",
}

M.DeleteKxClusterNodeInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nodeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteKxClusterNodeOutput = {
    type = "structure",
}

M.DeleteKxDatabaseInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        databaseName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                required = true,
            },
        },
    },
}

M.DeleteKxDatabaseOutput = {
    type = "structure",
}

M.DeleteKxDataviewInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        databaseName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dataviewName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                required = true,
            },
        },
    },
}

M.DeleteKxDataviewOutput = {
    type = "structure",
}

M.DeleteKxEnvironmentInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
            },
        },
    },
}

M.DeleteKxEnvironmentOutput = {
    type = "structure",
}

M.DeleteKxScalingGroupInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        scalingGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
            },
        },
    },
}

M.DeleteKxScalingGroupOutput = {
    type = "structure",
}

M.DeleteKxUserInput = {
    type = "structure",
    members = {
        userName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
            },
        },
    },
}

M.DeleteKxUserOutput = {
    type = "structure",
}

M.DeleteKxVolumeInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        volumeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
            },
        },
    },
}

M.DeleteKxVolumeOutput = {
    type = "structure",
}

M.GetEnvironmentInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Environment = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        environmentId = {
            type = "string",
        },
        awsAccountId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        environmentUrl = {
            type = "string",
        },
        description = {
            type = "string",
        },
        environmentArn = {
            type = "string",
        },
        sageMakerStudioDomainUrl = {
            type = "string",
        },
        kmsKeyId = {
            type = "string",
        },
        dedicatedServiceAccountId = {
            type = "string",
        },
        federationMode = {
            type = "string",
        },
        federationParameters = M.FederationParameters,
    },
}

M.GetEnvironmentOutput = {
    type = "structure",
    members = {
        environment = M.Environment,
    },
}

M.GetKxChangesetInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        databaseName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        changesetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetKxChangesetOutput = {
    type = "structure",
    members = {
        changesetId = {
            type = "string",
        },
        databaseName = {
            type = "string",
        },
        environmentId = {
            type = "string",
        },
        changeRequests = {
            type = "list",
            member = M.ChangeRequest,
        },
        createdTimestamp = {
            type = "timestamp",
        },
        activeFromTimestamp = {
            type = "timestamp",
        },
        lastModifiedTimestamp = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        errorInfo = M.ErrorInfo,
    },
}

M.GetKxClusterInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetKxClusterOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        clusterName = {
            type = "string",
        },
        clusterType = {
            type = "string",
        },
        tickerplantLogConfiguration = M.TickerplantLogConfiguration,
        volumes = {
            type = "list",
            member = M.Volume,
        },
        databases = {
            type = "list",
            member = M.KxDatabaseConfiguration,
        },
        cacheStorageConfigurations = {
            type = "list",
            member = M.KxCacheStorageConfiguration,
        },
        autoScalingConfiguration = M.AutoScalingConfiguration,
        clusterDescription = {
            type = "string",
        },
        capacityConfiguration = M.CapacityConfiguration,
        releaseLabel = {
            type = "string",
        },
        vpcConfiguration = M.VpcConfiguration,
        initializationScript = {
            type = "string",
        },
        commandLineArguments = {
            type = "list",
            member = M.KxCommandLineArgument,
        },
        code = M.CodeConfiguration,
        executionRole = {
            type = "string",
        },
        lastModifiedTimestamp = {
            type = "timestamp",
        },
        savedownStorageConfiguration = M.KxSavedownStorageConfiguration,
        azMode = {
            type = "string",
        },
        availabilityZoneId = {
            type = "string",
        },
        createdTimestamp = {
            type = "timestamp",
        },
        scalingGroupConfiguration = M.KxScalingGroupConfiguration,
    },
}

M.GetKxConnectionStringInput = {
    type = "structure",
    members = {
        userArn = {
            type = "string",
            traits = {
                http_query = "userArn",
                required = true,
            },
        },
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clusterName = {
            type = "string",
            traits = {
                http_query = "clusterName",
                required = true,
            },
        },
    },
}

M.GetKxConnectionStringOutput = {
    type = "structure",
    members = {
        signedConnectionString = {
            type = "string",
        },
    },
}

M.GetKxDatabaseInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        databaseName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetKxDatabaseOutput = {
    type = "structure",
    members = {
        databaseName = {
            type = "string",
        },
        databaseArn = {
            type = "string",
        },
        environmentId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        createdTimestamp = {
            type = "timestamp",
        },
        lastModifiedTimestamp = {
            type = "timestamp",
        },
        lastCompletedChangesetId = {
            type = "string",
        },
        numBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        numChangesets = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        numFiles = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.GetKxDataviewInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        databaseName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dataviewName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.KxDataviewActiveVersion = {
    type = "structure",
    members = {
        changesetId = {
            type = "string",
        },
        segmentConfigurations = {
            type = "list",
            member = M.KxDataviewSegmentConfiguration,
        },
        attachedClusters = {
            type = "list",
            member = { type = "string" },
        },
        createdTimestamp = {
            type = "timestamp",
        },
        versionId = {
            type = "string",
        },
    },
}

M.GetKxDataviewOutput = {
    type = "structure",
    members = {
        databaseName = {
            type = "string",
        },
        dataviewName = {
            type = "string",
        },
        azMode = {
            type = "string",
        },
        availabilityZoneId = {
            type = "string",
        },
        changesetId = {
            type = "string",
        },
        segmentConfigurations = {
            type = "list",
            member = M.KxDataviewSegmentConfiguration,
        },
        activeVersions = {
            type = "list",
            member = M.KxDataviewActiveVersion,
        },
        description = {
            type = "string",
        },
        autoUpdate = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        readWrite = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        environmentId = {
            type = "string",
        },
        createdTimestamp = {
            type = "timestamp",
        },
        lastModifiedTimestamp = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
    },
}

M.GetKxEnvironmentInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CustomDNSServer = {
    type = "structure",
    members = {
        customDNSServerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customDNSServerIP = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.dnsStatus = {
    NONE = "NONE",
    UPDATE_REQUESTED = "UPDATE_REQUESTED",
    UPDATING = "UPDATING",
    FAILED_UPDATE = "FAILED_UPDATE",
    SUCCESSFULLY_UPDATED = "SUCCESSFULLY_UPDATED",
}

M.tgwStatus = {
    NONE = "NONE",
    UPDATE_REQUESTED = "UPDATE_REQUESTED",
    UPDATING = "UPDATING",
    FAILED_UPDATE = "FAILED_UPDATE",
    SUCCESSFULLY_UPDATED = "SUCCESSFULLY_UPDATED",
}

M.IcmpTypeCode = {
    type = "structure",
    members = {
        type = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        code = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.PortRange = {
    type = "structure",
    members = {
        from = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        to = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.RuleAction = {
    ALLOW = "allow",
    DENY = "deny",
}

M.NetworkACLEntry = {
    type = "structure",
    members = {
        ruleNumber = {
            type = "integer",
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
        ruleAction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        portRange = M.PortRange,
        icmpTypeCode = M.IcmpTypeCode,
        cidrBlock = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TransitGatewayConfiguration = {
    type = "structure",
    members = {
        transitGatewayID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        routableCIDRSpace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        attachmentNetworkAclConfiguration = {
            type = "list",
            member = M.NetworkACLEntry,
        },
    },
}

M.GetKxEnvironmentOutput = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        environmentId = {
            type = "string",
        },
        awsAccountId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        tgwStatus = {
            type = "string",
        },
        dnsStatus = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
        description = {
            type = "string",
        },
        environmentArn = {
            type = "string",
        },
        kmsKeyId = {
            type = "string",
        },
        dedicatedServiceAccountId = {
            type = "string",
        },
        transitGatewayConfiguration = M.TransitGatewayConfiguration,
        customDNSConfiguration = {
            type = "list",
            member = M.CustomDNSServer,
        },
        creationTimestamp = {
            type = "timestamp",
        },
        updateTimestamp = {
            type = "timestamp",
        },
        availabilityZoneIds = {
            type = "list",
            member = { type = "string" },
        },
        certificateAuthorityArn = {
            type = "string",
        },
    },
}

M.GetKxScalingGroupInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        scalingGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetKxScalingGroupOutput = {
    type = "structure",
    members = {
        scalingGroupName = {
            type = "string",
        },
        scalingGroupArn = {
            type = "string",
        },
        hostType = {
            type = "string",
        },
        clusters = {
            type = "list",
            member = { type = "string" },
        },
        availabilityZoneId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        lastModifiedTimestamp = {
            type = "timestamp",
        },
        createdTimestamp = {
            type = "timestamp",
        },
    },
}

M.GetKxUserInput = {
    type = "structure",
    members = {
        userName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetKxUserOutput = {
    type = "structure",
    members = {
        userName = {
            type = "string",
        },
        userArn = {
            type = "string",
        },
        environmentId = {
            type = "string",
        },
        iamRole = {
            type = "string",
        },
    },
}

M.GetKxVolumeInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        volumeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.KxAttachedCluster = {
    type = "structure",
    members = {
        clusterName = {
            type = "string",
        },
        clusterType = {
            type = "string",
        },
        clusterStatus = {
            type = "string",
        },
    },
}

M.GetKxVolumeOutput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
        },
        volumeName = {
            type = "string",
        },
        volumeType = {
            type = "string",
        },
        volumeArn = {
            type = "string",
        },
        nas1Configuration = M.KxNAS1Configuration,
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        createdTimestamp = {
            type = "timestamp",
        },
        description = {
            type = "string",
        },
        azMode = {
            type = "string",
        },
        availabilityZoneIds = {
            type = "list",
            member = { type = "string" },
        },
        lastModifiedTimestamp = {
            type = "timestamp",
        },
        attachedClusters = {
            type = "list",
            member = M.KxAttachedCluster,
        },
    },
}

M.ListEnvironmentsInput = {
    type = "structure",
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
                default = 0,
                http_query = "maxResults",
            },
        },
    },
}

M.ListEnvironmentsOutput = {
    type = "structure",
    members = {
        environments = {
            type = "list",
            member = M.Environment,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListKxChangesetsInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        databaseName = {
            type = "string",
            traits = {
                http_label = true,
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
                default = 0,
                http_query = "maxResults",
            },
        },
    },
}

M.KxChangesetListEntry = {
    type = "structure",
    members = {
        changesetId = {
            type = "string",
        },
        createdTimestamp = {
            type = "timestamp",
        },
        activeFromTimestamp = {
            type = "timestamp",
        },
        lastModifiedTimestamp = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
    },
}

M.ListKxChangesetsOutput = {
    type = "structure",
    members = {
        kxChangesets = {
            type = "list",
            member = M.KxChangesetListEntry,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListKxClusterNodesInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
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
                default = 0,
                http_query = "maxResults",
            },
        },
    },
}

M.KxNodeStatus = {
    RUNNING = "RUNNING",
    PROVISIONING = "PROVISIONING",
}

M.KxNode = {
    type = "structure",
    members = {
        nodeId = {
            type = "string",
        },
        availabilityZoneId = {
            type = "string",
        },
        launchTime = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
    },
}

M.ListKxClusterNodesOutput = {
    type = "structure",
    members = {
        nodes = {
            type = "list",
            member = M.KxNode,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListKxClustersInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clusterType = {
            type = "string",
            traits = {
                http_query = "clusterType",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
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

M.KxCluster = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        clusterName = {
            type = "string",
        },
        clusterType = {
            type = "string",
        },
        clusterDescription = {
            type = "string",
        },
        releaseLabel = {
            type = "string",
        },
        volumes = {
            type = "list",
            member = M.Volume,
        },
        initializationScript = {
            type = "string",
        },
        executionRole = {
            type = "string",
        },
        azMode = {
            type = "string",
        },
        availabilityZoneId = {
            type = "string",
        },
        lastModifiedTimestamp = {
            type = "timestamp",
        },
        createdTimestamp = {
            type = "timestamp",
        },
    },
}

M.ListKxClustersOutput = {
    type = "structure",
    members = {
        kxClusterSummaries = {
            type = "list",
            member = M.KxCluster,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListKxDatabasesInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
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
                default = 0,
                http_query = "maxResults",
            },
        },
    },
}

M.KxDatabaseListEntry = {
    type = "structure",
    members = {
        databaseName = {
            type = "string",
        },
        createdTimestamp = {
            type = "timestamp",
        },
        lastModifiedTimestamp = {
            type = "timestamp",
        },
    },
}

M.ListKxDatabasesOutput = {
    type = "structure",
    members = {
        kxDatabases = {
            type = "list",
            member = M.KxDatabaseListEntry,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListKxDataviewsInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        databaseName = {
            type = "string",
            traits = {
                http_label = true,
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
                default = 0,
                http_query = "maxResults",
            },
        },
    },
}

M.KxDataviewListEntry = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
        },
        databaseName = {
            type = "string",
        },
        dataviewName = {
            type = "string",
        },
        azMode = {
            type = "string",
        },
        availabilityZoneId = {
            type = "string",
        },
        changesetId = {
            type = "string",
        },
        segmentConfigurations = {
            type = "list",
            member = M.KxDataviewSegmentConfiguration,
        },
        activeVersions = {
            type = "list",
            member = M.KxDataviewActiveVersion,
        },
        status = {
            type = "string",
        },
        description = {
            type = "string",
        },
        autoUpdate = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        readWrite = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        createdTimestamp = {
            type = "timestamp",
        },
        lastModifiedTimestamp = {
            type = "timestamp",
        },
        statusReason = {
            type = "string",
        },
    },
}

M.ListKxDataviewsOutput = {
    type = "structure",
    members = {
        kxDataviews = {
            type = "list",
            member = M.KxDataviewListEntry,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListKxEnvironmentsInput = {
    type = "structure",
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

M.KxEnvironment = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        environmentId = {
            type = "string",
        },
        awsAccountId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        tgwStatus = {
            type = "string",
        },
        dnsStatus = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
        description = {
            type = "string",
        },
        environmentArn = {
            type = "string",
        },
        kmsKeyId = {
            type = "string",
        },
        dedicatedServiceAccountId = {
            type = "string",
        },
        transitGatewayConfiguration = M.TransitGatewayConfiguration,
        customDNSConfiguration = {
            type = "list",
            member = M.CustomDNSServer,
        },
        creationTimestamp = {
            type = "timestamp",
        },
        updateTimestamp = {
            type = "timestamp",
        },
        availabilityZoneIds = {
            type = "list",
            member = { type = "string" },
        },
        certificateAuthorityArn = {
            type = "string",
        },
    },
}

M.ListKxEnvironmentsOutput = {
    type = "structure",
    members = {
        environments = {
            type = "list",
            member = M.KxEnvironment,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListKxScalingGroupsInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
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

M.KxScalingGroup = {
    type = "structure",
    members = {
        scalingGroupName = {
            type = "string",
        },
        hostType = {
            type = "string",
        },
        clusters = {
            type = "list",
            member = { type = "string" },
        },
        availabilityZoneId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        lastModifiedTimestamp = {
            type = "timestamp",
        },
        createdTimestamp = {
            type = "timestamp",
        },
    },
}

M.ListKxScalingGroupsOutput = {
    type = "structure",
    members = {
        scalingGroups = {
            type = "list",
            member = M.KxScalingGroup,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListKxUsersInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
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
                default = 0,
                http_query = "maxResults",
            },
        },
    },
}

M.KxUser = {
    type = "structure",
    members = {
        userArn = {
            type = "string",
        },
        userName = {
            type = "string",
        },
        iamRole = {
            type = "string",
        },
        createTimestamp = {
            type = "timestamp",
        },
        updateTimestamp = {
            type = "timestamp",
        },
    },
}

M.ListKxUsersOutput = {
    type = "structure",
    members = {
        users = {
            type = "list",
            member = M.KxUser,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListKxVolumesInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        volumeType = {
            type = "string",
            traits = {
                http_query = "volumeType",
            },
        },
    },
}

M.KxVolume = {
    type = "structure",
    members = {
        volumeName = {
            type = "string",
        },
        volumeType = {
            type = "string",
        },
        status = {
            type = "string",
        },
        description = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        azMode = {
            type = "string",
        },
        availabilityZoneIds = {
            type = "list",
            member = { type = "string" },
        },
        createdTimestamp = {
            type = "timestamp",
        },
        lastModifiedTimestamp = {
            type = "timestamp",
        },
    },
}

M.ListKxVolumesOutput = {
    type = "structure",
    members = {
        kxVolumeSummaries = {
            type = "list",
            member = M.KxVolume,
        },
        nextToken = {
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

M.UpdateEnvironmentInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        federationMode = {
            type = "string",
        },
        federationParameters = M.FederationParameters,
    },
}

M.UpdateEnvironmentOutput = {
    type = "structure",
    members = {
        environment = M.Environment,
    },
}

M.KxClusterCodeDeploymentStrategy = {
    NO_RESTART = "NO_RESTART",
    ROLLING = "ROLLING",
    FORCE = "FORCE",
}

M.KxClusterCodeDeploymentConfiguration = {
    type = "structure",
    members = {
        deploymentStrategy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateKxClusterCodeConfigurationInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        code = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CodeConfiguration }),
        initializationScript = {
            type = "string",
        },
        commandLineArguments = {
            type = "list",
            member = M.KxCommandLineArgument,
        },
        deploymentConfiguration = M.KxClusterCodeDeploymentConfiguration,
    },
}

M.UpdateKxClusterCodeConfigurationOutput = {
    type = "structure",
}

M.KxDeploymentStrategy = {
    NO_RESTART = "NO_RESTART",
    ROLLING = "ROLLING",
}

M.KxDeploymentConfiguration = {
    type = "structure",
    members = {
        deploymentStrategy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateKxClusterDatabasesInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        databases = {
            type = "list",
            member = M.KxDatabaseConfiguration,
            traits = {
                required = true,
            },
        },
        deploymentConfiguration = M.KxDeploymentConfiguration,
    },
}

M.UpdateKxClusterDatabasesOutput = {
    type = "structure",
}

M.UpdateKxDatabaseInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        databaseName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateKxDatabaseOutput = {
    type = "structure",
    members = {
        databaseName = {
            type = "string",
        },
        environmentId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        lastModifiedTimestamp = {
            type = "timestamp",
        },
    },
}

M.UpdateKxDataviewInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        databaseName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dataviewName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        changesetId = {
            type = "string",
        },
        segmentConfigurations = {
            type = "list",
            member = M.KxDataviewSegmentConfiguration,
        },
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateKxDataviewOutput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
        },
        databaseName = {
            type = "string",
        },
        dataviewName = {
            type = "string",
        },
        azMode = {
            type = "string",
        },
        availabilityZoneId = {
            type = "string",
        },
        changesetId = {
            type = "string",
        },
        segmentConfigurations = {
            type = "list",
            member = M.KxDataviewSegmentConfiguration,
        },
        activeVersions = {
            type = "list",
            member = M.KxDataviewActiveVersion,
        },
        status = {
            type = "string",
        },
        autoUpdate = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        readWrite = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        description = {
            type = "string",
        },
        createdTimestamp = {
            type = "timestamp",
        },
        lastModifiedTimestamp = {
            type = "timestamp",
        },
    },
}

M.UpdateKxEnvironmentInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UpdateKxEnvironmentOutput = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        environmentId = {
            type = "string",
        },
        awsAccountId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        tgwStatus = {
            type = "string",
        },
        dnsStatus = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
        description = {
            type = "string",
        },
        environmentArn = {
            type = "string",
        },
        kmsKeyId = {
            type = "string",
        },
        dedicatedServiceAccountId = {
            type = "string",
        },
        transitGatewayConfiguration = M.TransitGatewayConfiguration,
        customDNSConfiguration = {
            type = "list",
            member = M.CustomDNSServer,
        },
        creationTimestamp = {
            type = "timestamp",
        },
        updateTimestamp = {
            type = "timestamp",
        },
        availabilityZoneIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateKxEnvironmentNetworkInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        transitGatewayConfiguration = M.TransitGatewayConfiguration,
        customDNSConfiguration = {
            type = "list",
            member = M.CustomDNSServer,
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UpdateKxEnvironmentNetworkOutput = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        environmentId = {
            type = "string",
        },
        awsAccountId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        tgwStatus = {
            type = "string",
        },
        dnsStatus = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
        description = {
            type = "string",
        },
        environmentArn = {
            type = "string",
        },
        kmsKeyId = {
            type = "string",
        },
        dedicatedServiceAccountId = {
            type = "string",
        },
        transitGatewayConfiguration = M.TransitGatewayConfiguration,
        customDNSConfiguration = {
            type = "list",
            member = M.CustomDNSServer,
        },
        creationTimestamp = {
            type = "timestamp",
        },
        updateTimestamp = {
            type = "timestamp",
        },
        availabilityZoneIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateKxUserInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        iamRole = {
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

M.UpdateKxUserOutput = {
    type = "structure",
    members = {
        userName = {
            type = "string",
        },
        userArn = {
            type = "string",
        },
        environmentId = {
            type = "string",
        },
        iamRole = {
            type = "string",
        },
    },
}

M.UpdateKxVolumeInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        volumeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
        nas1Configuration = M.KxNAS1Configuration,
    },
}

M.UpdateKxVolumeOutput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
        },
        volumeName = {
            type = "string",
        },
        volumeType = {
            type = "string",
        },
        volumeArn = {
            type = "string",
        },
        nas1Configuration = M.KxNAS1Configuration,
        status = {
            type = "string",
        },
        description = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        createdTimestamp = {
            type = "timestamp",
        },
        azMode = {
            type = "string",
        },
        availabilityZoneIds = {
            type = "list",
            member = { type = "string" },
        },
        lastModifiedTimestamp = {
            type = "timestamp",
        },
        attachedClusters = {
            type = "list",
            member = M.KxAttachedCluster,
        },
    },
}

return M
