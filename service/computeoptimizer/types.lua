local M = {}

M.Status = {
    ACTIVE = "Active",
    INACTIVE = "Inactive",
    PENDING = "Pending",
    FAILED = "Failed",
}

M.AllocationStrategy = {
    PRIORITIZED = "Prioritized",
    LOWEST_PRICE = "LowestPrice",
}

M.AsgType = {
    SINGLE_INSTANCE_TYPE = "SingleInstanceType",
    MIXED_INSTANCE_TYPE = "MixedInstanceTypes",
}

M.AutoScalingConfiguration = {
    TARGET_TRACKING_SCALING_CPU = "TargetTrackingScalingCpu",
    TARGET_TRACKING_SCALING_MEMORY = "TargetTrackingScalingMemory",
}

M.Currency = {
    USD = "USD",
    CNY = "CNY",
}

M.CurrentPerformanceRisk = {
    VERY_LOW = "VeryLow",
    LOW = "Low",
    MEDIUM = "Medium",
    HIGH = "High",
}

M.CpuVendorArchitecture = {
    AWS_ARM64 = "AWS_ARM64",
    CURRENT = "CURRENT",
}

M.EnhancedInfrastructureMetrics = {
    ACTIVE = "Active",
    INACTIVE = "Inactive",
}

M.ExternalMetricsSource = {
    DATADOG = "Datadog",
    DYNATRACE = "Dynatrace",
    NEWRELIC = "NewRelic",
    INSTANA = "Instana",
}

M.InferredWorkloadTypesPreference = {
    ACTIVE = "Active",
    INACTIVE = "Inactive",
}

M.LookBackPeriodPreference = {
    DAYS_14 = "DAYS_14",
    DAYS_32 = "DAYS_32",
    DAYS_93 = "DAYS_93",
}

M.PreferredResourceName = {
    EC2_INSTANCE_TYPES = "Ec2InstanceTypes",
}

M.InstanceSavingsEstimationModeSource = {
    PUBLIC_PRICING = "PublicPricing",
    COST_EXPLORER_RIGHTSIZING = "CostExplorerRightsizing",
    COST_OPTIMIZATION_HUB = "CostOptimizationHub",
}

M.CustomizableMetricName = {
    CPU_UTILIZATION = "CpuUtilization",
    MEMORY_UTILIZATION = "MemoryUtilization",
}

M.CustomizableMetricHeadroom = {
    PERCENT_30 = "PERCENT_30",
    PERCENT_20 = "PERCENT_20",
    PERCENT_10 = "PERCENT_10",
    PERCENT_0 = "PERCENT_0",
}

M.CustomizableMetricThreshold = {
    P90 = "P90",
    P95 = "P95",
    P99_5 = "P99_5",
}

M.Finding = {
    UNDER_PROVISIONED = "Underprovisioned",
    OVER_PROVISIONED = "Overprovisioned",
    OPTIMIZED = "Optimized",
    NOT_OPTIMIZED = "NotOptimized",
}

M.InferredWorkloadType = {
    AMAZON_EMR = "AmazonEmr",
    APACHE_CASSANDRA = "ApacheCassandra",
    APACHE_HADOOP = "ApacheHadoop",
    MEMCACHED = "Memcached",
    NGINX = "Nginx",
    POSTGRE_SQL = "PostgreSql",
    REDIS = "Redis",
    KAFKA = "Kafka",
    SQLSERVER = "SQLServer",
}

M.MigrationEffort = {
    VERY_LOW = "VeryLow",
    LOW = "Low",
    MEDIUM = "Medium",
    HIGH = "High",
}

M.MetricName = {
    CPU = "Cpu",
    MEMORY = "Memory",
    EBS_READ_OPS_PER_SECOND = "EBS_READ_OPS_PER_SECOND",
    EBS_WRITE_OPS_PER_SECOND = "EBS_WRITE_OPS_PER_SECOND",
    EBS_READ_BYTES_PER_SECOND = "EBS_READ_BYTES_PER_SECOND",
    EBS_WRITE_BYTES_PER_SECOND = "EBS_WRITE_BYTES_PER_SECOND",
    DISK_READ_OPS_PER_SECOND = "DISK_READ_OPS_PER_SECOND",
    DISK_WRITE_OPS_PER_SECOND = "DISK_WRITE_OPS_PER_SECOND",
    DISK_READ_BYTES_PER_SECOND = "DISK_READ_BYTES_PER_SECOND",
    DISK_WRITE_BYTES_PER_SECOND = "DISK_WRITE_BYTES_PER_SECOND",
    NETWORK_IN_BYTES_PER_SECOND = "NETWORK_IN_BYTES_PER_SECOND",
    NETWORK_OUT_BYTES_PER_SECOND = "NETWORK_OUT_BYTES_PER_SECOND",
    NETWORK_PACKETS_IN_PER_SECOND = "NETWORK_PACKETS_IN_PER_SECOND",
    NETWORK_PACKETS_OUT_PER_SECOND = "NETWORK_PACKETS_OUT_PER_SECOND",
    GPU_PERCENTAGE = "GPU_PERCENTAGE",
    GPU_MEMORY_PERCENTAGE = "GPU_MEMORY_PERCENTAGE",
}

M.MetricStatistic = {
    MAXIMUM = "Maximum",
    AVERAGE = "Average",
}

M.RecommendationPreferenceName = {
    ENHANCED_INFRASTRUCTURE_METRICS = "EnhancedInfrastructureMetrics",
    INFERRED_WORKLOAD_TYPES = "InferredWorkloadTypes",
    EXTERNAL_METRICS_PREFERENCE = "ExternalMetricsPreference",
    LOOKBACK_PERIOD_PREFERENCE = "LookBackPeriodPreference",
    PREFERRED_RESOURCES = "PreferredResources",
    UTILIZATION_PREFERENCES = "UtilizationPreferences",
}

M.ResourceType = {
    EC2_INSTANCE = "Ec2Instance",
    AUTO_SCALING_GROUP = "AutoScalingGroup",
    EBS_VOLUME = "EbsVolume",
    LAMBDA_FUNCTION = "LambdaFunction",
    NOT_APPLICABLE = "NotApplicable",
    ECS_SERVICE = "EcsService",
    LICENSE = "License",
    RDS_DB_INSTANCE = "RdsDBInstance",
    AURORA_DB_CLUSTER_STORAGE = "AuroraDBClusterStorage",
    IDLE = "Idle",
}

M.ScopeName = {
    ORGANIZATION = "Organization",
    ACCOUNT_ID = "AccountId",
    RESOURCE_ARN = "ResourceArn",
}

M.JobFilterName = {
    RESOURCE_TYPE = "ResourceType",
    JOB_STATUS = "JobStatus",
}

M.JobStatus = {
    QUEUED = "Queued",
    IN_PROGRESS = "InProgress",
    COMPLETE = "Complete",
    FAILED = "Failed",
}

