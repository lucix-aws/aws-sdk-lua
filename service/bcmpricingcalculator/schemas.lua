local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.bcmpricingcalculator"

local M = {}

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "AccessDeniedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AddReservedInstanceAction = schema.new({
    id = id.from(_N, "AddReservedInstanceAction"),
    type = "structure",
    members = {
        reservedInstancesOfferingId = schema.new({
            id = id.from(_N, "AddReservedInstanceAction", "reservedInstancesOfferingId"),
            type = "string",
            name = "reservedInstancesOfferingId",
            target_id = prelude.String.id,
        }),
        instanceCount = schema.new({
            id = id.from(_N, "AddReservedInstanceAction", "instanceCount"),
            type = "integer",
            name = "instanceCount",
            target_id = prelude.Integer.id,
        }),
    },
})

M.AddSavingsPlanAction = schema.new({
    id = id.from(_N, "AddSavingsPlanAction"),
    type = "structure",
    members = {
        savingsPlanOfferingId = schema.new({
            id = id.from(_N, "AddSavingsPlanAction", "savingsPlanOfferingId"),
            type = "string",
            name = "savingsPlanOfferingId",
            target_id = prelude.String.id,
        }),
        commitment = schema.new({
            id = id.from(_N, "AddSavingsPlanAction", "commitment"),
            type = "double",
            name = "commitment",
            target_id = prelude.Double.id,
        }),
    },
})

M.DataUnavailableException = schema.new({
    id = id.from(_N, "DataUnavailableException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DataUnavailableException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InternalServerException = schema.new({
    id = id.from(_N, "InternalServerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InternalServerException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        retryAfterSeconds = schema.new({
            id = id.from(_N, "InternalServerException", "retryAfterSeconds"),
            type = "integer",
            name = "retryAfterSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Retry-After" },
            },
        }),
    },
})

