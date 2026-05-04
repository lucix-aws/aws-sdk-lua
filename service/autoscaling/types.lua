local M = {}

M.AcceleratorCountRequest = {
    type = "structure",
    id = "AcceleratorCountRequest",
    members = {
        Min = {
            type = "integer",
        },
        Max = {
            type = "integer",
        },
    },
}

M.AcceleratorManufacturer = {
    NVIDIA = "nvidia",
    AMD = "amd",
    AMAZON_WEB_SERVICES = "amazon-web-services",
    XILINX = "xilinx",
}

M.AcceleratorName = {
    A100 = "a100",
    V100 = "v100",
    K80 = "k80",
    T4 = "t4",
    M60 = "m60",
    RADEON_PRO_V520 = "radeon-pro-v520",
    VU9P = "vu9p",
}

M.AcceleratorTotalMemoryMiBRequest = {
    type = "structure",
    id = "AcceleratorTotalMemoryMiBRequest",
    members = {
        Min = {
            type = "integer",
        },
        Max = {
            type = "integer",
        },
    },
}

M.AcceleratorType = {
    GPU = "gpu",
    FPGA = "fpga",
    INFERENCE = "inference",
}

M.ActiveInstanceRefreshNotFoundFault = {
    type = "structure",
    id = "ActiveInstanceRefreshNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ScalingActivityStatusCode = {
    PendingSpotBidPlacement = "PendingSpotBidPlacement",
    WaitingForSpotInstanceRequestId = "WaitingForSpotInstanceRequestId",
    WaitingForSpotInstanceId = "WaitingForSpotInstanceId",
    WaitingForInstanceId = "WaitingForInstanceId",
    PreInService = "PreInService",
    InProgress = "InProgress",
    WaitingForELBConnectionDraining = "WaitingForELBConnectionDraining",
    MidLifecycleAction = "MidLifecycleAction",
    WaitingForInstanceWarmup = "WaitingForInstanceWarmup",
    Successful = "Successful",
    Failed = "Failed",
    Cancelled = "Cancelled",
    WaitingForConnectionDraining = "WaitingForConnectionDraining",
    WaitingForInPlaceUpdateToStart = "WaitingForInPlaceUpdateToStart",
    WaitingForInPlaceUpdateToFinalize = "WaitingForInPlaceUpdateToFinalize",
    InPlaceUpdateInProgress = "InPlaceUpdateInProgress",
}

M.Activity = {
    type = "structure",
    id = "Activity",
    members = {
        ActivityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Cause = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
        },
        StatusCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StatusMessage = {
            type = "string",
        },
        Progress = {
            type = "integer",
        },
        Details = {
            type = "string",
        },
        AutoScalingGroupState = {
            type = "string",
        },
        AutoScalingGroupARN = {
            type = "string",
        },
    },
}

M.AdjustmentType = {
    type = "structure",
    id = "AdjustmentType",
    members = {
        AdjustmentType = {
            type = "string",
        },
    },
}

M.Alarm = {
    type = "structure",
    id = "Alarm",
    members = {
        AlarmName = {
            type = "string",
        },
        AlarmARN = {
            type = "string",
        },
    },
}

