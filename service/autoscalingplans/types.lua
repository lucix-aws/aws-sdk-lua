local M = {}

M.ConcurrentUpdateException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TagFilter = {
    type = "structure",
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
    error = "server",
    members = {
        Message = {
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

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteScalingPlanInput = {
    type = "structure",
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

M.DescribeScalingPlanResourcesInput = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeScalingPlansInput = {
    type = "structure",
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
}

return M
