local M = {}

M.AssignPublicIp = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AwsVpcConfiguration = {
    type = "structure",
    id = "AwsVpcConfiguration",
    members = {
        Subnets = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
        AssignPublicIp = {
            type = "string",
        },
    },
}

M.BatchArrayProperties = {
    type = "structure",
    id = "BatchArrayProperties",
    members = {
        Size = {
            type = "integer",
        },
    },
}

M.BatchEnvironmentVariable = {
    type = "structure",
    id = "BatchEnvironmentVariable",
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
    id = "BatchResourceRequirement",
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
    id = "BatchContainerOverrides",
    members = {
        Command = {
            type = "list",
            member = { type = "string" },
        },
        Environment = {
            type = "list",
            member = M.BatchEnvironmentVariable,
        },
        InstanceType = {
            type = "string",
        },
        ResourceRequirements = {
            type = "list",
            member = M.BatchResourceRequirement,
        },
    },
}

M.BatchJobDependencyType = {
    N_TO_N = "N_TO_N",
    SEQUENTIAL = "SEQUENTIAL",
}

M.BatchJobDependency = {
    type = "structure",
    id = "BatchJobDependency",
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
    id = "BatchRetryStrategy",
    members = {
        Attempts = {
            type = "integer",
        },
    },
}

M.CapacityProviderStrategyItem = {
    type = "structure",
    id = "CapacityProviderStrategyItem",
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

M.CloudwatchLogsLogDestination = {
    type = "structure",
    id = "CloudwatchLogsLogDestination",
    members = {
        LogGroupArn = {
            type = "string",
        },
    },
}

M.CloudwatchLogsLogDestinationParameters = {
    type = "structure",
    id = "CloudwatchLogsLogDestinationParameters",
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
    id = "ConflictException",
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
    id = "PipeEnrichmentHttpParameters",
    members = {
        PathParameterValues = {
            type = "list",
            member = { type = "string" },
        },
        HeaderParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        QueryStringParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.PipeEnrichmentParameters = {
    type = "structure",
    id = "PipeEnrichmentParameters",
    members = {
        InputTemplate = {
            type = "string",
        },
        HttpParameters = M.PipeEnrichmentHttpParameters,
    },
}

M.FirehoseLogDestinationParameters = {
    type = "structure",
    id = "FirehoseLogDestinationParameters",
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
    id = "S3LogDestinationParameters",
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
    id = "PipeLogConfigurationParameters",
    members = {
        S3LogDestination = M.S3LogDestinationParameters,
        FirehoseLogDestination = M.FirehoseLogDestinationParameters,
        CloudwatchLogsLogDestination = M.CloudwatchLogsLogDestinationParameters,
        Level = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IncludeExecutionData = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.MQBrokerAccessCredentials = {
    type = "union",
    id = "MQBrokerAccessCredentials",
    members = {
        BasicAuth = {
            type = "string",
        },
    },
}

M.PipeSourceActiveMQBrokerParameters = {
    type = "structure",
    id = "PipeSourceActiveMQBrokerParameters",
    members = {
        Credentials = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MQBrokerAccessCredentials }),
        QueueName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BatchSize = {
            type = "integer",
        },
        MaximumBatchingWindowInSeconds = {
            type = "integer",
        },
    },
}

M.DeadLetterConfig = {
    type = "structure",
    id = "DeadLetterConfig",
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
    id = "PipeSourceDynamoDBStreamParameters",
    members = {
        BatchSize = {
            type = "integer",
        },
        DeadLetterConfig = M.DeadLetterConfig,
        OnPartialBatchItemFailure = {
            type = "string",
        },
        MaximumBatchingWindowInSeconds = {
            type = "integer",
        },
        MaximumRecordAgeInSeconds = {
            type = "integer",
        },
        MaximumRetryAttempts = {
            type = "integer",
        },
        ParallelizationFactor = {
            type = "integer",
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
    id = "Filter",
    members = {
        Pattern = {
            type = "string",
        },
    },
}

M.FilterCriteria = {
    type = "structure",
    id = "FilterCriteria",
    members = {
        Filters = {
            type = "list",
            member = M.Filter,
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
    id = "PipeSourceKinesisStreamParameters",
    members = {
        BatchSize = {
            type = "integer",
        },
        DeadLetterConfig = M.DeadLetterConfig,
        OnPartialBatchItemFailure = {
            type = "string",
        },
        MaximumBatchingWindowInSeconds = {
            type = "integer",
        },
        MaximumRecordAgeInSeconds = {
            type = "integer",
        },
        MaximumRetryAttempts = {
            type = "integer",
        },
        ParallelizationFactor = {
            type = "integer",
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
    id = "MSKAccessCredentials",
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
    id = "PipeSourceManagedStreamingKafkaParameters",
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
            type = "integer",
        },
        MaximumBatchingWindowInSeconds = {
            type = "integer",
        },
        ConsumerGroupID = {
            type = "string",
        },
        Credentials = M.MSKAccessCredentials,
    },
}

M.PipeSourceRabbitMQBrokerParameters = {
    type = "structure",
    id = "PipeSourceRabbitMQBrokerParameters",
    members = {
        Credentials = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MQBrokerAccessCredentials }),
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
            type = "integer",
        },
        MaximumBatchingWindowInSeconds = {
            type = "integer",
        },
    },
}

M.SelfManagedKafkaAccessConfigurationCredentials = {
    type = "union",
    id = "SelfManagedKafkaAccessConfigurationCredentials",
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
    id = "SelfManagedKafkaAccessConfigurationVpc",
    members = {
        Subnets = {
            type = "list",
            member = { type = "string" },
        },
        SecurityGroup = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.PipeSourceSelfManagedKafkaParameters = {
    type = "structure",
    id = "PipeSourceSelfManagedKafkaParameters",
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
            member = { type = "string" },
        },
        BatchSize = {
            type = "integer",
        },
        MaximumBatchingWindowInSeconds = {
            type = "integer",
        },
        ConsumerGroupID = {
            type = "string",
        },
        Credentials = M.SelfManagedKafkaAccessConfigurationCredentials,
        ServerRootCaCertificate = {
            type = "string",
        },
        Vpc = M.SelfManagedKafkaAccessConfigurationVpc,
    },
}

M.PipeSourceSqsQueueParameters = {
    type = "structure",
    id = "PipeSourceSqsQueueParameters",
    members = {
        BatchSize = {
            type = "integer",
        },
        MaximumBatchingWindowInSeconds = {
            type = "integer",
        },
    },
}

M.PipeSourceParameters = {
    type = "structure",
    id = "PipeSourceParameters",
    members = {
        FilterCriteria = M.FilterCriteria,
        KinesisStreamParameters = M.PipeSourceKinesisStreamParameters,
        DynamoDBStreamParameters = M.PipeSourceDynamoDBStreamParameters,
        SqsQueueParameters = M.PipeSourceSqsQueueParameters,
        ActiveMQBrokerParameters = M.PipeSourceActiveMQBrokerParameters,
        RabbitMQBrokerParameters = M.PipeSourceRabbitMQBrokerParameters,
        ManagedStreamingKafkaParameters = M.PipeSourceManagedStreamingKafkaParameters,
        SelfManagedKafkaParameters = M.PipeSourceSelfManagedKafkaParameters,
    },
}

M.PipeTargetBatchJobParameters = {
    type = "structure",
    id = "PipeTargetBatchJobParameters",
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
        ArrayProperties = M.BatchArrayProperties,
        RetryStrategy = M.BatchRetryStrategy,
        ContainerOverrides = M.BatchContainerOverrides,
        DependsOn = {
            type = "list",
            member = M.BatchJobDependency,
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.PipeTargetCloudWatchLogsParameters = {
    type = "structure",
    id = "PipeTargetCloudWatchLogsParameters",
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
    id = "NetworkConfiguration",
    members = {
        awsvpcConfiguration = M.AwsVpcConfiguration,
    },
}

M.EcsEnvironmentVariable = {
    type = "structure",
    id = "EcsEnvironmentVariable",
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
    id = "EcsEnvironmentFile",
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
    id = "EcsResourceRequirement",
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
    id = "EcsContainerOverride",
    members = {
        Command = {
            type = "list",
            member = { type = "string" },
        },
        Cpu = {
            type = "integer",
        },
        Environment = {
            type = "list",
            member = M.EcsEnvironmentVariable,
        },
        EnvironmentFiles = {
            type = "list",
            member = M.EcsEnvironmentFile,
        },
        Memory = {
            type = "integer",
        },
        MemoryReservation = {
            type = "integer",
        },
        Name = {
            type = "string",
        },
        ResourceRequirements = {
            type = "list",
            member = M.EcsResourceRequirement,
        },
    },
}

M.EcsEphemeralStorage = {
    type = "structure",
    id = "EcsEphemeralStorage",
    members = {
        sizeInGiB = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.EcsInferenceAcceleratorOverride = {
    type = "structure",
    id = "EcsInferenceAcceleratorOverride",
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
    id = "EcsTaskOverride",
    members = {
        ContainerOverrides = {
            type = "list",
            member = M.EcsContainerOverride,
        },
        Cpu = {
            type = "string",
        },
        EphemeralStorage = M.EcsEphemeralStorage,
        ExecutionRoleArn = {
            type = "string",
        },
        InferenceAcceleratorOverrides = {
            type = "list",
            member = M.EcsInferenceAcceleratorOverride,
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
    id = "PlacementConstraint",
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
    id = "PlacementStrategy",
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
    id = "Tag",
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
    id = "PipeTargetEcsTaskParameters",
    members = {
        TaskDefinitionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TaskCount = {
            type = "integer",
        },
        LaunchType = {
            type = "string",
        },
        NetworkConfiguration = M.NetworkConfiguration,
        PlatformVersion = {
            type = "string",
        },
        Group = {
            type = "string",
        },
        CapacityProviderStrategy = {
            type = "list",
            member = M.CapacityProviderStrategyItem,
        },
        EnableECSManagedTags = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        EnableExecuteCommand = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        PlacementConstraints = {
            type = "list",
            member = M.PlacementConstraint,
        },
        PlacementStrategy = {
            type = "list",
            member = M.PlacementStrategy,
        },
        PropagateTags = {
            type = "string",
        },
        ReferenceId = {
            type = "string",
        },
        Overrides = M.EcsTaskOverride,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PipeTargetEventBridgeEventBusParameters = {
    type = "structure",
    id = "PipeTargetEventBridgeEventBusParameters",
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
            member = { type = "string" },
        },
        Time = {
            type = "string",
        },
    },
}

M.PipeTargetHttpParameters = {
    type = "structure",
    id = "PipeTargetHttpParameters",
    members = {
        PathParameterValues = {
            type = "list",
            member = { type = "string" },
        },
        HeaderParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        QueryStringParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.PipeTargetKinesisStreamParameters = {
    type = "structure",
    id = "PipeTargetKinesisStreamParameters",
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
    id = "PipeTargetLambdaFunctionParameters",
    members = {
        InvocationType = {
            type = "string",
        },
    },
}

M.PipeTargetRedshiftDataParameters = {
    type = "structure",
    id = "PipeTargetRedshiftDataParameters",
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
            traits = {
                default = false,
            },
        },
        Sqls = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.SageMakerPipelineParameter = {
    type = "structure",
    id = "SageMakerPipelineParameter",
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
    id = "PipeTargetSageMakerPipelineParameters",
    members = {
        PipelineParameterList = {
            type = "list",
            member = M.SageMakerPipelineParameter,
        },
    },
}

M.PipeTargetSqsQueueParameters = {
    type = "structure",
    id = "PipeTargetSqsQueueParameters",
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
    id = "PipeTargetStateMachineParameters",
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
    id = "DimensionMapping",
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
    id = "MultiMeasureAttributeMapping",
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
    id = "MultiMeasureMapping",
    members = {
        MultiMeasureName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MultiMeasureAttributeMappings = {
            type = "list",
            member = M.MultiMeasureAttributeMapping,
            traits = {
                required = true,
            },
        },
    },
}

M.SingleMeasureMapping = {
    type = "structure",
    id = "SingleMeasureMapping",
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
    id = "PipeTargetTimestreamParameters",
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
            member = M.DimensionMapping,
            traits = {
                required = true,
            },
        },
        SingleMeasureMappings = {
            type = "list",
            member = M.SingleMeasureMapping,
        },
        MultiMeasureMappings = {
            type = "list",
            member = M.MultiMeasureMapping,
        },
    },
}

M.PipeTargetParameters = {
    type = "structure",
    id = "PipeTargetParameters",
    members = {
        InputTemplate = {
            type = "string",
        },
        LambdaFunctionParameters = M.PipeTargetLambdaFunctionParameters,
        StepFunctionStateMachineParameters = M.PipeTargetStateMachineParameters,
        KinesisStreamParameters = M.PipeTargetKinesisStreamParameters,
        EcsTaskParameters = M.PipeTargetEcsTaskParameters,
        BatchJobParameters = M.PipeTargetBatchJobParameters,
        SqsQueueParameters = M.PipeTargetSqsQueueParameters,
        HttpParameters = M.PipeTargetHttpParameters,
        RedshiftDataParameters = M.PipeTargetRedshiftDataParameters,
        SageMakerPipelineParameters = M.PipeTargetSageMakerPipelineParameters,
        EventBridgeEventBusParameters = M.PipeTargetEventBridgeEventBusParameters,
        CloudWatchLogsParameters = M.PipeTargetCloudWatchLogsParameters,
        TimestreamParameters = M.PipeTargetTimestreamParameters,
    },
}

M.CreatePipeInput = {
    type = "structure",
    id = "CreatePipeInput",
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
        SourceParameters = M.PipeSourceParameters,
        Enrichment = {
            type = "string",
        },
        EnrichmentParameters = M.PipeEnrichmentParameters,
        Target = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetParameters = M.PipeTargetParameters,
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        LogConfiguration = M.PipeLogConfigurationParameters,
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
    id = "CreatePipeOutput",
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
    id = "InternalException",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.NotFoundException = {
    type = "structure",
    id = "NotFoundException",
    error = "client",
    members = {
        message = {
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
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    id = "ValidationExceptionField",
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
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        fieldList = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.DeletePipeInput = {
    type = "structure",
    id = "DeletePipeInput",
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
    id = "DeletePipeOutput",
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
    id = "DescribePipeInput",
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
    id = "FirehoseLogDestination",
    members = {
        DeliveryStreamArn = {
            type = "string",
        },
    },
}

M.S3LogDestination = {
    type = "structure",
    id = "S3LogDestination",
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
    id = "PipeLogConfiguration",
    members = {
        S3LogDestination = M.S3LogDestination,
        FirehoseLogDestination = M.FirehoseLogDestination,
        CloudwatchLogsLogDestination = M.CloudwatchLogsLogDestination,
        Level = {
            type = "string",
        },
        IncludeExecutionData = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribePipeOutput = {
    type = "structure",
    id = "DescribePipeOutput",
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
        SourceParameters = M.PipeSourceParameters,
        Enrichment = {
            type = "string",
        },
        EnrichmentParameters = M.PipeEnrichmentParameters,
        Target = {
            type = "string",
        },
        TargetParameters = M.PipeTargetParameters,
        RoleArn = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LogConfiguration = M.PipeLogConfiguration,
        KmsKeyIdentifier = {
            type = "string",
        },
    },
}

M.ListPipesInput = {
    type = "structure",
    id = "ListPipesInput",
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
            type = "integer",
            traits = {
                http_query = "Limit",
            },
        },
    },
}

M.Pipe = {
    type = "structure",
    id = "Pipe",
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
    id = "ListPipesOutput",
    members = {
        Pipes = {
            type = "list",
            member = M.Pipe,
        },
        NextToken = {
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

M.StartPipeInput = {
    type = "structure",
    id = "StartPipeInput",
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
    id = "StartPipeOutput",
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
    id = "StopPipeInput",
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
    id = "StopPipeOutput",
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
    id = "UpdatePipeSourceActiveMQBrokerParameters",
    members = {
        Credentials = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MQBrokerAccessCredentials }),
        BatchSize = {
            type = "integer",
        },
        MaximumBatchingWindowInSeconds = {
            type = "integer",
        },
    },
}

M.UpdatePipeSourceDynamoDBStreamParameters = {
    type = "structure",
    id = "UpdatePipeSourceDynamoDBStreamParameters",
    members = {
        BatchSize = {
            type = "integer",
        },
        DeadLetterConfig = M.DeadLetterConfig,
        OnPartialBatchItemFailure = {
            type = "string",
        },
        MaximumBatchingWindowInSeconds = {
            type = "integer",
        },
        MaximumRecordAgeInSeconds = {
            type = "integer",
        },
        MaximumRetryAttempts = {
            type = "integer",
        },
        ParallelizationFactor = {
            type = "integer",
        },
    },
}

M.UpdatePipeSourceKinesisStreamParameters = {
    type = "structure",
    id = "UpdatePipeSourceKinesisStreamParameters",
    members = {
        BatchSize = {
            type = "integer",
        },
        DeadLetterConfig = M.DeadLetterConfig,
        OnPartialBatchItemFailure = {
            type = "string",
        },
        MaximumBatchingWindowInSeconds = {
            type = "integer",
        },
        MaximumRecordAgeInSeconds = {
            type = "integer",
        },
        MaximumRetryAttempts = {
            type = "integer",
        },
        ParallelizationFactor = {
            type = "integer",
        },
    },
}

M.UpdatePipeSourceManagedStreamingKafkaParameters = {
    type = "structure",
    id = "UpdatePipeSourceManagedStreamingKafkaParameters",
    members = {
        BatchSize = {
            type = "integer",
        },
        Credentials = M.MSKAccessCredentials,
        MaximumBatchingWindowInSeconds = {
            type = "integer",
        },
    },
}

M.UpdatePipeSourceRabbitMQBrokerParameters = {
    type = "structure",
    id = "UpdatePipeSourceRabbitMQBrokerParameters",
    members = {
        Credentials = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MQBrokerAccessCredentials }),
        BatchSize = {
            type = "integer",
        },
        MaximumBatchingWindowInSeconds = {
            type = "integer",
        },
    },
}

M.UpdatePipeSourceSelfManagedKafkaParameters = {
    type = "structure",
    id = "UpdatePipeSourceSelfManagedKafkaParameters",
    members = {
        BatchSize = {
            type = "integer",
        },
        MaximumBatchingWindowInSeconds = {
            type = "integer",
        },
        Credentials = M.SelfManagedKafkaAccessConfigurationCredentials,
        ServerRootCaCertificate = {
            type = "string",
        },
        Vpc = M.SelfManagedKafkaAccessConfigurationVpc,
    },
}

M.UpdatePipeSourceSqsQueueParameters = {
    type = "structure",
    id = "UpdatePipeSourceSqsQueueParameters",
    members = {
        BatchSize = {
            type = "integer",
        },
        MaximumBatchingWindowInSeconds = {
            type = "integer",
        },
    },
}

M.UpdatePipeSourceParameters = {
    type = "structure",
    id = "UpdatePipeSourceParameters",
    members = {
        FilterCriteria = M.FilterCriteria,
        KinesisStreamParameters = M.UpdatePipeSourceKinesisStreamParameters,
        DynamoDBStreamParameters = M.UpdatePipeSourceDynamoDBStreamParameters,
        SqsQueueParameters = M.UpdatePipeSourceSqsQueueParameters,
        ActiveMQBrokerParameters = M.UpdatePipeSourceActiveMQBrokerParameters,
        RabbitMQBrokerParameters = M.UpdatePipeSourceRabbitMQBrokerParameters,
        ManagedStreamingKafkaParameters = M.UpdatePipeSourceManagedStreamingKafkaParameters,
        SelfManagedKafkaParameters = M.UpdatePipeSourceSelfManagedKafkaParameters,
    },
}

M.UpdatePipeInput = {
    type = "structure",
    id = "UpdatePipeInput",
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
        SourceParameters = M.UpdatePipeSourceParameters,
        Enrichment = {
            type = "string",
        },
        EnrichmentParameters = M.PipeEnrichmentParameters,
        Target = {
            type = "string",
        },
        TargetParameters = M.PipeTargetParameters,
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogConfiguration = M.PipeLogConfigurationParameters,
        KmsKeyIdentifier = {
            type = "string",
        },
    },
}

M.UpdatePipeOutput = {
    type = "structure",
    id = "UpdatePipeOutput",
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