M.AlarmSpecification = {
    type = "structure",
    id = "AlarmSpecification",
    members = {
        Alarms = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AlreadyExistsFault = {
    type = "structure",
    id = "AlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AttachInstancesInput = {
    type = "structure",
    id = "AttachInstancesInput",
    members = {
        InstanceIds = {
            type = "list",
            member = { type = "string" },
        },
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AttachInstancesOutput = {
    type = "structure",
    id = "AttachInstancesOutput",
}

M.ResourceContentionFault = {
    type = "structure",
    id = "ResourceContentionFault",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceLinkedRoleFailure = {
    type = "structure",
    id = "ServiceLinkedRoleFailure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AttachLoadBalancersInput = {
    type = "structure",
    id = "AttachLoadBalancersInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LoadBalancerNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AttachLoadBalancersOutput = {
    type = "structure",
    id = "AttachLoadBalancersOutput",
}

M.InstanceRefreshInProgressFault = {
    type = "structure",
    id = "InstanceRefreshInProgressFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AttachLoadBalancerTargetGroupsInput = {
    type = "structure",
    id = "AttachLoadBalancerTargetGroupsInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetGroupARNs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AttachLoadBalancerTargetGroupsOutput = {
    type = "structure",
    id = "AttachLoadBalancerTargetGroupsOutput",
}

M.TrafficSourceIdentifier = {
    type = "structure",
    id = "TrafficSourceIdentifier",
    members = {
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
        },
    },
}

M.AttachTrafficSourcesInput = {
    type = "structure",
    id = "AttachTrafficSourcesInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrafficSources = {
            type = "list",
            member = M.TrafficSourceIdentifier,
            traits = {
                required = true,
            },
        },
        SkipZonalShiftValidation = {
            type = "boolean",
        },
    },
}

M.AttachTrafficSourcesOutput = {
    type = "structure",
    id = "AttachTrafficSourcesOutput",
}

M.BatchDeleteScheduledActionInput = {
    type = "structure",
    id = "BatchDeleteScheduledActionInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScheduledActionNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.FailedScheduledUpdateGroupActionRequest = {
    type = "structure",
    id = "FailedScheduledUpdateGroupActionRequest",
    members = {
        ScheduledActionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.BatchDeleteScheduledActionOutput = {
    type = "structure",
    id = "BatchDeleteScheduledActionOutput",
    members = {
        FailedScheduledActions = {
            type = "list",
            member = M.FailedScheduledUpdateGroupActionRequest,
        },
    },
}

M.ScheduledUpdateGroupActionRequest = {
    type = "structure",
    id = "ScheduledUpdateGroupActionRequest",
    members = {
        ScheduledActionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        Recurrence = {
            type = "string",
        },
        MinSize = {
            type = "integer",
        },
        MaxSize = {
            type = "integer",
        },
        DesiredCapacity = {
            type = "integer",
        },
        TimeZone = {
            type = "string",
        },
    },
}

M.BatchPutScheduledUpdateGroupActionInput = {
    type = "structure",
    id = "BatchPutScheduledUpdateGroupActionInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScheduledUpdateGroupActions = {
            type = "list",
            member = M.ScheduledUpdateGroupActionRequest,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchPutScheduledUpdateGroupActionOutput = {
    type = "structure",
    id = "BatchPutScheduledUpdateGroupActionOutput",
    members = {
        FailedScheduledUpdateGroupActions = {
            type = "list",
            member = M.FailedScheduledUpdateGroupActionRequest,
        },
    },
}

M.LimitExceededFault = {
    type = "structure",
    id = "LimitExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CancelInstanceRefreshInput = {
    type = "structure",
    id = "CancelInstanceRefreshInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WaitForTransitioningInstances = {
            type = "boolean",
        },
    },
}

M.CancelInstanceRefreshOutput = {
    type = "structure",
    id = "CancelInstanceRefreshOutput",
    members = {
        InstanceRefreshId = {
            type = "string",
        },
    },
}

M.CompleteLifecycleActionInput = {
    type = "structure",
    id = "CompleteLifecycleActionInput",
    members = {
        LifecycleHookName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LifecycleActionToken = {
            type = "string",
        },
        LifecycleActionResult = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceId = {
            type = "string",
        },
    },
}

M.CompleteLifecycleActionOutput = {
    type = "structure",
    id = "CompleteLifecycleActionOutput",
}

M.CapacityDistributionStrategy = {
    BALANCED_ONLY = "balanced-only",
    BALANCED_BEST_EFFORT = "balanced-best-effort",
}

M.AvailabilityZoneDistribution = {
    type = "structure",
    id = "AvailabilityZoneDistribution",
    members = {
        CapacityDistributionStrategy = {
            type = "string",
        },
    },
}

M.ImpairedZoneHealthCheckBehavior = {
    ReplaceUnhealthy = "ReplaceUnhealthy",
    IgnoreUnhealthy = "IgnoreUnhealthy",
}

M.AvailabilityZoneImpairmentPolicy = {
    type = "structure",
    id = "AvailabilityZoneImpairmentPolicy",
    members = {
        ZonalShiftEnabled = {
            type = "boolean",
        },
        ImpairedZoneHealthCheckBehavior = {
            type = "string",
        },
    },
}

M.CapacityReservationPreference = {
    CapacityReservationsOnly = "capacity-reservations-only",
    CapacityReservationsFirst = "capacity-reservations-first",
    None = "none",
    Default = "default",
}

M.CapacityReservationTarget = {
    type = "structure",
    id = "CapacityReservationTarget",
    members = {
        CapacityReservationIds = {
            type = "list",
            member = { type = "string" },
        },
        CapacityReservationResourceGroupArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CapacityReservationSpecification = {
    type = "structure",
    id = "CapacityReservationSpecification",
    members = {
        CapacityReservationPreference = {
            type = "string",
        },
        CapacityReservationTarget = M.CapacityReservationTarget,
    },
}

M.DeletionProtection = {
    None = "none",
    PreventForceDeletion = "prevent-force-deletion",
    PreventAllDeletion = "prevent-all-deletion",
}

M.RetentionAction = {
    Retain = "retain",
    Terminate = "terminate",
}

M.RetentionTriggers = {
    type = "structure",
    id = "RetentionTriggers",
    members = {
        TerminateHookAbandon = {
            type = "string",
        },
    },
}

M.InstanceLifecyclePolicy = {
    type = "structure",
    id = "InstanceLifecyclePolicy",
    members = {
        RetentionTriggers = M.RetentionTriggers,
    },
}

M.InstanceMaintenancePolicy = {
    type = "structure",
    id = "InstanceMaintenancePolicy",
    members = {
        MinHealthyPercentage = {
            type = "integer",
        },
        MaxHealthyPercentage = {
            type = "integer",
        },
    },
}

M.LaunchTemplateSpecification = {
    type = "structure",
    id = "LaunchTemplateSpecification",
    members = {
        LaunchTemplateId = {
            type = "string",
        },
        LaunchTemplateName = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.LifecycleHookSpecification = {
    type = "structure",
    id = "LifecycleHookSpecification",
    members = {
        LifecycleHookName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LifecycleTransition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NotificationMetadata = {
            type = "string",
        },
        HeartbeatTimeout = {
            type = "integer",
        },
        DefaultResult = {
            type = "string",
        },
        NotificationTargetARN = {
            type = "string",
        },
        RoleARN = {
            type = "string",
        },
    },
}

M.InstancesDistribution = {
    type = "structure",
    id = "InstancesDistribution",
    members = {
        OnDemandAllocationStrategy = {
            type = "string",
        },
        OnDemandBaseCapacity = {
            type = "integer",
        },
        OnDemandPercentageAboveBaseCapacity = {
            type = "integer",
        },
        SpotAllocationStrategy = {
            type = "string",
        },
        SpotInstancePools = {
            type = "integer",
        },
        SpotMaxPrice = {
            type = "string",
        },
    },
}

M.BareMetal = {
    INCLUDED = "included",
    EXCLUDED = "excluded",
    REQUIRED = "required",
}

M.BaselineEbsBandwidthMbpsRequest = {
    type = "structure",
    id = "BaselineEbsBandwidthMbpsRequest",
    members = {
        Min = {
            type = "integer",
        },
        Max = {
            type = "integer",
        },
    },
}

M.PerformanceFactorReferenceRequest = {
    type = "structure",
    id = "PerformanceFactorReferenceRequest",
    members = {
        InstanceFamily = {
            type = "string",
        },
    },
}

M.CpuPerformanceFactorRequest = {
    type = "structure",
    id = "CpuPerformanceFactorRequest",
    members = {
        References = {
            type = "list",
            member = M.PerformanceFactorReferenceRequest,
            traits = {
                xml_name = "Reference",
            },
        },
    },
}

M.BaselinePerformanceFactorsRequest = {
    type = "structure",
    id = "BaselinePerformanceFactorsRequest",
    members = {
        Cpu = M.CpuPerformanceFactorRequest,
    },
}

M.BurstablePerformance = {
    INCLUDED = "included",
    EXCLUDED = "excluded",
    REQUIRED = "required",
}

M.CpuManufacturer = {
    INTEL = "intel",
    AMD = "amd",
    AMAZON_WEB_SERVICES = "amazon-web-services",
    APPLE = "apple",
}

M.InstanceGeneration = {
    CURRENT = "current",
    PREVIOUS = "previous",
}

M.LocalStorage = {
    INCLUDED = "included",
    EXCLUDED = "excluded",
    REQUIRED = "required",
}

M.LocalStorageType = {
    HDD = "hdd",
    SSD = "ssd",
}

M.MemoryGiBPerVCpuRequest = {
    type = "structure",
    id = "MemoryGiBPerVCpuRequest",
    members = {
        Min = {
            type = "double",
        },
        Max = {
            type = "double",
        },
    },
}

M.MemoryMiBRequest = {
    type = "structure",
    id = "MemoryMiBRequest",
    members = {
        Min = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Max = {
            type = "integer",
        },
    },
}

M.NetworkBandwidthGbpsRequest = {
    type = "structure",
    id = "NetworkBandwidthGbpsRequest",
    members = {
        Min = {
            type = "double",
        },
        Max = {
            type = "double",
        },
    },
}

M.NetworkInterfaceCountRequest = {
    type = "structure",
    id = "NetworkInterfaceCountRequest",
    members = {
        Min = {
            type = "integer",
        },
        Max = {
            type = "integer",
        },
    },
}

M.TotalLocalStorageGBRequest = {
    type = "structure",
    id = "TotalLocalStorageGBRequest",
    members = {
        Min = {
            type = "double",
        },
        Max = {
            type = "double",
        },
    },
}

M.VCpuCountRequest = {
    type = "structure",
    id = "VCpuCountRequest",
    members = {
        Min = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Max = {
            type = "integer",
        },
    },
}

M.InstanceRequirements = {
    type = "structure",
    id = "InstanceRequirements",
    members = {
        VCpuCount = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VCpuCountRequest }),
        MemoryMiB = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MemoryMiBRequest }),
        CpuManufacturers = {
            type = "list",
            member = { type = "string" },
        },
        MemoryGiBPerVCpu = M.MemoryGiBPerVCpuRequest,
        ExcludedInstanceTypes = {
            type = "list",
            member = { type = "string" },
        },
        InstanceGenerations = {
            type = "list",
            member = { type = "string" },
        },
        SpotMaxPricePercentageOverLowestPrice = {
            type = "integer",
        },
        MaxSpotPriceAsPercentageOfOptimalOnDemandPrice = {
            type = "integer",
        },
        OnDemandMaxPricePercentageOverLowestPrice = {
            type = "integer",
        },
        BareMetal = {
            type = "string",
        },
        BurstablePerformance = {
            type = "string",
        },
        RequireHibernateSupport = {
            type = "boolean",
        },
        NetworkInterfaceCount = M.NetworkInterfaceCountRequest,
        LocalStorage = {
            type = "string",
        },
        LocalStorageTypes = {
            type = "list",
            member = { type = "string" },
        },
        TotalLocalStorageGB = M.TotalLocalStorageGBRequest,
        BaselineEbsBandwidthMbps = M.BaselineEbsBandwidthMbpsRequest,
        AcceleratorTypes = {
            type = "list",
            member = { type = "string" },
        },
        AcceleratorCount = M.AcceleratorCountRequest,
        AcceleratorManufacturers = {
            type = "list",
            member = { type = "string" },
        },
        AcceleratorNames = {
            type = "list",
            member = { type = "string" },
        },
        AcceleratorTotalMemoryMiB = M.AcceleratorTotalMemoryMiBRequest,
        NetworkBandwidthGbps = M.NetworkBandwidthGbpsRequest,
        AllowedInstanceTypes = {
            type = "list",
            member = { type = "string" },
        },
        BaselinePerformanceFactors = M.BaselinePerformanceFactorsRequest,
    },
}

M.LaunchTemplateOverrides = {
    type = "structure",
    id = "LaunchTemplateOverrides",
    members = {
        InstanceType = {
            type = "string",
        },
        WeightedCapacity = {
            type = "string",
        },
        LaunchTemplateSpecification = M.LaunchTemplateSpecification,
        InstanceRequirements = M.InstanceRequirements,
        ImageId = {
            type = "string",
        },
    },
}

M.LaunchTemplate = {
    type = "structure",
    id = "LaunchTemplate",
    members = {
        LaunchTemplateSpecification = M.LaunchTemplateSpecification,
        Overrides = {
            type = "list",
            member = M.LaunchTemplateOverrides,
        },
    },
}

M.MixedInstancesPolicy = {
    type = "structure",
    id = "MixedInstancesPolicy",
    members = {
        LaunchTemplate = M.LaunchTemplate,
        InstancesDistribution = M.InstancesDistribution,
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        ResourceId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
        },
        PropagateAtLaunch = {
            type = "boolean",
        },
    },
}

M.CreateAutoScalingGroupInput = {
    type = "structure",
    id = "CreateAutoScalingGroupInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LaunchConfigurationName = {
            type = "string",
        },
        LaunchTemplate = M.LaunchTemplateSpecification,
        MixedInstancesPolicy = M.MixedInstancesPolicy,
        InstanceId = {
            type = "string",
        },
        MinSize = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        MaxSize = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        DesiredCapacity = {
            type = "integer",
        },
        DefaultCooldown = {
            type = "integer",
        },
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
        AvailabilityZoneIds = {
            type = "list",
            member = { type = "string" },
        },
        LoadBalancerNames = {
            type = "list",
            member = { type = "string" },
        },
        TargetGroupARNs = {
            type = "list",
            member = { type = "string" },
        },
        HealthCheckType = {
            type = "string",
        },
        HealthCheckGracePeriod = {
            type = "integer",
        },
        PlacementGroup = {
            type = "string",
        },
        VPCZoneIdentifier = {
            type = "string",
        },
        TerminationPolicies = {
            type = "list",
            member = { type = "string" },
        },
        NewInstancesProtectedFromScaleIn = {
            type = "boolean",
        },
        CapacityRebalance = {
            type = "boolean",
        },
        LifecycleHookSpecificationList = {
            type = "list",
            member = M.LifecycleHookSpecification,
        },
        DeletionProtection = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ServiceLinkedRoleARN = {
            type = "string",
        },
        MaxInstanceLifetime = {
            type = "integer",
        },
        Context = {
            type = "string",
        },
        DesiredCapacityType = {
            type = "string",
        },
        DefaultInstanceWarmup = {
            type = "integer",
        },
        TrafficSources = {
            type = "list",
            member = M.TrafficSourceIdentifier,
        },
        InstanceMaintenancePolicy = M.InstanceMaintenancePolicy,
        AvailabilityZoneDistribution = M.AvailabilityZoneDistribution,
        AvailabilityZoneImpairmentPolicy = M.AvailabilityZoneImpairmentPolicy,
        SkipZonalShiftValidation = {
            type = "boolean",
        },
        CapacityReservationSpecification = M.CapacityReservationSpecification,
        InstanceLifecyclePolicy = M.InstanceLifecyclePolicy,
    },
}

