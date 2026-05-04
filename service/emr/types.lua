local M = {}

M.ActionOnFailure = {
    TERMINATE_JOB_FLOW = "TERMINATE_JOB_FLOW",
    TERMINATE_CLUSTER = "TERMINATE_CLUSTER",
    CANCEL_AND_WAIT = "CANCEL_AND_WAIT",
    CONTINUE = "CONTINUE",
}

M.InstanceFleetType = {
    MASTER = "MASTER",
    CORE = "CORE",
    TASK = "TASK",
}

M.VolumeSpecification = {
    type = "structure",
    members = {
        VolumeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Iops = {
            type = "integer",
        },
        SizeInGB = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Throughput = {
            type = "integer",
        },
    },
}

M.EbsBlockDeviceConfig = {
    type = "structure",
    members = {
        VolumeSpecification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VolumeSpecification }),
        VolumesPerInstance = {
            type = "integer",
        },
    },
}

M.EbsConfiguration = {
    type = "structure",
    members = {
        EbsBlockDeviceConfigs = {
            type = "list",
            member = M.EbsBlockDeviceConfig,
        },
        EbsOptimized = {
            type = "boolean",
        },
    },
}

M.OnDemandProvisioningAllocationStrategy = {
    LOWEST_PRICE = "lowest-price",
    PRIORITIZED = "prioritized",
}

M.OnDemandCapacityReservationPreference = {
    OPEN = "open",
    NONE = "none",
}

M.OnDemandCapacityReservationUsageStrategy = {
    USE_CAPACITY_RESERVATIONS_FIRST = "use-capacity-reservations-first",
}

M.OnDemandCapacityReservationOptions = {
    type = "structure",
    members = {
        UsageStrategy = {
            type = "string",
        },
        CapacityReservationPreference = {
            type = "string",
        },
        CapacityReservationResourceGroupArn = {
            type = "string",
        },
    },
}

M.OnDemandProvisioningSpecification = {
    type = "structure",
    members = {
        AllocationStrategy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CapacityReservationOptions = M.OnDemandCapacityReservationOptions,
    },
}

M.SpotProvisioningAllocationStrategy = {
    CAPACITY_OPTIMIZED = "capacity-optimized",
    PRICE_CAPACITY_OPTIMIZED = "price-capacity-optimized",
    LOWEST_PRICE = "lowest-price",
    DIVERSIFIED = "diversified",
    CAPACITY_OPTIMIZED_PRIORITIZED = "capacity-optimized-prioritized",
}

M.SpotProvisioningTimeoutAction = {
    SWITCH_TO_ON_DEMAND = "SWITCH_TO_ON_DEMAND",
    TERMINATE_CLUSTER = "TERMINATE_CLUSTER",
}

M.SpotProvisioningSpecification = {
    type = "structure",
    members = {
        TimeoutDurationMinutes = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        TimeoutAction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BlockDurationMinutes = {
            type = "integer",
        },
        AllocationStrategy = {
            type = "string",
        },
    },
}

M.InstanceFleetProvisioningSpecifications = {
    type = "structure",
    members = {
        SpotSpecification = M.SpotProvisioningSpecification,
        OnDemandSpecification = M.OnDemandProvisioningSpecification,
    },
}

M.OnDemandResizingSpecification = {
    type = "structure",
    members = {
        TimeoutDurationMinutes = {
            type = "integer",
        },
        AllocationStrategy = {
            type = "string",
        },
        CapacityReservationOptions = M.OnDemandCapacityReservationOptions,
    },
}

M.SpotResizingSpecification = {
    type = "structure",
    members = {
        TimeoutDurationMinutes = {
            type = "integer",
        },
        AllocationStrategy = {
            type = "string",
        },
    },
}

M.InstanceFleetResizingSpecifications = {
    type = "structure",
    members = {
        SpotResizeSpecification = M.SpotResizingSpecification,
        OnDemandResizeSpecification = M.OnDemandResizingSpecification,
    },
}

M.AddInstanceFleetOutput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
        },
        InstanceFleetId = {
            type = "string",
        },
        ClusterArn = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ScalingConstraints = {
    type = "structure",
    members = {
        MinCapacity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        MaxCapacity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.MarketType = {
    ON_DEMAND = "ON_DEMAND",
    SPOT = "SPOT",
}

M.AdjustmentType = {
    CHANGE_IN_CAPACITY = "CHANGE_IN_CAPACITY",
    PERCENT_CHANGE_IN_CAPACITY = "PERCENT_CHANGE_IN_CAPACITY",
    EXACT_CAPACITY = "EXACT_CAPACITY",
}

M.SimpleScalingPolicyConfiguration = {
    type = "structure",
    members = {
        AdjustmentType = {
            type = "string",
        },
        ScalingAdjustment = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        CoolDown = {
            type = "integer",
        },
    },
}

M.ScalingAction = {
    type = "structure",
    members = {
        Market = {
            type = "string",
        },
        SimpleScalingPolicyConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SimpleScalingPolicyConfiguration }),
    },
}

M.ComparisonOperator = {
    GREATER_THAN_OR_EQUAL = "GREATER_THAN_OR_EQUAL",
    GREATER_THAN = "GREATER_THAN",
    LESS_THAN = "LESS_THAN",
    LESS_THAN_OR_EQUAL = "LESS_THAN_OR_EQUAL",
}

M.MetricDimension = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.Statistic = {
    SAMPLE_COUNT = "SAMPLE_COUNT",
    AVERAGE = "AVERAGE",
    SUM = "SUM",
    MINIMUM = "MINIMUM",
    MAXIMUM = "MAXIMUM",
}

M.Unit = {
    NONE = "NONE",
    SECONDS = "SECONDS",
    MICRO_SECONDS = "MICRO_SECONDS",
    MILLI_SECONDS = "MILLI_SECONDS",
    BYTES = "BYTES",
    KILO_BYTES = "KILO_BYTES",
    MEGA_BYTES = "MEGA_BYTES",
    GIGA_BYTES = "GIGA_BYTES",
    TERA_BYTES = "TERA_BYTES",
    BITS = "BITS",
    KILO_BITS = "KILO_BITS",
    MEGA_BITS = "MEGA_BITS",
    GIGA_BITS = "GIGA_BITS",
    TERA_BITS = "TERA_BITS",
    PERCENT = "PERCENT",
    COUNT = "COUNT",
    BYTES_PER_SECOND = "BYTES_PER_SECOND",
    KILO_BYTES_PER_SECOND = "KILO_BYTES_PER_SECOND",
    MEGA_BYTES_PER_SECOND = "MEGA_BYTES_PER_SECOND",
    GIGA_BYTES_PER_SECOND = "GIGA_BYTES_PER_SECOND",
    TERA_BYTES_PER_SECOND = "TERA_BYTES_PER_SECOND",
    BITS_PER_SECOND = "BITS_PER_SECOND",
    KILO_BITS_PER_SECOND = "KILO_BITS_PER_SECOND",
    MEGA_BITS_PER_SECOND = "MEGA_BITS_PER_SECOND",
    GIGA_BITS_PER_SECOND = "GIGA_BITS_PER_SECOND",
    TERA_BITS_PER_SECOND = "TERA_BITS_PER_SECOND",
    COUNT_PER_SECOND = "COUNT_PER_SECOND",
}

M.CloudWatchAlarmDefinition = {
    type = "structure",
    members = {
        ComparisonOperator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluationPeriods = {
            type = "integer",
        },
        MetricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Namespace = {
            type = "string",
        },
        Period = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Statistic = {
            type = "string",
        },
        Threshold = {
            type = "double",
            traits = {
                required = true,
            },
        },
        Unit = {
            type = "string",
        },
        Dimensions = {
            type = "list",
            member = M.MetricDimension,
        },
    },
}

