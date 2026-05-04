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

M.AutoScalingMetric = {
    CPU_UTILIZATION_PERCENTAGE = "CPU_UTILIZATION_PERCENTAGE",
}

M.AutoScalingConfiguration = {
    type = "structure",
    id = "AutoScalingConfiguration",
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
    id = "FederationParameters",
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
    id = "SuperuserParameters",
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
    id = "CreateEnvironmentInput",
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
    id = "CreateEnvironmentOutput",
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
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
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

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
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
    id = "ChangeRequest",
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
    id = "CreateKxChangesetInput",
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
                idempotency_token = true,
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
    id = "ErrorInfo",
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
    id = "CreateKxChangesetOutput",
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
    id = "ResourceNotFoundException",
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
    id = "KxCacheStorageConfiguration",
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
    id = "CapacityConfiguration",
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
    id = "CodeConfiguration",
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
    id = "KxCommandLineArgument",
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
    id = "KxDatabaseCacheConfiguration",
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
    id = "KxDataviewSegmentConfiguration",
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
    id = "KxDataviewConfiguration",
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
    id = "KxDatabaseConfiguration",
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
    id = "KxSavedownStorageConfiguration",
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
    id = "KxScalingGroupConfiguration",
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
    id = "TickerplantLogConfiguration",
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
    id = "VpcConfiguration",
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
    id = "CreateKxClusterInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
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
    id = "Volume",
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
    id = "CreateKxClusterOutput",
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
    id = "CreateKxDatabaseInput",
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
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.CreateKxDatabaseOutput = {
    type = "structure",
    id = "CreateKxDatabaseOutput",
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
    id = "ResourceAlreadyExistsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateKxDataviewInput = {
    type = "structure",
    id = "CreateKxDataviewInput",
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
                idempotency_token = true,
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
    id = "CreateKxDataviewOutput",
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
    id = "CreateKxEnvironmentInput",
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
            traits = {
                idempotency_token = true,
            },
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
    id = "CreateKxEnvironmentOutput",
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
    id = "CreateKxScalingGroupInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
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
    id = "CreateKxScalingGroupOutput",
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
    id = "CreateKxUserInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateKxUserOutput = {
    type = "structure",
    id = "CreateKxUserOutput",
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
    id = "KxNAS1Configuration",
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
    id = "CreateKxVolumeInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
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
    id = "CreateKxVolumeOutput",
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
    id = "DeleteEnvironmentInput",
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
    id = "DeleteEnvironmentOutput",
}

M.DeleteKxClusterInput = {
    type = "structure",
    id = "DeleteKxClusterInput",
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
                idempotency_token = true,
            },
        },
    },
}

M.DeleteKxClusterOutput = {
    type = "structure",
    id = "DeleteKxClusterOutput",
}

M.DeleteKxClusterNodeInput = {
    type = "structure",
    id = "DeleteKxClusterNodeInput",
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
    id = "DeleteKxClusterNodeOutput",
}

M.DeleteKxDatabaseInput = {
    type = "structure",
    id = "DeleteKxDatabaseInput",
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
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.DeleteKxDatabaseOutput = {
    type = "structure",
    id = "DeleteKxDatabaseOutput",
}

M.DeleteKxDataviewInput = {
    type = "structure",
    id = "DeleteKxDataviewInput",
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
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.DeleteKxDataviewOutput = {
    type = "structure",
    id = "DeleteKxDataviewOutput",
}

M.DeleteKxEnvironmentInput = {
    type = "structure",
    id = "DeleteKxEnvironmentInput",
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
                idempotency_token = true,
            },
        },
    },
}

M.DeleteKxEnvironmentOutput = {
    type = "structure",
    id = "DeleteKxEnvironmentOutput",
}

M.DeleteKxScalingGroupInput = {
    type = "structure",
    id = "DeleteKxScalingGroupInput",
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
                idempotency_token = true,
            },
        },
    },
}

M.DeleteKxScalingGroupOutput = {
    type = "structure",
    id = "DeleteKxScalingGroupOutput",
}

M.DeleteKxUserInput = {
    type = "structure",
    id = "DeleteKxUserInput",
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
                idempotency_token = true,
            },
        },
    },
}

M.DeleteKxUserOutput = {
    type = "structure",
    id = "DeleteKxUserOutput",
}

M.DeleteKxVolumeInput = {
    type = "structure",
    id = "DeleteKxVolumeInput",
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
                idempotency_token = true,
            },
        },
    },
}

M.DeleteKxVolumeOutput = {
    type = "structure",
    id = "DeleteKxVolumeOutput",
}

M.GetEnvironmentInput = {
    type = "structure",
    id = "GetEnvironmentInput",
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
    id = "Environment",
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
    id = "GetEnvironmentOutput",
    members = {
        environment = M.Environment,
    },
}