M.ExportableAutoScalingGroupField = {
    ACCOUNT_ID = "AccountId",
    AUTO_SCALING_GROUP_ARN = "AutoScalingGroupArn",
    AUTO_SCALING_GROUP_NAME = "AutoScalingGroupName",
    FINDING = "Finding",
    UTILIZATION_METRICS_CPU_MAXIMUM = "UtilizationMetricsCpuMaximum",
    UTILIZATION_METRICS_MEMORY_MAXIMUM = "UtilizationMetricsMemoryMaximum",
    UTILIZATION_METRICS_EBS_READ_OPS_PER_SECOND_MAXIMUM = "UtilizationMetricsEbsReadOpsPerSecondMaximum",
    UTILIZATION_METRICS_EBS_WRITE_OPS_PER_SECOND_MAXIMUM = "UtilizationMetricsEbsWriteOpsPerSecondMaximum",
    UTILIZATION_METRICS_EBS_READ_BYTES_PER_SECOND_MAXIMUM = "UtilizationMetricsEbsReadBytesPerSecondMaximum",
    UTILIZATION_METRICS_EBS_WRITE_BYTES_PER_SECOND_MAXIMUM = "UtilizationMetricsEbsWriteBytesPerSecondMaximum",
    UTILIZATION_METRICS_DISK_READ_OPS_PER_SECOND_MAXIMUM = "UtilizationMetricsDiskReadOpsPerSecondMaximum",
    UTILIZATION_METRICS_DISK_WRITE_OPS_PER_SECOND_MAXIMUM = "UtilizationMetricsDiskWriteOpsPerSecondMaximum",
    UTILIZATION_METRICS_DISK_READ_BYTES_PER_SECOND_MAXIMUM = "UtilizationMetricsDiskReadBytesPerSecondMaximum",
    UTILIZATION_METRICS_DISK_WRITE_BYTES_PER_SECOND_MAXIMUM = "UtilizationMetricsDiskWriteBytesPerSecondMaximum",
    UTILIZATION_METRICS_NETWORK_IN_BYTES_PER_SECOND_MAXIMUM = "UtilizationMetricsNetworkInBytesPerSecondMaximum",
    UTILIZATION_METRICS_NETWORK_OUT_BYTES_PER_SECOND_MAXIMUM = "UtilizationMetricsNetworkOutBytesPerSecondMaximum",
    UTILIZATION_METRICS_NETWORK_PACKETS_IN_PER_SECOND_MAXIMUM = "UtilizationMetricsNetworkPacketsInPerSecondMaximum",
    UTILIZATION_METRICS_NETWORK_PACKETS_OUT_PER_SECOND_MAXIMUM = "UtilizationMetricsNetworkPacketsOutPerSecondMaximum",
    LOOKBACK_PERIOD_IN_DAYS = "LookbackPeriodInDays",
    CURRENT_CONFIGURATION_INSTANCE_TYPE = "CurrentConfigurationInstanceType",
    CURRENT_CONFIGURATION_DESIRED_CAPACITY = "CurrentConfigurationDesiredCapacity",
    CURRENT_CONFIGURATION_MIN_SIZE = "CurrentConfigurationMinSize",
    CURRENT_CONFIGURATION_MAX_SIZE = "CurrentConfigurationMaxSize",
    CURRENT_CONFIGURATION_ALLOCATION_STRATEGY = "CurrentConfigurationAllocationStrategy",
    CURRENT_CONFIGURATION_MIXED_INSTANCE_TYPES = "CurrentConfigurationMixedInstanceTypes",
    CURRENT_CONFIGURATION_TYPE = "CurrentConfigurationType",
    CURRENT_ON_DEMAND_PRICE = "CurrentOnDemandPrice",
    CURRENT_STANDARD_ONE_YEAR_NO_UPFRONT_RESERVED_PRICE = "CurrentStandardOneYearNoUpfrontReservedPrice",
    CURRENT_STANDARD_THREE_YEAR_NO_UPFRONT_RESERVED_PRICE = "CurrentStandardThreeYearNoUpfrontReservedPrice",
    CURRENT_VCPUS = "CurrentVCpus",
    CURRENT_MEMORY = "CurrentMemory",
    CURRENT_STORAGE = "CurrentStorage",
    CURRENT_NETWORK = "CurrentNetwork",
    RECOMMENDATION_OPTIONS_CONFIGURATION_INSTANCE_TYPE = "RecommendationOptionsConfigurationInstanceType",
    RECOMMENDATION_OPTIONS_CONFIGURATION_DESIRED_CAPACITY = "RecommendationOptionsConfigurationDesiredCapacity",
    RECOMMENDATION_OPTIONS_CONFIGURATION_MIN_SIZE = "RecommendationOptionsConfigurationMinSize",
    RECOMMENDATION_OPTIONS_CONFIGURATION_MAX_SIZE = "RecommendationOptionsConfigurationMaxSize",
    RECOMMENDATION_OPTIONS_CONFIGURATION_ESTIMATED_INSTANCE_HOUR_REDUCTION_PERCENTAGE = "RecommendationOptionsConfigurationEstimatedInstanceHourReductionPercentage",
    RECOMMENDATION_OPTIONS_CONFIGURATION_ALLOCATION_STRATEGY = "RecommendationOptionsConfigurationAllocationStrategy",
    RECOMMENDATION_OPTIONS_CONFIGURATION_MIXED_INSTANCE_TYPES = "RecommendationOptionsConfigurationMixedInstanceTypes",
    RECOMMENDATION_OPTIONS_CONFIGURATION_TYPE = "RecommendationOptionsConfigurationType",
    RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_CPU_MAXIMUM = "RecommendationOptionsProjectedUtilizationMetricsCpuMaximum",
    RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_MEMORY_MAXIMUM = "RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum",
    RECOMMENDATION_OPTIONS_PERFORMANCE_RISK = "RecommendationOptionsPerformanceRisk",
    RECOMMENDATION_OPTIONS_ON_DEMAND_PRICE = "RecommendationOptionsOnDemandPrice",
    RECOMMENDATION_OPTIONS_STANDARD_ONE_YEAR_NO_UPFRONT_RESERVED_PRICE = "RecommendationOptionsStandardOneYearNoUpfrontReservedPrice",
    RECOMMENDATION_OPTIONS_STANDARD_THREE_YEAR_NO_UPFRONT_RESERVED_PRICE = "RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice",
    RECOMMENDATION_OPTIONS_VCPUS = "RecommendationOptionsVcpus",
    RECOMMENDATION_OPTIONS_MEMORY = "RecommendationOptionsMemory",
    RECOMMENDATION_OPTIONS_STORAGE = "RecommendationOptionsStorage",
    RECOMMENDATION_OPTIONS_NETWORK = "RecommendationOptionsNetwork",
    LAST_REFRESH_TIMESTAMP = "LastRefreshTimestamp",
    CURRENT_PERFORMANCE_RISK = "CurrentPerformanceRisk",
    RECOMMENDATION_OPTIONS_SAVINGS_OPPORTUNITY_PERCENTAGE = "RecommendationOptionsSavingsOpportunityPercentage",
    RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_CURRENCY = "RecommendationOptionsEstimatedMonthlySavingsCurrency",
    RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_VALUE = "RecommendationOptionsEstimatedMonthlySavingsValue",
    EFFECTIVE_RECOMMENDATION_PREFERENCES_CPU_VENDOR_ARCHITECTURES = "EffectiveRecommendationPreferencesCpuVendorArchitectures",
    EFFECTIVE_RECOMMENDATION_PREFERENCES_ENHANCED_INFRASTRUCTURE_METRICS = "EffectiveRecommendationPreferencesEnhancedInfrastructureMetrics",
    EFFECTIVE_RECOMMENDATION_PREFERENCES_INFERRED_WORKLOAD_TYPES = "EffectiveRecommendationPreferencesInferredWorkloadTypes",
    EFFECTIVE_RECOMMENDATION_PREFERENCES_PREFERRED_RESOURCES = "EffectiveRecommendationPreferencesPreferredResources",
    EFFECTIVE_RECOMMENDATION_PREFERENCES_LOOKBACK_PERIOD = "EffectiveRecommendationPreferencesLookBackPeriod",
    INFERRED_WORKLOAD_TYPES = "InferredWorkloadTypes",
    RECOMMENDATION_OPTIONS_MIGRATION_EFFORT = "RecommendationOptionsMigrationEffort",
    CURRENT_INSTANCE_GPU_INFO = "CurrentInstanceGpuInfo",
    RECOMMENDATION_OPTIONS_INSTANCE_GPU_INFO = "RecommendationOptionsInstanceGpuInfo",
    UTILIZATION_METRICS_GPU_PERCENTAGE_MAXIMUM = "UtilizationMetricsGpuPercentageMaximum",
    UTILIZATION_METRICS_GPU_MEMORY_PERCENTAGE_MAXIMUM = "UtilizationMetricsGpuMemoryPercentageMaximum",
    RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_GPU_MAXIMUM = "RecommendationOptionsProjectedUtilizationMetricsGpuPercentageMaximum",
    RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_GPU_MEMORY_MAXIMUM = "RecommendationOptionsProjectedUtilizationMetricsGpuMemoryPercentageMaximum",
    EFFECTIVE_RECOMMENDATION_PREFERENCES_SAVINGS_ESTIMATION_MODE = "EffectiveRecommendationPreferencesSavingsEstimationMode",
    RECOMMENDATION_OPTIONS_SAVINGS_OPPORTUNITY_AFTER_DISCOUNTS_PERCENTAGE = "RecommendationOptionsSavingsOpportunityAfterDiscountsPercentage",
    RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_CURRENCY_AFTER_DISCOUNTS = "RecommendationOptionsEstimatedMonthlySavingsCurrencyAfterDiscounts",
    RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_VALUE_AFTER_DISCOUNTS = "RecommendationOptionsEstimatedMonthlySavingsValueAfterDiscounts",
}

M.FileFormat = {
    CSV = "Csv",
}

M.FilterName = {
    FINDING = "Finding",
    FINDING_REASON_CODES = "FindingReasonCodes",
    RECOMMENDATION_SOURCE_TYPE = "RecommendationSourceType",
    INFERRED_WORKLOAD_TYPES = "InferredWorkloadTypes",
}