M.ScalingTrigger = {
    type = "structure",
    members = {
        CloudWatchAlarmDefinition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CloudWatchAlarmDefinition }),
    },
}

M.ScalingRule = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Action = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScalingAction }),
        Trigger = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScalingTrigger }),
    },
}

M.AutoScalingPolicy = {
    type = "structure",
    members = {
        Constraints = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScalingConstraints }),
        Rules = {
            type = "list",
            member = M.ScalingRule,
            traits = {
                required = true,
            },
        },
    },
}

M.InstanceRoleType = {
    MASTER = "MASTER",
    CORE = "CORE",
    TASK = "TASK",
}

M.AddInstanceGroupsOutput = {
    type = "structure",
    members = {
        JobFlowId = {
            type = "string",
        },
        InstanceGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        ClusterArn = {
            type = "string",
        },
    },
}

M.InternalServerError = {
    type = "structure",
    error = "server",
}

M.KeyValue = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.HadoopJarStepConfig = {
    type = "structure",
    members = {
        Properties = {
            type = "list",
            member = M.KeyValue,
        },
        Jar = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MainClass = {
            type = "string",
        },
        Args = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.S3MonitoringConfiguration = {
    type = "structure",
    members = {
        LogUri = {
            type = "string",
        },
        EncryptionKeyArn = {
            type = "string",
        },
    },
}

M.StepMonitoringConfiguration = {
    type = "structure",
    members = {
        S3MonitoringConfiguration = M.S3MonitoringConfiguration,
    },
}

M.StepConfig = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActionOnFailure = {
            type = "string",
        },
        HadoopJarStep = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HadoopJarStepConfig }),
        StepMonitoringConfiguration = M.StepMonitoringConfiguration,
    },
}

M.AddJobFlowStepsInput = {
    type = "structure",
    members = {
        JobFlowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Steps = {
            type = "list",
            member = M.StepConfig,
            traits = {
                required = true,
            },
        },
        ExecutionRoleArn = {
            type = "string",
        },
    },
}

