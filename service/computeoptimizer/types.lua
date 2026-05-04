local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Status = {
    ACTIVE = "Active",
    INACTIVE = "Inactive",
    PENDING = "Pending",
    FAILED = "Failed",
}

M.AccountEnrollmentStatus = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        lastUpdatedTimestamp = {
            type = "timestamp",
        },
    },
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

M.AutoScalingGroupConfiguration = {
    type = "structure",
    members = {
        desiredCapacity = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        minSize = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        maxSize = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        instanceType = {
            type = "string",
        },
        allocationStrategy = {
            type = "string",
        },
        estimatedInstanceHourReductionPercentage = {
            type = "double",
        },
        type = {
            type = "string",
        },
        mixedInstanceTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.Currency = {
    USD = "USD",
    CNY = "CNY",
}

M.AutoScalingGroupEstimatedMonthlySavings = {
    type = "structure",
    members = {
        currency = {
            type = "string",
        },
        value = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.Gpu = {
    type = "structure",
    members = {
        gpuCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        gpuMemorySizeInMiB = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.GpuInfo = {
    type = "structure",
    members = {
        gpus = {
            type = "list",
            member = M.Gpu,
        },
    },
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

M.ExternalMetricsPreference = {
    type = "structure",
    members = {
        source = {
            type = "string",
        },
    },
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

M.EffectivePreferredResource = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        includeList = {
            type = "list",
            member = { type = "string" },
        },
        effectiveIncludeList = {
            type = "list",
            member = { type = "string" },
        },
        excludeList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.InstanceSavingsEstimationModeSource = {
    PUBLIC_PRICING = "PublicPricing",
    COST_EXPLORER_RIGHTSIZING = "CostExplorerRightsizing",
    COST_OPTIMIZATION_HUB = "CostOptimizationHub",
}

M.InstanceSavingsEstimationMode = {
    type = "structure",
    members = {
        source = {
            type = "string",
        },
    },
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

M.CustomizableMetricParameters = {
    type = "structure",
    members = {
        threshold = {
            type = "string",
        },
        headroom = {
            type = "string",
        },
    },
}

M.UtilizationPreference = {
    type = "structure",
    members = {
        metricName = {
            type = "string",
        },
        metricParameters = M.CustomizableMetricParameters,
    },
}

M.EffectiveRecommendationPreferences = {
    type = "structure",
    members = {
        cpuVendorArchitectures = {
            type = "list",
            member = { type = "string" },
        },
        enhancedInfrastructureMetrics = {
            type = "string",
        },
        inferredWorkloadTypes = {
            type = "string",
        },
        externalMetricsPreference = M.ExternalMetricsPreference,
        lookBackPeriod = {
            type = "string",
        },
        utilizationPreferences = {
            type = "list",
            member = M.UtilizationPreference,
        },
        preferredResources = {
            type = "list",
            member = M.EffectivePreferredResource,
        },
        savingsEstimationMode = M.InstanceSavingsEstimationMode,
    },
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

M.UtilizationMetric = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        statistic = {
            type = "string",
        },
        value = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.EstimatedMonthlySavings = {
    type = "structure",
    members = {
        currency = {
            type = "string",
        },
        value = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.SavingsOpportunity = {
    type = "structure",
    members = {
        savingsOpportunityPercentage = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        estimatedMonthlySavings = M.EstimatedMonthlySavings,
    },
}

M.AutoScalingGroupSavingsOpportunityAfterDiscounts = {
    type = "structure",
    members = {
        savingsOpportunityPercentage = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        estimatedMonthlySavings = M.AutoScalingGroupEstimatedMonthlySavings,
    },
}

M.AutoScalingGroupRecommendationOption = {
    type = "structure",
    members = {
        configuration = M.AutoScalingGroupConfiguration,
        instanceGpuInfo = M.GpuInfo,
        projectedUtilizationMetrics = {
            type = "list",
            member = M.UtilizationMetric,
        },
        performanceRisk = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        rank = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        savingsOpportunity = M.SavingsOpportunity,
        savingsOpportunityAfterDiscounts = M.AutoScalingGroupSavingsOpportunityAfterDiscounts,
        migrationEffort = {
            type = "string",
        },
    },
}

M.AutoScalingGroupRecommendation = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
        },
        autoScalingGroupArn = {
            type = "string",
        },
        autoScalingGroupName = {
            type = "string",
        },
        finding = {
            type = "string",
        },
        utilizationMetrics = {
            type = "list",
            member = M.UtilizationMetric,
        },
        lookBackPeriodInDays = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        currentConfiguration = M.AutoScalingGroupConfiguration,
        currentInstanceGpuInfo = M.GpuInfo,
        recommendationOptions = {
            type = "list",
            member = M.AutoScalingGroupRecommendationOption,
        },
        lastRefreshTimestamp = {
            type = "timestamp",
        },
        currentPerformanceRisk = {
            type = "string",
        },
        effectiveRecommendationPreferences = M.EffectiveRecommendationPreferences,
        inferredWorkloadTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
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

M.Scope = {
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

M.DeleteRecommendationPreferencesInput = {
    type = "structure",
    members = {
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scope = M.Scope,
        recommendationPreferenceNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRecommendationPreferencesOutput = {
    type = "structure",
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidParameterValueException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MissingAuthenticationToken = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OptInRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
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
    },
}

M.JobFilterName = {
    RESOURCE_TYPE = "ResourceType",
    JOB_STATUS = "JobStatus",
}

M.JobFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeRecommendationExportJobsInput = {
    type = "structure",
    members = {
        jobIds = {
            type = "list",
            member = { type = "string" },
        },
        filters = {
            type = "list",
            member = M.JobFilter,
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.S3Destination = {
    type = "structure",
    members = {
        bucket = {
            type = "string",
        },
        key = {
            type = "string",
        },
        metadataKey = {
            type = "string",
        },
    },
}

M.ExportDestination = {
    type = "structure",
    members = {
        s3 = M.S3Destination,
    },
}

M.JobStatus = {
    QUEUED = "Queued",
    IN_PROGRESS = "InProgress",
    COMPLETE = "Complete",
    FAILED = "Failed",
}

M.RecommendationExportJob = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
        },
        destination = M.ExportDestination,
        resourceType = {
            type = "string",
        },
        status = {
            type = "string",
        },
        creationTimestamp = {
            type = "timestamp",
        },
        lastUpdatedTimestamp = {
            type = "timestamp",
        },
        failureReason = {
            type = "string",
        },
    },
}

M.DescribeRecommendationExportJobsOutput = {
    type = "structure",
    members = {
        recommendationExportJobs = {
            type = "list",
            member = M.RecommendationExportJob,
        },
        nextToken = {
            type = "string",
        },
    },
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

M.Filter = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RecommendationPreferences = {
    type = "structure",
    members = {
        cpuVendorArchitectures = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.S3DestinationConfig = {
    type = "structure",
    members = {
        bucket = {
            type = "string",
        },
        keyPrefix = {
            type = "string",
        },
    },
}

M.ExportAutoScalingGroupRecommendationsInput = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member = { type = "string" },
        },
        filters = {
            type = "list",
            member = M.Filter,
        },
        fieldsToExport = {
            type = "list",
            member = { type = "string" },
        },
        s3DestinationConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3DestinationConfig }),
        fileFormat = {
            type = "string",
        },
        includeMemberAccounts = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        recommendationPreferences = M.RecommendationPreferences,
    },
}

M.ExportAutoScalingGroupRecommendationsOutput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
        },
        s3Destination = M.S3Destination,
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
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

M.EBSFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ExportEBSVolumeRecommendationsInput = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member = { type = "string" },
        },
        filters = {
            type = "list",
            member = M.EBSFilter,
        },
        fieldsToExport = {
            type = "list",
            member = { type = "string" },
        },
        s3DestinationConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3DestinationConfig }),
        fileFormat = {
            type = "string",
        },
        includeMemberAccounts = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ExportEBSVolumeRecommendationsOutput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
        },
        s3Destination = M.S3Destination,
    },
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

M.ExportEC2InstanceRecommendationsInput = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member = { type = "string" },
        },
        filters = {
            type = "list",
            member = M.Filter,
        },
        fieldsToExport = {
            type = "list",
            member = { type = "string" },
        },
        s3DestinationConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3DestinationConfig }),
        fileFormat = {
            type = "string",
        },
        includeMemberAccounts = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        recommendationPreferences = M.RecommendationPreferences,
    },
}