M.ExportableVolumeField = {
    ACCOUNT_ID = "AccountId",
    VOLUME_ARN = "VolumeArn",
    FINDING = "Finding",
    UTILIZATION_METRICS_VOLUME_READ_OPS_PER_SECOND_MAXIMUM = "UtilizationMetricsVolumeReadOpsPerSecondMaximum",
    UTILIZATION_METRICS_VOLUME_WRITE_OPS_PER_SECOND_MAXIMUM = "UtilizationMetricsVolumeWriteOpsPerSecondMaximum",
    UTILIZATION_METRICS_VOLUME_READ_BYTES_PER_SECOND_MAXIMUM = "UtilizationMetricsVolumeReadBytesPerSecondMaximum",
    UTILIZATION_METRICS_VOLUME_WRITE_BYTES_PER_SECOND_MAXIMUM = "UtilizationMetricsVolumeWriteBytesPerSecondMaximum",
    LOOKBACK_PERIOD_IN_DAYS = "LookbackPeriodInDays",
    CURRENT_CONFIGURATION_VOLUME_TYPE = "CurrentConfigurationVolumeType",
    CURRENT_CONFIGURATION_VOLUME_BASELINE_IOPS = "CurrentConfigurationVolumeBaselineIOPS",
    CURRENT_CONFIGURATION_VOLUME_BASELINE_THROUGHPUT = "CurrentConfigurationVolumeBaselineThroughput",
    CURRENT_CONFIGURATION_VOLUME_BURST_IOPS = "CurrentConfigurationVolumeBurstIOPS",
    CURRENT_CONFIGURATION_VOLUME_BURST_THROUGHPUT = "CurrentConfigurationVolumeBurstThroughput",
    CURRENT_CONFIGURATION_VOLUME_SIZE = "CurrentConfigurationVolumeSize",
    CURRENT_MONTHLY_PRICE = "CurrentMonthlyPrice",
    RECOMMENDATION_OPTIONS_CONFIGURATION_VOLUME_TYPE = "RecommendationOptionsConfigurationVolumeType",
    RECOMMENDATION_OPTIONS_CONFIGURATION_VOLUME_BASELINE_IOPS = "RecommendationOptionsConfigurationVolumeBaselineIOPS",
    RECOMMENDATION_OPTIONS_CONFIGURATION_VOLUME_BASELINE_THROUGHPUT = "RecommendationOptionsConfigurationVolumeBaselineThroughput",
    RECOMMENDATION_OPTIONS_CONFIGURATION_VOLUME_BURST_IOPS = "RecommendationOptionsConfigurationVolumeBurstIOPS",
    RECOMMENDATION_OPTIONS_CONFIGURATION_VOLUME_BURST_THROUGHPUT = "RecommendationOptionsConfigurationVolumeBurstThroughput",
    RECOMMENDATION_OPTIONS_CONFIGURATION_VOLUME_SIZE = "RecommendationOptionsConfigurationVolumeSize",
    RECOMMENDATION_OPTIONS_MONTHLY_PRICE = "RecommendationOptionsMonthlyPrice",
    RECOMMENDATION_OPTIONS_PERFORMANCE_RISK = "RecommendationOptionsPerformanceRisk",
    LAST_REFRESH_TIMESTAMP = "LastRefreshTimestamp",
    CURRENT_PERFORMANCE_RISK = "CurrentPerformanceRisk",
    RECOMMENDATION_OPTIONS_SAVINGS_OPPORTUNITY_PERCENTAGE = "RecommendationOptionsSavingsOpportunityPercentage",
    RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_CURRENCY = "RecommendationOptionsEstimatedMonthlySavingsCurrency",
    RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_VALUE = "RecommendationOptionsEstimatedMonthlySavingsValue",
    TAGS = "Tags",
    ROOT_VOLUME = "RootVolume",
    CURRENT_CONFIGURATION_ROOT_VOLUME = "CurrentConfigurationRootVolume",
    EFFECTIVE_RECOMMENDATION_PREFERENCES_SAVINGS_ESTIMATION_MODE = "EffectiveRecommendationPreferencesSavingsEstimationMode",
    RECOMMENDATION_OPTIONS_SAVINGS_OPPORTUNITY_AFTER_DISCOUNTS_PERCENTAGE = "RecommendationOptionsSavingsOpportunityAfterDiscountsPercentage",
    RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_CURRENCY_AFTER_DISCOUNTS = "RecommendationOptionsEstimatedMonthlySavingsCurrencyAfterDiscounts",
    RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_VALUE_AFTER_DISCOUNTS = "RecommendationOptionsEstimatedMonthlySavingsValueAfterDiscounts",
}

M.EBSFilterName = {
    FINDING = "Finding",
}

M.ExportableInstanceField = {
    ACCOUNT_ID = "AccountId",
    INSTANCE_ARN = "InstanceArn",
    INSTANCE_NAME = "InstanceName",
    FINDING = "Finding",
    Finding_Reason_Codes = "FindingReasonCodes",
    LOOKBACK_PERIOD_IN_DAYS = "LookbackPeriodInDays",
    CURRENT_INSTANCE_TYPE = "CurrentInstanceType",
    UTILIZATION_METRICS_CPU_MAXIMUM = "UtilizationMetricsCpuMaximum",
    UTILIZATION_METRICS_MEMORY_MAXIMUM = "UtilizationMetricsMemoryMaximum",
    UTILIZATION_METRICS_EBS_READ_OPS_PER_SECOND_MAXIMUM = "UtilizationMetricsEbsReadOpsPerSecondMaximum",
    UTILIZATION_METRICS_EBS_WRITE_OPS_PER_SECOND_MAXIMUM = "UtilizationMetricsEbsWriteOpsPerSecondMaximum",
    UTILIZATION_METRICS_EBS_READ_BYTES_PER_SECOND_MAXIMUM = "UtilizationMetricsEbsReadBytesPerSecondMaximum",
    UTILIZATION_METRICS_EBS_WRITE_BYTES_PER_SECOND_MAXIMUM = "UtilizationMetricsEbsWriteBytesPerSecondMaximum",
    UTILIZATION_METRICS_DISK_READ_OPS_PER_SECOND_MAXIMUM = "UtilizationMetricsDiskReadOpsPerSecondMaximum",
    UTILIZATION_METRICS_DISK_WRITE_OPS_PER_SECOND_MAXIMUM = "UtilizationMetricsDiskWriteOpsPerSecondMaximum",
    UTILIZATION_METRICS_DISK_READ_BYTES_PER_SECOND_MAXIMUM = "UtilizationMetricsDiskReadBytesPerSecondMaximum",
    UTILIZATION_METRICS_DISK_WRITE_BYTES_PER_SECOND_MAXIMUM = "UtilizationMetricsDiskWriteBytesPerSecondMaximum",
    UTILIZATION_METRICS_NETWORK_IN_BYTES_PER_SECOND_MAXIMUM = "UtilizationMetricsNetworkInBytesPerSecondMaximum",
    UTILIZATION_METRICS_NETWORK_OUT_BYTES_PER_SECOND_MAXIMUM = "UtilizationMetricsNetworkOutBytesPerSecondMaximum",
    UTILIZATION_METRICS_NETWORK_PACKETS_IN_PER_SECOND_MAXIMUM = "UtilizationMetricsNetworkPacketsInPerSecondMaximum",
    UTILIZATION_METRICS_NETWORK_PACKETS_OUT_PER_SECOND_MAXIMUM = "UtilizationMetricsNetworkPacketsOutPerSecondMaximum",
    CURRENT_ON_DEMAND_PRICE = "CurrentOnDemandPrice",
    CURRENT_STANDARD_ONE_YEAR_NO_UPFRONT_RESERVED_PRICE = "CurrentStandardOneYearNoUpfrontReservedPrice",
    CURRENT_STANDARD_THREE_YEAR_NO_UPFRONT_RESERVED_PRICE = "CurrentStandardThreeYearNoUpfrontReservedPrice",
    CURRENT_VCPUS = "CurrentVCpus",
    CURRENT_MEMORY = "CurrentMemory",
    CURRENT_STORAGE = "CurrentStorage",
    CURRENT_NETWORK = "CurrentNetwork",
    RECOMMENDATION_OPTIONS_INSTANCE_TYPE = "RecommendationOptionsInstanceType",
    RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_CPU_MAXIMUM = "RecommendationOptionsProjectedUtilizationMetricsCpuMaximum",
    RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_MEMORY_MAXIMUM = "RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum",
    RECOMMENDATION_OPTIONS_PLATFORM_DIFFERENCES = "RecommendationOptionsPlatformDifferences",
    RECOMMENDATION_OPTIONS_PERFORMANCE_RISK = "RecommendationOptionsPerformanceRisk",
    RECOMMENDATION_OPTIONS_VCPUS = "RecommendationOptionsVcpus",
    RECOMMENDATION_OPTIONS_MEMORY = "RecommendationOptionsMemory",
    RECOMMENDATION_OPTIONS_STORAGE = "RecommendationOptionsStorage",
    RECOMMENDATION_OPTIONS_NETWORK = "RecommendationOptionsNetwork",
    RECOMMENDATION_OPTIONS_ON_DEMAND_PRICE = "RecommendationOptionsOnDemandPrice",
    RECOMMENDATION_OPTIONS_STANDARD_ONE_YEAR_NO_UPFRONT_RESERVED_PRICE = "RecommendationOptionsStandardOneYearNoUpfrontReservedPrice",
    RECOMMENDATION_OPTIONS_STANDARD_THREE_YEAR_NO_UPFRONT_RESERVED_PRICE = "RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice",
    RECOMMENDATIONS_SOURCES_RECOMMENDATION_SOURCE_ARN = "RecommendationsSourcesRecommendationSourceArn",
    RECOMMENDATIONS_SOURCES_RECOMMENDATION_SOURCE_TYPE = "RecommendationsSourcesRecommendationSourceType",
    LAST_REFRESH_TIMESTAMP = "LastRefreshTimestamp",
    CURRENT_PERFORMANCE_RISK = "CurrentPerformanceRisk",
    RECOMMENDATION_OPTIONS_SAVINGS_OPPORTUNITY_PERCENTAGE = "RecommendationOptionsSavingsOpportunityPercentage",
    RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_CURRENCY = "RecommendationOptionsEstimatedMonthlySavingsCurrency",
    RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_VALUE = "RecommendationOptionsEstimatedMonthlySavingsValue",
    EFFECTIVE_RECOMMENDATION_PREFERENCES_CPU_VENDOR_ARCHITECTURES = "EffectiveRecommendationPreferencesCpuVendorArchitectures",
    EFFECTIVE_RECOMMENDATION_PREFERENCES_ENHANCED_INFRASTRUCTURE_METRICS = "EffectiveRecommendationPreferencesEnhancedInfrastructureMetrics",
    EFFECTIVE_RECOMMENDATION_PREFERENCES_INFERRED_WORKLOAD_TYPES = "EffectiveRecommendationPreferencesInferredWorkloadTypes",
    INFERRED_WORKLOAD_TYPES = "InferredWorkloadTypes",
    RECOMMENDATION_OPTIONS_MIGRATION_EFFORT = "RecommendationOptionsMigrationEffort",
    EFFECTIVE_RECOMMENDATION_PREFERENCES_EXTERNAL_METRICS_SOURCE = "EffectiveRecommendationPreferencesExternalMetricsSource",
    TAGS = "Tags",
    INSTANCE_STATE = "InstanceState",
    EXTERNAL_METRIC_STATUS_CODE = "ExternalMetricStatusCode",
    EXTERNAL_METRIC_STATUS_REASON = "ExternalMetricStatusReason",
    CURRENT_INSTANCE_GPU_INFO = "CurrentInstanceGpuInfo",
    RECOMMENDATION_OPTIONS_INSTANCE_GPU_INFO = "RecommendationOptionsInstanceGpuInfo",
    UTILIZATION_METRICS_GPU_PERCENTAGE_MAXIMUM = "UtilizationMetricsGpuPercentageMaximum",
    UTILIZATION_METRICS_GPU_MEMORY_PERCENTAGE_MAXIMUM = "UtilizationMetricsGpuMemoryPercentageMaximum",
    RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_GPU_PERCENTAGE_MAXIMUM = "RecommendationOptionsProjectedUtilizationMetricsGpuPercentageMaximum",
    RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_GPU_MEMORY_PERCENTAGE_MAXIMUM = "RecommendationOptionsProjectedUtilizationMetricsGpuMemoryPercentageMaximum",
    IDLE = "Idle",
    EFFECTIVE_RECOMMENDATION_PREFERENCES_PREFERRED_RESOURCES = "EffectiveRecommendationPreferencesPreferredResources",
    EFFECTIVE_RECOMMENDATION_PREFERENCES_LOOKBACK_PERIOD = "EffectiveRecommendationPreferencesLookBackPeriod",
    EFFECTIVE_RECOMMENDATION_PREFERENCES_UTILIZATION_PREFERENCES = "EffectiveRecommendationPreferencesUtilizationPreferences",
    EFFECTIVE_RECOMMENDATION_PREFERENCES_SAVINGS_ESTIMATION_MODE = "EffectiveRecommendationPreferencesSavingsEstimationMode",
    RECOMMENDATION_OPTIONS_SAVINGS_OPPORTUNITY_AFTER_DISCOUNTS_PERCENTAGE = "RecommendationOptionsSavingsOpportunityAfterDiscountsPercentage",
    RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_CURRENCY_AFTER_DISCOUNTS = "RecommendationOptionsEstimatedMonthlySavingsCurrencyAfterDiscounts",
    RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_VALUE_AFTER_DISCOUNTS = "RecommendationOptionsEstimatedMonthlySavingsValueAfterDiscounts",
}

