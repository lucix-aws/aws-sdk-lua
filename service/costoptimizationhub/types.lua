local M = {}

M.EnrollmentStatus = {
    ACTIVE = "Active",
    INACTIVE = "Inactive",
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

M.SavingsEstimationMode = {
    BEFORE_DISCOUNTS = "BeforeDiscounts",
    AFTER_DISCOUNTS = "AfterDiscounts",
}

M.ValidationExceptionReason = {
    FIELD_VALIDATION_FAILED = "FieldValidationFailed",
    OTHER = "Other",
}

M.Ec2AutoScalingGroupType = {
    SINGLE_INSTANCE_TYPE = "SingleInstanceType",
    MIXED_INSTANCE_TYPES = "MixedInstanceTypes",
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

M.GranularityType = {
    DAILY = "Daily",
    MONTHLY = "Monthly",
}

M.Order = {
    ASC = "Asc",
    DESC = "Desc",
}

M.SummaryMetrics = {
    SAVINGS_PERCENTAGE = "SavingsPercentage",
}

return M
