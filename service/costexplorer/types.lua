local M = {}

M.AccountScope = {
    PAYER = "PAYER",
    LINKED = "LINKED",
}

M.RecommendationDetailHourlyMetrics = {
    type = "structure",
    members = {
        StartTime = {
            type = "string",
        },
        EstimatedOnDemandCost = {
            type = "string",
        },
        CurrentCoverage = {
            type = "string",
        },
        EstimatedCoverage = {
            type = "string",
        },
        EstimatedNewCommitmentUtilization = {
            type = "string",
        },
    },
}

M.SavingsPlansPurchaseAnalysisDetails = {
    type = "structure",
    members = {
        CurrencyCode = {
            type = "string",
        },
        LookbackPeriodInHours = {
            type = "string",
        },
        CurrentAverageCoverage = {
            type = "string",
        },
        CurrentAverageHourlyOnDemandSpend = {
            type = "string",
        },
        CurrentMaximumHourlyOnDemandSpend = {
            type = "string",
        },
        CurrentMinimumHourlyOnDemandSpend = {
            type = "string",
        },
        CurrentOnDemandSpend = {
            type = "string",
        },
        ExistingHourlyCommitment = {
            type = "string",
        },
        HourlyCommitmentToPurchase = {
            type = "string",
        },
        EstimatedAverageCoverage = {
            type = "string",
        },
        EstimatedAverageUtilization = {
            type = "string",
        },
        EstimatedMonthlySavingsAmount = {
            type = "string",
        },
        EstimatedOnDemandCost = {
            type = "string",
        },
        EstimatedOnDemandCostWithCurrentCommitment = {
            type = "string",
        },
        EstimatedROI = {
            type = "string",
        },
        EstimatedSavingsAmount = {
            type = "string",
        },
        EstimatedSavingsPercentage = {
            type = "string",
        },
        EstimatedCommitmentCost = {
            type = "string",
        },
        LatestUsageTimestamp = {
            type = "string",
        },
        UpfrontCost = {
            type = "string",
        },
        AdditionalMetadata = {
            type = "string",
        },
        MetricsOverLookbackPeriod = {
            type = "list",
            member = M.RecommendationDetailHourlyMetrics,
        },
    },
}

M.AnalysisDetails = {
    type = "structure",
    members = {
        SavingsPlansPurchaseAnalysisDetails = M.SavingsPlansPurchaseAnalysisDetails,
    },
}

M.AnalysisNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AnalysisStatus = {
    SUCCEEDED = "SUCCEEDED",
    PROCESSING = "PROCESSING",
    FAILED = "FAILED",
}

M.AnalysisType = {
    MAX_SAVINGS = "MAX_SAVINGS",
    CUSTOM_COMMITMENT = "CUSTOM_COMMITMENT",
}

M.DateInterval = {
    type = "structure",
    members = {
        Start = {
            type = "string",
            traits = {
                required = true,
            },
        },
        End = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PaymentOption = {
    NO_UPFRONT = "NO_UPFRONT",
    PARTIAL_UPFRONT = "PARTIAL_UPFRONT",
    ALL_UPFRONT = "ALL_UPFRONT",
    LIGHT_UTILIZATION = "LIGHT_UTILIZATION",
    MEDIUM_UTILIZATION = "MEDIUM_UTILIZATION",
    HEAVY_UTILIZATION = "HEAVY_UTILIZATION",
}

M.SupportedSavingsPlansType = {
    COMPUTE_SP = "COMPUTE_SP",
    EC2_INSTANCE_SP = "EC2_INSTANCE_SP",
    SAGEMAKER_SP = "SAGEMAKER_SP",
    DATABASE_SP = "DATABASE_SP",
}

M.TermInYears = {
    ONE_YEAR = "ONE_YEAR",
    THREE_YEARS = "THREE_YEARS",
}

M.SavingsPlans = {
    type = "structure",
    members = {
        PaymentOption = {
            type = "string",
        },
        SavingsPlansType = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        InstanceFamily = {
            type = "string",
        },
        TermInYears = {
            type = "string",
        },
        SavingsPlansCommitment = {
            type = "double",
        },
        OfferingId = {
            type = "string",
        },
    },
}

M.SavingsPlansPurchaseAnalysisConfiguration = {
    type = "structure",
    members = {
        AccountScope = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        AnalysisType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SavingsPlansToAdd = {
            type = "list",
            member = M.SavingsPlans,
            traits = {
                required = true,
            },
        },
        SavingsPlansToExclude = {
            type = "list",
            member = { type = "string" },
        },
        LookBackTimePeriod = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DateInterval }),
    },
}

M.CommitmentPurchaseAnalysisConfiguration = {
    type = "structure",
    members = {
        SavingsPlansPurchaseAnalysisConfiguration = M.SavingsPlansPurchaseAnalysisConfiguration,
    },
}

M.ErrorCode = {
    NO_USAGE_FOUND = "NO_USAGE_FOUND",
    INTERNAL_FAILURE = "INTERNAL_FAILURE",
    INVALID_SAVINGS_PLANS_TO_ADD = "INVALID_SAVINGS_PLANS_TO_ADD",
    INVALID_SAVINGS_PLANS_TO_EXCLUDE = "INVALID_SAVINGS_PLANS_TO_EXCLUDE",
    INVALID_ACCOUNT_ID = "INVALID_ACCOUNT_ID",
}

M.AnalysisSummary = {
    type = "structure",
    members = {
        EstimatedCompletionTime = {
            type = "string",
        },
        AnalysisCompletionTime = {
            type = "string",
        },
        AnalysisStartedTime = {
            type = "string",
        },
        AnalysisStatus = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        AnalysisId = {
            type = "string",
        },
        CommitmentPurchaseAnalysisConfiguration = M.CommitmentPurchaseAnalysisConfiguration,
    },
}

M.AnomalyScore = {
    type = "structure",
    members = {
        MaxScore = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
        CurrentScore = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.AnomalyFeedbackType = {
    YES = "YES",
    NO = "NO",
    PLANNED_ACTIVITY = "PLANNED_ACTIVITY",
}

M.Impact = {
    type = "structure",
    members = {
        MaxImpact = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
        TotalImpact = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        TotalActualSpend = {
            type = "double",
        },
        TotalExpectedSpend = {
            type = "double",
        },
        TotalImpactPercentage = {
            type = "double",
        },
    },
}

M.RootCauseImpact = {
    type = "structure",
    members = {
        Contribution = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.RootCause = {
    type = "structure",
    members = {
        Service = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        LinkedAccount = {
            type = "string",
        },
        LinkedAccountName = {
            type = "string",
        },
        UsageType = {
            type = "string",
        },
        Impact = M.RootCauseImpact,
    },
}

M.Anomaly = {
    type = "structure",
    members = {
        AnomalyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AnomalyStartDate = {
            type = "string",
        },
        AnomalyEndDate = {
            type = "string",
        },
        DimensionValue = {
            type = "string",
        },
        RootCauses = {
            type = "list",
            member = M.RootCause,
        },
        AnomalyScore = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AnomalyScore }),
        Impact = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Impact }),
        MonitorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Feedback = {
            type = "string",
        },
    },
}

M.AnomalyDateInterval = {
    type = "structure",
    members = {
        StartDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndDate = {
            type = "string",
        },
    },
}

M.MonitorDimension = {
    SERVICE = "SERVICE",
    LINKED_ACCOUNT = "LINKED_ACCOUNT",
    TAG = "TAG",
    COST_CATEGORY = "COST_CATEGORY",
}

M.MatchOption = {
    EQUALS = "EQUALS",
    ABSENT = "ABSENT",
    STARTS_WITH = "STARTS_WITH",
    ENDS_WITH = "ENDS_WITH",
    CONTAINS = "CONTAINS",
    CASE_SENSITIVE = "CASE_SENSITIVE",
    CASE_INSENSITIVE = "CASE_INSENSITIVE",
    GREATER_THAN_OR_EQUAL = "GREATER_THAN_OR_EQUAL",
}