M.ExportableECSServiceField = {
    ACCOUNT_ID = "AccountId",
    SERVICE_ARN = "ServiceArn",
    LOOKBACK_PERIOD_IN_DAYS = "LookbackPeriodInDays",
    LAST_REFRESH_TIMESTAMP = "LastRefreshTimestamp",
    LAUNCH_TYPE = "LaunchType",
    CURRENT_PERFORMANCE_RISK = "CurrentPerformanceRisk",
    CURRENT_SERVICE_CONFIGURATION_MEMORY = "CurrentServiceConfigurationMemory",
    CURRENT_SERVICE_CONFIGURATION_CPU = "CurrentServiceConfigurationCpu",
    CURRENT_SERVICE_CONFIGURATION_TASK_DEFINITION_ARN = "CurrentServiceConfigurationTaskDefinitionArn",
    CURRENT_SERVICE_CONFIGURATION_AUTO_SCALING_CONFIGURATION = "CurrentServiceConfigurationAutoScalingConfiguration",
    CURRENT_SERVICE_CONTAINER_CONFIGURATIONS = "CurrentServiceContainerConfigurations",
    UTILIZATION_METRICS_CPU_MAXIMUM = "UtilizationMetricsCpuMaximum",
    UTILIZATION_METRICS_MEMORY_MAXIMUM = "UtilizationMetricsMemoryMaximum",
    FINDING = "Finding",
    FINDING_REASON_CODES = "FindingReasonCodes",
    RECOMMENDATION_OPTIONS_MEMORY = "RecommendationOptionsMemory",
    RECOMMENDATION_OPTIONS_CPU = "RecommendationOptionsCpu",
    RECOMMENDATION_OPTIONS_SAVINGS_OPPORTUNITY_PERCENTAGE = "RecommendationOptionsSavingsOpportunityPercentage",
    RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_CURRENCY = "RecommendationOptionsEstimatedMonthlySavingsCurrency",
    RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_VALUE = "RecommendationOptionsEstimatedMonthlySavingsValue",
    RECOMMENDATION_OPTIONS_CONTAINER_RECOMMENDATIONS = "RecommendationOptionsContainerRecommendations",
    RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_CPU_MAXIMUM = "RecommendationOptionsProjectedUtilizationMetricsCpuMaximum",
    RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_MEMORY_MAXIMUM = "RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum",
    TAGS = "Tags",
    EFFECTIVE_RECOMMENDATION_PREFERENCES_SAVINGS_ESTIMATION_MODE = "EffectiveRecommendationPreferencesSavingsEstimationMode",
    RECOMMENDATION_OPTIONS_SAVINGS_OPPORTUNITY_AFTER_DISCOUNTS_PERCENTAGE = "RecommendationOptionsSavingsOpportunityAfterDiscountsPercentage",
    RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_CURRENCY_AFTER_DISCOUNTS = "RecommendationOptionsEstimatedMonthlySavingsCurrencyAfterDiscounts",
    RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_VALUE_AFTER_DISCOUNTS = "RecommendationOptionsEstimatedMonthlySavingsValueAfterDiscounts",
}

M.ECSServiceRecommendationFilterName = {
    FINDING = "Finding",
    FINDING_REASON_CODE = "FindingReasonCode",
}

M.ExportableIdleField = {
    ACCOUNT_ID = "AccountId",
    RESOURCE_ARN = "ResourceArn",
    RESOURCE_ID = "ResourceId",
    RESOURCE_TYPE = "ResourceType",
    LAST_REFRESH_TIMESTAMP = "LastRefreshTimestamp",
    LOOKBACK_PERIOD_IN_DAYS = "LookbackPeriodInDays",
    SAVINGS_OPPORTUNITY = "SavingsOpportunity",
    SAVINGS_OPPORTUNITY_AFTER_DISCOUNT = "SavingsOpportunityAfterDiscount",
    UTILIZATION_METRICS_CPU_MAXIMUM = "UtilizationMetricsCpuMaximum",
    UTILIZATION_METRICS_MEMORY_MAXIMUM = "UtilizationMetricsMemoryMaximum",
    UTILIZATION_METRICS_NETWORK_OUT_BYTES_PER_SECOND_MAXIMUM = "UtilizationMetricsNetworkOutBytesPerSecondMaximum",
    UTILIZATION_METRICS_NETWORK_IN_BYTES_PER_SECOND_MAXIMUM = "UtilizationMetricsNetworkInBytesPerSecondMaximum",
    UTILIZATION_METRICS_DATABASE_CONNECTIONS_MAXIMUM = "UtilizationMetricsDatabaseConnectionsMaximum",
    UTILIZATION_METRICS_EBS_VOLUME_READ_IOPS_MAXIMUM = "UtilizationMetricsEBSVolumeReadIOPSMaximum",
    UTILIZATION_METRICS_EBS_VOLUME_WRITE_IOPS_MAXIMUM = "UtilizationMetricsEBSVolumeWriteIOPSMaximum",
    UTILIZATION_METRICS_VOLUME_READ_OPS_PER_SECOND_MAXIMUM = "UtilizationMetricsVolumeReadOpsPerSecondMaximum",
    UTILIZATION_METRICS_VOLUME_WRITE_OPS_PER_SECOND_MAXIMUM = "UtilizationMetricsVolumeWriteOpsPerSecondMaximum",
    UTILIZATION_METRICS_ACTIVE_CONNECTION_COUNT_MAXIMUM = "UtilizationMetricsActiveConnectionCountMaximum",
    UTILIZATION_METRICS_PACKETS_IN_FROM_SOURCE_MAXIMUM = "UtilizationMetricsPacketsInFromSourceMaximum",
    UTILIZATION_METRICS_PACKETS_IN_FROM_DESTINATION_MAXIMUM = "UtilizationMetricsPacketsInFromDestinationMaximum",
    FINDING = "Finding",
    FINDING_DESCRIPTION = "FindingDescription",
    TAGS = "Tags",
}

