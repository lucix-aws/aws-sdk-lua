local M = {}

M.AccessDeniedException = {
    type = "structure",
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
    members = {
        accountID = {
            type = "string",
        },
    },
}

M.AssociateSourceNetworkStackInput = {
    type = "structure",
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
    members = {
        sourceNetworkID = {
            type = "string",
        },
    },
}

M.ParticipatingResource = {
    type = "structure",
    members = {
        participatingResourceID = {
            type = "union",
        },
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
            type = "number",
        },
        actionVersion = {
            type = "string",
        },
        optional = {
            type = "boolean",
        },
        parameters = {
            type = "map",
            key_type = "string",
            value_type = "structure",
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
    members = {
        action = {
            type = "structure",
        },
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
    members = {
        ssmAgentDiscoveryDatetime = {
            type = "string",
        },
        runs = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ParticipatingServer = {
    type = "structure",
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
        launchActionsStatus = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        participatingResources = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AssociateSourceNetworkStackOutput = {
    type = "structure",
    members = {
        job = {
            type = "structure",
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

M.ResourceNotFoundException = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.ProductCodeMode = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ProductCode = {
    type = "structure",
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
    members = {
        volumeToConversionMap = {
            type = "map",
            key_type = "string",
            value_type = "map",
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
            key_type = "string",
            value_type = "number",
        },
        volumeToProductCodes = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
    },
}

M.CPU = {
    type = "structure",
    members = {
        cores = {
            type = "number",
        },
        modelName = {
            type = "string",
        },
    },
}

M.CreateExtendedSourceServerInput = {
    type = "structure",
    members = {
        sourceServerArn = {
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
    members = {
        startDateTime = {
            type = "string",
        },
        nextAttemptDateTime = {
            type = "string",
        },
        steps = {
            type = "list",
            member_type = "structure",
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
    members = {
        deviceName = {
            type = "string",
        },
        totalStorageBytes = {
            type = "number",
        },
        replicatedStorageBytes = {
            type = "number",
        },
        rescannedStorageBytes = {
            type = "number",
        },
        backloggedStorageBytes = {
            type = "number",
        },
        volumeStatus = {
            type = "string",
        },
    },
}

M.DataReplicationInfo = {
    type = "structure",
    members = {
        lagDuration = {
            type = "string",
        },
        etaDateTime = {
            type = "string",
        },
        replicatedDisks = {
            type = "list",
            member_type = "structure",
        },
        dataReplicationState = {
            type = "string",
        },
        dataReplicationInitiation = {
            type = "structure",
        },
        dataReplicationError = {
            type = "structure",
        },
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
    members = {
        initiated = {
            type = "structure",
        },
        status = {
            type = "string",
        },
    },
}

M.LifeCycle = {
    type = "structure",
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
        lastLaunch = {
            type = "structure",
        },
    },
}

M.ReplicationDirection = {
    FAILOVER = "FAILOVER",
    FAILBACK = "FAILBACK",
}

M.SourceCloudProperties = {
    type = "structure",
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
    members = {
        deviceName = {
            type = "string",
        },
        bytes = {
            type = "number",
        },
    },
}

M.IdentificationHints = {
    type = "structure",
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
    members = {
        macAddress = {
            type = "string",
        },
        ips = {
            type = "list",
            member_type = "string",
        },
        isPrimary = {
            type = "boolean",
        },
    },
}

M.OS = {
    type = "structure",
    members = {
        fullString = {
            type = "string",
        },
    },
}

M.SourceProperties = {
    type = "structure",
    members = {
        lastUpdatedDateTime = {
            type = "string",
        },
        recommendedInstanceType = {
            type = "string",
        },
        identificationHints = {
            type = "structure",
        },
        networkInterfaces = {
            type = "list",
            member_type = "structure",
        },
        disks = {
            type = "list",
            member_type = "structure",
        },
        cpus = {
            type = "list",
            member_type = "structure",
        },
        ramBytes = {
            type = "number",
        },
        os = {
            type = "structure",
        },
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
    members = {
        sourceServerID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        recoveryInstanceId = {
            type = "string",
        },
        lastLaunchResult = {
            type = "string",
        },
        dataReplicationInfo = {
            type = "structure",
        },
        lifeCycle = {
            type = "structure",
        },
        sourceProperties = {
            type = "structure",
        },
        stagingArea = {
            type = "structure",
        },
        sourceCloudProperties = {
            type = "structure",
        },
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
    members = {
        sourceServer = {
            type = "structure",
        },
    },
}

M.LaunchDisposition = {
    STOPPED = "STOPPED",
    STARTED = "STARTED",
}

M.Licensing = {
    type = "structure",
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
    members = {
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        licensing = {
            type = "structure",
        },
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
    members = {
        launchConfigurationTemplateID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        licensing = {
            type = "structure",
        },
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
    members = {
        launchConfigurationTemplate = {
            type = "structure",
        },
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
    members = {
        ruleID = {
            type = "number",
        },
        units = {
            type = "string",
            traits = {
                required = true,
            },
        },
        interval = {
            type = "number",
            traits = {
                required = true,
            },
        },
        retentionDuration = {
            type = "number",
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
            member_type = "string",
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
            type = "number",
            traits = {
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
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        pitPolicy = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
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
            type = "number",
        },
        dataPlaneRouting = {
            type = "string",
        },
        createPublicIP = {
            type = "boolean",
        },
        stagingAreaTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        pitPolicy = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateSourceNetworkOutput = {
    type = "structure",
    members = {
        sourceNetworkID = {
            type = "string",
        },
    },
}

M.DeleteJobInput = {
    type = "structure",
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
}

M.DeleteLaunchActionInput = {
    type = "structure",
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
}

M.DeleteLaunchConfigurationTemplateInput = {
    type = "structure",
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
}

M.DeleteRecoveryInstanceInput = {
    type = "structure",
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
}

M.DeleteReplicationConfigurationTemplateInput = {
    type = "structure",
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
}

M.DeleteSourceNetworkInput = {
    type = "structure",
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
}

M.DeleteSourceServerInput = {
    type = "structure",
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
}

M.DescribeJobLogItemsInput = {
    type = "structure",
    members = {
        jobID = {
            type = "string",
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
    members = {
        sourceNetworkData = {
            type = "structure",
        },
    },
}

M.JobLogEventData = {
    type = "structure",
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
        conversionProperties = {
            type = "structure",
        },
        eventResourceData = {
            type = "union",
        },
        attemptCount = {
            type = "number",
        },
        maxAttemptsCount = {
            type = "number",
        },
    },
}

M.JobLog = {
    type = "structure",
    members = {
        logDateTime = {
            type = "string",
        },
        event = {
            type = "string",
        },
        eventData = {
            type = "structure",
        },
    },
}

M.DescribeJobLogItemsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeJobsRequestFilters = {
    type = "structure",
    members = {
        jobIDs = {
            type = "list",
            member_type = "string",
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
    members = {
        filters = {
            type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeJobsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeLaunchConfigurationTemplatesInput = {
    type = "structure",
    members = {
        launchConfigurationTemplateIDs = {
            type = "list",
            member_type = "string",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeLaunchConfigurationTemplatesOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeRecoveryInstancesRequestFilters = {
    type = "structure",
    members = {
        recoveryInstanceIDs = {
            type = "list",
            member_type = "string",
        },
        sourceServerIDs = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeRecoveryInstancesInput = {
    type = "structure",
    members = {
        filters = {
            type = "structure",
        },
        maxResults = {
            type = "number",
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
    members = {
        startDateTime = {
            type = "string",
        },
        steps = {
            type = "list",
            member_type = "structure",
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
    members = {
        deviceName = {
            type = "string",
        },
        totalStorageBytes = {
            type = "number",
        },
        replicatedStorageBytes = {
            type = "number",
        },
        rescannedStorageBytes = {
            type = "number",
        },
        backloggedStorageBytes = {
            type = "number",
        },
    },
}

M.RecoveryInstanceDataReplicationInfo = {
    type = "structure",
    members = {
        lagDuration = {
            type = "string",
        },
        etaDateTime = {
            type = "string",
        },
        replicatedDisks = {
            type = "list",
            member_type = "structure",
        },
        dataReplicationState = {
            type = "string",
        },
        dataReplicationInitiation = {
            type = "structure",
        },
        dataReplicationError = {
            type = "structure",
        },
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
    members = {
        internalDeviceName = {
            type = "string",
        },
        bytes = {
            type = "number",
        },
        ebsVolumeID = {
            type = "string",
        },
    },
}

M.RecoveryInstanceProperties = {
    type = "structure",
    members = {
        lastUpdatedDateTime = {
            type = "string",
        },
        identificationHints = {
            type = "structure",
        },
        networkInterfaces = {
            type = "list",
            member_type = "structure",
        },
        disks = {
            type = "list",
            member_type = "structure",
        },
        cpus = {
            type = "list",
            member_type = "structure",
        },
        ramBytes = {
            type = "number",
        },
        os = {
            type = "structure",
        },
    },
}

M.RecoveryInstance = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        failback = {
            type = "structure",
        },
        dataReplicationInfo = {
            type = "structure",
        },
        recoveryInstanceProperties = {
            type = "structure",
        },
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
    members = {
        nextToken = {
            type = "string",
        },
        items = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeRecoverySnapshotsRequestFilters = {
    type = "structure",
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
    members = {
        sourceServerID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filters = {
            type = "structure",
        },
        order = {
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

M.RecoverySnapshot = {
    type = "structure",
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
            member_type = "string",
        },
    },
}

M.DescribeRecoverySnapshotsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeReplicationConfigurationTemplatesInput = {
    type = "structure",
    members = {
        replicationConfigurationTemplateIDs = {
            type = "list",
            member_type = "string",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ReplicationConfigurationTemplate = {
    type = "structure",
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
            member_type = "string",
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
            type = "number",
        },
        dataPlaneRouting = {
            type = "string",
        },
        createPublicIP = {
            type = "boolean",
        },
        stagingAreaTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        pitPolicy = {
            type = "list",
            member_type = "structure",
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
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeSourceNetworksRequestFilters = {
    type = "structure",
    members = {
        sourceNetworkIDs = {
            type = "list",
            member_type = "string",
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
    members = {
        filters = {
            type = "structure",
        },
        maxResults = {
            type = "number",
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
            key_type = "string",
            value_type = "string",
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
        lastRecovery = {
            type = "structure",
        },
        launchedVpcID = {
            type = "string",
        },
    },
}

M.DescribeSourceNetworksOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeSourceServersRequestFilters = {
    type = "structure",
    members = {
        sourceServerIDs = {
            type = "list",
            member_type = "string",
        },
        hardwareId = {
            type = "string",
        },
        stagingAccountIDs = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeSourceServersInput = {
    type = "structure",
    members = {
        filters = {
            type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeSourceServersOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DisconnectRecoveryInstanceInput = {
    type = "structure",
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
}

M.DisconnectSourceServerInput = {
    type = "structure",
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
    members = {
        sourceServerID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        recoveryInstanceId = {
            type = "string",
        },
        lastLaunchResult = {
            type = "string",
        },
        dataReplicationInfo = {
            type = "structure",
        },
        lifeCycle = {
            type = "structure",
        },
        sourceProperties = {
            type = "structure",
        },
        stagingArea = {
            type = "structure",
        },
        sourceCloudProperties = {
            type = "structure",
        },
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
}

M.InitializeServiceOutput = {
    type = "structure",
}

M.UpdateLaunchConfigurationTemplateInput = {
    type = "structure",
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
        licensing = {
            type = "structure",
        },
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
    members = {
        launchConfigurationTemplate = {
            type = "structure",
        },
    },
}

M.ListExtensibleSourceServersInput = {
    type = "structure",
    members = {
        stagingAccountID = {
            type = "string",
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

M.StagingSourceServer = {
    type = "structure",
    members = {
        hostname = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListExtensibleSourceServersOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.LaunchActionsRequestFilters = {
    type = "structure",
    members = {
        actionIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListLaunchActionsInput = {
    type = "structure",
    members = {
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filters = {
            type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListLaunchActionsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListStagingAccountsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
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

M.ListStagingAccountsOutput = {
    type = "structure",
    members = {
        accounts = {
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

M.PutLaunchActionInput = {
    type = "structure",
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
            type = "number",
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
            key_type = "string",
            value_type = "structure",
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
            type = "number",
        },
        actionVersion = {
            type = "string",
        },
        optional = {
            type = "boolean",
        },
        parameters = {
            type = "map",
            key_type = "string",
            value_type = "structure",
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
            type = "number",
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
    members = {
        reversedDirectionSourceServerArn = {
            type = "string",
        },
    },
}

M.StartFailbackLaunchInput = {
    type = "structure",
    members = {
        recoveryInstanceIDs = {
            type = "list",
            member_type = "string",
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

M.StartFailbackLaunchOutput = {
    type = "structure",
    members = {
        job = {
            type = "structure",
        },
    },
}

M.StopFailbackInput = {
    type = "structure",
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
}

M.TerminateRecoveryInstancesInput = {
    type = "structure",
    members = {
        recoveryInstanceIDs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TerminateRecoveryInstancesOutput = {
    type = "structure",
    members = {
        job = {
            type = "structure",
        },
    },
}

M.UpdateFailbackReplicationConfigurationInput = {
    type = "structure",
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
            type = "number",
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
}

M.UpdateReplicationConfigurationTemplateInput = {
    type = "structure",
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
            member_type = "string",
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
            type = "number",
        },
        dataPlaneRouting = {
            type = "string",
        },
        createPublicIP = {
            type = "boolean",
        },
        stagingAreaTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        pitPolicy = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            type = "number",
        },
        dataPlaneRouting = {
            type = "string",
        },
        createPublicIP = {
            type = "boolean",
        },
        stagingAreaTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        pitPolicy = {
            type = "list",
            member_type = "structure",
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
    members = {
        s3DestinationUrl = {
            type = "string",
        },
    },
}

M.StartSourceNetworkRecoveryRequestNetworkEntry = {
    type = "structure",
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
    members = {
        sourceNetworks = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        deployAsNew = {
            type = "boolean",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.StartSourceNetworkRecoveryOutput = {
    type = "structure",
    members = {
        job = {
            type = "structure",
        },
    },
}

M.StartSourceNetworkReplicationInput = {
    type = "structure",
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
    members = {
        sourceNetwork = {
            type = "structure",
        },
    },
}

M.StopSourceNetworkReplicationInput = {
    type = "structure",
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
    members = {
        sourceNetwork = {
            type = "structure",
        },
    },
}

M.GetLaunchConfigurationInput = {
    type = "structure",
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
    members = {
        launchIntoEC2InstanceID = {
            type = "string",
        },
    },
}

M.GetLaunchConfigurationOutput = {
    type = "structure",
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
        licensing = {
            type = "structure",
        },
        postLaunchEnabled = {
            type = "boolean",
        },
        launchIntoInstanceProperties = {
            type = "structure",
        },
    },
}

M.GetReplicationConfigurationInput = {
    type = "structure",
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
            type = "number",
        },
        throughput = {
            type = "number",
        },
        optimizedStagingDiskType = {
            type = "string",
        },
    },
}

M.GetReplicationConfigurationOutput = {
    type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
        },
        ebsEncryption = {
            type = "string",
        },
        ebsEncryptionKeyArn = {
            type = "string",
        },
        bandwidthThrottling = {
            type = "number",
        },
        dataPlaneRouting = {
            type = "string",
        },
        createPublicIP = {
            type = "boolean",
        },
        stagingAreaTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        pitPolicy = {
            type = "list",
            member_type = "structure",
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
    members = {
        sourceServerID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        recoveryInstanceId = {
            type = "string",
        },
        lastLaunchResult = {
            type = "string",
        },
        dataReplicationInfo = {
            type = "structure",
        },
        lifeCycle = {
            type = "structure",
        },
        sourceProperties = {
            type = "structure",
        },
        stagingArea = {
            type = "structure",
        },
        sourceCloudProperties = {
            type = "structure",
        },
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
    members = {
        sourceServers = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        isDrill = {
            type = "boolean",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.StartRecoveryOutput = {
    type = "structure",
    members = {
        job = {
            type = "structure",
        },
    },
}

M.StartReplicationInput = {
    type = "structure",
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
    members = {
        sourceServer = {
            type = "structure",
        },
    },
}

M.StopReplicationInput = {
    type = "structure",
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
    members = {
        sourceServer = {
            type = "structure",
        },
    },
}

M.UpdateLaunchConfigurationInput = {
    type = "structure",
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
        licensing = {
            type = "structure",
        },
        postLaunchEnabled = {
            type = "boolean",
        },
        launchIntoInstanceProperties = {
            type = "structure",
        },
    },
}

M.UpdateLaunchConfigurationOutput = {
    type = "structure",
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
        licensing = {
            type = "structure",
        },
        postLaunchEnabled = {
            type = "boolean",
        },
        launchIntoInstanceProperties = {
            type = "structure",
        },
    },
}

M.UpdateReplicationConfigurationInput = {
    type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
        },
        ebsEncryption = {
            type = "string",
        },
        ebsEncryptionKeyArn = {
            type = "string",
        },
        bandwidthThrottling = {
            type = "number",
        },
        dataPlaneRouting = {
            type = "string",
        },
        createPublicIP = {
            type = "boolean",
        },
        stagingAreaTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        pitPolicy = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
        },
        ebsEncryption = {
            type = "string",
        },
        ebsEncryptionKeyArn = {
            type = "string",
        },
        bandwidthThrottling = {
            type = "number",
        },
        dataPlaneRouting = {
            type = "string",
        },
        createPublicIP = {
            type = "boolean",
        },
        stagingAreaTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        pitPolicy = {
            type = "list",
            member_type = "structure",
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

return M
