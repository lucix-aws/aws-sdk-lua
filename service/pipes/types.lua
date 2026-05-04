local M = {}

M.AssignPublicIp = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AwsVpcConfiguration = {
    type = "structure",
    members = {
        Subnets = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        SecurityGroups = {
            type = "list",
            member_type = "string",
        },
        AssignPublicIp = {
            type = "string",
        },
    },
}

M.BatchArrayProperties = {
    type = "structure",
    members = {
        Size = {
            type = "number",
        },
    },
}

M.BatchEnvironmentVariable = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.BatchResourceRequirementType = {
    GPU = "GPU",
    MEMORY = "MEMORY",
    VCPU = "VCPU",
}

M.BatchResourceRequirement = {
    type = "structure",
    members = {
        Type = {
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

M.BatchContainerOverrides = {
    type = "structure",
    members = {
        Command = {
            type = "list",
            member_type = "string",
        },
        Environment = {
            type = "list",
            member_type = "structure",
        },
        InstanceType = {
            type = "string",
        },
        ResourceRequirements = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchJobDependencyType = {
    N_TO_N = "N_TO_N",
    SEQUENTIAL = "SEQUENTIAL",
}

M.BatchJobDependency = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.BatchRetryStrategy = {
    type = "structure",
    members = {
        Attempts = {
            type = "number",
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

M.CloudwatchLogsLogDestination = {
    type = "structure",
    members = {
        LogGroupArn = {
            type = "string",
        },
    },
}

M.CloudwatchLogsLogDestinationParameters = {
    type = "structure",
    members = {
        LogGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RequestedPipeState = {
    RUNNING = "RUNNING",
    STOPPED = "STOPPED",
}

M.PipeEnrichmentHttpParameters = {
    type = "structure",
    members = {
        PathParameterValues = {
            type = "list",
            member_type = "string",
        },
        HeaderParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        QueryStringParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.PipeEnrichmentParameters = {
    type = "structure",
    members = {
        InputTemplate = {
            type = "string",
        },
        HttpParameters = {
            type = "structure",
        },
    },
}

M.FirehoseLogDestinationParameters = {
    type = "structure",
    members = {
        DeliveryStreamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IncludeExecutionDataOption = {
    ALL = "ALL",
}

M.LogLevel = {
    OFF = "OFF",
    ERROR = "ERROR",
    INFO = "INFO",
    TRACE = "TRACE",
}

M.S3OutputFormat = {
    JSON = "json",
    PLAIN = "plain",
    W3C = "w3c",
}

M.S3LogDestinationParameters = {
    type = "structure",
    members = {
        BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BucketOwner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputFormat = {
            type = "string",
        },
        Prefix = {
            type = "string",
        },
    },
}

M.PipeLogConfigurationParameters = {
    type = "structure",
    members = {
        S3LogDestination = {
            type = "structure",
        },
        FirehoseLogDestination = {
            type = "structure",
        },
        CloudwatchLogsLogDestination = {
            type = "structure",
        },
        Level = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IncludeExecutionData = {
            type = "list",
            member_type = "string",
        },
    },
}

M.MQBrokerAccessCredentials = {
    type = "union",
    members = {
        BasicAuth = {
            type = "string",
        },
    },
}

M.PipeSourceActiveMQBrokerParameters = {
    type = "structure",
    members = {
        Credentials = {
            type = "union",
            traits = {
                required = true,
            },
        },
        QueueName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BatchSize = {
            type = "number",
        },
        MaximumBatchingWindowInSeconds = {
            type = "number",
        },
    },
}

M.DeadLetterConfig = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.OnPartialBatchItemFailureStreams = {
    AUTOMATIC_BISECT = "AUTOMATIC_BISECT",
}

M.DynamoDBStreamStartPosition = {
    TRIM_HORIZON = "TRIM_HORIZON",
    LATEST = "LATEST",
}

M.PipeSourceDynamoDBStreamParameters = {
    type = "structure",
    members = {
        BatchSize = {
            type = "number",
        },
        DeadLetterConfig = {
            type = "structure",
        },
        OnPartialBatchItemFailure = {
            type = "string",
        },
        MaximumBatchingWindowInSeconds = {
            type = "number",
        },
        MaximumRecordAgeInSeconds = {
            type = "number",
        },
        MaximumRetryAttempts = {
            type = "number",
        },
        ParallelizationFactor = {
            type = "number",
        },
        StartingPosition = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Filter = {
    type = "structure",
    members = {
        Pattern = {
            type = "string",
        },
    },
}

M.FilterCriteria = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.KinesisStreamStartPosition = {
    TRIM_HORIZON = "TRIM_HORIZON",
    LATEST = "LATEST",
    AT_TIMESTAMP = "AT_TIMESTAMP",
}

M.PipeSourceKinesisStreamParameters = {
    type = "structure",
    members = {
        BatchSize = {
            type = "number",
        },
        DeadLetterConfig = {
            type = "structure",
        },
        OnPartialBatchItemFailure = {
            type = "string",
        },
        MaximumBatchingWindowInSeconds = {
            type = "number",
        },
        MaximumRecordAgeInSeconds = {
            type = "number",
        },
        MaximumRetryAttempts = {
            type = "number",
        },
        ParallelizationFactor = {
            type = "number",
        },
        StartingPosition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartingPositionTimestamp = {
            type = "timestamp",
        },
    },
}

M.MSKAccessCredentials = {
    type = "union",
    members = {
        SaslScram512Auth = {
            type = "string",
        },
        ClientCertificateTlsAuth = {
            type = "string",
        },
    },
}

M.MSKStartPosition = {
    TRIM_HORIZON = "TRIM_HORIZON",
    LATEST = "LATEST",
}

M.PipeSourceManagedStreamingKafkaParameters = {
    type = "structure",
    members = {
        TopicName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartingPosition = {
            type = "string",
        },
        BatchSize = {
            type = "number",
        },
        MaximumBatchingWindowInSeconds = {
            type = "number",
        },
        ConsumerGroupID = {
            type = "string",
        },
        Credentials = {
            type = "union",
        },
    },
}

M.PipeSourceRabbitMQBrokerParameters = {
    type = "structure",
    members = {
        Credentials = {
            type = "union",
            traits = {
                required = true,
            },
        },
        QueueName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VirtualHost = {
            type = "string",
        },
        BatchSize = {
            type = "number",
        },
        MaximumBatchingWindowInSeconds = {
            type = "number",
        },
    },
}

M.SelfManagedKafkaAccessConfigurationCredentials = {
    type = "union",
    members = {
        BasicAuth = {
            type = "string",
        },
        SaslScram512Auth = {
            type = "string",
        },
        SaslScram256Auth = {
            type = "string",
        },
        ClientCertificateTlsAuth = {
            type = "string",
        },
    },
}

M.SelfManagedKafkaStartPosition = {
    TRIM_HORIZON = "TRIM_HORIZON",
    LATEST = "LATEST",
}

M.SelfManagedKafkaAccessConfigurationVpc = {
    type = "structure",
    members = {
        Subnets = {
            type = "list",
            member_type = "string",
        },
        SecurityGroup = {
            type = "list",
            member_type = "string",
        },
    },
}

M.PipeSourceSelfManagedKafkaParameters = {
    type = "structure",
    members = {
        TopicName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartingPosition = {
            type = "string",
        },
        AdditionalBootstrapServers = {
            type = "list",
            member_type = "string",
        },
        BatchSize = {
            type = "number",
        },
        MaximumBatchingWindowInSeconds = {
            type = "number",
        },
        ConsumerGroupID = {
            type = "string",
        },
        Credentials = {
            type = "union",
        },
        ServerRootCaCertificate = {
            type = "string",
        },
        Vpc = {
            type = "structure",
        },
    },
}

M.PipeSourceSqsQueueParameters = {
    type = "structure",
    members = {
        BatchSize = {
            type = "number",
        },
        MaximumBatchingWindowInSeconds = {
            type = "number",
        },
    },
}

M.PipeSourceParameters = {
    type = "structure",
    members = {
        FilterCriteria = {
            type = "structure",
        },
        KinesisStreamParameters = {
            type = "structure",
        },
        DynamoDBStreamParameters = {
            type = "structure",
        },
        SqsQueueParameters = {
            type = "structure",
        },
        ActiveMQBrokerParameters = {
            type = "structure",
        },
        RabbitMQBrokerParameters = {
            type = "structure",
        },
        ManagedStreamingKafkaParameters = {
            type = "structure",
        },
        SelfManagedKafkaParameters = {
            type = "structure",
        },
    },
}

M.PipeTargetBatchJobParameters = {
    type = "structure",
    members = {
        JobDefinition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ArrayProperties = {
            type = "structure",
        },
        RetryStrategy = {
            type = "structure",
        },
        ContainerOverrides = {
            type = "structure",
        },
        DependsOn = {
            type = "list",
            member_type = "structure",
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.PipeTargetCloudWatchLogsParameters = {
    type = "structure",
    members = {
        LogStreamName = {
            type = "string",
        },
        Timestamp = {
            type = "string",
        },
    },
}

M.LaunchType = {
    EC2 = "EC2",
    FARGATE = "FARGATE",
    EXTERNAL = "EXTERNAL",
}

M.NetworkConfiguration = {
    type = "structure",
    members = {
        awsvpcConfiguration = {
            type = "structure",
        },
    },
}

M.EcsEnvironmentVariable = {
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

M.EcsEnvironmentFileType = {
    s3 = "s3",
}

M.EcsEnvironmentFile = {
    type = "structure",
    members = {
        type = {
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

M.EcsResourceRequirementType = {
    GPU = "GPU",
    InferenceAccelerator = "InferenceAccelerator",
}

M.EcsResourceRequirement = {
    type = "structure",
    members = {
        type = {
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

M.EcsContainerOverride = {
    type = "structure",
    members = {
        Command = {
            type = "list",
            member_type = "string",
        },
        Cpu = {
            type = "number",
        },
        Environment = {
            type = "list",
            member_type = "structure",
        },
        EnvironmentFiles = {
            type = "list",
            member_type = "structure",
        },
        Memory = {
            type = "number",
        },
        MemoryReservation = {
            type = "number",
        },
        Name = {
            type = "string",
        },
        ResourceRequirements = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.EcsEphemeralStorage = {
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

M.EcsInferenceAcceleratorOverride = {
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

M.EcsTaskOverride = {
    type = "structure",
    members = {
        ContainerOverrides = {
            type = "list",
            member_type = "structure",
        },
        Cpu = {
            type = "string",
        },
        EphemeralStorage = {
            type = "structure",
        },
        ExecutionRoleArn = {
            type = "string",
        },
        InferenceAcceleratorOverrides = {
            type = "list",
            member_type = "structure",
        },
        Memory = {
            type = "string",
        },
        TaskRoleArn = {
            type = "string",
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
}

M.Tag = {
    type = "structure",
    members = {
        Key = {
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

M.PipeTargetEcsTaskParameters = {
    type = "structure",
    members = {
        TaskDefinitionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TaskCount = {
            type = "number",
        },
        LaunchType = {
            type = "string",
        },
        NetworkConfiguration = {
            type = "structure",
        },
        PlatformVersion = {
            type = "string",
        },
        Group = {
            type = "string",
        },
        CapacityProviderStrategy = {
            type = "list",
            member_type = "structure",
        },
        EnableECSManagedTags = {
            type = "boolean",
        },
        EnableExecuteCommand = {
            type = "boolean",
        },
        PlacementConstraints = {
            type = "list",
            member_type = "structure",
        },
        PlacementStrategy = {
            type = "list",
            member_type = "structure",
        },
        PropagateTags = {
            type = "string",
        },
        ReferenceId = {
            type = "string",
        },
        Overrides = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PipeTargetEventBridgeEventBusParameters = {
    type = "structure",
    members = {
        EndpointId = {
            type = "string",
        },
        DetailType = {
            type = "string",
        },
        Source = {
            type = "string",
        },
        Resources = {
            type = "list",
            member_type = "string",
        },
        Time = {
            type = "string",
        },
    },
}

M.PipeTargetHttpParameters = {
    type = "structure",
    members = {
        PathParameterValues = {
            type = "list",
            member_type = "string",
        },
        HeaderParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        QueryStringParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.PipeTargetKinesisStreamParameters = {
    type = "structure",
    members = {
        PartitionKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PipeTargetInvocationType = {
    REQUEST_RESPONSE = "REQUEST_RESPONSE",
    FIRE_AND_FORGET = "FIRE_AND_FORGET",
}

M.PipeTargetLambdaFunctionParameters = {
    type = "structure",
    members = {
        InvocationType = {
            type = "string",
        },
    },
}

M.PipeTargetRedshiftDataParameters = {
    type = "structure",
    members = {
        SecretManagerArn = {
            type = "string",
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DbUser = {
            type = "string",
        },
        StatementName = {
            type = "string",
        },
        WithEvent = {
            type = "boolean",
        },
        Sqls = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SageMakerPipelineParameter = {
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

M.PipeTargetSageMakerPipelineParameters = {
    type = "structure",
    members = {
        PipelineParameterList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PipeTargetSqsQueueParameters = {
    type = "structure",
    members = {
        MessageGroupId = {
            type = "string",
        },
        MessageDeduplicationId = {
            type = "string",
        },
    },
}

M.PipeTargetStateMachineParameters = {
    type = "structure",
    members = {
        InvocationType = {
            type = "string",
        },
    },
}

M.DimensionValueType = {
    VARCHAR = "VARCHAR",
}

M.DimensionMapping = {
    type = "structure",
    members = {
        DimensionValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DimensionValueType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DimensionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EpochTimeUnit = {
    MILLISECONDS = "MILLISECONDS",
    SECONDS = "SECONDS",
    MICROSECONDS = "MICROSECONDS",
    NANOSECONDS = "NANOSECONDS",
}

M.MeasureValueType = {
    DOUBLE = "DOUBLE",
    BIGINT = "BIGINT",
    VARCHAR = "VARCHAR",
    BOOLEAN = "BOOLEAN",
    TIMESTAMP = "TIMESTAMP",
}

M.MultiMeasureAttributeMapping = {
    type = "structure",
    members = {
        MeasureValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MeasureValueType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MultiMeasureAttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MultiMeasureMapping = {
    type = "structure",
    members = {
        MultiMeasureName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MultiMeasureAttributeMappings = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SingleMeasureMapping = {
    type = "structure",
    members = {
        MeasureValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MeasureValueType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MeasureName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TimeFieldType = {
    EPOCH = "EPOCH",
    TIMESTAMP_FORMAT = "TIMESTAMP_FORMAT",
}

M.PipeTargetTimestreamParameters = {
    type = "structure",
    members = {
        TimeValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EpochTimeUnit = {
            type = "string",
        },
        TimeFieldType = {
            type = "string",
        },
        TimestampFormat = {
            type = "string",
        },
        VersionValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DimensionMappings = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        SingleMeasureMappings = {
            type = "list",
            member_type = "structure",
        },
        MultiMeasureMappings = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PipeTargetParameters = {
    type = "structure",
    members = {
        InputTemplate = {
            type = "string",
        },
        LambdaFunctionParameters = {
            type = "structure",
        },
        StepFunctionStateMachineParameters = {
            type = "structure",
        },
        KinesisStreamParameters = {
            type = "structure",
        },
        EcsTaskParameters = {
            type = "structure",
        },
        BatchJobParameters = {
            type = "structure",
        },
        SqsQueueParameters = {
            type = "structure",
        },
        HttpParameters = {
            type = "structure",
        },
        RedshiftDataParameters = {
            type = "structure",
        },
        SageMakerPipelineParameters = {
            type = "structure",
        },
        EventBridgeEventBusParameters = {
            type = "structure",
        },
        CloudWatchLogsParameters = {
            type = "structure",
        },
        TimestreamParameters = {
            type = "structure",
        },
    },
}

M.CreatePipeInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        DesiredState = {
            type = "string",
        },
        Source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceParameters = {
            type = "structure",
        },
        Enrichment = {
            type = "string",
        },
        EnrichmentParameters = {
            type = "structure",
        },
        Target = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetParameters = {
            type = "structure",
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        LogConfiguration = {
            type = "structure",
        },
        KmsKeyIdentifier = {
            type = "string",
        },
    },
}

M.PipeState = {
    RUNNING = "RUNNING",
    STOPPED = "STOPPED",
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    STARTING = "STARTING",
    STOPPING = "STOPPING",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
    START_FAILED = "START_FAILED",
    STOP_FAILED = "STOP_FAILED",
    DELETE_FAILED = "DELETE_FAILED",
    CREATE_ROLLBACK_FAILED = "CREATE_ROLLBACK_FAILED",
    DELETE_ROLLBACK_FAILED = "DELETE_ROLLBACK_FAILED",
    UPDATE_ROLLBACK_FAILED = "UPDATE_ROLLBACK_FAILED",
}

M.CreatePipeOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        DesiredState = {
            type = "string",
        },
        CurrentState = {
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

M.InternalException = {
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

M.NotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
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
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        quotaCode = {
            type = "string",
            traits = {
                required = true,
            },
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
            type = "number",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        fieldList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DeletePipeInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RequestedPipeStateDescribeResponse = {
    RUNNING = "RUNNING",
    STOPPED = "STOPPED",
    DELETED = "DELETED",
}

M.DeletePipeOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        DesiredState = {
            type = "string",
        },
        CurrentState = {
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

M.DescribePipeInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.FirehoseLogDestination = {
    type = "structure",
    members = {
        DeliveryStreamArn = {
            type = "string",
        },
    },
}

M.S3LogDestination = {
    type = "structure",
    members = {
        BucketName = {
            type = "string",
        },
        Prefix = {
            type = "string",
        },
        BucketOwner = {
            type = "string",
        },
        OutputFormat = {
            type = "string",
        },
    },
}

M.PipeLogConfiguration = {
    type = "structure",
    members = {
        S3LogDestination = {
            type = "structure",
        },
        FirehoseLogDestination = {
            type = "structure",
        },
        CloudwatchLogsLogDestination = {
            type = "structure",
        },
        Level = {
            type = "string",
        },
        IncludeExecutionData = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribePipeOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DesiredState = {
            type = "string",
        },
        CurrentState = {
            type = "string",
        },
        StateReason = {
            type = "string",
        },
        Source = {
            type = "string",
        },
        SourceParameters = {
            type = "structure",
        },
        Enrichment = {
            type = "string",
        },
        EnrichmentParameters = {
            type = "structure",
        },
        Target = {
            type = "string",
        },
        TargetParameters = {
            type = "structure",
        },
        RoleArn = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LogConfiguration = {
            type = "structure",
        },
        KmsKeyIdentifier = {
            type = "string",
        },
    },
}

M.ListPipesInput = {
    type = "structure",
    members = {
        NamePrefix = {
            type = "string",
            traits = {
                http_query = "NamePrefix",
            },
        },
        DesiredState = {
            type = "string",
            traits = {
                http_query = "DesiredState",
            },
        },
        CurrentState = {
            type = "string",
            traits = {
                http_query = "CurrentState",
            },
        },
        SourcePrefix = {
            type = "string",
            traits = {
                http_query = "SourcePrefix",
            },
        },
        TargetPrefix = {
            type = "string",
            traits = {
                http_query = "TargetPrefix",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        Limit = {
            type = "number",
            traits = {
                http_query = "Limit",
            },
        },
    },
}

M.Pipe = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        DesiredState = {
            type = "string",
        },
        CurrentState = {
            type = "string",
        },
        StateReason = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        Source = {
            type = "string",
        },
        Target = {
            type = "string",
        },
        Enrichment = {
            type = "string",
        },
    },
}

M.ListPipesOutput = {
    type = "structure",
    members = {
        Pipes = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
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

M.StartPipeInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StartPipeOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        DesiredState = {
            type = "string",
        },
        CurrentState = {
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

M.StopPipeInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopPipeOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        DesiredState = {
            type = "string",
        },
        CurrentState = {
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

M.UpdatePipeSourceActiveMQBrokerParameters = {
    type = "structure",
    members = {
        Credentials = {
            type = "union",
            traits = {
                required = true,
            },
        },
        BatchSize = {
            type = "number",
        },
        MaximumBatchingWindowInSeconds = {
            type = "number",
        },
    },
}

M.UpdatePipeSourceDynamoDBStreamParameters = {
    type = "structure",
    members = {
        BatchSize = {
            type = "number",
        },
        DeadLetterConfig = {
            type = "structure",
        },
        OnPartialBatchItemFailure = {
            type = "string",
        },
        MaximumBatchingWindowInSeconds = {
            type = "number",
        },
        MaximumRecordAgeInSeconds = {
            type = "number",
        },
        MaximumRetryAttempts = {
            type = "number",
        },
        ParallelizationFactor = {
            type = "number",
        },
    },
}

M.UpdatePipeSourceKinesisStreamParameters = {
    type = "structure",
    members = {
        BatchSize = {
            type = "number",
        },
        DeadLetterConfig = {
            type = "structure",
        },
        OnPartialBatchItemFailure = {
            type = "string",
        },
        MaximumBatchingWindowInSeconds = {
            type = "number",
        },
        MaximumRecordAgeInSeconds = {
            type = "number",
        },
        MaximumRetryAttempts = {
            type = "number",
        },
        ParallelizationFactor = {
            type = "number",
        },
    },
}

M.UpdatePipeSourceManagedStreamingKafkaParameters = {
    type = "structure",
    members = {
        BatchSize = {
            type = "number",
        },
        Credentials = {
            type = "union",
        },
        MaximumBatchingWindowInSeconds = {
            type = "number",
        },
    },
}

M.UpdatePipeSourceRabbitMQBrokerParameters = {
    type = "structure",
    members = {
        Credentials = {
            type = "union",
            traits = {
                required = true,
            },
        },
        BatchSize = {
            type = "number",
        },
        MaximumBatchingWindowInSeconds = {
            type = "number",
        },
    },
}

M.UpdatePipeSourceSelfManagedKafkaParameters = {
    type = "structure",
    members = {
        BatchSize = {
            type = "number",
        },
        MaximumBatchingWindowInSeconds = {
            type = "number",
        },
        Credentials = {
            type = "union",
        },
        ServerRootCaCertificate = {
            type = "string",
        },
        Vpc = {
            type = "structure",
        },
    },
}

M.UpdatePipeSourceSqsQueueParameters = {
    type = "structure",
    members = {
        BatchSize = {
            type = "number",
        },
        MaximumBatchingWindowInSeconds = {
            type = "number",
        },
    },
}

M.UpdatePipeSourceParameters = {
    type = "structure",
    members = {
        FilterCriteria = {
            type = "structure",
        },
        KinesisStreamParameters = {
            type = "structure",
        },
        DynamoDBStreamParameters = {
            type = "structure",
        },
        SqsQueueParameters = {
            type = "structure",
        },
        ActiveMQBrokerParameters = {
            type = "structure",
        },
        RabbitMQBrokerParameters = {
            type = "structure",
        },
        ManagedStreamingKafkaParameters = {
            type = "structure",
        },
        SelfManagedKafkaParameters = {
            type = "structure",
        },
    },
}

M.UpdatePipeInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        DesiredState = {
            type = "string",
        },
        SourceParameters = {
            type = "structure",
        },
        Enrichment = {
            type = "string",
        },
        EnrichmentParameters = {
            type = "structure",
        },
        Target = {
            type = "string",
        },
        TargetParameters = {
            type = "structure",
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogConfiguration = {
            type = "structure",
        },
        KmsKeyIdentifier = {
            type = "string",
        },
    },
}

M.UpdatePipeOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        DesiredState = {
            type = "string",
        },
        CurrentState = {
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