M.IdleRecommendationFilterName = {
    FINDING = "Finding",
    RESOURCE_TYPE = "ResourceType",
}

M.ExportableLambdaFunctionField = {
    ACCOUNT_ID = "AccountId",
    FUNCTION_ARN = "FunctionArn",
    FUNCTION_VERSION = "FunctionVersion",
    FINDING = "Finding",
    FINDING_REASON_CODES = "FindingReasonCodes",
    NUMBER_OF_INVOCATIONS = "NumberOfInvocations",
    UTILIZATION_METRICS_DURATION_MAXIMUM = "UtilizationMetricsDurationMaximum",
    UTILIZATION_METRICS_DURATION_AVERAGE = "UtilizationMetricsDurationAverage",
    UTILIZATION_METRICS_MEMORY_MAXIMUM = "UtilizationMetricsMemoryMaximum",
    UTILIZATION_METRICS_MEMORY_AVERAGE = "UtilizationMetricsMemoryAverage",
    LOOKBACK_PERIOD_IN_DAYS = "LookbackPeriodInDays",
    CURRENT_CONFIGURATION_MEMORY_SIZE = "CurrentConfigurationMemorySize",
    CURRENT_CONFIGURATION_TIMEOUT = "CurrentConfigurationTimeout",
    CURRENT_COST_TOTAL = "CurrentCostTotal",
    CURRENT_COST_AVERAGE = "CurrentCostAverage",
    RECOMMENDATION_OPTIONS_CONFIGURATION_MEMORY_SIZE = "RecommendationOptionsConfigurationMemorySize",
    RECOMMENDATION_OPTIONS_COST_LOW = "RecommendationOptionsCostLow",
    RECOMMENDATION_OPTIONS_COST_HIGH = "RecommendationOptionsCostHigh",
    RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_DURATION_LOWER_BOUND = "RecommendationOptionsProjectedUtilizationMetricsDurationLowerBound",
    RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_DURATION_UPPER_BOUND = "RecommendationOptionsProjectedUtilizationMetricsDurationUpperBound",
    RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_DURATION_EXPECTED = "RecommendationOptionsProjectedUtilizationMetricsDurationExpected",
    LAST_REFRESH_TIMESTAMP = "LastRefreshTimestamp",
    CURRENT_PERFORMANCE_RISK = "CurrentPerformanceRisk",
    RECOMMENDATION_OPTIONS_SAVINGS_OPPORTUNITY_PERCENTAGE = "RecommendationOptionsSavingsOpportunityPercentage",
    RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_CURRENCY = "RecommendationOptionsEstimatedMonthlySavingsCurrency",
    RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_VALUE = "RecommendationOptionsEstimatedMonthlySavingsValue",
    TAGS = "Tags",
    EFFECTIVE_RECOMMENDATION_PREFERENCES_SAVINGS_ESTIMATION_MODE = "EffectiveRecommendationPreferencesSavingsEstimationMode",
    RECOMMENDATION_OPTIONS_SAVINGS_OPPORTUNITY_AFTER_DISCOUNTS_PERCENTAGE = "RecommendationOptionsSavingsOpportunityAfterDiscountsPercentage",
    RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_CURRENCY_AFTER_DISCOUNTS = "RecommendationOptionsEstimatedMonthlySavingsCurrencyAfterDiscounts",
    RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_VALUE_AFTER_DISCOUNTS = "RecommendationOptionsEstimatedMonthlySavingsValueAfterDiscounts",
}

M.LambdaFunctionRecommendationFilterName = {
    FINDING = "Finding",
    FINDING_REASON_CODE = "FindingReasonCode",
}

M.ExportableLicenseField = {
    ACCOUNT_ID = "AccountId",
    RESOURCE_ARN = "ResourceArn",
    LOOKBACK_PERIOD_IN_DAYS = "LookbackPeriodInDays",
    LAST_REFRESH_TIMESTAMP = "LastRefreshTimestamp",
    LICENSE_FINDING = "Finding",
    LICENSE_FINDING_REASON_CODES = "FindingReasonCodes",
    CURRENT_LICENSE_CONFIGURATION_NUMBER_OF_CORES = "CurrentLicenseConfigurationNumberOfCores",
    CURRENT_LICENSE_CONFIGURATION_INSTANCE_TYPE = "CurrentLicenseConfigurationInstanceType",
    CURRENT_LICENSE_CONFIGURATION_OPERATING_SYSTEM = "CurrentLicenseConfigurationOperatingSystem",
    CURRENT_LICENSE_CONFIGURATION_LICENSE_NAME = "CurrentLicenseConfigurationLicenseName",
    CURRENT_LICENSE_CONFIGURATION_LICENSE_EDITION = "CurrentLicenseConfigurationLicenseEdition",
    CURRENT_LICENSE_CONFIGURATION_LICENSE_MODEL = "CurrentLicenseConfigurationLicenseModel",
    CURRENT_LICENSE_CONFIGURATION_LICENSE_VERSION = "CurrentLicenseConfigurationLicenseVersion",
    CURRENT_LICENSE_CONFIGURATION_METRICS_SOURCE = "CurrentLicenseConfigurationMetricsSource",
    RECOMMENDATION_OPTIONS_OPERATING_SYSTEM = "RecommendationOptionsOperatingSystem",
    RECOMMENDATION_OPTIONS_LICENSE_EDITION = "RecommendationOptionsLicenseEdition",
    RECOMMENDATION_OPTIONS_LICENSE_MODEL = "RecommendationOptionsLicenseModel",
    RECOMMENDATION_OPTIONS_SAVINGS_OPPORTUNITY_PERCENTAGE = "RecommendationOptionsSavingsOpportunityPercentage",
    RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_CURRENCY = "RecommendationOptionsEstimatedMonthlySavingsCurrency",
    RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_VALUE = "RecommendationOptionsEstimatedMonthlySavingsValue",
    TAGS = "Tags",
}

M.LicenseRecommendationFilterName = {
    LICENSE_FINDING = "Finding",
    LICENSE_FINDING_REASON_CODE = "FindingReasonCode",
    LICENSE_NAME = "LicenseName",
}

