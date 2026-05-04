local M = {}

M.AcceleratorCountRequest = {
    type = "structure",
    members = {
        min = {
            type = "integer",
        },
        max = {
            type = "integer",
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
            type = "integer",
        },
        max = {
            type = "integer",
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
            type = "integer",
        },
        minimumScalingStepSize = {
            type = "integer",
        },
        maximumScalingStepSize = {
            type = "integer",
        },
        instanceWarmupPeriod = {
            type = "integer",
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
        managedScaling = M.ManagedScaling,
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
            type = "integer",
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
            type = "integer",
        },
        max = {
            type = "integer",
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
            type = "double",
        },
        max = {
            type = "double",
        },
    },
}

M.MemoryMiBRequest = {
    type = "structure",
    members = {
        min = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        max = {
            type = "integer",
        },
    },
}

M.NetworkBandwidthGbpsRequest = {
    type = "structure",
    members = {
        min = {
            type = "double",
        },
        max = {
            type = "double",
        },
    },
}

M.NetworkInterfaceCountRequest = {
    type = "structure",
    members = {
        min = {
            type = "integer",
        },
        max = {
            type = "integer",
        },
    },
}

M.TotalLocalStorageGBRequest = {
    type = "structure",
    members = {
        min = {
            type = "double",
        },
        max = {
            type = "double",
        },
    },
}

M.VCpuCountRangeRequest = {
    type = "structure",
    members = {
        min = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        max = {
            type = "integer",
        },
    },
}

M.InstanceRequirementsRequest = {
    type = "structure",
    members = {
        vCpuCount = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VCpuCountRangeRequest }),
        memoryMiB = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MemoryMiBRequest }),
        cpuManufacturers = {
            type = "list",
            member = { type = "string" },
            traits = {
                xml_name = "CpuManufacturer",
            },
        },
        memoryGiBPerVCpu = M.MemoryGiBPerVCpuRequest,
        excludedInstanceTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                xml_name = "ExcludedInstanceType",
            },
        },
        instanceGenerations = {
            type = "list",
            member = { type = "string" },
            traits = {
                xml_name = "InstanceGeneration",
            },
        },
        spotMaxPricePercentageOverLowestPrice = {
            type = "integer",
        },
        onDemandMaxPricePercentageOverLowestPrice = {
            type = "integer",
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
        networkInterfaceCount = M.NetworkInterfaceCountRequest,
        localStorage = {
            type = "string",
        },
        localStorageTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                xml_name = "LocalStorageType",
            },
        },
        totalLocalStorageGB = M.TotalLocalStorageGBRequest,
        baselineEbsBandwidthMbps = M.BaselineEbsBandwidthMbpsRequest,
        acceleratorTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                xml_name = "AcceleratorType",
            },
        },
        acceleratorCount = M.AcceleratorCountRequest,
        acceleratorManufacturers = {
            type = "list",
            member = { type = "string" },
            traits = {
                xml_name = "AcceleratorManufacturer",
            },
        },
        acceleratorNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                xml_name = "AcceleratorName",
            },
        },
        acceleratorTotalMemoryMiB = M.AcceleratorTotalMemoryMiBRequest,
        networkBandwidthGbps = M.NetworkBandwidthGbpsRequest,
        allowedInstanceTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                xml_name = "AllowedInstanceType",
            },
        },
        maxSpotPriceAsPercentageOfOptimalOnDemandPrice = {
            type = "integer",
        },
    },
}

