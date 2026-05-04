local M = {}

M.AccessDeniedException = {
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

M.EnrollmentStatus = {
    ACTIVE = "Active",
    INACTIVE = "Inactive",
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
    members = {
        storageType = {
            type = "string",
        },
    },
}

M.EstimatedDiscounts = {
    type = "structure",
    members = {
        savingsPlansDiscount = {
            type = "number",
        },
        reservedInstancesDiscount = {
            type = "number",
        },
        otherDiscount = {
            type = "number",
        },
    },
}

M.ResourcePricing = {
    type = "structure",
    members = {
        estimatedCostBeforeDiscounts = {
            type = "number",
        },
        estimatedNetUnusedAmortizedCommitments = {
            type = "number",
        },
        estimatedDiscounts = {
            type = "structure",
        },
        estimatedCostAfterDiscounts = {
            type = "number",
        },
    },
}

M.Usage = {
    type = "structure",
    members = {
        usageType = {
            type = "string",
        },
        usageAmount = {
            type = "number",
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
    members = {
        usages = {
            type = "list",
            member_type = "structure",
        },
        pricing = {
            type = "structure",
        },
    },
}

M.AuroraDbClusterStorage = {
    type = "structure",
    members = {
        configuration = {
            type = "structure",
        },
        costCalculation = {
            type = "structure",
        },
    },
}

M.BlockStoragePerformanceConfiguration = {
    type = "structure",
    members = {
        iops = {
            type = "number",
        },
        throughput = {
            type = "number",
        },
    },
}

M.ComputeConfiguration = {
    type = "structure",
    members = {
        vCpu = {
            type = "number",
        },
        memorySizeInMB = {
            type = "number",
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
    members = {
        monthlySavingsPlansEligibleCost = {
            type = "number",
        },
        estimatedMonthlyCommitment = {
            type = "number",
        },
        savingsPercentage = {
            type = "number",
        },
        estimatedOnDemandCost = {
            type = "number",
        },
    },
}

M.SavingsPlansCostCalculation = {
    type = "structure",
    members = {
        pricing = {
            type = "structure",
        },
    },
}

M.ComputeSavingsPlans = {
    type = "structure",
    members = {
        configuration = {
            type = "structure",
        },
        costCalculation = {
            type = "structure",
        },
    },
}

M.GetPreferencesInput = {
    type = "structure",
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
    members = {
        savingsEstimationMode = {
            type = "string",
        },
        memberAccountDiscountVisibility = {
            type = "string",
        },
        preferredCommitment = {
            type = "structure",
        },
    },
}

M.InternalServerException = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationExceptionDetail = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.GetRecommendationInput = {
    type = "structure",
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
    members = {
        estimatedOnDemandCost = {
            type = "number",
        },
        monthlyReservationEligibleCost = {
            type = "number",
        },
        savingsPercentage = {
            type = "number",
        },
        estimatedMonthlyAmortizedReservationCost = {
            type = "number",
        },
    },
}

M.ReservedInstancesCostCalculation = {
    type = "structure",
    members = {
        pricing = {
            type = "structure",
        },
    },
}

M.DynamoDbReservedCapacity = {
    type = "structure",
    members = {
        configuration = {
            type = "structure",
        },
        costCalculation = {
            type = "structure",
        },
    },
}

M.StorageConfiguration = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        sizeInGb = {
            type = "number",
        },
    },
}

M.EbsVolumeConfiguration = {
    type = "structure",
    members = {
        storage = {
            type = "structure",
        },
        performance = {
            type = "structure",
        },
        attachmentState = {
            type = "string",
        },
    },
}

M.EbsVolume = {
    type = "structure",
    members = {
        configuration = {
            type = "structure",
        },
        costCalculation = {
            type = "structure",
        },
    },
}

M.InstanceConfiguration = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
    },
}

M.MixedInstanceConfiguration = {
    type = "structure",
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
    members = {
        instance = {
            type = "structure",
        },
        mixedInstances = {
            type = "list",
            member_type = "structure",
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
    members = {
        configuration = {
            type = "structure",
        },
        costCalculation = {
            type = "structure",
        },
    },
}

M.Ec2InstanceConfiguration = {
    type = "structure",
    members = {
        instance = {
            type = "structure",
        },
    },
}

M.Ec2Instance = {
    type = "structure",
    members = {
        configuration = {
            type = "structure",
        },
        costCalculation = {
            type = "structure",
        },
    },
}

M.Ec2InstanceSavingsPlansConfiguration = {
    type = "structure",
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
    members = {
        configuration = {
            type = "structure",
        },
        costCalculation = {
            type = "structure",
        },
    },
}

M.Ec2ReservedInstancesConfiguration = {
    type = "structure",
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
    members = {
        configuration = {
            type = "structure",
        },
        costCalculation = {
            type = "structure",
        },
    },
}

M.EcsServiceConfiguration = {
    type = "structure",
    members = {
        compute = {
            type = "structure",
        },
    },
}

M.EcsService = {
    type = "structure",
    members = {
        configuration = {
            type = "structure",
        },
        costCalculation = {
            type = "structure",
        },
    },
}

M.ElastiCacheReservedInstancesConfiguration = {
    type = "structure",
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
    members = {
        configuration = {
            type = "structure",
        },
        costCalculation = {
            type = "structure",
        },
    },
}

M.LambdaFunctionConfiguration = {
    type = "structure",
    members = {
        compute = {
            type = "structure",
        },
    },
}

M.LambdaFunction = {
    type = "structure",
    members = {
        configuration = {
            type = "structure",
        },
        costCalculation = {
            type = "structure",
        },
    },
}

M.MemoryDbReservedInstancesConfiguration = {
    type = "structure",
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
    members = {
        configuration = {
            type = "structure",
        },
        costCalculation = {
            type = "structure",
        },
    },
}

M.NatGatewayConfiguration = {
    type = "structure",
    members = {
        activeConnectionCount = {
            type = "number",
        },
        packetsInFromSource = {
            type = "number",
        },
        packetsInFromDestination = {
            type = "number",
        },
    },
}

M.NatGateway = {
    type = "structure",
    members = {
        configuration = {
            type = "structure",
        },
        costCalculation = {
            type = "structure",
        },
    },
}

M.OpenSearchReservedInstancesConfiguration = {
    type = "structure",
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
    members = {
        configuration = {
            type = "structure",
        },
        costCalculation = {
            type = "structure",
        },
    },
}

M.DbInstanceConfiguration = {
    type = "structure",
    members = {
        dbInstanceClass = {
            type = "string",
        },
    },
}

M.RdsDbInstanceConfiguration = {
    type = "structure",
    members = {
        instance = {
            type = "structure",
        },
    },
}

M.RdsDbInstance = {
    type = "structure",
    members = {
        configuration = {
            type = "structure",
        },
        costCalculation = {
            type = "structure",
        },
    },
}

M.RdsDbInstanceStorageConfiguration = {
    type = "structure",
    members = {
        storageType = {
            type = "string",
        },
        allocatedStorageInGb = {
            type = "number",
        },
        iops = {
            type = "number",
        },
        storageThroughput = {
            type = "number",
        },
    },
}

M.RdsDbInstanceStorage = {
    type = "structure",
    members = {
        configuration = {
            type = "structure",
        },
        costCalculation = {
            type = "structure",
        },
    },
}

M.RdsReservedInstancesConfiguration = {
    type = "structure",
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
    members = {
        configuration = {
            type = "structure",
        },
        costCalculation = {
            type = "structure",
        },
    },
}

M.RedshiftReservedInstancesConfiguration = {
    type = "structure",
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
    members = {
        configuration = {
            type = "structure",
        },
        costCalculation = {
            type = "structure",
        },
    },
}

M.SageMakerSavingsPlansConfiguration = {
    type = "structure",
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
    members = {
        configuration = {
            type = "structure",
        },
        costCalculation = {
            type = "structure",
        },
    },
}

M.ResourceDetails = {
    type = "union",
    members = {
        lambdaFunction = {
            type = "structure",
        },
        ecsService = {
            type = "structure",
        },
        ec2Instance = {
            type = "structure",
        },
        ebsVolume = {
            type = "structure",
        },
        ec2AutoScalingGroup = {
            type = "structure",
        },
        ec2ReservedInstances = {
            type = "structure",
        },
        rdsReservedInstances = {
            type = "structure",
        },
        elastiCacheReservedInstances = {
            type = "structure",
        },
        openSearchReservedInstances = {
            type = "structure",
        },
        redshiftReservedInstances = {
            type = "structure",
        },
        ec2InstanceSavingsPlans = {
            type = "structure",
        },
        computeSavingsPlans = {
            type = "structure",
        },
        sageMakerSavingsPlans = {
            type = "structure",
        },
        rdsDbInstance = {
            type = "structure",
        },
        rdsDbInstanceStorage = {
            type = "structure",
        },
        auroraDbClusterStorage = {
            type = "structure",
        },
        dynamoDbReservedCapacity = {
            type = "structure",
        },
        memoryDbReservedInstances = {
            type = "structure",
        },
        natGateway = {
            type = "structure",
        },
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
            type = "number",
        },
        costCalculationLookbackPeriodInDays = {
            type = "number",
        },
        estimatedSavingsPercentage = {
            type = "number",
        },
        estimatedSavingsOverCostCalculationLookbackPeriod = {
            type = "number",
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
            type = "number",
        },
        estimatedMonthlyCost = {
            type = "number",
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
        currentResourceDetails = {
            type = "union",
        },
        recommendedResourceDetails = {
            type = "union",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
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
        timePeriod = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        orderBy = {
            type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.MetricsByTime = {
    type = "structure",
    members = {
        score = {
            type = "number",
        },
        savings = {
            type = "number",
        },
        spend = {
            type = "number",
        },
        timestamp = {
            type = "string",
        },
    },
}

M.EfficiencyMetricsByGroup = {
    type = "structure",
    members = {
        metricsByTime = {
            type = "list",
            member_type = "structure",
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
    members = {
        efficiencyMetricsByGroup = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListEnrollmentStatusesInput = {
    type = "structure",
    members = {
        includeOrganizationInfo = {
            type = "boolean",
        },
        accountId = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.ListEnrollmentStatusesOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
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
    members = {
        restartNeeded = {
            type = "boolean",
        },
        rollbackPossible = {
            type = "boolean",
        },
        implementationEfforts = {
            type = "list",
            member_type = "string",
        },
        accountIds = {
            type = "list",
            member_type = "string",
        },
        regions = {
            type = "list",
            member_type = "string",
        },
        resourceTypes = {
            type = "list",
            member_type = "string",
        },
        actionTypes = {
            type = "list",
            member_type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        resourceIds = {
            type = "list",
            member_type = "string",
        },
        resourceArns = {
            type = "list",
            member_type = "string",
        },
        recommendationIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListRecommendationsInput = {
    type = "structure",
    members = {
        filter = {
            type = "structure",
        },
        orderBy = {
            type = "structure",
        },
        includeAllRecommendations = {
            type = "boolean",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.Recommendation = {
    type = "structure",
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
            type = "number",
        },
        estimatedSavingsPercentage = {
            type = "number",
        },
        estimatedMonthlyCost = {
            type = "number",
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
            type = "number",
        },
        source = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListRecommendationsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
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
    members = {
        filter = {
            type = "structure",
        },
        groupBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        metrics = {
            type = "list",
            member_type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RecommendationSummary = {
    type = "structure",
    members = {
        group = {
            type = "string",
        },
        estimatedMonthlySavings = {
            type = "number",
        },
        recommendationCount = {
            type = "number",
        },
    },
}

M.SummaryMetricsResult = {
    type = "structure",
    members = {
        savingsPercentage = {
            type = "string",
        },
    },
}

M.ListRecommendationSummariesOutput = {
    type = "structure",
    members = {
        estimatedTotalDedupedSavings = {
            type = "number",
        },
        items = {
            type = "list",
            member_type = "structure",
        },
        groupBy = {
            type = "string",
        },
        currencyCode = {
            type = "string",
        },
        metrics = {
            type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
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
        },
    },
}

M.UpdateEnrollmentStatusOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
    },
}

M.UpdatePreferencesInput = {
    type = "structure",
    members = {
        savingsEstimationMode = {
            type = "string",
        },
        memberAccountDiscountVisibility = {
            type = "string",
        },
        preferredCommitment = {
            type = "structure",
        },
    },
}

M.UpdatePreferencesOutput = {
    type = "structure",
    members = {
        savingsEstimationMode = {
            type = "string",
        },
        memberAccountDiscountVisibility = {
            type = "string",
        },
        preferredCommitment = {
            type = "structure",
        },
    },
}

return M
