local M = {}

M.AcceleratorCountRequest = {
    type = "structure",
    members = {
        min = {
            type = "number",
        },
        max = {
            type = "number",
        },
    },
}

M.AcceleratorManufacturer = {
    AMAZON_WEB_SERVICES = "amazon-web-services",
    AMD = "amd",
    NVIDIA = "nvidia",
    XILINX = "xilinx",
    HABANA = "habana",
}

M.AcceleratorName = {
    A100 = "a100",
    INFERENTIA = "inferentia",
    K520 = "k520",
    K80 = "k80",
    M60 = "m60",
    RADEON_PRO_V520 = "radeon-pro-v520",
    T4 = "t4",
    VU9P = "vu9p",
    V100 = "v100",
    A10G = "a10g",
    H100 = "h100",
    T4G = "t4g",
}

M.AcceleratorTotalMemoryMiBRequest = {
    type = "structure",
    members = {
        min = {
            type = "number",
        },
        max = {
            type = "number",
        },
    },
}

M.AcceleratorType = {
    GPU = "gpu",
    FPGA = "fpga",
    INFERENCE = "inference",
}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AccessType = {
    PUBLIC = "PUBLIC",
    PRIVATE = "PRIVATE",
}

M.AdvancedConfiguration = {
    type = "structure",
    members = {
        alternateTargetGroupArn = {
            type = "string",
        },
        productionListenerRule = {
            type = "string",
        },
        testListenerRule = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
    },
}

M.AgentUpdateStatus = {
    PENDING = "PENDING",
    STAGING = "STAGING",
    STAGED = "STAGED",
    UPDATING = "UPDATING",
    UPDATED = "UPDATED",
    FAILED = "FAILED",
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

M.ClusterNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ManagedDraining = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ManagedScalingStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ManagedScaling = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        targetCapacity = {
            type = "number",
        },
        minimumScalingStepSize = {
            type = "number",
        },
        maximumScalingStepSize = {
            type = "number",
        },
        instanceWarmupPeriod = {
            type = "number",
        },
    },
}

M.ManagedTerminationProtection = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AutoScalingGroupProvider = {
    type = "structure",
    members = {
        autoScalingGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        managedScaling = {
            type = "structure",
        },
        managedTerminationProtection = {
            type = "string",
        },
        managedDraining = {
            type = "string",
        },
    },
}

M.AutoRepairActionsStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AutoRepairConfiguration = {
    type = "structure",
    members = {
        actionsStatus = {
            type = "string",
        },
    },
}

M.InfrastructureOptimization = {
    type = "structure",
    members = {
        scaleInAfter = {
            type = "number",
        },
    },
}

M.CapacityOptionType = {
    ON_DEMAND = "ON_DEMAND",
    SPOT = "SPOT",
    RESERVED = "RESERVED",
}

M.CapacityReservationPreference = {
    RESERVATIONS_ONLY = "RESERVATIONS_ONLY",
    RESERVATIONS_FIRST = "RESERVATIONS_FIRST",
    RESERVATIONS_EXCLUDED = "RESERVATIONS_EXCLUDED",
}

M.CapacityReservationRequest = {
    type = "structure",
    members = {
        reservationGroupArn = {
            type = "string",
        },
        reservationPreference = {
            type = "string",
        },
    },
}

M.BareMetal = {
    INCLUDED = "included",
    REQUIRED = "required",
    EXCLUDED = "excluded",
}

M.BaselineEbsBandwidthMbpsRequest = {
    type = "structure",
    members = {
        min = {
            type = "number",
        },
        max = {
            type = "number",
        },
    },
}

M.BurstablePerformance = {
    INCLUDED = "included",
    REQUIRED = "required",
    EXCLUDED = "excluded",
}

M.CpuManufacturer = {
    INTEL = "intel",
    AMD = "amd",
    AMAZON_WEB_SERVICES = "amazon-web-services",
}

M.InstanceGeneration = {
    CURRENT = "current",
    PREVIOUS = "previous",
}

M.LocalStorage = {
    INCLUDED = "included",
    REQUIRED = "required",
    EXCLUDED = "excluded",
}

M.LocalStorageType = {
    HDD = "hdd",
    SSD = "ssd",
}

M.MemoryGiBPerVCpuRequest = {
    type = "structure",
    members = {
        min = {
            type = "number",
        },
        max = {
            type = "number",
        },
    },
}

M.MemoryMiBRequest = {
    type = "structure",
    members = {
        min = {
            type = "number",
            traits = {
                required = true,
            },
        },
        max = {
            type = "number",
        },
    },
}

M.NetworkBandwidthGbpsRequest = {
    type = "structure",
    members = {
        min = {
            type = "number",
        },
        max = {
            type = "number",
        },
    },
}

M.NetworkInterfaceCountRequest = {
    type = "structure",
    members = {
        min = {
            type = "number",
        },
        max = {
            type = "number",
        },
    },
}

M.TotalLocalStorageGBRequest = {
    type = "structure",
    members = {
        min = {
            type = "number",
        },
        max = {
            type = "number",
        },
    },
}

M.VCpuCountRangeRequest = {
    type = "structure",
    members = {
        min = {
            type = "number",
            traits = {
                required = true,
            },
        },
        max = {
            type = "number",
        },
    },
}

M.InstanceRequirementsRequest = {
    type = "structure",
    members = {
        vCpuCount = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        memoryMiB = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        cpuManufacturers = {
            type = "list",
            member_type = "string",
            traits = {
                xml_name = "CpuManufacturer",
            },
        },
        memoryGiBPerVCpu = {
            type = "structure",
        },
        excludedInstanceTypes = {
            type = "list",
            member_type = "string",
            traits = {
                xml_name = "ExcludedInstanceType",
            },
        },
        instanceGenerations = {
            type = "list",
            member_type = "string",
            traits = {
                xml_name = "InstanceGeneration",
            },
        },
        spotMaxPricePercentageOverLowestPrice = {
            type = "number",
        },
        onDemandMaxPricePercentageOverLowestPrice = {
            type = "number",
        },
        bareMetal = {
            type = "string",
        },
        burstablePerformance = {
            type = "string",
        },
        requireHibernateSupport = {
            type = "boolean",
        },
        networkInterfaceCount = {
            type = "structure",
        },
        localStorage = {
            type = "string",
        },
        localStorageTypes = {
            type = "list",
            member_type = "string",
            traits = {
                xml_name = "LocalStorageType",
            },
        },
        totalLocalStorageGB = {
            type = "structure",
        },
        baselineEbsBandwidthMbps = {
            type = "structure",
        },
        acceleratorTypes = {
            type = "list",
            member_type = "string",
            traits = {
                xml_name = "AcceleratorType",
            },
        },
        acceleratorCount = {
            type = "structure",
        },
        acceleratorManufacturers = {
            type = "list",
            member_type = "string",
            traits = {
                xml_name = "AcceleratorManufacturer",
            },
        },
        acceleratorNames = {
            type = "list",
            member_type = "string",
            traits = {
                xml_name = "AcceleratorName",
            },
        },
        acceleratorTotalMemoryMiB = {
            type = "structure",
        },
        networkBandwidthGbps = {
            type = "structure",
        },
        allowedInstanceTypes = {
            type = "list",
            member_type = "string",
            traits = {
                xml_name = "AllowedInstanceType",
            },
        },
        maxSpotPriceAsPercentageOfOptimalOnDemandPrice = {
            type = "number",
        },
    },
}

M.ManagedInstancesLocalStorageConfiguration = {
    type = "structure",
    members = {
        useLocalStorage = {
            type = "boolean",
        },
    },
}

M.ManagedInstancesMonitoringOptions = {
    BASIC = "BASIC",
    DETAILED = "DETAILED",
}

