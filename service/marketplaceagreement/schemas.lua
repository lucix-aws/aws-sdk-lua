local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.marketplaceagreement"

local M = {}

M.BatchCreateBillingAdjustmentRequestEntryList = schema.new({ type = "list", list_member = M.BatchCreateBillingAdjustmentRequestEntry })

M.BatchCreateBillingAdjustmentItemList = schema.new({ type = "list", list_member = M.BatchCreateBillingAdjustmentItem })

M.BatchCreateBillingAdjustmentErrorList = schema.new({ type = "list", list_member = M.BatchCreateBillingAdjustmentError })

M.ValidationExceptionFieldList = schema.new({ type = "list", list_member = M.ValidationExceptionField })

M.AcceptedTermList = schema.new({ type = "list", list_member = M.AcceptedTerm })

M.AgreementCancellationRequestSummaryList = schema.new({ type = "list", list_member = M.AgreementCancellationRequestSummary })

M.AgreementInvoiceLineItemGroupSummaries = schema.new({ type = "list", list_member = M.AgreementInvoiceLineItemGroupSummary })

M.PaymentRequestSummaryList = schema.new({ type = "list", list_member = M.PaymentRequestSummary })

M.BillingAdjustmentSummaryList = schema.new({ type = "list", list_member = M.BillingAdjustmentSummary })

M.FilterList = schema.new({ type = "list", list_member = M.Filter })

M.AgreementViewSummaryList = schema.new({ type = "list", list_member = M.AgreementViewSummary })

M.Resources = schema.new({ type = "list", list_member = M.Resource })

M.FilterValueList = schema.new({ type = "list", list_member = prelude.String })

M.DocumentList = schema.new({ type = "list", list_member = M.DocumentItem })

M.UsageBasedRateCardList = schema.new({ type = "list", list_member = M.UsageBasedRateCardItem })

M.ConfigurableUpfrontRateCardList = schema.new({ type = "list", list_member = M.ConfigurableUpfrontRateCardItem })

M.ScheduleList = schema.new({ type = "list", list_member = M.ScheduleItem })

M.GrantList = schema.new({ type = "list", list_member = M.GrantItem })

M.DimensionList = schema.new({ type = "list", list_member = M.Dimension })

M.RateCardList = schema.new({ type = "list", list_member = M.RateCardItem })

M.ByolPricingTerm = schema.new({
    id = id.from(_N, "ByolPricingTerm"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "ByolPricingTerm", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
    },
})