M.CostCategoryValues = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
        MatchOptions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.Dimension = {
    AZ = "AZ",
    INSTANCE_TYPE = "INSTANCE_TYPE",
    LINKED_ACCOUNT = "LINKED_ACCOUNT",
    PAYER_ACCOUNT = "PAYER_ACCOUNT",
    LINKED_ACCOUNT_NAME = "LINKED_ACCOUNT_NAME",
    OPERATION = "OPERATION",
    PURCHASE_TYPE = "PURCHASE_TYPE",
    REGION = "REGION",
    SERVICE = "SERVICE",
    SERVICE_CODE = "SERVICE_CODE",
    USAGE_TYPE = "USAGE_TYPE",
    USAGE_TYPE_GROUP = "USAGE_TYPE_GROUP",
    RECORD_TYPE = "RECORD_TYPE",
    OPERATING_SYSTEM = "OPERATING_SYSTEM",
    TENANCY = "TENANCY",
    SCOPE = "SCOPE",
    PLATFORM = "PLATFORM",
    SUBSCRIPTION_ID = "SUBSCRIPTION_ID",
    LEGAL_ENTITY_NAME = "LEGAL_ENTITY_NAME",
    DEPLOYMENT_OPTION = "DEPLOYMENT_OPTION",
    DATABASE_ENGINE = "DATABASE_ENGINE",
    CACHE_ENGINE = "CACHE_ENGINE",
    INSTANCE_TYPE_FAMILY = "INSTANCE_TYPE_FAMILY",
    BILLING_ENTITY = "BILLING_ENTITY",
    RESERVATION_ID = "RESERVATION_ID",
    RESOURCE_ID = "RESOURCE_ID",
    RIGHTSIZING_TYPE = "RIGHTSIZING_TYPE",
    SAVINGS_PLANS_TYPE = "SAVINGS_PLANS_TYPE",
    SAVINGS_PLAN_ARN = "SAVINGS_PLAN_ARN",
    PAYMENT_OPTION = "PAYMENT_OPTION",
    AGREEMENT_END_DATE_TIME_AFTER = "AGREEMENT_END_DATE_TIME_AFTER",
    AGREEMENT_END_DATE_TIME_BEFORE = "AGREEMENT_END_DATE_TIME_BEFORE",
    INVOICING_ENTITY = "INVOICING_ENTITY",
    ANOMALY_TOTAL_IMPACT_ABSOLUTE = "ANOMALY_TOTAL_IMPACT_ABSOLUTE",
    ANOMALY_TOTAL_IMPACT_PERCENTAGE = "ANOMALY_TOTAL_IMPACT_PERCENTAGE",
}

M.DimensionValues = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
        MatchOptions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.TagValues = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
        MatchOptions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.MonitorType = {
    DIMENSIONAL = "DIMENSIONAL",
    CUSTOM = "CUSTOM",
}

M.AnomalySubscriptionFrequency = {
    DAILY = "DAILY",
    IMMEDIATE = "IMMEDIATE",
    WEEKLY = "WEEKLY",
}

M.SubscriberStatus = {
    CONFIRMED = "CONFIRMED",
    DECLINED = "DECLINED",
}

M.SubscriberType = {
    EMAIL = "EMAIL",
    SNS = "SNS",
}

