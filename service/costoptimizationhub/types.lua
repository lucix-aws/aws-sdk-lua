local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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

M.EnrollmentStatus = {
    ACTIVE = "Active",
    INACTIVE = "Inactive",
}

M.AccountEnrollmentStatus = {
    type = "structure",
    id = "AccountEnrollmentStatus",
    members = {
        accountId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        lastUpdatedTimestamp = {
            type = "timestamp",
        },
        createdTimestamp = {
            type = "timestamp",
        },
    },
}

M.ActionType = {
    RIGHTSIZE = "Rightsize",
    STOP = "Stop",
    UPGRADE = "Upgrade",
    PURCHASE_SAVINGS_PLANS = "PurchaseSavingsPlans",
    PURCHASE_RESERVED_INSTANCES = "PurchaseReservedInstances",
    MIGRATE_TO_GRAVITON = "MigrateToGraviton",
    DELETE = "Delete",
    SCALE_IN = "ScaleIn",
}

M.AllocationStrategy = {
    PRIORITIZED = "Prioritized",
    LOWEST_PRICE = "LowestPrice",
}

M.AuroraDbClusterStorageConfiguration = {
    type = "structure",
    id = "AuroraDbClusterStorageConfiguration",
    members = {
        storageType = {
            type = "string",
        },
    },
}

M.EstimatedDiscounts = {
    type = "structure",
    id = "EstimatedDiscounts",
    members = {
        savingsPlansDiscount = {
            type = "double",
        },
        reservedInstancesDiscount = {
            type = "double",
        },
        otherDiscount = {
            type = "double",
        },
    },
}

M.ResourcePricing = {
    type = "structure",
    id = "ResourcePricing",
    members = {
        estimatedCostBeforeDiscounts = {
            type = "double",
        },
        estimatedNetUnusedAmortizedCommitments = {
            type = "double",
        },
        estimatedDiscounts = M.EstimatedDiscounts,
        estimatedCostAfterDiscounts = {
            type = "double",
        },
    },
}

M.Usage = {
    type = "structure",
    id = "Usage",
    members = {
        usageType = {
            type = "string",
        },
        usageAmount = {
            type = "double",
        },
        operation = {
            type = "string",
        },
        productCode = {
            type = "string",
        },
        unit = {
            type = "string",
        },
    },
}

M.ResourceCostCalculation = {
    type = "structure",
    id = "ResourceCostCalculation",
    members = {
        usages = {
            type = "list",
            member = M.Usage,
        },
        pricing = M.ResourcePricing,
    },
}

M.AuroraDbClusterStorage = {
    type = "structure",
    id = "AuroraDbClusterStorage",
    members = {
        configuration = M.AuroraDbClusterStorageConfiguration,
        costCalculation = M.ResourceCostCalculation,
    },
}

M.BlockStoragePerformanceConfiguration = {
    type = "structure",
    id = "BlockStoragePerformanceConfiguration",
    members = {
        iops = {
            type = "double",
        },
        throughput = {
            type = "double",
        },
    },
}

M.ComputeConfiguration = {
    type = "structure",
    id = "ComputeConfiguration",
    members = {
        vCpu = {
            type = "double",
        },
        memorySizeInMB = {
            type = "integer",
        },
        architecture = {
            type = "string",
        },
        platform = {
            type = "string",
        },
    },
}

M.ComputeSavingsPlansConfiguration = {
    type = "structure",
    id = "ComputeSavingsPlansConfiguration",
    members = {
        accountScope = {
            type = "string",
        },
        term = {
            type = "string",
        },
        paymentOption = {
            type = "string",
        },
        hourlyCommitment = {
            type = "string",
        },
    },
}

M.SavingsPlansPricing = {
    type = "structure",
    id = "SavingsPlansPricing",
    members = {
        monthlySavingsPlansEligibleCost = {
            type = "double",
        },
        estimatedMonthlyCommitment = {
            type = "double",
        },
        savingsPercentage = {
            type = "double",
        },
        estimatedOnDemandCost = {
            type = "double",
        },
    },
}