M.ExportableRDSDBField = {
    RESOURCE_ARN = "ResourceArn",
    ACCOUNT_ID = "AccountId",
    ENGINE = "Engine",
    ENGINE_VERSION = "EngineVersion",
    IDLE = "Idle",
    MULTI_AZ_DB_INSTANCE = "MultiAZDBInstance",
    CLUSTER_WRITER = "ClusterWriter",
    CURRENT_DB_INSTANCE_CLASS = "CurrentDBInstanceClass",
    CURRENT_STORAGE_CONFIGURATION_STORAGE_TYPE = "CurrentStorageConfigurationStorageType",
    CURRENT_STORAGE_CONFIGURATION_ALLOCATED_STORAGE = "CurrentStorageConfigurationAllocatedStorage",
    CURRENT_STORAGE_CONFIGURATION_MAX_ALLOCATED_STORAGE = "CurrentStorageConfigurationMaxAllocatedStorage",
    CURRENT_STORAGE_CONFIGURATION_IOPS = "CurrentStorageConfigurationIOPS",
    CURRENT_STORAGE_CONFIGURATION_STORAGE_THROUGHPUT = "CurrentStorageConfigurationStorageThroughput",
    CURRENT_STORAGE_ESTIMATED_MONTHLY_VOLUME_IOPS_COST_VARIATION = "CurrentStorageEstimatedMonthlyVolumeIOPsCostVariation",
    CURRENT_INSTANCE_ON_DEMAND_HOURLY_PRICE = "CurrentInstanceOnDemandHourlyPrice",
    CURRENT_STORAGE_ON_DEMAND_MONTHLY_PRICE = "CurrentStorageOnDemandMonthlyPrice",
    LOOKBACK_PERIOD_IN_DAYS = "LookbackPeriodInDays",
    CURRENT_STORAGE_ESTIMATED_CLUSTER_INSTANCE_ON_DEMAND_MONTHLY_COST = "CurrentStorageEstimatedClusterInstanceOnDemandMonthlyCost",
    CURRENT_STORAGE_ESTIMATED_CLUSTER_STORAGE_ON_DEMAND_MONTHLY_COST = "CurrentStorageEstimatedClusterStorageOnDemandMonthlyCost",
    CURRENT_STORAGE_ESTIMATED_CLUSTER_STORAGE_IO_ON_DEMAND_MONTHLY_COST = "CurrentStorageEstimatedClusterStorageIOOnDemandMonthlyCost",
    CURRENT_INSTANCE_PERFORMANCE_RISK = "CurrentInstancePerformanceRisk",
    UTILIZATION_METRICS_CPU_MAXIMUM = "UtilizationMetricsCpuMaximum",
    UTILIZATION_METRICS_MEMORY_MAXIMUM = "UtilizationMetricsMemoryMaximum",
    UTILIZATION_METRICS_EBS_VOLUME_STORAGE_SPACE_UTILIZATION_MAXIMUM = "UtilizationMetricsEBSVolumeStorageSpaceUtilizationMaximum",
    UTILIZATION_METRICS_NETWORK_RECEIVE_THROUGHPUT_MAXIMUM = "UtilizationMetricsNetworkReceiveThroughputMaximum",
    UTILIZATION_METRICS_NETWORK_TRANSMIT_THROUGHPUT_MAXIMUM = "UtilizationMetricsNetworkTransmitThroughputMaximum",
    UTILIZATION_METRICS_EBS_VOLUME_READ_IOPS_MAXIMUM = "UtilizationMetricsEBSVolumeReadIOPSMaximum",
    UTILIZATION_METRICS_EBS_VOLUME_WRITE_IOPS_MAXIMUM = "UtilizationMetricsEBSVolumeWriteIOPSMaximum",
    UTILIZATION_METRICS_EBS_VOLUME_READ_THROUGHPUT_MAXIMUM = "UtilizationMetricsEBSVolumeReadThroughputMaximum",
    UTILIZATION_METRICS_EBS_VOLUME_WRITE_THROUGHPUT_MAXIMUM = "UtilizationMetricsEBSVolumeWriteThroughputMaximum",
    UTILIZATION_METRICS_DATABASE_CONNECTIONS_MAXIMUM = "UtilizationMetricsDatabaseConnectionsMaximum",
    UTILIZATION_METRICS_STORAGE_NETWORK_RECEIVE_THROUGHPUT_MAXIMUM = "UtilizationMetricsStorageNetworkReceiveThroughputMaximum",
    UTILIZATION_METRICS_STORAGE_NETWORK_TRANSMIT_THROUGHPUT_MAXIMUM = "UtilizationMetricsStorageNetworkTransmitThroughputMaximum",
    UTILIZATION_METRICS_AURORA_MEMORY_HEALTH_STATE_MAXIMUM = "UtilizationMetricsAuroraMemoryHealthStateMaximum",
    UTILIZATION_METRICS_AURORA_MEMORY_NUM_DECLINED_SQL_TOTAL_MAXIMUM = "UtilizationMetricsAuroraMemoryNumDeclinedSqlTotalMaximum",
    UTILIZATION_METRICS_AURORA_MEMORY_NUM_KILL_CONN_TOTAL_MAXIMUM = "UtilizationMetricsAuroraMemoryNumKillConnTotalMaximum",
    UTILIZATION_METRICS_AURORA_MEMORY_NUM_KILL_QUERY_TOTAL_MAXIMUM = "UtilizationMetricsAuroraMemoryNumKillQueryTotalMaximum",
    UTILIZATION_METRICS_READ_IOPS_EPHEMERAL_STORAGE_MAXIMUM = "UtilizationMetricsReadIOPSEphemeralStorageMaximum",
    UTILIZATION_METRICS_WRITE_IOPS_EPHEMERAL_STORAGE_MAXIMUM = "UtilizationMetricsWriteIOPSEphemeralStorageMaximum",
    UTILIZATION_METRICS_VOLUME_BYTES_USED_AVERAGE = "UtilizationMetricsVolumeBytesUsedAverage",
    UTILIZATION_METRICS_VOLUME_READ_IOPS_AVERAGE = "UtilizationMetricsVolumeReadIOPsAverage",
    UTILIZATION_METRICS_VOLUME_WRITE_IOPS_AVERAGE = "UtilizationMetricsVolumeWriteIOPsAverage",
    INSTANCE_FINDING = "InstanceFinding",
    INSTANCE_FINDING_REASON_CODES = "InstanceFindingReasonCodes",
    STORAGE_FINDING = "StorageFinding",
    STORAGE_FINDING_REASON_CODES = "StorageFindingReasonCodes",
    INSTANCE_RECOMMENDATION_OPTIONS_DB_INSTANCE_CLASS = "InstanceRecommendationOptionsDBInstanceClass",
    INSTANCE_RECOMMENDATION_OPTIONS_RANK = "InstanceRecommendationOptionsRank",
    INSTANCE_RECOMMENDATION_OPTIONS_PERFORMANCE_RISK = "InstanceRecommendationOptionsPerformanceRisk",
    INSTANCE_RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_CPU_MAXIMUM = "InstanceRecommendationOptionsProjectedUtilizationMetricsCpuMaximum",
    STORAGE_RECOMMENDATION_OPTIONS_STORAGE_TYPE = "StorageRecommendationOptionsStorageType",
    STORAGE_RECOMMENDATION_OPTIONS_ALLOCATED_STORAGE = "StorageRecommendationOptionsAllocatedStorage",
    STORAGE_RECOMMENDATION_OPTIONS_MAX_ALLOCATED_STORAGE = "StorageRecommendationOptionsMaxAllocatedStorage",
    STORAGE_RECOMMENDATION_OPTIONS_IOPS = "StorageRecommendationOptionsIOPS",
    STORAGE_RECOMMENDATION_OPTIONS_STORAGE_THROUGHPUT = "StorageRecommendationOptionsStorageThroughput",
    STORAGE_RECOMMENDATION_OPTIONS_RANK = "StorageRecommendationOptionsRank",
    STORAGE_RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_VOLUME_IOPS_COST_VARIATION = "StorageRecommendationOptionsEstimatedMonthlyVolumeIOPsCostVariation",
    INSTANCE_RECOMMENDATION_OPTIONS_INSTANCE_ON_DEMAND_HOURLY_PRICE = "InstanceRecommendationOptionsInstanceOnDemandHourlyPrice",
    INSTANCE_RECOMMENDATION_OPTIONS_SAVINGS_OPPORTUNITY_PERCENTAGE = "InstanceRecommendationOptionsSavingsOpportunityPercentage",
    INSTANCE_RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_CURRENCY = "InstanceRecommendationOptionsEstimatedMonthlySavingsCurrency",
    INSTANCE_RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_VALUE = "InstanceRecommendationOptionsEstimatedMonthlySavingsValue",
    INSTANCE_RECOMMENDATION_OPTIONS_SAVINGS_OPPORTUNITY_AFTER_DISCOUNTS_PERCENTAGE = "InstanceRecommendationOptionsSavingsOpportunityAfterDiscountsPercentage",
    INSTANCE_RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_CURRENCY_AFTER_DISCOUNTS = "InstanceRecommendationOptionsEstimatedMonthlySavingsCurrencyAfterDiscounts",
    INSTANCE_RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_VALUE_AFTER_DISCOUNTS = "InstanceRecommendationOptionsEstimatedMonthlySavingsValueAfterDiscounts",
    STORAGE_RECOMMENDATION_OPTIONS_ON_DEMAND_MONTHLY_PRICE = "StorageRecommendationOptionsOnDemandMonthlyPrice",
    STORAGE_RECOMMENDATION_OPTIONS_ESTIMATED_CLUSTER_INSTANCE_ON_DEMAND_MONTHLY_COST = "StorageRecommendationOptionsEstimatedClusterInstanceOnDemandMonthlyCost",
    STORAGE_RECOMMENDATION_OPTIONS_ESTIMATED_CLUSTER_STORAGE_ON_DEMAND_MONTHLY_COST = "StorageRecommendationOptionsEstimatedClusterStorageOnDemandMonthlyCost",
    STORAGE_RECOMMENDATION_OPTIONS_ESTIMATED_CLUSTER_STORAGE_IO_ON_DEMAND_MONTHLY_COST = "StorageRecommendationOptionsEstimatedClusterStorageIOOnDemandMonthlyCost",
    STORAGE_RECOMMENDATION_OPTIONS_SAVINGS_OPPORTUNITY_PERCENTAGE = "StorageRecommendationOptionsSavingsOpportunityPercentage",
    STORAGE_RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_CURRENCY = "StorageRecommendationOptionsEstimatedMonthlySavingsCurrency",
    STORAGE_RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_VALUE = "StorageRecommendationOptionsEstimatedMonthlySavingsValue",
    STORAGE_RECOMMENDATION_OPTIONS_SAVINGS_OPPORTUNITY_AFTER_DISCOUNTS_PERCENTAGE = "StorageRecommendationOptionsSavingsOpportunityAfterDiscountsPercentage",
    STORAGE_RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_CURRENCY_AFTER_DISCOUNTS = "StorageRecommendationOptionsEstimatedMonthlySavingsCurrencyAfterDiscounts",
    STORAGE_RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_VALUE_AFTER_DISCOUNTS = "StorageRecommendationOptionsEstimatedMonthlySavingsValueAfterDiscounts",
    EFFECTIVE_RECOMMENDATION_PREFERENCES_CPU_VENDOR_ARCHITECTURES = "EffectiveRecommendationPreferencesCpuVendorArchitectures",
    EFFECTIVE_RECOMMENDATION_PREFERENCES_ENHANCED_INFRASTRUCTURE_METRICS = "EffectiveRecommendationPreferencesEnhancedInfrastructureMetrics",
    EFFECTIVE_RECOMMENDATION_PREFERENCES_LOOKBACK_PERIOD = "EffectiveRecommendationPreferencesLookBackPeriod",
    EFFECTIVE_RECOMMENDATION_PREFERENCES_SAVINGS_ESTIMATION_MODE = "EffectiveRecommendationPreferencesSavingsEstimationMode",
    LAST_REFRESH_TIMESTAMP = "LastRefreshTimestamp",
    TAGS = "Tags",
    DB_CLUSTER_IDENTIFIER = "DBClusterIdentifier",
    PROMOTION_TIER = "PromotionTier",
}

