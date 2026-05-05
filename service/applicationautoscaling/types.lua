local M = {}

M.AdjustmentType = {
    ChangeInCapacity = "ChangeInCapacity",
    PercentChangeInCapacity = "PercentChangeInCapacity",
    ExactCapacity = "ExactCapacity",
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

M.ScalingActivityStatusCode = {
    Pending = "Pending",
    InProgress = "InProgress",
    Successful = "Successful",
    Overridden = "Overridden",
    Unfulfilled = "Unfulfilled",
    Failed = "Failed",
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

M.PredictiveScalingMode = {
    ForecastOnly = "ForecastOnly",
    ForecastAndScale = "ForecastAndScale",
}

M.MetricAggregationType = {
    Average = "Average",
    Minimum = "Minimum",
    Maximum = "Maximum",
}

M.MetricStatistic = {
    Average = "Average",
    Minimum = "Minimum",
    Maximum = "Maximum",
    SampleCount = "SampleCount",
    Sum = "Sum",
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

return M
