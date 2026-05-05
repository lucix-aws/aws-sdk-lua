local M = {}

M.MetricStatistic = {
    Average = "Average",
    Minimum = "Minimum",
    Maximum = "Maximum",
    SampleCount = "SampleCount",
    Sum = "Sum",
}

M.LoadMetricType = {
    ASGTotalCPUUtilization = "ASGTotalCPUUtilization",
    ASGTotalNetworkIn = "ASGTotalNetworkIn",
    ASGTotalNetworkOut = "ASGTotalNetworkOut",
    ALBTargetGroupRequestCount = "ALBTargetGroupRequestCount",
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

M.PolicyType = {
    TargetTrackingScaling = "TargetTrackingScaling",
}

M.ScalingStatusCode = {
    Inactive = "Inactive",
    PartiallyActive = "PartiallyActive",
    Active = "Active",
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

M.ForecastDataType = {
    CapacityForecast = "CapacityForecast",
    LoadForecast = "LoadForecast",
    ScheduledActionMinCapacity = "ScheduledActionMinCapacity",
    ScheduledActionMaxCapacity = "ScheduledActionMaxCapacity",
}

return M