M.ManagedInstancesNetworkConfiguration = {
    type = "structure",
    members = {
        subnets = {
            type = "list",
            member_type = "string",
        },
        securityGroups = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ManagedInstancesStorageConfiguration = {
    type = "structure",
    members = {
        storageSizeGiB = {
            type = "number",
        },
    },
}

M.InstanceLaunchTemplate = {
    type = "structure",
    members = {
        ec2InstanceProfileArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        storageConfiguration = {
            type = "structure",
        },
        localStorageConfiguration = {
            type = "structure",
        },
        monitoring = {
            type = "string",
        },
        capacityOptionType = {
            type = "string",
        },
        instanceMetadataTagsPropagation = {
            type = "boolean",
        },
        instanceRequirements = {
            type = "structure",
        },
        fipsEnabled = {
            type = "boolean",
        },
        capacityReservations = {
            type = "structure",
        },
    },
}

M.PropagateMITags = {
    CAPACITY_PROVIDER = "CAPACITY_PROVIDER",
    NONE = "NONE",
}

M.CreateManagedInstancesProviderConfiguration = {
    type = "structure",
    members = {
        infrastructureRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instanceLaunchTemplate = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        propagateTags = {
            type = "string",
        },
        infrastructureOptimization = {
            type = "structure",
        },
        autoRepairConfiguration = {
            type = "structure",
        },
    },
}

M.Tag = {
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

M.CreateCapacityProviderInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cluster = {
            type = "string",
        },
        autoScalingGroupProvider = {
            type = "structure",
        },
        managedInstancesProvider = {
            type = "structure",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ManagedInstancesProvider = {
    type = "structure",
    members = {
        infrastructureRoleArn = {
            type = "string",
        },
        instanceLaunchTemplate = {
            type = "structure",
        },
        propagateTags = {
            type = "string",
        },
        infrastructureOptimization = {
            type = "structure",
        },
        autoRepairConfiguration = {
            type = "structure",
        },
    },
}

M.CapacityProviderStatus = {
    PROVISIONING = "PROVISIONING",
    ACTIVE = "ACTIVE",
    DEPROVISIONING = "DEPROVISIONING",
    INACTIVE = "INACTIVE",
}

M.CapacityProviderType = {
    EC2_AUTOSCALING = "EC2_AUTOSCALING",
    MANAGED_INSTANCES = "MANAGED_INSTANCES",
    FARGATE = "FARGATE",
    FARGATE_SPOT = "FARGATE_SPOT",
}

M.CapacityProviderUpdateStatus = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_COMPLETE = "CREATE_COMPLETE",
    CREATE_FAILED = "CREATE_FAILED",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETE_COMPLETE = "DELETE_COMPLETE",
    DELETE_FAILED = "DELETE_FAILED",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    UPDATE_COMPLETE = "UPDATE_COMPLETE",
    UPDATE_FAILED = "UPDATE_FAILED",
}

M.CapacityProvider = {
    type = "structure",
    members = {
        capacityProviderArn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        cluster = {
            type = "string",
        },
        status = {
            type = "string",
        },
        autoScalingGroupProvider = {
            type = "structure",
        },
        managedInstancesProvider = {
            type = "structure",
        },
        updateStatus = {
            type = "string",
        },
        updateStatusReason = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        type = {
            type = "string",
        },
    },
}

M.CreateCapacityProviderOutput = {
    type = "structure",
    members = {
        capacityProvider = {
            type = "structure",
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

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnsupportedFeatureException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdateInProgressException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteCapacityProviderInput = {
    type = "structure",
    members = {
        capacityProvider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cluster = {
            type = "string",
        },
    },
}

M.DeleteCapacityProviderOutput = {
    type = "structure",
    members = {
        capacityProvider = {
            type = "structure",
        },
    },
}

M.CapacityProviderField = {
    TAGS = "TAGS",
}

M.DescribeCapacityProvidersInput = {
    type = "structure",
    members = {
        capacityProviders = {
            type = "list",
            member_type = "string",
        },
        cluster = {
            type = "string",
        },
        include = {
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

M.Failure = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        reason = {
            type = "string",
        },
        detail = {
            type = "string",
        },
    },
}

M.DescribeCapacityProvidersOutput = {
    type = "structure",
    members = {
        capacityProviders = {
            type = "list",
            member_type = "structure",
        },
        failures = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.AutoScalingGroupProviderUpdate = {
    type = "structure",
    members = {
        managedScaling = {
            type = "structure",
        },
        managedTerminationProtection = {
            type = "string",
        },
        managedDraining = {
            type = "string",
        },
    },
}

M.InstanceLaunchTemplateUpdate = {
    type = "structure",
    members = {
        ec2InstanceProfileArn = {
            type = "string",
        },
        networkConfiguration = {
            type = "structure",
        },
        storageConfiguration = {
            type = "structure",
        },
        instanceMetadataTagsPropagation = {
            type = "boolean",
        },
        localStorageConfiguration = {
            type = "structure",
        },
        monitoring = {
            type = "string",
        },
        instanceRequirements = {
            type = "structure",
        },
        capacityReservations = {
            type = "structure",
        },
    },
}

M.UpdateManagedInstancesProviderConfiguration = {
    type = "structure",
    members = {
        infrastructureRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instanceLaunchTemplate = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        propagateTags = {
            type = "string",
        },
        infrastructureOptimization = {
            type = "structure",
        },
        autoRepairConfiguration = {
            type = "structure",
        },
    },
}

M.UpdateCapacityProviderInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cluster = {
            type = "string",
        },
        autoScalingGroupProvider = {
            type = "structure",
        },
        managedInstancesProvider = {
            type = "structure",
        },
    },
}

M.UpdateCapacityProviderOutput = {
    type = "structure",
    members = {
        capacityProvider = {
            type = "structure",
        },
    },
}

M.ExecuteCommandLogConfiguration = {
    type = "structure",
    members = {
        cloudWatchLogGroupName = {
            type = "string",
        },
        cloudWatchEncryptionEnabled = {
            type = "boolean",
        },
        s3BucketName = {
            type = "string",
        },
        s3EncryptionEnabled = {
            type = "boolean",
        },
        s3KeyPrefix = {
            type = "string",
        },
    },
}

M.ExecuteCommandLogging = {
    NONE = "NONE",
    DEFAULT = "DEFAULT",
    OVERRIDE = "OVERRIDE",
}

M.ExecuteCommandConfiguration = {
    type = "structure",
    members = {
        kmsKeyId = {
            type = "string",
        },
        logging = {
            type = "string",
        },
        logConfiguration = {
            type = "structure",
        },
    },
}

M.ManagedStorageConfiguration = {
    type = "structure",
    members = {
        kmsKeyId = {
            type = "string",
        },
        fargateEphemeralStorageKmsKeyId = {
            type = "string",
        },
    },
}

M.ClusterConfiguration = {
    type = "structure",
    members = {
        executeCommandConfiguration = {
            type = "structure",
        },
        managedStorageConfiguration = {
            type = "structure",
        },
    },
}

M.CapacityProviderStrategyItem = {
    type = "structure",
    members = {
        capacityProvider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        weight = {
            type = "number",
        },
        base = {
            type = "number",
        },
    },
}

M.ClusterServiceConnectDefaultsRequest = {
    type = "structure",
    members = {
        namespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ClusterSettingName = {
    CONTAINER_INSIGHTS = "containerInsights",
}

M.ClusterSetting = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.CreateClusterInput = {
    type = "structure",
    members = {
        clusterName = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        settings = {
            type = "list",
            member_type = "structure",
        },
        configuration = {
            type = "structure",
        },
        capacityProviders = {
            type = "list",
            member_type = "string",
        },
        defaultCapacityProviderStrategy = {
            type = "list",
            member_type = "structure",
        },
        serviceConnectDefaults = {
            type = "structure",
        },
    },
}

M.KeyValuePair = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.Attachment = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        type = {
            type = "string",
        },
        status = {
            type = "string",
        },
        details = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ClusterServiceConnectDefaults = {
    type = "structure",
    members = {
        namespace = {
            type = "string",
        },
    },
}

M.Cluster = {
    type = "structure",
    members = {
        clusterArn = {
            type = "string",
        },
        clusterName = {
            type = "string",
        },
        configuration = {
            type = "structure",
        },
        status = {
            type = "string",
        },
        registeredContainerInstancesCount = {
            type = "number",
        },
        runningTasksCount = {
            type = "number",
        },
        pendingTasksCount = {
            type = "number",
        },
        activeServicesCount = {
            type = "number",
        },
        statistics = {
            type = "list",
            member_type = "structure",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        settings = {
            type = "list",
            member_type = "structure",
        },
        capacityProviders = {
            type = "list",
            member_type = "string",
        },
        defaultCapacityProviderStrategy = {
            type = "list",
            member_type = "structure",
        },
        attachments = {
            type = "list",
            member_type = "structure",
        },
        attachmentsStatus = {
            type = "string",
        },
        serviceConnectDefaults = {
            type = "structure",
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

M.NamespaceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterContainsCapacityProviderException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterContainsContainerInstancesException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterContainsServicesException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterContainsTasksException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteClusterInput = {
    type = "structure",
    members = {
        cluster = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteClusterOutput = {
    type = "structure",
    members = {
        cluster = {
            type = "structure",
        },
    },
}

M.DeregisterContainerInstanceInput = {
    type = "structure",
    members = {
        cluster = {
            type = "string",
        },
        containerInstance = {
            type = "string",
            traits = {
                required = true,
            },
        },
        force = {
            type = "boolean",
        },
    },
}

M.TargetType = {
    CONTAINER_INSTANCE = "container-instance",
}

M.Attribute = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
        },
        targetType = {
            type = "string",
        },
        targetId = {
            type = "string",
        },
    },
}

M.InstanceHealthCheckState = {
    OK = "OK",
    IMPAIRED = "IMPAIRED",
    INSUFFICIENT_DATA = "INSUFFICIENT_DATA",
    INITIALIZING = "INITIALIZING",
}

M.InstanceHealthCheckType = {
    CONTAINER_RUNTIME = "CONTAINER_RUNTIME",
    ACCELERATED_COMPUTE = "ACCELERATED_COMPUTE",
    DAEMON = "DAEMON",
}

M.InstanceHealthCheckResult = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        lastUpdated = {
            type = "timestamp",
        },
        lastStatusChange = {
            type = "timestamp",
        },
    },
}

M.ContainerInstanceHealthStatus = {
    type = "structure",
    members = {
        overallStatus = {
            type = "string",
        },
        details = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Resource = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        type = {
            type = "string",
        },
        doubleValue = {
            type = "number",
        },
        longValue = {
            type = "number",
        },
        integerValue = {
            type = "number",
        },
        stringSetValue = {
            type = "list",
            member_type = "string",
        },
    },
}

M.VersionInfo = {
    type = "structure",
    members = {
        agentVersion = {
            type = "string",
        },
        agentHash = {
            type = "string",
        },
        dockerVersion = {
            type = "string",
        },
    },
}

M.ContainerInstance = {
    type = "structure",
    members = {
        containerInstanceArn = {
            type = "string",
        },
        ec2InstanceId = {
            type = "string",
        },
        capacityProviderName = {
            type = "string",
        },
        version = {
            type = "number",
        },
        versionInfo = {
            type = "structure",
        },
        remainingResources = {
            type = "list",
            member_type = "structure",
        },
        registeredResources = {
            type = "list",
            member_type = "structure",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        agentConnected = {
            type = "boolean",
        },
        runningTasksCount = {
            type = "number",
        },
        pendingTasksCount = {
            type = "number",
        },
        agentUpdateStatus = {
            type = "string",
        },
        attributes = {
            type = "list",
            member_type = "structure",
        },
        registeredAt = {
            type = "timestamp",
        },
        attachments = {
            type = "list",
            member_type = "structure",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        healthStatus = {
            type = "structure",
        },
    },
}

M.DeregisterContainerInstanceOutput = {
    type = "structure",
    members = {
        containerInstance = {
            type = "structure",
        },
    },
}

M.ClusterField = {
    ATTACHMENTS = "ATTACHMENTS",
    CONFIGURATIONS = "CONFIGURATIONS",
    SETTINGS = "SETTINGS",
    STATISTICS = "STATISTICS",
    TAGS = "TAGS",
}

M.DescribeClustersInput = {
    type = "structure",
    members = {
        clusters = {
            type = "list",
            member_type = "string",
        },
        include = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeClustersOutput = {
    type = "structure",
    members = {
        clusters = {
            type = "list",
            member_type = "structure",
        },
        failures = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ExecuteCommandInput = {
    type = "structure",
    members = {
        cluster = {
            type = "string",
        },
        container = {
            type = "string",
        },
        command = {
            type = "string",
            traits = {
                required = true,
            },
        },
        interactive = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        task = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Session = {
    type = "structure",
    members = {
        sessionId = {
            type = "string",
        },
        streamUrl = {
            type = "string",
        },
        tokenValue = {
            type = "string",
        },
    },
}

M.ExecuteCommandOutput = {
    type = "structure",
    members = {
        clusterArn = {
            type = "string",
        },
        containerArn = {
            type = "string",
        },
        containerName = {
            type = "string",
        },
        interactive = {
            type = "boolean",
        },
        session = {
            type = "structure",
        },
        taskArn = {
            type = "string",
        },
    },
}

M.TargetNotConnectedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListAttributesInput = {
    type = "structure",
    members = {
        cluster = {
            type = "string",
        },
        targetType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        attributeName = {
            type = "string",
        },
        attributeValue = {
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

M.ListAttributesOutput = {
    type = "structure",
    members = {
        attributes = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListClustersInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.ListClustersOutput = {
    type = "structure",
    members = {
        clusterArns = {
            type = "list",
            member_type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ContainerInstanceStatus = {
    ACTIVE = "ACTIVE",
    DRAINING = "DRAINING",
    REGISTERING = "REGISTERING",
    DEREGISTERING = "DEREGISTERING",
    REGISTRATION_FAILED = "REGISTRATION_FAILED",
}

M.ListContainerInstancesInput = {
    type = "structure",
    members = {
        cluster = {
            type = "string",
        },
        filter = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
        status = {
            type = "string",
        },
    },
}

M.ListContainerInstancesOutput = {
    type = "structure",
    members = {
        containerInstanceArns = {
            type = "list",
            member_type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PutClusterCapacityProvidersInput = {
    type = "structure",
    members = {
        cluster = {
            type = "string",
            traits = {
                required = true,
            },
        },
        capacityProviders = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        defaultCapacityProviderStrategy = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutClusterCapacityProvidersOutput = {
    type = "structure",
    members = {
        cluster = {
            type = "structure",
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

M.AttachmentStateChange = {
    type = "structure",
    members = {
        attachmentArn = {
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

M.SubmitAttachmentStateChangesInput = {
    type = "structure",
    members = {
        cluster = {
            type = "string",
        },
        attachments = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SubmitAttachmentStateChangesOutput = {
    type = "structure",
    members = {
        acknowledgment = {
            type = "string",
        },
    },
}

M.TransportProtocol = {
    TCP = "tcp",
    UDP = "udp",
}

M.NetworkBinding = {
    type = "structure",
    members = {
        bindIP = {
            type = "string",
        },
        containerPort = {
            type = "number",
        },
        hostPort = {
            type = "number",
        },
        protocol = {
            type = "string",
        },
        containerPortRange = {
            type = "string",
        },
        hostPortRange = {
            type = "string",
        },
    },
}

M.SubmitContainerStateChangeInput = {
    type = "structure",
    members = {
        cluster = {
            type = "string",
        },
        task = {
            type = "string",
        },
        containerName = {
            type = "string",
        },
        runtimeId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        exitCode = {
            type = "number",
        },
        reason = {
            type = "string",
        },
        networkBindings = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SubmitContainerStateChangeOutput = {
    type = "structure",
    members = {
        acknowledgment = {
            type = "string",
        },
    },
}

M.ContainerStateChange = {
    type = "structure",
    members = {
        containerName = {
            type = "string",
        },
        imageDigest = {
            type = "string",
        },
        runtimeId = {
            type = "string",
        },
        exitCode = {
            type = "number",
        },
        networkBindings = {
            type = "list",
            member_type = "structure",
        },
        reason = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.ManagedAgentName = {
    ExecuteCommandAgent = "ExecuteCommandAgent",
}

M.ManagedAgentStateChange = {
    type = "structure",
    members = {
        containerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        managedAgentName = {
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
        reason = {
            type = "string",
        },
    },
}

M.SubmitTaskStateChangeInput = {
    type = "structure",
    members = {
        cluster = {
            type = "string",
        },
        task = {
            type = "string",
        },
        status = {
            type = "string",
        },
        reason = {
            type = "string",
        },
        containers = {
            type = "list",
            member_type = "structure",
        },
        attachments = {
            type = "list",
            member_type = "structure",
        },
        managedAgents = {
            type = "list",
            member_type = "structure",
        },
        pullStartedAt = {
            type = "timestamp",
        },
        pullStoppedAt = {
            type = "timestamp",
        },
        executionStoppedAt = {
            type = "timestamp",
        },
    },
}

M.SubmitTaskStateChangeOutput = {
    type = "structure",
    members = {
        acknowledgment = {
            type = "string",
        },
    },
}

M.UpdateClusterInput = {
    type = "structure",
    members = {
        cluster = {
            type = "string",
            traits = {
                required = true,
            },
        },
        settings = {
            type = "list",
            member_type = "structure",
        },
        configuration = {
            type = "structure",
        },
        serviceConnectDefaults = {
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

M.UpdateClusterSettingsInput = {
    type = "structure",
    members = {
        cluster = {
            type = "string",
            traits = {
                required = true,
            },
        },
        settings = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateClusterSettingsOutput = {
    type = "structure",
    members = {
        cluster = {
            type = "structure",
        },
    },
}

M.DeleteAttributesInput = {
    type = "structure",
    members = {
        cluster = {
            type = "string",
        },
        attributes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAttributesOutput = {
    type = "structure",
    members = {
        attributes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TargetNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ContainerInstanceField = {
    TAGS = "TAGS",
    CONTAINER_INSTANCE_HEALTH = "CONTAINER_INSTANCE_HEALTH",
}

M.DescribeContainerInstancesInput = {
    type = "structure",
    members = {
        cluster = {
            type = "string",
        },
        containerInstances = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        include = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeContainerInstancesOutput = {
    type = "structure",
    members = {
        containerInstances = {
            type = "list",
            member_type = "structure",
        },
        failures = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DesiredStatus = {
    RUNNING = "RUNNING",
    PENDING = "PENDING",
    STOPPED = "STOPPED",
}

M.LaunchType = {
    EC2 = "EC2",
    FARGATE = "FARGATE",
    EXTERNAL = "EXTERNAL",
    MANAGED_INSTANCES = "MANAGED_INSTANCES",
}

M.ListTasksInput = {
    type = "structure",
    members = {
        cluster = {
            type = "string",
        },
        containerInstance = {
            type = "string",
        },
        family = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
        startedBy = {
            type = "string",
        },
        serviceName = {
            type = "string",
        },
        desiredStatus = {
            type = "string",
        },
        launchType = {
            type = "string",
        },
        daemonName = {
            type = "string",
        },
    },
}

M.ListTasksOutput = {
    type = "structure",
    members = {
        taskArns = {
            type = "list",
            member_type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ServiceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AttributeLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutAttributesInput = {
    type = "structure",
    members = {
        cluster = {
            type = "string",
        },
        attributes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutAttributesOutput = {
    type = "structure",
    members = {
        attributes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PlatformDeviceType = {
    GPU = "GPU",
}

M.PlatformDevice = {
    type = "structure",
    members = {
        id = {
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

M.RegisterContainerInstanceInput = {
    type = "structure",
    members = {
        cluster = {
            type = "string",
        },
        instanceIdentityDocument = {
            type = "string",
        },
        instanceIdentityDocumentSignature = {
            type = "string",
        },
        totalResources = {
            type = "list",
            member_type = "structure",
        },
        versionInfo = {
            type = "structure",
        },
        containerInstanceArn = {
            type = "string",
        },
        attributes = {
            type = "list",
            member_type = "structure",
        },
        platformDevices = {
            type = "list",
            member_type = "structure",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RegisterContainerInstanceOutput = {
    type = "structure",
    members = {
        containerInstance = {
            type = "structure",
        },
    },
}

M.MissingVersionException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NoUpdateAvailableException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdateContainerAgentInput = {
    type = "structure",
    members = {
        cluster = {
            type = "string",
        },
        containerInstance = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateContainerAgentOutput = {
    type = "structure",
    members = {
        containerInstance = {
            type = "structure",
        },
    },
}

M.UpdateContainerInstancesStateInput = {
    type = "structure",
    members = {
        cluster = {
            type = "string",
        },
        containerInstances = {
            type = "list",
            member_type = "string",
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

M.UpdateContainerInstancesStateOutput = {
    type = "structure",
    members = {
        containerInstances = {
            type = "list",
            member_type = "structure",
        },
        failures = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeDaemonDeploymentsInput = {
    type = "structure",
    members = {
        daemonDeploymentArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DaemonDeploymentRollbackMonitorsStatus = {
    TRIGGERED = "TRIGGERED",
    MONITORING = "MONITORING",
    MONITORING_COMPLETE = "MONITORING_COMPLETE",
    DISABLED = "DISABLED",
}

M.DaemonDeploymentAlarms = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        alarmNames = {
            type = "list",
            member_type = "string",
        },
        triggeredAlarmNames = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DaemonCircuitBreaker = {
    type = "structure",
    members = {
        failureCount = {
            type = "number",
        },
        status = {
            type = "string",
        },
        threshold = {
            type = "number",
        },
    },
}

M.DaemonAlarmConfiguration = {
    type = "structure",
    members = {
        alarmNames = {
            type = "list",
            member_type = "string",
        },
        enable = {
            type = "boolean",
        },
    },
}

M.DaemonDeploymentConfiguration = {
    type = "structure",
    members = {
        drainPercent = {
            type = "number",
        },
        alarms = {
            type = "structure",
        },
        bakeTimeInMinutes = {
            type = "number",
        },
    },
}

M.DaemonRollback = {
    type = "structure",
    members = {
        reason = {
            type = "string",
        },
        startedAt = {
            type = "timestamp",
        },
        rollbackTargetDaemonRevisionArn = {
            type = "string",
        },
        rollbackCapacityProviders = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DaemonDeploymentCapacityProvider = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        runningInstanceCount = {
            type = "number",
        },
        drainingInstanceCount = {
            type = "number",
        },
    },
}

M.DaemonDeploymentRevisionDetail = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        capacityProviders = {
            type = "list",
            member_type = "structure",
        },
        totalRunningInstanceCount = {
            type = "number",
        },
        totalDrainingInstanceCount = {
            type = "number",
        },
    },
}

M.DaemonDeploymentStatus = {
    PENDING = "PENDING",
    SUCCESSFUL = "SUCCESSFUL",
    STOPPED = "STOPPED",
    STOP_REQUESTED = "STOP_REQUESTED",
    IN_PROGRESS = "IN_PROGRESS",
    ROLLBACK_IN_PROGRESS = "ROLLBACK_IN_PROGRESS",
    ROLLBACK_SUCCESSFUL = "ROLLBACK_SUCCESSFUL",
    ROLLBACK_FAILED = "ROLLBACK_FAILED",
}

M.DaemonDeployment = {
    type = "structure",
    members = {
        daemonDeploymentArn = {
            type = "string",
        },
        clusterArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        targetDaemonRevision = {
            type = "structure",
        },
        sourceDaemonRevisions = {
            type = "list",
            member_type = "structure",
        },
        circuitBreaker = {
            type = "structure",
        },
        alarms = {
            type = "structure",
        },
        rollback = {
            type = "structure",
        },
        deploymentConfiguration = {
            type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        startedAt = {
            type = "timestamp",
        },
        stoppedAt = {
            type = "timestamp",
        },
        finishedAt = {
            type = "timestamp",
        },
    },
}

M.DescribeDaemonDeploymentsOutput = {
    type = "structure",
    members = {
        failures = {
            type = "list",
            member_type = "structure",
        },
        daemonDeployments = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DaemonPropagateTags = {
    DAEMON = "DAEMON",
    NONE = "NONE",
}

M.CreateDaemonInput = {
    type = "structure",
    members = {
        daemonName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clusterArn = {
            type = "string",
        },
        daemonTaskDefinitionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        capacityProviderArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        deploymentConfiguration = {
            type = "structure",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        propagateTags = {
            type = "string",
        },
        enableECSManagedTags = {
            type = "boolean",
        },
        enableExecuteCommand = {
            type = "boolean",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.DaemonStatus = {
    ACTIVE = "ACTIVE",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
}

M.CreateDaemonOutput = {
    type = "structure",
    members = {
        daemonArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        deploymentArn = {
            type = "string",
        },
    },
}

M.PlatformUnknownException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DaemonNotActiveException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DaemonNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteDaemonInput = {
    type = "structure",
    members = {
        daemonArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDaemonOutput = {
    type = "structure",
    members = {
        daemonArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        deploymentArn = {
            type = "string",
        },
    },
}

M.DescribeDaemonInput = {
    type = "structure",
    members = {
        daemonArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DaemonCapacityProvider = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        runningCount = {
            type = "number",
        },
    },
}

M.DaemonRevisionDetail = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        capacityProviders = {
            type = "list",
            member_type = "structure",
        },
        totalRunningCount = {
            type = "number",
        },
    },
}

M.DaemonDetail = {
    type = "structure",
    members = {
        daemonArn = {
            type = "string",
        },
        clusterArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        currentRevisions = {
            type = "list",
            member_type = "structure",
        },
        deploymentArn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
    },
}

M.DescribeDaemonOutput = {
    type = "structure",
    members = {
        daemon = {
            type = "structure",
        },
    },
}

M.CreatedAt = {
    type = "structure",
    members = {
        before = {
            type = "timestamp",
        },
        after = {
            type = "timestamp",
        },
    },
}

M.ListDaemonDeploymentsInput = {
    type = "structure",
    members = {
        daemonArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "list",
            member_type = "string",
        },
        createdAt = {
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

M.DaemonDeploymentSummary = {
    type = "structure",
    members = {
        daemonDeploymentArn = {
            type = "string",
        },
        daemonArn = {
            type = "string",
        },
        clusterArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        targetDaemonRevisionArn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        startedAt = {
            type = "timestamp",
        },
        stoppedAt = {
            type = "timestamp",
        },
        finishedAt = {
            type = "timestamp",
        },
    },
}

M.ListDaemonDeploymentsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        daemonDeployments = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListDaemonsInput = {
    type = "structure",
    members = {
        clusterArn = {
            type = "string",
        },
        capacityProviderArns = {
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

M.DaemonSummary = {
    type = "structure",
    members = {
        daemonArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
    },
}

M.ListDaemonsOutput = {
    type = "structure",
    members = {
        daemonSummariesList = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateDaemonInput = {
    type = "structure",
    members = {
        daemonArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        daemonTaskDefinitionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        capacityProviderArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        deploymentConfiguration = {
            type = "structure",
        },
        propagateTags = {
            type = "string",
        },
        enableECSManagedTags = {
            type = "boolean",
        },
        enableExecuteCommand = {
            type = "boolean",
        },
    },
}

M.UpdateDaemonOutput = {
    type = "structure",
    members = {
        daemonArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        deploymentArn = {
            type = "string",
        },
    },
}

M.DescribeDaemonRevisionsInput = {
    type = "structure",
    members = {
        daemonRevisionArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DaemonContainerImage = {
    type = "structure",
    members = {
        containerName = {
            type = "string",
        },
        imageDigest = {
            type = "string",
        },
        image = {
            type = "string",
        },
    },
}

M.DaemonRevision = {
    type = "structure",
    members = {
        daemonRevisionArn = {
            type = "string",
        },
        clusterArn = {
            type = "string",
        },
        daemonArn = {
            type = "string",
        },
        daemonTaskDefinitionArn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        containerImages = {
            type = "list",
            member_type = "structure",
        },
        propagateTags = {
            type = "string",
        },
        enableECSManagedTags = {
            type = "boolean",
        },
        enableExecuteCommand = {
            type = "boolean",
        },
    },
}

M.DescribeDaemonRevisionsOutput = {
    type = "structure",
    members = {
        daemonRevisions = {
            type = "list",
            member_type = "structure",
        },
        failures = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DeleteDaemonTaskDefinitionInput = {
    type = "structure",
    members = {
        daemonTaskDefinition = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDaemonTaskDefinitionOutput = {
    type = "structure",
    members = {
        daemonTaskDefinitionArn = {
            type = "string",
        },
    },
}

M.DescribeDaemonTaskDefinitionInput = {
    type = "structure",
    members = {
        daemonTaskDefinition = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ContainerCondition = {
    START = "START",
    COMPLETE = "COMPLETE",
    SUCCESS = "SUCCESS",
    HEALTHY = "HEALTHY",
}

M.ContainerDependency = {
    type = "structure",
    members = {
        containerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        condition = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EnvironmentFileType = {
    S3 = "s3",
}

M.EnvironmentFile = {
    type = "structure",
    members = {
        value = {
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

M.FirelensConfigurationType = {
    FLUENTD = "fluentd",
    FLUENTBIT = "fluentbit",
}

M.FirelensConfiguration = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        options = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.HealthCheck = {
    type = "structure",
    members = {
        command = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        interval = {
            type = "number",
        },
        timeout = {
            type = "number",
        },
        retries = {
            type = "number",
        },
        startPeriod = {
            type = "number",
        },
    },
}

M.KernelCapabilities = {
    type = "structure",
    members = {
        add = {
            type = "list",
            member_type = "string",
        },
        drop = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DeviceCgroupPermission = {
    READ = "read",
    WRITE = "write",
    MKNOD = "mknod",
}

M.Device = {
    type = "structure",
    members = {
        hostPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        containerPath = {
            type = "string",
        },
        permissions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.Tmpfs = {
    type = "structure",
    members = {
        containerPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        size = {
            type = "number",
            traits = {
                required = true,
            },
        },
        mountOptions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DaemonLinuxParameters = {
    type = "structure",
    members = {
        capabilities = {
            type = "structure",
        },
        devices = {
            type = "list",
            member_type = "structure",
        },
        initProcessEnabled = {
            type = "boolean",
        },
        tmpfs = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.LogDriver = {
    JSON_FILE = "json-file",
    SYSLOG = "syslog",
    JOURNALD = "journald",
    GELF = "gelf",
    FLUENTD = "fluentd",
    AWSLOGS = "awslogs",
    SPLUNK = "splunk",
    AWSFIRELENS = "awsfirelens",
}

M.Secret = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        valueFrom = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LogConfiguration = {
    type = "structure",
    members = {
        logDriver = {
            type = "string",
            traits = {
                required = true,
            },
        },
        options = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        secretOptions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.MountPoint = {
    type = "structure",
    members = {
        sourceVolume = {
            type = "string",
        },
        containerPath = {
            type = "string",
        },
        readOnly = {
            type = "boolean",
        },
    },
}

M.RepositoryCredentials = {
    type = "structure",
    members = {
        credentialsParameter = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ContainerRestartPolicy = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        ignoredExitCodes = {
            type = "list",
            member_type = "number",
        },
        restartAttemptPeriod = {
            type = "number",
        },
    },
}

M.SystemControl = {
    type = "structure",
    members = {
        namespace = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.UlimitName = {
    CORE = "core",
    CPU = "cpu",
    DATA = "data",
    FSIZE = "fsize",
    LOCKS = "locks",
    MEMLOCK = "memlock",
    MSGQUEUE = "msgqueue",
    NICE = "nice",
    NOFILE = "nofile",
    NPROC = "nproc",
    RSS = "rss",
    RTPRIO = "rtprio",
    RTTIME = "rttime",
    SIGPENDING = "sigpending",
    STACK = "stack",
}

M.Ulimit = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        softLimit = {
            type = "number",
            traits = {
                required = true,
            },
        },
        hardLimit = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.DaemonContainerDefinition = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        image = {
            type = "string",
            traits = {
                required = true,
            },
        },
        memory = {
            type = "number",
        },
        memoryReservation = {
            type = "number",
        },
        repositoryCredentials = {
            type = "structure",
        },
        healthCheck = {
            type = "structure",
        },
        cpu = {
            type = "number",
        },
        essential = {
            type = "boolean",
        },
        entryPoint = {
            type = "list",
            member_type = "string",
        },
        command = {
            type = "list",
            member_type = "string",
        },
        workingDirectory = {
            type = "string",
        },
        environmentFiles = {
            type = "list",
            member_type = "structure",
        },
        environment = {
            type = "list",
            member_type = "structure",
        },
        secrets = {
            type = "list",
            member_type = "structure",
        },
        readonlyRootFilesystem = {
            type = "boolean",
        },
        mountPoints = {
            type = "list",
            member_type = "structure",
        },
        logConfiguration = {
            type = "structure",
        },
        firelensConfiguration = {
            type = "structure",
        },
        privileged = {
            type = "boolean",
        },
        user = {
            type = "string",
        },
        ulimits = {
            type = "list",
            member_type = "structure",
        },
        linuxParameters = {
            type = "structure",
        },
        dependsOn = {
            type = "list",
            member_type = "structure",
        },
        startTimeout = {
            type = "number",
        },
        stopTimeout = {
            type = "number",
        },
        systemControls = {
            type = "list",
            member_type = "structure",
        },
        interactive = {
            type = "boolean",
        },
        pseudoTerminal = {
            type = "boolean",
        },
        restartPolicy = {
            type = "structure",
        },
    },
}

M.DaemonTaskDefinitionStatus = {
    ACTIVE = "ACTIVE",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETED = "DELETED",
}

M.HostVolumeProperties = {
    type = "structure",
    members = {
        sourcePath = {
            type = "string",
        },
    },
}

M.DaemonVolume = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        host = {
            type = "structure",
        },
    },
}

M.DaemonTaskDefinition = {
    type = "structure",
    members = {
        daemonTaskDefinitionArn = {
            type = "string",
        },
        family = {
            type = "string",
        },
        revision = {
            type = "number",
        },
        taskRoleArn = {
            type = "string",
        },
        executionRoleArn = {
            type = "string",
        },
        containerDefinitions = {
            type = "list",
            member_type = "structure",
        },
        volumes = {
            type = "list",
            member_type = "structure",
        },
        cpu = {
            type = "string",
        },
        memory = {
            type = "string",
        },
        status = {
            type = "string",
        },
        registeredAt = {
            type = "timestamp",
        },
        deleteRequestedAt = {
            type = "timestamp",
        },
        registeredBy = {
            type = "string",
        },
    },
}

M.DescribeDaemonTaskDefinitionOutput = {
    type = "structure",
    members = {
        daemonTaskDefinition = {
            type = "structure",
        },
    },
}

M.DaemonTaskDefinitionRevisionFilter = {
    LAST_REGISTERED = "LAST_REGISTERED",
}

M.SortOrder = {
    ASC = "ASC",
    DESC = "DESC",
}

M.DaemonTaskDefinitionStatusFilter = {
    ACTIVE = "ACTIVE",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    ALL = "ALL",
}

M.ListDaemonTaskDefinitionsInput = {
    type = "structure",
    members = {
        familyPrefix = {
            type = "string",
        },
        family = {
            type = "string",
        },
        revision = {
            type = "string",
        },
        status = {
            type = "string",
        },
        sort = {
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

M.DaemonTaskDefinitionSummary = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        registeredAt = {
            type = "timestamp",
        },
        registeredBy = {
            type = "string",
        },
        deleteRequestedAt = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
    },
}

M.ListDaemonTaskDefinitionsOutput = {
    type = "structure",
    members = {
        daemonTaskDefinitions = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RegisterDaemonTaskDefinitionInput = {
    type = "structure",
    members = {
        family = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskRoleArn = {
            type = "string",
        },
        executionRoleArn = {
            type = "string",
        },
        containerDefinitions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        cpu = {
            type = "string",
        },
        memory = {
            type = "string",
        },
        volumes = {
            type = "list",
            member_type = "structure",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RegisterDaemonTaskDefinitionOutput = {
    type = "structure",
    members = {
        daemonTaskDefinitionArn = {
            type = "string",
        },
    },
}

M.SettingName = {
    SERVICE_LONG_ARN_FORMAT = "serviceLongArnFormat",
    TASK_LONG_ARN_FORMAT = "taskLongArnFormat",
    CONTAINER_INSTANCE_LONG_ARN_FORMAT = "containerInstanceLongArnFormat",
    AWSVPC_TRUNKING = "awsvpcTrunking",
    CONTAINER_INSIGHTS = "containerInsights",
    FARGATE_FIPS_MODE = "fargateFIPSMode",
    TAG_RESOURCE_AUTHORIZATION = "tagResourceAuthorization",
    FARGATE_TASK_RETIREMENT_WAIT_PERIOD = "fargateTaskRetirementWaitPeriod",
    GUARD_DUTY_ACTIVATE = "guardDutyActivate",
    DEFAULT_LOG_DRIVER_MODE = "defaultLogDriverMode",
    FARGATE_EVENT_WINDOWS = "fargateEventWindows",
}

M.DeleteAccountSettingInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principalArn = {
            type = "string",
        },
    },
}

M.SettingType = {
    USER = "user",
    AWS_MANAGED = "aws_managed",
}

M.Setting = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        value = {
            type = "string",
        },
        principalArn = {
            type = "string",
        },
        type = {
            type = "string",
        },
    },
}

M.DeleteAccountSettingOutput = {
    type = "structure",
    members = {
        setting = {
            type = "structure",
        },
    },
}

M.DeregisterTaskDefinitionInput = {
    type = "structure",
    members = {
        taskDefinition = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Compatibility = {
    EC2 = "EC2",
    FARGATE = "FARGATE",
    EXTERNAL = "EXTERNAL",
    MANAGED_INSTANCES = "MANAGED_INSTANCES",
}

M.HostEntry = {
    type = "structure",
    members = {
        hostname = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ipAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LinuxParameters = {
    type = "structure",
    members = {
        capabilities = {
            type = "structure",
        },
        devices = {
            type = "list",
            member_type = "structure",
        },
        initProcessEnabled = {
            type = "boolean",
        },
        sharedMemorySize = {
            type = "number",
        },
        tmpfs = {
            type = "list",
            member_type = "structure",
        },
        maxSwap = {
            type = "number",
        },
        swappiness = {
            type = "number",
        },
    },
}

M.ApplicationProtocol = {
    HTTP = "http",
    HTTP2 = "http2",
    GRPC = "grpc",
}

M.PortMapping = {
    type = "structure",
    members = {
        containerPort = {
            type = "number",
        },
        hostPort = {
            type = "number",
        },
        protocol = {
            type = "string",
        },
        name = {
            type = "string",
        },
        appProtocol = {
            type = "string",
        },
        containerPortRange = {
            type = "string",
        },
    },
}

M.ResourceType = {
    GPU = "GPU",
    INFERENCE_ACCELERATOR = "InferenceAccelerator",
}

M.ResourceRequirement = {
    type = "structure",
    members = {
        value = {
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

M.VersionConsistency = {
    ENABLED = "enabled",
    DISABLED = "disabled",
}

M.VolumeFrom = {
    type = "structure",
    members = {
        sourceContainer = {
            type = "string",
        },
        readOnly = {
            type = "boolean",
        },
    },
}

M.ContainerDefinition = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        image = {
            type = "string",
        },
        repositoryCredentials = {
            type = "structure",
        },
        cpu = {
            type = "number",
        },
        memory = {
            type = "number",
        },
        memoryReservation = {
            type = "number",
        },
        links = {
            type = "list",
            member_type = "string",
        },
        portMappings = {
            type = "list",
            member_type = "structure",
        },
        essential = {
            type = "boolean",
        },
        restartPolicy = {
            type = "structure",
        },
        entryPoint = {
            type = "list",
            member_type = "string",
        },
        command = {
            type = "list",
            member_type = "string",
        },
        environment = {
            type = "list",
            member_type = "structure",
        },
        environmentFiles = {
            type = "list",
            member_type = "structure",
        },
        mountPoints = {
            type = "list",
            member_type = "structure",
        },
        volumesFrom = {
            type = "list",
            member_type = "structure",
        },
        linuxParameters = {
            type = "structure",
        },
        secrets = {
            type = "list",
            member_type = "structure",
        },
        dependsOn = {
            type = "list",
            member_type = "structure",
        },
        startTimeout = {
            type = "number",
        },
        stopTimeout = {
            type = "number",
        },
        versionConsistency = {
            type = "string",
        },
        hostname = {
            type = "string",
        },
        user = {
            type = "string",
        },
        workingDirectory = {
            type = "string",
        },
        disableNetworking = {
            type = "boolean",
        },
        privileged = {
            type = "boolean",
        },
        readonlyRootFilesystem = {
            type = "boolean",
        },
        dnsServers = {
            type = "list",
            member_type = "string",
        },
        dnsSearchDomains = {
            type = "list",
            member_type = "string",
        },
        extraHosts = {
            type = "list",
            member_type = "structure",
        },
        dockerSecurityOptions = {
            type = "list",
            member_type = "string",
        },
        interactive = {
            type = "boolean",
        },
        pseudoTerminal = {
            type = "boolean",
        },
        dockerLabels = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ulimits = {
            type = "list",
            member_type = "structure",
        },
        logConfiguration = {
            type = "structure",
        },
        healthCheck = {
            type = "structure",
        },
        systemControls = {
            type = "list",
            member_type = "structure",
        },
        resourceRequirements = {
            type = "list",
            member_type = "structure",
        },
        firelensConfiguration = {
            type = "structure",
        },
        credentialSpecs = {
            type = "list",
            member_type = "string",
        },
    },
}

M.EphemeralStorage = {
    type = "structure",
    members = {
        sizeInGiB = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.InferenceAccelerator = {
    type = "structure",
    members = {
        deviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deviceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IpcMode = {
    HOST = "host",
    TASK = "task",
    NONE = "none",
}

M.NetworkMode = {
    BRIDGE = "bridge",
    HOST = "host",
    AWSVPC = "awsvpc",
    NONE = "none",
}

M.PidMode = {
    HOST = "host",
    TASK = "task",
}

M.TaskDefinitionPlacementConstraintType = {
    MEMBER_OF = "memberOf",
}

M.TaskDefinitionPlacementConstraint = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        expression = {
            type = "string",
        },
    },
}

M.ProxyConfigurationType = {
    APPMESH = "APPMESH",
}

M.ProxyConfiguration = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        containerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        properties = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CPUArchitecture = {
    X86_64 = "X86_64",
    ARM64 = "ARM64",
}

M.OSFamily = {
    WINDOWS_SERVER_2019_FULL = "WINDOWS_SERVER_2019_FULL",
    WINDOWS_SERVER_2019_CORE = "WINDOWS_SERVER_2019_CORE",
    WINDOWS_SERVER_2016_FULL = "WINDOWS_SERVER_2016_FULL",
    WINDOWS_SERVER_2004_CORE = "WINDOWS_SERVER_2004_CORE",
    WINDOWS_SERVER_2022_CORE = "WINDOWS_SERVER_2022_CORE",
    WINDOWS_SERVER_2022_FULL = "WINDOWS_SERVER_2022_FULL",
    WINDOWS_SERVER_2025_CORE = "WINDOWS_SERVER_2025_CORE",
    WINDOWS_SERVER_2025_FULL = "WINDOWS_SERVER_2025_FULL",
    WINDOWS_SERVER_20H2_CORE = "WINDOWS_SERVER_20H2_CORE",
    LINUX = "LINUX",
}

M.RuntimePlatform = {
    type = "structure",
    members = {
        cpuArchitecture = {
            type = "string",
        },
        operatingSystemFamily = {
            type = "string",
        },
    },
}

M.TaskDefinitionStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
}

M.Scope = {
    TASK = "task",
    SHARED = "shared",
}

M.DockerVolumeConfiguration = {
    type = "structure",
    members = {
        scope = {
            type = "string",
        },
        autoprovision = {
            type = "boolean",
        },
        driver = {
            type = "string",
        },
        driverOpts = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        labels = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.EFSAuthorizationConfigIAM = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.EFSAuthorizationConfig = {
    type = "structure",
    members = {
        accessPointId = {
            type = "string",
        },
        iam = {
            type = "string",
        },
    },
}

M.EFSTransitEncryption = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.EFSVolumeConfiguration = {
    type = "structure",
    members = {
        fileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        rootDirectory = {
            type = "string",
        },
        transitEncryption = {
            type = "string",
        },
        transitEncryptionPort = {
            type = "number",
        },
        authorizationConfig = {
            type = "structure",
        },
    },
}

M.FSxWindowsFileServerAuthorizationConfig = {
    type = "structure",
    members = {
        credentialsParameter = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FSxWindowsFileServerVolumeConfiguration = {
    type = "structure",
    members = {
        fileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        rootDirectory = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authorizationConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.S3FilesVolumeConfiguration = {
    type = "structure",
    members = {
        fileSystemArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        rootDirectory = {
            type = "string",
        },
        transitEncryptionPort = {
            type = "number",
        },
        accessPointArn = {
            type = "string",
        },
    },
}

M.Volume = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        host = {
            type = "structure",
        },
        dockerVolumeConfiguration = {
            type = "structure",
        },
        efsVolumeConfiguration = {
            type = "structure",
        },
        s3filesVolumeConfiguration = {
            type = "structure",
        },
        fsxWindowsFileServerVolumeConfiguration = {
            type = "structure",
        },
        configuredAtLaunch = {
            type = "boolean",
        },
    },
}

M.TaskDefinition = {
    type = "structure",
    members = {
        taskDefinitionArn = {
            type = "string",
        },
        containerDefinitions = {
            type = "list",
            member_type = "structure",
        },
        family = {
            type = "string",
        },
        taskRoleArn = {
            type = "string",
        },
        executionRoleArn = {
            type = "string",
        },
        networkMode = {
            type = "string",
        },
        revision = {
            type = "number",
        },
        volumes = {
            type = "list",
            member_type = "structure",
        },
        status = {
            type = "string",
        },
        requiresAttributes = {
            type = "list",
            member_type = "structure",
        },
        placementConstraints = {
            type = "list",
            member_type = "structure",
        },
        compatibilities = {
            type = "list",
            member_type = "string",
        },
        runtimePlatform = {
            type = "structure",
        },
        requiresCompatibilities = {
            type = "list",
            member_type = "string",
        },
        cpu = {
            type = "string",
        },
        memory = {
            type = "string",
        },
        inferenceAccelerators = {
            type = "list",
            member_type = "structure",
        },
        pidMode = {
            type = "string",
        },
        ipcMode = {
            type = "string",
        },
        proxyConfiguration = {
            type = "structure",
        },
        registeredAt = {
            type = "timestamp",
        },
        deregisteredAt = {
            type = "timestamp",
        },
        deleteRequestedAt = {
            type = "timestamp",
        },
        registeredBy = {
            type = "string",
        },
        ephemeralStorage = {
            type = "structure",
        },
        enableFaultInjection = {
            type = "boolean",
        },
    },
}

M.DeregisterTaskDefinitionOutput = {
    type = "structure",
    members = {
        taskDefinition = {
            type = "structure",
        },
    },
}

M.TaskDefinitionField = {
    TAGS = "TAGS",
}

M.DescribeTaskDefinitionInput = {
    type = "structure",
    members = {
        taskDefinition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        include = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeTaskDefinitionOutput = {
    type = "structure",
    members = {
        taskDefinition = {
            type = "structure",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DiscoverPollEndpointInput = {
    type = "structure",
    members = {
        containerInstance = {
            type = "string",
        },
        cluster = {
            type = "string",
        },
    },
}

M.DiscoverPollEndpointOutput = {
    type = "structure",
    members = {
        endpoint = {
            type = "string",
        },
        telemetryEndpoint = {
            type = "string",
        },
        serviceConnectEndpoint = {
            type = "string",
        },
    },
}

M.ListAccountSettingsInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        value = {
            type = "string",
        },
        principalArn = {
            type = "string",
        },
        effectiveSettings = {
            type = "boolean",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.ListAccountSettingsOutput = {
    type = "structure",
    members = {
        settings = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListServicesByNamespaceInput = {
    type = "structure",
    members = {
        namespace = {
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

M.ListServicesByNamespaceOutput = {
    type = "structure",
    members = {
        serviceArns = {
            type = "list",
            member_type = "string",
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
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TaskDefinitionFamilyStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    ALL = "ALL",
}

M.ListTaskDefinitionFamiliesInput = {
    type = "structure",
    members = {
        familyPrefix = {
            type = "string",
        },
        status = {
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

M.ListTaskDefinitionFamiliesOutput = {
    type = "structure",
    members = {
        families = {
            type = "list",
            member_type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PutAccountSettingInput = {
    type = "structure",
    members = {
        name = {
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
        principalArn = {
            type = "string",
        },
    },
}

M.PutAccountSettingOutput = {
    type = "structure",
    members = {
        setting = {
            type = "structure",
        },
    },
}

M.PutAccountSettingDefaultInput = {
    type = "structure",
    members = {
        name = {
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

M.PutAccountSettingDefaultOutput = {
    type = "structure",
    members = {
        setting = {
            type = "structure",
        },
    },
}

M.DescribeServiceDeploymentsInput = {
    type = "structure",
    members = {
        serviceDeploymentArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceDeploymentRollbackMonitorsStatus = {
    TRIGGERED = "TRIGGERED",
    MONITORING = "MONITORING",
    MONITORING_COMPLETE = "MONITORING_COMPLETE",
    DISABLED = "DISABLED",
}

M.ServiceDeploymentAlarms = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        alarmNames = {
            type = "list",
            member_type = "string",
        },
        triggeredAlarmNames = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ServiceDeploymentCircuitBreaker = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        failureCount = {
            type = "number",
        },
        threshold = {
            type = "number",
        },
    },
}

M.DeploymentAlarms = {
    type = "structure",
    members = {
        alarmNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        rollback = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        enable = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.CanaryConfiguration = {
    type = "structure",
    members = {
        canaryPercent = {
            type = "number",
        },
        canaryBakeTimeInMinutes = {
            type = "number",
        },
    },
}

M.DeploymentCircuitBreaker = {
    type = "structure",
    members = {
        enable = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        rollback = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.DeploymentLifecycleHookStage = {
    RECONCILE_SERVICE = "RECONCILE_SERVICE",
    PRE_SCALE_UP = "PRE_SCALE_UP",
    POST_SCALE_UP = "POST_SCALE_UP",
    TEST_TRAFFIC_SHIFT = "TEST_TRAFFIC_SHIFT",
    POST_TEST_TRAFFIC_SHIFT = "POST_TEST_TRAFFIC_SHIFT",
    PRODUCTION_TRAFFIC_SHIFT = "PRODUCTION_TRAFFIC_SHIFT",
    POST_PRODUCTION_TRAFFIC_SHIFT = "POST_PRODUCTION_TRAFFIC_SHIFT",
}

M.DeploymentLifecycleHook = {
    type = "structure",
    members = {
        hookTargetArn = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        lifecycleStages = {
            type = "list",
            member_type = "string",
        },
        hookDetails = {
            type = "document",
        },
    },
}

M.LinearConfiguration = {
    type = "structure",
    members = {
        stepPercent = {
            type = "number",
        },
        stepBakeTimeInMinutes = {
            type = "number",
        },
    },
}

M.DeploymentStrategy = {
    ROLLING = "ROLLING",
    BLUE_GREEN = "BLUE_GREEN",
    LINEAR = "LINEAR",
    CANARY = "CANARY",
}

M.DeploymentConfiguration = {
    type = "structure",
    members = {
        deploymentCircuitBreaker = {
            type = "structure",
        },
        maximumPercent = {
            type = "number",
        },
        minimumHealthyPercent = {
            type = "number",
        },
        alarms = {
            type = "structure",
        },
        strategy = {
            type = "string",
        },
        bakeTimeInMinutes = {
            type = "number",
        },
        lifecycleHooks = {
            type = "list",
            member_type = "structure",
        },
        linearConfiguration = {
            type = "structure",
        },
        canaryConfiguration = {
            type = "structure",
        },
    },
}

M.ServiceDeploymentLifecycleStage = {
    RECONCILE_SERVICE = "RECONCILE_SERVICE",
    PRE_SCALE_UP = "PRE_SCALE_UP",
    SCALE_UP = "SCALE_UP",
    POST_SCALE_UP = "POST_SCALE_UP",
    TEST_TRAFFIC_SHIFT = "TEST_TRAFFIC_SHIFT",
    POST_TEST_TRAFFIC_SHIFT = "POST_TEST_TRAFFIC_SHIFT",
    PRODUCTION_TRAFFIC_SHIFT = "PRODUCTION_TRAFFIC_SHIFT",
    POST_PRODUCTION_TRAFFIC_SHIFT = "POST_PRODUCTION_TRAFFIC_SHIFT",
    BAKE_TIME = "BAKE_TIME",
    CLEAN_UP = "CLEAN_UP",
}

M.Rollback = {
    type = "structure",
    members = {
        reason = {
            type = "string",
        },
        startedAt = {
            type = "timestamp",
        },
        serviceRevisionArn = {
            type = "string",
        },
    },
}

M.ServiceRevisionSummary = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        requestedTaskCount = {
            type = "number",
        },
        runningTaskCount = {
            type = "number",
        },
        pendingTaskCount = {
            type = "number",
        },
        requestedTestTrafficWeight = {
            type = "number",
        },
        requestedProductionTrafficWeight = {
            type = "number",
        },
    },
}

M.ServiceDeploymentStatus = {
    PENDING = "PENDING",
    SUCCESSFUL = "SUCCESSFUL",
    STOPPED = "STOPPED",
    STOP_REQUESTED = "STOP_REQUESTED",
    IN_PROGRESS = "IN_PROGRESS",
    ROLLBACK_REQUESTED = "ROLLBACK_REQUESTED",
    ROLLBACK_IN_PROGRESS = "ROLLBACK_IN_PROGRESS",
    ROLLBACK_SUCCESSFUL = "ROLLBACK_SUCCESSFUL",
    ROLLBACK_FAILED = "ROLLBACK_FAILED",
}

M.ServiceDeployment = {
    type = "structure",
    members = {
        serviceDeploymentArn = {
            type = "string",
        },
        serviceArn = {
            type = "string",
        },
        clusterArn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        startedAt = {
            type = "timestamp",
        },
        finishedAt = {
            type = "timestamp",
        },
        stoppedAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        sourceServiceRevisions = {
            type = "list",
            member_type = "structure",
        },
        targetServiceRevision = {
            type = "structure",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        lifecycleStage = {
            type = "string",
        },
        deploymentConfiguration = {
            type = "structure",
        },
        rollback = {
            type = "structure",
        },
        deploymentCircuitBreaker = {
            type = "structure",
        },
        alarms = {
            type = "structure",
        },
    },
}

M.DescribeServiceDeploymentsOutput = {
    type = "structure",
    members = {
        serviceDeployments = {
            type = "list",
            member_type = "structure",
        },
        failures = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ExpressGatewayServiceNetworkConfiguration = {
    type = "structure",
    members = {
        securityGroups = {
            type = "list",
            member_type = "string",
        },
        subnets = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ExpressGatewayServiceAwsLogsConfiguration = {
    type = "structure",
    members = {
        logGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logStreamPrefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExpressGatewayRepositoryCredentials = {
    type = "structure",
    members = {
        credentialsParameter = {
            type = "string",
        },
    },
}

M.ExpressGatewayContainer = {
    type = "structure",
    members = {
        image = {
            type = "string",
            traits = {
                required = true,
            },
        },
        containerPort = {
            type = "number",
        },
        awsLogsConfiguration = {
            type = "structure",
        },
        repositoryCredentials = {
            type = "structure",
        },
        command = {
            type = "list",
            member_type = "string",
        },
        environment = {
            type = "list",
            member_type = "structure",
        },
        secrets = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ExpressGatewayServiceScalingMetric = {
    AverageCPUUtilization = "AVERAGE_CPU",
    AverageMemoryUtilization = "AVERAGE_MEMORY",
    RequestCountPerTarget = "REQUEST_COUNT_PER_TARGET",
}

M.ExpressGatewayScalingTarget = {
    type = "structure",
    members = {
        minTaskCount = {
            type = "number",
        },
        maxTaskCount = {
            type = "number",
        },
        autoScalingMetric = {
            type = "string",
        },
        autoScalingTargetValue = {
            type = "number",
        },
    },
}

M.CreateExpressGatewayServiceInput = {
    type = "structure",
    members = {
        executionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        infrastructureRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceName = {
            type = "string",
        },
        cluster = {
            type = "string",
        },
        healthCheckPath = {
            type = "string",
        },
        primaryContainer = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        taskRoleArn = {
            type = "string",
        },
        networkConfiguration = {
            type = "structure",
        },
        cpu = {
            type = "string",
        },
        memory = {
            type = "string",
        },
        scalingTarget = {
            type = "structure",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.IngressPathSummary = {
    type = "structure",
    members = {
        accessType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        endpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExpressGatewayServiceConfiguration = {
    type = "structure",
    members = {
        serviceRevisionArn = {
            type = "string",
        },
        executionRoleArn = {
            type = "string",
        },
        taskRoleArn = {
            type = "string",
        },
        cpu = {
            type = "string",
        },
        memory = {
            type = "string",
        },
        networkConfiguration = {
            type = "structure",
        },
        healthCheckPath = {
            type = "string",
        },
        primaryContainer = {
            type = "structure",
        },
        scalingTarget = {
            type = "structure",
        },
        ingressPaths = {
            type = "list",
            member_type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
    },
}

M.ExpressGatewayServiceStatusCode = {
    ACTIVE = "ACTIVE",
    DRAINING = "DRAINING",
    INACTIVE = "INACTIVE",
}

M.ExpressGatewayServiceStatus = {
    type = "structure",
    members = {
        statusCode = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
    },
}

M.ECSExpressGatewayService = {
    type = "structure",
    members = {
        cluster = {
            type = "string",
        },
        serviceName = {
            type = "string",
        },
        serviceArn = {
            type = "string",
        },
        infrastructureRoleArn = {
            type = "string",
        },
        status = {
            type = "structure",
        },
        currentDeployment = {
            type = "string",
        },
        activeConfigurations = {
            type = "list",
            member_type = "structure",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
    },
}

M.CreateExpressGatewayServiceOutput = {
    type = "structure",
    members = {
        service = {
            type = "structure",
        },
    },
}

M.PlatformTaskDefinitionIncompatibilityException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AvailabilityZoneRebalancing = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.DeploymentControllerType = {
    ECS = "ECS",
    CODE_DEPLOY = "CODE_DEPLOY",
    EXTERNAL = "EXTERNAL",
}

M.DeploymentController = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LoadBalancer = {
    type = "structure",
    members = {
        targetGroupArn = {
            type = "string",
        },
        loadBalancerName = {
            type = "string",
        },
        containerName = {
            type = "string",
        },
        containerPort = {
            type = "number",
        },
        advancedConfiguration = {
            type = "structure",
        },
    },
}

M.AssignPublicIp = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AwsVpcConfiguration = {
    type = "structure",
    members = {
        subnets = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        securityGroups = {
            type = "list",
            member_type = "string",
        },
        assignPublicIp = {
            type = "string",
        },
    },
}

M.NetworkConfiguration = {
    type = "structure",
    members = {
        awsvpcConfiguration = {
            type = "structure",
        },
    },
}

M.PlacementConstraintType = {
    DISTINCT_INSTANCE = "distinctInstance",
    MEMBER_OF = "memberOf",
}

M.PlacementConstraint = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        expression = {
            type = "string",
        },
    },
}

M.PlacementStrategyType = {
    RANDOM = "random",
    SPREAD = "spread",
    BINPACK = "binpack",
}

M.PlacementStrategy = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        field = {
            type = "string",
        },
    },
}

M.PropagateTags = {
    TASK_DEFINITION = "TASK_DEFINITION",
    SERVICE = "SERVICE",
    NONE = "NONE",
}

M.SchedulingStrategy = {
    REPLICA = "REPLICA",
    DAEMON = "DAEMON",
}

M.ServiceConnectAccessLoggingFormat = {
    TEXT = "TEXT",
    JSON = "JSON",
}

M.ServiceConnectIncludeQueryParameters = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.ServiceConnectAccessLogConfiguration = {
    type = "structure",
    members = {
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        includeQueryParameters = {
            type = "string",
        },
    },
}

M.ServiceConnectTestTrafficHeaderMatchRules = {
    type = "structure",
    members = {
        exact = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceConnectTestTrafficHeaderRules = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "structure",
        },
    },
}

M.ServiceConnectTestTrafficRules = {
    type = "structure",
    members = {
        header = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceConnectClientAlias = {
    type = "structure",
    members = {
        port = {
            type = "number",
            traits = {
                required = true,
            },
        },
        dnsName = {
            type = "string",
        },
        testTrafficRules = {
            type = "structure",
        },
    },
}

M.TimeoutConfiguration = {
    type = "structure",
    members = {
        idleTimeoutSeconds = {
            type = "number",
        },
        perRequestTimeoutSeconds = {
            type = "number",
        },
    },
}

M.ServiceConnectTlsCertificateAuthority = {
    type = "structure",
    members = {
        awsPcaAuthorityArn = {
            type = "string",
        },
    },
}

M.ServiceConnectTlsConfiguration = {
    type = "structure",
    members = {
        issuerCertificateAuthority = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        kmsKey = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
    },
}

M.ServiceConnectService = {
    type = "structure",
    members = {
        portName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        discoveryName = {
            type = "string",
        },
        clientAliases = {
            type = "list",
            member_type = "structure",
        },
        ingressPortOverride = {
            type = "number",
        },
        timeout = {
            type = "structure",
        },
        tls = {
            type = "structure",
        },
    },
}

M.ServiceConnectConfiguration = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        namespace = {
            type = "string",
        },
        services = {
            type = "list",
            member_type = "structure",
        },
        logConfiguration = {
            type = "structure",
        },
        accessLogConfiguration = {
            type = "structure",
        },
    },
}

M.ServiceRegistry = {
    type = "structure",
    members = {
        registryArn = {
            type = "string",
        },
        port = {
            type = "number",
        },
        containerName = {
            type = "string",
        },
        containerPort = {
            type = "number",
        },
    },
}

M.TaskFilesystemType = {
    EXT3 = "ext3",
    EXT4 = "ext4",
    XFS = "xfs",
    NTFS = "ntfs",
}

M.EBSResourceType = {
    VOLUME = "volume",
}

M.EBSTagSpecification = {
    type = "structure",
    members = {
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        propagateTags = {
            type = "string",
        },
    },
}

M.ServiceManagedEBSVolumeConfiguration = {
    type = "structure",
    members = {
        encrypted = {
            type = "boolean",
        },
        kmsKeyId = {
            type = "string",
        },
        volumeType = {
            type = "string",
        },
        sizeInGiB = {
            type = "number",
        },
        snapshotId = {
            type = "string",
        },
        volumeInitializationRate = {
            type = "number",
        },
        iops = {
            type = "number",
        },
        throughput = {
            type = "number",
        },
        tagSpecifications = {
            type = "list",
            member_type = "structure",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filesystemType = {
            type = "string",
        },
    },
}

M.ServiceVolumeConfiguration = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        managedEBSVolume = {
            type = "structure",
        },
    },
}

M.VpcLatticeConfiguration = {
    type = "structure",
    members = {
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        portName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateServiceInput = {
    type = "structure",
    members = {
        cluster = {
            type = "string",
        },
        serviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskDefinition = {
            type = "string",
        },
        availabilityZoneRebalancing = {
            type = "string",
        },
        loadBalancers = {
            type = "list",
            member_type = "structure",
        },
        serviceRegistries = {
            type = "list",
            member_type = "structure",
        },
        desiredCount = {
            type = "number",
        },
        clientToken = {
            type = "string",
        },
        launchType = {
            type = "string",
        },
        capacityProviderStrategy = {
            type = "list",
            member_type = "structure",
        },
        platformVersion = {
            type = "string",
        },
        role = {
            type = "string",
        },
        deploymentConfiguration = {
            type = "structure",
        },
        placementConstraints = {
            type = "list",
            member_type = "structure",
        },
        placementStrategy = {
            type = "list",
            member_type = "structure",
        },
        networkConfiguration = {
            type = "structure",
        },
        healthCheckGracePeriodSeconds = {
            type = "number",
        },
        schedulingStrategy = {
            type = "string",
        },
        deploymentController = {
            type = "structure",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        enableECSManagedTags = {
            type = "boolean",
        },
        propagateTags = {
            type = "string",
        },
        enableExecuteCommand = {
            type = "boolean",
        },
        serviceConnectConfiguration = {
            type = "structure",
        },
        volumeConfigurations = {
            type = "list",
            member_type = "structure",
        },
        vpcLatticeConfigurations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ServiceCurrentRevisionSummary = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        requestedTaskCount = {
            type = "number",
        },
        runningTaskCount = {
            type = "number",
        },
        pendingTaskCount = {
            type = "number",
        },
    },
}

M.DeploymentEphemeralStorage = {
    type = "structure",
    members = {
        kmsKeyId = {
            type = "string",
        },
    },
}

M.DeploymentRolloutState = {
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    IN_PROGRESS = "IN_PROGRESS",
}

M.ServiceConnectServiceResource = {
    type = "structure",
    members = {
        discoveryName = {
            type = "string",
        },
        discoveryArn = {
            type = "string",
        },
    },
}

M.Deployment = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        status = {
            type = "string",
        },
        taskDefinition = {
            type = "string",
        },
        desiredCount = {
            type = "number",
        },
        pendingCount = {
            type = "number",
        },
        runningCount = {
            type = "number",
        },
        failedTasks = {
            type = "number",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        capacityProviderStrategy = {
            type = "list",
            member_type = "structure",
        },
        launchType = {
            type = "string",
        },
        platformVersion = {
            type = "string",
        },
        platformFamily = {
            type = "string",
        },
        networkConfiguration = {
            type = "structure",
        },
        rolloutState = {
            type = "string",
        },
        rolloutStateReason = {
            type = "string",
        },
        serviceConnectConfiguration = {
            type = "structure",
        },
        serviceConnectResources = {
            type = "list",
            member_type = "structure",
        },
        volumeConfigurations = {
            type = "list",
            member_type = "structure",
        },
        fargateEphemeralStorage = {
            type = "structure",
        },
        vpcLatticeConfigurations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ServiceEvent = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        message = {
            type = "string",
        },
    },
}

M.ResourceManagementType = {
    CUSTOMER = "CUSTOMER",
    ECS = "ECS",
}

M.ScaleUnit = {
    PERCENT = "PERCENT",
}

M.Scale = {
    type = "structure",
    members = {
        value = {
            type = "number",
        },
        unit = {
            type = "string",
        },
    },
}

M.StabilityStatus = {
    STEADY_STATE = "STEADY_STATE",
    STABILIZING = "STABILIZING",
}

M.TaskSet = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        taskSetArn = {
            type = "string",
        },
        serviceArn = {
            type = "string",
        },
        clusterArn = {
            type = "string",
        },
        startedBy = {
            type = "string",
        },
        externalId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        taskDefinition = {
            type = "string",
        },
        computedDesiredCount = {
            type = "number",
        },
        pendingCount = {
            type = "number",
        },
        runningCount = {
            type = "number",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        launchType = {
            type = "string",
        },
        capacityProviderStrategy = {
            type = "list",
            member_type = "structure",
        },
        platformVersion = {
            type = "string",
        },
        platformFamily = {
            type = "string",
        },
        networkConfiguration = {
            type = "structure",
        },
        loadBalancers = {
            type = "list",
            member_type = "structure",
        },
        serviceRegistries = {
            type = "list",
            member_type = "structure",
        },
        scale = {
            type = "structure",
        },
        stabilityStatus = {
            type = "string",
        },
        stabilityStatusAt = {
            type = "timestamp",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        fargateEphemeralStorage = {
            type = "structure",
        },
    },
}

M.Service = {
    type = "structure",
    members = {
        serviceArn = {
            type = "string",
        },
        serviceName = {
            type = "string",
        },
        clusterArn = {
            type = "string",
        },
        loadBalancers = {
            type = "list",
            member_type = "structure",
        },
        serviceRegistries = {
            type = "list",
            member_type = "structure",
        },
        status = {
            type = "string",
        },
        desiredCount = {
            type = "number",
        },
        runningCount = {
            type = "number",
        },
        pendingCount = {
            type = "number",
        },
        launchType = {
            type = "string",
        },
        capacityProviderStrategy = {
            type = "list",
            member_type = "structure",
        },
        platformVersion = {
            type = "string",
        },
        platformFamily = {
            type = "string",
        },
        taskDefinition = {
            type = "string",
        },
        deploymentConfiguration = {
            type = "structure",
        },
        taskSets = {
            type = "list",
            member_type = "structure",
        },
        deployments = {
            type = "list",
            member_type = "structure",
        },
        roleArn = {
            type = "string",
        },
        events = {
            type = "list",
            member_type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        currentServiceDeployment = {
            type = "string",
        },
        currentServiceRevisions = {
            type = "list",
            member_type = "structure",
        },
        placementConstraints = {
            type = "list",
            member_type = "structure",
        },
        placementStrategy = {
            type = "list",
            member_type = "structure",
        },
        networkConfiguration = {
            type = "structure",
        },
        healthCheckGracePeriodSeconds = {
            type = "number",
        },
        schedulingStrategy = {
            type = "string",
        },
        deploymentController = {
            type = "structure",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        createdBy = {
            type = "string",
        },
        enableECSManagedTags = {
            type = "boolean",
        },
        propagateTags = {
            type = "string",
        },
        enableExecuteCommand = {
            type = "boolean",
        },
        availabilityZoneRebalancing = {
            type = "string",
        },
        resourceManagementType = {
            type = "string",
        },
    },
}

M.CreateServiceOutput = {
    type = "structure",
    members = {
        service = {
            type = "structure",
        },
    },
}

M.DeleteExpressGatewayServiceInput = {
    type = "structure",
    members = {
        serviceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteExpressGatewayServiceOutput = {
    type = "structure",
    members = {
        service = {
            type = "structure",
        },
    },
}

M.ServiceNotActiveException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteServiceInput = {
    type = "structure",
    members = {
        cluster = {
            type = "string",
        },
        service = {
            type = "string",
            traits = {
                required = true,
            },
        },
        force = {
            type = "boolean",
        },
    },
}

M.DeleteServiceOutput = {
    type = "structure",
    members = {
        service = {
            type = "structure",
        },
    },
}

M.ExpressGatewayServiceInclude = {
    TAGS = "TAGS",
}

M.DescribeExpressGatewayServiceInput = {
    type = "structure",
    members = {
        serviceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        include = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeExpressGatewayServiceOutput = {
    type = "structure",
    members = {
        service = {
            type = "structure",
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

M.ServiceField = {
    TAGS = "TAGS",
}

M.DescribeServicesInput = {
    type = "structure",
    members = {
        cluster = {
            type = "string",
        },
        services = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        include = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeServicesOutput = {
    type = "structure",
    members = {
        services = {
            type = "list",
            member_type = "structure",
        },
        failures = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListServiceDeploymentsInput = {
    type = "structure",
    members = {
        service = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cluster = {
            type = "string",
        },
        status = {
            type = "list",
            member_type = "string",
        },
        createdAt = {
            type = "structure",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.ServiceDeploymentBrief = {
    type = "structure",
    members = {
        serviceDeploymentArn = {
            type = "string",
        },
        serviceArn = {
            type = "string",
        },
        clusterArn = {
            type = "string",
        },
        startedAt = {
            type = "timestamp",
        },
        createdAt = {
            type = "timestamp",
        },
        finishedAt = {
            type = "timestamp",
        },
        targetServiceRevisionArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
    },
}

M.ListServiceDeploymentsOutput = {
    type = "structure",
    members = {
        serviceDeployments = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListServicesInput = {
    type = "structure",
    members = {
        cluster = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
        launchType = {
            type = "string",
        },
        schedulingStrategy = {
            type = "string",
        },
        resourceManagementType = {
            type = "string",
        },
    },
}

M.ListServicesOutput = {
    type = "structure",
    members = {
        serviceArns = {
            type = "list",
            member_type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        resourceIds = {
            type = "list",
            member_type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.ServiceDeploymentNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StopServiceDeploymentStopType = {
    ABORT = "ABORT",
    ROLLBACK = "ROLLBACK",
}

M.StopServiceDeploymentInput = {
    type = "structure",
    members = {
        serviceDeploymentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stopType = {
            type = "string",
        },
    },
}

M.StopServiceDeploymentOutput = {
    type = "structure",
    members = {
        serviceDeploymentArn = {
            type = "string",
        },
    },
}

M.UpdateExpressGatewayServiceInput = {
    type = "structure",
    members = {
        serviceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionRoleArn = {
            type = "string",
        },
        healthCheckPath = {
            type = "string",
        },
        primaryContainer = {
            type = "structure",
        },
        taskRoleArn = {
            type = "string",
        },
        networkConfiguration = {
            type = "structure",
        },
        cpu = {
            type = "string",
        },
        memory = {
            type = "string",
        },
        scalingTarget = {
            type = "structure",
        },
    },
}

M.UpdatedExpressGatewayService = {
    type = "structure",
    members = {
        serviceArn = {
            type = "string",
        },
        cluster = {
            type = "string",
        },
        serviceName = {
            type = "string",
        },
        status = {
            type = "structure",
        },
        targetConfiguration = {
            type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
    },
}

M.UpdateExpressGatewayServiceOutput = {
    type = "structure",
    members = {
        service = {
            type = "structure",
        },
    },
}

M.UpdateServiceInput = {
    type = "structure",
    members = {
        cluster = {
            type = "string",
        },
        service = {
            type = "string",
            traits = {
                required = true,
            },
        },
        desiredCount = {
            type = "number",
        },
        taskDefinition = {
            type = "string",
        },
        capacityProviderStrategy = {
            type = "list",
            member_type = "structure",
        },
        deploymentConfiguration = {
            type = "structure",
        },
        availabilityZoneRebalancing = {
            type = "string",
        },
        networkConfiguration = {
            type = "structure",
        },
        placementConstraints = {
            type = "list",
            member_type = "structure",
        },
        placementStrategy = {
            type = "list",
            member_type = "structure",
        },
        platformVersion = {
            type = "string",
        },
        forceNewDeployment = {
            type = "boolean",
        },
        healthCheckGracePeriodSeconds = {
            type = "number",
        },
        deploymentController = {
            type = "structure",
        },
        enableExecuteCommand = {
            type = "boolean",
        },
        enableECSManagedTags = {
            type = "boolean",
        },
        loadBalancers = {
            type = "list",
            member_type = "structure",
        },
        propagateTags = {
            type = "string",
        },
        serviceRegistries = {
            type = "list",
            member_type = "structure",
        },
        serviceConnectConfiguration = {
            type = "structure",
        },
        volumeConfigurations = {
            type = "list",
            member_type = "structure",
        },
        vpcLatticeConfigurations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateServiceOutput = {
    type = "structure",
    members = {
        service = {
            type = "structure",
        },
    },
}

M.TaskSetNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdateServicePrimaryTaskSetInput = {
    type = "structure",
    members = {
        cluster = {
            type = "string",
            traits = {
                required = true,
            },
        },
        service = {
            type = "string",
            traits = {
                required = true,
            },
        },
        primaryTaskSet = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateServicePrimaryTaskSetOutput = {
    type = "structure",
    members = {
        taskSet = {
            type = "structure",
        },
    },
}

M.DescribeServiceRevisionsInput = {
    type = "structure",
    members = {
        serviceRevisionArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ContainerImage = {
    type = "structure",
    members = {
        containerName = {
            type = "string",
        },
        imageDigest = {
            type = "string",
        },
        image = {
            type = "string",
        },
    },
}

M.ManagedResourceStatus = {
    PROVISIONING = "PROVISIONING",
    ACTIVE = "ACTIVE",
    DEPROVISIONING = "DEPROVISIONING",
    DELETED = "DELETED",
    FAILED = "FAILED",
}

M.ManagedApplicationAutoScalingPolicy = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        policyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetValue = {
            type = "number",
            traits = {
                required = true,
            },
        },
        metric = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ManagedScalableTarget = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        minCapacity = {
            type = "number",
            traits = {
                required = true,
            },
        },
        maxCapacity = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ManagedAutoScaling = {
    type = "structure",
    members = {
        scalableTarget = {
            type = "structure",
        },
        applicationAutoScalingPolicies = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ManagedCertificate = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        domainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ManagedListener = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ManagedLoadBalancer = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        scheme = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subnetIds = {
            type = "list",
            member_type = "string",
        },
        securityGroupIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ManagedSecurityGroup = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ManagedListenerRule = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ManagedTargetGroup = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        healthCheckPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        healthCheckPort = {
            type = "number",
            traits = {
                required = true,
            },
        },
        port = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ManagedIngressPath = {
    type = "structure",
    members = {
        accessType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        endpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        loadBalancer = {
            type = "structure",
        },
        loadBalancerSecurityGroups = {
            type = "list",
            member_type = "structure",
        },
        certificate = {
            type = "structure",
        },
        listener = {
            type = "structure",
        },
        rule = {
            type = "structure",
        },
        targetGroups = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ManagedLogGroup = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        logGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ManagedMetricAlarm = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ECSManagedResources = {
    type = "structure",
    members = {
        ingressPaths = {
            type = "list",
            member_type = "structure",
        },
        autoScaling = {
            type = "structure",
        },
        metricAlarms = {
            type = "list",
            member_type = "structure",
        },
        serviceSecurityGroups = {
            type = "list",
            member_type = "structure",
        },
        logGroups = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ServiceRevisionLoadBalancer = {
    type = "structure",
    members = {
        targetGroupArn = {
            type = "string",
        },
        productionListenerRule = {
            type = "string",
        },
    },
}

M.ResolvedConfiguration = {
    type = "structure",
    members = {
        loadBalancers = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ServiceRevision = {
    type = "structure",
    members = {
        serviceRevisionArn = {
            type = "string",
        },
        serviceArn = {
            type = "string",
        },
        clusterArn = {
            type = "string",
        },
        taskDefinition = {
            type = "string",
        },
        capacityProviderStrategy = {
            type = "list",
            member_type = "structure",
        },
        launchType = {
            type = "string",
        },
        platformVersion = {
            type = "string",
        },
        platformFamily = {
            type = "string",
        },
        loadBalancers = {
            type = "list",
            member_type = "structure",
        },
        serviceRegistries = {
            type = "list",
            member_type = "structure",
        },
        networkConfiguration = {
            type = "structure",
        },
        containerImages = {
            type = "list",
            member_type = "structure",
        },
        guardDutyEnabled = {
            type = "boolean",
        },
        serviceConnectConfiguration = {
            type = "structure",
        },
        volumeConfigurations = {
            type = "list",
            member_type = "structure",
        },
        fargateEphemeralStorage = {
            type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        vpcLatticeConfigurations = {
            type = "list",
            member_type = "structure",
        },
        resolvedConfiguration = {
            type = "structure",
        },
        ecsManagedResources = {
            type = "structure",
        },
    },
}

M.DescribeServiceRevisionsOutput = {
    type = "structure",
    members = {
        serviceRevisions = {
            type = "list",
            member_type = "structure",
        },
        failures = {
            type = "list",
            member_type = "structure",
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
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.DeleteTaskDefinitionsInput = {
    type = "structure",
    members = {
        taskDefinitions = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTaskDefinitionsOutput = {
    type = "structure",
    members = {
        taskDefinitions = {
            type = "list",
            member_type = "structure",
        },
        failures = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListTaskDefinitionsInput = {
    type = "structure",
    members = {
        familyPrefix = {
            type = "string",
        },
        status = {
            type = "string",
        },
        sort = {
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

M.ListTaskDefinitionsOutput = {
    type = "structure",
    members = {
        taskDefinitionArns = {
            type = "list",
            member_type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RegisterTaskDefinitionInput = {
    type = "structure",
    members = {
        family = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskRoleArn = {
            type = "string",
        },
        executionRoleArn = {
            type = "string",
        },
        networkMode = {
            type = "string",
        },
        containerDefinitions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        volumes = {
            type = "list",
            member_type = "structure",
        },
        placementConstraints = {
            type = "list",
            member_type = "structure",
        },
        requiresCompatibilities = {
            type = "list",
            member_type = "string",
        },
        cpu = {
            type = "string",
        },
        memory = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        pidMode = {
            type = "string",
        },
        ipcMode = {
            type = "string",
        },
        proxyConfiguration = {
            type = "structure",
        },
        inferenceAccelerators = {
            type = "list",
            member_type = "structure",
        },
        ephemeralStorage = {
            type = "structure",
        },
        runtimePlatform = {
            type = "structure",
        },
        enableFaultInjection = {
            type = "boolean",
        },
    },
}

M.RegisterTaskDefinitionOutput = {
    type = "structure",
    members = {
        taskDefinition = {
            type = "structure",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TaskField = {
    TAGS = "TAGS",
}

M.DescribeTasksInput = {
    type = "structure",
    members = {
        cluster = {
            type = "string",
        },
        tasks = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        include = {
            type = "list",
            member_type = "string",
        },
    },
}

M.Connectivity = {
    CONNECTED = "CONNECTED",
    DISCONNECTED = "DISCONNECTED",
}

M.HealthStatus = {
    HEALTHY = "HEALTHY",
    UNHEALTHY = "UNHEALTHY",
    UNKNOWN = "UNKNOWN",
}

M.ManagedAgent = {
    type = "structure",
    members = {
        lastStartedAt = {
            type = "timestamp",
        },
        name = {
            type = "string",
        },
        reason = {
            type = "string",
        },
        lastStatus = {
            type = "string",
        },
    },
}

M.NetworkInterface = {
    type = "structure",
    members = {
        attachmentId = {
            type = "string",
        },
        privateIpv4Address = {
            type = "string",
        },
        ipv6Address = {
            type = "string",
        },
    },
}

M.Container = {
    type = "structure",
    members = {
        containerArn = {
            type = "string",
        },
        taskArn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        image = {
            type = "string",
        },
        imageDigest = {
            type = "string",
        },
        runtimeId = {
            type = "string",
        },
        lastStatus = {
            type = "string",
        },
        exitCode = {
            type = "number",
        },
        reason = {
            type = "string",
        },
        networkBindings = {
            type = "list",
            member_type = "structure",
        },
        networkInterfaces = {
            type = "list",
            member_type = "structure",
        },
        healthStatus = {
            type = "string",
        },
        managedAgents = {
            type = "list",
            member_type = "structure",
        },
        cpu = {
            type = "string",
        },
        memory = {
            type = "string",
        },
        memoryReservation = {
            type = "string",
        },
        gpuIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.TaskEphemeralStorage = {
    type = "structure",
    members = {
        sizeInGiB = {
            type = "number",
        },
        kmsKeyId = {
            type = "string",
        },
    },
}

M.ContainerOverride = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        command = {
            type = "list",
            member_type = "string",
        },
        environment = {
            type = "list",
            member_type = "structure",
        },
        environmentFiles = {
            type = "list",
            member_type = "structure",
        },
        cpu = {
            type = "number",
        },
        memory = {
            type = "number",
        },
        memoryReservation = {
            type = "number",
        },
        resourceRequirements = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.InferenceAcceleratorOverride = {
    type = "structure",
    members = {
        deviceName = {
            type = "string",
        },
        deviceType = {
            type = "string",
        },
    },
}

M.TaskOverride = {
    type = "structure",
    members = {
        containerOverrides = {
            type = "list",
            member_type = "structure",
        },
        cpu = {
            type = "string",
        },
        inferenceAcceleratorOverrides = {
            type = "list",
            member_type = "structure",
        },
        executionRoleArn = {
            type = "string",
        },
        memory = {
            type = "string",
        },
        taskRoleArn = {
            type = "string",
        },
        ephemeralStorage = {
            type = "structure",
        },
    },
}

M.TaskStopCode = {
    TASK_FAILED_TO_START = "TaskFailedToStart",
    ESSENTIAL_CONTAINER_EXITED = "EssentialContainerExited",
    USER_INITIATED = "UserInitiated",
    SERVICE_SCHEDULER_INITIATED = "ServiceSchedulerInitiated",
    SPOT_INTERRUPTION = "SpotInterruption",
    TERMINATION_NOTICE = "TerminationNotice",
}

M.Task = {
    type = "structure",
    members = {
        attachments = {
            type = "list",
            member_type = "structure",
        },
        attributes = {
            type = "list",
            member_type = "structure",
        },
        availabilityZone = {
            type = "string",
        },
        capacityProviderName = {
            type = "string",
        },
        clusterArn = {
            type = "string",
        },
        connectivity = {
            type = "string",
        },
        connectivityAt = {
            type = "timestamp",
        },
        containerInstanceArn = {
            type = "string",
        },
        containers = {
            type = "list",
            member_type = "structure",
        },
        cpu = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        desiredStatus = {
            type = "string",
        },
        enableExecuteCommand = {
            type = "boolean",
        },
        executionStoppedAt = {
            type = "timestamp",
        },
        group = {
            type = "string",
        },
        healthStatus = {
            type = "string",
        },
        inferenceAccelerators = {
            type = "list",
            member_type = "structure",
        },
        lastStatus = {
            type = "string",
        },
        launchType = {
            type = "string",
        },
        memory = {
            type = "string",
        },
        overrides = {
            type = "structure",
        },
        platformVersion = {
            type = "string",
        },
        platformFamily = {
            type = "string",
        },
        pullStartedAt = {
            type = "timestamp",
        },
        pullStoppedAt = {
            type = "timestamp",
        },
        startedAt = {
            type = "timestamp",
        },
        startedBy = {
            type = "string",
        },
        stopCode = {
            type = "string",
        },
        stoppedAt = {
            type = "timestamp",
        },
        stoppedReason = {
            type = "string",
        },
        stoppingAt = {
            type = "timestamp",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        taskArn = {
            type = "string",
        },
        taskDefinitionArn = {
            type = "string",
        },
        version = {
            type = "number",
        },
        ephemeralStorage = {
            type = "structure",
        },
        fargateEphemeralStorage = {
            type = "structure",
        },
    },
}

M.DescribeTasksOutput = {
    type = "structure",
    members = {
        tasks = {
            type = "list",
            member_type = "structure",
        },
        failures = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetTaskProtectionInput = {
    type = "structure",
    members = {
        cluster = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tasks = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ProtectedTask = {
    type = "structure",
    members = {
        taskArn = {
            type = "string",
        },
        protectionEnabled = {
            type = "boolean",
        },
        expirationDate = {
            type = "timestamp",
        },
    },
}

M.GetTaskProtectionOutput = {
    type = "structure",
    members = {
        protectedTasks = {
            type = "list",
            member_type = "structure",
        },
        failures = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BlockedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TaskManagedEBSVolumeTerminationPolicy = {
    type = "structure",
    members = {
        deleteOnTermination = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.TaskManagedEBSVolumeConfiguration = {
    type = "structure",
    members = {
        encrypted = {
            type = "boolean",
        },
        kmsKeyId = {
            type = "string",
        },
        volumeType = {
            type = "string",
        },
        sizeInGiB = {
            type = "number",
        },
        snapshotId = {
            type = "string",
        },
        volumeInitializationRate = {
            type = "number",
        },
        iops = {
            type = "number",
        },
        throughput = {
            type = "number",
        },
        tagSpecifications = {
            type = "list",
            member_type = "structure",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        terminationPolicy = {
            type = "structure",
        },
        filesystemType = {
            type = "string",
        },
    },
}

M.TaskVolumeConfiguration = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        managedEBSVolume = {
            type = "structure",
        },
    },
}

M.RunTaskInput = {
    type = "structure",
    members = {
        capacityProviderStrategy = {
            type = "list",
            member_type = "structure",
        },
        cluster = {
            type = "string",
        },
        count = {
            type = "number",
        },
        enableECSManagedTags = {
            type = "boolean",
        },
        enableExecuteCommand = {
            type = "boolean",
        },
        group = {
            type = "string",
        },
        launchType = {
            type = "string",
        },
        networkConfiguration = {
            type = "structure",
        },
        overrides = {
            type = "structure",
        },
        placementConstraints = {
            type = "list",
            member_type = "structure",
        },
        placementStrategy = {
            type = "list",
            member_type = "structure",
        },
        platformVersion = {
            type = "string",
        },
        propagateTags = {
            type = "string",
        },
        referenceId = {
            type = "string",
        },
        startedBy = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        taskDefinition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        volumeConfigurations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RunTaskOutput = {
    type = "structure",
    members = {
        tasks = {
            type = "list",
            member_type = "structure",
        },
        failures = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.StartTaskInput = {
    type = "structure",
    members = {
        cluster = {
            type = "string",
        },
        containerInstances = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        enableECSManagedTags = {
            type = "boolean",
        },
        enableExecuteCommand = {
            type = "boolean",
        },
        group = {
            type = "string",
        },
        networkConfiguration = {
            type = "structure",
        },
        overrides = {
            type = "structure",
        },
        propagateTags = {
            type = "string",
        },
        referenceId = {
            type = "string",
        },
        startedBy = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        taskDefinition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        volumeConfigurations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.StartTaskOutput = {
    type = "structure",
    members = {
        tasks = {
            type = "list",
            member_type = "structure",
        },
        failures = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.StopTaskInput = {
    type = "structure",
    members = {
        cluster = {
            type = "string",
        },
        task = {
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

M.StopTaskOutput = {
    type = "structure",
    members = {
        task = {
            type = "structure",
        },
    },
}

M.UpdateTaskProtectionInput = {
    type = "structure",
    members = {
        cluster = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tasks = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        protectionEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        expiresInMinutes = {
            type = "number",
        },
    },
}

M.UpdateTaskProtectionOutput = {
    type = "structure",
    members = {
        protectedTasks = {
            type = "list",
            member_type = "structure",
        },
        failures = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateTaskSetInput = {
    type = "structure",
    members = {
        service = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cluster = {
            type = "string",
            traits = {
                required = true,
            },
        },
        externalId = {
            type = "string",
        },
        taskDefinition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkConfiguration = {
            type = "structure",
        },
        loadBalancers = {
            type = "list",
            member_type = "structure",
        },
        serviceRegistries = {
            type = "list",
            member_type = "structure",
        },
        launchType = {
            type = "string",
        },
        capacityProviderStrategy = {
            type = "list",
            member_type = "structure",
        },
        platformVersion = {
            type = "string",
        },
        scale = {
            type = "structure",
        },
        clientToken = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateTaskSetOutput = {
    type = "structure",
    members = {
        taskSet = {
            type = "structure",
        },
    },
}

M.DeleteTaskSetInput = {
    type = "structure",
    members = {
        cluster = {
            type = "string",
            traits = {
                required = true,
            },
        },
        service = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskSet = {
            type = "string",
            traits = {
                required = true,
            },
        },
        force = {
            type = "boolean",
        },
    },
}

M.DeleteTaskSetOutput = {
    type = "structure",
    members = {
        taskSet = {
            type = "structure",
        },
    },
}

M.TaskSetField = {
    TAGS = "TAGS",
}

M.DescribeTaskSetsInput = {
    type = "structure",
    members = {
        cluster = {
            type = "string",
            traits = {
                required = true,
            },
        },
        service = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskSets = {
            type = "list",
            member_type = "string",
        },
        include = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeTaskSetsOutput = {
    type = "structure",
    members = {
        taskSets = {
            type = "list",
            member_type = "structure",
        },
        failures = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateTaskSetInput = {
    type = "structure",
    members = {
        cluster = {
            type = "string",
            traits = {
                required = true,
            },
        },
        service = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskSet = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scale = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateTaskSetOutput = {
    type = "structure",
    members = {
        taskSet = {
            type = "structure",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
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