M.SavingsPlansCostCalculation = {
    type = "structure",
    id = "SavingsPlansCostCalculation",
    members = {
        pricing = M.SavingsPlansPricing,
    },
}

M.ComputeSavingsPlans = {
    type = "structure",
    id = "ComputeSavingsPlans",
    members = {
        configuration = M.ComputeSavingsPlansConfiguration,
        costCalculation = M.SavingsPlansCostCalculation,
    },
}

M.GetPreferencesInput = {
    type = "structure",
    id = "GetPreferencesInput",
}

M.MemberAccountDiscountVisibility = {
    ALL = "All",
    NONE = "None",
}

M.PaymentOption = {
    ALL_UPFRONT = "AllUpfront",
    PARTIAL_UPFRONT = "PartialUpfront",
    NO_UPFRONT = "NoUpfront",
}

M.Term = {
    ONE_YEAR = "OneYear",
    THREE_YEARS = "ThreeYears",
}

M.PreferredCommitment = {
    type = "structure",
    id = "PreferredCommitment",
    members = {
        term = {
            type = "string",
        },
        paymentOption = {
            type = "string",
        },
    },
}

M.SavingsEstimationMode = {
    BEFORE_DISCOUNTS = "BeforeDiscounts",
    AFTER_DISCOUNTS = "AfterDiscounts",
}

M.GetPreferencesOutput = {
    type = "structure",
    id = "GetPreferencesOutput",
    members = {
        savingsEstimationMode = {
            type = "string",
        },
        memberAccountDiscountVisibility = {
            type = "string",
        },
        preferredCommitment = M.PreferredCommitment,
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
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
        },
    },
}

