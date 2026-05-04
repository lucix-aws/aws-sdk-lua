local M = {}

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

M.TagFilter = {
    type = "structure",
    id = "TagFilter",
    members = {
        Key = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ApplicationSource = {
    type = "structure",
    id = "ApplicationSource",
    members = {
        CloudFormationStackARN = {
            type = "string",
        },
        TagFilters = {
            type = "list",
            member = M.TagFilter,
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

M.MetricStatistic = {
    Average = "Average",
    Minimum = "Minimum",
    Maximum = "Maximum",
    SampleCount = "SampleCount",
    Sum = "Sum",
}

M.CustomizedLoadMetricSpecification = {
    type = "structure",
    id = "CustomizedLoadMetricSpecification",
    members = {
        MetricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Dimensions = {
            type = "list",
            member = M.MetricDimension,
        },
        Statistic = {
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

M.LoadMetricType = {
    ASGTotalCPUUtilization = "ASGTotalCPUUtilization",
    ASGTotalNetworkIn = "ASGTotalNetworkIn",
    ASGTotalNetworkOut = "ASGTotalNetworkOut",
    ALBTargetGroupRequestCount = "ALBTargetGroupRequestCount",
}

M.PredefinedLoadMetricSpecification = {
    type = "structure",
    id = "PredefinedLoadMetricSpecification",
    members = {
        PredefinedLoadMetricType = {
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

M.PredictiveScalingMaxCapacityBehavior = {
    SetForecastCapacityToMaxCapacity = "SetForecastCapacityToMaxCapacity",
    SetMaxCapacityToForecastCapacity = "SetMaxCapacityToForecastCapacity",
    SetMaxCapacityAboveForecastCapacity = "SetMaxCapacityAboveForecastCapacity",
}

M.PredictiveScalingMode = {
    ForecastAndScale = "ForecastAndScale",
    ForecastOnly = "ForecastOnly",
}

M.ScalableDimension = {
    AutoScalingGroupDesiredCapacity = "autoscaling:autoScalingGroup:DesiredCapacity",
    ECSServiceDesiredCount = "ecs:service:DesiredCount",
    EC2SpotFleetRequestTargetCapacity = "ec2:spot-fleet-request:TargetCapacity",
    RDSClusterReadReplicaCount = "rds:cluster:ReadReplicaCount",
    DynamoDBTableReadCapacityUnits = "dynamodb:table:ReadCapacityUnits",
    DynamoDBTableWriteCapacityUnits = "dynamodb:table:WriteCapacityUnits",
    DynamoDBIndexReadCapacityUnits = "dynamodb:index:ReadCapacityUnits",
    DynamoDBIndexWriteCapacityUnits = "dynamodb:index:WriteCapacityUnits",
}

M.ScalingPolicyUpdateBehavior = {
    KeepExternalPolicies = "KeepExternalPolicies",
    ReplaceExternalPolicies = "ReplaceExternalPolicies",
}

M.ServiceNamespace = {
    AUTOSCALING = "autoscaling",
    ECS = "ecs",
    EC2 = "ec2",
    RDS = "rds",
    DYNAMODB = "dynamodb",
}

M.CustomizedScalingMetricSpecification = {
    type = "structure",
    id = "CustomizedScalingMetricSpecification",
    members = {
        MetricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Dimensions = {
            type = "list",
            member = M.MetricDimension,
        },
        Statistic = {
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

M.ScalingMetricType = {
    ASGAverageCPUUtilization = "ASGAverageCPUUtilization",
    ASGAverageNetworkIn = "ASGAverageNetworkIn",
    ASGAverageNetworkOut = "ASGAverageNetworkOut",
    DynamoDBReadCapacityUtilization = "DynamoDBReadCapacityUtilization",
    DynamoDBWriteCapacityUtilization = "DynamoDBWriteCapacityUtilization",
    ECSServiceAverageCPUUtilization = "ECSServiceAverageCPUUtilization",
    ECSServiceAverageMemoryUtilization = "ECSServiceAverageMemoryUtilization",
    ALBRequestCountPerTarget = "ALBRequestCountPerTarget",
    RDSReaderAverageCPUUtilization = "RDSReaderAverageCPUUtilization",
    RDSReaderAverageDatabaseConnections = "RDSReaderAverageDatabaseConnections",
    EC2SpotFleetRequestAverageCPUUtilization = "EC2SpotFleetRequestAverageCPUUtilization",
    EC2SpotFleetRequestAverageNetworkIn = "EC2SpotFleetRequestAverageNetworkIn",
    EC2SpotFleetRequestAverageNetworkOut = "EC2SpotFleetRequestAverageNetworkOut",
}

M.PredefinedScalingMetricSpecification = {
    type = "structure",
    id = "PredefinedScalingMetricSpecification",
    members = {
        PredefinedScalingMetricType = {
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
        PredefinedScalingMetricSpecification = M.PredefinedScalingMetricSpecification,
        CustomizedScalingMetricSpecification = M.CustomizedScalingMetricSpecification,
        TargetValue = {
            type = "double",
            traits = {
                required = true,
            },
        },
        DisableScaleIn = {
            type = "boolean",
        },
        ScaleOutCooldown = {
            type = "integer",
        },
        ScaleInCooldown = {
            type = "integer",
        },
        EstimatedInstanceWarmup = {
            type = "integer",
        },
    },
}

M.ScalingInstruction = {
    type = "structure",
    id = "ScalingInstruction",
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
        TargetTrackingConfigurations = {
            type = "list",
            member = M.TargetTrackingConfiguration,
            traits = {
                required = true,
            },
        },
        PredefinedLoadMetricSpecification = M.PredefinedLoadMetricSpecification,
        CustomizedLoadMetricSpecification = M.CustomizedLoadMetricSpecification,
        ScheduledActionBufferTime = {
            type = "integer",
        },
        PredictiveScalingMaxCapacityBehavior = {
            type = "string",
        },
        PredictiveScalingMaxCapacityBuffer = {
            type = "integer",
        },
        PredictiveScalingMode = {
            type = "string",
        },
        ScalingPolicyUpdateBehavior = {
            type = "string",
        },
        DisableDynamicScaling = {
            type = "boolean",
        },
    },
}

M.CreateScalingPlanInput = {
    type = "structure",
    id = "CreateScalingPlanInput",
    members = {
        ScalingPlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ApplicationSource }),
        ScalingInstructions = {
            type = "list",
            member = M.ScalingInstruction,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateScalingPlanOutput = {
    type = "structure",
    id = "CreateScalingPlanOutput",
    members = {
        ScalingPlanVersion = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
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

M.DeleteScalingPlanInput = {
    type = "structure",
    id = "DeleteScalingPlanInput",
    members = {
        ScalingPlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScalingPlanVersion = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteScalingPlanOutput = {
    type = "structure",
    id = "DeleteScalingPlanOutput",
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

M.DescribeScalingPlanResourcesInput = {
    type = "structure",
    id = "DescribeScalingPlanResourcesInput",
    members = {
        ScalingPlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScalingPlanVersion = {
            type = "long",
            traits = {
                required = true,
            },
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
    TargetTrackingScaling = "TargetTrackingScaling",
}

M.ScalingPolicy = {
    type = "structure",
    id = "ScalingPolicy",
    members = {
        PolicyName = {
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
        TargetTrackingConfiguration = M.TargetTrackingConfiguration,
    },
}

M.ScalingStatusCode = {
    Inactive = "Inactive",
    PartiallyActive = "PartiallyActive",
    Active = "Active",
}

M.ScalingPlanResource = {
    type = "structure",
    id = "ScalingPlanResource",
    members = {
        ScalingPlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScalingPlanVersion = {
            type = "long",
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
        ScalingPolicies = {
            type = "list",
            member = M.ScalingPolicy,
        },
        ScalingStatusCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScalingStatusMessage = {
            type = "string",
        },
    },
}

M.DescribeScalingPlanResourcesOutput = {
    type = "structure",
    id = "DescribeScalingPlanResourcesOutput",
    members = {
        ScalingPlanResources = {
            type = "list",
            member = M.ScalingPlanResource,
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

M.DescribeScalingPlansInput = {
    type = "structure",
    id = "DescribeScalingPlansInput",
    members = {
        ScalingPlanNames = {
            type = "list",
            member = { type = "string" },
        },
        ScalingPlanVersion = {
            type = "long",
        },
        ApplicationSources = {
            type = "list",
            member = M.ApplicationSource,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ScalingPlanStatusCode = {
    Active = "Active",
    ActiveWithProblems = "ActiveWithProblems",
    CreationInProgress = "CreationInProgress",
    CreationFailed = "CreationFailed",
    DeletionInProgress = "DeletionInProgress",
    DeletionFailed = "DeletionFailed",
    UpdateInProgress = "UpdateInProgress",
    UpdateFailed = "UpdateFailed",
}

M.ScalingPlan = {
    type = "structure",
    id = "ScalingPlan",
    members = {
        ScalingPlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScalingPlanVersion = {
            type = "long",
            traits = {
                required = true,
            },
        },
        ApplicationSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ApplicationSource }),
        ScalingInstructions = {
            type = "list",
            member = M.ScalingInstruction,
            traits = {
                required = true,
            },
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
        StatusStartTime = {
            type = "timestamp",
        },
        CreationTime = {
            type = "timestamp",
        },
    },
}

M.DescribeScalingPlansOutput = {
    type = "structure",
    id = "DescribeScalingPlansOutput",
    members = {
        ScalingPlans = {
            type = "list",
            member = M.ScalingPlan,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ForecastDataType = {
    CapacityForecast = "CapacityForecast",
    LoadForecast = "LoadForecast",
    ScheduledActionMinCapacity = "ScheduledActionMinCapacity",
    ScheduledActionMaxCapacity = "ScheduledActionMaxCapacity",
}

M.GetScalingPlanResourceForecastDataInput = {
    type = "structure",
    id = "GetScalingPlanResourceForecastDataInput",
    members = {
        ScalingPlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScalingPlanVersion = {
            type = "long",
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
        ForecastDataType = {
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

M.Datapoint = {
    type = "structure",
    id = "Datapoint",
    members = {
        Timestamp = {
            type = "timestamp",
        },
        Value = {
            type = "double",
        },
    },
}

M.GetScalingPlanResourceForecastDataOutput = {
    type = "structure",
    id = "GetScalingPlanResourceForecastDataOutput",
    members = {
        Datapoints = {
            type = "list",
            member = M.Datapoint,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateScalingPlanInput = {
    type = "structure",
    id = "UpdateScalingPlanInput",
    members = {
        ScalingPlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScalingPlanVersion = {
            type = "long",
            traits = {
                required = true,
            },
        },
        ApplicationSource = M.ApplicationSource,
        ScalingInstructions = {
            type = "list",
            member = M.ScalingInstruction,
        },
    },
}

M.UpdateScalingPlanOutput = {
    type = "structure",
    id = "UpdateScalingPlanOutput",
}

return M
