local M = {}

M.AcceleratorCountRequest = {
    type = "structure",
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
    members = {
        AdjustmentType = {
            type = "string",
        },
    },
}

M.Alarm = {
    type = "structure",
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
    members = {
        Alarms = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AttachInstancesInput = {
    type = "structure",
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
}

M.ResourceContentionFault = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceLinkedRoleFailure = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AttachLoadBalancersInput = {
    type = "structure",
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
}

M.InstanceRefreshInProgressFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AttachLoadBalancerTargetGroupsInput = {
    type = "structure",
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
}

M.TrafficSourceIdentifier = {
    type = "structure",
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
}

M.BatchDeleteScheduledActionInput = {
    type = "structure",
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
    members = {
        FailedScheduledActions = {
            type = "list",
            member = M.FailedScheduledUpdateGroupActionRequest,
        },
    },
}

M.ScheduledUpdateGroupActionRequest = {
    type = "structure",
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
    members = {
        FailedScheduledUpdateGroupActions = {
            type = "list",
            member = M.FailedScheduledUpdateGroupActionRequest,
        },
    },
}

M.LimitExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CancelInstanceRefreshInput = {
    type = "structure",
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
    members = {
        InstanceRefreshId = {
            type = "string",
        },
    },
}

M.CompleteLifecycleActionInput = {
    type = "structure",
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
}

M.CapacityDistributionStrategy = {
    BALANCED_ONLY = "balanced-only",
    BALANCED_BEST_EFFORT = "balanced-best-effort",
}

M.AvailabilityZoneDistribution = {
    type = "structure",
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
    members = {
        TerminateHookAbandon = {
            type = "string",
        },
    },
}

M.InstanceLifecyclePolicy = {
    type = "structure",
    members = {
        RetentionTriggers = M.RetentionTriggers,
    },
}

M.InstanceMaintenancePolicy = {
    type = "structure",
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
    members = {
        InstanceFamily = {
            type = "string",
        },
    },
}

M.CpuPerformanceFactorRequest = {
    type = "structure",
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
    members = {
        LaunchTemplate = M.LaunchTemplate,
        InstancesDistribution = M.InstancesDistribution,
    },
}

M.Tag = {
    type = "structure",
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
}

M.Ebs = {
    type = "structure",
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
}

M.CreateOrUpdateTagsInput = {
    type = "structure",
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
}

M.ResourceInUseFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteAutoScalingGroupInput = {
    type = "structure",
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
}

M.ScalingActivityInProgressFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteLaunchConfigurationInput = {
    type = "structure",
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
}

M.DeleteLifecycleHookInput = {
    type = "structure",
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
}

M.DeleteNotificationConfigurationInput = {
    type = "structure",
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
}

M.DeletePolicyInput = {
    type = "structure",
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
}

M.DeleteScheduledActionInput = {
    type = "structure",
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
}

M.DeleteTagsInput = {
    type = "structure",
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
}

M.DeleteWarmPoolInput = {
    type = "structure",
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
}

M.DescribeAccountLimitsInput = {
    type = "structure",
}

M.DescribeAccountLimitsOutput = {
    type = "structure",
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
}

M.DescribeAdjustmentTypesOutput = {
    type = "structure",
    members = {
        AdjustmentTypes = {
            type = "list",
            member = M.AdjustmentType,
        },
    },
}

M.Filter = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeAutoScalingInstancesInput = {
    type = "structure",
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
}

M.DescribeAutoScalingNotificationTypesOutput = {
    type = "structure",
    members = {
        AutoScalingNotificationTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeInstanceRefreshesInput = {
    type = "structure",
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
    members = {
        LivePoolProgress = M.InstanceRefreshLivePoolProgress,
        WarmPoolProgress = M.InstanceRefreshWarmPoolProgress,
    },
}

M.RollbackDetails = {
    type = "structure",
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
    members = {
        LifecycleHooks = {
            type = "list",
            member = M.LifecycleHook,
        },
    },
}

M.DescribeLifecycleHookTypesInput = {
    type = "structure",
}

M.DescribeLifecycleHookTypesOutput = {
    type = "structure",
    members = {
        LifecycleHookTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeLoadBalancersInput = {
    type = "structure",
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
}

M.MetricGranularityType = {
    type = "structure",
    members = {
        Granularity = {
            type = "string",
        },
    },
}

M.MetricCollectionType = {
    type = "structure",
    members = {
        Metric = {
            type = "string",
        },
    },
}

M.DescribeMetricCollectionTypesOutput = {
    type = "structure",
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
}

M.ProcessType = {
    type = "structure",
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
    members = {
        Processes = {
            type = "list",
            member = M.ProcessType,
        },
    },
}

M.DescribeScheduledActionsInput = {
    type = "structure",
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
}

M.DescribeTerminationPolicyTypesOutput = {
    type = "structure",
    members = {
        TerminationPolicyTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeTrafficSourcesInput = {
    type = "structure",
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
    members = {
        Activities = {
            type = "list",
            member = M.Activity,
        },
    },
}

M.DetachLoadBalancersInput = {
    type = "structure",
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
}

M.DetachLoadBalancerTargetGroupsInput = {
    type = "structure",
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
}

M.DetachTrafficSourcesInput = {
    type = "structure",
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
}

M.DisableMetricsCollectionInput = {
    type = "structure",
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
}

M.EnableMetricsCollectionInput = {
    type = "structure",
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
}

M.EnterStandbyInput = {
    type = "structure",
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
    members = {
        Activities = {
            type = "list",
            member = M.Activity,
        },
    },
}

M.ExecutePolicyInput = {
    type = "structure",
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
}

M.ExitStandbyInput = {
    type = "structure",
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
    members = {
        Activities = {
            type = "list",
            member = M.Activity,
        },
    },
}

M.GetPredictiveScalingForecastInput = {
    type = "structure",
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
}

M.PutNotificationConfigurationInput = {
    type = "structure",
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
}

M.PutScalingPolicyInput = {
    type = "structure",
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
}

M.PutWarmPoolInput = {
    type = "structure",
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
}

M.RecordLifecycleActionHeartbeatInput = {
    type = "structure",
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
}

M.ResumeProcessesInput = {
    type = "structure",
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
}

M.IrreversibleInstanceRefreshFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RollbackInstanceRefreshInput = {
    type = "structure",
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
    members = {
        InstanceRefreshId = {
            type = "string",
        },
    },
}

M.SetDesiredCapacityInput = {
    type = "structure",
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
}

M.SetInstanceHealthInput = {
    type = "structure",
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
}

M.SetInstanceProtectionInput = {
    type = "structure",
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
}

M.StartInstanceRefreshInput = {
    type = "structure",
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
    members = {
        InstanceRefreshId = {
            type = "string",
        },
    },
}

M.SuspendProcessesInput = {
    type = "structure",
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
}

M.TerminateInstanceInAutoScalingGroupInput = {
    type = "structure",
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
    members = {
        Activity = M.Activity,
    },
}

M.UpdateAutoScalingGroupInput = {
    type = "structure",
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
}

return M
