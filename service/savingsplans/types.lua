local M = {}

M.CreateSavingsPlanInput = {
    type = "structure",
    members = {
        savingsPlanOfferingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        commitment = {
            type = "string",
            traits = {
                required = true,
            },
        },
        upfrontPaymentAmount = {
            type = "string",
        },
        purchaseTime = {
            type = "timestamp",
        },
        clientToken = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateSavingsPlanOutput = {
    type = "structure",
    members = {
        savingsPlanId = {
            type = "string",
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
    },
}

M.ServiceQuotaExceededException = {
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
    },
}

M.DeleteQueuedSavingsPlanInput = {
    type = "structure",
    members = {
        savingsPlanId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteQueuedSavingsPlanOutput = {
    type = "structure",
}

M.SavingsPlanRateFilterName = {
    REGION = "region",
    INSTANCE_TYPE = "instanceType",
    PRODUCT_DESCRIPTION = "productDescription",
    TENANCY = "tenancy",
    PRODUCT_TYPE = "productType",
    SERVICE_CODE = "serviceCode",
    USAGE_TYPE = "usageType",
    OPERATION = "operation",
}

M.SavingsPlanRateFilter = {
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

M.DescribeSavingsPlanRatesInput = {
    type = "structure",
    members = {
        savingsPlanId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filters = {
            type = "list",
            member = M.SavingsPlanRateFilter,
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.CurrencyCode = {
    CNY = "CNY",
    USD = "USD",
    EUR = "EUR",
}

M.SavingsPlanProductType = {
    EC2 = "EC2",
    FARGATE = "Fargate",
    LAMBDA = "Lambda",
    SAGEMAKER = "SageMaker",
    RDS = "RDS",
    DSQL = "DSQL",
    DYNAMODB = "DynamoDB",
    ELASTICACHE = "ElastiCache",
    DOCDB = "DocDB",
    NEPTUNE = "Neptune",
    TIMESTREAM = "Timestream",
    KEYSPACES = "Keyspaces",
    DMS = "DMS",
    OPENSEARCH = "OpenSearch",
}

M.SavingsPlanRatePropertyKey = {
    REGION = "region",
    INSTANCE_TYPE = "instanceType",
    INSTANCE_FAMILY = "instanceFamily",
    PRODUCT_DESCRIPTION = "productDescription",
    TENANCY = "tenancy",
}

M.SavingsPlanRateProperty = {
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

M.SavingsPlanRateServiceCode = {
    EC2 = "AmazonEC2",
    FARGATE = "AmazonECS",
    FARGATE_EKS = "AmazonEKS",
    LAMBDA = "AWSLambda",
    SAGEMAKER = "AmazonSageMaker",
    RDS = "AmazonRDS",
    AURORA = "AuroraDSQL",
    DYNAMODB = "AmazonDynamoDB",
    ELASTICACHE = "AmazonElastiCache",
    DOCDB = "AmazonDocDB",
    NEPTUNE = "AmazonNeptune",
    TIMESTREAM = "AmazonTimestream",
    MCS = "AmazonMCS",
    DMS = "AWSDatabaseMigrationSvc",
    ES = "AmazonES",
}

M.SavingsPlanRateUnit = {
    HOURS = "Hrs",
    LAMBDA_GB_SECOND = "Lambda-GB-Second",
    REQUEST = "Request",
    ACU_HR = "ACU-Hr",
    READ_REQUEST_UNITS = "ReadRequestUnits",
    WRITE_REQUEST_UNITS = "WriteRequestUnits",
    READ_CAPACITY_UNIT_HRS = "ReadCapacityUnit-Hrs",
    WRITE_CAPACITY_UNIT_HRS = "WriteCapacityUnit-Hrs",
    REPLICATED_WRITE_REQUEST_UNITS = "ReplicatedWriteRequestUnits",
    REPLICATED_WRITE_CAPACITY_UNIT_HRS = "ReplicatedWriteCapacityUnit-Hrs",
    GB_HOURS = "GB-Hours",
    DPU = "DPU",
    ELASTI_CACHE_PROCESSING_UNIT = "ElastiCacheProcessingUnit",
    DCU_HR = "DCU-Hr",
    NCU_HR = "NCU-hr",
    OCU_HRS = "OCU-hours",
    JOBS = "Jobs",
}

M.SavingsPlanRate = {
    type = "structure",
    members = {
        rate = {
            type = "string",
        },
        currency = {
            type = "string",
        },
        unit = {
            type = "string",
        },
        productType = {
            type = "string",
        },
        serviceCode = {
            type = "string",
        },
        usageType = {
            type = "string",
        },
        operation = {
            type = "string",
        },
        properties = {
            type = "list",
            member = M.SavingsPlanRateProperty,
        },
    },
}

M.DescribeSavingsPlanRatesOutput = {
    type = "structure",
    members = {
        savingsPlanId = {
            type = "string",
        },
        searchResults = {
            type = "list",
            member = M.SavingsPlanRate,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SavingsPlansFilterName = {
    REGION = "region",
    EC2_INSTANCE_FAMILY = "ec2-instance-family",
    COMMITMENT = "commitment",
    UPFRONT = "upfront",
    TERM = "term",
    SAVINGS_PLAN_TYPE = "savings-plan-type",
    PAYMENT_OPTION = "payment-option",
    START = "start",
    END = "end",
    INSTANCE_FAMILY = "instance-family",
}

M.SavingsPlanFilter = {
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

M.SavingsPlanState = {
    PAYMENT_PENDING = "payment-pending",
    PAYMENT_FAILED = "payment-failed",
    ACTIVE = "active",
    RETIRED = "retired",
    QUEUED = "queued",
    QUEUED_DELETED = "queued-deleted",
    PENDING_RETURN = "pending-return",
    RETURNED = "returned",
}

M.DescribeSavingsPlansInput = {
    type = "structure",
    members = {
        savingsPlanArns = {
            type = "list",
            member = { type = "string" },
        },
        savingsPlanIds = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        states = {
            type = "list",
            member = { type = "string" },
        },
        filters = {
            type = "list",
            member = M.SavingsPlanFilter,
        },
    },
}

M.SavingsPlanPaymentOption = {
    ALL_UPFRONT = "All Upfront",
    PARTIAL_UPFRONT = "Partial Upfront",
    NO_UPFRONT = "No Upfront",
}

M.SavingsPlanType = {
    COMPUTE = "Compute",
    EC2_INSTANCE = "EC2Instance",
    SAGEMAKER = "SageMaker",
    DATABASE = "Database",
}

M.SavingsPlan = {
    type = "structure",
    members = {
        offeringId = {
            type = "string",
        },
        savingsPlanId = {
            type = "string",
        },
        savingsPlanArn = {
            type = "string",
        },
        description = {
            type = "string",
        },
        start = {
            type = "string",
        },
        end = {
            type = "string",
        },
        state = {
            type = "string",
        },
        region = {
            type = "string",
        },
        ec2InstanceFamily = {
            type = "string",
        },
        savingsPlanType = {
            type = "string",
        },
        paymentOption = {
            type = "string",
        },
        productTypes = {
            type = "list",
            member = { type = "string" },
        },
        currency = {
            type = "string",
        },
        commitment = {
            type = "string",
        },
        upfrontPaymentAmount = {
            type = "string",
        },
        recurringPaymentAmount = {
            type = "string",
        },
        termDurationInSeconds = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        returnableUntil = {
            type = "string",
        },
    },
}

M.DescribeSavingsPlansOutput = {
    type = "structure",
    members = {
        savingsPlans = {
            type = "list",
            member = M.SavingsPlan,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SavingsPlanRateFilterAttribute = {
    REGION = "region",
    INSTANCE_FAMILY = "instanceFamily",
    INSTANCE_TYPE = "instanceType",
    PRODUCT_DESCRIPTION = "productDescription",
    TENANCY = "tenancy",
    PRODUCT_ID = "productId",
}

M.SavingsPlanOfferingRateFilterElement = {
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

M.DescribeSavingsPlansOfferingRatesInput = {
    type = "structure",
    members = {
        savingsPlanOfferingIds = {
            type = "list",
            member = { type = "string" },
        },
        savingsPlanPaymentOptions = {
            type = "list",
            member = { type = "string" },
        },
        savingsPlanTypes = {
            type = "list",
            member = { type = "string" },
        },
        products = {
            type = "list",
            member = { type = "string" },
        },
        serviceCodes = {
            type = "list",
            member = { type = "string" },
        },
        usageTypes = {
            type = "list",
            member = { type = "string" },
        },
        operations = {
            type = "list",
            member = { type = "string" },
        },
        filters = {
            type = "list",
            member = M.SavingsPlanOfferingRateFilterElement,
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.SavingsPlanOfferingRateProperty = {
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

M.ParentSavingsPlanOffering = {
    type = "structure",
    members = {
        offeringId = {
            type = "string",
        },
        paymentOption = {
            type = "string",
        },
        planType = {
            type = "string",
        },
        durationSeconds = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        currency = {
            type = "string",
        },
        planDescription = {
            type = "string",
        },
    },
}

M.SavingsPlanOfferingRate = {
    type = "structure",
    members = {
        savingsPlanOffering = M.ParentSavingsPlanOffering,
        rate = {
            type = "string",
        },
        unit = {
            type = "string",
        },
        productType = {
            type = "string",
        },
        serviceCode = {
            type = "string",
        },
        usageType = {
            type = "string",
        },
        operation = {
            type = "string",
        },
        properties = {
            type = "list",
            member = M.SavingsPlanOfferingRateProperty,
        },
    },
}

M.DescribeSavingsPlansOfferingRatesOutput = {
    type = "structure",
    members = {
        searchResults = {
            type = "list",
            member = M.SavingsPlanOfferingRate,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SavingsPlanOfferingFilterAttribute = {
    region = "region",
    instanceFamily = "instanceFamily",
}

M.SavingsPlanOfferingFilterElement = {
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

M.DescribeSavingsPlansOfferingsInput = {
    type = "structure",
    members = {
        offeringIds = {
            type = "list",
            member = { type = "string" },
        },
        paymentOptions = {
            type = "list",
            member = { type = "string" },
        },
        productType = {
            type = "string",
        },
        planTypes = {
            type = "list",
            member = { type = "string" },
        },
        durations = {
            type = "list",
            member = { type = "long" },
        },
        currencies = {
            type = "list",
            member = { type = "string" },
        },
        descriptions = {
            type = "list",
            member = { type = "string" },
        },
        serviceCodes = {
            type = "list",
            member = { type = "string" },
        },
        usageTypes = {
            type = "list",
            member = { type = "string" },
        },
        operations = {
            type = "list",
            member = { type = "string" },
        },
        filters = {
            type = "list",
            member = M.SavingsPlanOfferingFilterElement,
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.SavingsPlanOfferingPropertyKey = {
    REGION = "region",
    INSTANCE_FAMILY = "instanceFamily",
}

M.SavingsPlanOfferingProperty = {
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

M.SavingsPlanOffering = {
    type = "structure",
    members = {
        offeringId = {
            type = "string",
        },
        productTypes = {
            type = "list",
            member = { type = "string" },
        },
        planType = {
            type = "string",
        },
        description = {
            type = "string",
        },
        paymentOption = {
            type = "string",
        },
        durationSeconds = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        currency = {
            type = "string",
        },
        serviceCode = {
            type = "string",
        },
        usageType = {
            type = "string",
        },
        operation = {
            type = "string",
        },
        properties = {
            type = "list",
            member = M.SavingsPlanOfferingProperty,
        },
    },
}

M.DescribeSavingsPlansOfferingsOutput = {
    type = "structure",
    members = {
        searchResults = {
            type = "list",
            member = M.SavingsPlanOffering,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
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

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ReturnSavingsPlanInput = {
    type = "structure",
    members = {
        savingsPlanId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.ReturnSavingsPlanOutput = {
    type = "structure",
    members = {
        savingsPlanId = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tagKeys = {
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

return M
