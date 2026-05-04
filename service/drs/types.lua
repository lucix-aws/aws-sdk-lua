local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        code = {
            type = "string",
        },
    },
}

M.Account = {
    type = "structure",
    id = "Account",
    members = {
        accountID = {
            type = "string",
        },
    },
}

M.AssociateSourceNetworkStackInput = {
    type = "structure",
    id = "AssociateSourceNetworkStackInput",
    members = {
        sourceNetworkID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cfnStackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InitiatedBy = {
    START_RECOVERY = "START_RECOVERY",
    START_DRILL = "START_DRILL",
    FAILBACK = "FAILBACK",
    DIAGNOSTIC = "DIAGNOSTIC",
    TERMINATE_RECOVERY_INSTANCES = "TERMINATE_RECOVERY_INSTANCES",
    TARGET_ACCOUNT = "TARGET_ACCOUNT",
    CREATE_NETWORK_RECOVERY = "CREATE_NETWORK_RECOVERY",
    UPDATE_NETWORK_RECOVERY = "UPDATE_NETWORK_RECOVERY",
    ASSOCIATE_NETWORK_RECOVERY = "ASSOCIATE_NETWORK_RECOVERY",
}

M.LaunchStatus = {
    PENDING = "PENDING",
    IN_PROGRESS = "IN_PROGRESS",
    LAUNCHED = "LAUNCHED",
    FAILED = "FAILED",
    TERMINATED = "TERMINATED",
}

M.ParticipatingResourceID = {
    type = "union",
    id = "ParticipatingResourceID",
    members = {
        sourceNetworkID = {
            type = "string",
        },
    },
}

M.ParticipatingResource = {
    type = "structure",
    id = "ParticipatingResource",
    members = {
        participatingResourceID = M.ParticipatingResourceID,
        launchStatus = {
            type = "string",
        },
    },
}

M.LaunchActionCategory = {
    MONITORING = "MONITORING",
    VALIDATION = "VALIDATION",
    CONFIGURATION = "CONFIGURATION",
    SECURITY = "SECURITY",
    OTHER = "OTHER",
}

M.LaunchActionParameterType = {
    SSM_STORE = "SSM_STORE",
    DYNAMIC = "DYNAMIC",
}

M.LaunchActionParameter = {
    type = "structure",
    id = "LaunchActionParameter",
    members = {
        value = {
            type = "string",
        },
        type = {
            type = "string",
        },
    },
}

M.LaunchActionType = {
    SSM_AUTOMATION = "SSM_AUTOMATION",
    SSM_COMMAND = "SSM_COMMAND",
}

M.LaunchAction = {
    type = "structure",
    id = "LaunchAction",
    members = {
        actionId = {
            type = "string",
        },
        actionCode = {
            type = "string",
        },
        type = {
            type = "string",
        },
        name = {
            type = "string",
        },
        active = {
            type = "boolean",
        },
        order = {
            type = "integer",
        },
        actionVersion = {
            type = "string",
        },
        optional = {
            type = "boolean",
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = M.LaunchActionParameter,
        },
        description = {
            type = "string",
        },
        category = {
            type = "string",
        },
    },
}

M.LaunchActionRunStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.LaunchActionRun = {
    type = "structure",
    id = "LaunchActionRun",
    members = {
        action = M.LaunchAction,
        runId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
    },
}

M.LaunchActionsStatus = {
    type = "structure",
    id = "LaunchActionsStatus",
    members = {
        ssmAgentDiscoveryDatetime = {
            type = "string",
        },
        runs = {
            type = "list",
            member = M.LaunchActionRun,
        },
    },
}

M.ParticipatingServer = {
    type = "structure",
    id = "ParticipatingServer",
    members = {
        sourceServerID = {
            type = "string",
        },
        recoveryInstanceID = {
            type = "string",
        },
        launchStatus = {
            type = "string",
        },
        launchActionsStatus = M.LaunchActionsStatus,
    },
}

M.JobStatus = {
    PENDING = "PENDING",
    STARTED = "STARTED",
    COMPLETED = "COMPLETED",
}

M.JobType = {
    LAUNCH = "LAUNCH",
    TERMINATE = "TERMINATE",
    CREATE_CONVERTED_SNAPSHOT = "CREATE_CONVERTED_SNAPSHOT",
}

M.Job = {
    type = "structure",
    id = "Job",
    members = {
        jobID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
        },
        type = {
            type = "string",
        },
        initiatedBy = {
            type = "string",
        },
        creationDateTime = {
            type = "string",
        },
        endDateTime = {
            type = "string",
        },
        status = {
            type = "string",
        },
        participatingServers = {
            type = "list",
            member = M.ParticipatingServer,
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        participatingResources = {
            type = "list",
            member = M.ParticipatingResource,
        },
    },
}

M.AssociateSourceNetworkStackOutput = {
    type = "structure",
    id = "AssociateSourceNetworkStackOutput",
    members = {
        job = M.Job,
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
        code = {
            type = "string",
        },
        resourceId = {
            type = "string",
        },
        resourceType = {
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
            traits = {
                required = true,
            },
        },
        retryAfterSeconds = {
            type = "long",
            traits = {
                default = 0,
                http_header = "Retry-After",
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
        },
        code = {
            type = "string",
        },
        resourceId = {
            type = "string",
        },
        resourceType = {
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
        code = {
            type = "string",
        },
        resourceId = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        serviceCode = {
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
        serviceCode = {
            type = "string",
        },
        quotaCode = {
            type = "string",
        },
        retryAfterSeconds = {
            type = "string",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.UninitializedAccountException = {
    type = "structure",
    id = "UninitializedAccountException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        code = {
            type = "string",
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    id = "ValidationExceptionField",
    members = {
        name = {
            type = "string",
        },
        message = {
            type = "string",
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
        },
        code = {
            type = "string",
        },
        reason = {
            type = "string",
        },
        fieldList = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.ProductCodeMode = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ProductCode = {
    type = "structure",
    id = "ProductCode",
    members = {
        productCodeId = {
            type = "string",
        },
        productCodeMode = {
            type = "string",
        },
    },
}

M.ConversionProperties = {
    type = "structure",
    id = "ConversionProperties",
    members = {
        volumeToConversionMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
        },
        rootVolumeName = {
            type = "string",
        },
        forceUefi = {
            type = "boolean",
        },
        dataTimestamp = {
            type = "string",
        },
        volumeToVolumeSize = {
            type = "map",
            key = { type = "string" },
            value = { type = "long" },
        },
        volumeToProductCodes = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.CPU = {
    type = "structure",
    id = "CPU",
    members = {
        cores = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        modelName = {
            type = "string",
        },
    },
}

M.CreateExtendedSourceServerInput = {
    type = "structure",
    id = "CreateExtendedSourceServerInput",
    members = {
        sourceServerArn = {
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

M.DataReplicationErrorString = {
    AGENT_NOT_SEEN = "AGENT_NOT_SEEN",
    SNAPSHOTS_FAILURE = "SNAPSHOTS_FAILURE",
    NOT_CONVERGING = "NOT_CONVERGING",
    UNSTABLE_NETWORK = "UNSTABLE_NETWORK",
    FAILED_TO_CREATE_SECURITY_GROUP = "FAILED_TO_CREATE_SECURITY_GROUP",
    FAILED_TO_LAUNCH_REPLICATION_SERVER = "FAILED_TO_LAUNCH_REPLICATION_SERVER",
    FAILED_TO_BOOT_REPLICATION_SERVER = "FAILED_TO_BOOT_REPLICATION_SERVER",
    FAILED_TO_AUTHENTICATE_WITH_SERVICE = "FAILED_TO_AUTHENTICATE_WITH_SERVICE",
    FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE = "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE",
    FAILED_TO_CREATE_STAGING_DISKS = "FAILED_TO_CREATE_STAGING_DISKS",
    FAILED_TO_ATTACH_STAGING_DISKS = "FAILED_TO_ATTACH_STAGING_DISKS",
    FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT = "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT",
    FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER = "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER",
    FAILED_TO_START_DATA_TRANSFER = "FAILED_TO_START_DATA_TRANSFER",
}

M.DataReplicationError = {
    type = "structure",
    id = "DataReplicationError",
    members = {
        error = {
            type = "string",
        },
        rawError = {
            type = "string",
        },
    },
}

M.DataReplicationInitiationStepName = {
    WAIT = "WAIT",
    CREATE_SECURITY_GROUP = "CREATE_SECURITY_GROUP",
    LAUNCH_REPLICATION_SERVER = "LAUNCH_REPLICATION_SERVER",
    BOOT_REPLICATION_SERVER = "BOOT_REPLICATION_SERVER",
    AUTHENTICATE_WITH_SERVICE = "AUTHENTICATE_WITH_SERVICE",
    DOWNLOAD_REPLICATION_SOFTWARE = "DOWNLOAD_REPLICATION_SOFTWARE",
    CREATE_STAGING_DISKS = "CREATE_STAGING_DISKS",
    ATTACH_STAGING_DISKS = "ATTACH_STAGING_DISKS",
    PAIR_REPLICATION_SERVER_WITH_AGENT = "PAIR_REPLICATION_SERVER_WITH_AGENT",
    CONNECT_AGENT_TO_REPLICATION_SERVER = "CONNECT_AGENT_TO_REPLICATION_SERVER",
    START_DATA_TRANSFER = "START_DATA_TRANSFER",
}

M.DataReplicationInitiationStepStatus = {
    NOT_STARTED = "NOT_STARTED",
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    SKIPPED = "SKIPPED",
}

M.DataReplicationInitiationStep = {
    type = "structure",
    id = "DataReplicationInitiationStep",
    members = {
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.DataReplicationInitiation = {
    type = "structure",
    id = "DataReplicationInitiation",
    members = {
        startDateTime = {
            type = "string",
        },
        nextAttemptDateTime = {
            type = "string",
        },
        steps = {
            type = "list",
            member = M.DataReplicationInitiationStep,
        },
    },
}

M.DataReplicationState = {
    STOPPED = "STOPPED",
    INITIATING = "INITIATING",
    INITIAL_SYNC = "INITIAL_SYNC",
    BACKLOG = "BACKLOG",
    CREATING_SNAPSHOT = "CREATING_SNAPSHOT",
    CONTINUOUS = "CONTINUOUS",
    PAUSED = "PAUSED",
    RESCAN = "RESCAN",
    STALLED = "STALLED",
    DISCONNECTED = "DISCONNECTED",
}

M.VolumeStatus = {
    REGULAR = "REGULAR",
    CONTAINS_MARKETPLACE_PRODUCT_CODES = "CONTAINS_MARKETPLACE_PRODUCT_CODES",
    MISSING_VOLUME_ATTRIBUTES = "MISSING_VOLUME_ATTRIBUTES",
    MISSING_VOLUME_ATTRIBUTES_AND_PRECHECK_UNAVAILABLE = "MISSING_VOLUME_ATTRIBUTES_AND_PRECHECK_UNAVAILABLE",
    PENDING = "PENDING",
}

M.DataReplicationInfoReplicatedDisk = {
    type = "structure",
    id = "DataReplicationInfoReplicatedDisk",
    members = {
        deviceName = {
            type = "string",
        },
        totalStorageBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        replicatedStorageBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        rescannedStorageBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        backloggedStorageBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        volumeStatus = {
            type = "string",
        },
    },
}

M.DataReplicationInfo = {
    type = "structure",
    id = "DataReplicationInfo",
    members = {
        lagDuration = {
            type = "string",
        },
        etaDateTime = {
            type = "string",
        },
        replicatedDisks = {
            type = "list",
            member = M.DataReplicationInfoReplicatedDisk,
        },
        dataReplicationState = {
            type = "string",
        },
        dataReplicationInitiation = M.DataReplicationInitiation,
        dataReplicationError = M.DataReplicationError,
        stagingAvailabilityZone = {
            type = "string",
        },
        stagingOutpostArn = {
            type = "string",
        },
    },
}

M.LastLaunchResult = {
    NOT_STARTED = "NOT_STARTED",
    PENDING = "PENDING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.LastLaunchType = {
    RECOVERY = "RECOVERY",
    DRILL = "DRILL",
}

M.LifeCycleLastLaunchInitiated = {
    type = "structure",
    id = "LifeCycleLastLaunchInitiated",
    members = {
        apiCallDateTime = {
            type = "string",
        },
        jobID = {
            type = "string",
        },
        type = {
            type = "string",
        },
    },
}

M.LifeCycleLastLaunch = {
    type = "structure",
    id = "LifeCycleLastLaunch",
    members = {
        initiated = M.LifeCycleLastLaunchInitiated,
        status = {
            type = "string",
        },
    },
}

M.LifeCycle = {
    type = "structure",
    id = "LifeCycle",
    members = {
        addedToServiceDateTime = {
            type = "string",
        },
        firstByteDateTime = {
            type = "string",
        },
        elapsedReplicationDuration = {
            type = "string",
        },
        lastSeenByServiceDateTime = {
            type = "string",
        },
        lastLaunch = M.LifeCycleLastLaunch,
    },
}

M.ReplicationDirection = {
    FAILOVER = "FAILOVER",
    FAILBACK = "FAILBACK",
}

M.SourceCloudProperties = {
    type = "structure",
    id = "SourceCloudProperties",
    members = {
        originAccountID = {
            type = "string",
        },
        originRegion = {
            type = "string",
        },
        originAvailabilityZone = {
            type = "string",
        },
        sourceOutpostArn = {
            type = "string",
        },
    },
}

M.Disk = {
    type = "structure",
    id = "Disk",
    members = {
        deviceName = {
            type = "string",
        },
        bytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.IdentificationHints = {
    type = "structure",
    id = "IdentificationHints",
    members = {
        fqdn = {
            type = "string",
        },
        hostname = {
            type = "string",
        },
        vmWareUuid = {
            type = "string",
        },
        awsInstanceID = {
            type = "string",
        },
    },
}

M.NetworkInterface = {
    type = "structure",
    id = "NetworkInterface",
    members = {
        macAddress = {
            type = "string",
        },
        ips = {
            type = "list",
            member = { type = "string" },
        },
        isPrimary = {
            type = "boolean",
        },
    },
}

M.OS = {
    type = "structure",
    id = "OS",
    members = {
        fullString = {
            type = "string",
        },
    },
}

M.SourceProperties = {
    type = "structure",
    id = "SourceProperties",
    members = {
        lastUpdatedDateTime = {
            type = "string",
        },
        recommendedInstanceType = {
            type = "string",
        },
        identificationHints = M.IdentificationHints,
        networkInterfaces = {
            type = "list",
            member = M.NetworkInterface,
        },
        disks = {
            type = "list",
            member = M.Disk,
        },
        cpus = {
            type = "list",
            member = M.CPU,
        },
        ramBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        os = M.OS,
        supportsNitroInstances = {
            type = "boolean",
        },
    },
}

M.ExtensionStatus = {
    EXTENDED = "EXTENDED",
    EXTENSION_ERROR = "EXTENSION_ERROR",
    NOT_EXTENDED = "NOT_EXTENDED",
}

M.StagingArea = {
    type = "structure",
    id = "StagingArea",
    members = {
        status = {
            type = "string",
        },
        stagingAccountID = {
            type = "string",
        },
        stagingSourceServerArn = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.SourceServer = {
    type = "structure",
    id = "SourceServer",
    members = {
        sourceServerID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        recoveryInstanceId = {
            type = "string",
        },
        lastLaunchResult = {
            type = "string",
        },
        dataReplicationInfo = M.DataReplicationInfo,
        lifeCycle = M.LifeCycle,
        sourceProperties = M.SourceProperties,
        stagingArea = M.StagingArea,
        sourceCloudProperties = M.SourceCloudProperties,
        replicationDirection = {
            type = "string",
        },
        reversedDirectionSourceServerArn = {
            type = "string",
        },
        sourceNetworkID = {
            type = "string",
        },
        agentVersion = {
            type = "string",
        },
    },
}

M.CreateExtendedSourceServerOutput = {
    type = "structure",
    id = "CreateExtendedSourceServerOutput",
    members = {
        sourceServer = M.SourceServer,
    },
}

M.LaunchDisposition = {
    STOPPED = "STOPPED",
    STARTED = "STARTED",
}

M.Licensing = {
    type = "structure",
    id = "Licensing",
    members = {
        osByol = {
            type = "boolean",
        },
    },
}

M.TargetInstanceTypeRightSizingMethod = {
    NONE = "NONE",
    BASIC = "BASIC",
    IN_AWS = "IN_AWS",
}

M.CreateLaunchConfigurationTemplateInput = {
    type = "structure",
    id = "CreateLaunchConfigurationTemplateInput",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        launchDisposition = {
            type = "string",
        },
        targetInstanceTypeRightSizingMethod = {
            type = "string",
        },
        copyPrivateIp = {
            type = "boolean",
        },
        copyTags = {
            type = "boolean",
        },
        licensing = M.Licensing,
        exportBucketArn = {
            type = "string",
        },
        postLaunchEnabled = {
            type = "boolean",
        },
        launchIntoSourceInstance = {
            type = "boolean",
        },
    },
}

M.LaunchConfigurationTemplate = {
    type = "structure",
    id = "LaunchConfigurationTemplate",
    members = {
        launchConfigurationTemplateID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        launchDisposition = {
            type = "string",
        },
        targetInstanceTypeRightSizingMethod = {
            type = "string",
        },
        copyPrivateIp = {
            type = "boolean",
        },
        copyTags = {
            type = "boolean",
        },
        licensing = M.Licensing,
        exportBucketArn = {
            type = "string",
        },
        postLaunchEnabled = {
            type = "boolean",
        },
        launchIntoSourceInstance = {
            type = "boolean",
        },
    },
}

M.CreateLaunchConfigurationTemplateOutput = {
    type = "structure",
    id = "CreateLaunchConfigurationTemplateOutput",
    members = {
        launchConfigurationTemplate = M.LaunchConfigurationTemplate,
    },
}

M.ReplicationConfigurationDataPlaneRouting = {
    PRIVATE_IP = "PRIVATE_IP",
    PUBLIC_IP = "PUBLIC_IP",
}

M.ReplicationConfigurationDefaultLargeStagingDiskType = {
    GP2 = "GP2",
    GP3 = "GP3",
    ST1 = "ST1",
    AUTO = "AUTO",
}

M.ReplicationConfigurationEbsEncryption = {
    DEFAULT = "DEFAULT",
    CUSTOM = "CUSTOM",
    NONE = "NONE",
}

M.InternetProtocol = {
    IPV4 = "IPV4",
    IPV6 = "IPV6",
}

M.PITPolicyRuleUnits = {
    MINUTE = "MINUTE",
    HOUR = "HOUR",
    DAY = "DAY",
}

M.PITPolicyRule = {
    type = "structure",
    id = "PITPolicyRule",
    members = {
        ruleID = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        units = {
            type = "string",
            traits = {
                required = true,
            },
        },
        interval = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        retentionDuration = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        enabled = {
            type = "boolean",
        },
    },
}

M.CreateReplicationConfigurationTemplateInput = {
    type = "structure",
    id = "CreateReplicationConfigurationTemplateInput",
    members = {
        stagingAreaSubnetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        associateDefaultSecurityGroup = {
            type = "boolean",
        },
        replicationServersSecurityGroupsIDs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        replicationServerInstanceType = {
            type = "string",
        },
        useDedicatedReplicationServer = {
            type = "boolean",
        },
        defaultLargeStagingDiskType = {
            type = "string",
        },
        ebsEncryption = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ebsEncryptionKeyArn = {
            type = "string",
        },
        bandwidthThrottling = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        dataPlaneRouting = {
            type = "string",
        },
        createPublicIP = {
            type = "boolean",
        },
        stagingAreaTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        pitPolicy = {
            type = "list",
            member = M.PITPolicyRule,
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        autoReplicateNewDisks = {
            type = "boolean",
        },
        internetProtocol = {
            type = "string",
        },
    },
}

M.CreateReplicationConfigurationTemplateOutput = {
    type = "structure",
    id = "CreateReplicationConfigurationTemplateOutput",
    members = {
        replicationConfigurationTemplateID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
        },
        stagingAreaSubnetId = {
            type = "string",
        },
        associateDefaultSecurityGroup = {
            type = "boolean",
        },
        replicationServersSecurityGroupsIDs = {
            type = "list",
            member = { type = "string" },
        },
        replicationServerInstanceType = {
            type = "string",
        },
        useDedicatedReplicationServer = {
            type = "boolean",
        },
        defaultLargeStagingDiskType = {
            type = "string",
        },
        ebsEncryption = {
            type = "string",
        },
        ebsEncryptionKeyArn = {
            type = "string",
        },
        bandwidthThrottling = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        dataPlaneRouting = {
            type = "string",
        },
        createPublicIP = {
            type = "boolean",
        },
        stagingAreaTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        pitPolicy = {
            type = "list",
            member = M.PITPolicyRule,
        },
        autoReplicateNewDisks = {
            type = "boolean",
        },
        internetProtocol = {
            type = "string",
        },
    },
}

M.CreateSourceNetworkInput = {
    type = "structure",
    id = "CreateSourceNetworkInput",
    members = {
        vpcID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        originAccountID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        originRegion = {
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

M.CreateSourceNetworkOutput = {
    type = "structure",
    id = "CreateSourceNetworkOutput",
    members = {
        sourceNetworkID = {
            type = "string",
        },
    },
}

M.DeleteJobInput = {
    type = "structure",
    id = "DeleteJobInput",
    members = {
        jobID = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteJobOutput = {
    type = "structure",
    id = "DeleteJobOutput",
}

M.DeleteLaunchActionInput = {
    type = "structure",
    id = "DeleteLaunchActionInput",
    members = {
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLaunchActionOutput = {
    type = "structure",
    id = "DeleteLaunchActionOutput",
}

M.DeleteLaunchConfigurationTemplateInput = {
    type = "structure",
    id = "DeleteLaunchConfigurationTemplateInput",
    members = {
        launchConfigurationTemplateID = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLaunchConfigurationTemplateOutput = {
    type = "structure",
    id = "DeleteLaunchConfigurationTemplateOutput",
}

M.DeleteRecoveryInstanceInput = {
    type = "structure",
    id = "DeleteRecoveryInstanceInput",
    members = {
        recoveryInstanceID = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRecoveryInstanceOutput = {
    type = "structure",
    id = "DeleteRecoveryInstanceOutput",
}

M.DeleteReplicationConfigurationTemplateInput = {
    type = "structure",
    id = "DeleteReplicationConfigurationTemplateInput",
    members = {
        replicationConfigurationTemplateID = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteReplicationConfigurationTemplateOutput = {
    type = "structure",
    id = "DeleteReplicationConfigurationTemplateOutput",
}

M.DeleteSourceNetworkInput = {
    type = "structure",
    id = "DeleteSourceNetworkInput",
    members = {
        sourceNetworkID = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSourceNetworkOutput = {
    type = "structure",
    id = "DeleteSourceNetworkOutput",
}

M.DeleteSourceServerInput = {
    type = "structure",
    id = "DeleteSourceServerInput",
    members = {
        sourceServerID = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSourceServerOutput = {
    type = "structure",
    id = "DeleteSourceServerOutput",
}

M.DescribeJobLogItemsInput = {
    type = "structure",
    id = "DescribeJobLogItemsInput",
    members = {
        jobID = {
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

M.JobLogEvent = {
    JOB_START = "JOB_START",
    SERVER_SKIPPED = "SERVER_SKIPPED",
    CLEANUP_START = "CLEANUP_START",
    CLEANUP_END = "CLEANUP_END",
    CLEANUP_FAIL = "CLEANUP_FAIL",
    SNAPSHOT_START = "SNAPSHOT_START",
    SNAPSHOT_END = "SNAPSHOT_END",
    SNAPSHOT_FAIL = "SNAPSHOT_FAIL",
    USING_PREVIOUS_SNAPSHOT = "USING_PREVIOUS_SNAPSHOT",
    USING_PREVIOUS_SNAPSHOT_FAILED = "USING_PREVIOUS_SNAPSHOT_FAILED",
    CONVERSION_START = "CONVERSION_START",
    CONVERSION_END = "CONVERSION_END",
    CONVERSION_FAIL = "CONVERSION_FAIL",
    LAUNCH_START = "LAUNCH_START",
    LAUNCH_FAILED = "LAUNCH_FAILED",
    JOB_CANCEL = "JOB_CANCEL",
    JOB_END = "JOB_END",
    DEPLOY_NETWORK_CONFIGURATION_START = "DEPLOY_NETWORK_CONFIGURATION_START",
    DEPLOY_NETWORK_CONFIGURATION_END = "DEPLOY_NETWORK_CONFIGURATION_END",
    DEPLOY_NETWORK_CONFIGURATION_FAILED = "DEPLOY_NETWORK_CONFIGURATION_FAILED",
    UPDATE_NETWORK_CONFIGURATION_START = "UPDATE_NETWORK_CONFIGURATION_START",
    UPDATE_NETWORK_CONFIGURATION_END = "UPDATE_NETWORK_CONFIGURATION_END",
    UPDATE_NETWORK_CONFIGURATION_FAILED = "UPDATE_NETWORK_CONFIGURATION_FAILED",
    UPDATE_LAUNCH_TEMPLATE_START = "UPDATE_LAUNCH_TEMPLATE_START",
    UPDATE_LAUNCH_TEMPLATE_END = "UPDATE_LAUNCH_TEMPLATE_END",
    UPDATE_LAUNCH_TEMPLATE_FAILED = "UPDATE_LAUNCH_TEMPLATE_FAILED",
    NETWORK_RECOVERY_FAIL = "NETWORK_RECOVERY_FAIL",
}

M.SourceNetworkData = {
    type = "structure",
    id = "SourceNetworkData",
    members = {
        sourceNetworkID = {
            type = "string",
        },
        sourceVpc = {
            type = "string",
        },
        targetVpc = {
            type = "string",
        },
        stackName = {
            type = "string",
        },
    },
}

M.EventResourceData = {
    type = "union",
    id = "EventResourceData",
    members = {
        sourceNetworkData = M.SourceNetworkData,
    },
}

M.JobLogEventData = {
    type = "structure",
    id = "JobLogEventData",
    members = {
        sourceServerID = {
            type = "string",
        },
        conversionServerID = {
            type = "string",
        },
        targetInstanceID = {
            type = "string",
        },
        rawError = {
            type = "string",
        },
        conversionProperties = M.ConversionProperties,
        eventResourceData = M.EventResourceData,
        attemptCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        maxAttemptsCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.JobLog = {
    type = "structure",
    id = "JobLog",
    members = {
        logDateTime = {
            type = "string",
        },
        event = {
            type = "string",
        },
        eventData = M.JobLogEventData,
    },
}

M.DescribeJobLogItemsOutput = {
    type = "structure",
    id = "DescribeJobLogItemsOutput",
    members = {
        items = {
            type = "list",
            member = M.JobLog,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeJobsRequestFilters = {
    type = "structure",
    id = "DescribeJobsRequestFilters",
    members = {
        jobIDs = {
            type = "list",
            member = { type = "string" },
        },
        fromDate = {
            type = "string",
        },
        toDate = {
            type = "string",
        },
    },
}

M.DescribeJobsInput = {
    type = "structure",
    id = "DescribeJobsInput",
    members = {
        filters = M.DescribeJobsRequestFilters,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeJobsOutput = {
    type = "structure",
    id = "DescribeJobsOutput",
    members = {
        items = {
            type = "list",
            member = M.Job,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeLaunchConfigurationTemplatesInput = {
    type = "structure",
    id = "DescribeLaunchConfigurationTemplatesInput",
    members = {
        launchConfigurationTemplateIDs = {
            type = "list",
            member = { type = "string" },
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeLaunchConfigurationTemplatesOutput = {
    type = "structure",
    id = "DescribeLaunchConfigurationTemplatesOutput",
    members = {
        items = {
            type = "list",
            member = M.LaunchConfigurationTemplate,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeRecoveryInstancesRequestFilters = {
    type = "structure",
    id = "DescribeRecoveryInstancesRequestFilters",
    members = {
        recoveryInstanceIDs = {
            type = "list",
            member = { type = "string" },
        },
        sourceServerIDs = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeRecoveryInstancesInput = {
    type = "structure",
    id = "DescribeRecoveryInstancesInput",
    members = {
        filters = M.DescribeRecoveryInstancesRequestFilters,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.FailbackReplicationError = {
    AGENT_NOT_SEEN = "AGENT_NOT_SEEN",
    FAILBACK_CLIENT_NOT_SEEN = "FAILBACK_CLIENT_NOT_SEEN",
    NOT_CONVERGING = "NOT_CONVERGING",
    UNSTABLE_NETWORK = "UNSTABLE_NETWORK",
    FAILED_TO_ESTABLISH_RECOVERY_INSTANCE_COMMUNICATION = "FAILED_TO_ESTABLISH_RECOVERY_INSTANCE_COMMUNICATION",
    FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE_TO_FAILBACK_CLIENT = "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE_TO_FAILBACK_CLIENT",
    FAILED_TO_CONFIGURE_REPLICATION_SOFTWARE = "FAILED_TO_CONFIGURE_REPLICATION_SOFTWARE",
    FAILED_TO_PAIR_AGENT_WITH_REPLICATION_SOFTWARE = "FAILED_TO_PAIR_AGENT_WITH_REPLICATION_SOFTWARE",
    FAILED_TO_ESTABLISH_AGENT_REPLICATOR_SOFTWARE_COMMUNICATION = "FAILED_TO_ESTABLISH_AGENT_REPLICATOR_SOFTWARE_COMMUNICATION",
    FAILED_GETTING_REPLICATION_STATE = "FAILED_GETTING_REPLICATION_STATE",
    SNAPSHOTS_FAILURE = "SNAPSHOTS_FAILURE",
    FAILED_TO_CREATE_SECURITY_GROUP = "FAILED_TO_CREATE_SECURITY_GROUP",
    FAILED_TO_LAUNCH_REPLICATION_SERVER = "FAILED_TO_LAUNCH_REPLICATION_SERVER",
    FAILED_TO_BOOT_REPLICATION_SERVER = "FAILED_TO_BOOT_REPLICATION_SERVER",
    FAILED_TO_AUTHENTICATE_WITH_SERVICE = "FAILED_TO_AUTHENTICATE_WITH_SERVICE",
    FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE = "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE",
    FAILED_TO_CREATE_STAGING_DISKS = "FAILED_TO_CREATE_STAGING_DISKS",
    FAILED_TO_ATTACH_STAGING_DISKS = "FAILED_TO_ATTACH_STAGING_DISKS",
    FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT = "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT",
    FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER = "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER",
    FAILED_TO_START_DATA_TRANSFER = "FAILED_TO_START_DATA_TRANSFER",
}

M.RecoveryInstanceDataReplicationError = {
    type = "structure",
    id = "RecoveryInstanceDataReplicationError",
    members = {
        error = {
            type = "string",
        },
        rawError = {
            type = "string",
        },
    },
}

M.RecoveryInstanceDataReplicationInitiationStepName = {
    LINK_FAILBACK_CLIENT_WITH_RECOVERY_INSTANCE = "LINK_FAILBACK_CLIENT_WITH_RECOVERY_INSTANCE",
    COMPLETE_VOLUME_MAPPING = "COMPLETE_VOLUME_MAPPING",
    ESTABLISH_RECOVERY_INSTANCE_COMMUNICATION = "ESTABLISH_RECOVERY_INSTANCE_COMMUNICATION",
    DOWNLOAD_REPLICATION_SOFTWARE_TO_FAILBACK_CLIENT = "DOWNLOAD_REPLICATION_SOFTWARE_TO_FAILBACK_CLIENT",
    CONFIGURE_REPLICATION_SOFTWARE = "CONFIGURE_REPLICATION_SOFTWARE",
    PAIR_AGENT_WITH_REPLICATION_SOFTWARE = "PAIR_AGENT_WITH_REPLICATION_SOFTWARE",
    ESTABLISH_AGENT_REPLICATOR_SOFTWARE_COMMUNICATION = "ESTABLISH_AGENT_REPLICATOR_SOFTWARE_COMMUNICATION",
    WAIT = "WAIT",
    CREATE_SECURITY_GROUP = "CREATE_SECURITY_GROUP",
    LAUNCH_REPLICATION_SERVER = "LAUNCH_REPLICATION_SERVER",
    BOOT_REPLICATION_SERVER = "BOOT_REPLICATION_SERVER",
    AUTHENTICATE_WITH_SERVICE = "AUTHENTICATE_WITH_SERVICE",
    DOWNLOAD_REPLICATION_SOFTWARE = "DOWNLOAD_REPLICATION_SOFTWARE",
    CREATE_STAGING_DISKS = "CREATE_STAGING_DISKS",
    ATTACH_STAGING_DISKS = "ATTACH_STAGING_DISKS",
    PAIR_REPLICATION_SERVER_WITH_AGENT = "PAIR_REPLICATION_SERVER_WITH_AGENT",
    CONNECT_AGENT_TO_REPLICATION_SERVER = "CONNECT_AGENT_TO_REPLICATION_SERVER",
    START_DATA_TRANSFER = "START_DATA_TRANSFER",
}

M.RecoveryInstanceDataReplicationInitiationStepStatus = {
    NOT_STARTED = "NOT_STARTED",
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    SKIPPED = "SKIPPED",
}

M.RecoveryInstanceDataReplicationInitiationStep = {
    type = "structure",
    id = "RecoveryInstanceDataReplicationInitiationStep",
    members = {
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.RecoveryInstanceDataReplicationInitiation = {
    type = "structure",
    id = "RecoveryInstanceDataReplicationInitiation",
    members = {
        startDateTime = {
            type = "string",
        },
        steps = {
            type = "list",
            member = M.RecoveryInstanceDataReplicationInitiationStep,
        },
    },
}

M.RecoveryInstanceDataReplicationState = {
    STOPPED = "STOPPED",
    INITIATING = "INITIATING",
    INITIAL_SYNC = "INITIAL_SYNC",
    BACKLOG = "BACKLOG",
    CREATING_SNAPSHOT = "CREATING_SNAPSHOT",
    CONTINUOUS = "CONTINUOUS",
    PAUSED = "PAUSED",
    RESCAN = "RESCAN",
    STALLED = "STALLED",
    DISCONNECTED = "DISCONNECTED",
    REPLICATION_STATE_NOT_AVAILABLE = "REPLICATION_STATE_NOT_AVAILABLE",
    NOT_STARTED = "NOT_STARTED",
}

M.RecoveryInstanceDataReplicationInfoReplicatedDisk = {
    type = "structure",
    id = "RecoveryInstanceDataReplicationInfoReplicatedDisk",
    members = {
        deviceName = {
            type = "string",
        },
        totalStorageBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        replicatedStorageBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        rescannedStorageBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        backloggedStorageBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.RecoveryInstanceDataReplicationInfo = {
    type = "structure",
    id = "RecoveryInstanceDataReplicationInfo",
    members = {
        lagDuration = {
            type = "string",
        },
        etaDateTime = {
            type = "string",
        },
        replicatedDisks = {
            type = "list",
            member = M.RecoveryInstanceDataReplicationInfoReplicatedDisk,
        },
        dataReplicationState = {
            type = "string",
        },
        dataReplicationInitiation = M.RecoveryInstanceDataReplicationInitiation,
        dataReplicationError = M.RecoveryInstanceDataReplicationError,
        stagingAvailabilityZone = {
            type = "string",
        },
        stagingOutpostArn = {
            type = "string",
        },
    },
}

M.EC2InstanceState = {
    PENDING = "PENDING",
    RUNNING = "RUNNING",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
    SHUTTING_DOWN = "SHUTTING-DOWN",
    TERMINATED = "TERMINATED",
    NOT_FOUND = "NOT_FOUND",
}

M.FailbackLaunchType = {
    RECOVERY = "RECOVERY",
    DRILL = "DRILL",
}

M.FailbackState = {
    FAILBACK_NOT_STARTED = "FAILBACK_NOT_STARTED",
    FAILBACK_IN_PROGRESS = "FAILBACK_IN_PROGRESS",
    FAILBACK_READY_FOR_LAUNCH = "FAILBACK_READY_FOR_LAUNCH",
    FAILBACK_COMPLETED = "FAILBACK_COMPLETED",
    FAILBACK_ERROR = "FAILBACK_ERROR",
    FAILBACK_NOT_READY_FOR_LAUNCH = "FAILBACK_NOT_READY_FOR_LAUNCH",
    FAILBACK_LAUNCH_STATE_NOT_AVAILABLE = "FAILBACK_LAUNCH_STATE_NOT_AVAILABLE",
}

M.RecoveryInstanceFailback = {
    type = "structure",
    id = "RecoveryInstanceFailback",
    members = {
        failbackClientID = {
            type = "string",
        },
        failbackJobID = {
            type = "string",
        },
        failbackInitiationTime = {
            type = "string",
        },
        state = {
            type = "string",
        },
        agentLastSeenByServiceDateTime = {
            type = "string",
        },
        failbackClientLastSeenByServiceDateTime = {
            type = "string",
        },
        failbackToOriginalServer = {
            type = "boolean",
        },
        firstByteDateTime = {
            type = "string",
        },
        elapsedReplicationDuration = {
            type = "string",
        },
        failbackLaunchType = {
            type = "string",
        },
    },
}

M.OriginEnvironment = {
    ON_PREMISES = "ON_PREMISES",
    AWS = "AWS",
}

M.RecoveryInstanceDisk = {
    type = "structure",
    id = "RecoveryInstanceDisk",
    members = {
        internalDeviceName = {
            type = "string",
        },
        bytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        ebsVolumeID = {
            type = "string",
        },
    },
}

M.RecoveryInstanceProperties = {
    type = "structure",
    id = "RecoveryInstanceProperties",
    members = {
        lastUpdatedDateTime = {
            type = "string",
        },
        identificationHints = M.IdentificationHints,
        networkInterfaces = {
            type = "list",
            member = M.NetworkInterface,
        },
        disks = {
            type = "list",
            member = M.RecoveryInstanceDisk,
        },
        cpus = {
            type = "list",
            member = M.CPU,
        },
        ramBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        os = M.OS,
    },
}

M.RecoveryInstance = {
    type = "structure",
    id = "RecoveryInstance",
    members = {
        ec2InstanceID = {
            type = "string",
        },
        ec2InstanceState = {
            type = "string",
        },
        jobID = {
            type = "string",
        },
        recoveryInstanceID = {
            type = "string",
        },
        sourceServerID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        failback = M.RecoveryInstanceFailback,
        dataReplicationInfo = M.RecoveryInstanceDataReplicationInfo,
        recoveryInstanceProperties = M.RecoveryInstanceProperties,
        pointInTimeSnapshotDateTime = {
            type = "string",
        },
        isDrill = {
            type = "boolean",
        },
        originEnvironment = {
            type = "string",
        },
        originAvailabilityZone = {
            type = "string",
        },
        agentVersion = {
            type = "string",
        },
        sourceOutpostArn = {
            type = "string",
        },
    },
}

M.DescribeRecoveryInstancesOutput = {
    type = "structure",
    id = "DescribeRecoveryInstancesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        items = {
            type = "list",
            member = M.RecoveryInstance,
        },
    },
}

M.DescribeRecoverySnapshotsRequestFilters = {
    type = "structure",
    id = "DescribeRecoverySnapshotsRequestFilters",
    members = {
        fromDateTime = {
            type = "string",
        },
        toDateTime = {
            type = "string",
        },
    },
}

M.RecoverySnapshotsOrder = {
    ASC = "ASC",
    DESC = "DESC",
}

M.DescribeRecoverySnapshotsInput = {
    type = "structure",
    id = "DescribeRecoverySnapshotsInput",
    members = {
        sourceServerID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filters = M.DescribeRecoverySnapshotsRequestFilters,
        order = {
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

M.RecoverySnapshot = {
    type = "structure",
    id = "RecoverySnapshot",
    members = {
        snapshotID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceServerID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expectedTimestamp = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timestamp = {
            type = "string",
        },
        ebsSnapshots = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeRecoverySnapshotsOutput = {
    type = "structure",
    id = "DescribeRecoverySnapshotsOutput",
    members = {
        items = {
            type = "list",
            member = M.RecoverySnapshot,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeReplicationConfigurationTemplatesInput = {
    type = "structure",
    id = "DescribeReplicationConfigurationTemplatesInput",
    members = {
        replicationConfigurationTemplateIDs = {
            type = "list",
            member = { type = "string" },
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ReplicationConfigurationTemplate = {
    type = "structure",
    id = "ReplicationConfigurationTemplate",
    members = {
        replicationConfigurationTemplateID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
        },
        stagingAreaSubnetId = {
            type = "string",
        },
        associateDefaultSecurityGroup = {
            type = "boolean",
        },
        replicationServersSecurityGroupsIDs = {
            type = "list",
            member = { type = "string" },
        },
        replicationServerInstanceType = {
            type = "string",
        },
        useDedicatedReplicationServer = {
            type = "boolean",
        },
        defaultLargeStagingDiskType = {
            type = "string",
        },
        ebsEncryption = {
            type = "string",
        },
        ebsEncryptionKeyArn = {
            type = "string",
        },
        bandwidthThrottling = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        dataPlaneRouting = {
            type = "string",
        },
        createPublicIP = {
            type = "boolean",
        },
        stagingAreaTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        pitPolicy = {
            type = "list",
            member = M.PITPolicyRule,
        },
        autoReplicateNewDisks = {
            type = "boolean",
        },
        internetProtocol = {
            type = "string",
        },
    },
}

M.DescribeReplicationConfigurationTemplatesOutput = {
    type = "structure",
    id = "DescribeReplicationConfigurationTemplatesOutput",
    members = {
        items = {
            type = "list",
            member = M.ReplicationConfigurationTemplate,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeSourceNetworksRequestFilters = {
    type = "structure",
    id = "DescribeSourceNetworksRequestFilters",
    members = {
        sourceNetworkIDs = {
            type = "list",
            member = { type = "string" },
        },
        originAccountID = {
            type = "string",
        },
        originRegion = {
            type = "string",
        },
    },
}

M.DescribeSourceNetworksInput = {
    type = "structure",
    id = "DescribeSourceNetworksInput",
    members = {
        filters = M.DescribeSourceNetworksRequestFilters,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RecoveryResult = {
    NOT_STARTED = "NOT_STARTED",
    IN_PROGRESS = "IN_PROGRESS",
    SUCCESS = "SUCCESS",
    FAIL = "FAIL",
    PARTIAL_SUCCESS = "PARTIAL_SUCCESS",
    ASSOCIATE_SUCCESS = "ASSOCIATE_SUCCESS",
    ASSOCIATE_FAIL = "ASSOCIATE_FAIL",
}

M.RecoveryLifeCycle = {
    type = "structure",
    id = "RecoveryLifeCycle",
    members = {
        apiCallDateTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        jobID = {
            type = "string",
        },
        lastRecoveryResult = {
            type = "string",
        },
    },
}

M.ReplicationStatus = {
    STOPPED = "STOPPED",
    IN_PROGRESS = "IN_PROGRESS",
    PROTECTED = "PROTECTED",
    ERROR = "ERROR",
}

M.SourceNetwork = {
    type = "structure",
    id = "SourceNetwork",
    members = {
        sourceNetworkID = {
            type = "string",
        },
        sourceVpcID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        replicationStatus = {
            type = "string",
        },
        replicationStatusDetails = {
            type = "string",
        },
        cfnStackName = {
            type = "string",
        },
        sourceRegion = {
            type = "string",
        },
        sourceAccountID = {
            type = "string",
        },
        lastRecovery = M.RecoveryLifeCycle,
        launchedVpcID = {
            type = "string",
        },
    },
}

M.DescribeSourceNetworksOutput = {
    type = "structure",
    id = "DescribeSourceNetworksOutput",
    members = {
        items = {
            type = "list",
            member = M.SourceNetwork,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeSourceServersRequestFilters = {
    type = "structure",
    id = "DescribeSourceServersRequestFilters",
    members = {
        sourceServerIDs = {
            type = "list",
            member = { type = "string" },
        },
        hardwareId = {
            type = "string",
        },
        stagingAccountIDs = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeSourceServersInput = {
    type = "structure",
    id = "DescribeSourceServersInput",
    members = {
        filters = M.DescribeSourceServersRequestFilters,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeSourceServersOutput = {
    type = "structure",
    id = "DescribeSourceServersOutput",
    members = {
        items = {
            type = "list",
            member = M.SourceServer,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DisconnectRecoveryInstanceInput = {
    type = "structure",
    id = "DisconnectRecoveryInstanceInput",
    members = {
        recoveryInstanceID = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisconnectRecoveryInstanceOutput = {
    type = "structure",
    id = "DisconnectRecoveryInstanceOutput",
}

M.DisconnectSourceServerInput = {
    type = "structure",
    id = "DisconnectSourceServerInput",
    members = {
        sourceServerID = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisconnectSourceServerOutput = {
    type = "structure",
    id = "DisconnectSourceServerOutput",
    members = {
        sourceServerID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        recoveryInstanceId = {
            type = "string",
        },
        lastLaunchResult = {
            type = "string",
        },
        dataReplicationInfo = M.DataReplicationInfo,
        lifeCycle = M.LifeCycle,
        sourceProperties = M.SourceProperties,
        stagingArea = M.StagingArea,
        sourceCloudProperties = M.SourceCloudProperties,
        replicationDirection = {
            type = "string",
        },
        reversedDirectionSourceServerArn = {
            type = "string",
        },
        sourceNetworkID = {
            type = "string",
        },
        agentVersion = {
            type = "string",
        },
    },
}

M.InitializeServiceInput = {
    type = "structure",
    id = "InitializeServiceInput",
}

M.InitializeServiceOutput = {
    type = "structure",
    id = "InitializeServiceOutput",
}

M.UpdateLaunchConfigurationTemplateInput = {
    type = "structure",
    id = "UpdateLaunchConfigurationTemplateInput",
    members = {
        launchConfigurationTemplateID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        launchDisposition = {
            type = "string",
        },
        targetInstanceTypeRightSizingMethod = {
            type = "string",
        },
        copyPrivateIp = {
            type = "boolean",
        },
        copyTags = {
            type = "boolean",
        },
        licensing = M.Licensing,
        exportBucketArn = {
            type = "string",
        },
        postLaunchEnabled = {
            type = "boolean",
        },
        launchIntoSourceInstance = {
            type = "boolean",
        },
    },
}

M.UpdateLaunchConfigurationTemplateOutput = {
    type = "structure",
    id = "UpdateLaunchConfigurationTemplateOutput",
    members = {
        launchConfigurationTemplate = M.LaunchConfigurationTemplate,
    },
}

M.ListExtensibleSourceServersInput = {
    type = "structure",
    id = "ListExtensibleSourceServersInput",
    members = {
        stagingAccountID = {
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

M.StagingSourceServer = {
    type = "structure",
    id = "StagingSourceServer",
    members = {
        hostname = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListExtensibleSourceServersOutput = {
    type = "structure",
    id = "ListExtensibleSourceServersOutput",
    members = {
        items = {
            type = "list",
            member = M.StagingSourceServer,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.LaunchActionsRequestFilters = {
    type = "structure",
    id = "LaunchActionsRequestFilters",
    members = {
        actionIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListLaunchActionsInput = {
    type = "structure",
    id = "ListLaunchActionsInput",
    members = {
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filters = M.LaunchActionsRequestFilters,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListLaunchActionsOutput = {
    type = "structure",
    id = "ListLaunchActionsOutput",
    members = {
        items = {
            type = "list",
            member = M.LaunchAction,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListStagingAccountsInput = {
    type = "structure",
    id = "ListStagingAccountsInput",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                default = nil,
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

M.ListStagingAccountsOutput = {
    type = "structure",
    id = "ListStagingAccountsOutput",
    members = {
        accounts = {
            type = "list",
            member = M.Account,
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

M.PutLaunchActionInput = {
    type = "structure",
    id = "PutLaunchActionInput",
    members = {
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actionCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        order = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        actionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        optional = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        active = {
            type = "boolean",
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
        actionVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        category = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = M.LaunchActionParameter,
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutLaunchActionOutput = {
    type = "structure",
    id = "PutLaunchActionOutput",
    members = {
        resourceId = {
            type = "string",
        },
        actionId = {
            type = "string",
        },
        actionCode = {
            type = "string",
        },
        type = {
            type = "string",
        },
        name = {
            type = "string",
        },
        active = {
            type = "boolean",
        },
        order = {
            type = "integer",
        },
        actionVersion = {
            type = "string",
        },
        optional = {
            type = "boolean",
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = M.LaunchActionParameter,
        },
        description = {
            type = "string",
        },
        category = {
            type = "string",
        },
    },
}

M.GetFailbackReplicationConfigurationInput = {
    type = "structure",
    id = "GetFailbackReplicationConfigurationInput",
    members = {
        recoveryInstanceID = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetFailbackReplicationConfigurationOutput = {
    type = "structure",
    id = "GetFailbackReplicationConfigurationOutput",
    members = {
        recoveryInstanceID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        bandwidthThrottling = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        usePrivateIP = {
            type = "boolean",
        },
        internetProtocol = {
            type = "string",
        },
    },
}

M.ReverseReplicationInput = {
    type = "structure",
    id = "ReverseReplicationInput",
    members = {
        recoveryInstanceID = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReverseReplicationOutput = {
    type = "structure",
    id = "ReverseReplicationOutput",
    members = {
        reversedDirectionSourceServerArn = {
            type = "string",
        },
    },
}

M.StartFailbackLaunchInput = {
    type = "structure",
    id = "StartFailbackLaunchInput",
    members = {
        recoveryInstanceIDs = {
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

M.StartFailbackLaunchOutput = {
    type = "structure",
    id = "StartFailbackLaunchOutput",
    members = {
        job = M.Job,
    },
}

M.StopFailbackInput = {
    type = "structure",
    id = "StopFailbackInput",
    members = {
        recoveryInstanceID = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopFailbackOutput = {
    type = "structure",
    id = "StopFailbackOutput",
}

M.TerminateRecoveryInstancesInput = {
    type = "structure",
    id = "TerminateRecoveryInstancesInput",
    members = {
        recoveryInstanceIDs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TerminateRecoveryInstancesOutput = {
    type = "structure",
    id = "TerminateRecoveryInstancesOutput",
    members = {
        job = M.Job,
    },
}

M.UpdateFailbackReplicationConfigurationInput = {
    type = "structure",
    id = "UpdateFailbackReplicationConfigurationInput",
    members = {
        recoveryInstanceID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        bandwidthThrottling = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        usePrivateIP = {
            type = "boolean",
        },
        internetProtocol = {
            type = "string",
        },
    },
}

M.UpdateFailbackReplicationConfigurationOutput = {
    type = "structure",
    id = "UpdateFailbackReplicationConfigurationOutput",
}

M.UpdateReplicationConfigurationTemplateInput = {
    type = "structure",
    id = "UpdateReplicationConfigurationTemplateInput",
    members = {
        replicationConfigurationTemplateID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
        },
        stagingAreaSubnetId = {
            type = "string",
        },
        associateDefaultSecurityGroup = {
            type = "boolean",
        },
        replicationServersSecurityGroupsIDs = {
            type = "list",
            member = { type = "string" },
        },
        replicationServerInstanceType = {
            type = "string",
        },
        useDedicatedReplicationServer = {
            type = "boolean",
        },
        defaultLargeStagingDiskType = {
            type = "string",
        },
        ebsEncryption = {
            type = "string",
        },
        ebsEncryptionKeyArn = {
            type = "string",
        },
        bandwidthThrottling = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        dataPlaneRouting = {
            type = "string",
        },
        createPublicIP = {
            type = "boolean",
        },
        stagingAreaTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        pitPolicy = {
            type = "list",
            member = M.PITPolicyRule,
        },
        autoReplicateNewDisks = {
            type = "boolean",
        },
        internetProtocol = {
            type = "string",
        },
    },
}

M.UpdateReplicationConfigurationTemplateOutput = {
    type = "structure",
    id = "UpdateReplicationConfigurationTemplateOutput",
    members = {
        replicationConfigurationTemplateID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
        },
        stagingAreaSubnetId = {
            type = "string",
        },
        associateDefaultSecurityGroup = {
            type = "boolean",
        },
        replicationServersSecurityGroupsIDs = {
            type = "list",
            member = { type = "string" },
        },
        replicationServerInstanceType = {
            type = "string",
        },
        useDedicatedReplicationServer = {
            type = "boolean",
        },
        defaultLargeStagingDiskType = {
            type = "string",
        },
        ebsEncryption = {
            type = "string",
        },
        ebsEncryptionKeyArn = {
            type = "string",
        },
        bandwidthThrottling = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        dataPlaneRouting = {
            type = "string",
        },
        createPublicIP = {
            type = "boolean",
        },
        stagingAreaTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        pitPolicy = {
            type = "list",
            member = M.PITPolicyRule,
        },
        autoReplicateNewDisks = {
            type = "boolean",
        },
        internetProtocol = {
            type = "string",
        },
    },
}

M.ExportSourceNetworkCfnTemplateInput = {
    type = "structure",
    id = "ExportSourceNetworkCfnTemplateInput",
    members = {
        sourceNetworkID = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExportSourceNetworkCfnTemplateOutput = {
    type = "structure",
    id = "ExportSourceNetworkCfnTemplateOutput",
    members = {
        s3DestinationUrl = {
            type = "string",
        },
    },
}

M.StartSourceNetworkRecoveryRequestNetworkEntry = {
    type = "structure",
    id = "StartSourceNetworkRecoveryRequestNetworkEntry",
    members = {
        sourceNetworkID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cfnStackName = {
            type = "string",
        },
    },
}

M.StartSourceNetworkRecoveryInput = {
    type = "structure",
    id = "StartSourceNetworkRecoveryInput",
    members = {
        sourceNetworks = {
            type = "list",
            member = M.StartSourceNetworkRecoveryRequestNetworkEntry,
            traits = {
                required = true,
            },
        },
        deployAsNew = {
            type = "boolean",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartSourceNetworkRecoveryOutput = {
    type = "structure",
    id = "StartSourceNetworkRecoveryOutput",
    members = {
        job = M.Job,
    },
}

M.StartSourceNetworkReplicationInput = {
    type = "structure",
    id = "StartSourceNetworkReplicationInput",
    members = {
        sourceNetworkID = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartSourceNetworkReplicationOutput = {
    type = "structure",
    id = "StartSourceNetworkReplicationOutput",
    members = {
        sourceNetwork = M.SourceNetwork,
    },
}

M.StopSourceNetworkReplicationInput = {
    type = "structure",
    id = "StopSourceNetworkReplicationInput",
    members = {
        sourceNetworkID = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopSourceNetworkReplicationOutput = {
    type = "structure",
    id = "StopSourceNetworkReplicationOutput",
    members = {
        sourceNetwork = M.SourceNetwork,
    },
}

M.GetLaunchConfigurationInput = {
    type = "structure",
    id = "GetLaunchConfigurationInput",
    members = {
        sourceServerID = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LaunchIntoInstanceProperties = {
    type = "structure",
    id = "LaunchIntoInstanceProperties",
    members = {
        launchIntoEC2InstanceID = {
            type = "string",
        },
    },
}

M.GetLaunchConfigurationOutput = {
    type = "structure",
    id = "GetLaunchConfigurationOutput",
    members = {
        sourceServerID = {
            type = "string",
        },
        name = {
            type = "string",
        },
        ec2LaunchTemplateID = {
            type = "string",
        },
        launchDisposition = {
            type = "string",
        },
        targetInstanceTypeRightSizingMethod = {
            type = "string",
        },
        copyPrivateIp = {
            type = "boolean",
        },
        copyTags = {
            type = "boolean",
        },
        licensing = M.Licensing,
        postLaunchEnabled = {
            type = "boolean",
        },
        launchIntoInstanceProperties = M.LaunchIntoInstanceProperties,
    },
}

M.GetReplicationConfigurationInput = {
    type = "structure",
    id = "GetReplicationConfigurationInput",
    members = {
        sourceServerID = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReplicationConfigurationReplicatedDiskStagingDiskType = {
    AUTO = "AUTO",
    GP2 = "GP2",
    GP3 = "GP3",
    IO1 = "IO1",
    SC1 = "SC1",
    ST1 = "ST1",
    STANDARD = "STANDARD",
}

M.ReplicationConfigurationReplicatedDisk = {
    type = "structure",
    id = "ReplicationConfigurationReplicatedDisk",
    members = {
        deviceName = {
            type = "string",
        },
        isBootDisk = {
            type = "boolean",
        },
        stagingDiskType = {
            type = "string",
        },
        iops = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        throughput = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        optimizedStagingDiskType = {
            type = "string",
        },
    },
}

M.GetReplicationConfigurationOutput = {
    type = "structure",
    id = "GetReplicationConfigurationOutput",
    members = {
        sourceServerID = {
            type = "string",
        },
        name = {
            type = "string",
        },
        stagingAreaSubnetId = {
            type = "string",
        },
        associateDefaultSecurityGroup = {
            type = "boolean",
        },
        replicationServersSecurityGroupsIDs = {
            type = "list",
            member = { type = "string" },
        },
        replicationServerInstanceType = {
            type = "string",
        },
        useDedicatedReplicationServer = {
            type = "boolean",
        },
        defaultLargeStagingDiskType = {
            type = "string",
        },
        replicatedDisks = {
            type = "list",
            member = M.ReplicationConfigurationReplicatedDisk,
        },
        ebsEncryption = {
            type = "string",
        },
        ebsEncryptionKeyArn = {
            type = "string",
        },
        bandwidthThrottling = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        dataPlaneRouting = {
            type = "string",
        },
        createPublicIP = {
            type = "boolean",
        },
        stagingAreaTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        pitPolicy = {
            type = "list",
            member = M.PITPolicyRule,
        },
        autoReplicateNewDisks = {
            type = "boolean",
        },
        internetProtocol = {
            type = "string",
        },
    },
}

M.RetryDataReplicationInput = {
    type = "structure",
    id = "RetryDataReplicationInput",
    members = {
        sourceServerID = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RetryDataReplicationOutput = {
    type = "structure",
    id = "RetryDataReplicationOutput",
    members = {
        sourceServerID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        recoveryInstanceId = {
            type = "string",
        },
        lastLaunchResult = {
            type = "string",
        },
        dataReplicationInfo = M.DataReplicationInfo,
        lifeCycle = M.LifeCycle,
        sourceProperties = M.SourceProperties,
        stagingArea = M.StagingArea,
        sourceCloudProperties = M.SourceCloudProperties,
        replicationDirection = {
            type = "string",
        },
        reversedDirectionSourceServerArn = {
            type = "string",
        },
        sourceNetworkID = {
            type = "string",
        },
        agentVersion = {
            type = "string",
        },
    },
}

M.StartRecoveryRequestSourceServer = {
    type = "structure",
    id = "StartRecoveryRequestSourceServer",
    members = {
        sourceServerID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recoverySnapshotID = {
            type = "string",
        },
    },
}

M.StartRecoveryInput = {
    type = "structure",
    id = "StartRecoveryInput",
    members = {
        sourceServers = {
            type = "list",
            member = M.StartRecoveryRequestSourceServer,
            traits = {
                required = true,
            },
        },
        isDrill = {
            type = "boolean",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartRecoveryOutput = {
    type = "structure",
    id = "StartRecoveryOutput",
    members = {
        job = M.Job,
    },
}

M.StartReplicationInput = {
    type = "structure",
    id = "StartReplicationInput",
    members = {
        sourceServerID = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartReplicationOutput = {
    type = "structure",
    id = "StartReplicationOutput",
    members = {
        sourceServer = M.SourceServer,
    },
}

M.StopReplicationInput = {
    type = "structure",
    id = "StopReplicationInput",
    members = {
        sourceServerID = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopReplicationOutput = {
    type = "structure",
    id = "StopReplicationOutput",
    members = {
        sourceServer = M.SourceServer,
    },
}

M.UpdateLaunchConfigurationInput = {
    type = "structure",
    id = "UpdateLaunchConfigurationInput",
    members = {
        sourceServerID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        launchDisposition = {
            type = "string",
        },
        targetInstanceTypeRightSizingMethod = {
            type = "string",
        },
        copyPrivateIp = {
            type = "boolean",
        },
        copyTags = {
            type = "boolean",
        },
        licensing = M.Licensing,
        postLaunchEnabled = {
            type = "boolean",
        },
        launchIntoInstanceProperties = M.LaunchIntoInstanceProperties,
    },
}

M.UpdateLaunchConfigurationOutput = {
    type = "structure",
    id = "UpdateLaunchConfigurationOutput",
    members = {
        sourceServerID = {
            type = "string",
        },
        name = {
            type = "string",
        },
        ec2LaunchTemplateID = {
            type = "string",
        },
        launchDisposition = {
            type = "string",
        },
        targetInstanceTypeRightSizingMethod = {
            type = "string",
        },
        copyPrivateIp = {
            type = "boolean",
        },
        copyTags = {
            type = "boolean",
        },
        licensing = M.Licensing,
        postLaunchEnabled = {
            type = "boolean",
        },
        launchIntoInstanceProperties = M.LaunchIntoInstanceProperties,
    },
}

M.UpdateReplicationConfigurationInput = {
    type = "structure",
    id = "UpdateReplicationConfigurationInput",
    members = {
        sourceServerID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        stagingAreaSubnetId = {
            type = "string",
        },
        associateDefaultSecurityGroup = {
            type = "boolean",
        },
        replicationServersSecurityGroupsIDs = {
            type = "list",
            member = { type = "string" },
        },
        replicationServerInstanceType = {
            type = "string",
        },
        useDedicatedReplicationServer = {
            type = "boolean",
        },
        defaultLargeStagingDiskType = {
            type = "string",
        },
        replicatedDisks = {
            type = "list",
            member = M.ReplicationConfigurationReplicatedDisk,
        },
        ebsEncryption = {
            type = "string",
        },
        ebsEncryptionKeyArn = {
            type = "string",
        },
        bandwidthThrottling = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        dataPlaneRouting = {
            type = "string",
        },
        createPublicIP = {
            type = "boolean",
        },
        stagingAreaTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        pitPolicy = {
            type = "list",
            member = M.PITPolicyRule,
        },
        autoReplicateNewDisks = {
            type = "boolean",
        },
        internetProtocol = {
            type = "string",
        },
    },
}

M.UpdateReplicationConfigurationOutput = {
    type = "structure",
    id = "UpdateReplicationConfigurationOutput",
    members = {
        sourceServerID = {
            type = "string",
        },
        name = {
            type = "string",
        },
        stagingAreaSubnetId = {
            type = "string",
        },
        associateDefaultSecurityGroup = {
            type = "boolean",
        },
        replicationServersSecurityGroupsIDs = {
            type = "list",
            member = { type = "string" },
        },
        replicationServerInstanceType = {
            type = "string",
        },
        useDedicatedReplicationServer = {
            type = "boolean",
        },
        defaultLargeStagingDiskType = {
            type = "string",
        },
        replicatedDisks = {
            type = "list",
            member = M.ReplicationConfigurationReplicatedDisk,
        },
        ebsEncryption = {
            type = "string",
        },
        ebsEncryptionKeyArn = {
            type = "string",
        },
        bandwidthThrottling = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        dataPlaneRouting = {
            type = "string",
        },
        createPublicIP = {
            type = "boolean",
        },
        stagingAreaTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        pitPolicy = {
            type = "list",
            member = M.PITPolicyRule,
        },
        autoReplicateNewDisks = {
            type = "boolean",
        },
        internetProtocol = {
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

return M
