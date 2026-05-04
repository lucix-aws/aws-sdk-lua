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

M.AddReservedInstanceAction = {
    type = "structure",
    members = {
        reservedInstancesOfferingId = {
            type = "string",
        },
        instanceCount = {
            type = "number",
        },
    },
}

M.AddSavingsPlanAction = {
    type = "structure",
    members = {
        savingsPlanOfferingId = {
            type = "string",
        },
        commitment = {
            type = "number",
        },
    },
}

M.DataUnavailableException = {
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
        retryAfterSeconds = {
            type = "number",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ListBillEstimateCommitmentsInput = {
    type = "structure",
    members = {
        billEstimateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.CurrencyCode = {
    USD = "USD",
}

M.CostAmount = {
    type = "structure",
    members = {
        amount = {
            type = "number",
        },
        currency = {
            type = "string",
        },
    },
}

M.PurchaseAgreementType = {
    SAVINGS_PLANS = "SAVINGS_PLANS",
    RESERVED_INSTANCE = "RESERVED_INSTANCE",
}

M.BillEstimateCommitmentSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        purchaseAgreementType = {
            type = "string",
        },
        offeringId = {
            type = "string",
        },
        usageAccountId = {
            type = "string",
        },
        region = {
            type = "string",
        },
        termLength = {
            type = "string",
        },
        paymentOption = {
            type = "string",
        },
        upfrontPayment = {
            type = "structure",
        },
        monthlyPayment = {
            type = "structure",
        },
    },
}

M.ListBillEstimateCommitmentsOutput = {
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
        resourceType = {
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
            traits = {
                required = true,
            },
        },
        serviceCode = {
            type = "string",
        },
        quotaCode = {
            type = "string",
        },
        retryAfterSeconds = {
            type = "number",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    members = {
        name = {
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
    UNKNOWN_OPERATION = "unknownOperation",
    CANNOT_PARSE = "cannotParse",
    FIELD_VALIDATION_FAILED = "fieldValidationFailed",
    INVALID_REQUEST_FROM_MEMBER = "invalidRequestFromMember",
    DISALLOWED_RATE = "disallowedRate",
    OTHER = "other",
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
        fieldList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CostDifference = {
    type = "structure",
    members = {
        historicalCost = {
            type = "structure",
        },
        estimatedCost = {
            type = "structure",
        },
    },
}

M.BillEstimateCostSummary = {
    type = "structure",
    members = {
        totalCostDifference = {
            type = "structure",
        },
        serviceCostDifferences = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.ListBillEstimateInputCommitmentModificationsInput = {
    type = "structure",
    members = {
        billEstimateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.NegateReservedInstanceAction = {
    type = "structure",
    members = {
        reservedInstancesId = {
            type = "string",
        },
    },
}

M.NegateSavingsPlanAction = {
    type = "structure",
    members = {
        savingsPlanId = {
            type = "string",
        },
    },
}

M.BillScenarioCommitmentModificationAction = {
    type = "union",
    members = {
        addReservedInstanceAction = {
            type = "structure",
        },
        addSavingsPlanAction = {
            type = "structure",
        },
        negateReservedInstanceAction = {
            type = "structure",
        },
        negateSavingsPlanAction = {
            type = "structure",
        },
    },
}

M.BillEstimateInputCommitmentModificationSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        group = {
            type = "string",
        },
        usageAccountId = {
            type = "string",
        },
        commitmentAction = {
            type = "union",
        },
    },
}

M.ListBillEstimateInputCommitmentModificationsOutput = {
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

M.MatchOption = {
    EQUALS = "EQUALS",
    STARTS_WITH = "STARTS_WITH",
    CONTAINS = "CONTAINS",
}

M.ListUsageFilterName = {
    USAGE_ACCOUNT_ID = "USAGE_ACCOUNT_ID",
    SERVICE_CODE = "SERVICE_CODE",
    USAGE_TYPE = "USAGE_TYPE",
    OPERATION = "OPERATION",
    LOCATION = "LOCATION",
    USAGE_GROUP = "USAGE_GROUP",
    HISTORICAL_USAGE_ACCOUNT_ID = "HISTORICAL_USAGE_ACCOUNT_ID",
    HISTORICAL_SERVICE_CODE = "HISTORICAL_SERVICE_CODE",
    HISTORICAL_USAGE_TYPE = "HISTORICAL_USAGE_TYPE",
    HISTORICAL_OPERATION = "HISTORICAL_OPERATION",
    HISTORICAL_LOCATION = "HISTORICAL_LOCATION",
}

M.ListUsageFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        matchOption = {
            type = "string",
        },
    },
}

M.ListBillEstimateInputUsageModificationsInput = {
    type = "structure",
    members = {
        billEstimateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.BillInterval = {
    type = "structure",
    members = {
        start = {
            type = "timestamp",
        },
        end = {
            type = "timestamp",
        },
    },
}

M.ExpressionFilter = {
    type = "structure",
    members = {
        key = {
            type = "string",
        },
        matchOptions = {
            type = "list",
            member_type = "string",
        },
        values = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UsageQuantity = {
    type = "structure",
    members = {
        startHour = {
            type = "timestamp",
        },
        unit = {
            type = "string",
        },
        amount = {
            type = "number",
        },
    },
}

M.ListBillEstimateLineItemsFilterName = {
    USAGE_ACCOUNT_ID = "USAGE_ACCOUNT_ID",
    SERVICE_CODE = "SERVICE_CODE",
    USAGE_TYPE = "USAGE_TYPE",
    OPERATION = "OPERATION",
    LOCATION = "LOCATION",
    LINE_ITEM_TYPE = "LINE_ITEM_TYPE",
}

M.ListBillEstimateLineItemsFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        matchOption = {
            type = "string",
        },
    },
}

M.ListBillEstimateLineItemsInput = {
    type = "structure",
    members = {
        billEstimateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.UsageQuantityResult = {
    type = "structure",
    members = {
        amount = {
            type = "number",
        },
        unit = {
            type = "string",
        },
    },
}

M.BillEstimateLineItemSummary = {
    type = "structure",
    members = {
        serviceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        usageType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        location = {
            type = "string",
        },
        availabilityZone = {
            type = "string",
        },
        id = {
            type = "string",
        },
        lineItemId = {
            type = "string",
        },
        lineItemType = {
            type = "string",
        },
        payerAccountId = {
            type = "string",
        },
        usageAccountId = {
            type = "string",
        },
        estimatedUsageQuantity = {
            type = "structure",
        },
        estimatedCost = {
            type = "structure",
        },
        historicalUsageQuantity = {
            type = "structure",
        },
        historicalCost = {
            type = "structure",
        },
        savingsPlanArns = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListBillEstimateLineItemsOutput = {
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

M.BillEstimateStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETE = "COMPLETE",
    FAILED = "FAILED",
}

M.ConflictException = {
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
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateBillEstimateInput = {
    type = "structure",
    members = {
        billScenarioId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GroupSharingPreferenceEnum = {
    OPEN = "OPEN",
    PRIORITIZED = "PRIORITIZED",
    RESTRICTED = "RESTRICTED",
}

M.CreateBillEstimateOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
        failureMessage = {
            type = "string",
        },
        billInterval = {
            type = "structure",
        },
        costSummary = {
            type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        expiresAt = {
            type = "timestamp",
        },
        groupSharingPreference = {
            type = "string",
        },
        costCategoryGroupSharingPreferenceArn = {
            type = "string",
        },
        costCategoryGroupSharingPreferenceEffectiveDate = {
            type = "timestamp",
        },
    },
}

M.DeleteBillEstimateInput = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteBillEstimateOutput = {
    type = "structure",
}

M.GetBillEstimateInput = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetBillEstimateOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
        failureMessage = {
            type = "string",
        },
        billInterval = {
            type = "structure",
        },
        costSummary = {
            type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        expiresAt = {
            type = "timestamp",
        },
        groupSharingPreference = {
            type = "string",
        },
        costCategoryGroupSharingPreferenceArn = {
            type = "string",
        },
        costCategoryGroupSharingPreferenceEffectiveDate = {
            type = "timestamp",
        },
    },
}

M.FilterTimestamp = {
    type = "structure",
    members = {
        afterTimestamp = {
            type = "timestamp",
        },
        beforeTimestamp = {
            type = "timestamp",
        },
    },
}

M.ListBillEstimatesFilterName = {
    STATUS = "STATUS",
    NAME = "NAME",
}

M.ListBillEstimatesFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        matchOption = {
            type = "string",
        },
    },
}

M.ListBillEstimatesInput = {
    type = "structure",
    members = {
        filters = {
            type = "list",
            member_type = "structure",
        },
        createdAtFilter = {
            type = "structure",
        },
        expiresAtFilter = {
            type = "structure",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.BillEstimateSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
        billInterval = {
            type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        expiresAt = {
            type = "timestamp",
        },
    },
}

M.ListBillEstimatesOutput = {
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

M.UpdateBillEstimateInput = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        expiresAt = {
            type = "timestamp",
        },
    },
}

M.UpdateBillEstimateOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
        failureMessage = {
            type = "string",
        },
        billInterval = {
            type = "structure",
        },
        costSummary = {
            type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        expiresAt = {
            type = "timestamp",
        },
        groupSharingPreference = {
            type = "string",
        },
        costCategoryGroupSharingPreferenceArn = {
            type = "string",
        },
        costCategoryGroupSharingPreferenceEffectiveDate = {
            type = "timestamp",
        },
    },
}

M.BatchCreateBillScenarioCommitmentModificationEntry = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        group = {
            type = "string",
        },
        usageAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        commitmentAction = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchCreateBillScenarioCommitmentModificationInput = {
    type = "structure",
    members = {
        billScenarioId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        commitmentModifications = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
            },
        },
    },
}

M.BatchCreateBillScenarioCommitmentModificationErrorCode = {
    CONFLICT = "CONFLICT",
    INTERNAL_SERVER_ERROR = "INTERNAL_SERVER_ERROR",
    INVALID_ACCOUNT = "INVALID_ACCOUNT",
}

M.BatchCreateBillScenarioCommitmentModificationError = {
    type = "structure",
    members = {
        key = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
    },
}

M.BatchCreateBillScenarioCommitmentModificationItem = {
    type = "structure",
    members = {
        key = {
            type = "string",
        },
        id = {
            type = "string",
        },
        group = {
            type = "string",
        },
        usageAccountId = {
            type = "string",
        },
        commitmentAction = {
            type = "union",
        },
    },
}

M.BatchCreateBillScenarioCommitmentModificationOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchDeleteBillScenarioCommitmentModificationInput = {
    type = "structure",
    members = {
        billScenarioId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ids = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteBillScenarioCommitmentModificationErrorCode = {
    BAD_REQUEST = "BAD_REQUEST",
    CONFLICT = "CONFLICT",
    INTERNAL_SERVER_ERROR = "INTERNAL_SERVER_ERROR",
}

M.BatchDeleteBillScenarioCommitmentModificationError = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.BatchDeleteBillScenarioCommitmentModificationOutput = {
    type = "structure",
    members = {
        errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchUpdateBillScenarioCommitmentModificationEntry = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        group = {
            type = "string",
        },
    },
}

M.BatchUpdateBillScenarioCommitmentModificationInput = {
    type = "structure",
    members = {
        billScenarioId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        commitmentModifications = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateBillScenarioCommitmentModificationErrorCode = {
    BAD_REQUEST = "BAD_REQUEST",
    NOT_FOUND = "NOT_FOUND",
    CONFLICT = "CONFLICT",
    INTERNAL_SERVER_ERROR = "INTERNAL_SERVER_ERROR",
}

M.BatchUpdateBillScenarioCommitmentModificationError = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.BillScenarioCommitmentModificationItem = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        usageAccountId = {
            type = "string",
        },
        group = {
            type = "string",
        },
        commitmentAction = {
            type = "union",
        },
    },
}

M.BatchUpdateBillScenarioCommitmentModificationOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListBillScenarioCommitmentModificationsInput = {
    type = "structure",
    members = {
        billScenarioId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.ListBillScenarioCommitmentModificationsOutput = {
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

M.BillScenarioStatus = {
    READY = "READY",
    LOCKED = "LOCKED",
    FAILED = "FAILED",
    STALE = "STALE",
}

M.UsageAmount = {
    type = "structure",
    members = {
        startHour = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        amount = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchCreateBillScenarioUsageModificationErrorCode = {
    BAD_REQUEST = "BAD_REQUEST",
    NOT_FOUND = "NOT_FOUND",
    CONFLICT = "CONFLICT",
    INTERNAL_SERVER_ERROR = "INTERNAL_SERVER_ERROR",
}

M.BatchCreateBillScenarioUsageModificationError = {
    type = "structure",
    members = {
        key = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
        errorCode = {
            type = "string",
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
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceCode = {
            type = "string",
        },
        quotaCode = {
            type = "string",
        },
    },
}

M.BatchDeleteBillScenarioUsageModificationInput = {
    type = "structure",
    members = {
        billScenarioId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ids = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteBillScenarioUsageModificationErrorCode = {
    BAD_REQUEST = "BAD_REQUEST",
    CONFLICT = "CONFLICT",
    INTERNAL_SERVER_ERROR = "INTERNAL_SERVER_ERROR",
}

M.BatchDeleteBillScenarioUsageModificationError = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
    },
}

M.BatchDeleteBillScenarioUsageModificationOutput = {
    type = "structure",
    members = {
        errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchUpdateBillScenarioUsageModificationEntry = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        group = {
            type = "string",
        },
        amounts = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchUpdateBillScenarioUsageModificationInput = {
    type = "structure",
    members = {
        billScenarioId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        usageModifications = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateBillScenarioUsageModificationErrorCode = {
    BAD_REQUEST = "BAD_REQUEST",
    NOT_FOUND = "NOT_FOUND",
    CONFLICT = "CONFLICT",
    INTERNAL_SERVER_ERROR = "INTERNAL_SERVER_ERROR",
}

M.BatchUpdateBillScenarioUsageModificationError = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
    },
}

M.ListBillScenarioUsageModificationsInput = {
    type = "structure",
    members = {
        billScenarioId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.CreateBillScenarioInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        groupSharingPreference = {
            type = "string",
        },
        costCategoryGroupSharingPreferenceArn = {
            type = "string",
        },
    },
}

M.CreateBillScenarioOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        billInterval = {
            type = "structure",
        },
        status = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        expiresAt = {
            type = "timestamp",
        },
        failureMessage = {
            type = "string",
        },
        groupSharingPreference = {
            type = "string",
        },
        costCategoryGroupSharingPreferenceArn = {
            type = "string",
        },
    },
}

M.DeleteBillScenarioInput = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteBillScenarioOutput = {
    type = "structure",
}

M.GetBillScenarioInput = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetBillScenarioOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        billInterval = {
            type = "structure",
        },
        status = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        expiresAt = {
            type = "timestamp",
        },
        failureMessage = {
            type = "string",
        },
        groupSharingPreference = {
            type = "string",
        },
        costCategoryGroupSharingPreferenceArn = {
            type = "string",
        },
    },
}

M.ListBillScenariosFilterName = {
    STATUS = "STATUS",
    NAME = "NAME",
    GROUP_SHARING_PREFERENCE = "GROUP_SHARING_PREFERENCE",
    COST_CATEGORY_ARN = "COST_CATEGORY_ARN",
}

M.ListBillScenariosFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        matchOption = {
            type = "string",
        },
    },
}

M.ListBillScenariosInput = {
    type = "structure",
    members = {
        filters = {
            type = "list",
            member_type = "structure",
        },
        createdAtFilter = {
            type = "structure",
        },
        expiresAtFilter = {
            type = "structure",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.BillScenarioSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        billInterval = {
            type = "structure",
        },
        status = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        expiresAt = {
            type = "timestamp",
        },
        failureMessage = {
            type = "string",
        },
        groupSharingPreference = {
            type = "string",
        },
        costCategoryGroupSharingPreferenceArn = {
            type = "string",
        },
    },
}

M.ListBillScenariosOutput = {
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

M.UpdateBillScenarioInput = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        expiresAt = {
            type = "timestamp",
        },
        groupSharingPreference = {
            type = "string",
        },
        costCategoryGroupSharingPreferenceArn = {
            type = "string",
        },
    },
}

M.UpdateBillScenarioOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        billInterval = {
            type = "structure",
        },
        status = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        expiresAt = {
            type = "timestamp",
        },
        failureMessage = {
            type = "string",
        },
        groupSharingPreference = {
            type = "string",
        },
        costCategoryGroupSharingPreferenceArn = {
            type = "string",
        },
    },
}

M.GetPreferencesInput = {
    type = "structure",
}

M.RateType = {
    BEFORE_DISCOUNTS = "BEFORE_DISCOUNTS",
    AFTER_DISCOUNTS = "AFTER_DISCOUNTS",
    AFTER_DISCOUNTS_AND_COMMITMENTS = "AFTER_DISCOUNTS_AND_COMMITMENTS",
}

M.GetPreferencesOutput = {
    type = "structure",
    members = {
        managementAccountRateTypeSelections = {
            type = "list",
            member_type = "string",
        },
        memberAccountRateTypeSelections = {
            type = "list",
            member_type = "string",
        },
        standaloneAccountRateTypeSelections = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        arn = {
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdatePreferencesInput = {
    type = "structure",
    members = {
        managementAccountRateTypeSelections = {
            type = "list",
            member_type = "string",
        },
        memberAccountRateTypeSelections = {
            type = "list",
            member_type = "string",
        },
        standaloneAccountRateTypeSelections = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UpdatePreferencesOutput = {
    type = "structure",
    members = {
        managementAccountRateTypeSelections = {
            type = "list",
            member_type = "string",
        },
        memberAccountRateTypeSelections = {
            type = "list",
            member_type = "string",
        },
        standaloneAccountRateTypeSelections = {
            type = "list",
            member_type = "string",
        },
    },
}

M.WorkloadEstimateRateType = {
    BEFORE_DISCOUNTS = "BEFORE_DISCOUNTS",
    AFTER_DISCOUNTS = "AFTER_DISCOUNTS",
    AFTER_DISCOUNTS_AND_COMMITMENTS = "AFTER_DISCOUNTS_AND_COMMITMENTS",
}

M.CreateWorkloadEstimateInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
            },
        },
        rateType = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.WorkloadEstimateStatus = {
    UPDATING = "UPDATING",
    VALID = "VALID",
    INVALID = "INVALID",
    ACTION_NEEDED = "ACTION_NEEDED",
}

M.CreateWorkloadEstimateOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        expiresAt = {
            type = "timestamp",
        },
        rateType = {
            type = "string",
        },
        rateTimestamp = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        totalCost = {
            type = "number",
        },
        costCurrency = {
            type = "string",
        },
        failureMessage = {
            type = "string",
        },
    },
}

M.DeleteWorkloadEstimateInput = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteWorkloadEstimateOutput = {
    type = "structure",
}

M.GetWorkloadEstimateInput = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetWorkloadEstimateOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        expiresAt = {
            type = "timestamp",
        },
        rateType = {
            type = "string",
        },
        rateTimestamp = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        totalCost = {
            type = "number",
        },
        costCurrency = {
            type = "string",
        },
        failureMessage = {
            type = "string",
        },
    },
}

M.ListWorkloadEstimatesFilterName = {
    STATUS = "STATUS",
    NAME = "NAME",
}

M.ListWorkloadEstimatesFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        matchOption = {
            type = "string",
        },
    },
}

M.ListWorkloadEstimatesInput = {
    type = "structure",
    members = {
        createdAtFilter = {
            type = "structure",
        },
        expiresAtFilter = {
            type = "structure",
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.WorkloadEstimateSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        expiresAt = {
            type = "timestamp",
        },
        rateType = {
            type = "string",
        },
        rateTimestamp = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        totalCost = {
            type = "number",
        },
        costCurrency = {
            type = "string",
        },
        failureMessage = {
            type = "string",
        },
    },
}

M.ListWorkloadEstimatesOutput = {
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

M.UpdateWorkloadEstimateInput = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        expiresAt = {
            type = "timestamp",
        },
    },
}

M.UpdateWorkloadEstimateOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        expiresAt = {
            type = "timestamp",
        },
        rateType = {
            type = "string",
        },
        rateTimestamp = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        totalCost = {
            type = "number",
        },
        costCurrency = {
            type = "string",
        },
        failureMessage = {
            type = "string",
        },
    },
}

M.BatchCreateWorkloadEstimateUsageCode = {
    BAD_REQUEST = "BAD_REQUEST",
    NOT_FOUND = "NOT_FOUND",
    CONFLICT = "CONFLICT",
    INTERNAL_SERVER_ERROR = "INTERNAL_SERVER_ERROR",
}

M.BatchCreateWorkloadEstimateUsageError = {
    type = "structure",
    members = {
        key = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.WorkloadEstimateUsageQuantity = {
    type = "structure",
    members = {
        unit = {
            type = "string",
        },
        amount = {
            type = "number",
        },
    },
}

M.WorkloadEstimateCostStatus = {
    VALID = "VALID",
    INVALID = "INVALID",
    STALE = "STALE",
}

M.BatchDeleteWorkloadEstimateUsageInput = {
    type = "structure",
    members = {
        workloadEstimateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ids = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.WorkloadEstimateUpdateUsageErrorCode = {
    BAD_REQUEST = "BAD_REQUEST",
    NOT_FOUND = "NOT_FOUND",
    CONFLICT = "CONFLICT",
    INTERNAL_SERVER_ERROR = "INTERNAL_SERVER_ERROR",
}

M.BatchDeleteWorkloadEstimateUsageError = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
    },
}

M.BatchDeleteWorkloadEstimateUsageOutput = {
    type = "structure",
    members = {
        errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchUpdateWorkloadEstimateUsageEntry = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        group = {
            type = "string",
        },
        amount = {
            type = "number",
        },
    },
}

M.BatchUpdateWorkloadEstimateUsageInput = {
    type = "structure",
    members = {
        workloadEstimateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        usage = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateWorkloadEstimateUsageError = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
    },
}

M.ListWorkloadEstimateUsageInput = {
    type = "structure",
    members = {
        workloadEstimateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.Expression = {
    type = "structure",
    members = {
        and = {
            type = "list",
            member_type = "structure",
        },
        or = {
            type = "list",
            member_type = "structure",
        },
        not = {
            type = "structure",
        },
        costCategories = {
            type = "structure",
        },
        dimensions = {
            type = "structure",
        },
        tags = {
            type = "structure",
        },
    },
}

M.HistoricalUsageEntity = {
    type = "structure",
    members = {
        serviceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        usageType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        location = {
            type = "string",
        },
        usageAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        billInterval = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        filterExpression = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchCreateBillScenarioUsageModificationEntry = {
    type = "structure",
    members = {
        serviceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        usageType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        availabilityZone = {
            type = "string",
        },
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        group = {
            type = "string",
        },
        usageAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        amounts = {
            type = "list",
            member_type = "structure",
        },
        historicalUsage = {
            type = "structure",
        },
    },
}

M.BatchCreateBillScenarioUsageModificationItem = {
    type = "structure",
    members = {
        serviceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        usageType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        location = {
            type = "string",
        },
        availabilityZone = {
            type = "string",
        },
        id = {
            type = "string",
        },
        group = {
            type = "string",
        },
        usageAccountId = {
            type = "string",
        },
        quantities = {
            type = "list",
            member_type = "structure",
        },
        historicalUsage = {
            type = "structure",
        },
        key = {
            type = "string",
        },
    },
}

M.BatchCreateWorkloadEstimateUsageEntry = {
    type = "structure",
    members = {
        serviceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        usageType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        group = {
            type = "string",
        },
        usageAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        amount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        historicalUsage = {
            type = "structure",
        },
    },
}

M.BatchCreateWorkloadEstimateUsageItem = {
    type = "structure",
    members = {
        serviceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        usageType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        location = {
            type = "string",
        },
        id = {
            type = "string",
        },
        usageAccountId = {
            type = "string",
        },
        group = {
            type = "string",
        },
        quantity = {
            type = "structure",
        },
        cost = {
            type = "number",
        },
        currency = {
            type = "string",
        },
        status = {
            type = "string",
        },
        historicalUsage = {
            type = "structure",
        },
        key = {
            type = "string",
        },
    },
}

M.BillEstimateInputUsageModificationSummary = {
    type = "structure",
    members = {
        serviceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        usageType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        location = {
            type = "string",
        },
        availabilityZone = {
            type = "string",
        },
        id = {
            type = "string",
        },
        group = {
            type = "string",
        },
        usageAccountId = {
            type = "string",
        },
        quantities = {
            type = "list",
            member_type = "structure",
        },
        historicalUsage = {
            type = "structure",
        },
    },
}

M.BillScenarioUsageModificationItem = {
    type = "structure",
    members = {
        serviceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        usageType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        location = {
            type = "string",
        },
        availabilityZone = {
            type = "string",
        },
        id = {
            type = "string",
        },
        group = {
            type = "string",
        },
        usageAccountId = {
            type = "string",
        },
        quantities = {
            type = "list",
            member_type = "structure",
        },
        historicalUsage = {
            type = "structure",
        },
    },
}

M.WorkloadEstimateUsageItem = {
    type = "structure",
    members = {
        serviceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        usageType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        location = {
            type = "string",
        },
        id = {
            type = "string",
        },
        usageAccountId = {
            type = "string",
        },
        group = {
            type = "string",
        },
        quantity = {
            type = "structure",
        },
        cost = {
            type = "number",
        },
        currency = {
            type = "string",
        },
        status = {
            type = "string",
        },
        historicalUsage = {
            type = "structure",
        },
    },
}

M.BatchCreateBillScenarioUsageModificationInput = {
    type = "structure",
    members = {
        billScenarioId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        usageModifications = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
            },
        },
    },
}

M.BatchCreateBillScenarioUsageModificationOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchCreateWorkloadEstimateUsageInput = {
    type = "structure",
    members = {
        workloadEstimateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        usage = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
            },
        },
    },
}

M.BatchCreateWorkloadEstimateUsageOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchUpdateBillScenarioUsageModificationOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchUpdateWorkloadEstimateUsageOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListBillEstimateInputUsageModificationsOutput = {
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

M.ListBillScenarioUsageModificationsOutput = {
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

M.ListWorkloadEstimateUsageOutput = {
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

return M