M.GetKxChangesetInput = {
    type = "structure",
    id = "GetKxChangesetInput",
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
    id = "GetKxChangesetOutput",
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
    id = "GetKxClusterInput",
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
    id = "GetKxClusterOutput",
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
    id = "GetKxConnectionStringInput",
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
    id = "GetKxConnectionStringOutput",
    members = {
        signedConnectionString = {
            type = "string",
        },
    },
}

M.GetKxDatabaseInput = {
    type = "structure",
    id = "GetKxDatabaseInput",
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
    id = "GetKxDatabaseOutput",
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
    id = "GetKxDataviewInput",
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
    id = "KxDataviewActiveVersion",
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
    id = "GetKxDataviewOutput",
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
    id = "GetKxEnvironmentInput",
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
    id = "CustomDNSServer",
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
    id = "IcmpTypeCode",
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
    id = "PortRange",
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
    id = "NetworkACLEntry",
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
    id = "TransitGatewayConfiguration",
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
    id = "GetKxEnvironmentOutput",
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
    id = "GetKxScalingGroupInput",
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
    id = "GetKxScalingGroupOutput",
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
    id = "GetKxUserInput",
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
    id = "GetKxUserOutput",
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
    id = "GetKxVolumeInput",
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
    id = "KxAttachedCluster",
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
    id = "GetKxVolumeOutput",
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
    id = "ListEnvironmentsInput",
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
    id = "ListEnvironmentsOutput",
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
    id = "ListKxChangesetsInput",
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
    id = "KxChangesetListEntry",
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
    id = "ListKxChangesetsOutput",
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
    id = "ListKxClusterNodesInput",
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
    id = "KxNode",
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
    id = "ListKxClusterNodesOutput",
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
    id = "ListKxClustersInput",
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
    id = "KxCluster",
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
    id = "ListKxClustersOutput",
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
    id = "ListKxDatabasesInput",
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
    id = "KxDatabaseListEntry",
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
    id = "ListKxDatabasesOutput",
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
    id = "ListKxDataviewsInput",
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
    id = "KxDataviewListEntry",
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
    id = "ListKxDataviewsOutput",
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
    id = "ListKxEnvironmentsInput",
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
    id = "KxEnvironment",
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
    id = "ListKxEnvironmentsOutput",
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
    id = "ListKxScalingGroupsInput",
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
    id = "KxScalingGroup",
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
    id = "ListKxScalingGroupsOutput",
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
    id = "ListKxUsersInput",
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
    id = "KxUser",
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
    id = "ListKxUsersOutput",
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
    id = "ListKxVolumesInput",
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
    id = "KxVolume",
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
    id = "ListKxVolumesOutput",
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
    id = "InvalidRequestException",
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

M.UpdateEnvironmentInput = {
    type = "structure",
    id = "UpdateEnvironmentInput",
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
    id = "UpdateEnvironmentOutput",
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
    id = "KxClusterCodeDeploymentConfiguration",
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
    id = "UpdateKxClusterCodeConfigurationInput",
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
                idempotency_token = true,
            },
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
    id = "UpdateKxClusterCodeConfigurationOutput",
}

M.KxDeploymentStrategy = {
    NO_RESTART = "NO_RESTART",
    ROLLING = "ROLLING",
}

M.KxDeploymentConfiguration = {
    type = "structure",
    id = "KxDeploymentConfiguration",
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
    id = "UpdateKxClusterDatabasesInput",
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
                idempotency_token = true,
            },
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
    id = "UpdateKxClusterDatabasesOutput",
}

M.UpdateKxDatabaseInput = {
    type = "structure",
    id = "UpdateKxDatabaseInput",
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
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.UpdateKxDatabaseOutput = {
    type = "structure",
    id = "UpdateKxDatabaseOutput",
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
    id = "UpdateKxDataviewInput",
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
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.UpdateKxDataviewOutput = {
    type = "structure",
    id = "UpdateKxDataviewOutput",
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
    id = "UpdateKxEnvironmentInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateKxEnvironmentOutput = {
    type = "structure",
    id = "UpdateKxEnvironmentOutput",
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
    id = "UpdateKxEnvironmentNetworkInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateKxEnvironmentNetworkOutput = {
    type = "structure",
    id = "UpdateKxEnvironmentNetworkOutput",
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
    id = "UpdateKxUserInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateKxUserOutput = {
    type = "structure",
    id = "UpdateKxUserOutput",
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
    id = "UpdateKxVolumeInput",
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
            traits = {
                idempotency_token = true,
            },
        },
        nas1Configuration = M.KxNAS1Configuration,
    },
}

M.UpdateKxVolumeOutput = {
    type = "structure",
    id = "UpdateKxVolumeOutput",
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
