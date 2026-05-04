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
            type = "number",
        },
        SizeInGB = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Throughput = {
            type = "number",
        },
    },
}

M.EbsBlockDeviceConfig = {
    type = "structure",
    members = {
        VolumeSpecification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        VolumesPerInstance = {
            type = "number",
        },
    },
}

M.EbsConfiguration = {
    type = "structure",
    members = {
        EbsBlockDeviceConfigs = {
            type = "list",
            member_type = "structure",
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
        CapacityReservationOptions = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
        },
        AllocationStrategy = {
            type = "string",
        },
    },
}

M.InstanceFleetProvisioningSpecifications = {
    type = "structure",
    members = {
        SpotSpecification = {
            type = "structure",
        },
        OnDemandSpecification = {
            type = "structure",
        },
    },
}

M.OnDemandResizingSpecification = {
    type = "structure",
    members = {
        TimeoutDurationMinutes = {
            type = "number",
        },
        AllocationStrategy = {
            type = "string",
        },
        CapacityReservationOptions = {
            type = "structure",
        },
    },
}

M.SpotResizingSpecification = {
    type = "structure",
    members = {
        TimeoutDurationMinutes = {
            type = "number",
        },
        AllocationStrategy = {
            type = "string",
        },
    },
}

M.InstanceFleetResizingSpecifications = {
    type = "structure",
    members = {
        SpotResizeSpecification = {
            type = "structure",
        },
        OnDemandResizeSpecification = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        MaxCapacity = {
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        CoolDown = {
            type = "number",
        },
    },
}

M.ScalingAction = {
    type = "structure",
    members = {
        Market = {
            type = "string",
        },
        SimpleScalingPolicyConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Statistic = {
            type = "string",
        },
        Threshold = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Unit = {
            type = "string",
        },
        Dimensions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ScalingTrigger = {
    type = "structure",
    members = {
        CloudWatchAlarmDefinition = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        Action = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Trigger = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AutoScalingPolicy = {
    type = "structure",
    members = {
        Constraints = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Rules = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "string",
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
        S3MonitoringConfiguration = {
            type = "structure",
        },
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
        HadoopJarStep = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        StepMonitoringConfiguration = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "string",
        },
        AdditionalInfo = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        StateChangeReason = {
            type = "structure",
        },
    },
}

M.AutoScalingPolicyDescription = {
    type = "structure",
    members = {
        Status = {
            type = "structure",
        },
        Constraints = {
            type = "structure",
        },
        Rules = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AutoTerminationPolicy = {
    type = "structure",
    members = {
        IdleTimeout = {
            type = "number",
        },
    },
}

M.PortRange = {
    type = "structure",
    members = {
        MinRange = {
            type = "number",
            traits = {
                required = true,
            },
        },
        MaxRange = {
            type = "number",
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
            member_type = "string",
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
        ScriptBootstrapAction = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BootstrapActionDetail = {
    type = "structure",
    members = {
        BootstrapActionConfig = {
            type = "structure",
        },
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
            member_type = "string",
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "list",
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
            member_type = "string",
        },
        Ec2AvailabilityZone = {
            type = "string",
        },
        RequestedEc2AvailabilityZones = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
        },
        AdditionalSlaveSecurityGroups = {
            type = "list",
            member_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.MonitoringConfiguration = {
    type = "structure",
    members = {
        CloudWatchLogConfiguration = {
            type = "structure",
        },
        S3LoggingConfiguration = {
            type = "structure",
        },
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
            member_type = "map",
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
        StateChangeReason = {
            type = "structure",
        },
        Timeline = {
            type = "structure",
        },
        ErrorDetails = {
            type = "list",
            member_type = "structure",
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
        Status = {
            type = "structure",
        },
        NormalizedInstanceHours = {
            type = "number",
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
            member_type = "string",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        MaximumCapacityUnits = {
            type = "number",
            traits = {
                required = true,
            },
        },
        MaximumOnDemandCapacityUnits = {
            type = "number",
        },
        MaximumCoreCapacityUnits = {
            type = "number",
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
        EMRContainersConfig = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
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
        UsernamePassword = {
            type = "structure",
        },
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
            member_type = "string",
        },
        JobFlowStates = {
            type = "list",
            member_type = "string",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        InstanceRunningCount = {
            type = "number",
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
            member_type = "string",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        InstanceGroups = {
            type = "list",
            member_type = "structure",
        },
        NormalizedInstanceHours = {
            type = "number",
        },
        Ec2KeyName = {
            type = "string",
        },
        Ec2SubnetId = {
            type = "string",
        },
        Placement = {
            type = "structure",
        },
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
        StepConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ExecutionStatusDetail = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        ExecutionStatusDetail = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Instances = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Steps = {
            type = "list",
            member_type = "structure",
        },
        BootstrapActions = {
            type = "list",
            member_type = "structure",
        },
        SupportedProducts = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
        ExecutionEngine = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        NotebookS3Location = {
            type = "structure",
        },
        OutputNotebookS3Location = {
            type = "structure",
        },
        OutputNotebookFormat = {
            type = "string",
        },
        EnvironmentVariables = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DescribeNotebookExecutionOutput = {
    type = "structure",
    members = {
        NotebookExecution = {
            type = "structure",
        },
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
            member_type = "string",
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
            member_type = "structure",
        },
    },
}

M.DescribePersistentAppUIOutput = {
    type = "structure",
    members = {
        PersistentAppUI = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        AvailableOSReleases = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        MainClass = {
            type = "string",
        },
        Args = {
            type = "list",
            member_type = "string",
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
        StateChangeReason = {
            type = "structure",
        },
        FailureDetails = {
            type = "structure",
        },
        Timeline = {
            type = "structure",
        },
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
        Config = {
            type = "structure",
        },
        ActionOnFailure = {
            type = "string",
        },
        Status = {
            type = "structure",
        },
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
        Step = {
            type = "structure",
        },
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
            member_type = "string",
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
            member_type = "structure",
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
        Studio = {
            type = "structure",
        },
    },
}

M.EbsBlockDevice = {
    type = "structure",
    members = {
        VolumeSpecification = {
            type = "structure",
        },
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
        AutoTerminationPolicy = {
            type = "structure",
        },
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
        Credentials = {
            type = "union",
        },
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
        ComputeLimits = {
            type = "structure",
        },
        UtilizationPerformanceIndex = {
            type = "number",
        },
        ScalingStrategy = {
            type = "string",
        },
    },
}

M.GetManagedScalingPolicyOutput = {
    type = "structure",
    members = {
        ManagedScalingPolicy = {
            type = "structure",
        },
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
        SessionMapping = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
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
        StateChangeReason = {
            type = "structure",
        },
        Timeline = {
            type = "structure",
        },
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
            member_type = "string",
        },
        InstancesToProtect = {
            type = "list",
            member_type = "string",
        },
        InstanceTerminationTimeout = {
            type = "number",
        },
    },
}

M.ShrinkPolicy = {
    type = "structure",
    members = {
        DecommissionTimeout = {
            type = "number",
        },
        InstanceResizePolicy = {
            type = "structure",
        },
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
        StateChangeReason = {
            type = "structure",
        },
        Timeline = {
            type = "structure",
        },
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
            member_type = "string",
        },
        InstanceFleetId = {
            type = "string",
        },
        InstanceFleetType = {
            type = "string",
        },
        InstanceStates = {
            type = "list",
            member_type = "string",
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
        StateChangeReason = {
            type = "structure",
        },
        Timeline = {
            type = "structure",
        },
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
        Status = {
            type = "structure",
        },
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
            member_type = "structure",
        },
    },
}

M.ListInstancesOutput = {
    type = "structure",
    members = {
        Instances = {
            type = "list",
            member_type = "structure",
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
        NotebookS3Location = {
            type = "structure",
        },
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
            member_type = "structure",
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
        Filters = {
            type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListReleaseLabelsOutput = {
    type = "structure",
    members = {
        ReleaseLabels = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "string",
        },
        StepIds = {
            type = "list",
            member_type = "string",
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
        Config = {
            type = "structure",
        },
        ActionOnFailure = {
            type = "string",
        },
        Status = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
        },
        StorageGB = {
            type = "number",
        },
        VCPU = {
            type = "number",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
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
        AutoScalingPolicy = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        AutoScalingPolicy = {
            type = "structure",
        },
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
        AutoTerminationPolicy = {
            type = "structure",
        },
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
        ManagedScalingPolicy = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
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
        ExecutionEngine = {
            type = "structure",
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
        NotebookInstanceSecurityGroupId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        NotebookS3Location = {
            type = "structure",
        },
        OutputNotebookS3Location = {
            type = "structure",
        },
        OutputNotebookFormat = {
            type = "string",
        },
        EnvironmentVariables = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "structure",
        },
        Properties = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
        },
        Classification = {
            type = "string",
        },
        Configurations = {
            type = "list",
            member_type = "structure",
        },
        Properties = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        Status = {
            type = "structure",
        },
        Ec2InstanceAttributes = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ServiceRole = {
            type = "string",
        },
        NormalizedInstanceHours = {
            type = "number",
        },
        MasterPublicDnsName = {
            type = "string",
        },
        Configurations = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        RepoUpgradeOnBoot = {
            type = "string",
        },
        KerberosAttributes = {
            type = "structure",
        },
        ClusterArn = {
            type = "string",
        },
        OutpostArn = {
            type = "string",
        },
        StepConcurrencyLevel = {
            type = "number",
        },
        PlacementGroups = {
            type = "list",
            member_type = "structure",
        },
        OSReleaseLabel = {
            type = "string",
        },
        EbsRootVolumeIops = {
            type = "number",
        },
        EbsRootVolumeThroughput = {
            type = "number",
        },
        ExtendedSupport = {
            type = "boolean",
        },
        MonitoringConfiguration = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Configurations = {
            type = "list",
            member_type = "structure",
        },
        EbsConfiguration = {
            type = "structure",
        },
        AutoScalingPolicy = {
            type = "structure",
        },
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
            type = "number",
        },
        EC2InstanceIdsToTerminate = {
            type = "list",
            member_type = "string",
        },
        ShrinkPolicy = {
            type = "structure",
        },
        ReconfigurationType = {
            type = "string",
        },
        Configurations = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        BidPrice = {
            type = "string",
        },
        BidPriceAsPercentageOfOnDemandPrice = {
            type = "number",
        },
        EbsConfiguration = {
            type = "structure",
        },
        Configurations = {
            type = "list",
            member_type = "structure",
        },
        CustomAmiId = {
            type = "string",
        },
        Priority = {
            type = "number",
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
            type = "number",
        },
        BidPrice = {
            type = "string",
        },
        BidPriceAsPercentageOfOnDemandPrice = {
            type = "number",
        },
        Configurations = {
            type = "list",
            member_type = "structure",
        },
        EbsBlockDevices = {
            type = "list",
            member_type = "structure",
        },
        EbsOptimized = {
            type = "boolean",
        },
        CustomAmiId = {
            type = "string",
        },
        Priority = {
            type = "number",
        },
    },
}

M.DescribeClusterOutput = {
    type = "structure",
    members = {
        Cluster = {
            type = "structure",
        },
    },
}

M.GetBlockPublicAccessConfigurationOutput = {
    type = "structure",
    members = {
        BlockPublicAccessConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        BlockPublicAccessConfigurationMetadata = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutBlockPublicAccessConfigurationInput = {
    type = "structure",
    members = {
        BlockPublicAccessConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AddInstanceGroupsInput = {
    type = "structure",
    members = {
        InstanceGroups = {
            type = "list",
            member_type = "structure",
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
        Status = {
            type = "structure",
        },
        InstanceFleetType = {
            type = "string",
        },
        TargetOnDemandCapacity = {
            type = "number",
        },
        TargetSpotCapacity = {
            type = "number",
        },
        ProvisionedOnDemandCapacity = {
            type = "number",
        },
        ProvisionedSpotCapacity = {
            type = "number",
        },
        InstanceTypeSpecifications = {
            type = "list",
            member_type = "structure",
        },
        LaunchSpecifications = {
            type = "structure",
        },
        ResizeSpecifications = {
            type = "structure",
        },
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
            type = "number",
        },
        TargetSpotCapacity = {
            type = "number",
        },
        InstanceTypeConfigs = {
            type = "list",
            member_type = "structure",
        },
        LaunchSpecifications = {
            type = "structure",
        },
        ResizeSpecifications = {
            type = "structure",
        },
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
            type = "number",
        },
        TargetSpotCapacity = {
            type = "number",
        },
        ResizeSpecifications = {
            type = "structure",
        },
        InstanceTypeConfigs = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        InstanceFleet = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
        },
        RunningInstanceCount = {
            type = "number",
        },
        Status = {
            type = "structure",
        },
        Configurations = {
            type = "list",
            member_type = "structure",
        },
        ConfigurationsVersion = {
            type = "number",
        },
        LastSuccessfullyAppliedConfigurations = {
            type = "list",
            member_type = "structure",
        },
        LastSuccessfullyAppliedConfigurationsVersion = {
            type = "number",
        },
        EbsBlockDevices = {
            type = "list",
            member_type = "structure",
        },
        EbsOptimized = {
            type = "boolean",
        },
        ShrinkPolicy = {
            type = "structure",
        },
        AutoScalingPolicy = {
            type = "structure",
        },
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
        InstanceFleet = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListInstanceFleetsOutput = {
    type = "structure",
    members = {
        InstanceFleets = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
        },
        InstanceGroups = {
            type = "list",
            member_type = "structure",
        },
        InstanceFleets = {
            type = "list",
            member_type = "structure",
        },
        Ec2KeyName = {
            type = "string",
        },
        Placement = {
            type = "structure",
        },
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
            member_type = "string",
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
            member_type = "string",
        },
        AdditionalSlaveSecurityGroups = {
            type = "list",
            member_type = "string",
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
        Instances = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Steps = {
            type = "list",
            member_type = "structure",
        },
        StepExecutionRoleArn = {
            type = "string",
        },
        BootstrapActions = {
            type = "list",
            member_type = "structure",
        },
        SupportedProducts = {
            type = "list",
            member_type = "string",
        },
        NewSupportedProducts = {
            type = "list",
            member_type = "structure",
        },
        Applications = {
            type = "list",
            member_type = "structure",
        },
        Configurations = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
        },
        RepoUpgradeOnBoot = {
            type = "string",
        },
        KerberosAttributes = {
            type = "structure",
        },
        StepConcurrencyLevel = {
            type = "number",
        },
        ManagedScalingPolicy = {
            type = "structure",
        },
        PlacementGroupConfigs = {
            type = "list",
            member_type = "structure",
        },
        AutoTerminationPolicy = {
            type = "structure",
        },
        OSReleaseLabel = {
            type = "string",
        },
        EbsRootVolumeIops = {
            type = "number",
        },
        EbsRootVolumeThroughput = {
            type = "number",
        },
        ExtendedSupport = {
            type = "boolean",
        },
        MonitoringConfiguration = {
            type = "structure",
        },
    },
}

return M