M.CreateAutoScalingGroupOutput = {
    type = "structure",
    id = "CreateAutoScalingGroupOutput",
}

M.Ebs = {
    type = "structure",
    id = "Ebs",
    members = {
        SnapshotId = {
            type = "string",
        },
        VolumeSize = {
            type = "integer",
        },
        VolumeType = {
            type = "string",
        },
        DeleteOnTermination = {
            type = "boolean",
        },
        Iops = {
            type = "integer",
        },
        Encrypted = {
            type = "boolean",
        },
        Throughput = {
            type = "integer",
        },
    },
}

M.BlockDeviceMapping = {
    type = "structure",
    id = "BlockDeviceMapping",
    members = {
        VirtualName = {
            type = "string",
        },
        DeviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Ebs = M.Ebs,
        NoDevice = {
            type = "boolean",
        },
    },
}

M.InstanceMonitoring = {
    type = "structure",
    id = "InstanceMonitoring",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.InstanceMetadataEndpointState = {
    Disabled = "disabled",
    Enabled = "enabled",
}

M.InstanceMetadataHttpTokensState = {
    Optional = "optional",
    Required = "required",
}

M.InstanceMetadataOptions = {
    type = "structure",
    id = "InstanceMetadataOptions",
    members = {
        HttpTokens = {
            type = "string",
        },
        HttpPutResponseHopLimit = {
            type = "integer",
        },
        HttpEndpoint = {
            type = "string",
        },
    },
}

M.CreateLaunchConfigurationInput = {
    type = "structure",
    id = "CreateLaunchConfigurationInput",
    members = {
        LaunchConfigurationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ImageId = {
            type = "string",
        },
        KeyName = {
            type = "string",
        },
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
        ClassicLinkVPCId = {
            type = "string",
        },
        ClassicLinkVPCSecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
        UserData = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        InstanceType = {
            type = "string",
        },
        KernelId = {
            type = "string",
        },
        RamdiskId = {
            type = "string",
        },
        BlockDeviceMappings = {
            type = "list",
            member = M.BlockDeviceMapping,
        },
        InstanceMonitoring = M.InstanceMonitoring,
        SpotPrice = {
            type = "string",
        },
        IamInstanceProfile = {
            type = "string",
        },
        EbsOptimized = {
            type = "boolean",
        },
        AssociatePublicIpAddress = {
            type = "boolean",
        },
        PlacementTenancy = {
            type = "string",
        },
        MetadataOptions = M.InstanceMetadataOptions,
    },
}

M.CreateLaunchConfigurationOutput = {
    type = "structure",
    id = "CreateLaunchConfigurationOutput",
}

M.CreateOrUpdateTagsInput = {
    type = "structure",
    id = "CreateOrUpdateTagsInput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateOrUpdateTagsOutput = {
    type = "structure",
    id = "CreateOrUpdateTagsOutput",
}

M.ResourceInUseFault = {
    type = "structure",
    id = "ResourceInUseFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteAutoScalingGroupInput = {
    type = "structure",
    id = "DeleteAutoScalingGroupInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ForceDelete = {
            type = "boolean",
        },
    },
}

M.DeleteAutoScalingGroupOutput = {
    type = "structure",
    id = "DeleteAutoScalingGroupOutput",
}

