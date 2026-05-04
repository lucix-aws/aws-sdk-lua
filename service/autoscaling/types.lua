local M = {}

M.AcceleratorCountRequest = {
    type = "structure",
    members = {
        Min = {
            type = "number",
        },
        Max = {
            type = "number",
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
            type = "number",
        },
        Max = {
            type = "number",
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
            type = "number",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
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
            type = "number",
        },
        MaxSize = {
            type = "number",
        },
        DesiredCapacity = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
        },
        CapacityReservationResourceGroupArns = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CapacityReservationSpecification = {
    type = "structure",
    members = {
        CapacityReservationPreference = {
            type = "string",
        },
        CapacityReservationTarget = {
            type = "structure",
        },
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
        RetentionTriggers = {
            type = "structure",
        },
    },
}

M.InstanceMaintenancePolicy = {
    type = "structure",
    members = {
        MinHealthyPercentage = {
            type = "number",
        },
        MaxHealthyPercentage = {
            type = "number",
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
            type = "number",
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
            type = "number",
        },
        OnDemandPercentageAboveBaseCapacity = {
            type = "number",
        },
        SpotAllocationStrategy = {
            type = "string",
        },
        SpotInstancePools = {
            type = "number",
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
            type = "number",
        },
        Max = {
            type = "number",
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
            member_type = "structure",
            traits = {
                xml_name = "Reference",
            },
        },
    },
}

M.BaselinePerformanceFactorsRequest = {
    type = "structure",
    members = {
        Cpu = {
            type = "structure",
        },
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
            type = "number",
        },
        Max = {
            type = "number",
        },
    },
}

M.MemoryMiBRequest = {
    type = "structure",
    members = {
        Min = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Max = {
            type = "number",
        },
    },
}

M.NetworkBandwidthGbpsRequest = {
    type = "structure",
    members = {
        Min = {
            type = "number",
        },
        Max = {
            type = "number",
        },
    },
}

M.NetworkInterfaceCountRequest = {
    type = "structure",
    members = {
        Min = {
            type = "number",
        },
        Max = {
            type = "number",
        },
    },
}

M.TotalLocalStorageGBRequest = {
    type = "structure",
    members = {
        Min = {
            type = "number",
        },
        Max = {
            type = "number",
        },
    },
}

M.VCpuCountRequest = {
    type = "structure",
    members = {
        Min = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Max = {
            type = "number",
        },
    },
}