M.Dimension = schema.new({
    id = id.from(_N, "Dimension"),
    type = "structure",
    members = {
        dimensionKey = schema.new({
            id = id.from(_N, "Dimension", "dimensionKey"),
            type = "string",
            name = "dimensionKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dimensionValue = schema.new({
            id = id.from(_N, "Dimension", "dimensionValue"),
            type = "integer",
            name = "dimensionValue",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ConfigurableUpfrontPricingTermConfiguration = schema.new({
    id = id.from(_N, "ConfigurableUpfrontPricingTermConfiguration"),
    type = "structure",
    members = {
        selectorValue = schema.new({
            id = id.from(_N, "ConfigurableUpfrontPricingTermConfiguration", "selectorValue"),
            type = "string",
            name = "selectorValue",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dimensions = schema.new({
            id = id.from(_N, "ConfigurableUpfrontPricingTermConfiguration", "dimensions"),
            type = "list",
            name = "dimensions",
            target_id = prelude.Document.id,
            list_member = M.Dimension,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Constraints = schema.new({
    id = id.from(_N, "Constraints"),
    type = "structure",
    members = {
        multipleDimensionSelection = schema.new({
            id = id.from(_N, "Constraints", "multipleDimensionSelection"),
            type = "string",
            name = "multipleDimensionSelection",
            target_id = prelude.String.id,
        }),
        quantityConfiguration = schema.new({
            id = id.from(_N, "Constraints", "quantityConfiguration"),
            type = "string",
            name = "quantityConfiguration",
            target_id = prelude.String.id,
        }),
    },
})

M.RateCardItem = schema.new({
    id = id.from(_N, "RateCardItem"),
    type = "structure",
    members = {
        dimensionKey = schema.new({
            id = id.from(_N, "RateCardItem", "dimensionKey"),
            type = "string",
            name = "dimensionKey",
            target_id = prelude.String.id,
        }),
        price = schema.new({
            id = id.from(_N, "RateCardItem", "price"),
            type = "string",
            name = "price",
            target_id = prelude.String.id,
        }),
    },
})

M.Selector = schema.new({
    id = id.from(_N, "Selector"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "Selector", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        value = schema.new({
            id = id.from(_N, "Selector", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
        }),
    },
})

M.ConfigurableUpfrontRateCardItem = schema.new({
    id = id.from(_N, "ConfigurableUpfrontRateCardItem"),
    type = "structure",
    members = {
        selector = schema.new({
            id = id.from(_N, "ConfigurableUpfrontRateCardItem", "selector"),
            type = "structure",
            name = "selector",
            target_id = id.from(_N, "Selector"),
            target = M.Selector,
        }),
        constraints = schema.new({
            id = id.from(_N, "ConfigurableUpfrontRateCardItem", "constraints"),
            type = "structure",
            name = "constraints",
            target_id = id.from(_N, "Constraints"),
            target = M.Constraints,
        }),
        rateCard = schema.new({
            id = id.from(_N, "ConfigurableUpfrontRateCardItem", "rateCard"),
            type = "list",
            name = "rateCard",
            target_id = prelude.Document.id,
            list_member = M.RateCardItem,
        }),
    },
})

M.ConfigurableUpfrontPricingTerm = schema.new({
    id = id.from(_N, "ConfigurableUpfrontPricingTerm"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "ConfigurableUpfrontPricingTerm", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        currencyCode = schema.new({
            id = id.from(_N, "ConfigurableUpfrontPricingTerm", "currencyCode"),
            type = "string",
            name = "currencyCode",
            target_id = prelude.String.id,
        }),
        rateCards = schema.new({
            id = id.from(_N, "ConfigurableUpfrontPricingTerm", "rateCards"),
            type = "list",
            name = "rateCards",
            target_id = prelude.Document.id,
            list_member = M.ConfigurableUpfrontRateCardItem,
        }),
        configuration = schema.new({
            id = id.from(_N, "ConfigurableUpfrontPricingTerm", "configuration"),
            type = "structure",
            name = "configuration",
            target_id = id.from(_N, "ConfigurableUpfrontPricingTermConfiguration"),
            target = M.ConfigurableUpfrontPricingTermConfiguration,
        }),
    },
})

M.GrantItem = schema.new({
    id = id.from(_N, "GrantItem"),
    type = "structure",
    members = {
        dimensionKey = schema.new({
            id = id.from(_N, "GrantItem", "dimensionKey"),
            type = "string",
            name = "dimensionKey",
            target_id = prelude.String.id,
        }),
        maxQuantity = schema.new({
            id = id.from(_N, "GrantItem", "maxQuantity"),
            type = "integer",
            name = "maxQuantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 1 },
            },
        }),
    },
})

M.FixedUpfrontPricingTerm = schema.new({
    id = id.from(_N, "FixedUpfrontPricingTerm"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "FixedUpfrontPricingTerm", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        currencyCode = schema.new({
            id = id.from(_N, "FixedUpfrontPricingTerm", "currencyCode"),
            type = "string",
            name = "currencyCode",
            target_id = prelude.String.id,
        }),
        duration = schema.new({
            id = id.from(_N, "FixedUpfrontPricingTerm", "duration"),
            type = "string",
            name = "duration",
            target_id = prelude.String.id,
        }),
        price = schema.new({
            id = id.from(_N, "FixedUpfrontPricingTerm", "price"),
            type = "string",
            name = "price",
            target_id = prelude.String.id,
        }),
        grants = schema.new({
            id = id.from(_N, "FixedUpfrontPricingTerm", "grants"),
            type = "list",
            name = "grants",
            target_id = prelude.Document.id,
            list_member = M.GrantItem,
        }),
    },
})

M.FreeTrialPricingTerm = schema.new({
    id = id.from(_N, "FreeTrialPricingTerm"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "FreeTrialPricingTerm", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        duration = schema.new({
            id = id.from(_N, "FreeTrialPricingTerm", "duration"),
            type = "string",
            name = "duration",
            target_id = prelude.String.id,
        }),
        grants = schema.new({
            id = id.from(_N, "FreeTrialPricingTerm", "grants"),
            type = "list",
            name = "grants",
            target_id = prelude.Document.id,
            list_member = M.GrantItem,
        }),
    },
})

M.DocumentItem = schema.new({
    id = id.from(_N, "DocumentItem"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "DocumentItem", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        url = schema.new({
            id = id.from(_N, "DocumentItem", "url"),
            type = "string",
            name = "url",
            target_id = prelude.String.id,
        }),
        version = schema.new({
            id = id.from(_N, "DocumentItem", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
        }),
    },
})

M.LegalTerm = schema.new({
    id = id.from(_N, "LegalTerm"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "LegalTerm", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        documents = schema.new({
            id = id.from(_N, "LegalTerm", "documents"),
            type = "list",
            name = "documents",
            target_id = prelude.Document.id,
            list_member = M.DocumentItem,
        }),
    },
})

M.ScheduleItem = schema.new({
    id = id.from(_N, "ScheduleItem"),
    type = "structure",
    members = {
        chargeDate = schema.new({
            id = id.from(_N, "ScheduleItem", "chargeDate"),
            type = "timestamp",
            name = "chargeDate",
            target_id = prelude.Timestamp.id,
        }),
        chargeAmount = schema.new({
            id = id.from(_N, "ScheduleItem", "chargeAmount"),
            type = "string",
            name = "chargeAmount",
            target_id = prelude.String.id,
        }),
    },
})

M.PaymentScheduleTerm = schema.new({
    id = id.from(_N, "PaymentScheduleTerm"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "PaymentScheduleTerm", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        currencyCode = schema.new({
            id = id.from(_N, "PaymentScheduleTerm", "currencyCode"),
            type = "string",
            name = "currencyCode",
            target_id = prelude.String.id,
        }),
        schedule = schema.new({
            id = id.from(_N, "PaymentScheduleTerm", "schedule"),
            type = "list",
            name = "schedule",
            target_id = prelude.Document.id,
            list_member = M.ScheduleItem,
        }),
    },
})

M.RecurringPaymentTerm = schema.new({
    id = id.from(_N, "RecurringPaymentTerm"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "RecurringPaymentTerm", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        currencyCode = schema.new({
            id = id.from(_N, "RecurringPaymentTerm", "currencyCode"),
            type = "string",
            name = "currencyCode",
            target_id = prelude.String.id,
        }),
        billingPeriod = schema.new({
            id = id.from(_N, "RecurringPaymentTerm", "billingPeriod"),
            type = "string",
            name = "billingPeriod",
            target_id = prelude.String.id,
        }),
        price = schema.new({
            id = id.from(_N, "RecurringPaymentTerm", "price"),
            type = "string",
            name = "price",
            target_id = prelude.String.id,
        }),
    },
})

M.RenewalTermConfiguration = schema.new({
    id = id.from(_N, "RenewalTermConfiguration"),
    type = "structure",
    members = {
        enableAutoRenew = schema.new({
            id = id.from(_N, "RenewalTermConfiguration", "enableAutoRenew"),
            type = "boolean",
            name = "enableAutoRenew",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RenewalTerm = schema.new({
    id = id.from(_N, "RenewalTerm"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "RenewalTerm", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        configuration = schema.new({
            id = id.from(_N, "RenewalTerm", "configuration"),
            type = "structure",
            name = "configuration",
            target_id = id.from(_N, "RenewalTermConfiguration"),
            target = M.RenewalTermConfiguration,
        }),
    },
})

M.SupportTerm = schema.new({
    id = id.from(_N, "SupportTerm"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "SupportTerm", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        refundPolicy = schema.new({
            id = id.from(_N, "SupportTerm", "refundPolicy"),
            type = "string",
            name = "refundPolicy",
            target_id = prelude.String.id,
        }),
    },
})

M.UsageBasedRateCardItem = schema.new({
    id = id.from(_N, "UsageBasedRateCardItem"),
    type = "structure",
    members = {
        rateCard = schema.new({
            id = id.from(_N, "UsageBasedRateCardItem", "rateCard"),
            type = "list",
            name = "rateCard",
            target_id = prelude.Document.id,
            list_member = M.RateCardItem,
        }),
    },
})

M.UsageBasedPricingTerm = schema.new({
    id = id.from(_N, "UsageBasedPricingTerm"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "UsageBasedPricingTerm", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        currencyCode = schema.new({
            id = id.from(_N, "UsageBasedPricingTerm", "currencyCode"),
            type = "string",
            name = "currencyCode",
            target_id = prelude.String.id,
        }),
        rateCards = schema.new({
            id = id.from(_N, "UsageBasedPricingTerm", "rateCards"),
            type = "list",
            name = "rateCards",
            target_id = prelude.Document.id,
            list_member = M.UsageBasedRateCardItem,
        }),
    },
})

M.ValidityTerm = schema.new({
    id = id.from(_N, "ValidityTerm"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "ValidityTerm", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        agreementDuration = schema.new({
            id = id.from(_N, "ValidityTerm", "agreementDuration"),
            type = "string",
            name = "agreementDuration",
            target_id = prelude.String.id,
        }),
        agreementStartDate = schema.new({
            id = id.from(_N, "ValidityTerm", "agreementStartDate"),
            type = "timestamp",
            name = "agreementStartDate",
            target_id = prelude.Timestamp.id,
        }),
        agreementEndDate = schema.new({
            id = id.from(_N, "ValidityTerm", "agreementEndDate"),
            type = "timestamp",
            name = "agreementEndDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.VariablePaymentTermConfiguration = schema.new({
    id = id.from(_N, "VariablePaymentTermConfiguration"),
    type = "structure",
    members = {
        paymentRequestApprovalStrategy = schema.new({
            id = id.from(_N, "VariablePaymentTermConfiguration", "paymentRequestApprovalStrategy"),
            type = "string",
            name = "paymentRequestApprovalStrategy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        expirationDuration = schema.new({
            id = id.from(_N, "VariablePaymentTermConfiguration", "expirationDuration"),
            type = "string",
            name = "expirationDuration",
            target_id = prelude.String.id,
        }),
    },
})

M.VariablePaymentTerm = schema.new({
    id = id.from(_N, "VariablePaymentTerm"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "VariablePaymentTerm", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        currencyCode = schema.new({
            id = id.from(_N, "VariablePaymentTerm", "currencyCode"),
            type = "string",
            name = "currencyCode",
            target_id = prelude.String.id,
        }),
        maxTotalChargeAmount = schema.new({
            id = id.from(_N, "VariablePaymentTerm", "maxTotalChargeAmount"),
            type = "string",
            name = "maxTotalChargeAmount",
            target_id = prelude.String.id,
        }),
        configuration = schema.new({
            id = id.from(_N, "VariablePaymentTerm", "configuration"),
            type = "structure",
            name = "configuration",
            target_id = id.from(_N, "VariablePaymentTermConfiguration"),
            target = M.VariablePaymentTermConfiguration,
        }),
    },
})

M.AcceptedTerm = schema.new({
    id = id.from(_N, "AcceptedTerm"),
    type = "union",
    members = {
        legalTerm = schema.new({
            id = id.from(_N, "AcceptedTerm", "legalTerm"),
            type = "structure",
            name = "legalTerm",
            target_id = id.from(_N, "LegalTerm"),
            target = M.LegalTerm,
        }),
        supportTerm = schema.new({
            id = id.from(_N, "AcceptedTerm", "supportTerm"),
            type = "structure",
            name = "supportTerm",
            target_id = id.from(_N, "SupportTerm"),
            target = M.SupportTerm,
        }),
        renewalTerm = schema.new({
            id = id.from(_N, "AcceptedTerm", "renewalTerm"),
            type = "structure",
            name = "renewalTerm",
            target_id = id.from(_N, "RenewalTerm"),
            target = M.RenewalTerm,
        }),
        usageBasedPricingTerm = schema.new({
            id = id.from(_N, "AcceptedTerm", "usageBasedPricingTerm"),
            type = "structure",
            name = "usageBasedPricingTerm",
            target_id = id.from(_N, "UsageBasedPricingTerm"),
            target = M.UsageBasedPricingTerm,
        }),
        configurableUpfrontPricingTerm = schema.new({
            id = id.from(_N, "AcceptedTerm", "configurableUpfrontPricingTerm"),
            type = "structure",
            name = "configurableUpfrontPricingTerm",
            target_id = id.from(_N, "ConfigurableUpfrontPricingTerm"),
            target = M.ConfigurableUpfrontPricingTerm,
        }),
        byolPricingTerm = schema.new({
            id = id.from(_N, "AcceptedTerm", "byolPricingTerm"),
            type = "structure",
            name = "byolPricingTerm",
            target_id = id.from(_N, "ByolPricingTerm"),
            target = M.ByolPricingTerm,
        }),
        recurringPaymentTerm = schema.new({
            id = id.from(_N, "AcceptedTerm", "recurringPaymentTerm"),
            type = "structure",
            name = "recurringPaymentTerm",
            target_id = id.from(_N, "RecurringPaymentTerm"),
            target = M.RecurringPaymentTerm,
        }),
        validityTerm = schema.new({
            id = id.from(_N, "AcceptedTerm", "validityTerm"),
            type = "structure",
            name = "validityTerm",
            target_id = id.from(_N, "ValidityTerm"),
            target = M.ValidityTerm,
        }),
        paymentScheduleTerm = schema.new({
            id = id.from(_N, "AcceptedTerm", "paymentScheduleTerm"),
            type = "structure",
            name = "paymentScheduleTerm",
            target_id = id.from(_N, "PaymentScheduleTerm"),
            target = M.PaymentScheduleTerm,
        }),
        freeTrialPricingTerm = schema.new({
            id = id.from(_N, "AcceptedTerm", "freeTrialPricingTerm"),
            type = "structure",
            name = "freeTrialPricingTerm",
            target_id = id.from(_N, "FreeTrialPricingTerm"),
            target = M.FreeTrialPricingTerm,
        }),
        fixedUpfrontPricingTerm = schema.new({
            id = id.from(_N, "AcceptedTerm", "fixedUpfrontPricingTerm"),
            type = "structure",
            name = "fixedUpfrontPricingTerm",
            target_id = id.from(_N, "FixedUpfrontPricingTerm"),
            target = M.FixedUpfrontPricingTerm,
        }),
        variablePaymentTerm = schema.new({
            id = id.from(_N, "AcceptedTerm", "variablePaymentTerm"),
            type = "structure",
            name = "variablePaymentTerm",
            target_id = id.from(_N, "VariablePaymentTerm"),
            target = M.VariablePaymentTerm,
        }),
    },
})

M.Acceptor = schema.new({
    id = id.from(_N, "Acceptor"),
    type = "structure",
    members = {
        accountId = schema.new({
            id = id.from(_N, "Acceptor", "accountId"),
            type = "string",
            name = "accountId",
            target_id = prelude.String.id,
        }),
    },
})

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        requestId = schema.new({
            id = id.from(_N, "AccessDeniedException", "requestId"),
            type = "string",
            name = "requestId",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "AccessDeniedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.AgreementCancellationRequestSummary = schema.new({
    id = id.from(_N, "AgreementCancellationRequestSummary"),
    type = "structure",
    members = {
        agreementCancellationRequestId = schema.new({
            id = id.from(_N, "AgreementCancellationRequestSummary", "agreementCancellationRequestId"),
            type = "string",
            name = "agreementCancellationRequestId",
            target_id = prelude.String.id,
        }),
        agreementId = schema.new({
            id = id.from(_N, "AgreementCancellationRequestSummary", "agreementId"),
            type = "string",
            name = "agreementId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "AgreementCancellationRequestSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        reasonCode = schema.new({
            id = id.from(_N, "AgreementCancellationRequestSummary", "reasonCode"),
            type = "string",
            name = "reasonCode",
            target_id = prelude.String.id,
        }),
        agreementType = schema.new({
            id = id.from(_N, "AgreementCancellationRequestSummary", "agreementType"),
            type = "string",
            name = "agreementType",
            target_id = prelude.String.id,
        }),
        catalog = schema.new({
            id = id.from(_N, "AgreementCancellationRequestSummary", "catalog"),
            type = "string",
            name = "catalog",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "AgreementCancellationRequestSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "AgreementCancellationRequestSummary", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.InvoiceBillingPeriod = schema.new({
    id = id.from(_N, "InvoiceBillingPeriod"),
    type = "structure",
    members = {
        month = schema.new({
            id = id.from(_N, "InvoiceBillingPeriod", "month"),
            type = "integer",
            name = "month",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        year = schema.new({
            id = id.from(_N, "InvoiceBillingPeriod", "year"),
            type = "integer",
            name = "year",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InvoicingEntity = schema.new({
    id = id.from(_N, "InvoicingEntity"),
    type = "structure",
    members = {
        legalName = schema.new({
            id = id.from(_N, "InvoicingEntity", "legalName"),
            type = "string",
            name = "legalName",
            target_id = prelude.String.id,
        }),
        branchName = schema.new({
            id = id.from(_N, "InvoicingEntity", "branchName"),
            type = "string",
            name = "branchName",
            target_id = prelude.String.id,
        }),
    },
})

M.PricingCurrencyAmount = schema.new({
    id = id.from(_N, "PricingCurrencyAmount"),
    type = "structure",
    members = {
        amount = schema.new({
            id = id.from(_N, "PricingCurrencyAmount", "amount"),
            type = "string",
            name = "amount",
            target_id = prelude.String.id,
        }),
        maxAdjustmentAmount = schema.new({
            id = id.from(_N, "PricingCurrencyAmount", "maxAdjustmentAmount"),
            type = "string",
            name = "maxAdjustmentAmount",
            target_id = prelude.String.id,
        }),
        currencyCode = schema.new({
            id = id.from(_N, "PricingCurrencyAmount", "currencyCode"),
            type = "string",
            name = "currencyCode",
            target_id = prelude.String.id,
        }),
    },
})

M.AgreementInvoiceLineItemGroupSummary = schema.new({
    id = id.from(_N, "AgreementInvoiceLineItemGroupSummary"),
    type = "structure",
    members = {
        agreementId = schema.new({
            id = id.from(_N, "AgreementInvoiceLineItemGroupSummary", "agreementId"),
            type = "string",
            name = "agreementId",
            target_id = prelude.String.id,
        }),
        invoiceId = schema.new({
            id = id.from(_N, "AgreementInvoiceLineItemGroupSummary", "invoiceId"),
            type = "string",
            name = "invoiceId",
            target_id = prelude.String.id,
        }),
        pricingCurrencyAmount = schema.new({
            id = id.from(_N, "AgreementInvoiceLineItemGroupSummary", "pricingCurrencyAmount"),
            type = "structure",
            name = "pricingCurrencyAmount",
            target_id = id.from(_N, "PricingCurrencyAmount"),
            target = M.PricingCurrencyAmount,
        }),
        invoiceBillingPeriod = schema.new({
            id = id.from(_N, "AgreementInvoiceLineItemGroupSummary", "invoiceBillingPeriod"),
            type = "structure",
            name = "invoiceBillingPeriod",
            target_id = id.from(_N, "InvoiceBillingPeriod"),
            target = M.InvoiceBillingPeriod,
        }),
        issuedTime = schema.new({
            id = id.from(_N, "AgreementInvoiceLineItemGroupSummary", "issuedTime"),
            type = "timestamp",
            name = "issuedTime",
            target_id = prelude.Timestamp.id,
        }),
        invoiceType = schema.new({
            id = id.from(_N, "AgreementInvoiceLineItemGroupSummary", "invoiceType"),
            type = "string",
            name = "invoiceType",
            target_id = prelude.String.id,
        }),
        invoicingEntity = schema.new({
            id = id.from(_N, "AgreementInvoiceLineItemGroupSummary", "invoicingEntity"),
            type = "structure",
            name = "invoicingEntity",
            target_id = id.from(_N, "InvoicingEntity"),
            target = M.InvoicingEntity,
        }),
    },
})

M.Resource = schema.new({
    id = id.from(_N, "Resource"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "Resource", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "Resource", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
    },
})

M.ProposalSummary = schema.new({
    id = id.from(_N, "ProposalSummary"),
    type = "structure",
    members = {
        resources = schema.new({
            id = id.from(_N, "ProposalSummary", "resources"),
            type = "list",
            name = "resources",
            target_id = prelude.Document.id,
            list_member = M.Resource,
        }),
        offerId = schema.new({
            id = id.from(_N, "ProposalSummary", "offerId"),
            type = "string",
            name = "offerId",
            target_id = prelude.String.id,
        }),
        offerSetId = schema.new({
            id = id.from(_N, "ProposalSummary", "offerSetId"),
            type = "string",
            name = "offerSetId",
            target_id = prelude.String.id,
        }),
    },
})

M.Proposer = schema.new({
    id = id.from(_N, "Proposer"),
    type = "structure",
    members = {
        accountId = schema.new({
            id = id.from(_N, "Proposer", "accountId"),
            type = "string",
            name = "accountId",
            target_id = prelude.String.id,
        }),
    },
})

M.AgreementViewSummary = schema.new({
    id = id.from(_N, "AgreementViewSummary"),
    type = "structure",
    members = {
        agreementId = schema.new({
            id = id.from(_N, "AgreementViewSummary", "agreementId"),
            type = "string",
            name = "agreementId",
            target_id = prelude.String.id,
        }),
        acceptanceTime = schema.new({
            id = id.from(_N, "AgreementViewSummary", "acceptanceTime"),
            type = "timestamp",
            name = "acceptanceTime",
            target_id = prelude.Timestamp.id,
        }),
        startTime = schema.new({
            id = id.from(_N, "AgreementViewSummary", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
        }),
        endTime = schema.new({
            id = id.from(_N, "AgreementViewSummary", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
        }),
        agreementType = schema.new({
            id = id.from(_N, "AgreementViewSummary", "agreementType"),
            type = "string",
            name = "agreementType",
            target_id = prelude.String.id,
        }),
        acceptor = schema.new({
            id = id.from(_N, "AgreementViewSummary", "acceptor"),
            type = "structure",
            name = "acceptor",
            target_id = id.from(_N, "Acceptor"),
            target = M.Acceptor,
        }),
        proposer = schema.new({
            id = id.from(_N, "AgreementViewSummary", "proposer"),
            type = "structure",
            name = "proposer",
            target_id = id.from(_N, "Proposer"),
            target = M.Proposer,
        }),
        proposalSummary = schema.new({
            id = id.from(_N, "AgreementViewSummary", "proposalSummary"),
            type = "structure",
            name = "proposalSummary",
            target_id = id.from(_N, "ProposalSummary"),
            target = M.ProposalSummary,
        }),
        status = schema.new({
            id = id.from(_N, "AgreementViewSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchCreateBillingAdjustmentRequestEntry = schema.new({
    id = id.from(_N, "BatchCreateBillingAdjustmentRequestEntry"),
    type = "structure",
    members = {
        agreementId = schema.new({
            id = id.from(_N, "BatchCreateBillingAdjustmentRequestEntry", "agreementId"),
            type = "string",
            name = "agreementId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        originalInvoiceId = schema.new({
            id = id.from(_N, "BatchCreateBillingAdjustmentRequestEntry", "originalInvoiceId"),
            type = "string",
            name = "originalInvoiceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        adjustmentAmount = schema.new({
            id = id.from(_N, "BatchCreateBillingAdjustmentRequestEntry", "adjustmentAmount"),
            type = "string",
            name = "adjustmentAmount",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        currencyCode = schema.new({
            id = id.from(_N, "BatchCreateBillingAdjustmentRequestEntry", "currencyCode"),
            type = "string",
            name = "currencyCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        adjustmentReasonCode = schema.new({
            id = id.from(_N, "BatchCreateBillingAdjustmentRequestEntry", "adjustmentReasonCode"),
            type = "string",
            name = "adjustmentReasonCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "BatchCreateBillingAdjustmentRequestEntry", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "BatchCreateBillingAdjustmentRequestEntry", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchCreateBillingAdjustmentRequestInput = schema.new({
    id = id.from(_N, "BatchCreateBillingAdjustmentRequestInput"),
    type = "structure",
    members = {
        billingAdjustmentRequestEntries = schema.new({
            id = id.from(_N, "BatchCreateBillingAdjustmentRequestInput", "billingAdjustmentRequestEntries"),
            type = "list",
            name = "billingAdjustmentRequestEntries",
            target_id = prelude.Document.id,
            list_member = M.BatchCreateBillingAdjustmentRequestEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchCreateBillingAdjustmentError = schema.new({
    id = id.from(_N, "BatchCreateBillingAdjustmentError"),
    type = "structure",
    members = {
        code = schema.new({
            id = id.from(_N, "BatchCreateBillingAdjustmentError", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        message = schema.new({
            id = id.from(_N, "BatchCreateBillingAdjustmentError", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "BatchCreateBillingAdjustmentError", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchCreateBillingAdjustmentItem = schema.new({
    id = id.from(_N, "BatchCreateBillingAdjustmentItem"),
    type = "structure",
    members = {
        billingAdjustmentRequestId = schema.new({
            id = id.from(_N, "BatchCreateBillingAdjustmentItem", "billingAdjustmentRequestId"),
            type = "string",
            name = "billingAdjustmentRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "BatchCreateBillingAdjustmentItem", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchCreateBillingAdjustmentRequestOutput = schema.new({
    id = id.from(_N, "BatchCreateBillingAdjustmentRequestOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "BatchCreateBillingAdjustmentRequestOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.BatchCreateBillingAdjustmentItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errors = schema.new({
            id = id.from(_N, "BatchCreateBillingAdjustmentRequestOutput", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.BatchCreateBillingAdjustmentError,
            traits = {
                [traits.REQUIRED] = {},
            },
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
        requestId = schema.new({
            id = id.from(_N, "ConflictException", "requestId"),
            type = "string",
            name = "requestId",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "ConflictException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        resourceId = schema.new({
            id = id.from(_N, "ConflictException", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
        }),
        resourceType = schema.new({
            id = id.from(_N, "ConflictException", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
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
        requestId = schema.new({
            id = id.from(_N, "InternalServerException", "requestId"),
            type = "string",
            name = "requestId",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "InternalServerException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
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
        requestId = schema.new({
            id = id.from(_N, "ThrottlingException", "requestId"),
            type = "string",
            name = "requestId",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "ThrottlingException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
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
        requestId = schema.new({
            id = id.from(_N, "ValidationException", "requestId"),
            type = "string",
            name = "requestId",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "ValidationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        reason = schema.new({
            id = id.from(_N, "ValidationException", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
        }),
        fields = schema.new({
            id = id.from(_N, "ValidationException", "fields"),
            type = "list",
            name = "fields",
            target_id = prelude.Document.id,
            list_member = M.ValidationExceptionField,
        }),
    },
})

M.CancelAgreementCancellationRequestInput = schema.new({
    id = id.from(_N, "CancelAgreementCancellationRequestInput"),
    type = "structure",
    members = {
        agreementId = schema.new({
            id = id.from(_N, "CancelAgreementCancellationRequestInput", "agreementId"),
            type = "string",
            name = "agreementId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agreementCancellationRequestId = schema.new({
            id = id.from(_N, "CancelAgreementCancellationRequestInput", "agreementCancellationRequestId"),
            type = "string",
            name = "agreementCancellationRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        cancellationReason = schema.new({
            id = id.from(_N, "CancelAgreementCancellationRequestInput", "cancellationReason"),
            type = "string",
            name = "cancellationReason",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CancelAgreementCancellationRequestOutput = schema.new({
    id = id.from(_N, "CancelAgreementCancellationRequestOutput"),
    type = "structure",
    members = {
        agreementCancellationRequestId = schema.new({
            id = id.from(_N, "CancelAgreementCancellationRequestOutput", "agreementCancellationRequestId"),
            type = "string",
            name = "agreementCancellationRequestId",
            target_id = prelude.String.id,
        }),
        agreementId = schema.new({
            id = id.from(_N, "CancelAgreementCancellationRequestOutput", "agreementId"),
            type = "string",
            name = "agreementId",
            target_id = prelude.String.id,
        }),
        reasonCode = schema.new({
            id = id.from(_N, "CancelAgreementCancellationRequestOutput", "reasonCode"),
            type = "string",
            name = "reasonCode",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CancelAgreementCancellationRequestOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "CancelAgreementCancellationRequestOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusMessage = schema.new({
            id = id.from(_N, "CancelAgreementCancellationRequestOutput", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "CancelAgreementCancellationRequestOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "CancelAgreementCancellationRequestOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
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
        requestId = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "requestId"),
            type = "string",
            name = "requestId",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        resourceId = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
        }),
        resourceType = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
    },
})

M.CancelAgreementPaymentRequestInput = schema.new({
    id = id.from(_N, "CancelAgreementPaymentRequestInput"),
    type = "structure",
    members = {
        paymentRequestId = schema.new({
            id = id.from(_N, "CancelAgreementPaymentRequestInput", "paymentRequestId"),
            type = "string",
            name = "paymentRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agreementId = schema.new({
            id = id.from(_N, "CancelAgreementPaymentRequestInput", "agreementId"),
            type = "string",
            name = "agreementId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CancelAgreementPaymentRequestOutput = schema.new({
    id = id.from(_N, "CancelAgreementPaymentRequestOutput"),
    type = "structure",
    members = {
        paymentRequestId = schema.new({
            id = id.from(_N, "CancelAgreementPaymentRequestOutput", "paymentRequestId"),
            type = "string",
            name = "paymentRequestId",
            target_id = prelude.String.id,
        }),
        agreementId = schema.new({
            id = id.from(_N, "CancelAgreementPaymentRequestOutput", "agreementId"),
            type = "string",
            name = "agreementId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "CancelAgreementPaymentRequestOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CancelAgreementPaymentRequestOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CancelAgreementPaymentRequestOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        chargeAmount = schema.new({
            id = id.from(_N, "CancelAgreementPaymentRequestOutput", "chargeAmount"),
            type = "string",
            name = "chargeAmount",
            target_id = prelude.String.id,
        }),
        currencyCode = schema.new({
            id = id.from(_N, "CancelAgreementPaymentRequestOutput", "currencyCode"),
            type = "string",
            name = "currencyCode",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "CancelAgreementPaymentRequestOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "CancelAgreementPaymentRequestOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeAgreementInput = schema.new({
    id = id.from(_N, "DescribeAgreementInput"),
    type = "structure",
    members = {
        agreementId = schema.new({
            id = id.from(_N, "DescribeAgreementInput", "agreementId"),
            type = "string",
            name = "agreementId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EstimatedCharges = schema.new({
    id = id.from(_N, "EstimatedCharges"),
    type = "structure",
    members = {
        currencyCode = schema.new({
            id = id.from(_N, "EstimatedCharges", "currencyCode"),
            type = "string",
            name = "currencyCode",
            target_id = prelude.String.id,
        }),
        agreementValue = schema.new({
            id = id.from(_N, "EstimatedCharges", "agreementValue"),
            type = "string",
            name = "agreementValue",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeAgreementOutput = schema.new({
    id = id.from(_N, "DescribeAgreementOutput"),
    type = "structure",
    members = {
        agreementId = schema.new({
            id = id.from(_N, "DescribeAgreementOutput", "agreementId"),
            type = "string",
            name = "agreementId",
            target_id = prelude.String.id,
        }),
        acceptor = schema.new({
            id = id.from(_N, "DescribeAgreementOutput", "acceptor"),
            type = "structure",
            name = "acceptor",
            target_id = id.from(_N, "Acceptor"),
            target = M.Acceptor,
        }),
        proposer = schema.new({
            id = id.from(_N, "DescribeAgreementOutput", "proposer"),
            type = "structure",
            name = "proposer",
            target_id = id.from(_N, "Proposer"),
            target = M.Proposer,
        }),
        startTime = schema.new({
            id = id.from(_N, "DescribeAgreementOutput", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
        }),
        endTime = schema.new({
            id = id.from(_N, "DescribeAgreementOutput", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
        }),
        acceptanceTime = schema.new({
            id = id.from(_N, "DescribeAgreementOutput", "acceptanceTime"),
            type = "timestamp",
            name = "acceptanceTime",
            target_id = prelude.Timestamp.id,
        }),
        agreementType = schema.new({
            id = id.from(_N, "DescribeAgreementOutput", "agreementType"),
            type = "string",
            name = "agreementType",
            target_id = prelude.String.id,
        }),
        estimatedCharges = schema.new({
            id = id.from(_N, "DescribeAgreementOutput", "estimatedCharges"),
            type = "structure",
            name = "estimatedCharges",
            target_id = id.from(_N, "EstimatedCharges"),
            target = M.EstimatedCharges,
        }),
        proposalSummary = schema.new({
            id = id.from(_N, "DescribeAgreementOutput", "proposalSummary"),
            type = "structure",
            name = "proposalSummary",
            target_id = id.from(_N, "ProposalSummary"),
            target = M.ProposalSummary,
        }),
        status = schema.new({
            id = id.from(_N, "DescribeAgreementOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.GetAgreementCancellationRequestInput = schema.new({
    id = id.from(_N, "GetAgreementCancellationRequestInput"),
    type = "structure",
    members = {
        agreementCancellationRequestId = schema.new({
            id = id.from(_N, "GetAgreementCancellationRequestInput", "agreementCancellationRequestId"),
            type = "string",
            name = "agreementCancellationRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agreementId = schema.new({
            id = id.from(_N, "GetAgreementCancellationRequestInput", "agreementId"),
            type = "string",
            name = "agreementId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetAgreementCancellationRequestOutput = schema.new({
    id = id.from(_N, "GetAgreementCancellationRequestOutput"),
    type = "structure",
    members = {
        agreementCancellationRequestId = schema.new({
            id = id.from(_N, "GetAgreementCancellationRequestOutput", "agreementCancellationRequestId"),
            type = "string",
            name = "agreementCancellationRequestId",
            target_id = prelude.String.id,
        }),
        agreementId = schema.new({
            id = id.from(_N, "GetAgreementCancellationRequestOutput", "agreementId"),
            type = "string",
            name = "agreementId",
            target_id = prelude.String.id,
        }),
        reasonCode = schema.new({
            id = id.from(_N, "GetAgreementCancellationRequestOutput", "reasonCode"),
            type = "string",
            name = "reasonCode",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetAgreementCancellationRequestOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetAgreementCancellationRequestOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusMessage = schema.new({
            id = id.from(_N, "GetAgreementCancellationRequestOutput", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetAgreementCancellationRequestOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetAgreementCancellationRequestOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetAgreementPaymentRequestInput = schema.new({
    id = id.from(_N, "GetAgreementPaymentRequestInput"),
    type = "structure",
    members = {
        paymentRequestId = schema.new({
            id = id.from(_N, "GetAgreementPaymentRequestInput", "paymentRequestId"),
            type = "string",
            name = "paymentRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agreementId = schema.new({
            id = id.from(_N, "GetAgreementPaymentRequestInput", "agreementId"),
            type = "string",
            name = "agreementId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetAgreementPaymentRequestOutput = schema.new({
    id = id.from(_N, "GetAgreementPaymentRequestOutput"),
    type = "structure",
    members = {
        paymentRequestId = schema.new({
            id = id.from(_N, "GetAgreementPaymentRequestOutput", "paymentRequestId"),
            type = "string",
            name = "paymentRequestId",
            target_id = prelude.String.id,
        }),
        agreementId = schema.new({
            id = id.from(_N, "GetAgreementPaymentRequestOutput", "agreementId"),
            type = "string",
            name = "agreementId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetAgreementPaymentRequestOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusMessage = schema.new({
            id = id.from(_N, "GetAgreementPaymentRequestOutput", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "GetAgreementPaymentRequestOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetAgreementPaymentRequestOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        chargeId = schema.new({
            id = id.from(_N, "GetAgreementPaymentRequestOutput", "chargeId"),
            type = "string",
            name = "chargeId",
            target_id = prelude.String.id,
        }),
        chargeAmount = schema.new({
            id = id.from(_N, "GetAgreementPaymentRequestOutput", "chargeAmount"),
            type = "string",
            name = "chargeAmount",
            target_id = prelude.String.id,
        }),
        currencyCode = schema.new({
            id = id.from(_N, "GetAgreementPaymentRequestOutput", "currencyCode"),
            type = "string",
            name = "currencyCode",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetAgreementPaymentRequestOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetAgreementPaymentRequestOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetAgreementTermsInput = schema.new({
    id = id.from(_N, "GetAgreementTermsInput"),
    type = "structure",
    members = {
        agreementId = schema.new({
            id = id.from(_N, "GetAgreementTermsInput", "agreementId"),
            type = "string",
            name = "agreementId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "GetAgreementTermsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetAgreementTermsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetAgreementTermsOutput = schema.new({
    id = id.from(_N, "GetAgreementTermsOutput"),
    type = "structure",
    members = {
        acceptedTerms = schema.new({
            id = id.from(_N, "GetAgreementTermsOutput", "acceptedTerms"),
            type = "list",
            name = "acceptedTerms",
            target_id = prelude.Document.id,
            list_member = M.AcceptedTerm,
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetAgreementTermsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetBillingAdjustmentRequestInput = schema.new({
    id = id.from(_N, "GetBillingAdjustmentRequestInput"),
    type = "structure",
    members = {
        agreementId = schema.new({
            id = id.from(_N, "GetBillingAdjustmentRequestInput", "agreementId"),
            type = "string",
            name = "agreementId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        billingAdjustmentRequestId = schema.new({
            id = id.from(_N, "GetBillingAdjustmentRequestInput", "billingAdjustmentRequestId"),
            type = "string",
            name = "billingAdjustmentRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetBillingAdjustmentRequestOutput = schema.new({
    id = id.from(_N, "GetBillingAdjustmentRequestOutput"),
    type = "structure",
    members = {
        billingAdjustmentRequestId = schema.new({
            id = id.from(_N, "GetBillingAdjustmentRequestOutput", "billingAdjustmentRequestId"),
            type = "string",
            name = "billingAdjustmentRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agreementId = schema.new({
            id = id.from(_N, "GetBillingAdjustmentRequestOutput", "agreementId"),
            type = "string",
            name = "agreementId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        adjustmentReasonCode = schema.new({
            id = id.from(_N, "GetBillingAdjustmentRequestOutput", "adjustmentReasonCode"),
            type = "string",
            name = "adjustmentReasonCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "GetBillingAdjustmentRequestOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        originalInvoiceId = schema.new({
            id = id.from(_N, "GetBillingAdjustmentRequestOutput", "originalInvoiceId"),
            type = "string",
            name = "originalInvoiceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        adjustmentAmount = schema.new({
            id = id.from(_N, "GetBillingAdjustmentRequestOutput", "adjustmentAmount"),
            type = "string",
            name = "adjustmentAmount",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        currencyCode = schema.new({
            id = id.from(_N, "GetBillingAdjustmentRequestOutput", "currencyCode"),
            type = "string",
            name = "currencyCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetBillingAdjustmentRequestOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusMessage = schema.new({
            id = id.from(_N, "GetBillingAdjustmentRequestOutput", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetBillingAdjustmentRequestOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetBillingAdjustmentRequestOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListAgreementCancellationRequestsInput = schema.new({
    id = id.from(_N, "ListAgreementCancellationRequestsInput"),
    type = "structure",
    members = {
        partyType = schema.new({
            id = id.from(_N, "ListAgreementCancellationRequestsInput", "partyType"),
            type = "string",
            name = "partyType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agreementId = schema.new({
            id = id.from(_N, "ListAgreementCancellationRequestsInput", "agreementId"),
            type = "string",
            name = "agreementId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "ListAgreementCancellationRequestsInput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        agreementType = schema.new({
            id = id.from(_N, "ListAgreementCancellationRequestsInput", "agreementType"),
            type = "string",
            name = "agreementType",
            target_id = prelude.String.id,
        }),
        catalog = schema.new({
            id = id.from(_N, "ListAgreementCancellationRequestsInput", "catalog"),
            type = "string",
            name = "catalog",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAgreementCancellationRequestsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAgreementCancellationRequestsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAgreementCancellationRequestsOutput = schema.new({
    id = id.from(_N, "ListAgreementCancellationRequestsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListAgreementCancellationRequestsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        items = schema.new({
            id = id.from(_N, "ListAgreementCancellationRequestsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.AgreementCancellationRequestSummary,
        }),
    },
})

M.ListAgreementInvoiceLineItemsInput = schema.new({
    id = id.from(_N, "ListAgreementInvoiceLineItemsInput"),
    type = "structure",
    members = {
        agreementId = schema.new({
            id = id.from(_N, "ListAgreementInvoiceLineItemsInput", "agreementId"),
            type = "string",
            name = "agreementId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        groupBy = schema.new({
            id = id.from(_N, "ListAgreementInvoiceLineItemsInput", "groupBy"),
            type = "string",
            name = "groupBy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        invoiceId = schema.new({
            id = id.from(_N, "ListAgreementInvoiceLineItemsInput", "invoiceId"),
            type = "string",
            name = "invoiceId",
            target_id = prelude.String.id,
        }),
        invoiceType = schema.new({
            id = id.from(_N, "ListAgreementInvoiceLineItemsInput", "invoiceType"),
            type = "string",
            name = "invoiceType",
            target_id = prelude.String.id,
        }),
        invoiceBillingPeriod = schema.new({
            id = id.from(_N, "ListAgreementInvoiceLineItemsInput", "invoiceBillingPeriod"),
            type = "structure",
            name = "invoiceBillingPeriod",
            target_id = id.from(_N, "InvoiceBillingPeriod"),
            target = M.InvoiceBillingPeriod,
        }),
        beforeIssuedTime = schema.new({
            id = id.from(_N, "ListAgreementInvoiceLineItemsInput", "beforeIssuedTime"),
            type = "timestamp",
            name = "beforeIssuedTime",
            target_id = prelude.Timestamp.id,
        }),
        afterIssuedTime = schema.new({
            id = id.from(_N, "ListAgreementInvoiceLineItemsInput", "afterIssuedTime"),
            type = "timestamp",
            name = "afterIssuedTime",
            target_id = prelude.Timestamp.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAgreementInvoiceLineItemsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAgreementInvoiceLineItemsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAgreementInvoiceLineItemsOutput = schema.new({
    id = id.from(_N, "ListAgreementInvoiceLineItemsOutput"),
    type = "structure",
    members = {
        agreementInvoiceLineItemGroupSummaries = schema.new({
            id = id.from(_N, "ListAgreementInvoiceLineItemsOutput", "agreementInvoiceLineItemGroupSummaries"),
            type = "list",
            name = "agreementInvoiceLineItemGroupSummaries",
            target_id = prelude.Document.id,
            list_member = M.AgreementInvoiceLineItemGroupSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAgreementInvoiceLineItemsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAgreementPaymentRequestsInput = schema.new({
    id = id.from(_N, "ListAgreementPaymentRequestsInput"),
    type = "structure",
    members = {
        partyType = schema.new({
            id = id.from(_N, "ListAgreementPaymentRequestsInput", "partyType"),
            type = "string",
            name = "partyType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agreementType = schema.new({
            id = id.from(_N, "ListAgreementPaymentRequestsInput", "agreementType"),
            type = "string",
            name = "agreementType",
            target_id = prelude.String.id,
        }),
        catalog = schema.new({
            id = id.from(_N, "ListAgreementPaymentRequestsInput", "catalog"),
            type = "string",
            name = "catalog",
            target_id = prelude.String.id,
        }),
        agreementId = schema.new({
            id = id.from(_N, "ListAgreementPaymentRequestsInput", "agreementId"),
            type = "string",
            name = "agreementId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "ListAgreementPaymentRequestsInput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAgreementPaymentRequestsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAgreementPaymentRequestsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.PaymentRequestSummary = schema.new({
    id = id.from(_N, "PaymentRequestSummary"),
    type = "structure",
    members = {
        paymentRequestId = schema.new({
            id = id.from(_N, "PaymentRequestSummary", "paymentRequestId"),
            type = "string",
            name = "paymentRequestId",
            target_id = prelude.String.id,
        }),
        agreementId = schema.new({
            id = id.from(_N, "PaymentRequestSummary", "agreementId"),
            type = "string",
            name = "agreementId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "PaymentRequestSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "PaymentRequestSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        chargeId = schema.new({
            id = id.from(_N, "PaymentRequestSummary", "chargeId"),
            type = "string",
            name = "chargeId",
            target_id = prelude.String.id,
        }),
        chargeAmount = schema.new({
            id = id.from(_N, "PaymentRequestSummary", "chargeAmount"),
            type = "string",
            name = "chargeAmount",
            target_id = prelude.String.id,
        }),
        currencyCode = schema.new({
            id = id.from(_N, "PaymentRequestSummary", "currencyCode"),
            type = "string",
            name = "currencyCode",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "PaymentRequestSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "PaymentRequestSummary", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListAgreementPaymentRequestsOutput = schema.new({
    id = id.from(_N, "ListAgreementPaymentRequestsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListAgreementPaymentRequestsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        items = schema.new({
            id = id.from(_N, "ListAgreementPaymentRequestsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.PaymentRequestSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListBillingAdjustmentRequestsInput = schema.new({
    id = id.from(_N, "ListBillingAdjustmentRequestsInput"),
    type = "structure",
    members = {
        agreementId = schema.new({
            id = id.from(_N, "ListBillingAdjustmentRequestsInput", "agreementId"),
            type = "string",
            name = "agreementId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "ListBillingAdjustmentRequestsInput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        createdAfter = schema.new({
            id = id.from(_N, "ListBillingAdjustmentRequestsInput", "createdAfter"),
            type = "timestamp",
            name = "createdAfter",
            target_id = prelude.Timestamp.id,
        }),
        createdBefore = schema.new({
            id = id.from(_N, "ListBillingAdjustmentRequestsInput", "createdBefore"),
            type = "timestamp",
            name = "createdBefore",
            target_id = prelude.Timestamp.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListBillingAdjustmentRequestsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        catalog = schema.new({
            id = id.from(_N, "ListBillingAdjustmentRequestsInput", "catalog"),
            type = "string",
            name = "catalog",
            target_id = prelude.String.id,
        }),
        agreementType = schema.new({
            id = id.from(_N, "ListBillingAdjustmentRequestsInput", "agreementType"),
            type = "string",
            name = "agreementType",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBillingAdjustmentRequestsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.BillingAdjustmentSummary = schema.new({
    id = id.from(_N, "BillingAdjustmentSummary"),
    type = "structure",
    members = {
        billingAdjustmentRequestId = schema.new({
            id = id.from(_N, "BillingAdjustmentSummary", "billingAdjustmentRequestId"),
            type = "string",
            name = "billingAdjustmentRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        originalInvoiceId = schema.new({
            id = id.from(_N, "BillingAdjustmentSummary", "originalInvoiceId"),
            type = "string",
            name = "originalInvoiceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        adjustmentAmount = schema.new({
            id = id.from(_N, "BillingAdjustmentSummary", "adjustmentAmount"),
            type = "string",
            name = "adjustmentAmount",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        currencyCode = schema.new({
            id = id.from(_N, "BillingAdjustmentSummary", "currencyCode"),
            type = "string",
            name = "currencyCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "BillingAdjustmentSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agreementId = schema.new({
            id = id.from(_N, "BillingAdjustmentSummary", "agreementId"),
            type = "string",
            name = "agreementId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "BillingAdjustmentSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "BillingAdjustmentSummary", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agreementType = schema.new({
            id = id.from(_N, "BillingAdjustmentSummary", "agreementType"),
            type = "string",
            name = "agreementType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        catalog = schema.new({
            id = id.from(_N, "BillingAdjustmentSummary", "catalog"),
            type = "string",
            name = "catalog",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListBillingAdjustmentRequestsOutput = schema.new({
    id = id.from(_N, "ListBillingAdjustmentRequestsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListBillingAdjustmentRequestsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        items = schema.new({
            id = id.from(_N, "ListBillingAdjustmentRequestsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.BillingAdjustmentSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Filter = schema.new({
    id = id.from(_N, "Filter"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "Filter", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        values = schema.new({
            id = id.from(_N, "Filter", "values"),
            type = "list",
            name = "values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.Sort = schema.new({
    id = id.from(_N, "Sort"),
    type = "structure",
    members = {
        sortBy = schema.new({
            id = id.from(_N, "Sort", "sortBy"),
            type = "string",
            name = "sortBy",
            target_id = prelude.String.id,
        }),
        sortOrder = schema.new({
            id = id.from(_N, "Sort", "sortOrder"),
            type = "string",
            name = "sortOrder",
            target_id = prelude.String.id,
        }),
    },
})

M.SearchAgreementsInput = schema.new({
    id = id.from(_N, "SearchAgreementsInput"),
    type = "structure",
    members = {
        catalog = schema.new({
            id = id.from(_N, "SearchAgreementsInput", "catalog"),
            type = "string",
            name = "catalog",
            target_id = prelude.String.id,
        }),
        filters = schema.new({
            id = id.from(_N, "SearchAgreementsInput", "filters"),
            type = "list",
            name = "filters",
            target_id = prelude.Document.id,
            list_member = M.Filter,
        }),
        sort = schema.new({
            id = id.from(_N, "SearchAgreementsInput", "sort"),
            type = "structure",
            name = "sort",
            target_id = id.from(_N, "Sort"),
            target = M.Sort,
        }),
        maxResults = schema.new({
            id = id.from(_N, "SearchAgreementsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "SearchAgreementsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.SearchAgreementsOutput = schema.new({
    id = id.from(_N, "SearchAgreementsOutput"),
    type = "structure",
    members = {
        agreementViewSummaries = schema.new({
            id = id.from(_N, "SearchAgreementsOutput", "agreementViewSummaries"),
            type = "list",
            name = "agreementViewSummaries",
            target_id = prelude.Document.id,
            list_member = M.AgreementViewSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "SearchAgreementsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.SendAgreementCancellationRequestInput = schema.new({
    id = id.from(_N, "SendAgreementCancellationRequestInput"),
    type = "structure",
    members = {
        agreementId = schema.new({
            id = id.from(_N, "SendAgreementCancellationRequestInput", "agreementId"),
            type = "string",
            name = "agreementId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        reasonCode = schema.new({
            id = id.from(_N, "SendAgreementCancellationRequestInput", "reasonCode"),
            type = "string",
            name = "reasonCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "SendAgreementCancellationRequestInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "SendAgreementCancellationRequestInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.SendAgreementCancellationRequestOutput = schema.new({
    id = id.from(_N, "SendAgreementCancellationRequestOutput"),
    type = "structure",
    members = {
        agreementId = schema.new({
            id = id.from(_N, "SendAgreementCancellationRequestOutput", "agreementId"),
            type = "string",
            name = "agreementId",
            target_id = prelude.String.id,
        }),
        agreementCancellationRequestId = schema.new({
            id = id.from(_N, "SendAgreementCancellationRequestOutput", "agreementCancellationRequestId"),
            type = "string",
            name = "agreementCancellationRequestId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "SendAgreementCancellationRequestOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        reasonCode = schema.new({
            id = id.from(_N, "SendAgreementCancellationRequestOutput", "reasonCode"),
            type = "string",
            name = "reasonCode",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "SendAgreementCancellationRequestOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "SendAgreementCancellationRequestOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "SendAgreementCancellationRequestOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.SendAgreementPaymentRequestInput = schema.new({
    id = id.from(_N, "SendAgreementPaymentRequestInput"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "SendAgreementPaymentRequestInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        agreementId = schema.new({
            id = id.from(_N, "SendAgreementPaymentRequestInput", "agreementId"),
            type = "string",
            name = "agreementId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        termId = schema.new({
            id = id.from(_N, "SendAgreementPaymentRequestInput", "termId"),
            type = "string",
            name = "termId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "SendAgreementPaymentRequestInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        chargeAmount = schema.new({
            id = id.from(_N, "SendAgreementPaymentRequestInput", "chargeAmount"),
            type = "string",
            name = "chargeAmount",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "SendAgreementPaymentRequestInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.SendAgreementPaymentRequestOutput = schema.new({
    id = id.from(_N, "SendAgreementPaymentRequestOutput"),
    type = "structure",
    members = {
        paymentRequestId = schema.new({
            id = id.from(_N, "SendAgreementPaymentRequestOutput", "paymentRequestId"),
            type = "string",
            name = "paymentRequestId",
            target_id = prelude.String.id,
        }),
        agreementId = schema.new({
            id = id.from(_N, "SendAgreementPaymentRequestOutput", "agreementId"),
            type = "string",
            name = "agreementId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "SendAgreementPaymentRequestOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "SendAgreementPaymentRequestOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "SendAgreementPaymentRequestOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        chargeAmount = schema.new({
            id = id.from(_N, "SendAgreementPaymentRequestOutput", "chargeAmount"),
            type = "string",
            name = "chargeAmount",
            target_id = prelude.String.id,
        }),
        currencyCode = schema.new({
            id = id.from(_N, "SendAgreementPaymentRequestOutput", "currencyCode"),
            type = "string",
            name = "currencyCode",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "SendAgreementPaymentRequestOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

-- Fix forward references for recursive schemas
for _, s in pairs(M) do
    if type(s) == "table" and (s.type == "structure" or s.type == "union") then
        local members = rawget(s, "_members")
        if members then
            for _, ms in pairs(members) do
                if (ms.type == "structure" or ms.type == "union") and not rawget(ms, "_target") and ms.target_id then
                    rawset(ms, "_target", M[ms.target_id.name])
                end
            end
        end
    end
end

return M