M.ScalingActivityInProgressFault = {
    type = "structure",
    id = "ScalingActivityInProgressFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteLaunchConfigurationInput = {
    type = "structure",
    id = "DeleteLaunchConfigurationInput",
    members = {
        LaunchConfigurationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLaunchConfigurationOutput = {
    type = "structure",
    id = "DeleteLaunchConfigurationOutput",
}

M.DeleteLifecycleHookInput = {
    type = "structure",
    id = "DeleteLifecycleHookInput",
    members = {
        LifecycleHookName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLifecycleHookOutput = {
    type = "structure",
    id = "DeleteLifecycleHookOutput",
}

M.DeleteNotificationConfigurationInput = {
    type = "structure",
    id = "DeleteNotificationConfigurationInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TopicARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteNotificationConfigurationOutput = {
    type = "structure",
    id = "DeleteNotificationConfigurationOutput",
}

M.DeletePolicyInput = {
    type = "structure",
    id = "DeletePolicyInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
        },
        PolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePolicyOutput = {
    type = "structure",
    id = "DeletePolicyOutput",
}

M.DeleteScheduledActionInput = {
    type = "structure",
    id = "DeleteScheduledActionInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScheduledActionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteScheduledActionOutput = {
    type = "structure",
    id = "DeleteScheduledActionOutput",
}

M.DeleteTagsInput = {
    type = "structure",
    id = "DeleteTagsInput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTagsOutput = {
    type = "structure",
    id = "DeleteTagsOutput",
}

M.DeleteWarmPoolInput = {
    type = "structure",
    id = "DeleteWarmPoolInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ForceDelete = {
            type = "boolean",
        },
    },
}

M.DeleteWarmPoolOutput = {
    type = "structure",
    id = "DeleteWarmPoolOutput",
}

M.DescribeAccountLimitsInput = {
    type = "structure",
    id = "DescribeAccountLimitsInput",
}

M.DescribeAccountLimitsOutput = {
    type = "structure",
    id = "DescribeAccountLimitsOutput",
    members = {
        MaxNumberOfAutoScalingGroups = {
            type = "integer",
        },
        MaxNumberOfLaunchConfigurations = {
            type = "integer",
        },
        NumberOfAutoScalingGroups = {
            type = "integer",
        },
        NumberOfLaunchConfigurations = {
            type = "integer",
        },
    },
}

M.DescribeAdjustmentTypesInput = {
    type = "structure",
    id = "DescribeAdjustmentTypesInput",
}

M.DescribeAdjustmentTypesOutput = {
    type = "structure",
    id = "DescribeAdjustmentTypesOutput",
    members = {
        AdjustmentTypes = {
            type = "list",
            member = M.AdjustmentType,
        },
    },
}

M.Filter = {
    type = "structure",
    id = "Filter",
    members = {
        Name = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeAutoScalingGroupsInput = {
    type = "structure",
    id = "DescribeAutoScalingGroupsInput",
    members = {
        AutoScalingGroupNames = {
            type = "list",
            member = { type = "string" },
        },
        IncludeInstances = {
            type = "boolean",
        },
        NextToken = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
    },
}

M.EnabledMetric = {
    type = "structure",
    id = "EnabledMetric",
    members = {
        Metric = {
            type = "string",
        },
        Granularity = {
            type = "string",
        },
    },
}

M.LifecycleState = {
    PENDING = "Pending",
    PENDING_WAIT = "Pending:Wait",
    PENDING_PROCEED = "Pending:Proceed",
    QUARANTINED = "Quarantined",
    IN_SERVICE = "InService",
    TERMINATING = "Terminating",
    TERMINATING_WAIT = "Terminating:Wait",
    TERMINATING_PROCEED = "Terminating:Proceed",
    TERMINATING_RETAINED = "Terminating:Retained",
    TERMINATED = "Terminated",
    DETACHING = "Detaching",
    DETACHED = "Detached",
    ENTERING_STANDBY = "EnteringStandby",
    STANDBY = "Standby",
    REPLACING_ROOT_VOLUME = "ReplacingRootVolume",
    REPLACING_ROOT_VOLUME_WAIT = "ReplacingRootVolume:Wait",
    REPLACING_ROOT_VOLUME_PROCEED = "ReplacingRootVolume:Proceed",
    ROOT_VOLUME_REPLACED = "RootVolumeReplaced",
    WARMED_PENDING = "Warmed:Pending",
    WARMED_PENDING_WAIT = "Warmed:Pending:Wait",
    WARMED_PENDING_PROCEED = "Warmed:Pending:Proceed",
    WARMED_PENDING_RETAINED = "Warmed:Pending:Retained",
    WARMED_TERMINATING = "Warmed:Terminating",
    WARMED_TERMINATING_WAIT = "Warmed:Terminating:Wait",
    WARMED_TERMINATING_PROCEED = "Warmed:Terminating:Proceed",
    WARMED_TERMINATING_RETAINED = "Warmed:Terminating:Retained",
    WARMED_TERMINATED = "Warmed:Terminated",
    WARMED_STOPPED = "Warmed:Stopped",
    WARMED_RUNNING = "Warmed:Running",
    WARMED_HIBERNATED = "Warmed:Hibernated",
}

M.Instance = {
    type = "structure",
    id = "Instance",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceType = {
            type = "string",
        },
        AvailabilityZone = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AvailabilityZoneId = {
            type = "string",
        },
        LifecycleState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HealthStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LaunchConfigurationName = {
            type = "string",
        },
        LaunchTemplate = M.LaunchTemplateSpecification,
        ImageId = {
            type = "string",
        },
        ProtectedFromScaleIn = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        WeightedCapacity = {
            type = "string",
        },
    },
}

M.SuspendedProcess = {
    type = "structure",
    id = "SuspendedProcess",
    members = {
        ProcessName = {
            type = "string",
        },
        SuspensionReason = {
            type = "string",
        },
    },
}

M.TagDescription = {
    type = "structure",
    id = "TagDescription",
    members = {
        ResourceId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
        PropagateAtLaunch = {
            type = "boolean",
        },
    },
}

M.InstanceReusePolicy = {
    type = "structure",
    id = "InstanceReusePolicy",
    members = {
        ReuseOnScaleIn = {
            type = "boolean",
        },
    },
}

M.WarmPoolState = {
    Stopped = "Stopped",
    Running = "Running",
    Hibernated = "Hibernated",
}

M.WarmPoolStatus = {
    PendingDelete = "PendingDelete",
}

M.WarmPoolConfiguration = {
    type = "structure",
    id = "WarmPoolConfiguration",
    members = {
        MaxGroupPreparedCapacity = {
            type = "integer",
        },
        MinSize = {
            type = "integer",
        },
        PoolState = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        InstanceReusePolicy = M.InstanceReusePolicy,
    },
}

M.AutoScalingGroup = {
    type = "structure",
    id = "AutoScalingGroup",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AutoScalingGroupARN = {
            type = "string",
        },
        LaunchConfigurationName = {
            type = "string",
        },
        LaunchTemplate = M.LaunchTemplateSpecification,
        MixedInstancesPolicy = M.MixedInstancesPolicy,
        MinSize = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        MaxSize = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        DesiredCapacity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        PredictedCapacity = {
            type = "integer",
        },
        DefaultCooldown = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        AvailabilityZoneIds = {
            type = "list",
            member = { type = "string" },
        },
        LoadBalancerNames = {
            type = "list",
            member = { type = "string" },
        },
        TargetGroupARNs = {
            type = "list",
            member = { type = "string" },
        },
        HealthCheckType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HealthCheckGracePeriod = {
            type = "integer",
        },
        Instances = {
            type = "list",
            member = M.Instance,
        },
        CreatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        SuspendedProcesses = {
            type = "list",
            member = M.SuspendedProcess,
        },
        PlacementGroup = {
            type = "string",
        },
        VPCZoneIdentifier = {
            type = "string",
        },
        EnabledMetrics = {
            type = "list",
            member = M.EnabledMetric,
        },
        Status = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.TagDescription,
        },
        TerminationPolicies = {
            type = "list",
            member = { type = "string" },
        },
        NewInstancesProtectedFromScaleIn = {
            type = "boolean",
        },
        ServiceLinkedRoleARN = {
            type = "string",
        },
        MaxInstanceLifetime = {
            type = "integer",
        },
        CapacityRebalance = {
            type = "boolean",
        },
        WarmPoolConfiguration = M.WarmPoolConfiguration,
        WarmPoolSize = {
            type = "integer",
        },
        Context = {
            type = "string",
        },
        DesiredCapacityType = {
            type = "string",
        },
        DefaultInstanceWarmup = {
            type = "integer",
        },
        TrafficSources = {
            type = "list",
            member = M.TrafficSourceIdentifier,
        },
        InstanceMaintenancePolicy = M.InstanceMaintenancePolicy,
        DeletionProtection = {
            type = "string",
        },
        AvailabilityZoneDistribution = M.AvailabilityZoneDistribution,
        AvailabilityZoneImpairmentPolicy = M.AvailabilityZoneImpairmentPolicy,
        CapacityReservationSpecification = M.CapacityReservationSpecification,
        InstanceLifecyclePolicy = M.InstanceLifecyclePolicy,
    },
}

M.DescribeAutoScalingGroupsOutput = {
    type = "structure",
    id = "DescribeAutoScalingGroupsOutput",
    members = {
        AutoScalingGroups = {
            type = "list",
            member = M.AutoScalingGroup,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InvalidNextToken = {
    type = "structure",
    id = "InvalidNextToken",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeAutoScalingInstancesInput = {
    type = "structure",
    id = "DescribeAutoScalingInstancesInput",
    members = {
        InstanceIds = {
            type = "list",
            member = { type = "string" },
        },
        MaxRecords = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.AutoScalingInstanceDetails = {
    type = "structure",
    id = "AutoScalingInstanceDetails",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceType = {
            type = "string",
        },
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AvailabilityZone = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AvailabilityZoneId = {
            type = "string",
        },
        LifecycleState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HealthStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LaunchConfigurationName = {
            type = "string",
        },
        LaunchTemplate = M.LaunchTemplateSpecification,
        ImageId = {
            type = "string",
        },
        ProtectedFromScaleIn = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        WeightedCapacity = {
            type = "string",
        },
    },
}

M.DescribeAutoScalingInstancesOutput = {
    type = "structure",
    id = "DescribeAutoScalingInstancesOutput",
    members = {
        AutoScalingInstances = {
            type = "list",
            member = M.AutoScalingInstanceDetails,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeAutoScalingNotificationTypesInput = {
    type = "structure",
    id = "DescribeAutoScalingNotificationTypesInput",
}

M.DescribeAutoScalingNotificationTypesOutput = {
    type = "structure",
    id = "DescribeAutoScalingNotificationTypesOutput",
    members = {
        AutoScalingNotificationTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeInstanceRefreshesInput = {
    type = "structure",
    id = "DescribeInstanceRefreshesInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceRefreshIds = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
    },
}

M.DesiredConfiguration = {
    type = "structure",
    id = "DesiredConfiguration",
    members = {
        LaunchTemplate = M.LaunchTemplateSpecification,
        MixedInstancesPolicy = M.MixedInstancesPolicy,
    },
}

M.ScaleInProtectedInstances = {
    Refresh = "Refresh",
    Ignore = "Ignore",
    Wait = "Wait",
}

M.StandbyInstances = {
    Terminate = "Terminate",
    Ignore = "Ignore",
    Wait = "Wait",
}

M.RefreshPreferences = {
    type = "structure",
    id = "RefreshPreferences",
    members = {
        MinHealthyPercentage = {
            type = "integer",
        },
        InstanceWarmup = {
            type = "integer",
        },
        CheckpointPercentages = {
            type = "list",
            member = { type = "integer" },
        },
        CheckpointDelay = {
            type = "integer",
        },
        SkipMatching = {
            type = "boolean",
        },
        AutoRollback = {
            type = "boolean",
        },
        ScaleInProtectedInstances = {
            type = "string",
        },
        StandbyInstances = {
            type = "string",
        },
        AlarmSpecification = M.AlarmSpecification,
        MaxHealthyPercentage = {
            type = "integer",
        },
        BakeTime = {
            type = "integer",
        },
    },
}

M.InstanceRefreshLivePoolProgress = {
    type = "structure",
    id = "InstanceRefreshLivePoolProgress",
    members = {
        PercentageComplete = {
            type = "integer",
        },
        InstancesToUpdate = {
            type = "integer",
        },
    },
}

M.InstanceRefreshWarmPoolProgress = {
    type = "structure",
    id = "InstanceRefreshWarmPoolProgress",
    members = {
        PercentageComplete = {
            type = "integer",
        },
        InstancesToUpdate = {
            type = "integer",
        },
    },
}

M.InstanceRefreshProgressDetails = {
    type = "structure",
    id = "InstanceRefreshProgressDetails",
    members = {
        LivePoolProgress = M.InstanceRefreshLivePoolProgress,
        WarmPoolProgress = M.InstanceRefreshWarmPoolProgress,
    },
}

M.RollbackDetails = {
    type = "structure",
    id = "RollbackDetails",
    members = {
        RollbackReason = {
            type = "string",
        },
        RollbackStartTime = {
            type = "timestamp",
        },
        PercentageCompleteOnRollback = {
            type = "integer",
        },
        InstancesToUpdateOnRollback = {
            type = "integer",
        },
        ProgressDetailsOnRollback = M.InstanceRefreshProgressDetails,
    },
}

M.InstanceRefreshStatus = {
    Pending = "Pending",
    InProgress = "InProgress",
    Successful = "Successful",
    Failed = "Failed",
    Cancelling = "Cancelling",
    Cancelled = "Cancelled",
    RollbackInProgress = "RollbackInProgress",
    RollbackFailed = "RollbackFailed",
    RollbackSuccessful = "RollbackSuccessful",
    Baking = "Baking",
}

M.RefreshStrategy = {
    Rolling = "Rolling",
    ReplaceRootVolume = "ReplaceRootVolume",
}

M.InstanceRefresh = {
    type = "structure",
    id = "InstanceRefresh",
    members = {
        InstanceRefreshId = {
            type = "string",
        },
        AutoScalingGroupName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        PercentageComplete = {
            type = "integer",
        },
        InstancesToUpdate = {
            type = "integer",
        },
        ProgressDetails = M.InstanceRefreshProgressDetails,
        Preferences = M.RefreshPreferences,
        DesiredConfiguration = M.DesiredConfiguration,
        RollbackDetails = M.RollbackDetails,
        Strategy = {
            type = "string",
        },
    },
}

M.DescribeInstanceRefreshesOutput = {
    type = "structure",
    id = "DescribeInstanceRefreshesOutput",
    members = {
        InstanceRefreshes = {
            type = "list",
            member = M.InstanceRefresh,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeLaunchConfigurationsInput = {
    type = "structure",
    id = "DescribeLaunchConfigurationsInput",
    members = {
        LaunchConfigurationNames = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
    },
}

M.LaunchConfiguration = {
    type = "structure",
    id = "LaunchConfiguration",
    members = {
        LaunchConfigurationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LaunchConfigurationARN = {
            type = "string",
        },
        ImageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyName = {
            type = "string",
        },
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
        ClassicLinkVPCId = {
            type = "string",
        },
        ClassicLinkVPCSecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
        UserData = {
            type = "string",
        },
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KernelId = {
            type = "string",
        },
        RamdiskId = {
            type = "string",
        },
        BlockDeviceMappings = {
            type = "list",
            member = M.BlockDeviceMapping,
        },
        InstanceMonitoring = M.InstanceMonitoring,
        SpotPrice = {
            type = "string",
        },
        IamInstanceProfile = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EbsOptimized = {
            type = "boolean",
        },
        AssociatePublicIpAddress = {
            type = "boolean",
        },
        PlacementTenancy = {
            type = "string",
        },
        MetadataOptions = M.InstanceMetadataOptions,
    },
}

M.DescribeLaunchConfigurationsOutput = {
    type = "structure",
    id = "DescribeLaunchConfigurationsOutput",
    members = {
        LaunchConfigurations = {
            type = "list",
            member = M.LaunchConfiguration,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeLifecycleHooksInput = {
    type = "structure",
    id = "DescribeLifecycleHooksInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LifecycleHookNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.LifecycleHook = {
    type = "structure",
    id = "LifecycleHook",
    members = {
        LifecycleHookName = {
            type = "string",
        },
        AutoScalingGroupName = {
            type = "string",
        },
        LifecycleTransition = {
            type = "string",
        },
        NotificationTargetARN = {
            type = "string",
        },
        RoleARN = {
            type = "string",
        },
        NotificationMetadata = {
            type = "string",
        },
        HeartbeatTimeout = {
            type = "integer",
        },
        GlobalTimeout = {
            type = "integer",
        },
        DefaultResult = {
            type = "string",
        },
    },
}

M.DescribeLifecycleHooksOutput = {
    type = "structure",
    id = "DescribeLifecycleHooksOutput",
    members = {
        LifecycleHooks = {
            type = "list",
            member = M.LifecycleHook,
        },
    },
}

M.DescribeLifecycleHookTypesInput = {
    type = "structure",
    id = "DescribeLifecycleHookTypesInput",
}

M.DescribeLifecycleHookTypesOutput = {
    type = "structure",
    id = "DescribeLifecycleHookTypesOutput",
    members = {
        LifecycleHookTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeLoadBalancersInput = {
    type = "structure",
    id = "DescribeLoadBalancersInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
    },
}

M.LoadBalancerState = {
    type = "structure",
    id = "LoadBalancerState",
    members = {
        LoadBalancerName = {
            type = "string",
        },
        State = {
            type = "string",
        },
    },
}

M.DescribeLoadBalancersOutput = {
    type = "structure",
    id = "DescribeLoadBalancersOutput",
    members = {
        LoadBalancers = {
            type = "list",
            member = M.LoadBalancerState,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeLoadBalancerTargetGroupsInput = {
    type = "structure",
    id = "DescribeLoadBalancerTargetGroupsInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
    },
}

M.LoadBalancerTargetGroupState = {
    type = "structure",
    id = "LoadBalancerTargetGroupState",
    members = {
        LoadBalancerTargetGroupARN = {
            type = "string",
        },
        State = {
            type = "string",
        },
    },
}

M.DescribeLoadBalancerTargetGroupsOutput = {
    type = "structure",
    id = "DescribeLoadBalancerTargetGroupsOutput",
    members = {
        LoadBalancerTargetGroups = {
            type = "list",
            member = M.LoadBalancerTargetGroupState,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeMetricCollectionTypesInput = {
    type = "structure",
    id = "DescribeMetricCollectionTypesInput",
}

M.MetricGranularityType = {
    type = "structure",
    id = "MetricGranularityType",
    members = {
        Granularity = {
            type = "string",
        },
    },
}

M.MetricCollectionType = {
    type = "structure",
    id = "MetricCollectionType",
    members = {
        Metric = {
            type = "string",
        },
    },
}

M.DescribeMetricCollectionTypesOutput = {
    type = "structure",
    id = "DescribeMetricCollectionTypesOutput",
    members = {
        Metrics = {
            type = "list",
            member = M.MetricCollectionType,
        },
        Granularities = {
            type = "list",
            member = M.MetricGranularityType,
        },
    },
}

M.DescribeNotificationConfigurationsInput = {
    type = "structure",
    id = "DescribeNotificationConfigurationsInput",
    members = {
        AutoScalingGroupNames = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
    },
}

M.NotificationConfiguration = {
    type = "structure",
    id = "NotificationConfiguration",
    members = {
        AutoScalingGroupName = {
            type = "string",
        },
        TopicARN = {
            type = "string",
        },
        NotificationType = {
            type = "string",
        },
    },
}

M.DescribeNotificationConfigurationsOutput = {
    type = "structure",
    id = "DescribeNotificationConfigurationsOutput",
    members = {
        NotificationConfigurations = {
            type = "list",
            member = M.NotificationConfiguration,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribePoliciesInput = {
    type = "structure",
    id = "DescribePoliciesInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
        },
        PolicyNames = {
            type = "list",
            member = { type = "string" },
        },
        PolicyTypes = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
    },
}

M.PredictiveScalingMaxCapacityBreachBehavior = {
    HonorMaxCapacity = "HonorMaxCapacity",
    IncreaseMaxCapacity = "IncreaseMaxCapacity",
}

M.MetricDimension = {
    type = "structure",
    id = "MetricDimension",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Metric = {
    type = "structure",
    id = "Metric",
    members = {
        Namespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MetricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Dimensions = {
            type = "list",
            member = M.MetricDimension,
        },
    },
}

M.MetricStat = {
    type = "structure",
    id = "MetricStat",
    members = {
        Metric = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Metric }),
        Stat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Unit = {
            type = "string",
        },
    },
}

M.MetricDataQuery = {
    type = "structure",
    id = "MetricDataQuery",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Expression = {
            type = "string",
        },
        MetricStat = M.MetricStat,
        Label = {
            type = "string",
        },
        ReturnData = {
            type = "boolean",
        },
    },
}

M.PredictiveScalingCustomizedCapacityMetric = {
    type = "structure",
    id = "PredictiveScalingCustomizedCapacityMetric",
    members = {
        MetricDataQueries = {
            type = "list",
            member = M.MetricDataQuery,
            traits = {
                required = true,
            },
        },
    },
}

M.PredictiveScalingCustomizedLoadMetric = {
    type = "structure",
    id = "PredictiveScalingCustomizedLoadMetric",
    members = {
        MetricDataQueries = {
            type = "list",
            member = M.MetricDataQuery,
            traits = {
                required = true,
            },
        },
    },
}

M.PredictiveScalingCustomizedScalingMetric = {
    type = "structure",
    id = "PredictiveScalingCustomizedScalingMetric",
    members = {
        MetricDataQueries = {
            type = "list",
            member = M.MetricDataQuery,
            traits = {
                required = true,
            },
        },
    },
}

M.PredefinedLoadMetricType = {
    ASGTotalCPUUtilization = "ASGTotalCPUUtilization",
    ASGTotalNetworkIn = "ASGTotalNetworkIn",
    ASGTotalNetworkOut = "ASGTotalNetworkOut",
    ALBTargetGroupRequestCount = "ALBTargetGroupRequestCount",
}

M.PredictiveScalingPredefinedLoadMetric = {
    type = "structure",
    id = "PredictiveScalingPredefinedLoadMetric",
    members = {
        PredefinedMetricType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceLabel = {
            type = "string",
        },
    },
}

M.PredefinedMetricPairType = {
    ASGCPUUtilization = "ASGCPUUtilization",
    ASGNetworkIn = "ASGNetworkIn",
    ASGNetworkOut = "ASGNetworkOut",
    ALBRequestCount = "ALBRequestCount",
}

M.PredictiveScalingPredefinedMetricPair = {
    type = "structure",
    id = "PredictiveScalingPredefinedMetricPair",
    members = {
        PredefinedMetricType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceLabel = {
            type = "string",
        },
    },
}

M.PredefinedScalingMetricType = {
    ASGAverageCPUUtilization = "ASGAverageCPUUtilization",
    ASGAverageNetworkIn = "ASGAverageNetworkIn",
    ASGAverageNetworkOut = "ASGAverageNetworkOut",
    ALBRequestCountPerTarget = "ALBRequestCountPerTarget",
}

M.PredictiveScalingPredefinedScalingMetric = {
    type = "structure",
    id = "PredictiveScalingPredefinedScalingMetric",
    members = {
        PredefinedMetricType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceLabel = {
            type = "string",
        },
    },
}

M.PredictiveScalingMetricSpecification = {
    type = "structure",
    id = "PredictiveScalingMetricSpecification",
    members = {
        TargetValue = {
            type = "double",
            traits = {
                required = true,
            },
        },
        PredefinedMetricPairSpecification = M.PredictiveScalingPredefinedMetricPair,
        PredefinedScalingMetricSpecification = M.PredictiveScalingPredefinedScalingMetric,
        PredefinedLoadMetricSpecification = M.PredictiveScalingPredefinedLoadMetric,
        CustomizedScalingMetricSpecification = M.PredictiveScalingCustomizedScalingMetric,
        CustomizedLoadMetricSpecification = M.PredictiveScalingCustomizedLoadMetric,
        CustomizedCapacityMetricSpecification = M.PredictiveScalingCustomizedCapacityMetric,
    },
}

M.PredictiveScalingMode = {
    ForecastAndScale = "ForecastAndScale",
    ForecastOnly = "ForecastOnly",
}

M.PredictiveScalingConfiguration = {
    type = "structure",
    id = "PredictiveScalingConfiguration",
    members = {
        MetricSpecifications = {
            type = "list",
            member = M.PredictiveScalingMetricSpecification,
            traits = {
                required = true,
            },
        },
        Mode = {
            type = "string",
        },
        SchedulingBufferTime = {
            type = "integer",
        },
        MaxCapacityBreachBehavior = {
            type = "string",
        },
        MaxCapacityBuffer = {
            type = "integer",
        },
    },
}

M.StepAdjustment = {
    type = "structure",
    id = "StepAdjustment",
    members = {
        MetricIntervalLowerBound = {
            type = "double",
        },
        MetricIntervalUpperBound = {
            type = "double",
        },
        ScalingAdjustment = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.TargetTrackingMetricStat = {
    type = "structure",
    id = "TargetTrackingMetricStat",
    members = {
        Metric = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Metric }),
        Stat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Unit = {
            type = "string",
        },
        Period = {
            type = "integer",
        },
    },
}

M.TargetTrackingMetricDataQuery = {
    type = "structure",
    id = "TargetTrackingMetricDataQuery",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Expression = {
            type = "string",
        },
        MetricStat = M.TargetTrackingMetricStat,
        Label = {
            type = "string",
        },
        Period = {
            type = "integer",
        },
        ReturnData = {
            type = "boolean",
        },
    },
}

M.MetricStatistic = {
    Average = "Average",
    Minimum = "Minimum",
    Maximum = "Maximum",
    SampleCount = "SampleCount",
    Sum = "Sum",
}

M.CustomizedMetricSpecification = {
    type = "structure",
    id = "CustomizedMetricSpecification",
    members = {
        MetricName = {
            type = "string",
        },
        Namespace = {
            type = "string",
        },
        Dimensions = {
            type = "list",
            member = M.MetricDimension,
        },
        Statistic = {
            type = "string",
        },
        Unit = {
            type = "string",
        },
        Period = {
            type = "integer",
        },
        Metrics = {
            type = "list",
            member = M.TargetTrackingMetricDataQuery,
        },
    },
}

M.MetricType = {
    ASGAverageCPUUtilization = "ASGAverageCPUUtilization",
    ASGAverageNetworkIn = "ASGAverageNetworkIn",
    ASGAverageNetworkOut = "ASGAverageNetworkOut",
    ALBRequestCountPerTarget = "ALBRequestCountPerTarget",
}

M.PredefinedMetricSpecification = {
    type = "structure",
    id = "PredefinedMetricSpecification",
    members = {
        PredefinedMetricType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceLabel = {
            type = "string",
        },
    },
}

M.TargetTrackingConfiguration = {
    type = "structure",
    id = "TargetTrackingConfiguration",
    members = {
        PredefinedMetricSpecification = M.PredefinedMetricSpecification,
        CustomizedMetricSpecification = M.CustomizedMetricSpecification,
        TargetValue = {
            type = "double",
            traits = {
                required = true,
            },
        },
        DisableScaleIn = {
            type = "boolean",
        },
    },
}

M.ScalingPolicy = {
    type = "structure",
    id = "ScalingPolicy",
    members = {
        AutoScalingGroupName = {
            type = "string",
        },
        PolicyName = {
            type = "string",
        },
        PolicyARN = {
            type = "string",
        },
        PolicyType = {
            type = "string",
        },
        AdjustmentType = {
            type = "string",
        },
        MinAdjustmentStep = {
            type = "integer",
        },
        MinAdjustmentMagnitude = {
            type = "integer",
        },
        ScalingAdjustment = {
            type = "integer",
        },
        Cooldown = {
            type = "integer",
        },
        StepAdjustments = {
            type = "list",
            member = M.StepAdjustment,
        },
        MetricAggregationType = {
            type = "string",
        },
        EstimatedInstanceWarmup = {
            type = "integer",
        },
        Alarms = {
            type = "list",
            member = M.Alarm,
        },
        TargetTrackingConfiguration = M.TargetTrackingConfiguration,
        Enabled = {
            type = "boolean",
        },
        PredictiveScalingConfiguration = M.PredictiveScalingConfiguration,
    },
}

M.DescribePoliciesOutput = {
    type = "structure",
    id = "DescribePoliciesOutput",
    members = {
        ScalingPolicies = {
            type = "list",
            member = M.ScalingPolicy,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeScalingActivitiesInput = {
    type = "structure",
    id = "DescribeScalingActivitiesInput",
    members = {
        ActivityIds = {
            type = "list",
            member = { type = "string" },
        },
        AutoScalingGroupName = {
            type = "string",
        },
        IncludeDeletedGroups = {
            type = "boolean",
        },
        MaxRecords = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
    },
}

M.DescribeScalingActivitiesOutput = {
    type = "structure",
    id = "DescribeScalingActivitiesOutput",
    members = {
        Activities = {
            type = "list",
            member = M.Activity,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeScalingProcessTypesInput = {
    type = "structure",
    id = "DescribeScalingProcessTypesInput",
}

M.ProcessType = {
    type = "structure",
    id = "ProcessType",
    members = {
        ProcessName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeScalingProcessTypesOutput = {
    type = "structure",
    id = "DescribeScalingProcessTypesOutput",
    members = {
        Processes = {
            type = "list",
            member = M.ProcessType,
        },
    },
}

M.DescribeScheduledActionsInput = {
    type = "structure",
    id = "DescribeScheduledActionsInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
        },
        ScheduledActionNames = {
            type = "list",
            member = { type = "string" },
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        NextToken = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
    },
}

M.ScheduledUpdateGroupAction = {
    type = "structure",
    id = "ScheduledUpdateGroupAction",
    members = {
        AutoScalingGroupName = {
            type = "string",
        },
        ScheduledActionName = {
            type = "string",
        },
        ScheduledActionARN = {
            type = "string",
        },
        Time = {
            type = "timestamp",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        Recurrence = {
            type = "string",
        },
        MinSize = {
            type = "integer",
        },
        MaxSize = {
            type = "integer",
        },
        DesiredCapacity = {
            type = "integer",
        },
        TimeZone = {
            type = "string",
        },
    },
}

M.DescribeScheduledActionsOutput = {
    type = "structure",
    id = "DescribeScheduledActionsOutput",
    members = {
        ScheduledUpdateGroupActions = {
            type = "list",
            member = M.ScheduledUpdateGroupAction,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeTagsInput = {
    type = "structure",
    id = "DescribeTagsInput",
    members = {
        Filters = {
            type = "list",
            member = M.Filter,
        },
        NextToken = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
    },
}

M.DescribeTagsOutput = {
    type = "structure",
    id = "DescribeTagsOutput",
    members = {
        Tags = {
            type = "list",
            member = M.TagDescription,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeTerminationPolicyTypesInput = {
    type = "structure",
    id = "DescribeTerminationPolicyTypesInput",
}

M.DescribeTerminationPolicyTypesOutput = {
    type = "structure",
    id = "DescribeTerminationPolicyTypesOutput",
    members = {
        TerminationPolicyTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeTrafficSourcesInput = {
    type = "structure",
    id = "DescribeTrafficSourcesInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrafficSourceType = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
    },
}

M.TrafficSourceState = {
    type = "structure",
    id = "TrafficSourceState",
    members = {
        TrafficSource = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Identifier = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.DescribeTrafficSourcesOutput = {
    type = "structure",
    id = "DescribeTrafficSourcesOutput",
    members = {
        TrafficSources = {
            type = "list",
            member = M.TrafficSourceState,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeWarmPoolInput = {
    type = "structure",
    id = "DescribeWarmPoolInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxRecords = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeWarmPoolOutput = {
    type = "structure",
    id = "DescribeWarmPoolOutput",
    members = {
        WarmPoolConfiguration = M.WarmPoolConfiguration,
        Instances = {
            type = "list",
            member = M.Instance,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DetachInstancesInput = {
    type = "structure",
    id = "DetachInstancesInput",
    members = {
        InstanceIds = {
            type = "list",
            member = { type = "string" },
        },
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ShouldDecrementDesiredCapacity = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.DetachInstancesOutput = {
    type = "structure",
    id = "DetachInstancesOutput",
    members = {
        Activities = {
            type = "list",
            member = M.Activity,
        },
    },
}

M.DetachLoadBalancersInput = {
    type = "structure",
    id = "DetachLoadBalancersInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LoadBalancerNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DetachLoadBalancersOutput = {
    type = "structure",
    id = "DetachLoadBalancersOutput",
}

M.DetachLoadBalancerTargetGroupsInput = {
    type = "structure",
    id = "DetachLoadBalancerTargetGroupsInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetGroupARNs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DetachLoadBalancerTargetGroupsOutput = {
    type = "structure",
    id = "DetachLoadBalancerTargetGroupsOutput",
}

M.DetachTrafficSourcesInput = {
    type = "structure",
    id = "DetachTrafficSourcesInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrafficSources = {
            type = "list",
            member = M.TrafficSourceIdentifier,
            traits = {
                required = true,
            },
        },
    },
}

M.DetachTrafficSourcesOutput = {
    type = "structure",
    id = "DetachTrafficSourcesOutput",
}

M.DisableMetricsCollectionInput = {
    type = "structure",
    id = "DisableMetricsCollectionInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Metrics = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DisableMetricsCollectionOutput = {
    type = "structure",
    id = "DisableMetricsCollectionOutput",
}

M.EnableMetricsCollectionInput = {
    type = "structure",
    id = "EnableMetricsCollectionInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Metrics = {
            type = "list",
            member = { type = "string" },
        },
        Granularity = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EnableMetricsCollectionOutput = {
    type = "structure",
    id = "EnableMetricsCollectionOutput",
}

M.EnterStandbyInput = {
    type = "structure",
    id = "EnterStandbyInput",
    members = {
        InstanceIds = {
            type = "list",
            member = { type = "string" },
        },
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ShouldDecrementDesiredCapacity = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.EnterStandbyOutput = {
    type = "structure",
    id = "EnterStandbyOutput",
    members = {
        Activities = {
            type = "list",
            member = M.Activity,
        },
    },
}

M.ExecutePolicyInput = {
    type = "structure",
    id = "ExecutePolicyInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
        },
        PolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HonorCooldown = {
            type = "boolean",
        },
        MetricValue = {
            type = "double",
        },
        BreachThreshold = {
            type = "double",
        },
    },
}

M.ExecutePolicyOutput = {
    type = "structure",
    id = "ExecutePolicyOutput",
}

M.ExitStandbyInput = {
    type = "structure",
    id = "ExitStandbyInput",
    members = {
        InstanceIds = {
            type = "list",
            member = { type = "string" },
        },
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExitStandbyOutput = {
    type = "structure",
    id = "ExitStandbyOutput",
    members = {
        Activities = {
            type = "list",
            member = M.Activity,
        },
    },
}

M.GetPredictiveScalingForecastInput = {
    type = "structure",
    id = "GetPredictiveScalingForecastInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.CapacityForecast = {
    type = "structure",
    id = "CapacityForecast",
    members = {
        Timestamps = {
            type = "list",
            member = { type = "timestamp" },
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
    },
}

M.LoadForecast = {
    type = "structure",
    id = "LoadForecast",
    members = {
        Timestamps = {
            type = "list",
            member = { type = "timestamp" },
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        MetricSpecification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PredictiveScalingMetricSpecification }),
    },
}

M.GetPredictiveScalingForecastOutput = {
    type = "structure",
    id = "GetPredictiveScalingForecastOutput",
    members = {
        LoadForecast = {
            type = "list",
            member = M.LoadForecast,
            traits = {
                required = true,
            },
        },
        CapacityForecast = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CapacityForecast }),
        UpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.IdempotentParameterMismatchError = {
    type = "structure",
    id = "IdempotentParameterMismatchError",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RetryStrategy = {
    RETRY_WITH_GROUP_CONFIGURATION = "retry-with-group-configuration",
    NONE = "none",
}

M.LaunchInstancesInput = {
    type = "structure",
    id = "LaunchInstancesInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RequestedCapacity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
        AvailabilityZoneIds = {
            type = "list",
            member = { type = "string" },
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        RetryStrategy = {
            type = "string",
        },
    },
}

M.LaunchInstancesError = {
    type = "structure",
    id = "LaunchInstancesError",
    members = {
        InstanceType = {
            type = "string",
        },
        MarketType = {
            type = "string",
        },
        SubnetId = {
            type = "string",
        },
        AvailabilityZone = {
            type = "string",
        },
        AvailabilityZoneId = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.InstanceCollection = {
    type = "structure",
    id = "InstanceCollection",
    members = {
        InstanceType = {
            type = "string",
        },
        MarketType = {
            type = "string",
        },
        SubnetId = {
            type = "string",
        },
        AvailabilityZone = {
            type = "string",
        },
        AvailabilityZoneId = {
            type = "string",
        },
        InstanceIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.LaunchInstancesOutput = {
    type = "structure",
    id = "LaunchInstancesOutput",
    members = {
        AutoScalingGroupName = {
            type = "string",
        },
        ClientToken = {
            type = "string",
        },
        Instances = {
            type = "list",
            member = M.InstanceCollection,
        },
        Errors = {
            type = "list",
            member = M.LaunchInstancesError,
        },
    },
}

M.PutLifecycleHookInput = {
    type = "structure",
    id = "PutLifecycleHookInput",
    members = {
        LifecycleHookName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LifecycleTransition = {
            type = "string",
        },
        RoleARN = {
            type = "string",
        },
        NotificationTargetARN = {
            type = "string",
        },
        NotificationMetadata = {
            type = "string",
        },
        HeartbeatTimeout = {
            type = "integer",
        },
        DefaultResult = {
            type = "string",
        },
    },
}

M.PutLifecycleHookOutput = {
    type = "structure",
    id = "PutLifecycleHookOutput",
}

M.PutNotificationConfigurationInput = {
    type = "structure",
    id = "PutNotificationConfigurationInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TopicARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NotificationTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.PutNotificationConfigurationOutput = {
    type = "structure",
    id = "PutNotificationConfigurationOutput",
}

M.PutScalingPolicyInput = {
    type = "structure",
    id = "PutScalingPolicyInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyType = {
            type = "string",
        },
        AdjustmentType = {
            type = "string",
        },
        MinAdjustmentStep = {
            type = "integer",
        },
        MinAdjustmentMagnitude = {
            type = "integer",
        },
        ScalingAdjustment = {
            type = "integer",
        },
        Cooldown = {
            type = "integer",
        },
        MetricAggregationType = {
            type = "string",
        },
        StepAdjustments = {
            type = "list",
            member = M.StepAdjustment,
        },
        EstimatedInstanceWarmup = {
            type = "integer",
        },
        TargetTrackingConfiguration = M.TargetTrackingConfiguration,
        Enabled = {
            type = "boolean",
        },
        PredictiveScalingConfiguration = M.PredictiveScalingConfiguration,
    },
}

M.PutScalingPolicyOutput = {
    type = "structure",
    id = "PutScalingPolicyOutput",
    members = {
        PolicyARN = {
            type = "string",
        },
        Alarms = {
            type = "list",
            member = M.Alarm,
        },
    },
}

M.PutScheduledUpdateGroupActionInput = {
    type = "structure",
    id = "PutScheduledUpdateGroupActionInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScheduledActionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Time = {
            type = "timestamp",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        Recurrence = {
            type = "string",
        },
        MinSize = {
            type = "integer",
        },
        MaxSize = {
            type = "integer",
        },
        DesiredCapacity = {
            type = "integer",
        },
        TimeZone = {
            type = "string",
        },
    },
}

M.PutScheduledUpdateGroupActionOutput = {
    type = "structure",
    id = "PutScheduledUpdateGroupActionOutput",
}

M.PutWarmPoolInput = {
    type = "structure",
    id = "PutWarmPoolInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxGroupPreparedCapacity = {
            type = "integer",
        },
        MinSize = {
            type = "integer",
        },
        PoolState = {
            type = "string",
        },
        InstanceReusePolicy = M.InstanceReusePolicy,
    },
}

M.PutWarmPoolOutput = {
    type = "structure",
    id = "PutWarmPoolOutput",
}

M.RecordLifecycleActionHeartbeatInput = {
    type = "structure",
    id = "RecordLifecycleActionHeartbeatInput",
    members = {
        LifecycleHookName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LifecycleActionToken = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
    },
}

M.RecordLifecycleActionHeartbeatOutput = {
    type = "structure",
    id = "RecordLifecycleActionHeartbeatOutput",
}

M.ResumeProcessesInput = {
    type = "structure",
    id = "ResumeProcessesInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScalingProcesses = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ResumeProcessesOutput = {
    type = "structure",
    id = "ResumeProcessesOutput",
}

M.IrreversibleInstanceRefreshFault = {
    type = "structure",
    id = "IrreversibleInstanceRefreshFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RollbackInstanceRefreshInput = {
    type = "structure",
    id = "RollbackInstanceRefreshInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RollbackInstanceRefreshOutput = {
    type = "structure",
    id = "RollbackInstanceRefreshOutput",
    members = {
        InstanceRefreshId = {
            type = "string",
        },
    },
}

M.SetDesiredCapacityInput = {
    type = "structure",
    id = "SetDesiredCapacityInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DesiredCapacity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        HonorCooldown = {
            type = "boolean",
        },
    },
}

M.SetDesiredCapacityOutput = {
    type = "structure",
    id = "SetDesiredCapacityOutput",
}

M.SetInstanceHealthInput = {
    type = "structure",
    id = "SetInstanceHealthInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HealthStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ShouldRespectGracePeriod = {
            type = "boolean",
        },
    },
}

M.SetInstanceHealthOutput = {
    type = "structure",
    id = "SetInstanceHealthOutput",
}

M.SetInstanceProtectionInput = {
    type = "structure",
    id = "SetInstanceProtectionInput",
    members = {
        InstanceIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProtectedFromScaleIn = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.SetInstanceProtectionOutput = {
    type = "structure",
    id = "SetInstanceProtectionOutput",
}

M.StartInstanceRefreshInput = {
    type = "structure",
    id = "StartInstanceRefreshInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Strategy = {
            type = "string",
        },
        DesiredConfiguration = M.DesiredConfiguration,
        Preferences = M.RefreshPreferences,
    },
}

M.StartInstanceRefreshOutput = {
    type = "structure",
    id = "StartInstanceRefreshOutput",
    members = {
        InstanceRefreshId = {
            type = "string",
        },
    },
}

M.SuspendProcessesInput = {
    type = "structure",
    id = "SuspendProcessesInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScalingProcesses = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SuspendProcessesOutput = {
    type = "structure",
    id = "SuspendProcessesOutput",
}

M.TerminateInstanceInAutoScalingGroupInput = {
    type = "structure",
    id = "TerminateInstanceInAutoScalingGroupInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ShouldDecrementDesiredCapacity = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.TerminateInstanceInAutoScalingGroupOutput = {
    type = "structure",
    id = "TerminateInstanceInAutoScalingGroupOutput",
    members = {
        Activity = M.Activity,
    },
}

M.UpdateAutoScalingGroupInput = {
    type = "structure",
    id = "UpdateAutoScalingGroupInput",
    members = {
        AutoScalingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LaunchConfigurationName = {
            type = "string",
        },
        LaunchTemplate = M.LaunchTemplateSpecification,
        MixedInstancesPolicy = M.MixedInstancesPolicy,
        MinSize = {
            type = "integer",
        },
        MaxSize = {
            type = "integer",
        },
        DesiredCapacity = {
            type = "integer",
        },
        DefaultCooldown = {
            type = "integer",
        },
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
        AvailabilityZoneIds = {
            type = "list",
            member = { type = "string" },
        },
        HealthCheckType = {
            type = "string",
        },
        HealthCheckGracePeriod = {
            type = "integer",
        },
        PlacementGroup = {
            type = "string",
        },
        VPCZoneIdentifier = {
            type = "string",
        },
        TerminationPolicies = {
            type = "list",
            member = { type = "string" },
        },
        NewInstancesProtectedFromScaleIn = {
            type = "boolean",
        },
        ServiceLinkedRoleARN = {
            type = "string",
        },
        MaxInstanceLifetime = {
            type = "integer",
        },
        CapacityRebalance = {
            type = "boolean",
        },
        Context = {
            type = "string",
        },
        DesiredCapacityType = {
            type = "string",
        },
        DefaultInstanceWarmup = {
            type = "integer",
        },
        InstanceMaintenancePolicy = M.InstanceMaintenancePolicy,
        AvailabilityZoneDistribution = M.AvailabilityZoneDistribution,
        AvailabilityZoneImpairmentPolicy = M.AvailabilityZoneImpairmentPolicy,
        SkipZonalShiftValidation = {
            type = "boolean",
        },
        CapacityReservationSpecification = M.CapacityReservationSpecification,
        InstanceLifecyclePolicy = M.InstanceLifecyclePolicy,
        DeletionProtection = {
            type = "string",
        },
    },
}

M.UpdateAutoScalingGroupOutput = {
    type = "structure",
    id = "UpdateAutoScalingGroupOutput",
}

return M