M.InstanceRequirements = {
    type = "structure",
    members = {
        VCpuCount = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        MemoryMiB = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        CpuManufacturers = {
            type = "list",
            member_type = "string",
        },
        MemoryGiBPerVCpu = {
            type = "structure",
        },
        ExcludedInstanceTypes = {
            type = "list",
            member_type = "string",
        },
        InstanceGenerations = {
            type = "list",
            member_type = "string",
        },
        SpotMaxPricePercentageOverLowestPrice = {
            type = "number",
        },
        MaxSpotPriceAsPercentageOfOptimalOnDemandPrice = {
            type = "number",
        },
        OnDemandMaxPricePercentageOverLowestPrice = {
            type = "number",
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
        NetworkInterfaceCount = {
            type = "structure",
        },
        LocalStorage = {
            type = "string",
        },
        LocalStorageTypes = {
            type = "list",
            member_type = "string",
        },
        TotalLocalStorageGB = {
            type = "structure",
        },
        BaselineEbsBandwidthMbps = {
            type = "structure",
        },
        AcceleratorTypes = {
            type = "list",
            member_type = "string",
        },
        AcceleratorCount = {
            type = "structure",
        },
        AcceleratorManufacturers = {
            type = "list",
            member_type = "string",
        },
        AcceleratorNames = {
            type = "list",
            member_type = "string",
        },
        AcceleratorTotalMemoryMiB = {
            type = "structure",
        },
        NetworkBandwidthGbps = {
            type = "structure",
        },
        AllowedInstanceTypes = {
            type = "list",
            member_type = "string",
        },
        BaselinePerformanceFactors = {
            type = "structure",
        },
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
        LaunchTemplateSpecification = {
            type = "structure",
        },
        InstanceRequirements = {
            type = "structure",
        },
        ImageId = {
            type = "string",
        },
    },
}

M.LaunchTemplate = {
    type = "structure",
    members = {
        LaunchTemplateSpecification = {
            type = "structure",
        },
        Overrides = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.MixedInstancesPolicy = {
    type = "structure",
    members = {
        LaunchTemplate = {
            type = "structure",
        },
        InstancesDistribution = {
            type = "structure",
        },
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
        LaunchTemplate = {
            type = "structure",
        },
        MixedInstancesPolicy = {
            type = "structure",
        },
        InstanceId = {
            type = "string",
        },
        MinSize = {
            type = "number",
            traits = {
                required = true,
            },
        },
        MaxSize = {
            type = "number",
            traits = {
                required = true,
            },
        },
        DesiredCapacity = {
            type = "number",
        },
        DefaultCooldown = {
            type = "number",
        },
        AvailabilityZones = {
            type = "list",
            member_type = "string",
        },
        AvailabilityZoneIds = {
            type = "list",
            member_type = "string",
        },
        LoadBalancerNames = {
            type = "list",
            member_type = "string",
        },
        TargetGroupARNs = {
            type = "list",
            member_type = "string",
        },
        HealthCheckType = {
            type = "string",
        },
        HealthCheckGracePeriod = {
            type = "number",
        },
        PlacementGroup = {
            type = "string",
        },
        VPCZoneIdentifier = {
            type = "string",
        },
        TerminationPolicies = {
            type = "list",
            member_type = "string",
        },
        NewInstancesProtectedFromScaleIn = {
            type = "boolean",
        },
        CapacityRebalance = {
            type = "boolean",
        },
        LifecycleHookSpecificationList = {
            type = "list",
            member_type = "structure",
        },
        DeletionProtection = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ServiceLinkedRoleARN = {
            type = "string",
        },
        MaxInstanceLifetime = {
            type = "number",
        },
        Context = {
            type = "string",
        },
        DesiredCapacityType = {
            type = "string",
        },
        DefaultInstanceWarmup = {
            type = "number",
        },
        TrafficSources = {
            type = "list",
            member_type = "structure",
        },
        InstanceMaintenancePolicy = {
            type = "structure",
        },
        AvailabilityZoneDistribution = {
            type = "structure",
        },
        AvailabilityZoneImpairmentPolicy = {
            type = "structure",
        },
        SkipZonalShiftValidation = {
            type = "boolean",
        },
        CapacityReservationSpecification = {
            type = "structure",
        },
        InstanceLifecyclePolicy = {
            type = "structure",
        },
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
            type = "number",
        },
        VolumeType = {
            type = "string",
        },
        DeleteOnTermination = {
            type = "boolean",
        },
        Iops = {
            type = "number",
        },
        Encrypted = {
            type = "boolean",
        },
        Throughput = {
            type = "number",
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
        Ebs = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "string",
        },
        ClassicLinkVPCId = {
            type = "string",
        },
        ClassicLinkVPCSecurityGroups = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
        InstanceMonitoring = {
            type = "structure",
        },
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
        MetadataOptions = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
        },
        MaxNumberOfLaunchConfigurations = {
            type = "number",
        },
        NumberOfAutoScalingGroups = {
            type = "number",
        },
        NumberOfLaunchConfigurations = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
        },
    },
}