M.ValidationExceptionDetail = {
    type = "structure",
    id = "ValidationExceptionDetail",
    members = {
        fieldName = {
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

M.ValidationExceptionReason = {
    FIELD_VALIDATION_FAILED = "FieldValidationFailed",
    OTHER = "Other",
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
        },
        fields = {
            type = "list",
            member = M.ValidationExceptionDetail,
        },
    },
}

M.GetRecommendationInput = {
    type = "structure",
    id = "GetRecommendationInput",
    members = {
        recommendationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DynamoDbReservedCapacityConfiguration = {
    type = "structure",
    id = "DynamoDbReservedCapacityConfiguration",
    members = {
        accountScope = {
            type = "string",
        },
        service = {
            type = "string",
        },
        term = {
            type = "string",
        },
        paymentOption = {
            type = "string",
        },
        reservedInstancesRegion = {
            type = "string",
        },
        upfrontCost = {
            type = "string",
        },
        monthlyRecurringCost = {
            type = "string",
        },
        numberOfCapacityUnitsToPurchase = {
            type = "string",
        },
        capacityUnits = {
            type = "string",
        },
    },
}

M.ReservedInstancesPricing = {
    type = "structure",
    id = "ReservedInstancesPricing",
    members = {
        estimatedOnDemandCost = {
            type = "double",
        },
        monthlyReservationEligibleCost = {
            type = "double",
        },
        savingsPercentage = {
            type = "double",
        },
        estimatedMonthlyAmortizedReservationCost = {
            type = "double",
        },
    },
}

M.ReservedInstancesCostCalculation = {
    type = "structure",
    id = "ReservedInstancesCostCalculation",
    members = {
        pricing = M.ReservedInstancesPricing,
    },
}

M.DynamoDbReservedCapacity = {
    type = "structure",
    id = "DynamoDbReservedCapacity",
    members = {
        configuration = M.DynamoDbReservedCapacityConfiguration,
        costCalculation = M.ReservedInstancesCostCalculation,
    },
}

M.StorageConfiguration = {
    type = "structure",
    id = "StorageConfiguration",
    members = {
        type = {
            type = "string",
        },
        sizeInGb = {
            type = "double",
        },
    },
}

M.EbsVolumeConfiguration = {
    type = "structure",
    id = "EbsVolumeConfiguration",
    members = {
        storage = M.StorageConfiguration,
        performance = M.BlockStoragePerformanceConfiguration,
        attachmentState = {
            type = "string",
        },
    },
}

M.EbsVolume = {
    type = "structure",
    id = "EbsVolume",
    members = {
        configuration = M.EbsVolumeConfiguration,
        costCalculation = M.ResourceCostCalculation,
    },
}

M.InstanceConfiguration = {
    type = "structure",
    id = "InstanceConfiguration",
    members = {
        type = {
            type = "string",
        },
    },
}

M.MixedInstanceConfiguration = {
    type = "structure",
    id = "MixedInstanceConfiguration",
    members = {
        type = {
            type = "string",
        },
    },
}

M.Ec2AutoScalingGroupType = {
    SINGLE_INSTANCE_TYPE = "SingleInstanceType",
    MIXED_INSTANCE_TYPES = "MixedInstanceTypes",
}

M.Ec2AutoScalingGroupConfiguration = {
    type = "structure",
    id = "Ec2AutoScalingGroupConfiguration",
    members = {
        instance = M.InstanceConfiguration,
        mixedInstances = {
            type = "list",
            member = M.MixedInstanceConfiguration,
        },
        type = {
            type = "string",
        },
        allocationStrategy = {
            type = "string",
        },
    },
}

M.Ec2AutoScalingGroup = {
    type = "structure",
    id = "Ec2AutoScalingGroup",
    members = {
        configuration = M.Ec2AutoScalingGroupConfiguration,
        costCalculation = M.ResourceCostCalculation,
    },
}

M.Ec2InstanceConfiguration = {
    type = "structure",
    id = "Ec2InstanceConfiguration",
    members = {
        instance = M.InstanceConfiguration,
    },
}

M.Ec2Instance = {
    type = "structure",
    id = "Ec2Instance",
    members = {
        configuration = M.Ec2InstanceConfiguration,
        costCalculation = M.ResourceCostCalculation,
    },
}

M.Ec2InstanceSavingsPlansConfiguration = {
    type = "structure",
    id = "Ec2InstanceSavingsPlansConfiguration",
    members = {
        accountScope = {
            type = "string",
        },
        term = {
            type = "string",
        },
        paymentOption = {
            type = "string",
        },
        hourlyCommitment = {
            type = "string",
        },
        instanceFamily = {
            type = "string",
        },
        savingsPlansRegion = {
            type = "string",
        },
    },
}

M.Ec2InstanceSavingsPlans = {
    type = "structure",
    id = "Ec2InstanceSavingsPlans",
    members = {
        configuration = M.Ec2InstanceSavingsPlansConfiguration,
        costCalculation = M.SavingsPlansCostCalculation,
    },
}

M.Ec2ReservedInstancesConfiguration = {
    type = "structure",
    id = "Ec2ReservedInstancesConfiguration",
    members = {
        accountScope = {
            type = "string",
        },
        service = {
            type = "string",
        },
        term = {
            type = "string",
        },
        paymentOption = {
            type = "string",
        },
        reservedInstancesRegion = {
            type = "string",
        },
        upfrontCost = {
            type = "string",
        },
        monthlyRecurringCost = {
            type = "string",
        },
        normalizedUnitsToPurchase = {
            type = "string",
        },
        numberOfInstancesToPurchase = {
            type = "string",
        },
        offeringClass = {
            type = "string",
        },
        instanceFamily = {
            type = "string",
        },
        instanceType = {
            type = "string",
        },
        currentGeneration = {
            type = "string",
        },
        platform = {
            type = "string",
        },
        tenancy = {
            type = "string",
        },
        sizeFlexEligible = {
            type = "boolean",
        },
    },
}

M.Ec2ReservedInstances = {
    type = "structure",
    id = "Ec2ReservedInstances",
    members = {
        configuration = M.Ec2ReservedInstancesConfiguration,
        costCalculation = M.ReservedInstancesCostCalculation,
    },
}

M.EcsServiceConfiguration = {
    type = "structure",
    id = "EcsServiceConfiguration",
    members = {
        compute = M.ComputeConfiguration,
    },
}

M.EcsService = {
    type = "structure",
    id = "EcsService",
    members = {
        configuration = M.EcsServiceConfiguration,
        costCalculation = M.ResourceCostCalculation,
    },
}

M.ElastiCacheReservedInstancesConfiguration = {
    type = "structure",
    id = "ElastiCacheReservedInstancesConfiguration",
    members = {
        accountScope = {
            type = "string",
        },
        service = {
            type = "string",
        },
        term = {
            type = "string",
        },
        paymentOption = {
            type = "string",
        },
        reservedInstancesRegion = {
            type = "string",
        },
        upfrontCost = {
            type = "string",
        },
        monthlyRecurringCost = {
            type = "string",
        },
        normalizedUnitsToPurchase = {
            type = "string",
        },
        numberOfInstancesToPurchase = {
            type = "string",
        },
        instanceFamily = {
            type = "string",
        },
        instanceType = {
            type = "string",
        },
        currentGeneration = {
            type = "string",
        },
        sizeFlexEligible = {
            type = "boolean",
        },
    },
}

M.ElastiCacheReservedInstances = {
    type = "structure",
    id = "ElastiCacheReservedInstances",
    members = {
        configuration = M.ElastiCacheReservedInstancesConfiguration,
        costCalculation = M.ReservedInstancesCostCalculation,
    },
}

M.LambdaFunctionConfiguration = {
    type = "structure",
    id = "LambdaFunctionConfiguration",
    members = {
        compute = M.ComputeConfiguration,
    },
}

M.LambdaFunction = {
    type = "structure",
    id = "LambdaFunction",
    members = {
        configuration = M.LambdaFunctionConfiguration,
        costCalculation = M.ResourceCostCalculation,
    },
}

M.MemoryDbReservedInstancesConfiguration = {
    type = "structure",
    id = "MemoryDbReservedInstancesConfiguration",
    members = {
        accountScope = {
            type = "string",
        },
        service = {
            type = "string",
        },
        term = {
            type = "string",
        },
        paymentOption = {
            type = "string",
        },
        reservedInstancesRegion = {
            type = "string",
        },
        upfrontCost = {
            type = "string",
        },
        monthlyRecurringCost = {
            type = "string",
        },
        normalizedUnitsToPurchase = {
            type = "string",
        },
        numberOfInstancesToPurchase = {
            type = "string",
        },
        instanceType = {
            type = "string",
        },
        instanceFamily = {
            type = "string",
        },
        sizeFlexEligible = {
            type = "boolean",
        },
        currentGeneration = {
            type = "string",
        },
    },
}

M.MemoryDbReservedInstances = {
    type = "structure",
    id = "MemoryDbReservedInstances",
    members = {
        configuration = M.MemoryDbReservedInstancesConfiguration,
        costCalculation = M.ReservedInstancesCostCalculation,
    },
}

M.NatGatewayConfiguration = {
    type = "structure",
    id = "NatGatewayConfiguration",
    members = {
        activeConnectionCount = {
            type = "long",
        },
        packetsInFromSource = {
            type = "long",
        },
        packetsInFromDestination = {
            type = "long",
        },
    },
}

M.NatGateway = {
    type = "structure",
    id = "NatGateway",
    members = {
        configuration = M.NatGatewayConfiguration,
        costCalculation = M.ResourceCostCalculation,
    },
}

M.OpenSearchReservedInstancesConfiguration = {
    type = "structure",
    id = "OpenSearchReservedInstancesConfiguration",
    members = {
        accountScope = {
            type = "string",
        },
        service = {
            type = "string",
        },
        term = {
            type = "string",
        },
        paymentOption = {
            type = "string",
        },
        reservedInstancesRegion = {
            type = "string",
        },
        upfrontCost = {
            type = "string",
        },
        monthlyRecurringCost = {
            type = "string",
        },
        normalizedUnitsToPurchase = {
            type = "string",
        },
        numberOfInstancesToPurchase = {
            type = "string",
        },
        instanceType = {
            type = "string",
        },
        currentGeneration = {
            type = "string",
        },
        sizeFlexEligible = {
            type = "boolean",
        },
    },
}

M.OpenSearchReservedInstances = {
    type = "structure",
    id = "OpenSearchReservedInstances",
    members = {
        configuration = M.OpenSearchReservedInstancesConfiguration,
        costCalculation = M.ReservedInstancesCostCalculation,
    },
}

M.DbInstanceConfiguration = {
    type = "structure",
    id = "DbInstanceConfiguration",
    members = {
        dbInstanceClass = {
            type = "string",
        },
    },
}

M.RdsDbInstanceConfiguration = {
    type = "structure",
    id = "RdsDbInstanceConfiguration",
    members = {
        instance = M.DbInstanceConfiguration,
    },
}

M.RdsDbInstance = {
    type = "structure",
    id = "RdsDbInstance",
    members = {
        configuration = M.RdsDbInstanceConfiguration,
        costCalculation = M.ResourceCostCalculation,
    },
}

M.RdsDbInstanceStorageConfiguration = {
    type = "structure",
    id = "RdsDbInstanceStorageConfiguration",
    members = {
        storageType = {
            type = "string",
        },
        allocatedStorageInGb = {
            type = "double",
        },
        iops = {
            type = "double",
        },
        storageThroughput = {
            type = "double",
        },
    },
}

M.RdsDbInstanceStorage = {
    type = "structure",
    id = "RdsDbInstanceStorage",
    members = {
        configuration = M.RdsDbInstanceStorageConfiguration,
        costCalculation = M.ResourceCostCalculation,
    },
}

M.RdsReservedInstancesConfiguration = {
    type = "structure",
    id = "RdsReservedInstancesConfiguration",
    members = {
        accountScope = {
            type = "string",
        },
        service = {
            type = "string",
        },
        term = {
            type = "string",
        },
        paymentOption = {
            type = "string",
        },
        reservedInstancesRegion = {
            type = "string",
        },
        upfrontCost = {
            type = "string",
        },
        monthlyRecurringCost = {
            type = "string",
        },
        normalizedUnitsToPurchase = {
            type = "string",
        },
        numberOfInstancesToPurchase = {
            type = "string",
        },
        instanceFamily = {
            type = "string",
        },
        instanceType = {
            type = "string",
        },
        sizeFlexEligible = {
            type = "boolean",
        },
        currentGeneration = {
            type = "string",
        },
        licenseModel = {
            type = "string",
        },
        databaseEdition = {
            type = "string",
        },
        databaseEngine = {
            type = "string",
        },
        deploymentOption = {
            type = "string",
        },
    },
}

M.RdsReservedInstances = {
    type = "structure",
    id = "RdsReservedInstances",
    members = {
        configuration = M.RdsReservedInstancesConfiguration,
        costCalculation = M.ReservedInstancesCostCalculation,
    },
}

M.RedshiftReservedInstancesConfiguration = {
    type = "structure",
    id = "RedshiftReservedInstancesConfiguration",
    members = {
        accountScope = {
            type = "string",
        },
        service = {
            type = "string",
        },
        term = {
            type = "string",
        },
        paymentOption = {
            type = "string",
        },
        reservedInstancesRegion = {
            type = "string",
        },
        upfrontCost = {
            type = "string",
        },
        monthlyRecurringCost = {
            type = "string",
        },
        normalizedUnitsToPurchase = {
            type = "string",
        },
        numberOfInstancesToPurchase = {
            type = "string",
        },
        instanceFamily = {
            type = "string",
        },
        instanceType = {
            type = "string",
        },
        sizeFlexEligible = {
            type = "boolean",
        },
        currentGeneration = {
            type = "string",
        },
    },
}

M.RedshiftReservedInstances = {
    type = "structure",
    id = "RedshiftReservedInstances",
    members = {
        configuration = M.RedshiftReservedInstancesConfiguration,
        costCalculation = M.ReservedInstancesCostCalculation,
    },
}

M.SageMakerSavingsPlansConfiguration = {
    type = "structure",
    id = "SageMakerSavingsPlansConfiguration",
    members = {
        accountScope = {
            type = "string",
        },
        term = {
            type = "string",
        },
        paymentOption = {
            type = "string",
        },
        hourlyCommitment = {
            type = "string",
        },
    },
}

M.SageMakerSavingsPlans = {
    type = "structure",
    id = "SageMakerSavingsPlans",
    members = {
        configuration = M.SageMakerSavingsPlansConfiguration,
        costCalculation = M.SavingsPlansCostCalculation,
    },
}

M.ResourceDetails = {
    type = "union",
    id = "ResourceDetails",
    members = {
        lambdaFunction = M.LambdaFunction,
        ecsService = M.EcsService,
        ec2Instance = M.Ec2Instance,
        ebsVolume = M.EbsVolume,
        ec2AutoScalingGroup = M.Ec2AutoScalingGroup,
        ec2ReservedInstances = M.Ec2ReservedInstances,
        rdsReservedInstances = M.RdsReservedInstances,
        elastiCacheReservedInstances = M.ElastiCacheReservedInstances,
        openSearchReservedInstances = M.OpenSearchReservedInstances,
        redshiftReservedInstances = M.RedshiftReservedInstances,
        ec2InstanceSavingsPlans = M.Ec2InstanceSavingsPlans,
        computeSavingsPlans = M.ComputeSavingsPlans,
        sageMakerSavingsPlans = M.SageMakerSavingsPlans,
        rdsDbInstance = M.RdsDbInstance,
        rdsDbInstanceStorage = M.RdsDbInstanceStorage,
        auroraDbClusterStorage = M.AuroraDbClusterStorage,
        dynamoDbReservedCapacity = M.DynamoDbReservedCapacity,
        memoryDbReservedInstances = M.MemoryDbReservedInstances,
        natGateway = M.NatGateway,
    },
}

M.ResourceType = {
    EC2_INSTANCE = "Ec2Instance",
    LAMBDA_FUNCTION = "LambdaFunction",
    EBS_VOLUME = "EbsVolume",
    ECS_SERVICE = "EcsService",
    EC2_AUTO_SCALING_GROUP = "Ec2AutoScalingGroup",
    EC2_INSTANCE_SAVINGS_PLANS = "Ec2InstanceSavingsPlans",
    COMPUTE_SAVINGS_PLANS = "ComputeSavingsPlans",
    SAGE_MAKER_SAVINGS_PLANS = "SageMakerSavingsPlans",
    EC2_RESERVED_INSTANCES = "Ec2ReservedInstances",
    RDS_RESERVED_INSTANCES = "RdsReservedInstances",
    OPEN_SEARCH_RESERVED_INSTANCES = "OpenSearchReservedInstances",
    REDSHIFT_RESERVED_INSTANCES = "RedshiftReservedInstances",
    ELASTI_CACHE_RESERVED_INSTANCES = "ElastiCacheReservedInstances",
    RDS_DB_INSTANCE_STORAGE = "RdsDbInstanceStorage",
    RDS_DB_INSTANCE = "RdsDbInstance",
    AURORA_DB_CLUSTER_STORAGE = "AuroraDbClusterStorage",
    DYNAMO_DB_RESERVED_CAPACITY = "DynamoDbReservedCapacity",
    MEMORY_DB_RESERVED_INSTANCES = "MemoryDbReservedInstances",
    NAT_GATEWAY = "NatGateway",
}

M.ImplementationEffort = {
    VERY_LOW = "VeryLow",
    LOW = "Low",
    MEDIUM = "Medium",
    HIGH = "High",
    VERY_HIGH = "VeryHigh",
}

M.Source = {
    COMPUTE_OPTIMIZER = "ComputeOptimizer",
    COST_EXPLORER = "CostExplorer",
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        key = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.GetRecommendationOutput = {
    type = "structure",
    id = "GetRecommendationOutput",
    members = {
        recommendationId = {
            type = "string",
        },
        resourceId = {
            type = "string",
        },
        resourceArn = {
            type = "string",
        },
        accountId = {
            type = "string",
        },
        currencyCode = {
            type = "string",
        },
        recommendationLookbackPeriodInDays = {
            type = "integer",
        },
        costCalculationLookbackPeriodInDays = {
            type = "integer",
        },
        estimatedSavingsPercentage = {
            type = "double",
        },
        estimatedSavingsOverCostCalculationLookbackPeriod = {
            type = "double",
        },
        currentResourceType = {
            type = "string",
        },
        recommendedResourceType = {
            type = "string",
        },
        region = {
            type = "string",
        },
        source = {
            type = "string",
        },
        lastRefreshTimestamp = {
            type = "timestamp",
        },
        estimatedMonthlySavings = {
            type = "double",
        },
        estimatedMonthlyCost = {
            type = "double",
        },
        implementationEffort = {
            type = "string",
        },
        restartNeeded = {
            type = "boolean",
        },
        actionType = {
            type = "string",
        },
        rollbackPossible = {
            type = "boolean",
        },
        currentResourceDetails = M.ResourceDetails,
        recommendedResourceDetails = M.ResourceDetails,
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
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
    },
}

M.GranularityType = {
    DAILY = "Daily",
    MONTHLY = "Monthly",
}

M.Order = {
    ASC = "Asc",
    DESC = "Desc",
}

M.OrderBy = {
    type = "structure",
    id = "OrderBy",
    members = {
        dimension = {
            type = "string",
        },
        order = {
            type = "string",
        },
    },
}

M.TimePeriod = {
    type = "structure",
    id = "TimePeriod",
    members = {
        start = {
            type = "string",
            traits = {
                required = true,
            },
        },
        end = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListEfficiencyMetricsInput = {
    type = "structure",
    id = "ListEfficiencyMetricsInput",
    members = {
        groupBy = {
            type = "string",
        },
        granularity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timePeriod = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TimePeriod }),
        maxResults = {
            type = "integer",
        },
        orderBy = M.OrderBy,
        nextToken = {
            type = "string",
        },
    },
}

M.MetricsByTime = {
    type = "structure",
    id = "MetricsByTime",
    members = {
        score = {
            type = "double",
        },
        savings = {
            type = "double",
        },
        spend = {
            type = "double",
        },
        timestamp = {
            type = "string",
        },
    },
}

M.EfficiencyMetricsByGroup = {
    type = "structure",
    id = "EfficiencyMetricsByGroup",
    members = {
        metricsByTime = {
            type = "list",
            member = M.MetricsByTime,
        },
        group = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.ListEfficiencyMetricsOutput = {
    type = "structure",
    id = "ListEfficiencyMetricsOutput",
    members = {
        efficiencyMetricsByGroup = {
            type = "list",
            member = M.EfficiencyMetricsByGroup,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListEnrollmentStatusesInput = {
    type = "structure",
    id = "ListEnrollmentStatusesInput",
    members = {
        includeOrganizationInfo = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        accountId = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ListEnrollmentStatusesOutput = {
    type = "structure",
    id = "ListEnrollmentStatusesOutput",
    members = {
        items = {
            type = "list",
            member = M.AccountEnrollmentStatus,
        },
        includeMemberAccounts = {
            type = "boolean",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.Filter = {
    type = "structure",
    id = "Filter",
    members = {
        restartNeeded = {
            type = "boolean",
        },
        rollbackPossible = {
            type = "boolean",
        },
        implementationEfforts = {
            type = "list",
            member = { type = "string" },
        },
        accountIds = {
            type = "list",
            member = { type = "string" },
        },
        regions = {
            type = "list",
            member = { type = "string" },
        },
        resourceTypes = {
            type = "list",
            member = { type = "string" },
        },
        actionTypes = {
            type = "list",
            member = { type = "string" },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        resourceIds = {
            type = "list",
            member = { type = "string" },
        },
        resourceArns = {
            type = "list",
            member = { type = "string" },
        },
        recommendationIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListRecommendationsInput = {
    type = "structure",
    id = "ListRecommendationsInput",
    members = {
        filter = M.Filter,
        orderBy = M.OrderBy,
        includeAllRecommendations = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.Recommendation = {
    type = "structure",
    id = "Recommendation",
    members = {
        recommendationId = {
            type = "string",
        },
        accountId = {
            type = "string",
        },
        region = {
            type = "string",
        },
        resourceId = {
            type = "string",
        },
        resourceArn = {
            type = "string",
        },
        currentResourceType = {
            type = "string",
        },
        recommendedResourceType = {
            type = "string",
        },
        estimatedMonthlySavings = {
            type = "double",
        },
        estimatedSavingsPercentage = {
            type = "double",
        },
        estimatedMonthlyCost = {
            type = "double",
        },
        currencyCode = {
            type = "string",
        },
        implementationEffort = {
            type = "string",
        },
        restartNeeded = {
            type = "boolean",
        },
        actionType = {
            type = "string",
        },
        rollbackPossible = {
            type = "boolean",
        },
        currentResourceSummary = {
            type = "string",
        },
        recommendedResourceSummary = {
            type = "string",
        },
        lastRefreshTimestamp = {
            type = "timestamp",
        },
        recommendationLookbackPeriodInDays = {
            type = "integer",
        },
        source = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ListRecommendationsOutput = {
    type = "structure",
    id = "ListRecommendationsOutput",
    members = {
        items = {
            type = "list",
            member = M.Recommendation,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SummaryMetrics = {
    SAVINGS_PERCENTAGE = "SavingsPercentage",
}

M.ListRecommendationSummariesInput = {
    type = "structure",
    id = "ListRecommendationSummariesInput",
    members = {
        filter = M.Filter,
        groupBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
        },
        metrics = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RecommendationSummary = {
    type = "structure",
    id = "RecommendationSummary",
    members = {
        group = {
            type = "string",
        },
        estimatedMonthlySavings = {
            type = "double",
        },
        recommendationCount = {
            type = "integer",
        },
    },
}

M.SummaryMetricsResult = {
    type = "structure",
    id = "SummaryMetricsResult",
    members = {
        savingsPercentage = {
            type = "string",
        },
    },
}

M.ListRecommendationSummariesOutput = {
    type = "structure",
    id = "ListRecommendationSummariesOutput",
    members = {
        estimatedTotalDedupedSavings = {
            type = "double",
        },
        items = {
            type = "list",
            member = M.RecommendationSummary,
        },
        groupBy = {
            type = "string",
        },
        currencyCode = {
            type = "string",
        },
        metrics = M.SummaryMetricsResult,
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateEnrollmentStatusInput = {
    type = "structure",
    id = "UpdateEnrollmentStatusInput",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        includeMemberAccounts = {
            type = "boolean",
        },
    },
}

M.UpdateEnrollmentStatusOutput = {
    type = "structure",
    id = "UpdateEnrollmentStatusOutput",
    members = {
        status = {
            type = "string",
        },
    },
}

M.UpdatePreferencesInput = {
    type = "structure",
    id = "UpdatePreferencesInput",
    members = {
        savingsEstimationMode = {
            type = "string",
        },
        memberAccountDiscountVisibility = {
            type = "string",
        },
        preferredCommitment = M.PreferredCommitment,
    },
}

M.UpdatePreferencesOutput = {
    type = "structure",
    id = "UpdatePreferencesOutput",
    members = {
        savingsEstimationMode = {
            type = "string",
        },
        memberAccountDiscountVisibility = {
            type = "string",
        },
        preferredCommitment = M.PreferredCommitment,
    },
}

return M