M.ExportEC2InstanceRecommendationsOutput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
        },
        s3Destination = M.S3Destination,
    },
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

M.ECSServiceRecommendationFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ExportECSServiceRecommendationsInput = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member = { type = "string" },
        },
        filters = {
            type = "list",
            member = M.ECSServiceRecommendationFilter,
        },
        fieldsToExport = {
            type = "list",
            member = { type = "string" },
        },
        s3DestinationConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3DestinationConfig }),
        fileFormat = {
            type = "string",
        },
        includeMemberAccounts = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ExportECSServiceRecommendationsOutput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
        },
        s3Destination = M.S3Destination,
    },
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

M.IdleRecommendationFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ExportIdleRecommendationsInput = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member = { type = "string" },
        },
        filters = {
            type = "list",
            member = M.IdleRecommendationFilter,
        },
        fieldsToExport = {
            type = "list",
            member = { type = "string" },
        },
        s3DestinationConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3DestinationConfig }),
        fileFormat = {
            type = "string",
        },
        includeMemberAccounts = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ExportIdleRecommendationsOutput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
        },
        s3Destination = M.S3Destination,
    },
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

M.LambdaFunctionRecommendationFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ExportLambdaFunctionRecommendationsInput = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member = { type = "string" },
        },
        filters = {
            type = "list",
            member = M.LambdaFunctionRecommendationFilter,
        },
        fieldsToExport = {
            type = "list",
            member = { type = "string" },
        },
        s3DestinationConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3DestinationConfig }),
        fileFormat = {
            type = "string",
        },
        includeMemberAccounts = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ExportLambdaFunctionRecommendationsOutput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
        },
        s3Destination = M.S3Destination,
    },
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

M.LicenseRecommendationFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ExportLicenseRecommendationsInput = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member = { type = "string" },
        },
        filters = {
            type = "list",
            member = M.LicenseRecommendationFilter,
        },
        fieldsToExport = {
            type = "list",
            member = { type = "string" },
        },
        s3DestinationConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3DestinationConfig }),
        fileFormat = {
            type = "string",
        },
        includeMemberAccounts = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ExportLicenseRecommendationsOutput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
        },
        s3Destination = M.S3Destination,
    },
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