M.DescribeAutoScalingGroupsInput = {
    type = "structure",
    members = {
        AutoScalingGroupNames = {
            type = "list",
            member_type = "string",
        },
        IncludeInstances = {
            type = "boolean",
        },
        NextToken = {
            type = "string",
        },
        MaxRecords = {
            type = "number",
        },
        Filters = {
            type = "list",
            member_type = "structure",
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
        LaunchTemplate = {
            type = "structure",
        },
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
            type = "number",
        },
        MinSize = {
            type = "number",
        },
        PoolState = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        InstanceReusePolicy = {
            type = "structure",
        },
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
        LaunchTemplate = {
            type = "structure",
        },
        MixedInstancesPolicy = {
            type = "structure",
        },
        MinSize = {
            type = "number",
            traits = {
                required = true,
            },
        },
        MaxSize = {
            type = "number",
            traits = {
                required = true,
            },
        },
        DesiredCapacity = {
            type = "number",
            traits = {
                required = true,
            },
        },
        PredictedCapacity = {
            type = "number",
        },
        DefaultCooldown = {
            type = "number",
            traits = {
                required = true,
            },
        },
        AvailabilityZones = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        AvailabilityZoneIds = {
            type = "list",
            member_type = "string",
        },
        LoadBalancerNames = {
            type = "list",
            member_type = "string",
        },
        TargetGroupARNs = {
            type = "list",
            member_type = "string",
        },
        HealthCheckType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HealthCheckGracePeriod = {
            type = "number",
        },
        Instances = {
            type = "list",
            member_type = "structure",
        },
        CreatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        SuspendedProcesses = {
            type = "list",
            member_type = "structure",
        },
        PlacementGroup = {
            type = "string",
        },
        VPCZoneIdentifier = {
            type = "string",
        },
        EnabledMetrics = {
            type = "list",
            member_type = "structure",
        },
        Status = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        TerminationPolicies = {
            type = "list",
            member_type = "string",
        },
        NewInstancesProtectedFromScaleIn = {
            type = "boolean",
        },
        ServiceLinkedRoleARN = {
            type = "string",
        },
        MaxInstanceLifetime = {
            type = "number",
        },
        CapacityRebalance = {
            type = "boolean",
        },
        WarmPoolConfiguration = {
            type = "structure",
        },
        WarmPoolSize = {
            type = "number",
        },
        Context = {
            type = "string",
        },
        DesiredCapacityType = {
            type = "string",
        },
        DefaultInstanceWarmup = {
            type = "number",
        },
        TrafficSources = {
            type = "list",
            member_type = "structure",
        },
        InstanceMaintenancePolicy = {
            type = "structure",
        },
        DeletionProtection = {
            type = "string",
        },
        AvailabilityZoneDistribution = {
            type = "structure",
        },
        AvailabilityZoneImpairmentPolicy = {
            type = "structure",
        },
        CapacityReservationSpecification = {
            type = "structure",
        },
        InstanceLifecyclePolicy = {
            type = "structure",
        },
    },
}

M.DescribeAutoScalingGroupsOutput = {
    type = "structure",
    members = {
        AutoScalingGroups = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        MaxRecords = {
            type = "number",
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
        LaunchTemplate = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxRecords = {
            type = "number",
        },
    },
}

M.DesiredConfiguration = {
    type = "structure",
    members = {
        LaunchTemplate = {
            type = "structure",
        },
        MixedInstancesPolicy = {
            type = "structure",
        },
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
            type = "number",
        },
        InstanceWarmup = {
            type = "number",
        },
        CheckpointPercentages = {
            type = "list",
            member_type = "number",
        },
        CheckpointDelay = {
            type = "number",
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
        AlarmSpecification = {
            type = "structure",
        },
        MaxHealthyPercentage = {
            type = "number",
        },
        BakeTime = {
            type = "number",
        },
    },
}

M.InstanceRefreshLivePoolProgress = {
    type = "structure",
    members = {
        PercentageComplete = {
            type = "number",
        },
        InstancesToUpdate = {
            type = "number",
        },
    },
}

M.InstanceRefreshWarmPoolProgress = {
    type = "structure",
    members = {
        PercentageComplete = {
            type = "number",
        },
        InstancesToUpdate = {
            type = "number",
        },
    },
}

M.InstanceRefreshProgressDetails = {
    type = "structure",
    members = {
        LivePoolProgress = {
            type = "structure",
        },
        WarmPoolProgress = {
            type = "structure",
        },
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
            type = "number",
        },
        InstancesToUpdateOnRollback = {
            type = "number",
        },
        ProgressDetailsOnRollback = {
            type = "structure",
        },
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
            type = "number",
        },
        InstancesToUpdate = {
            type = "number",
        },
        ProgressDetails = {
            type = "structure",
        },
        Preferences = {
            type = "structure",
        },
        DesiredConfiguration = {
            type = "structure",
        },
        RollbackDetails = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxRecords = {
            type = "number",
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
            member_type = "string",
        },
        ClassicLinkVPCId = {
            type = "string",
        },
        ClassicLinkVPCSecurityGroups = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
        InstanceMonitoring = {
            type = "structure",
        },
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
        MetadataOptions = {
            type = "structure",
        },
    },
}