M.Subscriber = {
    type = "structure",
    members = {
        Address = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.ApproximationDimension = {
    SERVICE = "SERVICE",
    RESOURCE = "RESOURCE",
}

M.ResourceTag = {
    type = "structure",
    members = {
        Key = {
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

M.CreateAnomalyMonitorOutput = {
    type = "structure",
    members = {
        MonitorArn = {
            type = "string",
            traits = {
                required = true,
            },
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

M.CreateAnomalySubscriptionOutput = {
    type = "structure",
    members = {
        SubscriptionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UnknownMonitorException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CostCategoryInheritedValueDimensionName = {
    LINKED_ACCOUNT_NAME = "LINKED_ACCOUNT_NAME",
    TAG = "TAG",
}

M.CostCategoryInheritedValueDimension = {
    type = "structure",
    members = {
        DimensionName = {
            type = "string",
        },
        DimensionKey = {
            type = "string",
        },
    },
}

M.CostCategoryRuleType = {
    REGULAR = "REGULAR",
    INHERITED_VALUE = "INHERITED_VALUE",
}

M.CostCategoryRuleVersion = {
    CostCategoryExpressionV1 = "CostCategoryExpression.v1",
}

M.CostCategorySplitChargeMethod = {
    FIXED = "FIXED",
    PROPORTIONAL = "PROPORTIONAL",
    EVEN = "EVEN",
}

M.CostCategorySplitChargeRuleParameterType = {
    ALLOCATION_PERCENTAGES = "ALLOCATION_PERCENTAGES",
}

M.CostCategorySplitChargeRuleParameter = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CostCategorySplitChargeRule = {
    type = "structure",
    members = {
        Source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Targets = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Method = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Parameters = {
            type = "list",
            member = M.CostCategorySplitChargeRuleParameter,
        },
    },
}

M.CreateCostCategoryDefinitionOutput = {
    type = "structure",
    members = {
        CostCategoryArn = {
            type = "string",
        },
        EffectiveStart = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteAnomalyMonitorInput = {
    type = "structure",
    members = {
        MonitorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAnomalyMonitorOutput = {
    type = "structure",
}

M.DeleteAnomalySubscriptionInput = {
    type = "structure",
    members = {
        SubscriptionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAnomalySubscriptionOutput = {
    type = "structure",
}

M.UnknownSubscriptionException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteCostCategoryDefinitionInput = {
    type = "structure",
    members = {
        CostCategoryArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCostCategoryDefinitionOutput = {
    type = "structure",
    members = {
        CostCategoryArn = {
            type = "string",
        },
        EffectiveEnd = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
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

M.DescribeCostCategoryDefinitionInput = {
    type = "structure",
    members = {
        CostCategoryArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EffectiveOn = {
            type = "string",
        },
    },
}

M.CostCategoryStatusComponent = {
    COST_EXPLORER = "COST_EXPLORER",
}

M.CostCategoryStatus = {
    PROCESSING = "PROCESSING",
    APPLIED = "APPLIED",
}

M.CostCategoryProcessingStatus = {
    type = "structure",
    members = {
        Component = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.NumericOperator = {
    EQUAL = "EQUAL",
    GREATER_THAN_OR_EQUAL = "GREATER_THAN_OR_EQUAL",
    LESS_THAN_OR_EQUAL = "LESS_THAN_OR_EQUAL",
    GREATER_THAN = "GREATER_THAN",
    LESS_THAN = "LESS_THAN",
    BETWEEN = "BETWEEN",
}

M.TotalImpactFilter = {
    type = "structure",
    members = {
        NumericOperator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartValue = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
        EndValue = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.GetAnomaliesInput = {
    type = "structure",
    members = {
        MonitorArn = {
            type = "string",
        },
        DateInterval = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AnomalyDateInterval }),
        Feedback = {
            type = "string",
        },
        TotalImpact = M.TotalImpactFilter,
        NextPageToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.GetAnomaliesOutput = {
    type = "structure",
    members = {
        Anomalies = {
            type = "list",
            member = M.Anomaly,
            traits = {
                required = true,
            },
        },
        NextPageToken = {
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

M.GetAnomalyMonitorsInput = {
    type = "structure",
    members = {
        MonitorArnList = {
            type = "list",
            member = { type = "string" },
        },
        NextPageToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.GetAnomalySubscriptionsInput = {
    type = "structure",
    members = {
        SubscriptionArnList = {
            type = "list",
            member = { type = "string" },
        },
        MonitorArn = {
            type = "string",
        },
        NextPageToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.DataUnavailableException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Granularity = {
    DAILY = "DAILY",
    MONTHLY = "MONTHLY",
    HOURLY = "HOURLY",
}

M.GetApproximateUsageRecordsInput = {
    type = "structure",
    members = {
        Granularity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Services = {
            type = "list",
            member = { type = "string" },
        },
        ApproximationDimension = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetApproximateUsageRecordsOutput = {
    type = "structure",
    members = {
        Services = {
            type = "map",
            key = { type = "string" },
            value = { type = "long" },
        },
        TotalRecords = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        LookbackPeriod = M.DateInterval,
    },
}

M.GetCommitmentPurchaseAnalysisInput = {
    type = "structure",
    members = {
        AnalysisId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetCommitmentPurchaseAnalysisOutput = {
    type = "structure",
    members = {
        EstimatedCompletionTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AnalysisCompletionTime = {
            type = "string",
        },
        AnalysisStartedTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AnalysisId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AnalysisStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorCode = {
            type = "string",
        },
        AnalysisDetails = M.AnalysisDetails,
        CommitmentPurchaseAnalysisConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CommitmentPurchaseAnalysisConfiguration }),
    },
}

M.BillExpirationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.BillingViewHealthStatusException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GroupDefinitionType = {
    DIMENSION = "DIMENSION",
    TAG = "TAG",
    COST_CATEGORY = "COST_CATEGORY",
}

M.GroupDefinition = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Key = {
            type = "string",
        },
    },
}

M.DimensionValuesWithAttributes = {
    type = "structure",
    members = {
        Value = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.MetricValue = {
    type = "structure",
    members = {
        Amount = {
            type = "string",
        },
        Unit = {
            type = "string",
        },
    },
}

M.Group = {
    type = "structure",
    members = {
        Keys = {
            type = "list",
            member = { type = "string" },
        },
        Metrics = {
            type = "map",
            key = { type = "string" },
            value = M.MetricValue,
        },
    },
}

M.ResultByTime = {
    type = "structure",
    members = {
        TimePeriod = M.DateInterval,
        Total = {
            type = "map",
            key = { type = "string" },
            value = M.MetricValue,
        },
        Groups = {
            type = "list",
            member = M.Group,
        },
        Estimated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.GetCostAndUsageOutput = {
    type = "structure",
    members = {
        NextPageToken = {
            type = "string",
        },
        GroupDefinitions = {
            type = "list",
            member = M.GroupDefinition,
        },
        ResultsByTime = {
            type = "list",
            member = M.ResultByTime,
        },
        DimensionValueAttributes = {
            type = "list",
            member = M.DimensionValuesWithAttributes,
        },
    },
}

M.RequestChangedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ComparisonMetricValue = {
    type = "structure",
    members = {
        BaselineTimePeriodAmount = {
            type = "string",
        },
        ComparisonTimePeriodAmount = {
            type = "string",
        },
        Difference = {
            type = "string",
        },
        Unit = {
            type = "string",
        },
    },
}

M.GetCostAndUsageWithResourcesOutput = {
    type = "structure",
    members = {
        NextPageToken = {
            type = "string",
        },
        GroupDefinitions = {
            type = "list",
            member = M.GroupDefinition,
        },
        ResultsByTime = {
            type = "list",
            member = M.ResultByTime,
        },
        DimensionValueAttributes = {
            type = "list",
            member = M.DimensionValuesWithAttributes,
        },
    },
}

M.SortOrder = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.SortDefinition = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.GetCostCategoriesOutput = {
    type = "structure",
    members = {
        NextPageToken = {
            type = "string",
        },
        CostCategoryNames = {
            type = "list",
            member = { type = "string" },
        },
        CostCategoryValues = {
            type = "list",
            member = { type = "string" },
        },
        ReturnSize = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        TotalSize = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.CostDriver = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Metrics = {
            type = "map",
            key = { type = "string" },
            value = M.ComparisonMetricValue,
        },
    },
}

M.Metric = {
    BLENDED_COST = "BLENDED_COST",
    UNBLENDED_COST = "UNBLENDED_COST",
    AMORTIZED_COST = "AMORTIZED_COST",
    NET_UNBLENDED_COST = "NET_UNBLENDED_COST",
    NET_AMORTIZED_COST = "NET_AMORTIZED_COST",
    USAGE_QUANTITY = "USAGE_QUANTITY",
    NORMALIZED_USAGE_AMOUNT = "NORMALIZED_USAGE_AMOUNT",
}

M.ForecastResult = {
    type = "structure",
    members = {
        TimePeriod = M.DateInterval,
        MeanValue = {
            type = "string",
        },
        PredictionIntervalLowerBound = {
            type = "string",
        },
        PredictionIntervalUpperBound = {
            type = "string",
        },
    },
}

M.GetCostForecastOutput = {
    type = "structure",
    members = {
        Total = M.MetricValue,
        ForecastResultsByTime = {
            type = "list",
            member = M.ForecastResult,
        },
    },
}

M.Context = {
    COST_AND_USAGE = "COST_AND_USAGE",
    RESERVATIONS = "RESERVATIONS",
    SAVINGS_PLANS = "SAVINGS_PLANS",
}

M.GetDimensionValuesOutput = {
    type = "structure",
    members = {
        DimensionValues = {
            type = "list",
            member = M.DimensionValuesWithAttributes,
            traits = {
                required = true,
            },
        },
        ReturnSize = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        TotalSize = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.CoverageCost = {
    type = "structure",
    members = {
        OnDemandCost = {
            type = "string",
        },
    },
}

M.CoverageHours = {
    type = "structure",
    members = {
        OnDemandHours = {
            type = "string",
        },
        ReservedHours = {
            type = "string",
        },
        TotalRunningHours = {
            type = "string",
        },
        CoverageHoursPercentage = {
            type = "string",
        },
    },
}

M.CoverageNormalizedUnits = {
    type = "structure",
    members = {
        OnDemandNormalizedUnits = {
            type = "string",
        },
        ReservedNormalizedUnits = {
            type = "string",
        },
        TotalRunningNormalizedUnits = {
            type = "string",
        },
        CoverageNormalizedUnitsPercentage = {
            type = "string",
        },
    },
}

M.Coverage = {
    type = "structure",
    members = {
        CoverageHours = M.CoverageHours,
        CoverageNormalizedUnits = M.CoverageNormalizedUnits,
        CoverageCost = M.CoverageCost,
    },
}

M.ReservationCoverageGroup = {
    type = "structure",
    members = {
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Coverage = M.Coverage,
    },
}

M.CoverageByTime = {
    type = "structure",
    members = {
        TimePeriod = M.DateInterval,
        Groups = {
            type = "list",
            member = M.ReservationCoverageGroup,
        },
        Total = M.Coverage,
    },
}

M.GetReservationCoverageOutput = {
    type = "structure",
    members = {
        CoveragesByTime = {
            type = "list",
            member = M.CoverageByTime,
            traits = {
                required = true,
            },
        },
        Total = M.Coverage,
        NextPageToken = {
            type = "string",
        },
    },
}

M.LookbackPeriodInDays = {
    SEVEN_DAYS = "SEVEN_DAYS",
    THIRTY_DAYS = "THIRTY_DAYS",
    SIXTY_DAYS = "SIXTY_DAYS",
}

M.OfferingClass = {
    STANDARD = "STANDARD",
    CONVERTIBLE = "CONVERTIBLE",
}

M.EC2Specification = {
    type = "structure",
    members = {
        OfferingClass = {
            type = "string",
        },
    },
}

M.ServiceSpecification = {
    type = "structure",
    members = {
        EC2Specification = M.EC2Specification,
    },
}

M.ReservationPurchaseRecommendationMetadata = {
    type = "structure",
    members = {
        RecommendationId = {
            type = "string",
        },
        GenerationTimestamp = {
            type = "string",
        },
        AdditionalMetadata = {
            type = "string",
        },
    },
}

M.EC2InstanceDetails = {
    type = "structure",
    members = {
        Family = {
            type = "string",
        },
        InstanceType = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        AvailabilityZone = {
            type = "string",
        },
        Platform = {
            type = "string",
        },
        Tenancy = {
            type = "string",
        },
        CurrentGeneration = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        SizeFlexEligible = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ElastiCacheInstanceDetails = {
    type = "structure",
    members = {
        Family = {
            type = "string",
        },
        NodeType = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        ProductDescription = {
            type = "string",
        },
        CurrentGeneration = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        SizeFlexEligible = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ESInstanceDetails = {
    type = "structure",
    members = {
        InstanceClass = {
            type = "string",
        },
        InstanceSize = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        CurrentGeneration = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        SizeFlexEligible = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.MemoryDBInstanceDetails = {
    type = "structure",
    members = {
        Family = {
            type = "string",
        },
        NodeType = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        CurrentGeneration = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        SizeFlexEligible = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.RDSInstanceDetails = {
    type = "structure",
    members = {
        Family = {
            type = "string",
        },
        InstanceType = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        DatabaseEngine = {
            type = "string",
        },
        DatabaseEdition = {
            type = "string",
        },
        DeploymentOption = {
            type = "string",
        },
        LicenseModel = {
            type = "string",
        },
        CurrentGeneration = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        SizeFlexEligible = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        DeploymentModel = {
            type = "string",
        },
    },
}

M.RedshiftInstanceDetails = {
    type = "structure",
    members = {
        Family = {
            type = "string",
        },
        NodeType = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        CurrentGeneration = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        SizeFlexEligible = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.InstanceDetails = {
    type = "structure",
    members = {
        EC2InstanceDetails = M.EC2InstanceDetails,
        RDSInstanceDetails = M.RDSInstanceDetails,
        RedshiftInstanceDetails = M.RedshiftInstanceDetails,
        ElastiCacheInstanceDetails = M.ElastiCacheInstanceDetails,
        ESInstanceDetails = M.ESInstanceDetails,
        MemoryDBInstanceDetails = M.MemoryDBInstanceDetails,
    },
}

M.DynamoDBCapacityDetails = {
    type = "structure",
    members = {
        CapacityUnits = {
            type = "string",
        },
        Region = {
            type = "string",
        },
    },
}

M.ReservedCapacityDetails = {
    type = "structure",
    members = {
        DynamoDBCapacityDetails = M.DynamoDBCapacityDetails,
    },
}

M.ReservationPurchaseRecommendationDetail = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
        },
        InstanceDetails = M.InstanceDetails,
        RecommendedNumberOfInstancesToPurchase = {
            type = "string",
        },
        RecommendedNormalizedUnitsToPurchase = {
            type = "string",
        },
        MinimumNumberOfInstancesUsedPerHour = {
            type = "string",
        },
        MinimumNormalizedUnitsUsedPerHour = {
            type = "string",
        },
        MaximumNumberOfInstancesUsedPerHour = {
            type = "string",
        },
        MaximumNormalizedUnitsUsedPerHour = {
            type = "string",
        },
        AverageNumberOfInstancesUsedPerHour = {
            type = "string",
        },
        AverageNormalizedUnitsUsedPerHour = {
            type = "string",
        },
        AverageUtilization = {
            type = "string",
        },
        EstimatedBreakEvenInMonths = {
            type = "string",
        },
        CurrencyCode = {
            type = "string",
        },
        EstimatedMonthlySavingsAmount = {
            type = "string",
        },
        EstimatedMonthlySavingsPercentage = {
            type = "string",
        },
        EstimatedMonthlyOnDemandCost = {
            type = "string",
        },
        EstimatedReservationCostForLookbackPeriod = {
            type = "string",
        },
        UpfrontCost = {
            type = "string",
        },
        RecurringStandardMonthlyCost = {
            type = "string",
        },
        ReservedCapacityDetails = M.ReservedCapacityDetails,
        RecommendedNumberOfCapacityUnitsToPurchase = {
            type = "string",
        },
        MinimumNumberOfCapacityUnitsUsedPerHour = {
            type = "string",
        },
        MaximumNumberOfCapacityUnitsUsedPerHour = {
            type = "string",
        },
        AverageNumberOfCapacityUnitsUsedPerHour = {
            type = "string",
        },
    },
}

M.ReservationPurchaseRecommendationSummary = {
    type = "structure",
    members = {
        TotalEstimatedMonthlySavingsAmount = {
            type = "string",
        },
        TotalEstimatedMonthlySavingsPercentage = {
            type = "string",
        },
        CurrencyCode = {
            type = "string",
        },
    },
}

M.ReservationPurchaseRecommendation = {
    type = "structure",
    members = {
        AccountScope = {
            type = "string",
        },
        LookbackPeriodInDays = {
            type = "string",
        },
        TermInYears = {
            type = "string",
        },
        PaymentOption = {
            type = "string",
        },
        ServiceSpecification = M.ServiceSpecification,
        RecommendationDetails = {
            type = "list",
            member = M.ReservationPurchaseRecommendationDetail,
        },
        RecommendationSummary = M.ReservationPurchaseRecommendationSummary,
    },
}

M.GetReservationPurchaseRecommendationOutput = {
    type = "structure",
    members = {
        Metadata = M.ReservationPurchaseRecommendationMetadata,
        Recommendations = {
            type = "list",
            member = M.ReservationPurchaseRecommendation,
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ReservationAggregates = {
    type = "structure",
    members = {
        UtilizationPercentage = {
            type = "string",
        },
        UtilizationPercentageInUnits = {
            type = "string",
        },
        PurchasedHours = {
            type = "string",
        },
        PurchasedUnits = {
            type = "string",
        },
        TotalActualHours = {
            type = "string",
        },
        TotalActualUnits = {
            type = "string",
        },
        UnusedHours = {
            type = "string",
        },
        UnusedUnits = {
            type = "string",
        },
        OnDemandCostOfRIHoursUsed = {
            type = "string",
        },
        NetRISavings = {
            type = "string",
        },
        TotalPotentialRISavings = {
            type = "string",
        },
        AmortizedUpfrontFee = {
            type = "string",
        },
        AmortizedRecurringFee = {
            type = "string",
        },
        TotalAmortizedFee = {
            type = "string",
        },
        RICostForUnusedHours = {
            type = "string",
        },
        RealizedSavings = {
            type = "string",
        },
        UnrealizedSavings = {
            type = "string",
        },
    },
}

M.ReservationUtilizationGroup = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Utilization = M.ReservationAggregates,
    },
}

M.UtilizationByTime = {
    type = "structure",
    members = {
        TimePeriod = M.DateInterval,
        Groups = {
            type = "list",
            member = M.ReservationUtilizationGroup,
        },
        Total = M.ReservationAggregates,
    },
}

M.GetReservationUtilizationOutput = {
    type = "structure",
    members = {
        UtilizationsByTime = {
            type = "list",
            member = M.UtilizationByTime,
            traits = {
                required = true,
            },
        },
        Total = M.ReservationAggregates,
        NextPageToken = {
            type = "string",
        },
    },
}

M.RecommendationTarget = {
    SAME_INSTANCE_FAMILY = "SAME_INSTANCE_FAMILY",
    CROSS_INSTANCE_FAMILY = "CROSS_INSTANCE_FAMILY",
}

M.RightsizingRecommendationConfiguration = {
    type = "structure",
    members = {
        RecommendationTarget = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BenefitsConsidered = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.RightsizingRecommendationMetadata = {
    type = "structure",
    members = {
        RecommendationId = {
            type = "string",
        },
        GenerationTimestamp = {
            type = "string",
        },
        LookbackPeriodInDays = {
            type = "string",
        },
        AdditionalMetadata = {
            type = "string",
        },
    },
}

M.EC2ResourceDetails = {
    type = "structure",
    members = {
        HourlyOnDemandRate = {
            type = "string",
        },
        InstanceType = {
            type = "string",
        },
        Platform = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        Sku = {
            type = "string",
        },
        Memory = {
            type = "string",
        },
        NetworkPerformance = {
            type = "string",
        },
        Storage = {
            type = "string",
        },
        Vcpu = {
            type = "string",
        },
    },
}

M.ResourceDetails = {
    type = "structure",
    members = {
        EC2ResourceDetails = M.EC2ResourceDetails,
    },
}

M.DiskResourceUtilization = {
    type = "structure",
    members = {
        DiskReadOpsPerSecond = {
            type = "string",
        },
        DiskWriteOpsPerSecond = {
            type = "string",
        },
        DiskReadBytesPerSecond = {
            type = "string",
        },
        DiskWriteBytesPerSecond = {
            type = "string",
        },
    },
}

M.EBSResourceUtilization = {
    type = "structure",
    members = {
        EbsReadOpsPerSecond = {
            type = "string",
        },
        EbsWriteOpsPerSecond = {
            type = "string",
        },
        EbsReadBytesPerSecond = {
            type = "string",
        },
        EbsWriteBytesPerSecond = {
            type = "string",
        },
    },
}

M.NetworkResourceUtilization = {
    type = "structure",
    members = {
        NetworkInBytesPerSecond = {
            type = "string",
        },
        NetworkOutBytesPerSecond = {
            type = "string",
        },
        NetworkPacketsInPerSecond = {
            type = "string",
        },
        NetworkPacketsOutPerSecond = {
            type = "string",
        },
    },
}

M.EC2ResourceUtilization = {
    type = "structure",
    members = {
        MaxCpuUtilizationPercentage = {
            type = "string",
        },
        MaxMemoryUtilizationPercentage = {
            type = "string",
        },
        MaxStorageUtilizationPercentage = {
            type = "string",
        },
        EBSResourceUtilization = M.EBSResourceUtilization,
        DiskResourceUtilization = M.DiskResourceUtilization,
        NetworkResourceUtilization = M.NetworkResourceUtilization,
    },
}

M.ResourceUtilization = {
    type = "structure",
    members = {
        EC2ResourceUtilization = M.EC2ResourceUtilization,
    },
}

M.CurrentInstance = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
        },
        InstanceName = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.TagValues,
        },
        ResourceDetails = M.ResourceDetails,
        ResourceUtilization = M.ResourceUtilization,
        ReservationCoveredHoursInLookbackPeriod = {
            type = "string",
        },
        SavingsPlansCoveredHoursInLookbackPeriod = {
            type = "string",
        },
        OnDemandHoursInLookbackPeriod = {
            type = "string",
        },
        TotalRunningHoursInLookbackPeriod = {
            type = "string",
        },
        MonthlyCost = {
            type = "string",
        },
        CurrencyCode = {
            type = "string",
        },
    },
}

M.FindingReasonCode = {
    CPU_OVER_PROVISIONED = "CPU_OVER_PROVISIONED",
    CPU_UNDER_PROVISIONED = "CPU_UNDER_PROVISIONED",
    MEMORY_OVER_PROVISIONED = "MEMORY_OVER_PROVISIONED",
    MEMORY_UNDER_PROVISIONED = "MEMORY_UNDER_PROVISIONED",
    EBS_THROUGHPUT_OVER_PROVISIONED = "EBS_THROUGHPUT_OVER_PROVISIONED",
    EBS_THROUGHPUT_UNDER_PROVISIONED = "EBS_THROUGHPUT_UNDER_PROVISIONED",
    EBS_IOPS_OVER_PROVISIONED = "EBS_IOPS_OVER_PROVISIONED",
    EBS_IOPS_UNDER_PROVISIONED = "EBS_IOPS_UNDER_PROVISIONED",
    NETWORK_BANDWIDTH_OVER_PROVISIONED = "NETWORK_BANDWIDTH_OVER_PROVISIONED",
    NETWORK_BANDWIDTH_UNDER_PROVISIONED = "NETWORK_BANDWIDTH_UNDER_PROVISIONED",
    NETWORK_PPS_OVER_PROVISIONED = "NETWORK_PPS_OVER_PROVISIONED",
    NETWORK_PPS_UNDER_PROVISIONED = "NETWORK_PPS_UNDER_PROVISIONED",
    DISK_IOPS_OVER_PROVISIONED = "DISK_IOPS_OVER_PROVISIONED",
    DISK_IOPS_UNDER_PROVISIONED = "DISK_IOPS_UNDER_PROVISIONED",
    DISK_THROUGHPUT_OVER_PROVISIONED = "DISK_THROUGHPUT_OVER_PROVISIONED",
    DISK_THROUGHPUT_UNDER_PROVISIONED = "DISK_THROUGHPUT_UNDER_PROVISIONED",
}

M.PlatformDifference = {
    HYPERVISOR = "HYPERVISOR",
    NETWORK_INTERFACE = "NETWORK_INTERFACE",
    STORAGE_INTERFACE = "STORAGE_INTERFACE",
    INSTANCE_STORE_AVAILABILITY = "INSTANCE_STORE_AVAILABILITY",
    VIRTUALIZATION_TYPE = "VIRTUALIZATION_TYPE",
}

M.TargetInstance = {
    type = "structure",
    members = {
        EstimatedMonthlyCost = {
            type = "string",
        },
        EstimatedMonthlySavings = {
            type = "string",
        },
        CurrencyCode = {
            type = "string",
        },
        DefaultTargetInstance = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ResourceDetails = M.ResourceDetails,
        ExpectedResourceUtilization = M.ResourceUtilization,
        PlatformDifferences = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ModifyRecommendationDetail = {
    type = "structure",
    members = {
        TargetInstances = {
            type = "list",
            member = M.TargetInstance,
        },
    },
}

M.RightsizingType = {
    TERMINATE = "TERMINATE",
    MODIFY = "MODIFY",
}

M.TerminateRecommendationDetail = {
    type = "structure",
    members = {
        EstimatedMonthlySavings = {
            type = "string",
        },
        CurrencyCode = {
            type = "string",
        },
    },
}

M.RightsizingRecommendation = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
        },
        CurrentInstance = M.CurrentInstance,
        RightsizingType = {
            type = "string",
        },
        ModifyRecommendationDetail = M.ModifyRecommendationDetail,
        TerminateRecommendationDetail = M.TerminateRecommendationDetail,
        FindingReasonCodes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RightsizingRecommendationSummary = {
    type = "structure",
    members = {
        TotalRecommendationCount = {
            type = "string",
        },
        EstimatedTotalMonthlySavingsAmount = {
            type = "string",
        },
        SavingsCurrencyCode = {
            type = "string",
        },
        SavingsPercentage = {
            type = "string",
        },
    },
}

M.GetRightsizingRecommendationOutput = {
    type = "structure",
    members = {
        Metadata = M.RightsizingRecommendationMetadata,
        Summary = M.RightsizingRecommendationSummary,
        RightsizingRecommendations = {
            type = "list",
            member = M.RightsizingRecommendation,
        },
        NextPageToken = {
            type = "string",
        },
        Configuration = M.RightsizingRecommendationConfiguration,
    },
}

M.GetSavingsPlanPurchaseRecommendationDetailsInput = {
    type = "structure",
    members = {
        RecommendationDetailId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RecommendationDetailData = {
    type = "structure",
    members = {
        AccountScope = {
            type = "string",
        },
        LookbackPeriodInDays = {
            type = "string",
        },
        SavingsPlansType = {
            type = "string",
        },
        TermInYears = {
            type = "string",
        },
        PaymentOption = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        CurrencyCode = {
            type = "string",
        },
        InstanceFamily = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        OfferingId = {
            type = "string",
        },
        GenerationTimestamp = {
            type = "string",
        },
        LatestUsageTimestamp = {
            type = "string",
        },
        CurrentAverageHourlyOnDemandSpend = {
            type = "string",
        },
        CurrentMaximumHourlyOnDemandSpend = {
            type = "string",
        },
        CurrentMinimumHourlyOnDemandSpend = {
            type = "string",
        },
        EstimatedAverageUtilization = {
            type = "string",
        },
        EstimatedMonthlySavingsAmount = {
            type = "string",
        },
        EstimatedOnDemandCost = {
            type = "string",
        },
        EstimatedOnDemandCostWithCurrentCommitment = {
            type = "string",
        },
        EstimatedROI = {
            type = "string",
        },
        EstimatedSPCost = {
            type = "string",
        },
        EstimatedSavingsAmount = {
            type = "string",
        },
        EstimatedSavingsPercentage = {
            type = "string",
        },
        ExistingHourlyCommitment = {
            type = "string",
        },
        HourlyCommitmentToPurchase = {
            type = "string",
        },
        UpfrontCost = {
            type = "string",
        },
        CurrentAverageCoverage = {
            type = "string",
        },
        EstimatedAverageCoverage = {
            type = "string",
        },
        MetricsOverLookbackPeriod = {
            type = "list",
            member = M.RecommendationDetailHourlyMetrics,
        },
    },
}

M.GetSavingsPlanPurchaseRecommendationDetailsOutput = {
    type = "structure",
    members = {
        RecommendationDetailId = {
            type = "string",
        },
        RecommendationDetailData = M.RecommendationDetailData,
    },
}

M.SavingsPlansCoverageData = {
    type = "structure",
    members = {
        SpendCoveredBySavingsPlans = {
            type = "string",
        },
        OnDemandCost = {
            type = "string",
        },
        TotalCost = {
            type = "string",
        },
        CoveragePercentage = {
            type = "string",
        },
    },
}

M.SavingsPlansCoverage = {
    type = "structure",
    members = {
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Coverage = M.SavingsPlansCoverageData,
        TimePeriod = M.DateInterval,
    },
}

M.GetSavingsPlansCoverageOutput = {
    type = "structure",
    members = {
        SavingsPlansCoverages = {
            type = "list",
            member = M.SavingsPlansCoverage,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SavingsPlansPurchaseRecommendationMetadata = {
    type = "structure",
    members = {
        RecommendationId = {
            type = "string",
        },
        GenerationTimestamp = {
            type = "string",
        },
        AdditionalMetadata = {
            type = "string",
        },
    },
}

M.SavingsPlansDetails = {
    type = "structure",
    members = {
        Region = {
            type = "string",
        },
        InstanceFamily = {
            type = "string",
        },
        OfferingId = {
            type = "string",
        },
    },
}

M.SavingsPlansPurchaseRecommendationDetail = {
    type = "structure",
    members = {
        SavingsPlansDetails = M.SavingsPlansDetails,
        AccountId = {
            type = "string",
        },
        UpfrontCost = {
            type = "string",
        },
        EstimatedROI = {
            type = "string",
        },
        CurrencyCode = {
            type = "string",
        },
        EstimatedSPCost = {
            type = "string",
        },
        EstimatedOnDemandCost = {
            type = "string",
        },
        EstimatedOnDemandCostWithCurrentCommitment = {
            type = "string",
        },
        EstimatedSavingsAmount = {
            type = "string",
        },
        EstimatedSavingsPercentage = {
            type = "string",
        },
        HourlyCommitmentToPurchase = {
            type = "string",
        },
        EstimatedAverageUtilization = {
            type = "string",
        },
        EstimatedMonthlySavingsAmount = {
            type = "string",
        },
        CurrentMinimumHourlyOnDemandSpend = {
            type = "string",
        },
        CurrentMaximumHourlyOnDemandSpend = {
            type = "string",
        },
        CurrentAverageHourlyOnDemandSpend = {
            type = "string",
        },
        RecommendationDetailId = {
            type = "string",
        },
    },
}

M.SavingsPlansPurchaseRecommendationSummary = {
    type = "structure",
    members = {
        EstimatedROI = {
            type = "string",
        },
        CurrencyCode = {
            type = "string",
        },
        EstimatedTotalCost = {
            type = "string",
        },
        CurrentOnDemandSpend = {
            type = "string",
        },
        EstimatedSavingsAmount = {
            type = "string",
        },
        TotalRecommendationCount = {
            type = "string",
        },
        DailyCommitmentToPurchase = {
            type = "string",
        },
        HourlyCommitmentToPurchase = {
            type = "string",
        },
        EstimatedSavingsPercentage = {
            type = "string",
        },
        EstimatedMonthlySavingsAmount = {
            type = "string",
        },
        EstimatedOnDemandCostWithCurrentCommitment = {
            type = "string",
        },
    },
}

M.SavingsPlansPurchaseRecommendation = {
    type = "structure",
    members = {
        AccountScope = {
            type = "string",
        },
        SavingsPlansType = {
            type = "string",
        },
        TermInYears = {
            type = "string",
        },
        PaymentOption = {
            type = "string",
        },
        LookbackPeriodInDays = {
            type = "string",
        },
        SavingsPlansPurchaseRecommendationDetails = {
            type = "list",
            member = M.SavingsPlansPurchaseRecommendationDetail,
        },
        SavingsPlansPurchaseRecommendationSummary = M.SavingsPlansPurchaseRecommendationSummary,
    },
}

M.GetSavingsPlansPurchaseRecommendationOutput = {
    type = "structure",
    members = {
        Metadata = M.SavingsPlansPurchaseRecommendationMetadata,
        SavingsPlansPurchaseRecommendation = M.SavingsPlansPurchaseRecommendation,
        NextPageToken = {
            type = "string",
        },
    },
}

M.SavingsPlansAmortizedCommitment = {
    type = "structure",
    members = {
        AmortizedRecurringCommitment = {
            type = "string",
        },
        AmortizedUpfrontCommitment = {
            type = "string",
        },
        TotalAmortizedCommitment = {
            type = "string",
        },
    },
}

M.SavingsPlansSavings = {
    type = "structure",
    members = {
        NetSavings = {
            type = "string",
        },
        OnDemandCostEquivalent = {
            type = "string",
        },
    },
}

M.SavingsPlansUtilization = {
    type = "structure",
    members = {
        TotalCommitment = {
            type = "string",
        },
        UsedCommitment = {
            type = "string",
        },
        UnusedCommitment = {
            type = "string",
        },
        UtilizationPercentage = {
            type = "string",
        },
    },
}

M.SavingsPlansUtilizationByTime = {
    type = "structure",
    members = {
        TimePeriod = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DateInterval }),
        Utilization = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SavingsPlansUtilization }),
        Savings = M.SavingsPlansSavings,
        AmortizedCommitment = M.SavingsPlansAmortizedCommitment,
    },
}

M.SavingsPlansUtilizationAggregates = {
    type = "structure",
    members = {
        Utilization = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SavingsPlansUtilization }),
        Savings = M.SavingsPlansSavings,
        AmortizedCommitment = M.SavingsPlansAmortizedCommitment,
    },
}

M.GetSavingsPlansUtilizationOutput = {
    type = "structure",
    members = {
        SavingsPlansUtilizationsByTime = {
            type = "list",
            member = M.SavingsPlansUtilizationByTime,
        },
        Total = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SavingsPlansUtilizationAggregates }),
    },
}

M.SavingsPlansDataType = {
    ATTRIBUTES = "ATTRIBUTES",
    UTILIZATION = "UTILIZATION",
    AMORTIZED_COMMITMENT = "AMORTIZED_COMMITMENT",
    SAVINGS = "SAVINGS",
}

M.SavingsPlansUtilizationDetail = {
    type = "structure",
    members = {
        SavingsPlanArn = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Utilization = M.SavingsPlansUtilization,
        Savings = M.SavingsPlansSavings,
        AmortizedCommitment = M.SavingsPlansAmortizedCommitment,
    },
}

M.GetSavingsPlansUtilizationDetailsOutput = {
    type = "structure",
    members = {
        SavingsPlansUtilizationDetails = {
            type = "list",
            member = M.SavingsPlansUtilizationDetail,
            traits = {
                required = true,
            },
        },
        Total = M.SavingsPlansUtilizationAggregates,
        TimePeriod = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DateInterval }),
        NextToken = {
            type = "string",
        },
    },
}

M.GetTagsOutput = {
    type = "structure",
    members = {
        NextPageToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ReturnSize = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        TotalSize = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.GetUsageForecastOutput = {
    type = "structure",
    members = {
        Total = M.MetricValue,
        ForecastResultsByTime = {
            type = "list",
            member = M.ForecastResult,
        },
    },
}

M.UnresolvableUsageUnitException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListCommitmentPurchaseAnalysesInput = {
    type = "structure",
    members = {
        AnalysisStatus = {
            type = "string",
        },
        NextPageToken = {
            type = "string",
        },
        PageSize = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        AnalysisIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListCommitmentPurchaseAnalysesOutput = {
    type = "structure",
    members = {
        AnalysisSummaryList = {
            type = "list",
            member = M.AnalysisSummary,
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ListCostAllocationTagBackfillHistoryInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.CostAllocationTagBackfillStatus = {
    SUCCEEDED = "SUCCEEDED",
    PROCESSING = "PROCESSING",
    FAILED = "FAILED",
}

M.CostAllocationTagBackfillRequest = {
    type = "structure",
    members = {
        BackfillFrom = {
            type = "string",
        },
        RequestedAt = {
            type = "string",
        },
        CompletedAt = {
            type = "string",
        },
        BackfillStatus = {
            type = "string",
        },
        LastUpdatedAt = {
            type = "string",
        },
    },
}

M.ListCostAllocationTagBackfillHistoryOutput = {
    type = "structure",
    members = {
        BackfillRequests = {
            type = "list",
            member = M.CostAllocationTagBackfillRequest,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.CostAllocationTagStatus = {
    ACTIVE = "Active",
    INACTIVE = "Inactive",
}

M.CostAllocationTagType = {
    AWS_GENERATED = "AWSGenerated",
    USER_DEFINED = "UserDefined",
}

M.ListCostAllocationTagsInput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
        },
        Type = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.CostAllocationTag = {
    type = "structure",
    members = {
        TagKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastUpdatedDate = {
            type = "string",
        },
        LastUsedDate = {
            type = "string",
        },
    },
}

M.ListCostAllocationTagsOutput = {
    type = "structure",
    members = {
        CostAllocationTags = {
            type = "list",
            member = M.CostAllocationTag,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCostCategoryDefinitionsInput = {
    type = "structure",
    members = {
        EffectiveOn = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        SupportedResourceTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CostCategoryReference = {
    type = "structure",
    members = {
        CostCategoryArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        EffectiveStart = {
            type = "string",
        },
        EffectiveEnd = {
            type = "string",
        },
        NumberOfRules = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        ProcessingStatus = {
            type = "list",
            member = M.CostCategoryProcessingStatus,
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
        DefaultValue = {
            type = "string",
        },
        SupportedResourceTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListCostCategoryDefinitionsOutput = {
    type = "structure",
    members = {
        CostCategoryReferences = {
            type = "list",
            member = M.CostCategoryReference,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCostCategoryResourceAssociationsInput = {
    type = "structure",
    members = {
        CostCategoryArn = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.CostCategoryResourceAssociation = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
        },
        CostCategoryName = {
            type = "string",
        },
        CostCategoryArn = {
            type = "string",
        },
    },
}

M.ListCostCategoryResourceAssociationsOutput = {
    type = "structure",
    members = {
        CostCategoryResourceAssociations = {
            type = "list",
            member = M.CostCategoryResourceAssociation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GenerationStatus = {
    SUCCEEDED = "SUCCEEDED",
    PROCESSING = "PROCESSING",
    FAILED = "FAILED",
}

M.ListSavingsPlansPurchaseRecommendationGenerationInput = {
    type = "structure",
    members = {
        GenerationStatus = {
            type = "string",
        },
        RecommendationIds = {
            type = "list",
            member = { type = "string" },
        },
        PageSize = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.GenerationSummary = {
    type = "structure",
    members = {
        RecommendationId = {
            type = "string",
        },
        GenerationStatus = {
            type = "string",
        },
        GenerationStartedTime = {
            type = "string",
        },
        GenerationCompletionTime = {
            type = "string",
        },
        EstimatedCompletionTime = {
            type = "string",
        },
    },
}

M.ListSavingsPlansPurchaseRecommendationGenerationOutput = {
    type = "structure",
    members = {
        GenerationSummaryList = {
            type = "list",
            member = M.GenerationSummary,
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        ResourceTags = {
            type = "list",
            member = M.ResourceTag,
        },
    },
}

M.ProvideAnomalyFeedbackInput = {
    type = "structure",
    members = {
        AnomalyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Feedback = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProvideAnomalyFeedbackOutput = {
    type = "structure",
    members = {
        AnomalyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GenerationExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StartCommitmentPurchaseAnalysisInput = {
    type = "structure",
    members = {
        CommitmentPurchaseAnalysisConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CommitmentPurchaseAnalysisConfiguration }),
    },
}

M.StartCommitmentPurchaseAnalysisOutput = {
    type = "structure",
    members = {
        AnalysisId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AnalysisStartedTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EstimatedCompletionTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BackfillLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StartCostAllocationTagBackfillInput = {
    type = "structure",
    members = {
        BackfillFrom = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartCostAllocationTagBackfillOutput = {
    type = "structure",
    members = {
        BackfillRequest = M.CostAllocationTagBackfillRequest,
    },
}

M.StartSavingsPlansPurchaseRecommendationGenerationInput = {
    type = "structure",
}

M.StartSavingsPlansPurchaseRecommendationGenerationOutput = {
    type = "structure",
    members = {
        RecommendationId = {
            type = "string",
        },
        GenerationStartedTime = {
            type = "string",
        },
        EstimatedCompletionTime = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceTags = {
            type = "list",
            member = M.ResourceTag,
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.TooManyTagsException = {
    type = "structure",
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
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceTagKeys = {
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
}

M.UpdateAnomalyMonitorInput = {
    type = "structure",
    members = {
        MonitorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MonitorName = {
            type = "string",
        },
    },
}

M.UpdateAnomalyMonitorOutput = {
    type = "structure",
    members = {
        MonitorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAnomalySubscriptionOutput = {
    type = "structure",
    members = {
        SubscriptionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CostAllocationTagStatusEntry = {
    type = "structure",
    members = {
        TagKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCostAllocationTagsStatusInput = {
    type = "structure",
    members = {
        CostAllocationTagsStatus = {
            type = "list",
            member = M.CostAllocationTagStatusEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCostAllocationTagsStatusError = {
    type = "structure",
    members = {
        TagKey = {
            type = "string",
        },
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.UpdateCostAllocationTagsStatusOutput = {
    type = "structure",
    members = {
        Errors = {
            type = "list",
            member = M.UpdateCostAllocationTagsStatusError,
        },
    },
}

M.UpdateCostCategoryDefinitionOutput = {
    type = "structure",
    members = {
        CostCategoryArn = {
            type = "string",
        },
        EffectiveStart = {
            type = "string",
        },
    },
}

M.Expression = {
    type = "structure",
    members = {
        Or = {
            type = "list",
            member = M.Expression,
        },
        And = {
            type = "list",
            member = M.Expression,
        },
        Not = M.Expression,
        Dimensions = M.DimensionValues,
        Tags = M.TagValues,
        CostCategories = M.CostCategoryValues,
    },
}

M.AnomalyMonitor = {
    type = "structure",
    members = {
        MonitorArn = {
            type = "string",
        },
        MonitorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationDate = {
            type = "string",
        },
        LastUpdatedDate = {
            type = "string",
        },
        LastEvaluatedDate = {
            type = "string",
        },
        MonitorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MonitorDimension = {
            type = "string",
        },
        MonitorSpecification = M.Expression,
        DimensionalValueCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.AnomalySubscription = {
    type = "structure",
    members = {
        SubscriptionArn = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        MonitorArnList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Subscribers = {
            type = "list",
            member = M.Subscriber,
            traits = {
                required = true,
            },
        },
        Threshold = {
            type = "double",
        },
        Frequency = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubscriptionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ThresholdExpression = M.Expression,
    },
}

M.CostAndUsageComparison = {
    type = "structure",
    members = {
        CostAndUsageSelector = M.Expression,
        Metrics = {
            type = "map",
            key = { type = "string" },
            value = M.ComparisonMetricValue,
        },
    },
}

M.CostCategoryRule = {
    type = "structure",
    members = {
        Value = {
            type = "string",
        },
        Rule = M.Expression,
        InheritedValue = M.CostCategoryInheritedValueDimension,
        Type = {
            type = "string",
        },
    },
}

M.CostComparisonDriver = {
    type = "structure",
    members = {
        CostSelector = M.Expression,
        Metrics = {
            type = "map",
            key = { type = "string" },
            value = M.ComparisonMetricValue,
        },
        CostDrivers = {
            type = "list",
            member = M.CostDriver,
        },
    },
}

M.GetCostAndUsageComparisonsInput = {
    type = "structure",
    members = {
        BillingViewArn = {
            type = "string",
        },
        BaselineTimePeriod = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DateInterval }),
        ComparisonTimePeriod = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DateInterval }),
        MetricForComparison = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filter = M.Expression,
        GroupBy = {
            type = "list",
            member = M.GroupDefinition,
        },
        MaxResults = {
            type = "integer",
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.GetCostAndUsageInput = {
    type = "structure",
    members = {
        TimePeriod = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DateInterval }),
        Granularity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filter = M.Expression,
        Metrics = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        GroupBy = {
            type = "list",
            member = M.GroupDefinition,
        },
        BillingViewArn = {
            type = "string",
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.GetCostAndUsageWithResourcesInput = {
    type = "structure",
    members = {
        TimePeriod = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DateInterval }),
        Granularity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filter = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Expression }),
        Metrics = {
            type = "list",
            member = { type = "string" },
        },
        GroupBy = {
            type = "list",
            member = M.GroupDefinition,
        },
        BillingViewArn = {
            type = "string",
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.GetCostCategoriesInput = {
    type = "structure",
    members = {
        SearchString = {
            type = "string",
        },
        TimePeriod = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DateInterval }),
        CostCategoryName = {
            type = "string",
        },
        Filter = M.Expression,
        SortBy = {
            type = "list",
            member = M.SortDefinition,
        },
        BillingViewArn = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.GetCostComparisonDriversInput = {
    type = "structure",
    members = {
        BillingViewArn = {
            type = "string",
        },
        BaselineTimePeriod = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DateInterval }),
        ComparisonTimePeriod = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DateInterval }),
        MetricForComparison = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filter = M.Expression,
        GroupBy = {
            type = "list",
            member = M.GroupDefinition,
        },
        MaxResults = {
            type = "integer",
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.GetCostForecastInput = {
    type = "structure",
    members = {
        TimePeriod = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DateInterval }),
        Metric = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Granularity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filter = M.Expression,
        BillingViewArn = {
            type = "string",
        },
        PredictionIntervalLevel = {
            type = "integer",
        },
    },
}

M.GetDimensionValuesInput = {
    type = "structure",
    members = {
        SearchString = {
            type = "string",
        },
        TimePeriod = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DateInterval }),
        Dimension = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Context = {
            type = "string",
        },
        Filter = M.Expression,
        SortBy = {
            type = "list",
            member = M.SortDefinition,
        },
        BillingViewArn = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.GetReservationCoverageInput = {
    type = "structure",
    members = {
        TimePeriod = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DateInterval }),
        GroupBy = {
            type = "list",
            member = M.GroupDefinition,
        },
        Granularity = {
            type = "string",
        },
        Filter = M.Expression,
        Metrics = {
            type = "list",
            member = { type = "string" },
        },
        NextPageToken = {
            type = "string",
        },
        SortBy = M.SortDefinition,
        MaxResults = {
            type = "integer",
        },
    },
}

M.GetReservationPurchaseRecommendationInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
        },
        Service = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filter = M.Expression,
        AccountScope = {
            type = "string",
        },
        LookbackPeriodInDays = {
            type = "string",
        },
        TermInYears = {
            type = "string",
        },
        PaymentOption = {
            type = "string",
        },
        ServiceSpecification = M.ServiceSpecification,
        PageSize = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.GetReservationUtilizationInput = {
    type = "structure",
    members = {
        TimePeriod = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DateInterval }),
        GroupBy = {
            type = "list",
            member = M.GroupDefinition,
        },
        Granularity = {
            type = "string",
        },
        Filter = M.Expression,
        SortBy = M.SortDefinition,
        NextPageToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.GetRightsizingRecommendationInput = {
    type = "structure",
    members = {
        Filter = M.Expression,
        Configuration = M.RightsizingRecommendationConfiguration,
        Service = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PageSize = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.GetSavingsPlansCoverageInput = {
    type = "structure",
    members = {
        TimePeriod = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DateInterval }),
        GroupBy = {
            type = "list",
            member = M.GroupDefinition,
        },
        Granularity = {
            type = "string",
        },
        Filter = M.Expression,
        Metrics = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        SortBy = M.SortDefinition,
    },
}

M.GetSavingsPlansPurchaseRecommendationInput = {
    type = "structure",
    members = {
        SavingsPlansType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TermInYears = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PaymentOption = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountScope = {
            type = "string",
        },
        NextPageToken = {
            type = "string",
        },
        PageSize = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        LookbackPeriodInDays = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filter = M.Expression,
    },
}

M.GetSavingsPlansUtilizationDetailsInput = {
    type = "structure",
    members = {
        TimePeriod = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DateInterval }),
        Filter = M.Expression,
        DataType = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        SortBy = M.SortDefinition,
    },
}

M.GetSavingsPlansUtilizationInput = {
    type = "structure",
    members = {
        TimePeriod = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DateInterval }),
        Granularity = {
            type = "string",
        },
        Filter = M.Expression,
        SortBy = M.SortDefinition,
    },
}

M.GetTagsInput = {
    type = "structure",
    members = {
        SearchString = {
            type = "string",
        },
        TimePeriod = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DateInterval }),
        TagKey = {
            type = "string",
        },
        Filter = M.Expression,
        SortBy = {
            type = "list",
            member = M.SortDefinition,
        },
        BillingViewArn = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.GetUsageForecastInput = {
    type = "structure",
    members = {
        TimePeriod = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DateInterval }),
        Metric = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Granularity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filter = M.Expression,
        BillingViewArn = {
            type = "string",
        },
        PredictionIntervalLevel = {
            type = "integer",
        },
    },
}

M.UpdateAnomalySubscriptionInput = {
    type = "structure",
    members = {
        SubscriptionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Threshold = {
            type = "double",
        },
        Frequency = {
            type = "string",
        },
        MonitorArnList = {
            type = "list",
            member = { type = "string" },
        },
        Subscribers = {
            type = "list",
            member = M.Subscriber,
        },
        SubscriptionName = {
            type = "string",
        },
        ThresholdExpression = M.Expression,
    },
}

M.CreateAnomalyMonitorInput = {
    type = "structure",
    members = {
        AnomalyMonitor = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AnomalyMonitor }),
        ResourceTags = {
            type = "list",
            member = M.ResourceTag,
        },
    },
}

M.CreateAnomalySubscriptionInput = {
    type = "structure",
    members = {
        AnomalySubscription = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AnomalySubscription }),
        ResourceTags = {
            type = "list",
            member = M.ResourceTag,
        },
    },
}

M.CostCategory = {
    type = "structure",
    members = {
        CostCategoryArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EffectiveStart = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EffectiveEnd = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Rules = {
            type = "list",
            member = M.CostCategoryRule,
            traits = {
                required = true,
            },
        },
        SplitChargeRules = {
            type = "list",
            member = M.CostCategorySplitChargeRule,
        },
        ProcessingStatus = {
            type = "list",
            member = M.CostCategoryProcessingStatus,
        },
        DefaultValue = {
            type = "string",
        },
    },
}

M.CreateCostCategoryDefinitionInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EffectiveStart = {
            type = "string",
        },
        RuleVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Rules = {
            type = "list",
            member = M.CostCategoryRule,
            traits = {
                required = true,
            },
        },
        DefaultValue = {
            type = "string",
        },
        SplitChargeRules = {
            type = "list",
            member = M.CostCategorySplitChargeRule,
        },
        ResourceTags = {
            type = "list",
            member = M.ResourceTag,
        },
    },
}

M.GetAnomalyMonitorsOutput = {
    type = "structure",
    members = {
        AnomalyMonitors = {
            type = "list",
            member = M.AnomalyMonitor,
            traits = {
                required = true,
            },
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.GetAnomalySubscriptionsOutput = {
    type = "structure",
    members = {
        AnomalySubscriptions = {
            type = "list",
            member = M.AnomalySubscription,
            traits = {
                required = true,
            },
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.GetCostAndUsageComparisonsOutput = {
    type = "structure",
    members = {
        CostAndUsageComparisons = {
            type = "list",
            member = M.CostAndUsageComparison,
        },
        TotalCostAndUsage = {
            type = "map",
            key = { type = "string" },
            value = M.ComparisonMetricValue,
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.GetCostComparisonDriversOutput = {
    type = "structure",
    members = {
        CostComparisonDrivers = {
            type = "list",
            member = M.CostComparisonDriver,
        },
        NextPageToken = {
            type = "string",
        },
    },
}

M.UpdateCostCategoryDefinitionInput = {
    type = "structure",
    members = {
        CostCategoryArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EffectiveStart = {
            type = "string",
        },
        RuleVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Rules = {
            type = "list",
            member = M.CostCategoryRule,
            traits = {
                required = true,
            },
        },
        DefaultValue = {
            type = "string",
        },
        SplitChargeRules = {
            type = "list",
            member = M.CostCategorySplitChargeRule,
        },
    },
}

M.DescribeCostCategoryDefinitionOutput = {
    type = "structure",
    members = {
        CostCategory = M.CostCategory,
    },
}

return M