M.RDSDBRecommendationFilterName = {
    INSTANCE_FINDING = "InstanceFinding",
    INSTANCE_FINDING_REASON_CODE = "InstanceFindingReasonCode",
    STORAGE_FINDING = "StorageFinding",
    STORAGE_FINDING_REASON_CODE = "StorageFindingReasonCode",
    IDLE = "Idle",
}

M.EBSSavingsEstimationModeSource = {
    PUBLIC_PRICING = "PublicPricing",
    COST_EXPLORER_RIGHTSIZING = "CostExplorerRightsizing",
    COST_OPTIMIZATION_HUB = "CostOptimizationHub",
}

M.EBSFinding = {
    OPTIMIZED = "Optimized",
    NOT_OPTIMIZED = "NotOptimized",
}

M.EBSMetricName = {
    VOLUME_READ_OPS_PER_SECOND = "VolumeReadOpsPerSecond",
    VOLUME_WRITE_OPS_PER_SECOND = "VolumeWriteOpsPerSecond",
    VOLUME_READ_BYTES_PER_SECOND = "VolumeReadBytesPerSecond",
    VOLUME_WRITE_BYTES_PER_SECOND = "VolumeWriteBytesPerSecond",
}

M.ExternalMetricStatusCode = {
    NO_EXTERNAL_METRIC_SET = "NO_EXTERNAL_METRIC_SET",
    INTEGRATION_SUCCESS = "INTEGRATION_SUCCESS",
    DATADOG_INTEGRATION_ERROR = "DATADOG_INTEGRATION_ERROR",
    DYNATRACE_INTEGRATION_ERROR = "DYNATRACE_INTEGRATION_ERROR",
    NEWRELIC_INTEGRATION_ERROR = "NEWRELIC_INTEGRATION_ERROR",
    INSTANA_INTEGRATION_ERROR = "INSTANA_INTEGRATION_ERROR",
    INSUFFICIENT_DATADOG_METRICS = "INSUFFICIENT_DATADOG_METRICS",
    INSUFFICIENT_DYNATRACE_METRICS = "INSUFFICIENT_DYNATRACE_METRICS",
    INSUFFICIENT_NEWRELIC_METRICS = "INSUFFICIENT_NEWRELIC_METRICS",
    INSUFFICIENT_INSTANA_METRICS = "INSUFFICIENT_INSTANA_METRICS",
}

M.InstanceRecommendationFindingReasonCode = {
    CPU_OVER_PROVISIONED = "CPUOverprovisioned",
    CPU_UNDER_PROVISIONED = "CPUUnderprovisioned",
    MEMORY_OVER_PROVISIONED = "MemoryOverprovisioned",
    MEMORY_UNDER_PROVISIONED = "MemoryUnderprovisioned",
    EBS_THROUGHPUT_OVER_PROVISIONED = "EBSThroughputOverprovisioned",
    EBS_THROUGHPUT_UNDER_PROVISIONED = "EBSThroughputUnderprovisioned",
    EBS_IOPS_OVER_PROVISIONED = "EBSIOPSOverprovisioned",
    EBS_IOPS_UNDER_PROVISIONED = "EBSIOPSUnderprovisioned",
    NETWORK_BANDWIDTH_OVER_PROVISIONED = "NetworkBandwidthOverprovisioned",
    NETWORK_BANDWIDTH_UNDER_PROVISIONED = "NetworkBandwidthUnderprovisioned",
    NETWORK_PPS_OVER_PROVISIONED = "NetworkPPSOverprovisioned",
    NETWORK_PPS_UNDER_PROVISIONED = "NetworkPPSUnderprovisioned",
    DISK_IOPS_OVER_PROVISIONED = "DiskIOPSOverprovisioned",
    DISK_IOPS_UNDER_PROVISIONED = "DiskIOPSUnderprovisioned",
    DISK_THROUGHPUT_OVER_PROVISIONED = "DiskThroughputOverprovisioned",
    DISK_THROUGHPUT_UNDER_PROVISIONED = "DiskThroughputUnderprovisioned",
    GPU_UNDER_PROVISIONED = "GPUUnderprovisioned",
    GPU_OVER_PROVISIONED = "GPUOverprovisioned",
    GPU_MEMORY_UNDER_PROVISIONED = "GPUMemoryUnderprovisioned",
    GPU_MEMORY_OVER_PROVISIONED = "GPUMemoryOverprovisioned",
}

M.InstanceIdle = {
    TRUE = "True",
    FALSE = "False",
}

M.InstanceState = {
    PENDING = "pending",
    RUNNING = "running",
    SHUTTING_DOWN = "shutting-down",
    TERMINATED = "terminated",
    STOPPING = "stopping",
    STOPPED = "stopped",
}

M.PlatformDifference = {
    HYPERVISOR = "Hypervisor",
    NETWORK_INTERFACE = "NetworkInterface",
    STORAGE_INTERFACE = "StorageInterface",
    INSTANCE_STORE_AVAILABILITY = "InstanceStoreAvailability",
    VIRTUALIZATION_TYPE = "VirtualizationType",
    ARCHITECTURE = "Architecture",
}

M.RecommendationSourceType = {
    EC2_INSTANCE = "Ec2Instance",
    AUTO_SCALING_GROUP = "AutoScalingGroup",
    EBS_VOLUME = "EbsVolume",
    LAMBDA_FUNCTION = "LambdaFunction",
    ECS_SERVICE = "EcsService",
    LICENSE = "License",
    RDS_DB_INSTANCE = "RdsDBInstance",
    RDS_DB_INSTANCE_STORAGE = "RdsDBInstanceStorage",
    AURORA_DB_CLUSTER_STORAGE = "AuroraDBClusterStorage",
    NAT_GATEWAY = "NatGateway",
}

M.ECSServiceMetricName = {
    CPU = "Cpu",
    MEMORY = "Memory",
}

M.ECSSavingsEstimationModeSource = {
    PUBLIC_PRICING = "PublicPricing",
    COST_EXPLORER_RIGHTSIZING = "CostExplorerRightsizing",
    COST_OPTIMIZATION_HUB = "CostOptimizationHub",
}

M.ECSServiceRecommendationFinding = {
    OPTIMIZED = "Optimized",
    UNDER_PROVISIONED = "Underprovisioned",
    OVER_PROVISIONED = "Overprovisioned",
}

M.ECSServiceRecommendationFindingReasonCode = {
    MEMORY_OVER_PROVISIONED = "MemoryOverprovisioned",
    MEMORY_UNDER_PROVISIONED = "MemoryUnderprovisioned",
    CPU_OVER_PROVISIONED = "CPUOverprovisioned",
    CPU_UNDER_PROVISIONED = "CPUUnderprovisioned",
}

M.ECSServiceLaunchType = {
    EC2 = "EC2",
    FARGATE = "Fargate",
}

M.ECSServiceMetricStatistic = {
    MAXIMUM = "Maximum",
    AVERAGE = "Average",
}

M.EnrollmentFilterName = {
    STATUS = "Status",
}

M.Dimension = {
    SAVINGS_VALUE = "SavingsValue",
    SAVINGS_VALUE_AFTER_DISCOUNT = "SavingsValueAfterDiscount",
}

M.Order = {
    ASC = "Asc",
    DESC = "Desc",
}

M.IdleRecommendationResourceType = {
    EC2_INSTANCE = "EC2Instance",
    AUTO_SCALING_GROUP = "AutoScalingGroup",
    EBS_VOLUME = "EBSVolume",
    ECS_SERVICE = "ECSService",
    RDS_DB_INSTANCE = "RDSDBInstance",
    NAT_GATEWAY = "NatGateway",
}

M.IdleFinding = {
    IDLE = "Idle",
    UNATTACHED = "Unattached",
    UNUSED = "Unused",
}

M.IdleMetricName = {
    CPU = "CPU",
    MEMORY = "Memory",
    NETWORK_OUT_BYTES_PER_SECOND = "NetworkOutBytesPerSecond",
    NETWORK_IN_BYTES_PER_SECOND = "NetworkInBytesPerSecond",
    DATABASE_CONNECTIONS = "DatabaseConnections",
    EBS_VOLUME_READ_IOPS = "EBSVolumeReadIOPS",
    EBS_VOLUME_WRITE_IOPS = "EBSVolumeWriteIOPS",
    VOLUME_READ_OPS_PER_SECOND = "VolumeReadOpsPerSecond",
    VOLUME_WRITE_OPS_PER_SECOND = "VolumeWriteOpsPerSecond",
    ACTIVE_CONNECTION_COUNT = "ActiveConnectionCount",
    PACKETS_IN_FROM_SOURCE = "PacketsInFromSource",
    PACKETS_IN_FROM_DESTINATION = "PacketsInFromDestination",
}