M.AddJobFlowStepsOutput = {
    type = "structure",
    members = {
        StepIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.Tag = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.AddTagsInput = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.AddTagsOutput = {
    type = "structure",
}

M.Application = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Version = {
            type = "string",
        },
        Args = {
            type = "list",
            member = { type = "string" },
        },
        AdditionalInfo = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.AuthMode = {
    SSO = "SSO",
    IAM = "IAM",
}

M.AutoScalingPolicyState = {
    PENDING = "PENDING",
    ATTACHING = "ATTACHING",
    ATTACHED = "ATTACHED",
    DETACHING = "DETACHING",
    DETACHED = "DETACHED",
    FAILED = "FAILED",
}

M.AutoScalingPolicyStateChangeReasonCode = {
    USER_REQUEST = "USER_REQUEST",
    PROVISION_FAILURE = "PROVISION_FAILURE",
    CLEANUP_FAILURE = "CLEANUP_FAILURE",
}

M.AutoScalingPolicyStateChangeReason = {
    type = "structure",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.AutoScalingPolicyStatus = {
    type = "structure",
    members = {
        State = {
            type = "string",
        },
        StateChangeReason = M.AutoScalingPolicyStateChangeReason,
    },
}

M.AutoScalingPolicyDescription = {
    type = "structure",
    members = {
        Status = M.AutoScalingPolicyStatus,
        Constraints = M.ScalingConstraints,
        Rules = {
            type = "list",
            member = M.ScalingRule,
        },
    },
}

M.AutoTerminationPolicy = {
    type = "structure",
    members = {
        IdleTimeout = {
            type = "long",
        },
    },
}

M.PortRange = {
    type = "structure",
    members = {
        MinRange = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        MaxRange = {
            type = "integer",
        },
    },
}

M.BlockPublicAccessConfigurationMetadata = {
    type = "structure",
    members = {
        CreationDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        CreatedByArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ScriptBootstrapActionConfig = {
    type = "structure",
    members = {
        Path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Args = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BootstrapActionConfig = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScriptBootstrapAction = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScriptBootstrapActionConfig }),
    },
}

M.BootstrapActionDetail = {
    type = "structure",
    members = {
        BootstrapActionConfig = M.BootstrapActionConfig,
    },
}

M.StepCancellationOption = {
    SEND_INTERRUPT = "SEND_INTERRUPT",
    TERMINATE_PROCESS = "TERMINATE_PROCESS",
}

M.CancelStepsInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StepIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        StepCancellationOption = {
            type = "string",
        },
    },
}

M.CancelStepsRequestStatus = {
    SUBMITTED = "SUBMITTED",
    FAILED = "FAILED",
}

M.CancelStepsInfo = {
    type = "structure",
    members = {
        StepId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.CancelStepsOutput = {
    type = "structure",
    members = {
        CancelStepsInfoList = {
            type = "list",
            member = M.CancelStepsInfo,
        },
    },
}

M.CloudWatchLogConfiguration = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        LogGroupName = {
            type = "string",
        },
        LogStreamNamePrefix = {
            type = "string",
        },
        EncryptionKeyArn = {
            type = "string",
        },
        LogTypes = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.Ec2InstanceAttributes = {
    type = "structure",
    members = {
        Ec2KeyName = {
            type = "string",
        },
        Ec2SubnetId = {
            type = "string",
        },
        RequestedEc2SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        Ec2AvailabilityZone = {
            type = "string",
        },
        RequestedEc2AvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
        IamInstanceProfile = {
            type = "string",
        },
        EmrManagedMasterSecurityGroup = {
            type = "string",
        },
        EmrManagedSlaveSecurityGroup = {
            type = "string",
        },
        ServiceAccessSecurityGroup = {
            type = "string",
        },
        AdditionalMasterSecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
        AdditionalSlaveSecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.InstanceCollectionType = {
    INSTANCE_FLEET = "INSTANCE_FLEET",
    INSTANCE_GROUP = "INSTANCE_GROUP",
}

M.KerberosAttributes = {
    type = "structure",
    members = {
        Realm = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KdcAdminPassword = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CrossRealmTrustPrincipalPassword = {
            type = "string",
        },
        ADDomainJoinUser = {
            type = "string",
        },
        ADDomainJoinPassword = {
            type = "string",
        },
    },
}

M.LogType = {
    SYSTEM_LOGS = "system-logs",
    APPLICATION_LOGS = "application-logs",
    PERSISTENT_UI_LOGS = "persistent-ui-logs",
}

M.LogUploadPolicyValue = {
    EMR_MANAGED = "emr-managed",
    ON_CUSTOMER_S3ONLY = "on-customer-s3only",
    DISABLED = "disabled",
}

M.S3LoggingConfiguration = {
    type = "structure",
    members = {
        LogTypeUploadPolicy = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.MonitoringConfiguration = {
    type = "structure",
    members = {
        CloudWatchLogConfiguration = M.CloudWatchLogConfiguration,
        S3LoggingConfiguration = M.S3LoggingConfiguration,
    },
}

M.PlacementGroupStrategy = {
    SPREAD = "SPREAD",
    PARTITION = "PARTITION",
    CLUSTER = "CLUSTER",
    NONE = "NONE",
}

M.PlacementGroupConfig = {
    type = "structure",
    members = {
        InstanceRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PlacementStrategy = {
            type = "string",
        },
    },
}

M.RepoUpgradeOnBoot = {
    SECURITY = "SECURITY",
    NONE = "NONE",
}

M.ScaleDownBehavior = {
    TERMINATE_AT_INSTANCE_HOUR = "TERMINATE_AT_INSTANCE_HOUR",
    TERMINATE_AT_TASK_COMPLETION = "TERMINATE_AT_TASK_COMPLETION",
}

M.ErrorDetail = {
    type = "structure",
    members = {
        ErrorCode = {
            type = "string",
        },
        ErrorData = {
            type = "list",
            member = { type = "map" },
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.ClusterState = {
    STARTING = "STARTING",
    BOOTSTRAPPING = "BOOTSTRAPPING",
    RUNNING = "RUNNING",
    WAITING = "WAITING",
    TERMINATING = "TERMINATING",
    TERMINATED = "TERMINATED",
    TERMINATED_WITH_ERRORS = "TERMINATED_WITH_ERRORS",
}

M.ClusterStateChangeReasonCode = {
    INTERNAL_ERROR = "INTERNAL_ERROR",
    VALIDATION_ERROR = "VALIDATION_ERROR",
    INSTANCE_FAILURE = "INSTANCE_FAILURE",
    INSTANCE_FLEET_TIMEOUT = "INSTANCE_FLEET_TIMEOUT",
    BOOTSTRAP_FAILURE = "BOOTSTRAP_FAILURE",
    USER_REQUEST = "USER_REQUEST",
    STEP_FAILURE = "STEP_FAILURE",
    ALL_STEPS_COMPLETED = "ALL_STEPS_COMPLETED",
}

M.ClusterStateChangeReason = {
    type = "structure",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ClusterTimeline = {
    type = "structure",
    members = {
        CreationDateTime = {
            type = "timestamp",
        },
        ReadyDateTime = {
            type = "timestamp",
        },
        EndDateTime = {
            type = "timestamp",
        },
    },
}

M.ClusterStatus = {
    type = "structure",
    members = {
        State = {
            type = "string",
        },
        StateChangeReason = M.ClusterStateChangeReason,
        Timeline = M.ClusterTimeline,
        ErrorDetails = {
            type = "list",
            member = M.ErrorDetail,
        },
    },
}

M.ClusterSummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Status = M.ClusterStatus,
        NormalizedInstanceHours = {
            type = "integer",
        },
        ClusterArn = {
            type = "string",
        },
        OutpostArn = {
            type = "string",
        },
    },
}

M.Command = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        ScriptPath = {
            type = "string",
        },
        Args = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ComputeLimitsUnitType = {
    InstanceFleetUnits = "InstanceFleetUnits",
    Instances = "Instances",
    VCPU = "VCPU",
}

M.ComputeLimits = {
    type = "structure",
    members = {
        UnitType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MinimumCapacityUnits = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        MaximumCapacityUnits = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        MaximumOnDemandCapacityUnits = {
            type = "integer",
        },
        MaximumCoreCapacityUnits = {
            type = "integer",
        },
    },
}

M.EMRContainersConfig = {
    type = "structure",
    members = {
        JobRunId = {
            type = "string",
        },
    },
}

M.ProfilerType = {
    SHS = "SHS",
    TEZUI = "TEZUI",
    YTS = "YTS",
}

M.CreatePersistentAppUIInput = {
    type = "structure",
    members = {
        TargetResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EMRContainersConfig = M.EMRContainersConfig,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        XReferer = {
            type = "string",
        },
        ProfilerType = {
            type = "string",
        },
    },
}

M.CreatePersistentAppUIOutput = {
    type = "structure",
    members = {
        PersistentAppUIId = {
            type = "string",
        },
        RuntimeRoleEnabledCluster = {
            type = "boolean",
        },
    },
}

M.CreateSecurityConfigurationInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecurityConfiguration = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateSecurityConfigurationOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.IdcUserAssignment = {
    REQUIRED = "REQUIRED",
    OPTIONAL = "OPTIONAL",
}

M.CreateStudioInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        AuthMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ServiceRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserRole = {
            type = "string",
        },
        WorkspaceSecurityGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EngineSecurityGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultS3Location = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdpAuthUrl = {
            type = "string",
        },
        IdpRelayStateParameterName = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        TrustedIdentityPropagationEnabled = {
            type = "boolean",
        },
        IdcUserAssignment = {
            type = "string",
        },
        IdcInstanceArn = {
            type = "string",
        },
        EncryptionKeyArn = {
            type = "string",
        },
    },
}

M.CreateStudioOutput = {
    type = "structure",
    members = {
        StudioId = {
            type = "string",
        },
        Url = {
            type = "string",
        },
    },
}

M.IdentityType = {
    USER = "USER",
    GROUP = "GROUP",
}

M.CreateStudioSessionMappingInput = {
    type = "structure",
    members = {
        StudioId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdentityId = {
            type = "string",
        },
        IdentityName = {
            type = "string",
        },
        IdentityType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SessionPolicyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateStudioSessionMappingOutput = {
    type = "structure",
}

M.UsernamePassword = {
    type = "structure",
    members = {
        Username = {
            type = "string",
        },
        Password = {
            type = "string",
        },
    },
}

M.Credentials = {
    type = "union",
    members = {
        UsernamePassword = M.UsernamePassword,
    },
}

M.DeleteSecurityConfigurationInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSecurityConfigurationOutput = {
    type = "structure",
}

M.DeleteStudioInput = {
    type = "structure",
    members = {
        StudioId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteStudioOutput = {
    type = "structure",
}

M.DeleteStudioSessionMappingInput = {
    type = "structure",
    members = {
        StudioId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdentityId = {
            type = "string",
        },
        IdentityName = {
            type = "string",
        },
        IdentityType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteStudioSessionMappingOutput = {
    type = "structure",
}

M.DescribeClusterInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JobFlowExecutionState = {
    STARTING = "STARTING",
    BOOTSTRAPPING = "BOOTSTRAPPING",
    RUNNING = "RUNNING",
    WAITING = "WAITING",
    SHUTTING_DOWN = "SHUTTING_DOWN",
    TERMINATED = "TERMINATED",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.DescribeJobFlowsInput = {
    type = "structure",
    members = {
        CreatedAfter = {
            type = "timestamp",
        },
        CreatedBefore = {
            type = "timestamp",
        },
        JobFlowIds = {
            type = "list",
            member = { type = "string" },
        },
        JobFlowStates = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.JobFlowExecutionStatusDetail = {
    type = "structure",
    members = {
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        StartDateTime = {
            type = "timestamp",
        },
        ReadyDateTime = {
            type = "timestamp",
        },
        EndDateTime = {
            type = "timestamp",
        },
        LastStateChangeReason = {
            type = "string",
        },
    },
}

M.InstanceGroupState = {
    PROVISIONING = "PROVISIONING",
    BOOTSTRAPPING = "BOOTSTRAPPING",
    RUNNING = "RUNNING",
    RECONFIGURING = "RECONFIGURING",
    RESIZING = "RESIZING",
    SUSPENDED = "SUSPENDED",
    TERMINATING = "TERMINATING",
    TERMINATED = "TERMINATED",
    ARRESTED = "ARRESTED",
    SHUTTING_DOWN = "SHUTTING_DOWN",
    ENDED = "ENDED",
}

M.InstanceGroupDetail = {
    type = "structure",
    members = {
        InstanceGroupId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Market = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BidPrice = {
            type = "string",
        },
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceRequestCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        InstanceRunningCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastStateChangeReason = {
            type = "string",
        },
        CreationDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        StartDateTime = {
            type = "timestamp",
        },
        ReadyDateTime = {
            type = "timestamp",
        },
        EndDateTime = {
            type = "timestamp",
        },
        CustomAmiId = {
            type = "string",
        },
    },
}

M.PlacementType = {
    type = "structure",
    members = {
        AvailabilityZone = {
            type = "string",
        },
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.JobFlowInstancesDetail = {
    type = "structure",
    members = {
        MasterInstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MasterPublicDnsName = {
            type = "string",
        },
        MasterInstanceId = {
            type = "string",
        },
        SlaveInstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        InstanceGroups = {
            type = "list",
            member = M.InstanceGroupDetail,
        },
        NormalizedInstanceHours = {
            type = "integer",
        },
        Ec2KeyName = {
            type = "string",
        },
        Ec2SubnetId = {
            type = "string",
        },
        Placement = M.PlacementType,
        KeepJobFlowAliveWhenNoSteps = {
            type = "boolean",
        },
        TerminationProtected = {
            type = "boolean",
        },
        UnhealthyNodeReplacement = {
            type = "boolean",
        },
        HadoopVersion = {
            type = "string",
        },
    },
}

M.StepExecutionState = {
    PENDING = "PENDING",
    RUNNING = "RUNNING",
    CONTINUE = "CONTINUE",
    COMPLETED = "COMPLETED",
    CANCELLED = "CANCELLED",
    FAILED = "FAILED",
    INTERRUPTED = "INTERRUPTED",
}

M.StepExecutionStatusDetail = {
    type = "structure",
    members = {
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        StartDateTime = {
            type = "timestamp",
        },
        EndDateTime = {
            type = "timestamp",
        },
        LastStateChangeReason = {
            type = "string",
        },
    },
}

M.StepDetail = {
    type = "structure",
    members = {
        StepConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StepConfig }),
        ExecutionStatusDetail = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StepExecutionStatusDetail }),
    },
}

M.JobFlowDetail = {
    type = "structure",
    members = {
        JobFlowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogUri = {
            type = "string",
        },
        LogEncryptionKmsKeyId = {
            type = "string",
        },
        AmiVersion = {
            type = "string",
        },
        ExecutionStatusDetail = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobFlowExecutionStatusDetail }),
        Instances = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobFlowInstancesDetail }),
        Steps = {
            type = "list",
            member = M.StepDetail,
        },
        BootstrapActions = {
            type = "list",
            member = M.BootstrapActionDetail,
        },
        SupportedProducts = {
            type = "list",
            member = { type = "string" },
        },
        VisibleToAllUsers = {
            type = "boolean",
        },
        JobFlowRole = {
            type = "string",
        },
        ServiceRole = {
            type = "string",
        },
        AutoScalingRole = {
            type = "string",
        },
        ScaleDownBehavior = {
            type = "string",
        },
    },
}

M.DescribeJobFlowsOutput = {
    type = "structure",
    members = {
        JobFlows = {
            type = "list",
            member = M.JobFlowDetail,
        },
    },
}

M.DescribeNotebookExecutionInput = {
    type = "structure",
    members = {
        NotebookExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExecutionEngineType = {
    EMR = "EMR",
}

M.ExecutionEngineConfig = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
        },
        MasterInstanceSecurityGroupId = {
            type = "string",
        },
        ExecutionRoleArn = {
            type = "string",
        },
    },
}

M.NotebookS3LocationForOutput = {
    type = "structure",
    members = {
        Bucket = {
            type = "string",
        },
        Key = {
            type = "string",
        },
    },
}

M.OutputNotebookFormat = {
    HTML = "HTML",
}

M.OutputNotebookS3LocationForOutput = {
    type = "structure",
    members = {
        Bucket = {
            type = "string",
        },
        Key = {
            type = "string",
        },
    },
}

M.NotebookExecutionStatus = {
    START_PENDING = "START_PENDING",
    STARTING = "STARTING",
    RUNNING = "RUNNING",
    FINISHING = "FINISHING",
    FINISHED = "FINISHED",
    FAILING = "FAILING",
    FAILED = "FAILED",
    STOP_PENDING = "STOP_PENDING",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
}

M.NotebookExecution = {
    type = "structure",
    members = {
        NotebookExecutionId = {
            type = "string",
        },
        EditorId = {
            type = "string",
        },
        ExecutionEngine = M.ExecutionEngineConfig,
        NotebookExecutionName = {
            type = "string",
        },
        NotebookParams = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        Arn = {
            type = "string",
        },
        OutputNotebookURI = {
            type = "string",
        },
        LastStateChangeReason = {
            type = "string",
        },
        NotebookInstanceSecurityGroupId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        NotebookS3Location = M.NotebookS3LocationForOutput,
        OutputNotebookS3Location = M.OutputNotebookS3LocationForOutput,
        OutputNotebookFormat = {
            type = "string",
        },
        EnvironmentVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DescribeNotebookExecutionOutput = {
    type = "structure",
    members = {
        NotebookExecution = M.NotebookExecution,
    },
}

M.DescribePersistentAppUIInput = {
    type = "structure",
    members = {
        PersistentAppUIId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PersistentAppUIType = {
    SHS = "SHS",
    TEZ = "TEZ",
    YTS = "YTS",
}

M.PersistentAppUI = {
    type = "structure",
    members = {
        PersistentAppUIId = {
            type = "string",
        },
        PersistentAppUITypeList = {
            type = "list",
            member = { type = "string" },
        },
        PersistentAppUIStatus = {
            type = "string",
        },
        AuthorId = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastStateChangeReason = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DescribePersistentAppUIOutput = {
    type = "structure",
    members = {
        PersistentAppUI = M.PersistentAppUI,
    },
}

M.DescribeReleaseLabelInput = {
    type = "structure",
    members = {
        ReleaseLabel = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.SimplifiedApplication = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.OSRelease = {
    type = "structure",
    members = {
        Label = {
            type = "string",
        },
    },
}

M.DescribeReleaseLabelOutput = {
    type = "structure",
    members = {
        ReleaseLabel = {
            type = "string",
        },
        Applications = {
            type = "list",
            member = M.SimplifiedApplication,
        },
        NextToken = {
            type = "string",
        },
        AvailableOSReleases = {
            type = "list",
            member = M.OSRelease,
        },
    },
}

M.DescribeSecurityConfigurationInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeSecurityConfigurationOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        SecurityConfiguration = {
            type = "string",
        },
        CreationDateTime = {
            type = "timestamp",
        },
    },
}

M.DescribeStepInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StepId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HadoopStepConfig = {
    type = "structure",
    members = {
        Jar = {
            type = "string",
        },
        Properties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        MainClass = {
            type = "string",
        },
        Args = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.FailureDetails = {
    type = "structure",
    members = {
        Reason = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        LogFile = {
            type = "string",
        },
    },
}

M.StepState = {
    PENDING = "PENDING",
    CANCEL_PENDING = "CANCEL_PENDING",
    RUNNING = "RUNNING",
    COMPLETED = "COMPLETED",
    CANCELLED = "CANCELLED",
    FAILED = "FAILED",
    INTERRUPTED = "INTERRUPTED",
}

M.StepStateChangeReasonCode = {
    NONE = "NONE",
}

M.StepStateChangeReason = {
    type = "structure",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.StepTimeline = {
    type = "structure",
    members = {
        CreationDateTime = {
            type = "timestamp",
        },
        StartDateTime = {
            type = "timestamp",
        },
        EndDateTime = {
            type = "timestamp",
        },
    },
}

M.StepStatus = {
    type = "structure",
    members = {
        State = {
            type = "string",
        },
        StateChangeReason = M.StepStateChangeReason,
        FailureDetails = M.FailureDetails,
        Timeline = M.StepTimeline,
    },
}

M.Step = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Config = M.HadoopStepConfig,
        ActionOnFailure = {
            type = "string",
        },
        Status = M.StepStatus,
        ExecutionRoleArn = {
            type = "string",
        },
        LogUri = {
            type = "string",
        },
        EncryptionKeyArn = {
            type = "string",
        },
    },
}

M.DescribeStepOutput = {
    type = "structure",
    members = {
        Step = M.Step,
    },
}

M.DescribeStudioInput = {
    type = "structure",
    members = {
        StudioId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Studio = {
    type = "structure",
    members = {
        StudioId = {
            type = "string",
        },
        StudioArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        AuthMode = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        ServiceRole = {
            type = "string",
        },
        UserRole = {
            type = "string",
        },
        WorkspaceSecurityGroupId = {
            type = "string",
        },
        EngineSecurityGroupId = {
            type = "string",
        },
        Url = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        DefaultS3Location = {
            type = "string",
        },
        IdpAuthUrl = {
            type = "string",
        },
        IdpRelayStateParameterName = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        IdcInstanceArn = {
            type = "string",
        },
        TrustedIdentityPropagationEnabled = {
            type = "boolean",
        },
        IdcUserAssignment = {
            type = "string",
        },
        EncryptionKeyArn = {
            type = "string",
        },
    },
}

M.DescribeStudioOutput = {
    type = "structure",
    members = {
        Studio = M.Studio,
    },
}

M.EbsBlockDevice = {
    type = "structure",
    members = {
        VolumeSpecification = M.VolumeSpecification,
        Device = {
            type = "string",
        },
    },
}

M.EbsVolume = {
    type = "structure",
    members = {
        Device = {
            type = "string",
        },
        VolumeId = {
            type = "string",
        },
    },
}

M.GetAutoTerminationPolicyInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAutoTerminationPolicyOutput = {
    type = "structure",
    members = {
        AutoTerminationPolicy = M.AutoTerminationPolicy,
    },
}

M.GetBlockPublicAccessConfigurationInput = {
    type = "structure",
}

M.GetClusterSessionCredentialsInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExecutionRoleArn = {
            type = "string",
        },
    },
}

M.GetClusterSessionCredentialsOutput = {
    type = "structure",
    members = {
        Credentials = M.Credentials,
        ExpiresAt = {
            type = "timestamp",
        },
    },
}

M.GetManagedScalingPolicyInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ScalingStrategy = {
    DEFAULT = "DEFAULT",
    ADVANCED = "ADVANCED",
}

M.ManagedScalingPolicy = {
    type = "structure",
    members = {
        ComputeLimits = M.ComputeLimits,
        UtilizationPerformanceIndex = {
            type = "integer",
        },
        ScalingStrategy = {
            type = "string",
        },
    },
}

M.GetManagedScalingPolicyOutput = {
    type = "structure",
    members = {
        ManagedScalingPolicy = M.ManagedScalingPolicy,
    },
}

M.OnClusterAppUIType = {
    SparkHistoryServer = "SparkHistoryServer",
    YarnTimelineService = "YarnTimelineService",
    TezUI = "TezUI",
    ApplicationMaster = "ApplicationMaster",
    JobHistoryServer = "JobHistoryServer",
    ResourceManager = "ResourceManager",
}

M.GetOnClusterAppUIPresignedURLInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OnClusterAppUIType = {
            type = "string",
        },
        ApplicationId = {
            type = "string",
        },
        DryRun = {
            type = "boolean",
        },
        ExecutionRoleArn = {
            type = "string",
        },
    },
}

M.GetOnClusterAppUIPresignedURLOutput = {
    type = "structure",
    members = {
        PresignedURLReady = {
            type = "boolean",
        },
        PresignedURL = {
            type = "string",
        },
    },
}

M.GetPersistentAppUIPresignedURLInput = {
    type = "structure",
    members = {
        PersistentAppUIId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PersistentAppUIType = {
            type = "string",
        },
        ApplicationId = {
            type = "string",
        },
        AuthProxyCall = {
            type = "boolean",
        },
        ExecutionRoleArn = {
            type = "string",
        },
    },
}

M.GetPersistentAppUIPresignedURLOutput = {
    type = "structure",
    members = {
        PresignedURLReady = {
            type = "boolean",
        },
        PresignedURL = {
            type = "string",
        },
    },
}

M.GetStudioSessionMappingInput = {
    type = "structure",
    members = {
        StudioId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdentityId = {
            type = "string",
        },
        IdentityName = {
            type = "string",
        },
        IdentityType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SessionMappingDetail = {
    type = "structure",
    members = {
        StudioId = {
            type = "string",
        },
        IdentityId = {
            type = "string",
        },
        IdentityName = {
            type = "string",
        },
        IdentityType = {
            type = "string",
        },
        SessionPolicyArn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.GetStudioSessionMappingOutput = {
    type = "structure",
    members = {
        SessionMapping = M.SessionMappingDetail,
    },
}

M.ListBootstrapActionsInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListBootstrapActionsOutput = {
    type = "structure",
    members = {
        BootstrapActions = {
            type = "list",
            member = M.Command,
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListClustersInput = {
    type = "structure",
    members = {
        CreatedAfter = {
            type = "timestamp",
        },
        CreatedBefore = {
            type = "timestamp",
        },
        ClusterStates = {
            type = "list",
            member = { type = "string" },
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListClustersOutput = {
    type = "structure",
    members = {
        Clusters = {
            type = "list",
            member = M.ClusterSummary,
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListInstanceFleetsInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.InstanceFleetState = {
    PROVISIONING = "PROVISIONING",
    BOOTSTRAPPING = "BOOTSTRAPPING",
    RUNNING = "RUNNING",
    RESIZING = "RESIZING",
    RECONFIGURING = "RECONFIGURING",
    SUSPENDED = "SUSPENDED",
    TERMINATING = "TERMINATING",
    TERMINATED = "TERMINATED",
}

M.InstanceFleetStateChangeReasonCode = {
    INTERNAL_ERROR = "INTERNAL_ERROR",
    VALIDATION_ERROR = "VALIDATION_ERROR",
    INSTANCE_FAILURE = "INSTANCE_FAILURE",
    CLUSTER_TERMINATED = "CLUSTER_TERMINATED",
}

M.InstanceFleetStateChangeReason = {
    type = "structure",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.InstanceFleetTimeline = {
    type = "structure",
    members = {
        CreationDateTime = {
            type = "timestamp",
        },
        ReadyDateTime = {
            type = "timestamp",
        },
        EndDateTime = {
            type = "timestamp",
        },
    },
}

M.InstanceFleetStatus = {
    type = "structure",
    members = {
        State = {
            type = "string",
        },
        StateChangeReason = M.InstanceFleetStateChangeReason,
        Timeline = M.InstanceFleetTimeline,
    },
}

M.ListInstanceGroupsInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.InstanceGroupType = {
    MASTER = "MASTER",
    CORE = "CORE",
    TASK = "TASK",
}

M.InstanceResizePolicy = {
    type = "structure",
    members = {
        InstancesToTerminate = {
            type = "list",
            member = { type = "string" },
        },
        InstancesToProtect = {
            type = "list",
            member = { type = "string" },
        },
        InstanceTerminationTimeout = {
            type = "integer",
        },
    },
}

M.ShrinkPolicy = {
    type = "structure",
    members = {
        DecommissionTimeout = {
            type = "integer",
        },
        InstanceResizePolicy = M.InstanceResizePolicy,
    },
}

M.InstanceGroupStateChangeReasonCode = {
    INTERNAL_ERROR = "INTERNAL_ERROR",
    VALIDATION_ERROR = "VALIDATION_ERROR",
    INSTANCE_FAILURE = "INSTANCE_FAILURE",
    CLUSTER_TERMINATED = "CLUSTER_TERMINATED",
}

M.InstanceGroupStateChangeReason = {
    type = "structure",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.InstanceGroupTimeline = {
    type = "structure",
    members = {
        CreationDateTime = {
            type = "timestamp",
        },
        ReadyDateTime = {
            type = "timestamp",
        },
        EndDateTime = {
            type = "timestamp",
        },
    },
}

M.InstanceGroupStatus = {
    type = "structure",
    members = {
        State = {
            type = "string",
        },
        StateChangeReason = M.InstanceGroupStateChangeReason,
        Timeline = M.InstanceGroupTimeline,
    },
}

M.InstanceState = {
    AWAITING_FULFILLMENT = "AWAITING_FULFILLMENT",
    PROVISIONING = "PROVISIONING",
    BOOTSTRAPPING = "BOOTSTRAPPING",
    RUNNING = "RUNNING",
    TERMINATED = "TERMINATED",
}

M.ListInstancesInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceGroupId = {
            type = "string",
        },
        InstanceGroupTypes = {
            type = "list",
            member = { type = "string" },
        },
        InstanceFleetId = {
            type = "string",
        },
        InstanceFleetType = {
            type = "string",
        },
        InstanceStates = {
            type = "list",
            member = { type = "string" },
        },
        Marker = {
            type = "string",
        },
    },
}

M.InstanceStateChangeReasonCode = {
    INTERNAL_ERROR = "INTERNAL_ERROR",
    VALIDATION_ERROR = "VALIDATION_ERROR",
    INSTANCE_FAILURE = "INSTANCE_FAILURE",
    BOOTSTRAP_FAILURE = "BOOTSTRAP_FAILURE",
    CLUSTER_TERMINATED = "CLUSTER_TERMINATED",
}

M.InstanceStateChangeReason = {
    type = "structure",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.InstanceTimeline = {
    type = "structure",
    members = {
        CreationDateTime = {
            type = "timestamp",
        },
        ReadyDateTime = {
            type = "timestamp",
        },
        EndDateTime = {
            type = "timestamp",
        },
    },
}

M.InstanceStatus = {
    type = "structure",
    members = {
        State = {
            type = "string",
        },
        StateChangeReason = M.InstanceStateChangeReason,
        Timeline = M.InstanceTimeline,
    },
}

M.Instance = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Ec2InstanceId = {
            type = "string",
        },
        PublicDnsName = {
            type = "string",
        },
        PublicIpAddress = {
            type = "string",
        },
        PrivateDnsName = {
            type = "string",
        },
        PrivateIpAddress = {
            type = "string",
        },
        Status = M.InstanceStatus,
        InstanceGroupId = {
            type = "string",
        },
        InstanceFleetId = {
            type = "string",
        },
        Market = {
            type = "string",
        },
        InstanceType = {
            type = "string",
        },
        EbsVolumes = {
            type = "list",
            member = M.EbsVolume,
        },
    },
}

M.ListInstancesOutput = {
    type = "structure",
    members = {
        Instances = {
            type = "list",
            member = M.Instance,
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListNotebookExecutionsInput = {
    type = "structure",
    members = {
        EditorId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        From = {
            type = "timestamp",
        },
        To = {
            type = "timestamp",
        },
        Marker = {
            type = "string",
        },
        ExecutionEngineId = {
            type = "string",
        },
    },
}

M.NotebookExecutionSummary = {
    type = "structure",
    members = {
        NotebookExecutionId = {
            type = "string",
        },
        EditorId = {
            type = "string",
        },
        NotebookExecutionName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        NotebookS3Location = M.NotebookS3LocationForOutput,
        ExecutionEngineId = {
            type = "string",
        },
    },
}

M.ListNotebookExecutionsOutput = {
    type = "structure",
    members = {
        NotebookExecutions = {
            type = "list",
            member = M.NotebookExecutionSummary,
        },
        Marker = {
            type = "string",
        },
    },
}

M.ReleaseLabelFilter = {
    type = "structure",
    members = {
        Prefix = {
            type = "string",
        },
        Application = {
            type = "string",
        },
    },
}

M.ListReleaseLabelsInput = {
    type = "structure",
    members = {
        Filters = M.ReleaseLabelFilter,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListReleaseLabelsOutput = {
    type = "structure",
    members = {
        ReleaseLabels = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSecurityConfigurationsInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
    },
}

M.SecurityConfigurationSummary = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        CreationDateTime = {
            type = "timestamp",
        },
    },
}

M.ListSecurityConfigurationsOutput = {
    type = "structure",
    members = {
        SecurityConfigurations = {
            type = "list",
            member = M.SecurityConfigurationSummary,
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListStepsInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StepStates = {
            type = "list",
            member = { type = "string" },
        },
        StepIds = {
            type = "list",
            member = { type = "string" },
        },
        Marker = {
            type = "string",
        },
    },
}

M.StepSummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Config = M.HadoopStepConfig,
        ActionOnFailure = {
            type = "string",
        },
        Status = M.StepStatus,
        LogUri = {
            type = "string",
        },
        EncryptionKeyArn = {
            type = "string",
        },
    },
}

M.ListStepsOutput = {
    type = "structure",
    members = {
        Steps = {
            type = "list",
            member = M.StepSummary,
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListStudiosInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
    },
}

M.StudioSummary = {
    type = "structure",
    members = {
        StudioId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Url = {
            type = "string",
        },
        AuthMode = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
    },
}

M.ListStudiosOutput = {
    type = "structure",
    members = {
        Studios = {
            type = "list",
            member = M.StudioSummary,
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListStudioSessionMappingsInput = {
    type = "structure",
    members = {
        StudioId = {
            type = "string",
        },
        IdentityType = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
    },
}

M.SessionMappingSummary = {
    type = "structure",
    members = {
        StudioId = {
            type = "string",
        },
        IdentityId = {
            type = "string",
        },
        IdentityName = {
            type = "string",
        },
        IdentityType = {
            type = "string",
        },
        SessionPolicyArn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
    },
}

M.ListStudioSessionMappingsOutput = {
    type = "structure",
    members = {
        SessionMappings = {
            type = "list",
            member = M.SessionMappingSummary,
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListSupportedInstanceTypesInput = {
    type = "structure",
    members = {
        ReleaseLabel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.SupportedInstanceType = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        MemoryGB = {
            type = "float",
        },
        StorageGB = {
            type = "integer",
        },
        VCPU = {
            type = "integer",
        },
        Is64BitsOnly = {
            type = "boolean",
        },
        InstanceFamilyId = {
            type = "string",
        },
        EbsOptimizedAvailable = {
            type = "boolean",
        },
        EbsOptimizedByDefault = {
            type = "boolean",
        },
        NumberOfDisks = {
            type = "integer",
        },
        EbsStorageOnly = {
            type = "boolean",
        },
        Architecture = {
            type = "string",
        },
    },
}

M.ListSupportedInstanceTypesOutput = {
    type = "structure",
    members = {
        SupportedInstanceTypes = {
            type = "list",
            member = M.SupportedInstanceType,
        },
        Marker = {
            type = "string",
        },
    },
}

M.ModifyClusterInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StepConcurrencyLevel = {
            type = "integer",
        },
        ExtendedSupport = {
            type = "boolean",
        },
    },
}

M.ModifyClusterOutput = {
    type = "structure",
    members = {
        StepConcurrencyLevel = {
            type = "integer",
        },
        ExtendedSupport = {
            type = "boolean",
        },
    },
}

M.ModifyInstanceFleetOutput = {
    type = "structure",
}

M.ReconfigurationType = {
    OVERWRITE = "OVERWRITE",
    MERGE = "MERGE",
}

M.ModifyInstanceGroupsOutput = {
    type = "structure",
}

M.PutAutoScalingPolicyInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AutoScalingPolicy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutoScalingPolicy }),
    },
}

M.PutAutoScalingPolicyOutput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
        },
        InstanceGroupId = {
            type = "string",
        },
        AutoScalingPolicy = M.AutoScalingPolicyDescription,
        ClusterArn = {
            type = "string",
        },
    },
}

M.PutAutoTerminationPolicyInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AutoTerminationPolicy = M.AutoTerminationPolicy,
    },
}

M.PutAutoTerminationPolicyOutput = {
    type = "structure",
}

M.PutBlockPublicAccessConfigurationOutput = {
    type = "structure",
}

M.PutManagedScalingPolicyInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ManagedScalingPolicy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ManagedScalingPolicy }),
    },
}

M.PutManagedScalingPolicyOutput = {
    type = "structure",
}

M.RemoveAutoScalingPolicyInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveAutoScalingPolicyOutput = {
    type = "structure",
}

M.RemoveAutoTerminationPolicyInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveAutoTerminationPolicyOutput = {
    type = "structure",
}

M.RemoveManagedScalingPolicyInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveManagedScalingPolicyOutput = {
    type = "structure",
}

M.RemoveTagsInput = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveTagsOutput = {
    type = "structure",
}

M.SupportedProductConfig = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Args = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RunJobFlowOutput = {
    type = "structure",
    members = {
        JobFlowId = {
            type = "string",
        },
        ClusterArn = {
            type = "string",
        },
    },
}

M.SetKeepJobFlowAliveWhenNoStepsInput = {
    type = "structure",
    members = {
        JobFlowIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        KeepJobFlowAliveWhenNoSteps = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.SetKeepJobFlowAliveWhenNoStepsOutput = {
    type = "structure",
}

M.SetTerminationProtectionInput = {
    type = "structure",
    members = {
        JobFlowIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        TerminationProtected = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.SetTerminationProtectionOutput = {
    type = "structure",
}

M.SetUnhealthyNodeReplacementInput = {
    type = "structure",
    members = {
        JobFlowIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        UnhealthyNodeReplacement = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.SetUnhealthyNodeReplacementOutput = {
    type = "structure",
}

M.SetVisibleToAllUsersInput = {
    type = "structure",
    members = {
        JobFlowIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        VisibleToAllUsers = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.SetVisibleToAllUsersOutput = {
    type = "structure",
}

M.NotebookS3LocationFromInput = {
    type = "structure",
    members = {
        Bucket = {
            type = "string",
        },
        Key = {
            type = "string",
        },
    },
}

M.OutputNotebookS3LocationFromInput = {
    type = "structure",
    members = {
        Bucket = {
            type = "string",
        },
        Key = {
            type = "string",
        },
    },
}

M.StartNotebookExecutionInput = {
    type = "structure",
    members = {
        EditorId = {
            type = "string",
        },
        RelativePath = {
            type = "string",
        },
        NotebookExecutionName = {
            type = "string",
        },
        NotebookParams = {
            type = "string",
        },
        ExecutionEngine = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExecutionEngineConfig }),
        ServiceRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NotebookInstanceSecurityGroupId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        NotebookS3Location = M.NotebookS3LocationFromInput,
        OutputNotebookS3Location = M.OutputNotebookS3LocationFromInput,
        OutputNotebookFormat = {
            type = "string",
        },
        EnvironmentVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartNotebookExecutionOutput = {
    type = "structure",
    members = {
        NotebookExecutionId = {
            type = "string",
        },
    },
}

M.StopNotebookExecutionInput = {
    type = "structure",
    members = {
        NotebookExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopNotebookExecutionOutput = {
    type = "structure",
}

M.TerminateJobFlowsInput = {
    type = "structure",
    members = {
        JobFlowIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TerminateJobFlowsOutput = {
    type = "structure",
}

M.UpdateStudioInput = {
    type = "structure",
    members = {
        StudioId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        DefaultS3Location = {
            type = "string",
        },
        EncryptionKeyArn = {
            type = "string",
        },
    },
}

M.UpdateStudioOutput = {
    type = "structure",
}

M.UpdateStudioSessionMappingInput = {
    type = "structure",
    members = {
        StudioId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdentityId = {
            type = "string",
        },
        IdentityName = {
            type = "string",
        },
        IdentityType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SessionPolicyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateStudioSessionMappingOutput = {
    type = "structure",
}

M.Configuration = {
    type = "structure",
    members = {
        Classification = {
            type = "string",
        },
        Configurations = {
            type = "list",
            member = M.Configuration,
        },
        Properties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.BlockPublicAccessConfiguration = {
    type = "structure",
    members = {
        BlockPublicSecurityGroupRules = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        PermittedPublicSecurityGroupRuleRanges = {
            type = "list",
            member = M.PortRange,
        },
        Classification = {
            type = "string",
        },
        Configurations = {
            type = "list",
            member = M.Configuration,
        },
        Properties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.Cluster = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Status = M.ClusterStatus,
        Ec2InstanceAttributes = M.Ec2InstanceAttributes,
        InstanceCollectionType = {
            type = "string",
        },
        LogUri = {
            type = "string",
        },
        LogEncryptionKmsKeyId = {
            type = "string",
        },
        RequestedAmiVersion = {
            type = "string",
        },
        RunningAmiVersion = {
            type = "string",
        },
        ReleaseLabel = {
            type = "string",
        },
        AutoTerminate = {
            type = "boolean",
        },
        TerminationProtected = {
            type = "boolean",
        },
        UnhealthyNodeReplacement = {
            type = "boolean",
        },
        VisibleToAllUsers = {
            type = "boolean",
        },
        Applications = {
            type = "list",
            member = M.Application,
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ServiceRole = {
            type = "string",
        },
        NormalizedInstanceHours = {
            type = "integer",
        },
        MasterPublicDnsName = {
            type = "string",
        },
        Configurations = {
            type = "list",
            member = M.Configuration,
        },
        SecurityConfiguration = {
            type = "string",
        },
        AutoScalingRole = {
            type = "string",
        },
        ScaleDownBehavior = {
            type = "string",
        },
        CustomAmiId = {
            type = "string",
        },
        EbsRootVolumeSize = {
            type = "integer",
        },
        RepoUpgradeOnBoot = {
            type = "string",
        },
        KerberosAttributes = M.KerberosAttributes,
        ClusterArn = {
            type = "string",
        },
        OutpostArn = {
            type = "string",
        },
        StepConcurrencyLevel = {
            type = "integer",
        },
        PlacementGroups = {
            type = "list",
            member = M.PlacementGroupConfig,
        },
        OSReleaseLabel = {
            type = "string",
        },
        EbsRootVolumeIops = {
            type = "integer",
        },
        EbsRootVolumeThroughput = {
            type = "integer",
        },
        ExtendedSupport = {
            type = "boolean",
        },
        MonitoringConfiguration = M.MonitoringConfiguration,
    },
}

M.InstanceGroupConfig = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Market = {
            type = "string",
        },
        InstanceRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BidPrice = {
            type = "string",
        },
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Configurations = {
            type = "list",
            member = M.Configuration,
        },
        EbsConfiguration = M.EbsConfiguration,
        AutoScalingPolicy = M.AutoScalingPolicy,
        CustomAmiId = {
            type = "string",
        },
    },
}

M.InstanceGroupModifyConfig = {
    type = "structure",
    members = {
        InstanceGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceCount = {
            type = "integer",
        },
        EC2InstanceIdsToTerminate = {
            type = "list",
            member = { type = "string" },
        },
        ShrinkPolicy = M.ShrinkPolicy,
        ReconfigurationType = {
            type = "string",
        },
        Configurations = {
            type = "list",
            member = M.Configuration,
        },
    },
}

M.InstanceTypeConfig = {
    type = "structure",
    members = {
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WeightedCapacity = {
            type = "integer",
        },
        BidPrice = {
            type = "string",
        },
        BidPriceAsPercentageOfOnDemandPrice = {
            type = "double",
        },
        EbsConfiguration = M.EbsConfiguration,
        Configurations = {
            type = "list",
            member = M.Configuration,
        },
        CustomAmiId = {
            type = "string",
        },
        Priority = {
            type = "double",
        },
    },
}

M.InstanceTypeSpecification = {
    type = "structure",
    members = {
        InstanceType = {
            type = "string",
        },
        WeightedCapacity = {
            type = "integer",
        },
        BidPrice = {
            type = "string",
        },
        BidPriceAsPercentageOfOnDemandPrice = {
            type = "double",
        },
        Configurations = {
            type = "list",
            member = M.Configuration,
        },
        EbsBlockDevices = {
            type = "list",
            member = M.EbsBlockDevice,
        },
        EbsOptimized = {
            type = "boolean",
        },
        CustomAmiId = {
            type = "string",
        },
        Priority = {
            type = "double",
        },
    },
}

M.DescribeClusterOutput = {
    type = "structure",
    members = {
        Cluster = M.Cluster,
    },
}

M.GetBlockPublicAccessConfigurationOutput = {
    type = "structure",
    members = {
        BlockPublicAccessConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BlockPublicAccessConfiguration }),
        BlockPublicAccessConfigurationMetadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BlockPublicAccessConfigurationMetadata }),
    },
}

M.PutBlockPublicAccessConfigurationInput = {
    type = "structure",
    members = {
        BlockPublicAccessConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BlockPublicAccessConfiguration }),
    },
}

M.AddInstanceGroupsInput = {
    type = "structure",
    members = {
        InstanceGroups = {
            type = "list",
            member = M.InstanceGroupConfig,
            traits = {
                required = true,
            },
        },
        JobFlowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InstanceFleet = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Status = M.InstanceFleetStatus,
        InstanceFleetType = {
            type = "string",
        },
        TargetOnDemandCapacity = {
            type = "integer",
        },
        TargetSpotCapacity = {
            type = "integer",
        },
        ProvisionedOnDemandCapacity = {
            type = "integer",
        },
        ProvisionedSpotCapacity = {
            type = "integer",
        },
        InstanceTypeSpecifications = {
            type = "list",
            member = M.InstanceTypeSpecification,
        },
        LaunchSpecifications = M.InstanceFleetProvisioningSpecifications,
        ResizeSpecifications = M.InstanceFleetResizingSpecifications,
        Context = {
            type = "string",
        },
    },
}

M.InstanceFleetConfig = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        InstanceFleetType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetOnDemandCapacity = {
            type = "integer",
        },
        TargetSpotCapacity = {
            type = "integer",
        },
        InstanceTypeConfigs = {
            type = "list",
            member = M.InstanceTypeConfig,
        },
        LaunchSpecifications = M.InstanceFleetProvisioningSpecifications,
        ResizeSpecifications = M.InstanceFleetResizingSpecifications,
        Context = {
            type = "string",
        },
    },
}

M.InstanceFleetModifyConfig = {
    type = "structure",
    members = {
        InstanceFleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetOnDemandCapacity = {
            type = "integer",
        },
        TargetSpotCapacity = {
            type = "integer",
        },
        ResizeSpecifications = M.InstanceFleetResizingSpecifications,
        InstanceTypeConfigs = {
            type = "list",
            member = M.InstanceTypeConfig,
        },
        Context = {
            type = "string",
        },
    },
}

M.ModifyInstanceGroupsInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
        },
        InstanceGroups = {
            type = "list",
            member = M.InstanceGroupModifyConfig,
        },
    },
}

M.AddInstanceFleetInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceFleet = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InstanceFleetConfig }),
    },
}

M.InstanceGroup = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Market = {
            type = "string",
        },
        InstanceGroupType = {
            type = "string",
        },
        BidPrice = {
            type = "string",
        },
        InstanceType = {
            type = "string",
        },
        RequestedInstanceCount = {
            type = "integer",
        },
        RunningInstanceCount = {
            type = "integer",
        },
        Status = M.InstanceGroupStatus,
        Configurations = {
            type = "list",
            member = M.Configuration,
        },
        ConfigurationsVersion = {
            type = "long",
        },
        LastSuccessfullyAppliedConfigurations = {
            type = "list",
            member = M.Configuration,
        },
        LastSuccessfullyAppliedConfigurationsVersion = {
            type = "long",
        },
        EbsBlockDevices = {
            type = "list",
            member = M.EbsBlockDevice,
        },
        EbsOptimized = {
            type = "boolean",
        },
        ShrinkPolicy = M.ShrinkPolicy,
        AutoScalingPolicy = M.AutoScalingPolicyDescription,
        CustomAmiId = {
            type = "string",
        },
    },
}

M.ModifyInstanceFleetInput = {
    type = "structure",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceFleet = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InstanceFleetModifyConfig }),
    },
}

M.ListInstanceFleetsOutput = {
    type = "structure",
    members = {
        InstanceFleets = {
            type = "list",
            member = M.InstanceFleet,
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListInstanceGroupsOutput = {
    type = "structure",
    members = {
        InstanceGroups = {
            type = "list",
            member = M.InstanceGroup,
        },
        Marker = {
            type = "string",
        },
    },
}

M.JobFlowInstancesConfig = {
    type = "structure",
    members = {
        MasterInstanceType = {
            type = "string",
        },
        SlaveInstanceType = {
            type = "string",
        },
        InstanceCount = {
            type = "integer",
        },
        InstanceGroups = {
            type = "list",
            member = M.InstanceGroupConfig,
        },
        InstanceFleets = {
            type = "list",
            member = M.InstanceFleetConfig,
        },
        Ec2KeyName = {
            type = "string",
        },
        Placement = M.PlacementType,
        KeepJobFlowAliveWhenNoSteps = {
            type = "boolean",
        },
        TerminationProtected = {
            type = "boolean",
        },
        UnhealthyNodeReplacement = {
            type = "boolean",
        },
        HadoopVersion = {
            type = "string",
        },
        Ec2SubnetId = {
            type = "string",
        },
        Ec2SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        EmrManagedMasterSecurityGroup = {
            type = "string",
        },
        EmrManagedSlaveSecurityGroup = {
            type = "string",
        },
        ServiceAccessSecurityGroup = {
            type = "string",
        },
        AdditionalMasterSecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
        AdditionalSlaveSecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RunJobFlowInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogUri = {
            type = "string",
        },
        LogEncryptionKmsKeyId = {
            type = "string",
        },
        AdditionalInfo = {
            type = "string",
        },
        AmiVersion = {
            type = "string",
        },
        ReleaseLabel = {
            type = "string",
        },
        Instances = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobFlowInstancesConfig }),
        Steps = {
            type = "list",
            member = M.StepConfig,
        },
        StepExecutionRoleArn = {
            type = "string",
        },
        BootstrapActions = {
            type = "list",
            member = M.BootstrapActionConfig,
        },
        SupportedProducts = {
            type = "list",
            member = { type = "string" },
        },
        NewSupportedProducts = {
            type = "list",
            member = M.SupportedProductConfig,
        },
        Applications = {
            type = "list",
            member = M.Application,
        },
        Configurations = {
            type = "list",
            member = M.Configuration,
        },
        VisibleToAllUsers = {
            type = "boolean",
        },
        JobFlowRole = {
            type = "string",
        },
        ServiceRole = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        SecurityConfiguration = {
            type = "string",
        },
        AutoScalingRole = {
            type = "string",
        },
        ScaleDownBehavior = {
            type = "string",
        },
        CustomAmiId = {
            type = "string",
        },
        EbsRootVolumeSize = {
            type = "integer",
        },
        RepoUpgradeOnBoot = {
            type = "string",
        },
        KerberosAttributes = M.KerberosAttributes,
        StepConcurrencyLevel = {
            type = "integer",
        },
        ManagedScalingPolicy = M.ManagedScalingPolicy,
        PlacementGroupConfigs = {
            type = "list",
            member = M.PlacementGroupConfig,
        },
        AutoTerminationPolicy = M.AutoTerminationPolicy,
        OSReleaseLabel = {
            type = "string",
        },
        EbsRootVolumeIops = {
            type = "integer",
        },
        EbsRootVolumeThroughput = {
            type = "integer",
        },
        ExtendedSupport = {
            type = "boolean",
        },
        MonitoringConfiguration = M.MonitoringConfiguration,
    },
}

return M