M.ManagedInstancesLocalStorageConfiguration = {
    type = "structure",
    members = {
        useLocalStorage = {
            type = "boolean",
            traits = {
                default = false,
            },
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
            member = { type = "string" },
        },
        securityGroups = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ManagedInstancesStorageConfiguration = {
    type = "structure",
    members = {
        storageSizeGiB = {
            type = "integer",
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
        networkConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ManagedInstancesNetworkConfiguration }),
        storageConfiguration = M.ManagedInstancesStorageConfiguration,
        localStorageConfiguration = M.ManagedInstancesLocalStorageConfiguration,
        monitoring = {
            type = "string",
        },
        capacityOptionType = {
            type = "string",
        },
        instanceMetadataTagsPropagation = {
            type = "boolean",
        },
        instanceRequirements = M.InstanceRequirementsRequest,
        fipsEnabled = {
            type = "boolean",
        },
        capacityReservations = M.CapacityReservationRequest,
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
        instanceLaunchTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InstanceLaunchTemplate }),
        propagateTags = {
            type = "string",
        },
        infrastructureOptimization = M.InfrastructureOptimization,
        autoRepairConfiguration = M.AutoRepairConfiguration,
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
        autoScalingGroupProvider = M.AutoScalingGroupProvider,
        managedInstancesProvider = M.CreateManagedInstancesProviderConfiguration,
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ManagedInstancesProvider = {
    type = "structure",
    members = {
        infrastructureRoleArn = {
            type = "string",
        },
        instanceLaunchTemplate = M.InstanceLaunchTemplate,
        propagateTags = {
            type = "string",
        },
        infrastructureOptimization = M.InfrastructureOptimization,
        autoRepairConfiguration = M.AutoRepairConfiguration,
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
        autoScalingGroupProvider = M.AutoScalingGroupProvider,
        managedInstancesProvider = M.ManagedInstancesProvider,
        updateStatus = {
            type = "string",
        },
        updateStatusReason = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        type = {
            type = "string",
        },
    },
}

M.CreateCapacityProviderOutput = {
    type = "structure",
    members = {
        capacityProvider = M.CapacityProvider,
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
        capacityProvider = M.CapacityProvider,
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
            member = { type = "string" },
        },
        cluster = {
            type = "string",
        },
        include = {
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
            member = M.CapacityProvider,
        },
        failures = {
            type = "list",
            member = M.Failure,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.AutoScalingGroupProviderUpdate = {
    type = "structure",
    members = {
        managedScaling = M.ManagedScaling,
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
        networkConfiguration = M.ManagedInstancesNetworkConfiguration,
        storageConfiguration = M.ManagedInstancesStorageConfiguration,
        instanceMetadataTagsPropagation = {
            type = "boolean",
        },
        localStorageConfiguration = M.ManagedInstancesLocalStorageConfiguration,
        monitoring = {
            type = "string",
        },
        instanceRequirements = M.InstanceRequirementsRequest,
        capacityReservations = M.CapacityReservationRequest,
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
        instanceLaunchTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InstanceLaunchTemplateUpdate }),
        propagateTags = {
            type = "string",
        },
        infrastructureOptimization = M.InfrastructureOptimization,
        autoRepairConfiguration = M.AutoRepairConfiguration,
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
        autoScalingGroupProvider = M.AutoScalingGroupProviderUpdate,
        managedInstancesProvider = M.UpdateManagedInstancesProviderConfiguration,
    },
}

M.UpdateCapacityProviderOutput = {
    type = "structure",
    members = {
        capacityProvider = M.CapacityProvider,
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
            traits = {
                default = false,
            },
        },
        s3BucketName = {
            type = "string",
        },
        s3EncryptionEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
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
        logConfiguration = M.ExecuteCommandLogConfiguration,
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
        executeCommandConfiguration = M.ExecuteCommandConfiguration,
        managedStorageConfiguration = M.ManagedStorageConfiguration,
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        base = {
            type = "integer",
            traits = {
                default = 0,
            },
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
            member = M.Tag,
        },
        settings = {
            type = "list",
            member = M.ClusterSetting,
        },
        configuration = M.ClusterConfiguration,
        capacityProviders = {
            type = "list",
            member = { type = "string" },
        },
        defaultCapacityProviderStrategy = {
            type = "list",
            member = M.CapacityProviderStrategyItem,
        },
        serviceConnectDefaults = M.ClusterServiceConnectDefaultsRequest,
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
            member = M.KeyValuePair,
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
        configuration = M.ClusterConfiguration,
        status = {
            type = "string",
        },
        registeredContainerInstancesCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        runningTasksCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        pendingTasksCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        activeServicesCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        statistics = {
            type = "list",
            member = M.KeyValuePair,
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        settings = {
            type = "list",
            member = M.ClusterSetting,
        },
        capacityProviders = {
            type = "list",
            member = { type = "string" },
        },
        defaultCapacityProviderStrategy = {
            type = "list",
            member = M.CapacityProviderStrategyItem,
        },
        attachments = {
            type = "list",
            member = M.Attachment,
        },
        attachmentsStatus = {
            type = "string",
        },
        serviceConnectDefaults = M.ClusterServiceConnectDefaults,
    },
}

M.CreateClusterOutput = {
    type = "structure",
    members = {
        cluster = M.Cluster,
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
        cluster = M.Cluster,
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
            member = M.InstanceHealthCheckResult,
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
            type = "double",
            traits = {
                default = 0,
            },
        },
        longValue = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        integerValue = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        stringSetValue = {
            type = "list",
            member = { type = "string" },
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
            type = "long",
            traits = {
                default = 0,
            },
        },
        versionInfo = M.VersionInfo,
        remainingResources = {
            type = "list",
            member = M.Resource,
        },
        registeredResources = {
            type = "list",
            member = M.Resource,
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        agentConnected = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        runningTasksCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        pendingTasksCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        agentUpdateStatus = {
            type = "string",
        },
        attributes = {
            type = "list",
            member = M.Attribute,
        },
        registeredAt = {
            type = "timestamp",
        },
        attachments = {
            type = "list",
            member = M.Attachment,
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        healthStatus = M.ContainerInstanceHealthStatus,
    },
}

M.DeregisterContainerInstanceOutput = {
    type = "structure",
    members = {
        containerInstance = M.ContainerInstance,
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
            member = { type = "string" },
        },
        include = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeClustersOutput = {
    type = "structure",
    members = {
        clusters = {
            type = "list",
            member = M.Cluster,
        },
        failures = {
            type = "list",
            member = M.Failure,
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
                default = false,
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
            traits = {
                default = false,
            },
        },
        session = M.Session,
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
            type = "integer",
        },
    },
}

M.ListAttributesOutput = {
    type = "structure",
    members = {
        attributes = {
            type = "list",
            member = M.Attribute,
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
            type = "integer",
        },
    },
}

M.ListClustersOutput = {
    type = "structure",
    members = {
        clusterArns = {
            type = "list",
            member = { type = "string" },
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
            type = "integer",
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
            member = { type = "string" },
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        defaultCapacityProviderStrategy = {
            type = "list",
            member = M.CapacityProviderStrategyItem,
            traits = {
                required = true,
            },
        },
    },
}

M.PutClusterCapacityProvidersOutput = {
    type = "structure",
    members = {
        cluster = M.Cluster,
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
            member = M.AttachmentStateChange,
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
            type = "integer",
        },
        hostPort = {
            type = "integer",
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
            type = "integer",
        },
        reason = {
            type = "string",
        },
        networkBindings = {
            type = "list",
            member = M.NetworkBinding,
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
            type = "integer",
        },
        networkBindings = {
            type = "list",
            member = M.NetworkBinding,
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
            member = M.ContainerStateChange,
        },
        attachments = {
            type = "list",
            member = M.AttachmentStateChange,
        },
        managedAgents = {
            type = "list",
            member = M.ManagedAgentStateChange,
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
            member = M.ClusterSetting,
        },
        configuration = M.ClusterConfiguration,
        serviceConnectDefaults = M.ClusterServiceConnectDefaultsRequest,
    },
}

M.UpdateClusterOutput = {
    type = "structure",
    members = {
        cluster = M.Cluster,
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
            member = M.ClusterSetting,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateClusterSettingsOutput = {
    type = "structure",
    members = {
        cluster = M.Cluster,
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
            member = M.Attribute,
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
            member = M.Attribute,
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        include = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeContainerInstancesOutput = {
    type = "structure",
    members = {
        containerInstances = {
            type = "list",
            member = M.ContainerInstance,
        },
        failures = {
            type = "list",
            member = M.Failure,
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
            type = "integer",
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
            member = { type = "string" },
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
            member = M.Attribute,
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
            member = M.Attribute,
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
            member = M.Resource,
        },
        versionInfo = M.VersionInfo,
        containerInstanceArn = {
            type = "string",
        },
        attributes = {
            type = "list",
            member = M.Attribute,
        },
        platformDevices = {
            type = "list",
            member = M.PlatformDevice,
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.RegisterContainerInstanceOutput = {
    type = "structure",
    members = {
        containerInstance = M.ContainerInstance,
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
        containerInstance = M.ContainerInstance,
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
            member = { type = "string" },
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
            member = M.ContainerInstance,
        },
        failures = {
            type = "list",
            member = M.Failure,
        },
    },
}

M.DescribeDaemonDeploymentsInput = {
    type = "structure",
    members = {
        daemonDeploymentArns = {
            type = "list",
            member = { type = "string" },
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
            member = { type = "string" },
        },
        triggeredAlarmNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DaemonCircuitBreaker = {
    type = "structure",
    members = {
        failureCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        status = {
            type = "string",
        },
        threshold = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.DaemonAlarmConfiguration = {
    type = "structure",
    members = {
        alarmNames = {
            type = "list",
            member = { type = "string" },
        },
        enable = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DaemonDeploymentConfiguration = {
    type = "structure",
    members = {
        drainPercent = {
            type = "double",
        },
        alarms = M.DaemonAlarmConfiguration,
        bakeTimeInMinutes = {
            type = "integer",
            traits = {
                default = 0,
            },
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
            member = { type = "string" },
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
            type = "integer",
        },
        drainingInstanceCount = {
            type = "integer",
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
            member = M.DaemonDeploymentCapacityProvider,
        },
        totalRunningInstanceCount = {
            type = "integer",
        },
        totalDrainingInstanceCount = {
            type = "integer",
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
        targetDaemonRevision = M.DaemonDeploymentRevisionDetail,
        sourceDaemonRevisions = {
            type = "list",
            member = M.DaemonDeploymentRevisionDetail,
        },
        circuitBreaker = M.DaemonCircuitBreaker,
        alarms = M.DaemonDeploymentAlarms,
        rollback = M.DaemonRollback,
        deploymentConfiguration = M.DaemonDeploymentConfiguration,
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
            member = M.Failure,
        },
        daemonDeployments = {
            type = "list",
            member = M.DaemonDeployment,
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        deploymentConfiguration = M.DaemonDeploymentConfiguration,
        tags = {
            type = "list",
            member = M.Tag,
        },
        propagateTags = {
            type = "string",
        },
        enableECSManagedTags = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        enableExecuteCommand = {
            type = "boolean",
            traits = {
                default = false,
            },
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
            type = "integer",
            traits = {
                default = 0,
            },
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
            member = M.DaemonCapacityProvider,
        },
        totalRunningCount = {
            type = "integer",
            traits = {
                default = 0,
            },
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
            member = M.DaemonRevisionDetail,
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
        daemon = M.DaemonDetail,
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
            member = { type = "string" },
        },
        createdAt = M.CreatedAt,
        maxResults = {
            type = "integer",
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
            member = M.DaemonDeploymentSummary,
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
            member = M.DaemonSummary,
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        deploymentConfiguration = M.DaemonDeploymentConfiguration,
        propagateTags = {
            type = "string",
        },
        enableECSManagedTags = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        enableExecuteCommand = {
            type = "boolean",
            traits = {
                default = false,
            },
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
            member = { type = "string" },
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
            member = M.DaemonContainerImage,
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
            member = M.DaemonRevision,
        },
        failures = {
            type = "list",
            member = M.Failure,
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.HealthCheck = {
    type = "structure",
    members = {
        command = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        interval = {
            type = "integer",
        },
        timeout = {
            type = "integer",
        },
        retries = {
            type = "integer",
        },
        startPeriod = {
            type = "integer",
        },
    },
}

M.KernelCapabilities = {
    type = "structure",
    members = {
        add = {
            type = "list",
            member = { type = "string" },
        },
        drop = {
            type = "list",
            member = { type = "string" },
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
            member = { type = "string" },
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
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        mountOptions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DaemonLinuxParameters = {
    type = "structure",
    members = {
        capabilities = M.KernelCapabilities,
        devices = {
            type = "list",
            member = M.Device,
        },
        initProcessEnabled = {
            type = "boolean",
        },
        tmpfs = {
            type = "list",
            member = M.Tmpfs,
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
            key = { type = "string" },
            value = { type = "string" },
        },
        secretOptions = {
            type = "list",
            member = M.Secret,
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
            member = { type = "integer" },
        },
        restartAttemptPeriod = {
            type = "integer",
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
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        hardLimit = {
            type = "integer",
            traits = {
                default = 0,
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
            type = "integer",
        },
        memoryReservation = {
            type = "integer",
        },
        repositoryCredentials = M.RepositoryCredentials,
        healthCheck = M.HealthCheck,
        cpu = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        essential = {
            type = "boolean",
        },
        entryPoint = {
            type = "list",
            member = { type = "string" },
        },
        command = {
            type = "list",
            member = { type = "string" },
        },
        workingDirectory = {
            type = "string",
        },
        environmentFiles = {
            type = "list",
            member = M.EnvironmentFile,
        },
        environment = {
            type = "list",
            member = M.KeyValuePair,
        },
        secrets = {
            type = "list",
            member = M.Secret,
        },
        readonlyRootFilesystem = {
            type = "boolean",
        },
        mountPoints = {
            type = "list",
            member = M.MountPoint,
        },
        logConfiguration = M.LogConfiguration,
        firelensConfiguration = M.FirelensConfiguration,
        privileged = {
            type = "boolean",
        },
        user = {
            type = "string",
        },
        ulimits = {
            type = "list",
            member = M.Ulimit,
        },
        linuxParameters = M.DaemonLinuxParameters,
        dependsOn = {
            type = "list",
            member = M.ContainerDependency,
        },
        startTimeout = {
            type = "integer",
        },
        stopTimeout = {
            type = "integer",
        },
        systemControls = {
            type = "list",
            member = M.SystemControl,
        },
        interactive = {
            type = "boolean",
        },
        pseudoTerminal = {
            type = "boolean",
        },
        restartPolicy = M.ContainerRestartPolicy,
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
        host = M.HostVolumeProperties,
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
            type = "integer",
            traits = {
                default = 0,
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
            member = M.DaemonContainerDefinition,
        },
        volumes = {
            type = "list",
            member = M.DaemonVolume,
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
        daemonTaskDefinition = M.DaemonTaskDefinition,
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
            type = "integer",
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
            member = M.DaemonTaskDefinitionSummary,
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
            member = M.DaemonContainerDefinition,
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
            member = M.DaemonVolume,
        },
        tags = {
            type = "list",
            member = M.Tag,
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
        setting = M.Setting,
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
        capabilities = M.KernelCapabilities,
        devices = {
            type = "list",
            member = M.Device,
        },
        initProcessEnabled = {
            type = "boolean",
        },
        sharedMemorySize = {
            type = "integer",
        },
        tmpfs = {
            type = "list",
            member = M.Tmpfs,
        },
        maxSwap = {
            type = "integer",
        },
        swappiness = {
            type = "integer",
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
            type = "integer",
        },
        hostPort = {
            type = "integer",
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
        repositoryCredentials = M.RepositoryCredentials,
        cpu = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        memory = {
            type = "integer",
        },
        memoryReservation = {
            type = "integer",
        },
        links = {
            type = "list",
            member = { type = "string" },
        },
        portMappings = {
            type = "list",
            member = M.PortMapping,
        },
        essential = {
            type = "boolean",
        },
        restartPolicy = M.ContainerRestartPolicy,
        entryPoint = {
            type = "list",
            member = { type = "string" },
        },
        command = {
            type = "list",
            member = { type = "string" },
        },
        environment = {
            type = "list",
            member = M.KeyValuePair,
        },
        environmentFiles = {
            type = "list",
            member = M.EnvironmentFile,
        },
        mountPoints = {
            type = "list",
            member = M.MountPoint,
        },
        volumesFrom = {
            type = "list",
            member = M.VolumeFrom,
        },
        linuxParameters = M.LinuxParameters,
        secrets = {
            type = "list",
            member = M.Secret,
        },
        dependsOn = {
            type = "list",
            member = M.ContainerDependency,
        },
        startTimeout = {
            type = "integer",
        },
        stopTimeout = {
            type = "integer",
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
            member = { type = "string" },
        },
        dnsSearchDomains = {
            type = "list",
            member = { type = "string" },
        },
        extraHosts = {
            type = "list",
            member = M.HostEntry,
        },
        dockerSecurityOptions = {
            type = "list",
            member = { type = "string" },
        },
        interactive = {
            type = "boolean",
        },
        pseudoTerminal = {
            type = "boolean",
        },
        dockerLabels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ulimits = {
            type = "list",
            member = M.Ulimit,
        },
        logConfiguration = M.LogConfiguration,
        healthCheck = M.HealthCheck,
        systemControls = {
            type = "list",
            member = M.SystemControl,
        },
        resourceRequirements = {
            type = "list",
            member = M.ResourceRequirement,
        },
        firelensConfiguration = M.FirelensConfiguration,
        credentialSpecs = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.EphemeralStorage = {
    type = "structure",
    members = {
        sizeInGiB = {
            type = "integer",
            traits = {
                default = 0,
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
            member = M.KeyValuePair,
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
            key = { type = "string" },
            value = { type = "string" },
        },
        labels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            type = "integer",
        },
        authorizationConfig = M.EFSAuthorizationConfig,
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
        authorizationConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FSxWindowsFileServerAuthorizationConfig }),
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
            type = "integer",
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
        host = M.HostVolumeProperties,
        dockerVolumeConfiguration = M.DockerVolumeConfiguration,
        efsVolumeConfiguration = M.EFSVolumeConfiguration,
        s3filesVolumeConfiguration = M.S3FilesVolumeConfiguration,
        fsxWindowsFileServerVolumeConfiguration = M.FSxWindowsFileServerVolumeConfiguration,
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
            member = M.ContainerDefinition,
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        volumes = {
            type = "list",
            member = M.Volume,
        },
        status = {
            type = "string",
        },
        requiresAttributes = {
            type = "list",
            member = M.Attribute,
        },
        placementConstraints = {
            type = "list",
            member = M.TaskDefinitionPlacementConstraint,
        },
        compatibilities = {
            type = "list",
            member = { type = "string" },
        },
        runtimePlatform = M.RuntimePlatform,
        requiresCompatibilities = {
            type = "list",
            member = { type = "string" },
        },
        cpu = {
            type = "string",
        },
        memory = {
            type = "string",
        },
        inferenceAccelerators = {
            type = "list",
            member = M.InferenceAccelerator,
        },
        pidMode = {
            type = "string",
        },
        ipcMode = {
            type = "string",
        },
        proxyConfiguration = M.ProxyConfiguration,
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
        ephemeralStorage = M.EphemeralStorage,
        enableFaultInjection = {
            type = "boolean",
        },
    },
}

M.DeregisterTaskDefinitionOutput = {
    type = "structure",
    members = {
        taskDefinition = M.TaskDefinition,
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
            member = { type = "string" },
        },
    },
}

M.DescribeTaskDefinitionOutput = {
    type = "structure",
    members = {
        taskDefinition = M.TaskDefinition,
        tags = {
            type = "list",
            member = M.Tag,
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
            traits = {
                default = false,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.ListAccountSettingsOutput = {
    type = "structure",
    members = {
        settings = {
            type = "list",
            member = M.Setting,
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
            type = "integer",
        },
    },
}

M.ListServicesByNamespaceOutput = {
    type = "structure",
    members = {
        serviceArns = {
            type = "list",
            member = { type = "string" },
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
            member = M.Tag,
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
            type = "integer",
        },
    },
}

M.ListTaskDefinitionFamiliesOutput = {
    type = "structure",
    members = {
        families = {
            type = "list",
            member = { type = "string" },
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
        setting = M.Setting,
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
        setting = M.Setting,
    },
}

M.DescribeServiceDeploymentsInput = {
    type = "structure",
    members = {
        serviceDeploymentArns = {
            type = "list",
            member = { type = "string" },
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
            member = { type = "string" },
        },
        triggeredAlarmNames = {
            type = "list",
            member = { type = "string" },
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        threshold = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.DeploymentAlarms = {
    type = "structure",
    members = {
        alarmNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        rollback = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        enable = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.CanaryConfiguration = {
    type = "structure",
    members = {
        canaryPercent = {
            type = "double",
            traits = {
                default = nil,
            },
        },
        canaryBakeTimeInMinutes = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
    },
}

M.DeploymentCircuitBreaker = {
    type = "structure",
    members = {
        enable = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        rollback = {
            type = "boolean",
            traits = {
                default = false,
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
            member = { type = "string" },
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
            type = "double",
            traits = {
                default = nil,
            },
        },
        stepBakeTimeInMinutes = {
            type = "integer",
            traits = {
                default = nil,
            },
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
        deploymentCircuitBreaker = M.DeploymentCircuitBreaker,
        maximumPercent = {
            type = "integer",
        },
        minimumHealthyPercent = {
            type = "integer",
        },
        alarms = M.DeploymentAlarms,
        strategy = {
            type = "string",
        },
        bakeTimeInMinutes = {
            type = "integer",
        },
        lifecycleHooks = {
            type = "list",
            member = M.DeploymentLifecycleHook,
        },
        linearConfiguration = M.LinearConfiguration,
        canaryConfiguration = M.CanaryConfiguration,
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        runningTaskCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        pendingTaskCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        requestedTestTrafficWeight = {
            type = "double",
            traits = {
                default = nil,
            },
        },
        requestedProductionTrafficWeight = {
            type = "double",
            traits = {
                default = nil,
            },
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
            member = M.ServiceRevisionSummary,
        },
        targetServiceRevision = M.ServiceRevisionSummary,
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        lifecycleStage = {
            type = "string",
        },
        deploymentConfiguration = M.DeploymentConfiguration,
        rollback = M.Rollback,
        deploymentCircuitBreaker = M.ServiceDeploymentCircuitBreaker,
        alarms = M.ServiceDeploymentAlarms,
    },
}

M.DescribeServiceDeploymentsOutput = {
    type = "structure",
    members = {
        serviceDeployments = {
            type = "list",
            member = M.ServiceDeployment,
        },
        failures = {
            type = "list",
            member = M.Failure,
        },
    },
}

M.ExpressGatewayServiceNetworkConfiguration = {
    type = "structure",
    members = {
        securityGroups = {
            type = "list",
            member = { type = "string" },
        },
        subnets = {
            type = "list",
            member = { type = "string" },
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
            type = "integer",
        },
        awsLogsConfiguration = M.ExpressGatewayServiceAwsLogsConfiguration,
        repositoryCredentials = M.ExpressGatewayRepositoryCredentials,
        command = {
            type = "list",
            member = { type = "string" },
        },
        environment = {
            type = "list",
            member = M.KeyValuePair,
        },
        secrets = {
            type = "list",
            member = M.Secret,
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
            type = "integer",
        },
        maxTaskCount = {
            type = "integer",
        },
        autoScalingMetric = {
            type = "string",
        },
        autoScalingTargetValue = {
            type = "integer",
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
        primaryContainer = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExpressGatewayContainer }),
        taskRoleArn = {
            type = "string",
        },
        networkConfiguration = M.ExpressGatewayServiceNetworkConfiguration,
        cpu = {
            type = "string",
        },
        memory = {
            type = "string",
        },
        scalingTarget = M.ExpressGatewayScalingTarget,
        tags = {
            type = "list",
            member = M.Tag,
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
        networkConfiguration = M.ExpressGatewayServiceNetworkConfiguration,
        healthCheckPath = {
            type = "string",
        },
        primaryContainer = M.ExpressGatewayContainer,
        scalingTarget = M.ExpressGatewayScalingTarget,
        ingressPaths = {
            type = "list",
            member = M.IngressPathSummary,
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
        status = M.ExpressGatewayServiceStatus,
        currentDeployment = {
            type = "string",
        },
        activeConfigurations = {
            type = "list",
            member = M.ExpressGatewayServiceConfiguration,
        },
        tags = {
            type = "list",
            member = M.Tag,
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
        service = M.ECSExpressGatewayService,
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
            type = "integer",
        },
        advancedConfiguration = M.AdvancedConfiguration,
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        securityGroups = {
            type = "list",
            member = { type = "string" },
        },
        assignPublicIp = {
            type = "string",
        },
    },
}

M.NetworkConfiguration = {
    type = "structure",
    members = {
        awsvpcConfiguration = M.AwsVpcConfiguration,
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
        value = M.ServiceConnectTestTrafficHeaderMatchRules,
    },
}

M.ServiceConnectTestTrafficRules = {
    type = "structure",
    members = {
        header = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceConnectTestTrafficHeaderRules }),
    },
}

M.ServiceConnectClientAlias = {
    type = "structure",
    members = {
        port = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        dnsName = {
            type = "string",
        },
        testTrafficRules = M.ServiceConnectTestTrafficRules,
    },
}

M.TimeoutConfiguration = {
    type = "structure",
    members = {
        idleTimeoutSeconds = {
            type = "integer",
        },
        perRequestTimeoutSeconds = {
            type = "integer",
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
        issuerCertificateAuthority = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceConnectTlsCertificateAuthority }),
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
            member = M.ServiceConnectClientAlias,
        },
        ingressPortOverride = {
            type = "integer",
        },
        timeout = M.TimeoutConfiguration,
        tls = M.ServiceConnectTlsConfiguration,
    },
}

M.ServiceConnectConfiguration = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        namespace = {
            type = "string",
        },
        services = {
            type = "list",
            member = M.ServiceConnectService,
        },
        logConfiguration = M.LogConfiguration,
        accessLogConfiguration = M.ServiceConnectAccessLogConfiguration,
    },
}

M.ServiceRegistry = {
    type = "structure",
    members = {
        registryArn = {
            type = "string",
        },
        port = {
            type = "integer",
        },
        containerName = {
            type = "string",
        },
        containerPort = {
            type = "integer",
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
            member = M.Tag,
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
            type = "integer",
        },
        snapshotId = {
            type = "string",
        },
        volumeInitializationRate = {
            type = "integer",
        },
        iops = {
            type = "integer",
        },
        throughput = {
            type = "integer",
        },
        tagSpecifications = {
            type = "list",
            member = M.EBSTagSpecification,
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
        managedEBSVolume = M.ServiceManagedEBSVolumeConfiguration,
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
            member = M.LoadBalancer,
        },
        serviceRegistries = {
            type = "list",
            member = M.ServiceRegistry,
        },
        desiredCount = {
            type = "integer",
        },
        clientToken = {
            type = "string",
        },
        launchType = {
            type = "string",
        },
        capacityProviderStrategy = {
            type = "list",
            member = M.CapacityProviderStrategyItem,
        },
        platformVersion = {
            type = "string",
        },
        role = {
            type = "string",
        },
        deploymentConfiguration = M.DeploymentConfiguration,
        placementConstraints = {
            type = "list",
            member = M.PlacementConstraint,
        },
        placementStrategy = {
            type = "list",
            member = M.PlacementStrategy,
        },
        networkConfiguration = M.NetworkConfiguration,
        healthCheckGracePeriodSeconds = {
            type = "integer",
        },
        schedulingStrategy = {
            type = "string",
        },
        deploymentController = M.DeploymentController,
        tags = {
            type = "list",
            member = M.Tag,
        },
        enableECSManagedTags = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        propagateTags = {
            type = "string",
        },
        enableExecuteCommand = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        serviceConnectConfiguration = M.ServiceConnectConfiguration,
        volumeConfigurations = {
            type = "list",
            member = M.ServiceVolumeConfiguration,
        },
        vpcLatticeConfigurations = {
            type = "list",
            member = M.VpcLatticeConfiguration,
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        runningTaskCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        pendingTaskCount = {
            type = "integer",
            traits = {
                default = 0,
            },
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        pendingCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        runningCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        failedTasks = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        capacityProviderStrategy = {
            type = "list",
            member = M.CapacityProviderStrategyItem,
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
        networkConfiguration = M.NetworkConfiguration,
        rolloutState = {
            type = "string",
        },
        rolloutStateReason = {
            type = "string",
        },
        serviceConnectConfiguration = M.ServiceConnectConfiguration,
        serviceConnectResources = {
            type = "list",
            member = M.ServiceConnectServiceResource,
        },
        volumeConfigurations = {
            type = "list",
            member = M.ServiceVolumeConfiguration,
        },
        fargateEphemeralStorage = M.DeploymentEphemeralStorage,
        vpcLatticeConfigurations = {
            type = "list",
            member = M.VpcLatticeConfiguration,
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
            type = "double",
            traits = {
                default = 0,
            },
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        pendingCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        runningCount = {
            type = "integer",
            traits = {
                default = 0,
            },
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
            member = M.CapacityProviderStrategyItem,
        },
        platformVersion = {
            type = "string",
        },
        platformFamily = {
            type = "string",
        },
        networkConfiguration = M.NetworkConfiguration,
        loadBalancers = {
            type = "list",
            member = M.LoadBalancer,
        },
        serviceRegistries = {
            type = "list",
            member = M.ServiceRegistry,
        },
        scale = M.Scale,
        stabilityStatus = {
            type = "string",
        },
        stabilityStatusAt = {
            type = "timestamp",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        fargateEphemeralStorage = M.DeploymentEphemeralStorage,
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
            member = M.LoadBalancer,
        },
        serviceRegistries = {
            type = "list",
            member = M.ServiceRegistry,
        },
        status = {
            type = "string",
        },
        desiredCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        runningCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        pendingCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        launchType = {
            type = "string",
        },
        capacityProviderStrategy = {
            type = "list",
            member = M.CapacityProviderStrategyItem,
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
        deploymentConfiguration = M.DeploymentConfiguration,
        taskSets = {
            type = "list",
            member = M.TaskSet,
        },
        deployments = {
            type = "list",
            member = M.Deployment,
        },
        roleArn = {
            type = "string",
        },
        events = {
            type = "list",
            member = M.ServiceEvent,
        },
        createdAt = {
            type = "timestamp",
        },
        currentServiceDeployment = {
            type = "string",
        },
        currentServiceRevisions = {
            type = "list",
            member = M.ServiceCurrentRevisionSummary,
        },
        placementConstraints = {
            type = "list",
            member = M.PlacementConstraint,
        },
        placementStrategy = {
            type = "list",
            member = M.PlacementStrategy,
        },
        networkConfiguration = M.NetworkConfiguration,
        healthCheckGracePeriodSeconds = {
            type = "integer",
        },
        schedulingStrategy = {
            type = "string",
        },
        deploymentController = M.DeploymentController,
        tags = {
            type = "list",
            member = M.Tag,
        },
        createdBy = {
            type = "string",
        },
        enableECSManagedTags = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        propagateTags = {
            type = "string",
        },
        enableExecuteCommand = {
            type = "boolean",
            traits = {
                default = false,
            },
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
        service = M.Service,
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
        service = M.ECSExpressGatewayService,
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
        service = M.Service,
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
            member = { type = "string" },
        },
    },
}

M.DescribeExpressGatewayServiceOutput = {
    type = "structure",
    members = {
        service = M.ECSExpressGatewayService,
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        include = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeServicesOutput = {
    type = "structure",
    members = {
        services = {
            type = "list",
            member = M.Service,
        },
        failures = {
            type = "list",
            member = M.Failure,
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
            member = { type = "string" },
        },
        createdAt = M.CreatedAt,
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
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
            member = M.ServiceDeploymentBrief,
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
            type = "integer",
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
            member = { type = "string" },
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
            member = { type = "string" },
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
        primaryContainer = M.ExpressGatewayContainer,
        taskRoleArn = {
            type = "string",
        },
        networkConfiguration = M.ExpressGatewayServiceNetworkConfiguration,
        cpu = {
            type = "string",
        },
        memory = {
            type = "string",
        },
        scalingTarget = M.ExpressGatewayScalingTarget,
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
        status = M.ExpressGatewayServiceStatus,
        targetConfiguration = M.ExpressGatewayServiceConfiguration,
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
        service = M.UpdatedExpressGatewayService,
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
            type = "integer",
        },
        taskDefinition = {
            type = "string",
        },
        capacityProviderStrategy = {
            type = "list",
            member = M.CapacityProviderStrategyItem,
        },
        deploymentConfiguration = M.DeploymentConfiguration,
        availabilityZoneRebalancing = {
            type = "string",
        },
        networkConfiguration = M.NetworkConfiguration,
        placementConstraints = {
            type = "list",
            member = M.PlacementConstraint,
        },
        placementStrategy = {
            type = "list",
            member = M.PlacementStrategy,
        },
        platformVersion = {
            type = "string",
        },
        forceNewDeployment = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        healthCheckGracePeriodSeconds = {
            type = "integer",
        },
        deploymentController = M.DeploymentController,
        enableExecuteCommand = {
            type = "boolean",
        },
        enableECSManagedTags = {
            type = "boolean",
        },
        loadBalancers = {
            type = "list",
            member = M.LoadBalancer,
        },
        propagateTags = {
            type = "string",
        },
        serviceRegistries = {
            type = "list",
            member = M.ServiceRegistry,
        },
        serviceConnectConfiguration = M.ServiceConnectConfiguration,
        volumeConfigurations = {
            type = "list",
            member = M.ServiceVolumeConfiguration,
        },
        vpcLatticeConfigurations = {
            type = "list",
            member = M.VpcLatticeConfiguration,
        },
    },
}

M.UpdateServiceOutput = {
    type = "structure",
    members = {
        service = M.Service,
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
        taskSet = M.TaskSet,
    },
}

M.DescribeServiceRevisionsInput = {
    type = "structure",
    members = {
        serviceRevisionArns = {
            type = "list",
            member = { type = "string" },
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
            type = "double",
            traits = {
                default = 0,
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
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        maxCapacity = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.ManagedAutoScaling = {
    type = "structure",
    members = {
        scalableTarget = M.ManagedScalableTarget,
        applicationAutoScalingPolicies = {
            type = "list",
            member = M.ManagedApplicationAutoScalingPolicy,
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
            member = { type = "string" },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
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
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        port = {
            type = "integer",
            traits = {
                default = 0,
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
        loadBalancer = M.ManagedLoadBalancer,
        loadBalancerSecurityGroups = {
            type = "list",
            member = M.ManagedSecurityGroup,
        },
        certificate = M.ManagedCertificate,
        listener = M.ManagedListener,
        rule = M.ManagedListenerRule,
        targetGroups = {
            type = "list",
            member = M.ManagedTargetGroup,
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
            member = M.ManagedIngressPath,
        },
        autoScaling = M.ManagedAutoScaling,
        metricAlarms = {
            type = "list",
            member = M.ManagedMetricAlarm,
        },
        serviceSecurityGroups = {
            type = "list",
            member = M.ManagedSecurityGroup,
        },
        logGroups = {
            type = "list",
            member = M.ManagedLogGroup,
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
            member = M.ServiceRevisionLoadBalancer,
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
            member = M.CapacityProviderStrategyItem,
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
            member = M.LoadBalancer,
        },
        serviceRegistries = {
            type = "list",
            member = M.ServiceRegistry,
        },
        networkConfiguration = M.NetworkConfiguration,
        containerImages = {
            type = "list",
            member = M.ContainerImage,
        },
        guardDutyEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        serviceConnectConfiguration = M.ServiceConnectConfiguration,
        volumeConfigurations = {
            type = "list",
            member = M.ServiceVolumeConfiguration,
        },
        fargateEphemeralStorage = M.DeploymentEphemeralStorage,
        createdAt = {
            type = "timestamp",
        },
        vpcLatticeConfigurations = {
            type = "list",
            member = M.VpcLatticeConfiguration,
        },
        resolvedConfiguration = M.ResolvedConfiguration,
        ecsManagedResources = M.ECSManagedResources,
    },
}

M.DescribeServiceRevisionsOutput = {
    type = "structure",
    members = {
        serviceRevisions = {
            type = "list",
            member = M.ServiceRevision,
        },
        failures = {
            type = "list",
            member = M.Failure,
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
            member = M.Tag,
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
            member = { type = "string" },
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
            member = M.TaskDefinition,
        },
        failures = {
            type = "list",
            member = M.Failure,
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
            type = "integer",
        },
    },
}

M.ListTaskDefinitionsOutput = {
    type = "structure",
    members = {
        taskDefinitionArns = {
            type = "list",
            member = { type = "string" },
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
            member = M.ContainerDefinition,
            traits = {
                required = true,
            },
        },
        volumes = {
            type = "list",
            member = M.Volume,
        },
        placementConstraints = {
            type = "list",
            member = M.TaskDefinitionPlacementConstraint,
        },
        requiresCompatibilities = {
            type = "list",
            member = { type = "string" },
        },
        cpu = {
            type = "string",
        },
        memory = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        pidMode = {
            type = "string",
        },
        ipcMode = {
            type = "string",
        },
        proxyConfiguration = M.ProxyConfiguration,
        inferenceAccelerators = {
            type = "list",
            member = M.InferenceAccelerator,
        },
        ephemeralStorage = M.EphemeralStorage,
        runtimePlatform = M.RuntimePlatform,
        enableFaultInjection = {
            type = "boolean",
        },
    },
}

M.RegisterTaskDefinitionOutput = {
    type = "structure",
    members = {
        taskDefinition = M.TaskDefinition,
        tags = {
            type = "list",
            member = M.Tag,
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        include = {
            type = "list",
            member = { type = "string" },
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
            type = "integer",
        },
        reason = {
            type = "string",
        },
        networkBindings = {
            type = "list",
            member = M.NetworkBinding,
        },
        networkInterfaces = {
            type = "list",
            member = M.NetworkInterface,
        },
        healthStatus = {
            type = "string",
        },
        managedAgents = {
            type = "list",
            member = M.ManagedAgent,
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
            member = { type = "string" },
        },
    },
}

M.TaskEphemeralStorage = {
    type = "structure",
    members = {
        sizeInGiB = {
            type = "integer",
            traits = {
                default = 0,
            },
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
            member = { type = "string" },
        },
        environment = {
            type = "list",
            member = M.KeyValuePair,
        },
        environmentFiles = {
            type = "list",
            member = M.EnvironmentFile,
        },
        cpu = {
            type = "integer",
        },
        memory = {
            type = "integer",
        },
        memoryReservation = {
            type = "integer",
        },
        resourceRequirements = {
            type = "list",
            member = M.ResourceRequirement,
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
            member = M.ContainerOverride,
        },
        cpu = {
            type = "string",
        },
        inferenceAcceleratorOverrides = {
            type = "list",
            member = M.InferenceAcceleratorOverride,
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
        ephemeralStorage = M.EphemeralStorage,
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
            member = M.Attachment,
        },
        attributes = {
            type = "list",
            member = M.Attribute,
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
            member = M.Container,
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
            traits = {
                default = false,
            },
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
            member = M.InferenceAccelerator,
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
        overrides = M.TaskOverride,
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
            member = M.Tag,
        },
        taskArn = {
            type = "string",
        },
        taskDefinitionArn = {
            type = "string",
        },
        version = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        ephemeralStorage = M.EphemeralStorage,
        fargateEphemeralStorage = M.TaskEphemeralStorage,
    },
}

M.DescribeTasksOutput = {
    type = "structure",
    members = {
        tasks = {
            type = "list",
            member = M.Task,
        },
        failures = {
            type = "list",
            member = M.Failure,
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
            member = { type = "string" },
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
            traits = {
                default = false,
            },
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
            member = M.ProtectedTask,
        },
        failures = {
            type = "list",
            member = M.Failure,
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
            type = "integer",
        },
        snapshotId = {
            type = "string",
        },
        volumeInitializationRate = {
            type = "integer",
        },
        iops = {
            type = "integer",
        },
        throughput = {
            type = "integer",
        },
        tagSpecifications = {
            type = "list",
            member = M.EBSTagSpecification,
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        terminationPolicy = M.TaskManagedEBSVolumeTerminationPolicy,
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
        managedEBSVolume = M.TaskManagedEBSVolumeConfiguration,
    },
}

M.RunTaskInput = {
    type = "structure",
    members = {
        capacityProviderStrategy = {
            type = "list",
            member = M.CapacityProviderStrategyItem,
        },
        cluster = {
            type = "string",
        },
        count = {
            type = "integer",
        },
        enableECSManagedTags = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        enableExecuteCommand = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        group = {
            type = "string",
        },
        launchType = {
            type = "string",
        },
        networkConfiguration = M.NetworkConfiguration,
        overrides = M.TaskOverride,
        placementConstraints = {
            type = "list",
            member = M.PlacementConstraint,
        },
        placementStrategy = {
            type = "list",
            member = M.PlacementStrategy,
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
            member = M.Tag,
        },
        taskDefinition = {
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
        volumeConfigurations = {
            type = "list",
            member = M.TaskVolumeConfiguration,
        },
    },
}

M.RunTaskOutput = {
    type = "structure",
    members = {
        tasks = {
            type = "list",
            member = M.Task,
        },
        failures = {
            type = "list",
            member = M.Failure,
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        enableECSManagedTags = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        enableExecuteCommand = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        group = {
            type = "string",
        },
        networkConfiguration = M.NetworkConfiguration,
        overrides = M.TaskOverride,
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
            member = M.Tag,
        },
        taskDefinition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        volumeConfigurations = {
            type = "list",
            member = M.TaskVolumeConfiguration,
        },
    },
}

M.StartTaskOutput = {
    type = "structure",
    members = {
        tasks = {
            type = "list",
            member = M.Task,
        },
        failures = {
            type = "list",
            member = M.Failure,
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
        task = M.Task,
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        protectionEnabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        expiresInMinutes = {
            type = "integer",
        },
    },
}

M.UpdateTaskProtectionOutput = {
    type = "structure",
    members = {
        protectedTasks = {
            type = "list",
            member = M.ProtectedTask,
        },
        failures = {
            type = "list",
            member = M.Failure,
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
        networkConfiguration = M.NetworkConfiguration,
        loadBalancers = {
            type = "list",
            member = M.LoadBalancer,
        },
        serviceRegistries = {
            type = "list",
            member = M.ServiceRegistry,
        },
        launchType = {
            type = "string",
        },
        capacityProviderStrategy = {
            type = "list",
            member = M.CapacityProviderStrategyItem,
        },
        platformVersion = {
            type = "string",
        },
        scale = M.Scale,
        clientToken = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateTaskSetOutput = {
    type = "structure",
    members = {
        taskSet = M.TaskSet,
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
        taskSet = M.TaskSet,
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
            member = { type = "string" },
        },
        include = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeTaskSetsOutput = {
    type = "structure",
    members = {
        taskSets = {
            type = "list",
            member = M.TaskSet,
        },
        failures = {
            type = "list",
            member = M.Failure,
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
        scale = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Scale }),
    },
}

M.UpdateTaskSetOutput = {
    type = "structure",
    members = {
        taskSet = M.TaskSet,
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
            member = { type = "string" },
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