M.RDSDBRecommendationFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ExportRDSDatabaseRecommendationsInput = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member = { type = "string" },
        },
        filters = {
            type = "list",
            member = M.RDSDBRecommendationFilter,
        },
        fieldsToExport = {
            type = "list",
            member = { type = "string" },
        },
        s3DestinationConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3DestinationConfig }),
        fileFormat = {
            type = "string",
        },
        includeMemberAccounts = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        recommendationPreferences = M.RecommendationPreferences,
    },
}

M.ExportRDSDatabaseRecommendationsOutput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
        },
        s3Destination = M.S3Destination,
    },
}

M.GetAutoScalingGroupRecommendationsInput = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member = { type = "string" },
        },
        autoScalingGroupArns = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        filters = {
            type = "list",
            member = M.Filter,
        },
        recommendationPreferences = M.RecommendationPreferences,
    },
}

M.GetRecommendationError = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
        },
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.GetAutoScalingGroupRecommendationsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        autoScalingGroupRecommendations = {
            type = "list",
            member = M.AutoScalingGroupRecommendation,
        },
        errors = {
            type = "list",
            member = M.GetRecommendationError,
        },
    },
}

M.GetEBSVolumeRecommendationsInput = {
    type = "structure",
    members = {
        volumeArns = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        filters = {
            type = "list",
            member = M.EBSFilter,
        },
        accountIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.VolumeConfiguration = {
    type = "structure",
    members = {
        volumeType = {
            type = "string",
        },
        volumeSize = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        volumeBaselineIOPS = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        volumeBurstIOPS = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        volumeBaselineThroughput = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        volumeBurstThroughput = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        rootVolume = {
            type = "boolean",
        },
    },
}

M.EBSSavingsEstimationModeSource = {
    PUBLIC_PRICING = "PublicPricing",
    COST_EXPLORER_RIGHTSIZING = "CostExplorerRightsizing",
    COST_OPTIMIZATION_HUB = "CostOptimizationHub",
}

M.EBSSavingsEstimationMode = {
    type = "structure",
    members = {
        source = {
            type = "string",
        },
    },
}

M.EBSEffectiveRecommendationPreferences = {
    type = "structure",
    members = {
        savingsEstimationMode = M.EBSSavingsEstimationMode,
    },
}

M.EBSFinding = {
    OPTIMIZED = "Optimized",
    NOT_OPTIMIZED = "NotOptimized",
}

M.Tag = {
    type = "structure",
    members = {
        key = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.EBSMetricName = {
    VOLUME_READ_OPS_PER_SECOND = "VolumeReadOpsPerSecond",
    VOLUME_WRITE_OPS_PER_SECOND = "VolumeWriteOpsPerSecond",
    VOLUME_READ_BYTES_PER_SECOND = "VolumeReadBytesPerSecond",
    VOLUME_WRITE_BYTES_PER_SECOND = "VolumeWriteBytesPerSecond",
}

M.EBSUtilizationMetric = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        statistic = {
            type = "string",
        },
        value = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.EBSEstimatedMonthlySavings = {
    type = "structure",
    members = {
        currency = {
            type = "string",
        },
        value = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.EBSSavingsOpportunityAfterDiscounts = {
    type = "structure",
    members = {
        savingsOpportunityPercentage = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        estimatedMonthlySavings = M.EBSEstimatedMonthlySavings,
    },
}

M.VolumeRecommendationOption = {
    type = "structure",
    members = {
        configuration = M.VolumeConfiguration,
        performanceRisk = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        rank = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        savingsOpportunity = M.SavingsOpportunity,
        savingsOpportunityAfterDiscounts = M.EBSSavingsOpportunityAfterDiscounts,
    },
}

M.VolumeRecommendation = {
    type = "structure",
    members = {
        volumeArn = {
            type = "string",
        },
        accountId = {
            type = "string",
        },
        currentConfiguration = M.VolumeConfiguration,
        finding = {
            type = "string",
        },
        utilizationMetrics = {
            type = "list",
            member = M.EBSUtilizationMetric,
        },
        lookBackPeriodInDays = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        volumeRecommendationOptions = {
            type = "list",
            member = M.VolumeRecommendationOption,
        },
        lastRefreshTimestamp = {
            type = "timestamp",
        },
        currentPerformanceRisk = {
            type = "string",
        },
        effectiveRecommendationPreferences = M.EBSEffectiveRecommendationPreferences,
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.GetEBSVolumeRecommendationsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        volumeRecommendations = {
            type = "list",
            member = M.VolumeRecommendation,
        },
        errors = {
            type = "list",
            member = M.GetRecommendationError,
        },
    },
}

M.GetEC2InstanceRecommendationsInput = {
    type = "structure",
    members = {
        instanceArns = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        filters = {
            type = "list",
            member = M.Filter,
        },
        accountIds = {
            type = "list",
            member = { type = "string" },
        },
        recommendationPreferences = M.RecommendationPreferences,
    },
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

M.ExternalMetricStatus = {
    type = "structure",
    members = {
        statusCode = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
    },
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

M.InstanceEstimatedMonthlySavings = {
    type = "structure",
    members = {
        currency = {
            type = "string",
        },
        value = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.InstanceSavingsOpportunityAfterDiscounts = {
    type = "structure",
    members = {
        savingsOpportunityPercentage = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        estimatedMonthlySavings = M.InstanceEstimatedMonthlySavings,
    },
}

M.InstanceRecommendationOption = {
    type = "structure",
    members = {
        instanceType = {
            type = "string",
        },
        instanceGpuInfo = M.GpuInfo,
        projectedUtilizationMetrics = {
            type = "list",
            member = M.UtilizationMetric,
        },
        platformDifferences = {
            type = "list",
            member = { type = "string" },
        },
        performanceRisk = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        rank = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        savingsOpportunity = M.SavingsOpportunity,
        savingsOpportunityAfterDiscounts = M.InstanceSavingsOpportunityAfterDiscounts,
        migrationEffort = {
            type = "string",
        },
    },
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

M.RecommendationSource = {
    type = "structure",
    members = {
        recommendationSourceArn = {
            type = "string",
        },
        recommendationSourceType = {
            type = "string",
        },
    },
}

M.InstanceRecommendation = {
    type = "structure",
    members = {
        instanceArn = {
            type = "string",
        },
        accountId = {
            type = "string",
        },
        instanceName = {
            type = "string",
        },
        currentInstanceType = {
            type = "string",
        },
        finding = {
            type = "string",
        },
        findingReasonCodes = {
            type = "list",
            member = { type = "string" },
        },
        utilizationMetrics = {
            type = "list",
            member = M.UtilizationMetric,
        },
        lookBackPeriodInDays = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        recommendationOptions = {
            type = "list",
            member = M.InstanceRecommendationOption,
        },
        recommendationSources = {
            type = "list",
            member = M.RecommendationSource,
        },
        lastRefreshTimestamp = {
            type = "timestamp",
        },
        currentPerformanceRisk = {
            type = "string",
        },
        effectiveRecommendationPreferences = M.EffectiveRecommendationPreferences,
        inferredWorkloadTypes = {
            type = "list",
            member = { type = "string" },
        },
        instanceState = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        externalMetricStatus = M.ExternalMetricStatus,
        currentInstanceGpuInfo = M.GpuInfo,
        idle = {
            type = "string",
        },
    },
}

M.GetEC2InstanceRecommendationsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        instanceRecommendations = {
            type = "list",
            member = M.InstanceRecommendation,
        },
        errors = {
            type = "list",
            member = M.GetRecommendationError,
        },
    },
}

M.GetEC2RecommendationProjectedMetricsInput = {
    type = "structure",
    members = {
        instanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        period = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        recommendationPreferences = M.RecommendationPreferences,
    },
}

M.ProjectedMetric = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        timestamps = {
            type = "list",
            member = { type = "timestamp" },
        },
        values = {
            type = "list",
            member = { type = "double" },
        },
    },
}

M.RecommendedOptionProjectedMetric = {
    type = "structure",
    members = {
        recommendedInstanceType = {
            type = "string",
        },
        rank = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        projectedMetrics = {
            type = "list",
            member = M.ProjectedMetric,
        },
    },
}

M.GetEC2RecommendationProjectedMetricsOutput = {
    type = "structure",
    members = {
        recommendedOptionProjectedMetrics = {
            type = "list",
            member = M.RecommendedOptionProjectedMetric,
        },
    },
}

M.GetECSServiceRecommendationProjectedMetricsInput = {
    type = "structure",
    members = {
        serviceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        period = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ECSServiceMetricName = {
    CPU = "Cpu",
    MEMORY = "Memory",
}

M.ECSServiceProjectedMetric = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        timestamps = {
            type = "list",
            member = { type = "timestamp" },
        },
        upperBoundValues = {
            type = "list",
            member = { type = "double" },
        },
        lowerBoundValues = {
            type = "list",
            member = { type = "double" },
        },
    },
}

M.ECSServiceRecommendedOptionProjectedMetric = {
    type = "structure",
    members = {
        recommendedCpuUnits = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        recommendedMemorySize = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        projectedMetrics = {
            type = "list",
            member = M.ECSServiceProjectedMetric,
        },
    },
}

M.GetECSServiceRecommendationProjectedMetricsOutput = {
    type = "structure",
    members = {
        recommendedOptionProjectedMetrics = {
            type = "list",
            member = M.ECSServiceRecommendedOptionProjectedMetric,
        },
    },
}

M.GetECSServiceRecommendationsInput = {
    type = "structure",
    members = {
        serviceArns = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        filters = {
            type = "list",
            member = M.ECSServiceRecommendationFilter,
        },
        accountIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.MemorySizeConfiguration = {
    type = "structure",
    members = {
        memory = {
            type = "integer",
        },
        memoryReservation = {
            type = "integer",
        },
    },
}

M.ContainerConfiguration = {
    type = "structure",
    members = {
        containerName = {
            type = "string",
        },
        memorySizeConfiguration = M.MemorySizeConfiguration,
        cpu = {
            type = "integer",
        },
    },
}

M.ServiceConfiguration = {
    type = "structure",
    members = {
        memory = {
            type = "integer",
        },
        cpu = {
            type = "integer",
        },
        containerConfigurations = {
            type = "list",
            member = M.ContainerConfiguration,
        },
        autoScalingConfiguration = {
            type = "string",
        },
        taskDefinitionArn = {
            type = "string",
        },
    },
}

M.ECSSavingsEstimationModeSource = {
    PUBLIC_PRICING = "PublicPricing",
    COST_EXPLORER_RIGHTSIZING = "CostExplorerRightsizing",
    COST_OPTIMIZATION_HUB = "CostOptimizationHub",
}

M.ECSSavingsEstimationMode = {
    type = "structure",
    members = {
        source = {
            type = "string",
        },
    },
}

M.ECSEffectiveRecommendationPreferences = {
    type = "structure",
    members = {
        savingsEstimationMode = M.ECSSavingsEstimationMode,
    },
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

M.ContainerRecommendation = {
    type = "structure",
    members = {
        containerName = {
            type = "string",
        },
        memorySizeConfiguration = M.MemorySizeConfiguration,
        cpu = {
            type = "integer",
        },
    },
}

M.ECSServiceMetricStatistic = {
    MAXIMUM = "Maximum",
    AVERAGE = "Average",
}

M.ECSServiceProjectedUtilizationMetric = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        statistic = {
            type = "string",
        },
        lowerBoundValue = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        upperBoundValue = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.ECSEstimatedMonthlySavings = {
    type = "structure",
    members = {
        currency = {
            type = "string",
        },
        value = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.ECSSavingsOpportunityAfterDiscounts = {
    type = "structure",
    members = {
        savingsOpportunityPercentage = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        estimatedMonthlySavings = M.ECSEstimatedMonthlySavings,
    },
}

M.ECSServiceRecommendationOption = {
    type = "structure",
    members = {
        memory = {
            type = "integer",
        },
        cpu = {
            type = "integer",
        },
        savingsOpportunity = M.SavingsOpportunity,
        savingsOpportunityAfterDiscounts = M.ECSSavingsOpportunityAfterDiscounts,
        projectedUtilizationMetrics = {
            type = "list",
            member = M.ECSServiceProjectedUtilizationMetric,
        },
        containerRecommendations = {
            type = "list",
            member = M.ContainerRecommendation,
        },
    },
}

M.ECSServiceUtilizationMetric = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        statistic = {
            type = "string",
        },
        value = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.ECSServiceRecommendation = {
    type = "structure",
    members = {
        serviceArn = {
            type = "string",
        },
        accountId = {
            type = "string",
        },
        currentServiceConfiguration = M.ServiceConfiguration,
        utilizationMetrics = {
            type = "list",
            member = M.ECSServiceUtilizationMetric,
        },
        lookbackPeriodInDays = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        launchType = {
            type = "string",
        },
        lastRefreshTimestamp = {
            type = "timestamp",
        },
        finding = {
            type = "string",
        },
        findingReasonCodes = {
            type = "list",
            member = { type = "string" },
        },
        serviceRecommendationOptions = {
            type = "list",
            member = M.ECSServiceRecommendationOption,
        },
        currentPerformanceRisk = {
            type = "string",
        },
        effectiveRecommendationPreferences = M.ECSEffectiveRecommendationPreferences,
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.GetECSServiceRecommendationsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        ecsServiceRecommendations = {
            type = "list",
            member = M.ECSServiceRecommendation,
        },
        errors = {
            type = "list",
            member = M.GetRecommendationError,
        },
    },
}

M.GetEffectiveRecommendationPreferencesInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetEffectiveRecommendationPreferencesOutput = {
    type = "structure",
    members = {
        enhancedInfrastructureMetrics = {
            type = "string",
        },
        externalMetricsPreference = M.ExternalMetricsPreference,
        lookBackPeriod = {
            type = "string",
        },
        utilizationPreferences = {
            type = "list",
            member = M.UtilizationPreference,
        },
        preferredResources = {
            type = "list",
            member = M.EffectivePreferredResource,
        },
    },
}

M.GetEnrollmentStatusInput = {
    type = "structure",
}

M.GetEnrollmentStatusOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        memberAccountsEnrolled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        lastUpdatedTimestamp = {
            type = "timestamp",
        },
        numberOfMemberAccountsOptedIn = {
            type = "integer",
        },
    },
}

M.EnrollmentFilterName = {
    STATUS = "Status",
}

M.EnrollmentFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetEnrollmentStatusesForOrganizationInput = {
    type = "structure",
    members = {
        filters = {
            type = "list",
            member = M.EnrollmentFilter,
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.GetEnrollmentStatusesForOrganizationOutput = {
    type = "structure",
    members = {
        accountEnrollmentStatuses = {
            type = "list",
            member = M.AccountEnrollmentStatus,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.Dimension = {
    SAVINGS_VALUE = "SavingsValue",
    SAVINGS_VALUE_AFTER_DISCOUNT = "SavingsValueAfterDiscount",
}

M.Order = {
    ASC = "Asc",
    DESC = "Desc",
}

M.OrderBy = {
    type = "structure",
    members = {
        dimension = {
            type = "string",
        },
        order = {
            type = "string",
        },
    },
}

M.GetIdleRecommendationsInput = {
    type = "structure",
    members = {
        resourceArns = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        filters = {
            type = "list",
            member = M.IdleRecommendationFilter,
        },
        accountIds = {
            type = "list",
            member = { type = "string" },
        },
        orderBy = M.OrderBy,
    },
}

M.IdleRecommendationResourceType = {
    EC2_INSTANCE = "EC2Instance",
    AUTO_SCALING_GROUP = "AutoScalingGroup",
    EBS_VOLUME = "EBSVolume",
    ECS_SERVICE = "ECSService",
    RDS_DB_INSTANCE = "RDSDBInstance",
    NAT_GATEWAY = "NatGateway",
}

M.IdleRecommendationError = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
        },
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
    },
}

M.IdleFinding = {
    IDLE = "Idle",
    UNATTACHED = "Unattached",
    UNUSED = "Unused",
}

M.IdleEstimatedMonthlySavings = {
    type = "structure",
    members = {
        currency = {
            type = "string",
        },
        value = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.IdleSavingsOpportunity = {
    type = "structure",
    members = {
        savingsOpportunityPercentage = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        estimatedMonthlySavings = M.IdleEstimatedMonthlySavings,
    },
}

M.IdleSavingsOpportunityAfterDiscounts = {
    type = "structure",
    members = {
        savingsOpportunityPercentage = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        estimatedMonthlySavings = M.IdleEstimatedMonthlySavings,
    },
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

M.IdleUtilizationMetric = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        statistic = {
            type = "string",
        },
        value = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.IdleRecommendation = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
        },
        resourceId = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        accountId = {
            type = "string",
        },
        finding = {
            type = "string",
        },
        findingDescription = {
            type = "string",
        },
        savingsOpportunity = M.IdleSavingsOpportunity,
        savingsOpportunityAfterDiscounts = M.IdleSavingsOpportunityAfterDiscounts,
        utilizationMetrics = {
            type = "list",
            member = M.IdleUtilizationMetric,
        },
        lookBackPeriodInDays = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        lastRefreshTimestamp = {
            type = "timestamp",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.GetIdleRecommendationsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        idleRecommendations = {
            type = "list",
            member = M.IdleRecommendation,
        },
        errors = {
            type = "list",
            member = M.IdleRecommendationError,
        },
    },
}

M.GetLambdaFunctionRecommendationsInput = {
    type = "structure",
    members = {
        functionArns = {
            type = "list",
            member = { type = "string" },
        },
        accountIds = {
            type = "list",
            member = { type = "string" },
        },
        filters = {
            type = "list",
            member = M.LambdaFunctionRecommendationFilter,
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.LambdaSavingsEstimationModeSource = {
    PUBLIC_PRICING = "PublicPricing",
    COST_EXPLORER_RIGHTSIZING = "CostExplorerRightsizing",
    COST_OPTIMIZATION_HUB = "CostOptimizationHub",
}

M.LambdaSavingsEstimationMode = {
    type = "structure",
    members = {
        source = {
            type = "string",
        },
    },
}

M.LambdaEffectiveRecommendationPreferences = {
    type = "structure",
    members = {
        savingsEstimationMode = M.LambdaSavingsEstimationMode,
    },
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

M.LambdaFunctionMemoryProjectedMetric = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        statistic = {
            type = "string",
        },
        value = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.LambdaEstimatedMonthlySavings = {
    type = "structure",
    members = {
        currency = {
            type = "string",
        },
        value = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.LambdaSavingsOpportunityAfterDiscounts = {
    type = "structure",
    members = {
        savingsOpportunityPercentage = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        estimatedMonthlySavings = M.LambdaEstimatedMonthlySavings,
    },
}

M.LambdaFunctionMemoryRecommendationOption = {
    type = "structure",
    members = {
        rank = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        memorySize = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        projectedUtilizationMetrics = {
            type = "list",
            member = M.LambdaFunctionMemoryProjectedMetric,
        },
        savingsOpportunity = M.SavingsOpportunity,
        savingsOpportunityAfterDiscounts = M.LambdaSavingsOpportunityAfterDiscounts,
    },
}

M.LambdaFunctionMetricName = {
    DURATION = "Duration",
    MEMORY = "Memory",
}

M.LambdaFunctionMetricStatistic = {
    MAXIMUM = "Maximum",
    AVERAGE = "Average",
}

M.LambdaFunctionUtilizationMetric = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        statistic = {
            type = "string",
        },
        value = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.LambdaFunctionRecommendation = {
    type = "structure",
    members = {
        functionArn = {
            type = "string",
        },
        functionVersion = {
            type = "string",
        },
        accountId = {
            type = "string",
        },
        currentMemorySize = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        numberOfInvocations = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        utilizationMetrics = {
            type = "list",
            member = M.LambdaFunctionUtilizationMetric,
        },
        lookbackPeriodInDays = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        lastRefreshTimestamp = {
            type = "timestamp",
        },
        finding = {
            type = "string",
        },
        findingReasonCodes = {
            type = "list",
            member = { type = "string" },
        },
        memorySizeRecommendationOptions = {
            type = "list",
            member = M.LambdaFunctionMemoryRecommendationOption,
        },
        currentPerformanceRisk = {
            type = "string",
        },
        effectiveRecommendationPreferences = M.LambdaEffectiveRecommendationPreferences,
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.GetLambdaFunctionRecommendationsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        lambdaFunctionRecommendations = {
            type = "list",
            member = M.LambdaFunctionRecommendation,
        },
    },
}

M.GetLicenseRecommendationsInput = {
    type = "structure",
    members = {
        resourceArns = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        filters = {
            type = "list",
            member = M.LicenseRecommendationFilter,
        },
        accountIds = {
            type = "list",
            member = { type = "string" },
        },
    },
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

M.MetricSource = {
    type = "structure",
    members = {
        provider = {
            type = "string",
        },
        providerArn = {
            type = "string",
        },
    },
}

M.LicenseConfiguration = {
    type = "structure",
    members = {
        numberOfCores = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        instanceType = {
            type = "string",
        },
        operatingSystem = {
            type = "string",
        },
        licenseEdition = {
            type = "string",
        },
        licenseName = {
            type = "string",
        },
        licenseModel = {
            type = "string",
        },
        licenseVersion = {
            type = "string",
        },
        metricsSource = {
            type = "list",
            member = M.MetricSource,
        },
    },
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

M.LicenseRecommendationOption = {
    type = "structure",
    members = {
        rank = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        operatingSystem = {
            type = "string",
        },
        licenseEdition = {
            type = "string",
        },
        licenseModel = {
            type = "string",
        },
        savingsOpportunity = M.SavingsOpportunity,
    },
}

M.LicenseRecommendation = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
        },
        accountId = {
            type = "string",
        },
        currentLicenseConfiguration = M.LicenseConfiguration,
        lookbackPeriodInDays = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        lastRefreshTimestamp = {
            type = "timestamp",
        },
        finding = {
            type = "string",
        },
        findingReasonCodes = {
            type = "list",
            member = { type = "string" },
        },
        licenseRecommendationOptions = {
            type = "list",
            member = M.LicenseRecommendationOption,
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.GetLicenseRecommendationsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        licenseRecommendations = {
            type = "list",
            member = M.LicenseRecommendation,
        },
        errors = {
            type = "list",
            member = M.GetRecommendationError,
        },
    },
}

M.GetRDSDatabaseRecommendationProjectedMetricsInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        period = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        recommendationPreferences = M.RecommendationPreferences,
    },
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

M.RDSDatabaseProjectedMetric = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        timestamps = {
            type = "list",
            member = { type = "timestamp" },
        },
        values = {
            type = "list",
            member = { type = "double" },
        },
    },
}

M.RDSDatabaseRecommendedOptionProjectedMetric = {
    type = "structure",
    members = {
        recommendedDBInstanceClass = {
            type = "string",
        },
        rank = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        projectedMetrics = {
            type = "list",
            member = M.RDSDatabaseProjectedMetric,
        },
    },
}

M.GetRDSDatabaseRecommendationProjectedMetricsOutput = {
    type = "structure",
    members = {
        recommendedOptionProjectedMetrics = {
            type = "list",
            member = M.RDSDatabaseRecommendedOptionProjectedMetric,
        },
    },
}

M.GetRDSDatabaseRecommendationsInput = {
    type = "structure",
    members = {
        resourceArns = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        filters = {
            type = "list",
            member = M.RDSDBRecommendationFilter,
        },
        accountIds = {
            type = "list",
            member = { type = "string" },
        },
        recommendationPreferences = M.RecommendationPreferences,
    },
}

M.RDSCurrentInstancePerformanceRisk = {
    VERY_LOW = "VeryLow",
    LOW = "Low",
    MEDIUM = "Medium",
    HIGH = "High",
}

M.DBStorageConfiguration = {
    type = "structure",
    members = {
        storageType = {
            type = "string",
        },
        allocatedStorage = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        iops = {
            type = "integer",
        },
        maxAllocatedStorage = {
            type = "integer",
        },
        storageThroughput = {
            type = "integer",
        },
    },
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

M.RDSSavingsEstimationMode = {
    type = "structure",
    members = {
        source = {
            type = "string",
        },
    },
}

M.RDSEffectiveRecommendationPreferences = {
    type = "structure",
    members = {
        cpuVendorArchitectures = {
            type = "list",
            member = { type = "string" },
        },
        enhancedInfrastructureMetrics = {
            type = "string",
        },
        lookBackPeriod = {
            type = "string",
        },
        savingsEstimationMode = M.RDSSavingsEstimationMode,
    },
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

M.RDSDBUtilizationMetric = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        statistic = {
            type = "string",
        },
        value = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.RDSInstanceEstimatedMonthlySavings = {
    type = "structure",
    members = {
        currency = {
            type = "string",
        },
        value = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.RDSInstanceSavingsOpportunityAfterDiscounts = {
    type = "structure",
    members = {
        savingsOpportunityPercentage = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        estimatedMonthlySavings = M.RDSInstanceEstimatedMonthlySavings,
    },
}

M.RDSDBInstanceRecommendationOption = {
    type = "structure",
    members = {
        dbInstanceClass = {
            type = "string",
        },
        projectedUtilizationMetrics = {
            type = "list",
            member = M.RDSDBUtilizationMetric,
        },
        performanceRisk = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        rank = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        savingsOpportunity = M.SavingsOpportunity,
        savingsOpportunityAfterDiscounts = M.RDSInstanceSavingsOpportunityAfterDiscounts,
    },
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

M.RDSStorageEstimatedMonthlySavings = {
    type = "structure",
    members = {
        currency = {
            type = "string",
        },
        value = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.RDSStorageSavingsOpportunityAfterDiscounts = {
    type = "structure",
    members = {
        savingsOpportunityPercentage = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        estimatedMonthlySavings = M.RDSStorageEstimatedMonthlySavings,
    },
}

M.RDSDBStorageRecommendationOption = {
    type = "structure",
    members = {
        storageConfiguration = M.DBStorageConfiguration,
        rank = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        savingsOpportunity = M.SavingsOpportunity,
        savingsOpportunityAfterDiscounts = M.RDSStorageSavingsOpportunityAfterDiscounts,
        estimatedMonthlyVolumeIOPsCostVariation = {
            type = "string",
        },
    },
}

M.RDSDBRecommendation = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
        },
        accountId = {
            type = "string",
        },
        engine = {
            type = "string",
        },
        engineVersion = {
            type = "string",
        },
        promotionTier = {
            type = "integer",
        },
        currentDBInstanceClass = {
            type = "string",
        },
        currentStorageConfiguration = M.DBStorageConfiguration,
        dbClusterIdentifier = {
            type = "string",
        },
        idle = {
            type = "string",
        },
        instanceFinding = {
            type = "string",
        },
        storageFinding = {
            type = "string",
        },
        instanceFindingReasonCodes = {
            type = "list",
            member = { type = "string" },
        },
        currentInstancePerformanceRisk = {
            type = "string",
        },
        currentStorageEstimatedMonthlyVolumeIOPsCostVariation = {
            type = "string",
        },
        storageFindingReasonCodes = {
            type = "list",
            member = { type = "string" },
        },
        instanceRecommendationOptions = {
            type = "list",
            member = M.RDSDBInstanceRecommendationOption,
        },
        storageRecommendationOptions = {
            type = "list",
            member = M.RDSDBStorageRecommendationOption,
        },
        utilizationMetrics = {
            type = "list",
            member = M.RDSDBUtilizationMetric,
        },
        effectiveRecommendationPreferences = M.RDSEffectiveRecommendationPreferences,
        lookbackPeriodInDays = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        lastRefreshTimestamp = {
            type = "timestamp",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.GetRDSDatabaseRecommendationsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        rdsDBRecommendations = {
            type = "list",
            member = M.RDSDBRecommendation,
        },
        errors = {
            type = "list",
            member = M.GetRecommendationError,
        },
    },
}

M.GetRecommendationPreferencesInput = {
    type = "structure",
    members = {
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scope = M.Scope,
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.SavingsEstimationMode = {
    AFTER_DISCOUNTS = "AfterDiscounts",
    BEFORE_DISCOUNTS = "BeforeDiscounts",
}

M.RecommendationPreferencesDetail = {
    type = "structure",
    members = {
        scope = M.Scope,
        resourceType = {
            type = "string",
        },
        enhancedInfrastructureMetrics = {
            type = "string",
        },
        inferredWorkloadTypes = {
            type = "string",
        },
        externalMetricsPreference = M.ExternalMetricsPreference,
        lookBackPeriod = {
            type = "string",
        },
        utilizationPreferences = {
            type = "list",
            member = M.UtilizationPreference,
        },
        preferredResources = {
            type = "list",
            member = M.EffectivePreferredResource,
        },
        savingsEstimationMode = {
            type = "string",
        },
    },
}

M.GetRecommendationPreferencesOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        recommendationPreferencesDetails = {
            type = "list",
            member = M.RecommendationPreferencesDetail,
        },
    },
}

M.GetRecommendationSummariesInput = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.CurrentPerformanceRiskRatings = {
    type = "structure",
    members = {
        high = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        medium = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        low = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        veryLow = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.IdleSummary = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        value = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.InferredWorkloadSaving = {
    type = "structure",
    members = {
        inferredWorkloadTypes = {
            type = "list",
            member = { type = "string" },
        },
        estimatedMonthlySavings = M.EstimatedMonthlySavings,
    },
}

M.FindingReasonCode = {
    MEMORY_OVER_PROVISIONED = "MemoryOverprovisioned",
    MEMORY_UNDER_PROVISIONED = "MemoryUnderprovisioned",
}

M.ReasonCodeSummary = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        value = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.Summary = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        value = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        reasonCodeSummaries = {
            type = "list",
            member = M.ReasonCodeSummary,
        },
    },
}

M.RecommendationSummary = {
    type = "structure",
    members = {
        summaries = {
            type = "list",
            member = M.Summary,
        },
        idleSummaries = {
            type = "list",
            member = M.IdleSummary,
        },
        recommendationResourceType = {
            type = "string",
        },
        accountId = {
            type = "string",
        },
        savingsOpportunity = M.SavingsOpportunity,
        idleSavingsOpportunity = M.SavingsOpportunity,
        aggregatedSavingsOpportunity = M.SavingsOpportunity,
        currentPerformanceRiskRatings = M.CurrentPerformanceRiskRatings,
        inferredWorkloadSavings = {
            type = "list",
            member = M.InferredWorkloadSaving,
        },
    },
}

M.GetRecommendationSummariesOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        recommendationSummaries = {
            type = "list",
            member = M.RecommendationSummary,
        },
    },
}

M.PreferredResource = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        includeList = {
            type = "list",
            member = { type = "string" },
        },
        excludeList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.PutRecommendationPreferencesInput = {
    type = "structure",
    members = {
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scope = M.Scope,
        enhancedInfrastructureMetrics = {
            type = "string",
        },
        inferredWorkloadTypes = {
            type = "string",
        },
        externalMetricsPreference = M.ExternalMetricsPreference,
        lookBackPeriod = {
            type = "string",
        },
        utilizationPreferences = {
            type = "list",
            member = M.UtilizationPreference,
        },
        preferredResources = {
            type = "list",
            member = M.PreferredResource,
        },
        savingsEstimationMode = {
            type = "string",
        },
    },
}

M.PutRecommendationPreferencesOutput = {
    type = "structure",
}

M.UpdateEnrollmentStatusInput = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        includeMemberAccounts = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.UpdateEnrollmentStatusOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
    },
}

return M
