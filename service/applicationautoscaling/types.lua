local M = {}

M.AdjustmentType = {
    ChangeInCapacity = "ChangeInCapacity",
    PercentChangeInCapacity = "PercentChangeInCapacity",
    ExactCapacity = "ExactCapacity",
}

M.Alarm = {
    type = "structure",
    id = "Alarm",
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
    id = "ConcurrentUpdateException",
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
    id = "DeleteScalingPolicyInput",
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
    id = "DeleteScalingPolicyOutput",
}

M.InternalServiceException = {
    type = "structure",
    id = "InternalServiceException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ObjectNotFoundException = {
    type = "structure",
    id = "ObjectNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteScheduledActionInput = {
    type = "structure",
    id = "DeleteScheduledActionInput",
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
    id = "DeleteScheduledActionOutput",
}

M.DeregisterScalableTargetInput = {
    type = "structure",
    id = "DeregisterScalableTargetInput",
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
    id = "DeregisterScalableTargetOutput",
}

M.DescribeScalableTargetsInput = {
    type = "structure",
    id = "DescribeScalableTargetsInput",
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
    id = "SuspendedState",
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
    id = "ScalableTarget",
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
    id = "DescribeScalableTargetsOutput",
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
    id = "InvalidNextTokenException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeScalingActivitiesInput = {
    type = "structure",
    id = "DescribeScalingActivitiesInput",
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
    id = "NotScaledReason",
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
    id = "ScalingActivity",
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
    id = "DescribeScalingActivitiesOutput",
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
    id = "DescribeScalingPoliciesInput",
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
    id = "PredictiveScalingMetricDimension",
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
    id = "PredictiveScalingMetric",
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
    id = "PredictiveScalingMetricStat",
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
    id = "PredictiveScalingMetricDataQuery",
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
    id = "PredictiveScalingCustomizedMetricSpecification",
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
    id = "PredictiveScalingPredefinedLoadMetricSpecification",
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
    id = "PredictiveScalingPredefinedMetricPairSpecification",
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
    id = "PredictiveScalingPredefinedScalingMetricSpecification",
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
    id = "PredictiveScalingPolicyConfiguration",
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

M.StepScalingPolicyConfiguration = {
    type = "structure",
    id = "StepScalingPolicyConfiguration",
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

M.TargetTrackingMetricDimension = {
    type = "structure",
    id = "TargetTrackingMetricDimension",
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
    id = "TargetTrackingMetric",
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
    id = "TargetTrackingMetricStat",
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
    id = "TargetTrackingMetricDataQuery",
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

M.TargetTrackingScalingPolicyConfiguration = {
    type = "structure",
    id = "TargetTrackingScalingPolicyConfiguration",
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
    id = "ScalingPolicy",
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
    id = "DescribeScalingPoliciesOutput",
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
    id = "FailedResourceAccessException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeScheduledActionsInput = {
    type = "structure",
    id = "DescribeScheduledActionsInput",
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
    id = "ScalableTargetAction",
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
    id = "ScheduledAction",
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
    id = "DescribeScheduledActionsOutput",
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
    id = "GetPredictiveScalingForecastInput",
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
        },
        CapacityForecast = M.CapacityForecast,
        UpdateTime = {
            type = "timestamp",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
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
    id = "ResourceNotFoundException",
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
    id = "LimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PutScalingPolicyInput = {
    type = "structure",
    id = "PutScalingPolicyInput",
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
    id = "PutScalingPolicyOutput",
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
    id = "PutScheduledActionInput",
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
    id = "PutScheduledActionOutput",
}

M.RegisterScalableTargetInput = {
    type = "structure",
    id = "RegisterScalableTargetInput",
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
    id = "RegisterScalableTargetOutput",
    members = {
        ScalableTargetARN = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
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
    id = "TagResourceOutput",
}

M.TooManyTagsException = {
    type = "structure",
    id = "TooManyTagsException",
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
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

return M
