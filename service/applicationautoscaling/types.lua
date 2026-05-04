local M = {}

M.AdjustmentType = {
    ChangeInCapacity = "ChangeInCapacity",
    PercentChangeInCapacity = "PercentChangeInCapacity",
    ExactCapacity = "ExactCapacity",
}

M.Alarm = {
    type = "structure",
    members = {
        AlarmName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AlarmARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConcurrentUpdateException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ScalableDimension = {
    ECSServiceDesiredCount = "ecs:service:DesiredCount",
    EC2SpotFleetRequestTargetCapacity = "ec2:spot-fleet-request:TargetCapacity",
    EMRInstanceGroupInstanceCount = "elasticmapreduce:instancegroup:InstanceCount",
    AppstreamFleetDesiredCapacity = "appstream:fleet:DesiredCapacity",
    DynamoDBTableReadCapacityUnits = "dynamodb:table:ReadCapacityUnits",
    DynamoDBTableWriteCapacityUnits = "dynamodb:table:WriteCapacityUnits",
    DynamoDBIndexReadCapacityUnits = "dynamodb:index:ReadCapacityUnits",
    DynamoDBIndexWriteCapacityUnits = "dynamodb:index:WriteCapacityUnits",
    RDSClusterReadReplicaCount = "rds:cluster:ReadReplicaCount",
    SageMakerVariantDesiredInstanceCount = "sagemaker:variant:DesiredInstanceCount",
    CustomResourceScalableDimension = "custom-resource:ResourceType:Property",
    ComprehendDocClassifierEndpointInferenceUnits = "comprehend:document-classifier-endpoint:DesiredInferenceUnits",
    ComprehendEntityRecognizerEndpointInferenceUnits = "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits",
    LambdaFunctionProvisionedConcurrency = "lambda:function:ProvisionedConcurrency",
    CassandraTableReadCapacityUnits = "cassandra:table:ReadCapacityUnits",
    CassandraTableWriteCapacityUnits = "cassandra:table:WriteCapacityUnits",
    KafkaBrokerStorageVolumeSize = "kafka:broker-storage:VolumeSize",
    ElastiCacheCacheClusterNodes = "elasticache:cache-cluster:Nodes",
    ElastiCacheReplicationGroupNodeGroups = "elasticache:replication-group:NodeGroups",
    ElastiCacheReplicationGroupReplicas = "elasticache:replication-group:Replicas",
    NeptuneClusterReadReplicaCount = "neptune:cluster:ReadReplicaCount",
    SageMakerVariantDesiredProvisionedConcurrency = "sagemaker:variant:DesiredProvisionedConcurrency",
    SageMakerInferenceComponentDesiredCopyCount = "sagemaker:inference-component:DesiredCopyCount",
    WorkSpacesWorkSpacesPoolDesiredUserSessions = "workspaces:workspacespool:DesiredUserSessions",
}

M.ServiceNamespace = {
    ECS = "ecs",
    EMR = "elasticmapreduce",
    EC2 = "ec2",
    APPSTREAM = "appstream",
    DYNAMODB = "dynamodb",
    RDS = "rds",
    SAGEMAKER = "sagemaker",
    CUSTOM_RESOURCE = "custom-resource",
    COMPREHEND = "comprehend",
    LAMBDA = "lambda",
    CASSANDRA = "cassandra",
    KAFKA = "kafka",
    ELASTICACHE = "elasticache",
    NEPTUNE = "neptune",
    WORKSPACES = "workspaces",
}

M.DeleteScalingPolicyInput = {
    type = "structure",
    members = {
        PolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceNamespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScalableDimension = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteScalingPolicyOutput = {
    type = "structure",
}

M.InternalServiceException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ObjectNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteScheduledActionInput = {
    type = "structure",
    members = {
        ServiceNamespace = {
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
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScalableDimension = {
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

M.DeregisterScalableTargetInput = {
    type = "structure",
    members = {
        ServiceNamespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScalableDimension = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeregisterScalableTargetOutput = {
    type = "structure",
}

M.DescribeScalableTargetsInput = {
    type = "structure",
    members = {
        ServiceNamespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceIds = {
            type = "list",
            member = { type = "string" },
        },
        ScalableDimension = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SuspendedState = {
    type = "structure",
    members = {
        DynamicScalingInSuspended = {
            type = "boolean",
        },
        DynamicScalingOutSuspended = {
            type = "boolean",
        },
        ScheduledScalingSuspended = {
            type = "boolean",
        },
    },
}

M.ScalableTarget = {
    type = "structure",
    members = {
        ServiceNamespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScalableDimension = {
            type = "string",
            traits = {
                required = true,
            },
        },
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
        PredictedCapacity = {
            type = "integer",
        },
        RoleARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        SuspendedState = M.SuspendedState,
        ScalableTargetARN = {
            type = "string",
        },
    },
}

M.DescribeScalableTargetsOutput = {
    type = "structure",
    members = {
        ScalableTargets = {
            type = "list",
            member = M.ScalableTarget,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InvalidNextTokenException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeScalingActivitiesInput = {
    type = "structure",
    members = {
        ServiceNamespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
        },
        ScalableDimension = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        IncludeNotScaledActivities = {
            type = "boolean",
        },
    },
}

M.NotScaledReason = {
    type = "structure",
    members = {
        Code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxCapacity = {
            type = "integer",
        },
        MinCapacity = {
            type = "integer",
        },
        CurrentCapacity = {
            type = "integer",
        },
    },
}

M.ScalingActivityStatusCode = {
    Pending = "Pending",
    InProgress = "InProgress",
    Successful = "Successful",
    Overridden = "Overridden",
    Unfulfilled = "Unfulfilled",
    Failed = "Failed",
}

M.ScalingActivity = {
    type = "structure",
    members = {
        ActivityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceNamespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScalableDimension = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
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
        Details = {
            type = "string",
        },
        NotScaledReasons = {
            type = "list",
            member = M.NotScaledReason,
        },
    },
}

M.DescribeScalingActivitiesOutput = {
    type = "structure",
    members = {
        ScalingActivities = {
            type = "list",
            member = M.ScalingActivity,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeScalingPoliciesInput = {
    type = "structure",
    members = {
        PolicyNames = {
            type = "list",
            member = { type = "string" },
        },
        ServiceNamespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
        },
        ScalableDimension = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PolicyType = {
    StepScaling = "StepScaling",
    TargetTrackingScaling = "TargetTrackingScaling",
    PredictiveScaling = "PredictiveScaling",
}

M.PredictiveScalingMaxCapacityBreachBehavior = {
    HonorMaxCapacity = "HonorMaxCapacity",
    IncreaseMaxCapacity = "IncreaseMaxCapacity",
}

M.PredictiveScalingMetricDimension = {
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

M.PredictiveScalingMetric = {
    type = "structure",
    members = {
        Dimensions = {
            type = "list",
            member = M.PredictiveScalingMetricDimension,
        },
        MetricName = {
            type = "string",
        },
        Namespace = {
            type = "string",
        },
    },
}

M.PredictiveScalingMetricStat = {
    type = "structure",
    members = {
        Metric = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PredictiveScalingMetric }),
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

M.PredictiveScalingMetricDataQuery = {
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
        MetricStat = M.PredictiveScalingMetricStat,
        Label = {
            type = "string",
        },
        ReturnData = {
            type = "boolean",
        },
    },
}

M.PredictiveScalingCustomizedMetricSpecification = {
    type = "structure",
    members = {
        MetricDataQueries = {
            type = "list",
            member = M.PredictiveScalingMetricDataQuery,
            traits = {
                required = true,
            },
        },
    },
}

M.PredictiveScalingPredefinedLoadMetricSpecification = {
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

M.PredictiveScalingPredefinedMetricPairSpecification = {
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

M.PredictiveScalingPredefinedScalingMetricSpecification = {
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
        PredefinedMetricPairSpecification = M.PredictiveScalingPredefinedMetricPairSpecification,
        PredefinedScalingMetricSpecification = M.PredictiveScalingPredefinedScalingMetricSpecification,
        PredefinedLoadMetricSpecification = M.PredictiveScalingPredefinedLoadMetricSpecification,
        CustomizedScalingMetricSpecification = M.PredictiveScalingCustomizedMetricSpecification,
        CustomizedLoadMetricSpecification = M.PredictiveScalingCustomizedMetricSpecification,
        CustomizedCapacityMetricSpecification = M.PredictiveScalingCustomizedMetricSpecification,
    },
}

M.PredictiveScalingMode = {
    ForecastOnly = "ForecastOnly",
    ForecastAndScale = "ForecastAndScale",
}

M.PredictiveScalingPolicyConfiguration = {
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

M.MetricAggregationType = {
    Average = "Average",
    Minimum = "Minimum",
    Maximum = "Maximum",
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

M.StepScalingPolicyConfiguration = {
    type = "structure",
    members = {
        AdjustmentType = {
            type = "string",
        },
        StepAdjustments = {
            type = "list",
            member = M.StepAdjustment,
        },
        MinAdjustmentMagnitude = {
            type = "integer",
        },
        Cooldown = {
            type = "integer",
        },
        MetricAggregationType = {
            type = "string",
        },
    },
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

M.TargetTrackingMetricDimension = {
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

M.TargetTrackingMetric = {
    type = "structure",
    members = {
        Dimensions = {
            type = "list",
            member = M.TargetTrackingMetricDimension,
        },
        MetricName = {
            type = "string",
        },
        Namespace = {
            type = "string",
        },
    },
}

M.TargetTrackingMetricStat = {
    type = "structure",
    members = {
        Metric = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TargetTrackingMetric }),
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

M.TargetTrackingMetricDataQuery = {
    type = "structure",
    members = {
        Expression = {
            type = "string",
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Label = {
            type = "string",
        },
        MetricStat = M.TargetTrackingMetricStat,
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
        Metrics = {
            type = "list",
            member = M.TargetTrackingMetricDataQuery,
        },
    },
}

M.MetricType = {
    DynamoDBReadCapacityUtilization = "DynamoDBReadCapacityUtilization",
    DynamoDBWriteCapacityUtilization = "DynamoDBWriteCapacityUtilization",
    ALBRequestCountPerTarget = "ALBRequestCountPerTarget",
    RDSReaderAverageCPUUtilization = "RDSReaderAverageCPUUtilization",
    RDSReaderAverageDatabaseConnections = "RDSReaderAverageDatabaseConnections",
    EC2SpotFleetRequestAverageCPUUtilization = "EC2SpotFleetRequestAverageCPUUtilization",
    EC2SpotFleetRequestAverageNetworkIn = "EC2SpotFleetRequestAverageNetworkIn",
    EC2SpotFleetRequestAverageNetworkOut = "EC2SpotFleetRequestAverageNetworkOut",
    SageMakerVariantInvocationsPerInstance = "SageMakerVariantInvocationsPerInstance",
    ECSServiceAverageCPUUtilization = "ECSServiceAverageCPUUtilization",
    ECSServiceAverageMemoryUtilization = "ECSServiceAverageMemoryUtilization",
    AppStreamAverageCapacityUtilization = "AppStreamAverageCapacityUtilization",
    ComprehendInferenceUtilization = "ComprehendInferenceUtilization",
    LambdaProvisionedConcurrencyUtilization = "LambdaProvisionedConcurrencyUtilization",
    CassandraReadCapacityUtilization = "CassandraReadCapacityUtilization",
    CassandraWriteCapacityUtilization = "CassandraWriteCapacityUtilization",
    KafkaBrokerStorageUtilization = "KafkaBrokerStorageUtilization",
    ElastiCacheEngineCPUUtilization = "ElastiCacheEngineCPUUtilization",
    ElastiCacheDatabaseMemoryUsagePercentage = "ElastiCacheDatabaseMemoryUsagePercentage",
    ElastiCachePrimaryEngineCPUUtilization = "ElastiCachePrimaryEngineCPUUtilization",
    ElastiCacheReplicaEngineCPUUtilization = "ElastiCacheReplicaEngineCPUUtilization",
    ElastiCacheDatabaseMemoryUsageCountedForEvictPercentage = "ElastiCacheDatabaseMemoryUsageCountedForEvictPercentage",
    NeptuneReaderAverageCPUUtilization = "NeptuneReaderAverageCPUUtilization",
    SageMakerVariantProvisionedConcurrencyUtilization = "SageMakerVariantProvisionedConcurrencyUtilization",
    ElastiCacheDatabaseCapacityUsageCountedForEvictPercentage = "ElastiCacheDatabaseCapacityUsageCountedForEvictPercentage",
    SageMakerInferenceComponentInvocationsPerCopy = "SageMakerInferenceComponentInvocationsPerCopy",
    WorkSpacesAverageUserSessionsCapacityUtilization = "WorkSpacesAverageUserSessionsCapacityUtilization",
    SageMakerInferenceComponentConcurrentRequestsPerCopyHighResolution = "SageMakerInferenceComponentConcurrentRequestsPerCopyHighResolution",
    SageMakerVariantConcurrentRequestsPerModelHighResolution = "SageMakerVariantConcurrentRequestsPerModelHighResolution",
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

M.TargetTrackingScalingPolicyConfiguration = {
    type = "structure",
    members = {
        TargetValue = {
            type = "double",
            traits = {
                required = true,
            },
        },
        PredefinedMetricSpecification = M.PredefinedMetricSpecification,
        CustomizedMetricSpecification = M.CustomizedMetricSpecification,
        ScaleOutCooldown = {
            type = "integer",
        },
        ScaleInCooldown = {
            type = "integer",
        },
        DisableScaleIn = {
            type = "boolean",
        },
    },
}

M.ScalingPolicy = {
    type = "structure",
    members = {
        PolicyARN = {
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
        ServiceNamespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScalableDimension = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StepScalingPolicyConfiguration = M.StepScalingPolicyConfiguration,
        TargetTrackingScalingPolicyConfiguration = M.TargetTrackingScalingPolicyConfiguration,
        PredictiveScalingPolicyConfiguration = M.PredictiveScalingPolicyConfiguration,
        Alarms = {
            type = "list",
            member = M.Alarm,
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeScalingPoliciesOutput = {
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

M.FailedResourceAccessException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeScheduledActionsInput = {
    type = "structure",
    members = {
        ScheduledActionNames = {
            type = "list",
            member = { type = "string" },
        },
        ServiceNamespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
        },
        ScalableDimension = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ScalableTargetAction = {
    type = "structure",
    members = {
        MinCapacity = {
            type = "integer",
        },
        MaxCapacity = {
            type = "integer",
        },
    },
}

M.ScheduledAction = {
    type = "structure",
    members = {
        ScheduledActionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScheduledActionARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceNamespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Schedule = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Timezone = {
            type = "string",
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScalableDimension = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        ScalableTargetAction = M.ScalableTargetAction,
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeScheduledActionsOutput = {
    type = "structure",
    members = {
        ScheduledActions = {
            type = "list",
            member = M.ScheduledAction,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetPredictiveScalingForecastInput = {
    type = "structure",
    members = {
        ServiceNamespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScalableDimension = {
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
        },
        CapacityForecast = M.CapacityForecast,
        UpdateTime = {
            type = "timestamp",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
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
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ResourceName = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PutScalingPolicyInput = {
    type = "structure",
    members = {
        PolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceNamespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScalableDimension = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyType = {
            type = "string",
        },
        StepScalingPolicyConfiguration = M.StepScalingPolicyConfiguration,
        TargetTrackingScalingPolicyConfiguration = M.TargetTrackingScalingPolicyConfiguration,
        PredictiveScalingPolicyConfiguration = M.PredictiveScalingPolicyConfiguration,
    },
}

M.PutScalingPolicyOutput = {
    type = "structure",
    members = {
        PolicyARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Alarms = {
            type = "list",
            member = M.Alarm,
        },
    },
}

M.PutScheduledActionInput = {
    type = "structure",
    members = {
        ServiceNamespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Schedule = {
            type = "string",
        },
        Timezone = {
            type = "string",
        },
        ScheduledActionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScalableDimension = {
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
        ScalableTargetAction = M.ScalableTargetAction,
    },
}

M.PutScheduledActionOutput = {
    type = "structure",
}

M.RegisterScalableTargetInput = {
    type = "structure",
    members = {
        ServiceNamespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScalableDimension = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MinCapacity = {
            type = "integer",
        },
        MaxCapacity = {
            type = "integer",
        },
        RoleARN = {
            type = "string",
        },
        SuspendedState = M.SuspendedState,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.RegisterScalableTargetOutput = {
    type = "structure",
    members = {
        ScalableTargetARN = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
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
}

M.TooManyTagsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ResourceName = {
            type = "string",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
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

M.UntagResourceOutput = {
    type = "structure",
}

return M