M.DescribeLaunchConfigurationsOutput = {
    type = "structure",
    members = {
        LaunchConfigurations = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            type = "number",
        },
        GlobalTimeout = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        Granularities = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeNotificationConfigurationsInput = {
    type = "structure",
    members = {
        AutoScalingGroupNames = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxRecords = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
        },
        PolicyTypes = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxRecords = {
            type = "number",
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
            member_type = "structure",
        },
    },
}

M.MetricStat = {
    type = "structure",
    members = {
        Metric = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        MetricStat = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        PredefinedMetricPairSpecification = {
            type = "structure",
        },
        PredefinedScalingMetricSpecification = {
            type = "structure",
        },
        PredefinedLoadMetricSpecification = {
            type = "structure",
        },
        CustomizedScalingMetricSpecification = {
            type = "structure",
        },
        CustomizedLoadMetricSpecification = {
            type = "structure",
        },
        CustomizedCapacityMetricSpecification = {
            type = "structure",
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Mode = {
            type = "string",
        },
        SchedulingBufferTime = {
            type = "number",
        },
        MaxCapacityBreachBehavior = {
            type = "string",
        },
        MaxCapacityBuffer = {
            type = "number",
        },
    },
}

M.StepAdjustment = {
    type = "structure",
    members = {
        MetricIntervalLowerBound = {
            type = "number",
        },
        MetricIntervalUpperBound = {
            type = "number",
        },
        ScalingAdjustment = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.TargetTrackingMetricStat = {
    type = "structure",
    members = {
        Metric = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
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
        MetricStat = {
            type = "structure",
        },
        Label = {
            type = "string",
        },
        Period = {
            type = "number",
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
            member_type = "structure",
        },
        Statistic = {
            type = "string",
        },
        Unit = {
            type = "string",
        },
        Period = {
            type = "number",
        },
        Metrics = {
            type = "list",
            member_type = "structure",
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
        PredefinedMetricSpecification = {
            type = "structure",
        },
        CustomizedMetricSpecification = {
            type = "structure",
        },
        TargetValue = {
            type = "number",
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
            type = "number",
        },
        MinAdjustmentMagnitude = {
            type = "number",
        },
        ScalingAdjustment = {
            type = "number",
        },
        Cooldown = {
            type = "number",
        },
        StepAdjustments = {
            type = "list",
            member_type = "structure",
        },
        MetricAggregationType = {
            type = "string",
        },
        EstimatedInstanceWarmup = {
            type = "number",
        },
        Alarms = {
            type = "list",
            member_type = "structure",
        },
        TargetTrackingConfiguration = {
            type = "structure",
        },
        Enabled = {
            type = "boolean",
        },
        PredictiveScalingConfiguration = {
            type = "structure",
        },
    },
}

M.DescribePoliciesOutput = {
    type = "structure",
    members = {
        ScalingPolicies = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        AutoScalingGroupName = {
            type = "string",
        },
        IncludeDeletedGroups = {
            type = "boolean",
        },
        MaxRecords = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeScalingActivitiesOutput = {
    type = "structure",
    members = {
        Activities = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
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
            type = "number",
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
            type = "number",
        },
        MaxSize = {
            type = "number",
        },
        DesiredCapacity = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxRecords = {
            type = "number",
        },
    },
}

M.DescribeTagsOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeWarmPoolOutput = {
    type = "structure",
    members = {
        WarmPoolConfiguration = {
            type = "structure",
        },
        Instances = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "structure",
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
            type = "number",
        },
        BreachThreshold = {
            type = "number",
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
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "timestamp",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member_type = "number",
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
            member_type = "timestamp",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
        MetricSpecification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetPredictiveScalingForecastOutput = {
    type = "structure",
    members = {
        LoadForecast = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        CapacityForecast = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AvailabilityZones = {
            type = "list",
            member_type = "string",
        },
        AvailabilityZoneIds = {
            type = "list",
            member_type = "string",
        },
        SubnetIds = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
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
            member_type = "structure",
        },
        Errors = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "string",
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
            type = "number",
        },
        MinAdjustmentMagnitude = {
            type = "number",
        },
        ScalingAdjustment = {
            type = "number",
        },
        Cooldown = {
            type = "number",
        },
        MetricAggregationType = {
            type = "string",
        },
        StepAdjustments = {
            type = "list",
            member_type = "structure",
        },
        EstimatedInstanceWarmup = {
            type = "number",
        },
        TargetTrackingConfiguration = {
            type = "structure",
        },
        Enabled = {
            type = "boolean",
        },
        PredictiveScalingConfiguration = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
        },
        MaxSize = {
            type = "number",
        },
        DesiredCapacity = {
            type = "number",
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
            type = "number",
        },
        MinSize = {
            type = "number",
        },
        PoolState = {
            type = "string",
        },
        InstanceReusePolicy = {
            type = "structure",
        },
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
            member_type = "string",
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
            type = "number",
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
            member_type = "string",
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
        DesiredConfiguration = {
            type = "structure",
        },
        Preferences = {
            type = "structure",
        },
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
            member_type = "string",
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
        Activity = {
            type = "structure",
        },
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
        LaunchTemplate = {
            type = "structure",
        },
        MixedInstancesPolicy = {
            type = "structure",
        },
        MinSize = {
            type = "number",
        },
        MaxSize = {
            type = "number",
        },
        DesiredCapacity = {
            type = "number",
        },
        DefaultCooldown = {
            type = "number",
        },
        AvailabilityZones = {
            type = "list",
            member_type = "string",
        },
        AvailabilityZoneIds = {
            type = "list",
            member_type = "string",
        },
        HealthCheckType = {
            type = "string",
        },
        HealthCheckGracePeriod = {
            type = "number",
        },
        PlacementGroup = {
            type = "string",
        },
        VPCZoneIdentifier = {
            type = "string",
        },
        TerminationPolicies = {
            type = "list",
            member_type = "string",
        },
        NewInstancesProtectedFromScaleIn = {
            type = "boolean",
        },
        ServiceLinkedRoleARN = {
            type = "string",
        },
        MaxInstanceLifetime = {
            type = "number",
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
            type = "number",
        },
        InstanceMaintenancePolicy = {
            type = "structure",
        },
        AvailabilityZoneDistribution = {
            type = "structure",
        },
        AvailabilityZoneImpairmentPolicy = {
            type = "structure",
        },
        SkipZonalShiftValidation = {
            type = "boolean",
        },
        CapacityReservationSpecification = {
            type = "structure",
        },
        InstanceLifecyclePolicy = {
            type = "structure",
        },
        DeletionProtection = {
            type = "string",
        },
    },
}

M.UpdateAutoScalingGroupOutput = {
    type = "structure",
}

return M