M.LambdaSavingsEstimationModeSource = {
    PUBLIC_PRICING = "PublicPricing",
    COST_EXPLORER_RIGHTSIZING = "CostExplorerRightsizing",
    COST_OPTIMIZATION_HUB = "CostOptimizationHub",
}

M.LambdaFunctionRecommendationFinding = {
    OPTIMIZED = "Optimized",
    NOT_OPTIMIZED = "NotOptimized",
    UNAVAILABLE = "Unavailable",
}

M.LambdaFunctionRecommendationFindingReasonCode = {
    MEMORY_OVER_PROVISIONED = "MemoryOverprovisioned",
    MEMORY_UNDER_PROVISIONED = "MemoryUnderprovisioned",
    INSUFFICIENT_DATA = "InsufficientData",
    INCONCLUSIVE = "Inconclusive",
}

M.LambdaFunctionMemoryMetricName = {
    DURATION = "Duration",
}

M.LambdaFunctionMemoryMetricStatistic = {
    LOWER_BOUND = "LowerBound",
    UPPER_BOUND = "UpperBound",
    EXPECTED = "Expected",
}

M.LambdaFunctionMetricName = {
    DURATION = "Duration",
    MEMORY = "Memory",
}

M.LambdaFunctionMetricStatistic = {
    MAXIMUM = "Maximum",
    AVERAGE = "Average",
}

M.LicenseEdition = {
    ENTERPRISE = "Enterprise",
    STANDARD = "Standard",
    FREE = "Free",
    NO_LICENSE_EDITION_FOUND = "NoLicenseEditionFound",
}

M.LicenseModel = {
    LICENSE_INCLUDED = "LicenseIncluded",
    BRING_YOUR_OWN_LICENSE = "BringYourOwnLicense",
}

M.LicenseName = {
    SQLSERVER = "SQLServer",
}

M.MetricSourceProvider = {
    CloudWatchAppInsights = "CloudWatchApplicationInsights",
}

M.LicenseFinding = {
    INSUFFICIENT_METRICS = "InsufficientMetrics",
    OPTIMIZED = "Optimized",
    NOT_OPTIMIZED = "NotOptimized",
}

M.LicenseFindingReasonCode = {
    CW_APP_INSIGHTS_DISABLED = "InvalidCloudWatchApplicationInsightsSetup",
    CW_APP_INSIGHTS_ERROR = "CloudWatchApplicationInsightsError",
    LICENSE_OVER_PROVISIONED = "LicenseOverprovisioned",
    OPTIMIZED = "Optimized",
}

M.RDSDBMetricName = {
    CPU = "CPU",
    MEMORY = "Memory",
    EBS_VOLUME_STORAGE_SPACE_UTILIZATION = "EBSVolumeStorageSpaceUtilization",
    NETWORK_RECEIVE_THROUGHPUT = "NetworkReceiveThroughput",
    NETWORK_TRANSMIT_THROUGHPUT = "NetworkTransmitThroughput",
    EBS_VOLUME_READ_IOPS = "EBSVolumeReadIOPS",
    EBS_VOLUME_WRITE_IOPS = "EBSVolumeWriteIOPS",
    EBS_VOLUME_READ_THROUGHPUT = "EBSVolumeReadThroughput",
    EBS_VOLUME_WRITE_THROUGHPUT = "EBSVolumeWriteThroughput",
    DATABASE_CONNECTIONS = "DatabaseConnections",
    STORAGE_NETWORK_RECEIVE_THROUGHPUT = "StorageNetworkReceiveThroughput",
    STORAGE_NETWORK_TRANSMIT_THROUGHPUT = "StorageNetworkTransmitThroughput",
    AURORA_MEMORY_HEALTH_STATE = "AuroraMemoryHealthState",
    AURORA_MEMORY_NUM_DECLINED_SQL = "AuroraMemoryNumDeclinedSql",
    AURORA_MEMORY_NUM_KILL_CONN_TOTAL = "AuroraMemoryNumKillConnTotal",
    AURORA_MEMORY_NUM_KILL_QUERY_TOTAL = "AuroraMemoryNumKillQueryTotal",
    READ_IOPS_EPHEMERAL_STORAGE = "ReadIOPSEphemeralStorage",
    WRITE_IOPS_EPHEMERAL_STORAGE = "WriteIOPSEphemeralStorage",
    VOLUME_READ_IOPS = "VolumeReadIOPs",
    VOLUME_BYTES_USED = "VolumeBytesUsed",
    VOLUME_WRITE_IOPS = "VolumeWriteIOPs",
}

M.RDSCurrentInstancePerformanceRisk = {
    VERY_LOW = "VeryLow",
    LOW = "Low",
    MEDIUM = "Medium",
    HIGH = "High",
}

M.RDSEstimatedMonthlyVolumeIOPsCostVariation = {
    NONE = "None",
    LOW = "Low",
    MEDIUM = "Medium",
    HIGH = "High",
}

M.RDSSavingsEstimationModeSource = {
    PUBLIC_PRICING = "PublicPricing",
    COST_EXPLORER_RIGHTSIZING = "CostExplorerRightsizing",
    COST_OPTIMIZATION_HUB = "CostOptimizationHub",
}

M.Idle = {
    TRUE = "True",
    FALSE = "False",
}

M.RDSInstanceFinding = {
    OPTIMIZED = "Optimized",
    UNDER_PROVISIONED = "Underprovisioned",
    OVER_PROVISIONED = "Overprovisioned",
}

M.RDSInstanceFindingReasonCode = {
    CPU_OVER_PROVISIONED = "CPUOverprovisioned",
    NETWORK_BANDWIDTH_OVER_PROVISIONED = "NetworkBandwidthOverprovisioned",
    EBS_IOPS_OVER_PROVISIONED = "EBSIOPSOverprovisioned",
    EBS_IOPS_UNDER_PROVISIONED = "EBSIOPSUnderprovisioned",
    EBS_THROUGHPUT_OVER_PROVISIONED = "EBSThroughputOverprovisioned",
    CPU_UNDER_PROVISIONED = "CPUUnderprovisioned",
    NETWORK_BANDWIDTH_UNDER_PROVISIONED = "NetworkBandwidthUnderprovisioned",
    EBS_THROUGHPUT_UNDER_PROVISIONED = "EBSThroughputUnderprovisioned",
    NEW_GENERATION_DB_INSTANCE_CLASS_AVAILABLE = "NewGenerationDBInstanceClassAvailable",
    NEW_ENGINE_VERSION_AVAILABLE = "NewEngineVersionAvailable",
    DB_CLUSTER_WRITER_UNDER_PROVISIONED = "DBClusterWriterUnderprovisioned",
    MEMORY_UNDER_PROVISIONED = "MemoryUnderprovisioned",
    INSTANCE_STORAGE_READ_IOPS_UNDER_PROVISIONED = "InstanceStorageReadIOPSUnderprovisioned",
    INSTANCE_STORAGE_WRITE_IOPS_UNDER_PROVISIONED = "InstanceStorageWriteIOPSUnderprovisioned",
}

M.RDSDBMetricStatistic = {
    MAXIMUM = "Maximum",
    MINIMUM = "Minimum",
    AVERAGE = "Average",
}

M.RDSStorageFinding = {
    OPTIMIZED = "Optimized",
    UNDER_PROVISIONED = "Underprovisioned",
    OVER_PROVISIONED = "Overprovisioned",
    NOT_OPTIMIZED = "NotOptimized",
}

M.RDSStorageFindingReasonCode = {
    EBS_VOLUME_ALLOCATED_STORAGE_UNDER_PROVISIONED = "EBSVolumeAllocatedStorageUnderprovisioned",
    EBS_VOLUME_THROUGHPUT_UNDER_PROVISIONED = "EBSVolumeThroughputUnderprovisioned",
    EBS_VOLUME_IOPS_OVER_PROVISIONED = "EBSVolumeIOPSOverprovisioned",
    EBS_VOLUME_THROUGHPUT_OVER_PROVISIONED = "EBSVolumeThroughputOverprovisioned",
    NEW_GENERATION_STORAGE_TYPE_AVAILABLE = "NewGenerationStorageTypeAvailable",
    DB_CLUSTER_STORAGE_OPTION_AVAILABLE = "DBClusterStorageOptionAvailable",
    DB_CLUSTER_STORAGE_SAVINGS_AVAILABLE = "DBClusterStorageSavingsAvailable",
}

M.SavingsEstimationMode = {
    AFTER_DISCOUNTS = "AfterDiscounts",
    BEFORE_DISCOUNTS = "BeforeDiscounts",
}

M.FindingReasonCode = {
    MEMORY_OVER_PROVISIONED = "MemoryOverprovisioned",
    MEMORY_UNDER_PROVISIONED = "MemoryUnderprovisioned",
}

return M