M.ListBillEstimateCommitmentsInput = schema.new({
    id = id.from(_N, "ListBillEstimateCommitmentsInput"),
    type = "structure",
    members = {
        billEstimateId = schema.new({
            id = id.from(_N, "ListBillEstimateCommitmentsInput", "billEstimateId"),
            type = "string",
            name = "billEstimateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBillEstimateCommitmentsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListBillEstimateCommitmentsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.CostAmount = schema.new({
    id = id.from(_N, "CostAmount"),
    type = "structure",
    members = {
        amount = schema.new({
            id = id.from(_N, "CostAmount", "amount"),
            type = "double",
            name = "amount",
            target_id = prelude.Double.id,
        }),
        currency = schema.new({
            id = id.from(_N, "CostAmount", "currency"),
            type = "string",
            name = "currency",
            target_id = prelude.String.id,
        }),
    },
})

M.BillEstimateCommitmentSummary = schema.new({
    id = id.from(_N, "BillEstimateCommitmentSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "BillEstimateCommitmentSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        purchaseAgreementType = schema.new({
            id = id.from(_N, "BillEstimateCommitmentSummary", "purchaseAgreementType"),
            type = "string",
            name = "purchaseAgreementType",
            target_id = prelude.String.id,
        }),
        offeringId = schema.new({
            id = id.from(_N, "BillEstimateCommitmentSummary", "offeringId"),
            type = "string",
            name = "offeringId",
            target_id = prelude.String.id,
        }),
        usageAccountId = schema.new({
            id = id.from(_N, "BillEstimateCommitmentSummary", "usageAccountId"),
            type = "string",
            name = "usageAccountId",
            target_id = prelude.String.id,
        }),
        region = schema.new({
            id = id.from(_N, "BillEstimateCommitmentSummary", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
        termLength = schema.new({
            id = id.from(_N, "BillEstimateCommitmentSummary", "termLength"),
            type = "string",
            name = "termLength",
            target_id = prelude.String.id,
        }),
        paymentOption = schema.new({
            id = id.from(_N, "BillEstimateCommitmentSummary", "paymentOption"),
            type = "string",
            name = "paymentOption",
            target_id = prelude.String.id,
        }),
        upfrontPayment = schema.new({
            id = id.from(_N, "BillEstimateCommitmentSummary", "upfrontPayment"),
            type = "structure",
            name = "upfrontPayment",
            target_id = id.from(_N, "CostAmount"),
            target = M.CostAmount,
        }),
        monthlyPayment = schema.new({
            id = id.from(_N, "BillEstimateCommitmentSummary", "monthlyPayment"),
            type = "structure",
            name = "monthlyPayment",
            target_id = id.from(_N, "CostAmount"),
            target = M.CostAmount,
        }),
    },
})

M.ListBillEstimateCommitmentsOutput = schema.new({
    id = id.from(_N, "ListBillEstimateCommitmentsOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListBillEstimateCommitmentsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.BillEstimateCommitmentSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBillEstimateCommitmentsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceNotFoundException = schema.new({
    id = id.from(_N, "ResourceNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceType = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ThrottlingException = schema.new({
    id = id.from(_N, "ThrottlingException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ThrottlingException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        serviceCode = schema.new({
            id = id.from(_N, "ThrottlingException", "serviceCode"),
            type = "string",
            name = "serviceCode",
            target_id = prelude.String.id,
        }),
        quotaCode = schema.new({
            id = id.from(_N, "ThrottlingException", "quotaCode"),
            type = "string",
            name = "quotaCode",
            target_id = prelude.String.id,
        }),
        retryAfterSeconds = schema.new({
            id = id.from(_N, "ThrottlingException", "retryAfterSeconds"),
            type = "integer",
            name = "retryAfterSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Retry-After" },
            },
        }),
    },
})

M.ValidationExceptionField = schema.new({
    id = id.from(_N, "ValidationExceptionField"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ValidationExceptionField", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        message = schema.new({
            id = id.from(_N, "ValidationExceptionField", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ValidationException = schema.new({
    id = id.from(_N, "ValidationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ValidationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        reason = schema.new({
            id = id.from(_N, "ValidationException", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
        }),
        fieldList = schema.new({
            id = id.from(_N, "ValidationException", "fieldList"),
            type = "list",
            name = "fieldList",
            target_id = prelude.Document.id,
            list_member = M.ValidationExceptionField,
        }),
    },
})

M.CostDifference = schema.new({
    id = id.from(_N, "CostDifference"),
    type = "structure",
    members = {
        historicalCost = schema.new({
            id = id.from(_N, "CostDifference", "historicalCost"),
            type = "structure",
            name = "historicalCost",
            target_id = id.from(_N, "CostAmount"),
            target = M.CostAmount,
        }),
        estimatedCost = schema.new({
            id = id.from(_N, "CostDifference", "estimatedCost"),
            type = "structure",
            name = "estimatedCost",
            target_id = id.from(_N, "CostAmount"),
            target = M.CostAmount,
        }),
    },
})

M.BillEstimateCostSummary = schema.new({
    id = id.from(_N, "BillEstimateCostSummary"),
    type = "structure",
    members = {
        totalCostDifference = schema.new({
            id = id.from(_N, "BillEstimateCostSummary", "totalCostDifference"),
            type = "structure",
            name = "totalCostDifference",
            target_id = id.from(_N, "CostDifference"),
            target = M.CostDifference,
        }),
        serviceCostDifferences = schema.new({
            id = id.from(_N, "BillEstimateCostSummary", "serviceCostDifferences"),
            type = "map",
            name = "serviceCostDifferences",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.CostDifference,
        }),
    },
})

M.ListBillEstimateInputCommitmentModificationsInput = schema.new({
    id = id.from(_N, "ListBillEstimateInputCommitmentModificationsInput"),
    type = "structure",
    members = {
        billEstimateId = schema.new({
            id = id.from(_N, "ListBillEstimateInputCommitmentModificationsInput", "billEstimateId"),
            type = "string",
            name = "billEstimateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBillEstimateInputCommitmentModificationsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListBillEstimateInputCommitmentModificationsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.NegateReservedInstanceAction = schema.new({
    id = id.from(_N, "NegateReservedInstanceAction"),
    type = "structure",
    members = {
        reservedInstancesId = schema.new({
            id = id.from(_N, "NegateReservedInstanceAction", "reservedInstancesId"),
            type = "string",
            name = "reservedInstancesId",
            target_id = prelude.String.id,
        }),
    },
})

M.NegateSavingsPlanAction = schema.new({
    id = id.from(_N, "NegateSavingsPlanAction"),
    type = "structure",
    members = {
        savingsPlanId = schema.new({
            id = id.from(_N, "NegateSavingsPlanAction", "savingsPlanId"),
            type = "string",
            name = "savingsPlanId",
            target_id = prelude.String.id,
        }),
    },
})

M.BillScenarioCommitmentModificationAction = schema.new({
    id = id.from(_N, "BillScenarioCommitmentModificationAction"),
    type = "union",
    members = {
        addReservedInstanceAction = schema.new({
            id = id.from(_N, "BillScenarioCommitmentModificationAction", "addReservedInstanceAction"),
            type = "structure",
            name = "addReservedInstanceAction",
            target_id = id.from(_N, "AddReservedInstanceAction"),
            target = M.AddReservedInstanceAction,
        }),
        addSavingsPlanAction = schema.new({
            id = id.from(_N, "BillScenarioCommitmentModificationAction", "addSavingsPlanAction"),
            type = "structure",
            name = "addSavingsPlanAction",
            target_id = id.from(_N, "AddSavingsPlanAction"),
            target = M.AddSavingsPlanAction,
        }),
        negateReservedInstanceAction = schema.new({
            id = id.from(_N, "BillScenarioCommitmentModificationAction", "negateReservedInstanceAction"),
            type = "structure",
            name = "negateReservedInstanceAction",
            target_id = id.from(_N, "NegateReservedInstanceAction"),
            target = M.NegateReservedInstanceAction,
        }),
        negateSavingsPlanAction = schema.new({
            id = id.from(_N, "BillScenarioCommitmentModificationAction", "negateSavingsPlanAction"),
            type = "structure",
            name = "negateSavingsPlanAction",
            target_id = id.from(_N, "NegateSavingsPlanAction"),
            target = M.NegateSavingsPlanAction,
        }),
    },
})

M.BillEstimateInputCommitmentModificationSummary = schema.new({
    id = id.from(_N, "BillEstimateInputCommitmentModificationSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "BillEstimateInputCommitmentModificationSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        group = schema.new({
            id = id.from(_N, "BillEstimateInputCommitmentModificationSummary", "group"),
            type = "string",
            name = "group",
            target_id = prelude.String.id,
        }),
        usageAccountId = schema.new({
            id = id.from(_N, "BillEstimateInputCommitmentModificationSummary", "usageAccountId"),
            type = "string",
            name = "usageAccountId",
            target_id = prelude.String.id,
        }),
        commitmentAction = schema.new({
            id = id.from(_N, "BillEstimateInputCommitmentModificationSummary", "commitmentAction"),
            type = "union",
            name = "commitmentAction",
            target_id = id.from(_N, "BillScenarioCommitmentModificationAction"),
            target = M.BillScenarioCommitmentModificationAction,
        }),
    },
})

M.ListBillEstimateInputCommitmentModificationsOutput = schema.new({
    id = id.from(_N, "ListBillEstimateInputCommitmentModificationsOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListBillEstimateInputCommitmentModificationsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.BillEstimateInputCommitmentModificationSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBillEstimateInputCommitmentModificationsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListUsageFilter = schema.new({
    id = id.from(_N, "ListUsageFilter"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ListUsageFilter", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        values = schema.new({
            id = id.from(_N, "ListUsageFilter", "values"),
            type = "list",
            name = "values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        matchOption = schema.new({
            id = id.from(_N, "ListUsageFilter", "matchOption"),
            type = "string",
            name = "matchOption",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBillEstimateInputUsageModificationsInput = schema.new({
    id = id.from(_N, "ListBillEstimateInputUsageModificationsInput"),
    type = "structure",
    members = {
        billEstimateId = schema.new({
            id = id.from(_N, "ListBillEstimateInputUsageModificationsInput", "billEstimateId"),
            type = "string",
            name = "billEstimateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filters = schema.new({
            id = id.from(_N, "ListBillEstimateInputUsageModificationsInput", "filters"),
            type = "list",
            name = "filters",
            target_id = prelude.Document.id,
            list_member = M.ListUsageFilter,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBillEstimateInputUsageModificationsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListBillEstimateInputUsageModificationsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.BillInterval = schema.new({
    id = id.from(_N, "BillInterval"),
    type = "structure",
    members = {
        start = schema.new({
            id = id.from(_N, "BillInterval", "start"),
            type = "timestamp",
            name = "start",
            target_id = prelude.Timestamp.id,
        }),
        end = schema.new({
            id = id.from(_N, "BillInterval", "end"),
            type = "timestamp",
            name = "end",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ExpressionFilter = schema.new({
    id = id.from(_N, "ExpressionFilter"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "ExpressionFilter", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
        }),
        matchOptions = schema.new({
            id = id.from(_N, "ExpressionFilter", "matchOptions"),
            type = "list",
            name = "matchOptions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        values = schema.new({
            id = id.from(_N, "ExpressionFilter", "values"),
            type = "list",
            name = "values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.UsageQuantity = schema.new({
    id = id.from(_N, "UsageQuantity"),
    type = "structure",
    members = {
        startHour = schema.new({
            id = id.from(_N, "UsageQuantity", "startHour"),
            type = "timestamp",
            name = "startHour",
            target_id = prelude.Timestamp.id,
        }),
        unit = schema.new({
            id = id.from(_N, "UsageQuantity", "unit"),
            type = "string",
            name = "unit",
            target_id = prelude.String.id,
        }),
        amount = schema.new({
            id = id.from(_N, "UsageQuantity", "amount"),
            type = "double",
            name = "amount",
            target_id = prelude.Double.id,
        }),
    },
})

M.ListBillEstimateLineItemsFilter = schema.new({
    id = id.from(_N, "ListBillEstimateLineItemsFilter"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ListBillEstimateLineItemsFilter", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        values = schema.new({
            id = id.from(_N, "ListBillEstimateLineItemsFilter", "values"),
            type = "list",
            name = "values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        matchOption = schema.new({
            id = id.from(_N, "ListBillEstimateLineItemsFilter", "matchOption"),
            type = "string",
            name = "matchOption",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBillEstimateLineItemsInput = schema.new({
    id = id.from(_N, "ListBillEstimateLineItemsInput"),
    type = "structure",
    members = {
        billEstimateId = schema.new({
            id = id.from(_N, "ListBillEstimateLineItemsInput", "billEstimateId"),
            type = "string",
            name = "billEstimateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filters = schema.new({
            id = id.from(_N, "ListBillEstimateLineItemsInput", "filters"),
            type = "list",
            name = "filters",
            target_id = prelude.Document.id,
            list_member = M.ListBillEstimateLineItemsFilter,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBillEstimateLineItemsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListBillEstimateLineItemsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.UsageQuantityResult = schema.new({
    id = id.from(_N, "UsageQuantityResult"),
    type = "structure",
    members = {
        amount = schema.new({
            id = id.from(_N, "UsageQuantityResult", "amount"),
            type = "double",
            name = "amount",
            target_id = prelude.Double.id,
        }),
        unit = schema.new({
            id = id.from(_N, "UsageQuantityResult", "unit"),
            type = "string",
            name = "unit",
            target_id = prelude.String.id,
        }),
    },
})

M.BillEstimateLineItemSummary = schema.new({
    id = id.from(_N, "BillEstimateLineItemSummary"),
    type = "structure",
    members = {
        serviceCode = schema.new({
            id = id.from(_N, "BillEstimateLineItemSummary", "serviceCode"),
            type = "string",
            name = "serviceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        usageType = schema.new({
            id = id.from(_N, "BillEstimateLineItemSummary", "usageType"),
            type = "string",
            name = "usageType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        operation = schema.new({
            id = id.from(_N, "BillEstimateLineItemSummary", "operation"),
            type = "string",
            name = "operation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        location = schema.new({
            id = id.from(_N, "BillEstimateLineItemSummary", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        availabilityZone = schema.new({
            id = id.from(_N, "BillEstimateLineItemSummary", "availabilityZone"),
            type = "string",
            name = "availabilityZone",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "BillEstimateLineItemSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        lineItemId = schema.new({
            id = id.from(_N, "BillEstimateLineItemSummary", "lineItemId"),
            type = "string",
            name = "lineItemId",
            target_id = prelude.String.id,
        }),
        lineItemType = schema.new({
            id = id.from(_N, "BillEstimateLineItemSummary", "lineItemType"),
            type = "string",
            name = "lineItemType",
            target_id = prelude.String.id,
        }),
        payerAccountId = schema.new({
            id = id.from(_N, "BillEstimateLineItemSummary", "payerAccountId"),
            type = "string",
            name = "payerAccountId",
            target_id = prelude.String.id,
        }),
        usageAccountId = schema.new({
            id = id.from(_N, "BillEstimateLineItemSummary", "usageAccountId"),
            type = "string",
            name = "usageAccountId",
            target_id = prelude.String.id,
        }),
        estimatedUsageQuantity = schema.new({
            id = id.from(_N, "BillEstimateLineItemSummary", "estimatedUsageQuantity"),
            type = "structure",
            name = "estimatedUsageQuantity",
            target_id = id.from(_N, "UsageQuantityResult"),
            target = M.UsageQuantityResult,
        }),
        estimatedCost = schema.new({
            id = id.from(_N, "BillEstimateLineItemSummary", "estimatedCost"),
            type = "structure",
            name = "estimatedCost",
            target_id = id.from(_N, "CostAmount"),
            target = M.CostAmount,
        }),
        historicalUsageQuantity = schema.new({
            id = id.from(_N, "BillEstimateLineItemSummary", "historicalUsageQuantity"),
            type = "structure",
            name = "historicalUsageQuantity",
            target_id = id.from(_N, "UsageQuantityResult"),
            target = M.UsageQuantityResult,
        }),
        historicalCost = schema.new({
            id = id.from(_N, "BillEstimateLineItemSummary", "historicalCost"),
            type = "structure",
            name = "historicalCost",
            target_id = id.from(_N, "CostAmount"),
            target = M.CostAmount,
        }),
        savingsPlanArns = schema.new({
            id = id.from(_N, "BillEstimateLineItemSummary", "savingsPlanArns"),
            type = "list",
            name = "savingsPlanArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListBillEstimateLineItemsOutput = schema.new({
    id = id.from(_N, "ListBillEstimateLineItemsOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListBillEstimateLineItemsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.BillEstimateLineItemSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBillEstimateLineItemsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ConflictException = schema.new({
    id = id.from(_N, "ConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ConflictException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "ConflictException", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceType = schema.new({
            id = id.from(_N, "ConflictException", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateBillEstimateInput = schema.new({
    id = id.from(_N, "CreateBillEstimateInput"),
    type = "structure",
    members = {
        billScenarioId = schema.new({
            id = id.from(_N, "CreateBillEstimateInput", "billScenarioId"),
            type = "string",
            name = "billScenarioId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateBillEstimateInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateBillEstimateInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Client-Token" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateBillEstimateInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateBillEstimateOutput = schema.new({
    id = id.from(_N, "CreateBillEstimateOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CreateBillEstimateOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateBillEstimateOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "CreateBillEstimateOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        failureMessage = schema.new({
            id = id.from(_N, "CreateBillEstimateOutput", "failureMessage"),
            type = "string",
            name = "failureMessage",
            target_id = prelude.String.id,
        }),
        billInterval = schema.new({
            id = id.from(_N, "CreateBillEstimateOutput", "billInterval"),
            type = "structure",
            name = "billInterval",
            target_id = id.from(_N, "BillInterval"),
            target = M.BillInterval,
        }),
        costSummary = schema.new({
            id = id.from(_N, "CreateBillEstimateOutput", "costSummary"),
            type = "structure",
            name = "costSummary",
            target_id = id.from(_N, "BillEstimateCostSummary"),
            target = M.BillEstimateCostSummary,
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreateBillEstimateOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        expiresAt = schema.new({
            id = id.from(_N, "CreateBillEstimateOutput", "expiresAt"),
            type = "timestamp",
            name = "expiresAt",
            target_id = prelude.Timestamp.id,
        }),
        groupSharingPreference = schema.new({
            id = id.from(_N, "CreateBillEstimateOutput", "groupSharingPreference"),
            type = "string",
            name = "groupSharingPreference",
            target_id = prelude.String.id,
        }),
        costCategoryGroupSharingPreferenceArn = schema.new({
            id = id.from(_N, "CreateBillEstimateOutput", "costCategoryGroupSharingPreferenceArn"),
            type = "string",
            name = "costCategoryGroupSharingPreferenceArn",
            target_id = prelude.String.id,
        }),
        costCategoryGroupSharingPreferenceEffectiveDate = schema.new({
            id = id.from(_N, "CreateBillEstimateOutput", "costCategoryGroupSharingPreferenceEffectiveDate"),
            type = "timestamp",
            name = "costCategoryGroupSharingPreferenceEffectiveDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DeleteBillEstimateInput = schema.new({
    id = id.from(_N, "DeleteBillEstimateInput"),
    type = "structure",
    members = {
        identifier = schema.new({
            id = id.from(_N, "DeleteBillEstimateInput", "identifier"),
            type = "string",
            name = "identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteBillEstimateOutput = schema.new({
    id = id.from(_N, "DeleteBillEstimateOutput"),
    type = "structure",
})

M.GetBillEstimateInput = schema.new({
    id = id.from(_N, "GetBillEstimateInput"),
    type = "structure",
    members = {
        identifier = schema.new({
            id = id.from(_N, "GetBillEstimateInput", "identifier"),
            type = "string",
            name = "identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetBillEstimateOutput = schema.new({
    id = id.from(_N, "GetBillEstimateOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetBillEstimateOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetBillEstimateOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetBillEstimateOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        failureMessage = schema.new({
            id = id.from(_N, "GetBillEstimateOutput", "failureMessage"),
            type = "string",
            name = "failureMessage",
            target_id = prelude.String.id,
        }),
        billInterval = schema.new({
            id = id.from(_N, "GetBillEstimateOutput", "billInterval"),
            type = "structure",
            name = "billInterval",
            target_id = id.from(_N, "BillInterval"),
            target = M.BillInterval,
        }),
        costSummary = schema.new({
            id = id.from(_N, "GetBillEstimateOutput", "costSummary"),
            type = "structure",
            name = "costSummary",
            target_id = id.from(_N, "BillEstimateCostSummary"),
            target = M.BillEstimateCostSummary,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetBillEstimateOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        expiresAt = schema.new({
            id = id.from(_N, "GetBillEstimateOutput", "expiresAt"),
            type = "timestamp",
            name = "expiresAt",
            target_id = prelude.Timestamp.id,
        }),
        groupSharingPreference = schema.new({
            id = id.from(_N, "GetBillEstimateOutput", "groupSharingPreference"),
            type = "string",
            name = "groupSharingPreference",
            target_id = prelude.String.id,
        }),
        costCategoryGroupSharingPreferenceArn = schema.new({
            id = id.from(_N, "GetBillEstimateOutput", "costCategoryGroupSharingPreferenceArn"),
            type = "string",
            name = "costCategoryGroupSharingPreferenceArn",
            target_id = prelude.String.id,
        }),
        costCategoryGroupSharingPreferenceEffectiveDate = schema.new({
            id = id.from(_N, "GetBillEstimateOutput", "costCategoryGroupSharingPreferenceEffectiveDate"),
            type = "timestamp",
            name = "costCategoryGroupSharingPreferenceEffectiveDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.FilterTimestamp = schema.new({
    id = id.from(_N, "FilterTimestamp"),
    type = "structure",
    members = {
        afterTimestamp = schema.new({
            id = id.from(_N, "FilterTimestamp", "afterTimestamp"),
            type = "timestamp",
            name = "afterTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        beforeTimestamp = schema.new({
            id = id.from(_N, "FilterTimestamp", "beforeTimestamp"),
            type = "timestamp",
            name = "beforeTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListBillEstimatesFilter = schema.new({
    id = id.from(_N, "ListBillEstimatesFilter"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ListBillEstimatesFilter", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        values = schema.new({
            id = id.from(_N, "ListBillEstimatesFilter", "values"),
            type = "list",
            name = "values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        matchOption = schema.new({
            id = id.from(_N, "ListBillEstimatesFilter", "matchOption"),
            type = "string",
            name = "matchOption",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBillEstimatesInput = schema.new({
    id = id.from(_N, "ListBillEstimatesInput"),
    type = "structure",
    members = {
        filters = schema.new({
            id = id.from(_N, "ListBillEstimatesInput", "filters"),
            type = "list",
            name = "filters",
            target_id = prelude.Document.id,
            list_member = M.ListBillEstimatesFilter,
        }),
        createdAtFilter = schema.new({
            id = id.from(_N, "ListBillEstimatesInput", "createdAtFilter"),
            type = "structure",
            name = "createdAtFilter",
            target_id = id.from(_N, "FilterTimestamp"),
            target = M.FilterTimestamp,
        }),
        expiresAtFilter = schema.new({
            id = id.from(_N, "ListBillEstimatesInput", "expiresAtFilter"),
            type = "structure",
            name = "expiresAtFilter",
            target_id = id.from(_N, "FilterTimestamp"),
            target = M.FilterTimestamp,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBillEstimatesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListBillEstimatesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.BillEstimateSummary = schema.new({
    id = id.from(_N, "BillEstimateSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "BillEstimateSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "BillEstimateSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "BillEstimateSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        billInterval = schema.new({
            id = id.from(_N, "BillEstimateSummary", "billInterval"),
            type = "structure",
            name = "billInterval",
            target_id = id.from(_N, "BillInterval"),
            target = M.BillInterval,
        }),
        createdAt = schema.new({
            id = id.from(_N, "BillEstimateSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        expiresAt = schema.new({
            id = id.from(_N, "BillEstimateSummary", "expiresAt"),
            type = "timestamp",
            name = "expiresAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListBillEstimatesOutput = schema.new({
    id = id.from(_N, "ListBillEstimatesOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListBillEstimatesOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.BillEstimateSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBillEstimatesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateBillEstimateInput = schema.new({
    id = id.from(_N, "UpdateBillEstimateInput"),
    type = "structure",
    members = {
        identifier = schema.new({
            id = id.from(_N, "UpdateBillEstimateInput", "identifier"),
            type = "string",
            name = "identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateBillEstimateInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        expiresAt = schema.new({
            id = id.from(_N, "UpdateBillEstimateInput", "expiresAt"),
            type = "timestamp",
            name = "expiresAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.UpdateBillEstimateOutput = schema.new({
    id = id.from(_N, "UpdateBillEstimateOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateBillEstimateOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateBillEstimateOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "UpdateBillEstimateOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        failureMessage = schema.new({
            id = id.from(_N, "UpdateBillEstimateOutput", "failureMessage"),
            type = "string",
            name = "failureMessage",
            target_id = prelude.String.id,
        }),
        billInterval = schema.new({
            id = id.from(_N, "UpdateBillEstimateOutput", "billInterval"),
            type = "structure",
            name = "billInterval",
            target_id = id.from(_N, "BillInterval"),
            target = M.BillInterval,
        }),
        costSummary = schema.new({
            id = id.from(_N, "UpdateBillEstimateOutput", "costSummary"),
            type = "structure",
            name = "costSummary",
            target_id = id.from(_N, "BillEstimateCostSummary"),
            target = M.BillEstimateCostSummary,
        }),
        createdAt = schema.new({
            id = id.from(_N, "UpdateBillEstimateOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        expiresAt = schema.new({
            id = id.from(_N, "UpdateBillEstimateOutput", "expiresAt"),
            type = "timestamp",
            name = "expiresAt",
            target_id = prelude.Timestamp.id,
        }),
        groupSharingPreference = schema.new({
            id = id.from(_N, "UpdateBillEstimateOutput", "groupSharingPreference"),
            type = "string",
            name = "groupSharingPreference",
            target_id = prelude.String.id,
        }),
        costCategoryGroupSharingPreferenceArn = schema.new({
            id = id.from(_N, "UpdateBillEstimateOutput", "costCategoryGroupSharingPreferenceArn"),
            type = "string",
            name = "costCategoryGroupSharingPreferenceArn",
            target_id = prelude.String.id,
        }),
        costCategoryGroupSharingPreferenceEffectiveDate = schema.new({
            id = id.from(_N, "UpdateBillEstimateOutput", "costCategoryGroupSharingPreferenceEffectiveDate"),
            type = "timestamp",
            name = "costCategoryGroupSharingPreferenceEffectiveDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.BatchCreateBillScenarioCommitmentModificationEntry = schema.new({
    id = id.from(_N, "BatchCreateBillScenarioCommitmentModificationEntry"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioCommitmentModificationEntry", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        group = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioCommitmentModificationEntry", "group"),
            type = "string",
            name = "group",
            target_id = prelude.String.id,
        }),
        usageAccountId = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioCommitmentModificationEntry", "usageAccountId"),
            type = "string",
            name = "usageAccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        commitmentAction = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioCommitmentModificationEntry", "commitmentAction"),
            type = "union",
            name = "commitmentAction",
            target_id = id.from(_N, "BillScenarioCommitmentModificationAction"),
            target = M.BillScenarioCommitmentModificationAction,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchCreateBillScenarioCommitmentModificationInput = schema.new({
    id = id.from(_N, "BatchCreateBillScenarioCommitmentModificationInput"),
    type = "structure",
    members = {
        billScenarioId = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioCommitmentModificationInput", "billScenarioId"),
            type = "string",
            name = "billScenarioId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        commitmentModifications = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioCommitmentModificationInput", "commitmentModifications"),
            type = "list",
            name = "commitmentModifications",
            target_id = prelude.Document.id,
            list_member = M.BatchCreateBillScenarioCommitmentModificationEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioCommitmentModificationInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Client-Token" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.BatchCreateBillScenarioCommitmentModificationError = schema.new({
    id = id.from(_N, "BatchCreateBillScenarioCommitmentModificationError"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioCommitmentModificationError", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioCommitmentModificationError", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
        errorCode = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioCommitmentModificationError", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchCreateBillScenarioCommitmentModificationItem = schema.new({
    id = id.from(_N, "BatchCreateBillScenarioCommitmentModificationItem"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioCommitmentModificationItem", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioCommitmentModificationItem", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        group = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioCommitmentModificationItem", "group"),
            type = "string",
            name = "group",
            target_id = prelude.String.id,
        }),
        usageAccountId = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioCommitmentModificationItem", "usageAccountId"),
            type = "string",
            name = "usageAccountId",
            target_id = prelude.String.id,
        }),
        commitmentAction = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioCommitmentModificationItem", "commitmentAction"),
            type = "union",
            name = "commitmentAction",
            target_id = id.from(_N, "BillScenarioCommitmentModificationAction"),
            target = M.BillScenarioCommitmentModificationAction,
        }),
    },
})

M.BatchCreateBillScenarioCommitmentModificationOutput = schema.new({
    id = id.from(_N, "BatchCreateBillScenarioCommitmentModificationOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioCommitmentModificationOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.BatchCreateBillScenarioCommitmentModificationItem,
        }),
        errors = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioCommitmentModificationOutput", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.BatchCreateBillScenarioCommitmentModificationError,
        }),
    },
})

M.BatchDeleteBillScenarioCommitmentModificationInput = schema.new({
    id = id.from(_N, "BatchDeleteBillScenarioCommitmentModificationInput"),
    type = "structure",
    members = {
        billScenarioId = schema.new({
            id = id.from(_N, "BatchDeleteBillScenarioCommitmentModificationInput", "billScenarioId"),
            type = "string",
            name = "billScenarioId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ids = schema.new({
            id = id.from(_N, "BatchDeleteBillScenarioCommitmentModificationInput", "ids"),
            type = "list",
            name = "ids",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchDeleteBillScenarioCommitmentModificationError = schema.new({
    id = id.from(_N, "BatchDeleteBillScenarioCommitmentModificationError"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "BatchDeleteBillScenarioCommitmentModificationError", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        errorCode = schema.new({
            id = id.from(_N, "BatchDeleteBillScenarioCommitmentModificationError", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "BatchDeleteBillScenarioCommitmentModificationError", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchDeleteBillScenarioCommitmentModificationOutput = schema.new({
    id = id.from(_N, "BatchDeleteBillScenarioCommitmentModificationOutput"),
    type = "structure",
    members = {
        errors = schema.new({
            id = id.from(_N, "BatchDeleteBillScenarioCommitmentModificationOutput", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.BatchDeleteBillScenarioCommitmentModificationError,
        }),
    },
})

M.BatchUpdateBillScenarioCommitmentModificationEntry = schema.new({
    id = id.from(_N, "BatchUpdateBillScenarioCommitmentModificationEntry"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "BatchUpdateBillScenarioCommitmentModificationEntry", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        group = schema.new({
            id = id.from(_N, "BatchUpdateBillScenarioCommitmentModificationEntry", "group"),
            type = "string",
            name = "group",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchUpdateBillScenarioCommitmentModificationInput = schema.new({
    id = id.from(_N, "BatchUpdateBillScenarioCommitmentModificationInput"),
    type = "structure",
    members = {
        billScenarioId = schema.new({
            id = id.from(_N, "BatchUpdateBillScenarioCommitmentModificationInput", "billScenarioId"),
            type = "string",
            name = "billScenarioId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        commitmentModifications = schema.new({
            id = id.from(_N, "BatchUpdateBillScenarioCommitmentModificationInput", "commitmentModifications"),
            type = "list",
            name = "commitmentModifications",
            target_id = prelude.Document.id,
            list_member = M.BatchUpdateBillScenarioCommitmentModificationEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchUpdateBillScenarioCommitmentModificationError = schema.new({
    id = id.from(_N, "BatchUpdateBillScenarioCommitmentModificationError"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "BatchUpdateBillScenarioCommitmentModificationError", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        errorCode = schema.new({
            id = id.from(_N, "BatchUpdateBillScenarioCommitmentModificationError", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "BatchUpdateBillScenarioCommitmentModificationError", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.BillScenarioCommitmentModificationItem = schema.new({
    id = id.from(_N, "BillScenarioCommitmentModificationItem"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "BillScenarioCommitmentModificationItem", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        usageAccountId = schema.new({
            id = id.from(_N, "BillScenarioCommitmentModificationItem", "usageAccountId"),
            type = "string",
            name = "usageAccountId",
            target_id = prelude.String.id,
        }),
        group = schema.new({
            id = id.from(_N, "BillScenarioCommitmentModificationItem", "group"),
            type = "string",
            name = "group",
            target_id = prelude.String.id,
        }),
        commitmentAction = schema.new({
            id = id.from(_N, "BillScenarioCommitmentModificationItem", "commitmentAction"),
            type = "union",
            name = "commitmentAction",
            target_id = id.from(_N, "BillScenarioCommitmentModificationAction"),
            target = M.BillScenarioCommitmentModificationAction,
        }),
    },
})

M.BatchUpdateBillScenarioCommitmentModificationOutput = schema.new({
    id = id.from(_N, "BatchUpdateBillScenarioCommitmentModificationOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "BatchUpdateBillScenarioCommitmentModificationOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.BillScenarioCommitmentModificationItem,
        }),
        errors = schema.new({
            id = id.from(_N, "BatchUpdateBillScenarioCommitmentModificationOutput", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.BatchUpdateBillScenarioCommitmentModificationError,
        }),
    },
})

M.ListBillScenarioCommitmentModificationsInput = schema.new({
    id = id.from(_N, "ListBillScenarioCommitmentModificationsInput"),
    type = "structure",
    members = {
        billScenarioId = schema.new({
            id = id.from(_N, "ListBillScenarioCommitmentModificationsInput", "billScenarioId"),
            type = "string",
            name = "billScenarioId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBillScenarioCommitmentModificationsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListBillScenarioCommitmentModificationsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListBillScenarioCommitmentModificationsOutput = schema.new({
    id = id.from(_N, "ListBillScenarioCommitmentModificationsOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListBillScenarioCommitmentModificationsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.BillScenarioCommitmentModificationItem,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBillScenarioCommitmentModificationsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UsageAmount = schema.new({
    id = id.from(_N, "UsageAmount"),
    type = "structure",
    members = {
        startHour = schema.new({
            id = id.from(_N, "UsageAmount", "startHour"),
            type = "timestamp",
            name = "startHour",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        amount = schema.new({
            id = id.from(_N, "UsageAmount", "amount"),
            type = "double",
            name = "amount",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchCreateBillScenarioUsageModificationError = schema.new({
    id = id.from(_N, "BatchCreateBillScenarioUsageModificationError"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioUsageModificationError", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioUsageModificationError", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
        errorCode = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioUsageModificationError", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceQuotaExceededException = schema.new({
    id = id.from(_N, "ServiceQuotaExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceType = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        serviceCode = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "serviceCode"),
            type = "string",
            name = "serviceCode",
            target_id = prelude.String.id,
        }),
        quotaCode = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "quotaCode"),
            type = "string",
            name = "quotaCode",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchDeleteBillScenarioUsageModificationInput = schema.new({
    id = id.from(_N, "BatchDeleteBillScenarioUsageModificationInput"),
    type = "structure",
    members = {
        billScenarioId = schema.new({
            id = id.from(_N, "BatchDeleteBillScenarioUsageModificationInput", "billScenarioId"),
            type = "string",
            name = "billScenarioId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ids = schema.new({
            id = id.from(_N, "BatchDeleteBillScenarioUsageModificationInput", "ids"),
            type = "list",
            name = "ids",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchDeleteBillScenarioUsageModificationError = schema.new({
    id = id.from(_N, "BatchDeleteBillScenarioUsageModificationError"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "BatchDeleteBillScenarioUsageModificationError", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "BatchDeleteBillScenarioUsageModificationError", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
        errorCode = schema.new({
            id = id.from(_N, "BatchDeleteBillScenarioUsageModificationError", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchDeleteBillScenarioUsageModificationOutput = schema.new({
    id = id.from(_N, "BatchDeleteBillScenarioUsageModificationOutput"),
    type = "structure",
    members = {
        errors = schema.new({
            id = id.from(_N, "BatchDeleteBillScenarioUsageModificationOutput", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.BatchDeleteBillScenarioUsageModificationError,
        }),
    },
})

M.BatchUpdateBillScenarioUsageModificationEntry = schema.new({
    id = id.from(_N, "BatchUpdateBillScenarioUsageModificationEntry"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "BatchUpdateBillScenarioUsageModificationEntry", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        group = schema.new({
            id = id.from(_N, "BatchUpdateBillScenarioUsageModificationEntry", "group"),
            type = "string",
            name = "group",
            target_id = prelude.String.id,
        }),
        amounts = schema.new({
            id = id.from(_N, "BatchUpdateBillScenarioUsageModificationEntry", "amounts"),
            type = "list",
            name = "amounts",
            target_id = prelude.Document.id,
            list_member = M.UsageAmount,
        }),
    },
})

M.BatchUpdateBillScenarioUsageModificationInput = schema.new({
    id = id.from(_N, "BatchUpdateBillScenarioUsageModificationInput"),
    type = "structure",
    members = {
        billScenarioId = schema.new({
            id = id.from(_N, "BatchUpdateBillScenarioUsageModificationInput", "billScenarioId"),
            type = "string",
            name = "billScenarioId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        usageModifications = schema.new({
            id = id.from(_N, "BatchUpdateBillScenarioUsageModificationInput", "usageModifications"),
            type = "list",
            name = "usageModifications",
            target_id = prelude.Document.id,
            list_member = M.BatchUpdateBillScenarioUsageModificationEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchUpdateBillScenarioUsageModificationError = schema.new({
    id = id.from(_N, "BatchUpdateBillScenarioUsageModificationError"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "BatchUpdateBillScenarioUsageModificationError", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "BatchUpdateBillScenarioUsageModificationError", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
        errorCode = schema.new({
            id = id.from(_N, "BatchUpdateBillScenarioUsageModificationError", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBillScenarioUsageModificationsInput = schema.new({
    id = id.from(_N, "ListBillScenarioUsageModificationsInput"),
    type = "structure",
    members = {
        billScenarioId = schema.new({
            id = id.from(_N, "ListBillScenarioUsageModificationsInput", "billScenarioId"),
            type = "string",
            name = "billScenarioId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filters = schema.new({
            id = id.from(_N, "ListBillScenarioUsageModificationsInput", "filters"),
            type = "list",
            name = "filters",
            target_id = prelude.Document.id,
            list_member = M.ListUsageFilter,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBillScenarioUsageModificationsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListBillScenarioUsageModificationsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.CreateBillScenarioInput = schema.new({
    id = id.from(_N, "CreateBillScenarioInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateBillScenarioInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateBillScenarioInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Client-Token" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateBillScenarioInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        groupSharingPreference = schema.new({
            id = id.from(_N, "CreateBillScenarioInput", "groupSharingPreference"),
            type = "string",
            name = "groupSharingPreference",
            target_id = prelude.String.id,
        }),
        costCategoryGroupSharingPreferenceArn = schema.new({
            id = id.from(_N, "CreateBillScenarioInput", "costCategoryGroupSharingPreferenceArn"),
            type = "string",
            name = "costCategoryGroupSharingPreferenceArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateBillScenarioOutput = schema.new({
    id = id.from(_N, "CreateBillScenarioOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CreateBillScenarioOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateBillScenarioOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        billInterval = schema.new({
            id = id.from(_N, "CreateBillScenarioOutput", "billInterval"),
            type = "structure",
            name = "billInterval",
            target_id = id.from(_N, "BillInterval"),
            target = M.BillInterval,
        }),
        status = schema.new({
            id = id.from(_N, "CreateBillScenarioOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreateBillScenarioOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        expiresAt = schema.new({
            id = id.from(_N, "CreateBillScenarioOutput", "expiresAt"),
            type = "timestamp",
            name = "expiresAt",
            target_id = prelude.Timestamp.id,
        }),
        failureMessage = schema.new({
            id = id.from(_N, "CreateBillScenarioOutput", "failureMessage"),
            type = "string",
            name = "failureMessage",
            target_id = prelude.String.id,
        }),
        groupSharingPreference = schema.new({
            id = id.from(_N, "CreateBillScenarioOutput", "groupSharingPreference"),
            type = "string",
            name = "groupSharingPreference",
            target_id = prelude.String.id,
        }),
        costCategoryGroupSharingPreferenceArn = schema.new({
            id = id.from(_N, "CreateBillScenarioOutput", "costCategoryGroupSharingPreferenceArn"),
            type = "string",
            name = "costCategoryGroupSharingPreferenceArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteBillScenarioInput = schema.new({
    id = id.from(_N, "DeleteBillScenarioInput"),
    type = "structure",
    members = {
        identifier = schema.new({
            id = id.from(_N, "DeleteBillScenarioInput", "identifier"),
            type = "string",
            name = "identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteBillScenarioOutput = schema.new({
    id = id.from(_N, "DeleteBillScenarioOutput"),
    type = "structure",
})

M.GetBillScenarioInput = schema.new({
    id = id.from(_N, "GetBillScenarioInput"),
    type = "structure",
    members = {
        identifier = schema.new({
            id = id.from(_N, "GetBillScenarioInput", "identifier"),
            type = "string",
            name = "identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetBillScenarioOutput = schema.new({
    id = id.from(_N, "GetBillScenarioOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetBillScenarioOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetBillScenarioOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        billInterval = schema.new({
            id = id.from(_N, "GetBillScenarioOutput", "billInterval"),
            type = "structure",
            name = "billInterval",
            target_id = id.from(_N, "BillInterval"),
            target = M.BillInterval,
        }),
        status = schema.new({
            id = id.from(_N, "GetBillScenarioOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetBillScenarioOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        expiresAt = schema.new({
            id = id.from(_N, "GetBillScenarioOutput", "expiresAt"),
            type = "timestamp",
            name = "expiresAt",
            target_id = prelude.Timestamp.id,
        }),
        failureMessage = schema.new({
            id = id.from(_N, "GetBillScenarioOutput", "failureMessage"),
            type = "string",
            name = "failureMessage",
            target_id = prelude.String.id,
        }),
        groupSharingPreference = schema.new({
            id = id.from(_N, "GetBillScenarioOutput", "groupSharingPreference"),
            type = "string",
            name = "groupSharingPreference",
            target_id = prelude.String.id,
        }),
        costCategoryGroupSharingPreferenceArn = schema.new({
            id = id.from(_N, "GetBillScenarioOutput", "costCategoryGroupSharingPreferenceArn"),
            type = "string",
            name = "costCategoryGroupSharingPreferenceArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBillScenariosFilter = schema.new({
    id = id.from(_N, "ListBillScenariosFilter"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ListBillScenariosFilter", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        values = schema.new({
            id = id.from(_N, "ListBillScenariosFilter", "values"),
            type = "list",
            name = "values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        matchOption = schema.new({
            id = id.from(_N, "ListBillScenariosFilter", "matchOption"),
            type = "string",
            name = "matchOption",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBillScenariosInput = schema.new({
    id = id.from(_N, "ListBillScenariosInput"),
    type = "structure",
    members = {
        filters = schema.new({
            id = id.from(_N, "ListBillScenariosInput", "filters"),
            type = "list",
            name = "filters",
            target_id = prelude.Document.id,
            list_member = M.ListBillScenariosFilter,
        }),
        createdAtFilter = schema.new({
            id = id.from(_N, "ListBillScenariosInput", "createdAtFilter"),
            type = "structure",
            name = "createdAtFilter",
            target_id = id.from(_N, "FilterTimestamp"),
            target = M.FilterTimestamp,
        }),
        expiresAtFilter = schema.new({
            id = id.from(_N, "ListBillScenariosInput", "expiresAtFilter"),
            type = "structure",
            name = "expiresAtFilter",
            target_id = id.from(_N, "FilterTimestamp"),
            target = M.FilterTimestamp,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBillScenariosInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListBillScenariosInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.BillScenarioSummary = schema.new({
    id = id.from(_N, "BillScenarioSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "BillScenarioSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "BillScenarioSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        billInterval = schema.new({
            id = id.from(_N, "BillScenarioSummary", "billInterval"),
            type = "structure",
            name = "billInterval",
            target_id = id.from(_N, "BillInterval"),
            target = M.BillInterval,
        }),
        status = schema.new({
            id = id.from(_N, "BillScenarioSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "BillScenarioSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        expiresAt = schema.new({
            id = id.from(_N, "BillScenarioSummary", "expiresAt"),
            type = "timestamp",
            name = "expiresAt",
            target_id = prelude.Timestamp.id,
        }),
        failureMessage = schema.new({
            id = id.from(_N, "BillScenarioSummary", "failureMessage"),
            type = "string",
            name = "failureMessage",
            target_id = prelude.String.id,
        }),
        groupSharingPreference = schema.new({
            id = id.from(_N, "BillScenarioSummary", "groupSharingPreference"),
            type = "string",
            name = "groupSharingPreference",
            target_id = prelude.String.id,
        }),
        costCategoryGroupSharingPreferenceArn = schema.new({
            id = id.from(_N, "BillScenarioSummary", "costCategoryGroupSharingPreferenceArn"),
            type = "string",
            name = "costCategoryGroupSharingPreferenceArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBillScenariosOutput = schema.new({
    id = id.from(_N, "ListBillScenariosOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListBillScenariosOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.BillScenarioSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBillScenariosOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateBillScenarioInput = schema.new({
    id = id.from(_N, "UpdateBillScenarioInput"),
    type = "structure",
    members = {
        identifier = schema.new({
            id = id.from(_N, "UpdateBillScenarioInput", "identifier"),
            type = "string",
            name = "identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateBillScenarioInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        expiresAt = schema.new({
            id = id.from(_N, "UpdateBillScenarioInput", "expiresAt"),
            type = "timestamp",
            name = "expiresAt",
            target_id = prelude.Timestamp.id,
        }),
        groupSharingPreference = schema.new({
            id = id.from(_N, "UpdateBillScenarioInput", "groupSharingPreference"),
            type = "string",
            name = "groupSharingPreference",
            target_id = prelude.String.id,
        }),
        costCategoryGroupSharingPreferenceArn = schema.new({
            id = id.from(_N, "UpdateBillScenarioInput", "costCategoryGroupSharingPreferenceArn"),
            type = "string",
            name = "costCategoryGroupSharingPreferenceArn",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateBillScenarioOutput = schema.new({
    id = id.from(_N, "UpdateBillScenarioOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateBillScenarioOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateBillScenarioOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        billInterval = schema.new({
            id = id.from(_N, "UpdateBillScenarioOutput", "billInterval"),
            type = "structure",
            name = "billInterval",
            target_id = id.from(_N, "BillInterval"),
            target = M.BillInterval,
        }),
        status = schema.new({
            id = id.from(_N, "UpdateBillScenarioOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "UpdateBillScenarioOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        expiresAt = schema.new({
            id = id.from(_N, "UpdateBillScenarioOutput", "expiresAt"),
            type = "timestamp",
            name = "expiresAt",
            target_id = prelude.Timestamp.id,
        }),
        failureMessage = schema.new({
            id = id.from(_N, "UpdateBillScenarioOutput", "failureMessage"),
            type = "string",
            name = "failureMessage",
            target_id = prelude.String.id,
        }),
        groupSharingPreference = schema.new({
            id = id.from(_N, "UpdateBillScenarioOutput", "groupSharingPreference"),
            type = "string",
            name = "groupSharingPreference",
            target_id = prelude.String.id,
        }),
        costCategoryGroupSharingPreferenceArn = schema.new({
            id = id.from(_N, "UpdateBillScenarioOutput", "costCategoryGroupSharingPreferenceArn"),
            type = "string",
            name = "costCategoryGroupSharingPreferenceArn",
            target_id = prelude.String.id,
        }),
    },
})

M.GetPreferencesInput = schema.new({
    id = id.from(_N, "GetPreferencesInput"),
    type = "structure",
})

M.GetPreferencesOutput = schema.new({
    id = id.from(_N, "GetPreferencesOutput"),
    type = "structure",
    members = {
        managementAccountRateTypeSelections = schema.new({
            id = id.from(_N, "GetPreferencesOutput", "managementAccountRateTypeSelections"),
            type = "list",
            name = "managementAccountRateTypeSelections",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        memberAccountRateTypeSelections = schema.new({
            id = id.from(_N, "GetPreferencesOutput", "memberAccountRateTypeSelections"),
            type = "list",
            name = "memberAccountRateTypeSelections",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        standaloneAccountRateTypeSelections = schema.new({
            id = id.from(_N, "GetPreferencesOutput", "standaloneAccountRateTypeSelections"),
            type = "list",
            name = "standaloneAccountRateTypeSelections",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceOutput"),
    type = "structure",
    members = {
        tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "TagResourceInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "TagResourceInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceOutput"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "UntagResourceInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "tagKeys"),
            type = "list",
            name = "tagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
})

M.UpdatePreferencesInput = schema.new({
    id = id.from(_N, "UpdatePreferencesInput"),
    type = "structure",
    members = {
        managementAccountRateTypeSelections = schema.new({
            id = id.from(_N, "UpdatePreferencesInput", "managementAccountRateTypeSelections"),
            type = "list",
            name = "managementAccountRateTypeSelections",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        memberAccountRateTypeSelections = schema.new({
            id = id.from(_N, "UpdatePreferencesInput", "memberAccountRateTypeSelections"),
            type = "list",
            name = "memberAccountRateTypeSelections",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        standaloneAccountRateTypeSelections = schema.new({
            id = id.from(_N, "UpdatePreferencesInput", "standaloneAccountRateTypeSelections"),
            type = "list",
            name = "standaloneAccountRateTypeSelections",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.UpdatePreferencesOutput = schema.new({
    id = id.from(_N, "UpdatePreferencesOutput"),
    type = "structure",
    members = {
        managementAccountRateTypeSelections = schema.new({
            id = id.from(_N, "UpdatePreferencesOutput", "managementAccountRateTypeSelections"),
            type = "list",
            name = "managementAccountRateTypeSelections",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        memberAccountRateTypeSelections = schema.new({
            id = id.from(_N, "UpdatePreferencesOutput", "memberAccountRateTypeSelections"),
            type = "list",
            name = "memberAccountRateTypeSelections",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        standaloneAccountRateTypeSelections = schema.new({
            id = id.from(_N, "UpdatePreferencesOutput", "standaloneAccountRateTypeSelections"),
            type = "list",
            name = "standaloneAccountRateTypeSelections",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CreateWorkloadEstimateInput = schema.new({
    id = id.from(_N, "CreateWorkloadEstimateInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateWorkloadEstimateInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateWorkloadEstimateInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Client-Token" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        rateType = schema.new({
            id = id.from(_N, "CreateWorkloadEstimateInput", "rateType"),
            type = "string",
            name = "rateType",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateWorkloadEstimateInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateWorkloadEstimateOutput = schema.new({
    id = id.from(_N, "CreateWorkloadEstimateOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CreateWorkloadEstimateOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateWorkloadEstimateOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreateWorkloadEstimateOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        expiresAt = schema.new({
            id = id.from(_N, "CreateWorkloadEstimateOutput", "expiresAt"),
            type = "timestamp",
            name = "expiresAt",
            target_id = prelude.Timestamp.id,
        }),
        rateType = schema.new({
            id = id.from(_N, "CreateWorkloadEstimateOutput", "rateType"),
            type = "string",
            name = "rateType",
            target_id = prelude.String.id,
        }),
        rateTimestamp = schema.new({
            id = id.from(_N, "CreateWorkloadEstimateOutput", "rateTimestamp"),
            type = "timestamp",
            name = "rateTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "CreateWorkloadEstimateOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        totalCost = schema.new({
            id = id.from(_N, "CreateWorkloadEstimateOutput", "totalCost"),
            type = "double",
            name = "totalCost",
            target_id = prelude.Double.id,
        }),
        costCurrency = schema.new({
            id = id.from(_N, "CreateWorkloadEstimateOutput", "costCurrency"),
            type = "string",
            name = "costCurrency",
            target_id = prelude.String.id,
        }),
        failureMessage = schema.new({
            id = id.from(_N, "CreateWorkloadEstimateOutput", "failureMessage"),
            type = "string",
            name = "failureMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteWorkloadEstimateInput = schema.new({
    id = id.from(_N, "DeleteWorkloadEstimateInput"),
    type = "structure",
    members = {
        identifier = schema.new({
            id = id.from(_N, "DeleteWorkloadEstimateInput", "identifier"),
            type = "string",
            name = "identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteWorkloadEstimateOutput = schema.new({
    id = id.from(_N, "DeleteWorkloadEstimateOutput"),
    type = "structure",
})

M.GetWorkloadEstimateInput = schema.new({
    id = id.from(_N, "GetWorkloadEstimateInput"),
    type = "structure",
    members = {
        identifier = schema.new({
            id = id.from(_N, "GetWorkloadEstimateInput", "identifier"),
            type = "string",
            name = "identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetWorkloadEstimateOutput = schema.new({
    id = id.from(_N, "GetWorkloadEstimateOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetWorkloadEstimateOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetWorkloadEstimateOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetWorkloadEstimateOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        expiresAt = schema.new({
            id = id.from(_N, "GetWorkloadEstimateOutput", "expiresAt"),
            type = "timestamp",
            name = "expiresAt",
            target_id = prelude.Timestamp.id,
        }),
        rateType = schema.new({
            id = id.from(_N, "GetWorkloadEstimateOutput", "rateType"),
            type = "string",
            name = "rateType",
            target_id = prelude.String.id,
        }),
        rateTimestamp = schema.new({
            id = id.from(_N, "GetWorkloadEstimateOutput", "rateTimestamp"),
            type = "timestamp",
            name = "rateTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetWorkloadEstimateOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        totalCost = schema.new({
            id = id.from(_N, "GetWorkloadEstimateOutput", "totalCost"),
            type = "double",
            name = "totalCost",
            target_id = prelude.Double.id,
        }),
        costCurrency = schema.new({
            id = id.from(_N, "GetWorkloadEstimateOutput", "costCurrency"),
            type = "string",
            name = "costCurrency",
            target_id = prelude.String.id,
        }),
        failureMessage = schema.new({
            id = id.from(_N, "GetWorkloadEstimateOutput", "failureMessage"),
            type = "string",
            name = "failureMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.ListWorkloadEstimatesFilter = schema.new({
    id = id.from(_N, "ListWorkloadEstimatesFilter"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ListWorkloadEstimatesFilter", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        values = schema.new({
            id = id.from(_N, "ListWorkloadEstimatesFilter", "values"),
            type = "list",
            name = "values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        matchOption = schema.new({
            id = id.from(_N, "ListWorkloadEstimatesFilter", "matchOption"),
            type = "string",
            name = "matchOption",
            target_id = prelude.String.id,
        }),
    },
})

M.ListWorkloadEstimatesInput = schema.new({
    id = id.from(_N, "ListWorkloadEstimatesInput"),
    type = "structure",
    members = {
        createdAtFilter = schema.new({
            id = id.from(_N, "ListWorkloadEstimatesInput", "createdAtFilter"),
            type = "structure",
            name = "createdAtFilter",
            target_id = id.from(_N, "FilterTimestamp"),
            target = M.FilterTimestamp,
        }),
        expiresAtFilter = schema.new({
            id = id.from(_N, "ListWorkloadEstimatesInput", "expiresAtFilter"),
            type = "structure",
            name = "expiresAtFilter",
            target_id = id.from(_N, "FilterTimestamp"),
            target = M.FilterTimestamp,
        }),
        filters = schema.new({
            id = id.from(_N, "ListWorkloadEstimatesInput", "filters"),
            type = "list",
            name = "filters",
            target_id = prelude.Document.id,
            list_member = M.ListWorkloadEstimatesFilter,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListWorkloadEstimatesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListWorkloadEstimatesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.WorkloadEstimateSummary = schema.new({
    id = id.from(_N, "WorkloadEstimateSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "WorkloadEstimateSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "WorkloadEstimateSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "WorkloadEstimateSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        expiresAt = schema.new({
            id = id.from(_N, "WorkloadEstimateSummary", "expiresAt"),
            type = "timestamp",
            name = "expiresAt",
            target_id = prelude.Timestamp.id,
        }),
        rateType = schema.new({
            id = id.from(_N, "WorkloadEstimateSummary", "rateType"),
            type = "string",
            name = "rateType",
            target_id = prelude.String.id,
        }),
        rateTimestamp = schema.new({
            id = id.from(_N, "WorkloadEstimateSummary", "rateTimestamp"),
            type = "timestamp",
            name = "rateTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "WorkloadEstimateSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        totalCost = schema.new({
            id = id.from(_N, "WorkloadEstimateSummary", "totalCost"),
            type = "double",
            name = "totalCost",
            target_id = prelude.Double.id,
        }),
        costCurrency = schema.new({
            id = id.from(_N, "WorkloadEstimateSummary", "costCurrency"),
            type = "string",
            name = "costCurrency",
            target_id = prelude.String.id,
        }),
        failureMessage = schema.new({
            id = id.from(_N, "WorkloadEstimateSummary", "failureMessage"),
            type = "string",
            name = "failureMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.ListWorkloadEstimatesOutput = schema.new({
    id = id.from(_N, "ListWorkloadEstimatesOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListWorkloadEstimatesOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.WorkloadEstimateSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListWorkloadEstimatesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateWorkloadEstimateInput = schema.new({
    id = id.from(_N, "UpdateWorkloadEstimateInput"),
    type = "structure",
    members = {
        identifier = schema.new({
            id = id.from(_N, "UpdateWorkloadEstimateInput", "identifier"),
            type = "string",
            name = "identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateWorkloadEstimateInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        expiresAt = schema.new({
            id = id.from(_N, "UpdateWorkloadEstimateInput", "expiresAt"),
            type = "timestamp",
            name = "expiresAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.UpdateWorkloadEstimateOutput = schema.new({
    id = id.from(_N, "UpdateWorkloadEstimateOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateWorkloadEstimateOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateWorkloadEstimateOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "UpdateWorkloadEstimateOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        expiresAt = schema.new({
            id = id.from(_N, "UpdateWorkloadEstimateOutput", "expiresAt"),
            type = "timestamp",
            name = "expiresAt",
            target_id = prelude.Timestamp.id,
        }),
        rateType = schema.new({
            id = id.from(_N, "UpdateWorkloadEstimateOutput", "rateType"),
            type = "string",
            name = "rateType",
            target_id = prelude.String.id,
        }),
        rateTimestamp = schema.new({
            id = id.from(_N, "UpdateWorkloadEstimateOutput", "rateTimestamp"),
            type = "timestamp",
            name = "rateTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "UpdateWorkloadEstimateOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        totalCost = schema.new({
            id = id.from(_N, "UpdateWorkloadEstimateOutput", "totalCost"),
            type = "double",
            name = "totalCost",
            target_id = prelude.Double.id,
        }),
        costCurrency = schema.new({
            id = id.from(_N, "UpdateWorkloadEstimateOutput", "costCurrency"),
            type = "string",
            name = "costCurrency",
            target_id = prelude.String.id,
        }),
        failureMessage = schema.new({
            id = id.from(_N, "UpdateWorkloadEstimateOutput", "failureMessage"),
            type = "string",
            name = "failureMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchCreateWorkloadEstimateUsageError = schema.new({
    id = id.from(_N, "BatchCreateWorkloadEstimateUsageError"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "BatchCreateWorkloadEstimateUsageError", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
        }),
        errorCode = schema.new({
            id = id.from(_N, "BatchCreateWorkloadEstimateUsageError", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "BatchCreateWorkloadEstimateUsageError", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.WorkloadEstimateUsageQuantity = schema.new({
    id = id.from(_N, "WorkloadEstimateUsageQuantity"),
    type = "structure",
    members = {
        unit = schema.new({
            id = id.from(_N, "WorkloadEstimateUsageQuantity", "unit"),
            type = "string",
            name = "unit",
            target_id = prelude.String.id,
        }),
        amount = schema.new({
            id = id.from(_N, "WorkloadEstimateUsageQuantity", "amount"),
            type = "double",
            name = "amount",
            target_id = prelude.Double.id,
        }),
    },
})

M.BatchDeleteWorkloadEstimateUsageInput = schema.new({
    id = id.from(_N, "BatchDeleteWorkloadEstimateUsageInput"),
    type = "structure",
    members = {
        workloadEstimateId = schema.new({
            id = id.from(_N, "BatchDeleteWorkloadEstimateUsageInput", "workloadEstimateId"),
            type = "string",
            name = "workloadEstimateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ids = schema.new({
            id = id.from(_N, "BatchDeleteWorkloadEstimateUsageInput", "ids"),
            type = "list",
            name = "ids",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchDeleteWorkloadEstimateUsageError = schema.new({
    id = id.from(_N, "BatchDeleteWorkloadEstimateUsageError"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "BatchDeleteWorkloadEstimateUsageError", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "BatchDeleteWorkloadEstimateUsageError", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
        errorCode = schema.new({
            id = id.from(_N, "BatchDeleteWorkloadEstimateUsageError", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchDeleteWorkloadEstimateUsageOutput = schema.new({
    id = id.from(_N, "BatchDeleteWorkloadEstimateUsageOutput"),
    type = "structure",
    members = {
        errors = schema.new({
            id = id.from(_N, "BatchDeleteWorkloadEstimateUsageOutput", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.BatchDeleteWorkloadEstimateUsageError,
        }),
    },
})

M.BatchUpdateWorkloadEstimateUsageEntry = schema.new({
    id = id.from(_N, "BatchUpdateWorkloadEstimateUsageEntry"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "BatchUpdateWorkloadEstimateUsageEntry", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        group = schema.new({
            id = id.from(_N, "BatchUpdateWorkloadEstimateUsageEntry", "group"),
            type = "string",
            name = "group",
            target_id = prelude.String.id,
        }),
        amount = schema.new({
            id = id.from(_N, "BatchUpdateWorkloadEstimateUsageEntry", "amount"),
            type = "double",
            name = "amount",
            target_id = prelude.Double.id,
        }),
    },
})

M.BatchUpdateWorkloadEstimateUsageInput = schema.new({
    id = id.from(_N, "BatchUpdateWorkloadEstimateUsageInput"),
    type = "structure",
    members = {
        workloadEstimateId = schema.new({
            id = id.from(_N, "BatchUpdateWorkloadEstimateUsageInput", "workloadEstimateId"),
            type = "string",
            name = "workloadEstimateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        usage = schema.new({
            id = id.from(_N, "BatchUpdateWorkloadEstimateUsageInput", "usage"),
            type = "list",
            name = "usage",
            target_id = prelude.Document.id,
            list_member = M.BatchUpdateWorkloadEstimateUsageEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchUpdateWorkloadEstimateUsageError = schema.new({
    id = id.from(_N, "BatchUpdateWorkloadEstimateUsageError"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "BatchUpdateWorkloadEstimateUsageError", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "BatchUpdateWorkloadEstimateUsageError", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
        errorCode = schema.new({
            id = id.from(_N, "BatchUpdateWorkloadEstimateUsageError", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
        }),
    },
})

M.ListWorkloadEstimateUsageInput = schema.new({
    id = id.from(_N, "ListWorkloadEstimateUsageInput"),
    type = "structure",
    members = {
        workloadEstimateId = schema.new({
            id = id.from(_N, "ListWorkloadEstimateUsageInput", "workloadEstimateId"),
            type = "string",
            name = "workloadEstimateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filters = schema.new({
            id = id.from(_N, "ListWorkloadEstimateUsageInput", "filters"),
            type = "list",
            name = "filters",
            target_id = prelude.Document.id,
            list_member = M.ListUsageFilter,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListWorkloadEstimateUsageInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListWorkloadEstimateUsageInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.Expression = schema.new({
    id = id.from(_N, "Expression"),
    type = "structure",
    members = {
        and = schema.new({
            id = id.from(_N, "Expression", "and"),
            type = "list",
            name = "and",
            target_id = prelude.Document.id,
            list_member = M.Expression,
        }),
        or = schema.new({
            id = id.from(_N, "Expression", "or"),
            type = "list",
            name = "or",
            target_id = prelude.Document.id,
            list_member = M.Expression,
        }),
        not = schema.new({
            id = id.from(_N, "Expression", "not"),
            type = "structure",
            name = "not",
            target_id = id.from(_N, "Expression"),
            target = M.Expression,
        }),
        costCategories = schema.new({
            id = id.from(_N, "Expression", "costCategories"),
            type = "structure",
            name = "costCategories",
            target_id = id.from(_N, "ExpressionFilter"),
            target = M.ExpressionFilter,
        }),
        dimensions = schema.new({
            id = id.from(_N, "Expression", "dimensions"),
            type = "structure",
            name = "dimensions",
            target_id = id.from(_N, "ExpressionFilter"),
            target = M.ExpressionFilter,
        }),
        tags = schema.new({
            id = id.from(_N, "Expression", "tags"),
            type = "structure",
            name = "tags",
            target_id = id.from(_N, "ExpressionFilter"),
            target = M.ExpressionFilter,
        }),
    },
})

M.HistoricalUsageEntity = schema.new({
    id = id.from(_N, "HistoricalUsageEntity"),
    type = "structure",
    members = {
        serviceCode = schema.new({
            id = id.from(_N, "HistoricalUsageEntity", "serviceCode"),
            type = "string",
            name = "serviceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        usageType = schema.new({
            id = id.from(_N, "HistoricalUsageEntity", "usageType"),
            type = "string",
            name = "usageType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        operation = schema.new({
            id = id.from(_N, "HistoricalUsageEntity", "operation"),
            type = "string",
            name = "operation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        location = schema.new({
            id = id.from(_N, "HistoricalUsageEntity", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        usageAccountId = schema.new({
            id = id.from(_N, "HistoricalUsageEntity", "usageAccountId"),
            type = "string",
            name = "usageAccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        billInterval = schema.new({
            id = id.from(_N, "HistoricalUsageEntity", "billInterval"),
            type = "structure",
            name = "billInterval",
            target_id = id.from(_N, "BillInterval"),
            target = M.BillInterval,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filterExpression = schema.new({
            id = id.from(_N, "HistoricalUsageEntity", "filterExpression"),
            type = "structure",
            name = "filterExpression",
            target_id = id.from(_N, "Expression"),
            target = M.Expression,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchCreateBillScenarioUsageModificationEntry = schema.new({
    id = id.from(_N, "BatchCreateBillScenarioUsageModificationEntry"),
    type = "structure",
    members = {
        serviceCode = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioUsageModificationEntry", "serviceCode"),
            type = "string",
            name = "serviceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        usageType = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioUsageModificationEntry", "usageType"),
            type = "string",
            name = "usageType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        operation = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioUsageModificationEntry", "operation"),
            type = "string",
            name = "operation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        availabilityZone = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioUsageModificationEntry", "availabilityZone"),
            type = "string",
            name = "availabilityZone",
            target_id = prelude.String.id,
        }),
        key = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioUsageModificationEntry", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        group = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioUsageModificationEntry", "group"),
            type = "string",
            name = "group",
            target_id = prelude.String.id,
        }),
        usageAccountId = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioUsageModificationEntry", "usageAccountId"),
            type = "string",
            name = "usageAccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        amounts = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioUsageModificationEntry", "amounts"),
            type = "list",
            name = "amounts",
            target_id = prelude.Document.id,
            list_member = M.UsageAmount,
        }),
        historicalUsage = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioUsageModificationEntry", "historicalUsage"),
            type = "structure",
            name = "historicalUsage",
            target_id = id.from(_N, "HistoricalUsageEntity"),
            target = M.HistoricalUsageEntity,
        }),
    },
})

M.BatchCreateBillScenarioUsageModificationItem = schema.new({
    id = id.from(_N, "BatchCreateBillScenarioUsageModificationItem"),
    type = "structure",
    members = {
        serviceCode = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioUsageModificationItem", "serviceCode"),
            type = "string",
            name = "serviceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        usageType = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioUsageModificationItem", "usageType"),
            type = "string",
            name = "usageType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        operation = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioUsageModificationItem", "operation"),
            type = "string",
            name = "operation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        location = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioUsageModificationItem", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        availabilityZone = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioUsageModificationItem", "availabilityZone"),
            type = "string",
            name = "availabilityZone",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioUsageModificationItem", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        group = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioUsageModificationItem", "group"),
            type = "string",
            name = "group",
            target_id = prelude.String.id,
        }),
        usageAccountId = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioUsageModificationItem", "usageAccountId"),
            type = "string",
            name = "usageAccountId",
            target_id = prelude.String.id,
        }),
        quantities = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioUsageModificationItem", "quantities"),
            type = "list",
            name = "quantities",
            target_id = prelude.Document.id,
            list_member = M.UsageQuantity,
        }),
        historicalUsage = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioUsageModificationItem", "historicalUsage"),
            type = "structure",
            name = "historicalUsage",
            target_id = id.from(_N, "HistoricalUsageEntity"),
            target = M.HistoricalUsageEntity,
        }),
        key = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioUsageModificationItem", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchCreateWorkloadEstimateUsageEntry = schema.new({
    id = id.from(_N, "BatchCreateWorkloadEstimateUsageEntry"),
    type = "structure",
    members = {
        serviceCode = schema.new({
            id = id.from(_N, "BatchCreateWorkloadEstimateUsageEntry", "serviceCode"),
            type = "string",
            name = "serviceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        usageType = schema.new({
            id = id.from(_N, "BatchCreateWorkloadEstimateUsageEntry", "usageType"),
            type = "string",
            name = "usageType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        operation = schema.new({
            id = id.from(_N, "BatchCreateWorkloadEstimateUsageEntry", "operation"),
            type = "string",
            name = "operation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        key = schema.new({
            id = id.from(_N, "BatchCreateWorkloadEstimateUsageEntry", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        group = schema.new({
            id = id.from(_N, "BatchCreateWorkloadEstimateUsageEntry", "group"),
            type = "string",
            name = "group",
            target_id = prelude.String.id,
        }),
        usageAccountId = schema.new({
            id = id.from(_N, "BatchCreateWorkloadEstimateUsageEntry", "usageAccountId"),
            type = "string",
            name = "usageAccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        amount = schema.new({
            id = id.from(_N, "BatchCreateWorkloadEstimateUsageEntry", "amount"),
            type = "double",
            name = "amount",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        historicalUsage = schema.new({
            id = id.from(_N, "BatchCreateWorkloadEstimateUsageEntry", "historicalUsage"),
            type = "structure",
            name = "historicalUsage",
            target_id = id.from(_N, "HistoricalUsageEntity"),
            target = M.HistoricalUsageEntity,
        }),
    },
})

M.BatchCreateWorkloadEstimateUsageItem = schema.new({
    id = id.from(_N, "BatchCreateWorkloadEstimateUsageItem"),
    type = "structure",
    members = {
        serviceCode = schema.new({
            id = id.from(_N, "BatchCreateWorkloadEstimateUsageItem", "serviceCode"),
            type = "string",
            name = "serviceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        usageType = schema.new({
            id = id.from(_N, "BatchCreateWorkloadEstimateUsageItem", "usageType"),
            type = "string",
            name = "usageType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        operation = schema.new({
            id = id.from(_N, "BatchCreateWorkloadEstimateUsageItem", "operation"),
            type = "string",
            name = "operation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        location = schema.new({
            id = id.from(_N, "BatchCreateWorkloadEstimateUsageItem", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "BatchCreateWorkloadEstimateUsageItem", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        usageAccountId = schema.new({
            id = id.from(_N, "BatchCreateWorkloadEstimateUsageItem", "usageAccountId"),
            type = "string",
            name = "usageAccountId",
            target_id = prelude.String.id,
        }),
        group = schema.new({
            id = id.from(_N, "BatchCreateWorkloadEstimateUsageItem", "group"),
            type = "string",
            name = "group",
            target_id = prelude.String.id,
        }),
        quantity = schema.new({
            id = id.from(_N, "BatchCreateWorkloadEstimateUsageItem", "quantity"),
            type = "structure",
            name = "quantity",
            target_id = id.from(_N, "WorkloadEstimateUsageQuantity"),
            target = M.WorkloadEstimateUsageQuantity,
        }),
        cost = schema.new({
            id = id.from(_N, "BatchCreateWorkloadEstimateUsageItem", "cost"),
            type = "double",
            name = "cost",
            target_id = prelude.Double.id,
        }),
        currency = schema.new({
            id = id.from(_N, "BatchCreateWorkloadEstimateUsageItem", "currency"),
            type = "string",
            name = "currency",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "BatchCreateWorkloadEstimateUsageItem", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        historicalUsage = schema.new({
            id = id.from(_N, "BatchCreateWorkloadEstimateUsageItem", "historicalUsage"),
            type = "structure",
            name = "historicalUsage",
            target_id = id.from(_N, "HistoricalUsageEntity"),
            target = M.HistoricalUsageEntity,
        }),
        key = schema.new({
            id = id.from(_N, "BatchCreateWorkloadEstimateUsageItem", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
        }),
    },
})

M.BillEstimateInputUsageModificationSummary = schema.new({
    id = id.from(_N, "BillEstimateInputUsageModificationSummary"),
    type = "structure",
    members = {
        serviceCode = schema.new({
            id = id.from(_N, "BillEstimateInputUsageModificationSummary", "serviceCode"),
            type = "string",
            name = "serviceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        usageType = schema.new({
            id = id.from(_N, "BillEstimateInputUsageModificationSummary", "usageType"),
            type = "string",
            name = "usageType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        operation = schema.new({
            id = id.from(_N, "BillEstimateInputUsageModificationSummary", "operation"),
            type = "string",
            name = "operation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        location = schema.new({
            id = id.from(_N, "BillEstimateInputUsageModificationSummary", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        availabilityZone = schema.new({
            id = id.from(_N, "BillEstimateInputUsageModificationSummary", "availabilityZone"),
            type = "string",
            name = "availabilityZone",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "BillEstimateInputUsageModificationSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        group = schema.new({
            id = id.from(_N, "BillEstimateInputUsageModificationSummary", "group"),
            type = "string",
            name = "group",
            target_id = prelude.String.id,
        }),
        usageAccountId = schema.new({
            id = id.from(_N, "BillEstimateInputUsageModificationSummary", "usageAccountId"),
            type = "string",
            name = "usageAccountId",
            target_id = prelude.String.id,
        }),
        quantities = schema.new({
            id = id.from(_N, "BillEstimateInputUsageModificationSummary", "quantities"),
            type = "list",
            name = "quantities",
            target_id = prelude.Document.id,
            list_member = M.UsageQuantity,
        }),
        historicalUsage = schema.new({
            id = id.from(_N, "BillEstimateInputUsageModificationSummary", "historicalUsage"),
            type = "structure",
            name = "historicalUsage",
            target_id = id.from(_N, "HistoricalUsageEntity"),
            target = M.HistoricalUsageEntity,
        }),
    },
})

M.BillScenarioUsageModificationItem = schema.new({
    id = id.from(_N, "BillScenarioUsageModificationItem"),
    type = "structure",
    members = {
        serviceCode = schema.new({
            id = id.from(_N, "BillScenarioUsageModificationItem", "serviceCode"),
            type = "string",
            name = "serviceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        usageType = schema.new({
            id = id.from(_N, "BillScenarioUsageModificationItem", "usageType"),
            type = "string",
            name = "usageType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        operation = schema.new({
            id = id.from(_N, "BillScenarioUsageModificationItem", "operation"),
            type = "string",
            name = "operation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        location = schema.new({
            id = id.from(_N, "BillScenarioUsageModificationItem", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        availabilityZone = schema.new({
            id = id.from(_N, "BillScenarioUsageModificationItem", "availabilityZone"),
            type = "string",
            name = "availabilityZone",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "BillScenarioUsageModificationItem", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        group = schema.new({
            id = id.from(_N, "BillScenarioUsageModificationItem", "group"),
            type = "string",
            name = "group",
            target_id = prelude.String.id,
        }),
        usageAccountId = schema.new({
            id = id.from(_N, "BillScenarioUsageModificationItem", "usageAccountId"),
            type = "string",
            name = "usageAccountId",
            target_id = prelude.String.id,
        }),
        quantities = schema.new({
            id = id.from(_N, "BillScenarioUsageModificationItem", "quantities"),
            type = "list",
            name = "quantities",
            target_id = prelude.Document.id,
            list_member = M.UsageQuantity,
        }),
        historicalUsage = schema.new({
            id = id.from(_N, "BillScenarioUsageModificationItem", "historicalUsage"),
            type = "structure",
            name = "historicalUsage",
            target_id = id.from(_N, "HistoricalUsageEntity"),
            target = M.HistoricalUsageEntity,
        }),
    },
})

M.WorkloadEstimateUsageItem = schema.new({
    id = id.from(_N, "WorkloadEstimateUsageItem"),
    type = "structure",
    members = {
        serviceCode = schema.new({
            id = id.from(_N, "WorkloadEstimateUsageItem", "serviceCode"),
            type = "string",
            name = "serviceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        usageType = schema.new({
            id = id.from(_N, "WorkloadEstimateUsageItem", "usageType"),
            type = "string",
            name = "usageType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        operation = schema.new({
            id = id.from(_N, "WorkloadEstimateUsageItem", "operation"),
            type = "string",
            name = "operation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        location = schema.new({
            id = id.from(_N, "WorkloadEstimateUsageItem", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "WorkloadEstimateUsageItem", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        usageAccountId = schema.new({
            id = id.from(_N, "WorkloadEstimateUsageItem", "usageAccountId"),
            type = "string",
            name = "usageAccountId",
            target_id = prelude.String.id,
        }),
        group = schema.new({
            id = id.from(_N, "WorkloadEstimateUsageItem", "group"),
            type = "string",
            name = "group",
            target_id = prelude.String.id,
        }),
        quantity = schema.new({
            id = id.from(_N, "WorkloadEstimateUsageItem", "quantity"),
            type = "structure",
            name = "quantity",
            target_id = id.from(_N, "WorkloadEstimateUsageQuantity"),
            target = M.WorkloadEstimateUsageQuantity,
        }),
        cost = schema.new({
            id = id.from(_N, "WorkloadEstimateUsageItem", "cost"),
            type = "double",
            name = "cost",
            target_id = prelude.Double.id,
        }),
        currency = schema.new({
            id = id.from(_N, "WorkloadEstimateUsageItem", "currency"),
            type = "string",
            name = "currency",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "WorkloadEstimateUsageItem", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        historicalUsage = schema.new({
            id = id.from(_N, "WorkloadEstimateUsageItem", "historicalUsage"),
            type = "structure",
            name = "historicalUsage",
            target_id = id.from(_N, "HistoricalUsageEntity"),
            target = M.HistoricalUsageEntity,
        }),
    },
})

M.BatchCreateBillScenarioUsageModificationInput = schema.new({
    id = id.from(_N, "BatchCreateBillScenarioUsageModificationInput"),
    type = "structure",
    members = {
        billScenarioId = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioUsageModificationInput", "billScenarioId"),
            type = "string",
            name = "billScenarioId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        usageModifications = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioUsageModificationInput", "usageModifications"),
            type = "list",
            name = "usageModifications",
            target_id = prelude.Document.id,
            list_member = M.BatchCreateBillScenarioUsageModificationEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioUsageModificationInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Client-Token" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.BatchCreateBillScenarioUsageModificationOutput = schema.new({
    id = id.from(_N, "BatchCreateBillScenarioUsageModificationOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioUsageModificationOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.BatchCreateBillScenarioUsageModificationItem,
        }),
        errors = schema.new({
            id = id.from(_N, "BatchCreateBillScenarioUsageModificationOutput", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.BatchCreateBillScenarioUsageModificationError,
        }),
    },
})

M.BatchCreateWorkloadEstimateUsageInput = schema.new({
    id = id.from(_N, "BatchCreateWorkloadEstimateUsageInput"),
    type = "structure",
    members = {
        workloadEstimateId = schema.new({
            id = id.from(_N, "BatchCreateWorkloadEstimateUsageInput", "workloadEstimateId"),
            type = "string",
            name = "workloadEstimateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        usage = schema.new({
            id = id.from(_N, "BatchCreateWorkloadEstimateUsageInput", "usage"),
            type = "list",
            name = "usage",
            target_id = prelude.Document.id,
            list_member = M.BatchCreateWorkloadEstimateUsageEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "BatchCreateWorkloadEstimateUsageInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Client-Token" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.BatchCreateWorkloadEstimateUsageOutput = schema.new({
    id = id.from(_N, "BatchCreateWorkloadEstimateUsageOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "BatchCreateWorkloadEstimateUsageOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.BatchCreateWorkloadEstimateUsageItem,
        }),
        errors = schema.new({
            id = id.from(_N, "BatchCreateWorkloadEstimateUsageOutput", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.BatchCreateWorkloadEstimateUsageError,
        }),
    },
})

M.BatchUpdateBillScenarioUsageModificationOutput = schema.new({
    id = id.from(_N, "BatchUpdateBillScenarioUsageModificationOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "BatchUpdateBillScenarioUsageModificationOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.BillScenarioUsageModificationItem,
        }),
        errors = schema.new({
            id = id.from(_N, "BatchUpdateBillScenarioUsageModificationOutput", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.BatchUpdateBillScenarioUsageModificationError,
        }),
    },
})

M.BatchUpdateWorkloadEstimateUsageOutput = schema.new({
    id = id.from(_N, "BatchUpdateWorkloadEstimateUsageOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "BatchUpdateWorkloadEstimateUsageOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.WorkloadEstimateUsageItem,
        }),
        errors = schema.new({
            id = id.from(_N, "BatchUpdateWorkloadEstimateUsageOutput", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.BatchUpdateWorkloadEstimateUsageError,
        }),
    },
})

M.ListBillEstimateInputUsageModificationsOutput = schema.new({
    id = id.from(_N, "ListBillEstimateInputUsageModificationsOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListBillEstimateInputUsageModificationsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.BillEstimateInputUsageModificationSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBillEstimateInputUsageModificationsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBillScenarioUsageModificationsOutput = schema.new({
    id = id.from(_N, "ListBillScenarioUsageModificationsOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListBillScenarioUsageModificationsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.BillScenarioUsageModificationItem,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBillScenarioUsageModificationsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListWorkloadEstimateUsageOutput = schema.new({
    id = id.from(_N, "ListWorkloadEstimateUsageOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListWorkloadEstimateUsageOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.WorkloadEstimateUsageItem,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListWorkloadEstimateUsageOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

return M
