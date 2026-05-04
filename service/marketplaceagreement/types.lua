local M = {}

M.ByolPricingTerm = {
    type = "structure",
    id = "ByolPricingTerm",
    members = {
        type = {
            type = "string",
        },
    },
}

M.Dimension = {
    type = "structure",
    id = "Dimension",
    members = {
        dimensionKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dimensionValue = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.ConfigurableUpfrontPricingTermConfiguration = {
    type = "structure",
    id = "ConfigurableUpfrontPricingTermConfiguration",
    members = {
        selectorValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dimensions = {
            type = "list",
            member = M.Dimension,
            traits = {
                required = true,
            },
        },
    },
}

M.Constraints = {
    type = "structure",
    id = "Constraints",
    members = {
        multipleDimensionSelection = {
            type = "string",
        },
        quantityConfiguration = {
            type = "string",
        },
    },
}

M.RateCardItem = {
    type = "structure",
    id = "RateCardItem",
    members = {
        dimensionKey = {
            type = "string",
        },
        price = {
            type = "string",
        },
    },
}

M.Selector = {
    type = "structure",
    id = "Selector",
    members = {
        type = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.ConfigurableUpfrontRateCardItem = {
    type = "structure",
    id = "ConfigurableUpfrontRateCardItem",
    members = {
        selector = M.Selector,
        constraints = M.Constraints,
        rateCard = {
            type = "list",
            member = M.RateCardItem,
        },
    },
}

M.ConfigurableUpfrontPricingTerm = {
    type = "structure",
    id = "ConfigurableUpfrontPricingTerm",
    members = {
        type = {
            type = "string",
        },
        currencyCode = {
            type = "string",
        },
        rateCards = {
            type = "list",
            member = M.ConfigurableUpfrontRateCardItem,
        },
        configuration = M.ConfigurableUpfrontPricingTermConfiguration,
    },
}

M.GrantItem = {
    type = "structure",
    id = "GrantItem",
    members = {
        dimensionKey = {
            type = "string",
        },
        maxQuantity = {
            type = "integer",
            traits = {
                default = 1,
            },
        },
    },
}

M.FixedUpfrontPricingTerm = {
    type = "structure",
    id = "FixedUpfrontPricingTerm",
    members = {
        type = {
            type = "string",
        },
        currencyCode = {
            type = "string",
        },
        duration = {
            type = "string",
        },
        price = {
            type = "string",
        },
        grants = {
            type = "list",
            member = M.GrantItem,
        },
    },
}

M.FreeTrialPricingTerm = {
    type = "structure",
    id = "FreeTrialPricingTerm",
    members = {
        type = {
            type = "string",
        },
        duration = {
            type = "string",
        },
        grants = {
            type = "list",
            member = M.GrantItem,
        },
    },
}

M.DocumentItem = {
    type = "structure",
    id = "DocumentItem",
    members = {
        type = {
            type = "string",
        },
        url = {
            type = "string",
        },
        version = {
            type = "string",
        },
    },
}

M.LegalTerm = {
    type = "structure",
    id = "LegalTerm",
    members = {
        type = {
            type = "string",
        },
        documents = {
            type = "list",
            member = M.DocumentItem,
        },
    },
}

M.ScheduleItem = {
    type = "structure",
    id = "ScheduleItem",
    members = {
        chargeDate = {
            type = "timestamp",
        },
        chargeAmount = {
            type = "string",
        },
    },
}

M.PaymentScheduleTerm = {
    type = "structure",
    id = "PaymentScheduleTerm",
    members = {
        type = {
            type = "string",
        },
        currencyCode = {
            type = "string",
        },
        schedule = {
            type = "list",
            member = M.ScheduleItem,
        },
    },
}

M.RecurringPaymentTerm = {
    type = "structure",
    id = "RecurringPaymentTerm",
    members = {
        type = {
            type = "string",
        },
        currencyCode = {
            type = "string",
        },
        billingPeriod = {
            type = "string",
        },
        price = {
            type = "string",
        },
    },
}

M.RenewalTermConfiguration = {
    type = "structure",
    id = "RenewalTermConfiguration",
    members = {
        enableAutoRenew = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.RenewalTerm = {
    type = "structure",
    id = "RenewalTerm",
    members = {
        type = {
            type = "string",
        },
        configuration = M.RenewalTermConfiguration,
    },
}

M.SupportTerm = {
    type = "structure",
    id = "SupportTerm",
    members = {
        type = {
            type = "string",
        },
        refundPolicy = {
            type = "string",
        },
    },
}

M.UsageBasedRateCardItem = {
    type = "structure",
    id = "UsageBasedRateCardItem",
    members = {
        rateCard = {
            type = "list",
            member = M.RateCardItem,
        },
    },
}

M.UsageBasedPricingTerm = {
    type = "structure",
    id = "UsageBasedPricingTerm",
    members = {
        type = {
            type = "string",
        },
        currencyCode = {
            type = "string",
        },
        rateCards = {
            type = "list",
            member = M.UsageBasedRateCardItem,
        },
    },
}

M.ValidityTerm = {
    type = "structure",
    id = "ValidityTerm",
    members = {
        type = {
            type = "string",
        },
        agreementDuration = {
            type = "string",
        },
        agreementStartDate = {
            type = "timestamp",
        },
        agreementEndDate = {
            type = "timestamp",
        },
    },
}

M.PaymentRequestApprovalStrategy = {
    AUTO_APPROVE_ON_EXPIRATION = "AUTO_APPROVE_ON_EXPIRATION",
    WAIT_FOR_APPROVAL = "WAIT_FOR_APPROVAL",
}

M.VariablePaymentTermConfiguration = {
    type = "structure",
    id = "VariablePaymentTermConfiguration",
    members = {
        paymentRequestApprovalStrategy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expirationDuration = {
            type = "string",
        },
    },
}

M.VariablePaymentTerm = {
    type = "structure",
    id = "VariablePaymentTerm",
    members = {
        type = {
            type = "string",
        },
        currencyCode = {
            type = "string",
        },
        maxTotalChargeAmount = {
            type = "string",
        },
        configuration = M.VariablePaymentTermConfiguration,
    },
}

M.AcceptedTerm = {
    type = "union",
    id = "AcceptedTerm",
    members = {
        legalTerm = M.LegalTerm,
        supportTerm = M.SupportTerm,
        renewalTerm = M.RenewalTerm,
        usageBasedPricingTerm = M.UsageBasedPricingTerm,
        configurableUpfrontPricingTerm = M.ConfigurableUpfrontPricingTerm,
        byolPricingTerm = M.ByolPricingTerm,
        recurringPaymentTerm = M.RecurringPaymentTerm,
        validityTerm = M.ValidityTerm,
        paymentScheduleTerm = M.PaymentScheduleTerm,
        freeTrialPricingTerm = M.FreeTrialPricingTerm,
        fixedUpfrontPricingTerm = M.FixedUpfrontPricingTerm,
        variablePaymentTerm = M.VariablePaymentTerm,
    },
}

M.Acceptor = {
    type = "structure",
    id = "Acceptor",
    members = {
        accountId = {
            type = "string",
        },
    },
}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        requestId = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.AgreementCancellationRequestReasonCode = {
    INCORRECT_TERMS_ACCEPTED = "INCORRECT_TERMS_ACCEPTED",
    REPLACING_AGREEMENT = "REPLACING_AGREEMENT",
    TEST_AGREEMENT = "TEST_AGREEMENT",
    ALTERNATIVE_PROCUREMENT_CHANNEL = "ALTERNATIVE_PROCUREMENT_CHANNEL",
    PRODUCT_DISCONTINUED = "PRODUCT_DISCONTINUED",
    UNINTENDED_RENEWAL = "UNINTENDED_RENEWAL",
    BUYER_DISSATISFACTION = "BUYER_DISSATISFACTION",
    OTHER = "OTHER",
}

M.AgreementCancellationRequestStatus = {
    PENDING_APPROVAL = "PENDING_APPROVAL",
    APPROVED = "APPROVED",
    REJECTED = "REJECTED",
    CANCELLED = "CANCELLED",
    VALIDATION_FAILED = "VALIDATION_FAILED",
}

M.AgreementCancellationRequestSummary = {
    type = "structure",
    id = "AgreementCancellationRequestSummary",
    members = {
        agreementCancellationRequestId = {
            type = "string",
        },
        agreementId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        reasonCode = {
            type = "string",
        },
        agreementType = {
            type = "string",
        },
        catalog = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
    },
}

M.InvoiceBillingPeriod = {
    type = "structure",
    id = "InvoiceBillingPeriod",
    members = {
        month = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        year = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.InvoiceType = {
    INVOICE = "INVOICE",
    CREDIT_MEMO = "CREDIT_MEMO",
}

M.InvoicingEntity = {
    type = "structure",
    id = "InvoicingEntity",
    members = {
        legalName = {
            type = "string",
        },
        branchName = {
            type = "string",
        },
    },
}

M.PricingCurrencyAmount = {
    type = "structure",
    id = "PricingCurrencyAmount",
    members = {
        amount = {
            type = "string",
        },
        maxAdjustmentAmount = {
            type = "string",
        },
        currencyCode = {
            type = "string",
        },
    },
}

M.AgreementInvoiceLineItemGroupSummary = {
    type = "structure",
    id = "AgreementInvoiceLineItemGroupSummary",
    members = {
        agreementId = {
            type = "string",
        },
        invoiceId = {
            type = "string",
        },
        pricingCurrencyAmount = M.PricingCurrencyAmount,
        invoiceBillingPeriod = M.InvoiceBillingPeriod,
        issuedTime = {
            type = "timestamp",
        },
        invoiceType = {
            type = "string",
        },
        invoicingEntity = M.InvoicingEntity,
    },
}

M.AgreementStatus = {
    ACTIVE = "ACTIVE",
    ARCHIVED = "ARCHIVED",
    CANCELLED = "CANCELLED",
    EXPIRED = "EXPIRED",
    RENEWED = "RENEWED",
    REPLACED = "REPLACED",
    ROLLED_BACK = "ROLLED_BACK",
    SUPERSEDED = "SUPERSEDED",
    TERMINATED = "TERMINATED",
}

M.Resource = {
    type = "structure",
    id = "Resource",
    members = {
        id = {
            type = "string",
        },
        type = {
            type = "string",
        },
    },
}

M.ProposalSummary = {
    type = "structure",
    id = "ProposalSummary",
    members = {
        resources = {
            type = "list",
            member = M.Resource,
        },
        offerId = {
            type = "string",
        },
        offerSetId = {
            type = "string",
        },
    },
}

M.Proposer = {
    type = "structure",
    id = "Proposer",
    members = {
        accountId = {
            type = "string",
        },
    },
}

M.AgreementViewSummary = {
    type = "structure",
    id = "AgreementViewSummary",
    members = {
        agreementId = {
            type = "string",
        },
        acceptanceTime = {
            type = "timestamp",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        agreementType = {
            type = "string",
        },
        acceptor = M.Acceptor,
        proposer = M.Proposer,
        proposalSummary = M.ProposalSummary,
        status = {
            type = "string",
        },
    },
}

M.BillingAdjustmentReasonCode = {
    INCORRECT_TERMS_ACCEPTED = "INCORRECT_TERMS_ACCEPTED",
    INCORRECT_METERING = "INCORRECT_METERING",
    TEST_ENVIRONMENT_CHARGES = "TEST_ENVIRONMENT_CHARGES",
    ALTERNATIVE_PROCUREMENT_CHANNEL = "ALTERNATIVE_PROCUREMENT_CHANNEL",
    UNINTENDED_RENEWAL = "UNINTENDED_RENEWAL",
    BUYER_DISSATISFACTION = "BUYER_DISSATISFACTION",
    OTHER = "OTHER",
}

M.BatchCreateBillingAdjustmentRequestEntry = {
    type = "structure",
    id = "BatchCreateBillingAdjustmentRequestEntry",
    members = {
        agreementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        originalInvoiceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        adjustmentAmount = {
            type = "string",
            traits = {
                required = true,
            },
        },
        currencyCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        adjustmentReasonCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchCreateBillingAdjustmentRequestInput = {
    type = "structure",
    id = "BatchCreateBillingAdjustmentRequestInput",
    members = {
        billingAdjustmentRequestEntries = {
            type = "list",
            member = M.BatchCreateBillingAdjustmentRequestEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.BillingAdjustmentErrorCode = {
    CONFLICT_EXCEPTION = "CONFLICT_EXCEPTION",
    VALIDATION_EXCEPTION = "VALIDATION_EXCEPTION",
    RESOURCE_NOT_FOUND_EXCEPTION = "RESOURCE_NOT_FOUND_EXCEPTION",
    INTERNAL_FAILURE = "INTERNAL_FAILURE",
}

M.BatchCreateBillingAdjustmentError = {
    type = "structure",
    id = "BatchCreateBillingAdjustmentError",
    members = {
        code = {
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
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchCreateBillingAdjustmentItem = {
    type = "structure",
    id = "BatchCreateBillingAdjustmentItem",
    members = {
        billingAdjustmentRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchCreateBillingAdjustmentRequestOutput = {
    type = "structure",
    id = "BatchCreateBillingAdjustmentRequestOutput",
    members = {
        items = {
            type = "list",
            member = M.BatchCreateBillingAdjustmentItem,
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member = M.BatchCreateBillingAdjustmentError,
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceType = {
    AGREEMENT = "Agreement",
    CHARGE = "Charge",
    PAYMENT_REQUEST = "PaymentRequest",
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        requestId = {
            type = "string",
        },
        message = {
            type = "string",
        },
        resourceId = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        requestId = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        requestId = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    id = "ValidationExceptionField",
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
    INVALID_AGREEMENT_ID = "INVALID_AGREEMENT_ID",
    MISSING_AGREEMENT_ID = "MISSING_AGREEMENT_ID",
    INVALID_CATALOG = "INVALID_CATALOG",
    INVALID_FILTER_NAME = "INVALID_FILTER_NAME",
    INVALID_FILTER_VALUES = "INVALID_FILTER_VALUES",
    INVALID_SORT_BY = "INVALID_SORT_BY",
    INVALID_SORT_ORDER = "INVALID_SORT_ORDER",
    INVALID_NEXT_TOKEN = "INVALID_NEXT_TOKEN",
    INVALID_MAX_RESULTS = "INVALID_MAX_RESULTS",
    INVALID_TERM_ID = "INVALID_TERM_ID",
    MISSING_TERM_ID = "MISSING_TERM_ID",
    MISSING_NAME = "MISSING_NAME",
    INVALID_NAME = "INVALID_NAME",
    INVALID_DESCRIPTION = "INVALID_DESCRIPTION",
    MISSING_CHARGE_AMOUNT = "MISSING_CHARGE_AMOUNT",
    INVALID_CHARGE_AMOUNT = "INVALID_CHARGE_AMOUNT",
    MISSING_PAYMENT_REQUEST_ID = "MISSING_PAYMENT_REQUEST_ID",
    INVALID_PAYMENT_REQUEST_ID = "INVALID_PAYMENT_REQUEST_ID",
    MISSING_PARTY_TYPE = "MISSING_PARTY_TYPE",
    INVALID_PARTY_TYPE = "INVALID_PARTY_TYPE",
    UNSUPPORTED_FILTERS = "UNSUPPORTED_FILTERS",
    INVALID_REJECTION_REASON = "INVALID_REJECTION_REASON",
    INVALID_PAYMENT_REQUEST_STATUS = "INVALID_PAYMENT_REQUEST_STATUS",
    OTHER = "OTHER",
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        requestId = {
            type = "string",
        },
        message = {
            type = "string",
        },
        reason = {
            type = "string",
        },
        fields = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.CancelAgreementCancellationRequestInput = {
    type = "structure",
    id = "CancelAgreementCancellationRequestInput",
    members = {
        agreementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agreementCancellationRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cancellationReason = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelAgreementCancellationRequestOutput = {
    type = "structure",
    id = "CancelAgreementCancellationRequestOutput",
    members = {
        agreementCancellationRequestId = {
            type = "string",
        },
        agreementId = {
            type = "string",
        },
        reasonCode = {
            type = "string",
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        requestId = {
            type = "string",
        },
        message = {
            type = "string",
        },
        resourceId = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
    },
}

M.CancelAgreementPaymentRequestInput = {
    type = "structure",
    id = "CancelAgreementPaymentRequestInput",
    members = {
        paymentRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agreementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PaymentRequestStatus = {
    VALIDATING = "VALIDATING",
    VALIDATION_FAILED = "VALIDATION_FAILED",
    PENDING_APPROVAL = "PENDING_APPROVAL",
    APPROVED = "APPROVED",
    REJECTED = "REJECTED",
    CANCELLED = "CANCELLED",
}

M.CancelAgreementPaymentRequestOutput = {
    type = "structure",
    id = "CancelAgreementPaymentRequestOutput",
    members = {
        paymentRequestId = {
            type = "string",
        },
        agreementId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        chargeAmount = {
            type = "string",
        },
        currencyCode = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
    },
}

M.DescribeAgreementInput = {
    type = "structure",
    id = "DescribeAgreementInput",
    members = {
        agreementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EstimatedCharges = {
    type = "structure",
    id = "EstimatedCharges",
    members = {
        currencyCode = {
            type = "string",
        },
        agreementValue = {
            type = "string",
        },
    },
}

M.DescribeAgreementOutput = {
    type = "structure",
    id = "DescribeAgreementOutput",
    members = {
        agreementId = {
            type = "string",
        },
        acceptor = M.Acceptor,
        proposer = M.Proposer,
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        acceptanceTime = {
            type = "timestamp",
        },
        agreementType = {
            type = "string",
        },
        estimatedCharges = M.EstimatedCharges,
        proposalSummary = M.ProposalSummary,
        status = {
            type = "string",
        },
    },
}

M.GetAgreementCancellationRequestInput = {
    type = "structure",
    id = "GetAgreementCancellationRequestInput",
    members = {
        agreementCancellationRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agreementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAgreementCancellationRequestOutput = {
    type = "structure",
    id = "GetAgreementCancellationRequestOutput",
    members = {
        agreementCancellationRequestId = {
            type = "string",
        },
        agreementId = {
            type = "string",
        },
        reasonCode = {
            type = "string",
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
    },
}

M.GetAgreementPaymentRequestInput = {
    type = "structure",
    id = "GetAgreementPaymentRequestInput",
    members = {
        paymentRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agreementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAgreementPaymentRequestOutput = {
    type = "structure",
    id = "GetAgreementPaymentRequestOutput",
    members = {
        paymentRequestId = {
            type = "string",
        },
        agreementId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        chargeId = {
            type = "string",
        },
        chargeAmount = {
            type = "string",
        },
        currencyCode = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
    },
}

M.GetAgreementTermsInput = {
    type = "structure",
    id = "GetAgreementTermsInput",
    members = {
        agreementId = {
            type = "string",
            traits = {
                required = true,
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

M.GetAgreementTermsOutput = {
    type = "structure",
    id = "GetAgreementTermsOutput",
    members = {
        acceptedTerms = {
            type = "list",
            member = M.AcceptedTerm,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetBillingAdjustmentRequestInput = {
    type = "structure",
    id = "GetBillingAdjustmentRequestInput",
    members = {
        agreementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        billingAdjustmentRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BillingAdjustmentStatus = {
    PENDING = "PENDING",
    VALIDATION_FAILED = "VALIDATION_FAILED",
    COMPLETED = "COMPLETED",
}

M.GetBillingAdjustmentRequestOutput = {
    type = "structure",
    id = "GetBillingAdjustmentRequestOutput",
    members = {
        billingAdjustmentRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agreementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        adjustmentReasonCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        originalInvoiceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        adjustmentAmount = {
            type = "string",
            traits = {
                required = true,
            },
        },
        currencyCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusMessage = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAgreementCancellationRequestsInput = {
    type = "structure",
    id = "ListAgreementCancellationRequestsInput",
    members = {
        partyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agreementId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        agreementType = {
            type = "string",
        },
        catalog = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAgreementCancellationRequestsOutput = {
    type = "structure",
    id = "ListAgreementCancellationRequestsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        items = {
            type = "list",
            member = M.AgreementCancellationRequestSummary,
        },
    },
}

M.LineItemGroupBy = {
    INVOICE_ID = "INVOICE_ID",
}

M.ListAgreementInvoiceLineItemsInput = {
    type = "structure",
    id = "ListAgreementInvoiceLineItemsInput",
    members = {
        agreementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        groupBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        invoiceId = {
            type = "string",
        },
        invoiceType = {
            type = "string",
        },
        invoiceBillingPeriod = M.InvoiceBillingPeriod,
        beforeIssuedTime = {
            type = "timestamp",
        },
        afterIssuedTime = {
            type = "timestamp",
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAgreementInvoiceLineItemsOutput = {
    type = "structure",
    id = "ListAgreementInvoiceLineItemsOutput",
    members = {
        agreementInvoiceLineItemGroupSummaries = {
            type = "list",
            member = M.AgreementInvoiceLineItemGroupSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAgreementPaymentRequestsInput = {
    type = "structure",
    id = "ListAgreementPaymentRequestsInput",
    members = {
        partyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agreementType = {
            type = "string",
        },
        catalog = {
            type = "string",
        },
        agreementId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PaymentRequestSummary = {
    type = "structure",
    id = "PaymentRequestSummary",
    members = {
        paymentRequestId = {
            type = "string",
        },
        agreementId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        name = {
            type = "string",
        },
        chargeId = {
            type = "string",
        },
        chargeAmount = {
            type = "string",
        },
        currencyCode = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
    },
}

M.ListAgreementPaymentRequestsOutput = {
    type = "structure",
    id = "ListAgreementPaymentRequestsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        items = {
            type = "list",
            member = M.PaymentRequestSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListBillingAdjustmentRequestsInput = {
    type = "structure",
    id = "ListBillingAdjustmentRequestsInput",
    members = {
        agreementId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        createdAfter = {
            type = "timestamp",
        },
        createdBefore = {
            type = "timestamp",
        },
        maxResults = {
            type = "integer",
        },
        catalog = {
            type = "string",
        },
        agreementType = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.BillingAdjustmentSummary = {
    type = "structure",
    id = "BillingAdjustmentSummary",
    members = {
        billingAdjustmentRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        originalInvoiceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        adjustmentAmount = {
            type = "string",
            traits = {
                required = true,
            },
        },
        currencyCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agreementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        agreementType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListBillingAdjustmentRequestsOutput = {
    type = "structure",
    id = "ListBillingAdjustmentRequestsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        items = {
            type = "list",
            member = M.BillingAdjustmentSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.Filter = {
    type = "structure",
    id = "Filter",
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

M.SortOrder = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.Sort = {
    type = "structure",
    id = "Sort",
    members = {
        sortBy = {
            type = "string",
        },
        sortOrder = {
            type = "string",
        },
    },
}

M.SearchAgreementsInput = {
    type = "structure",
    id = "SearchAgreementsInput",
    members = {
        catalog = {
            type = "string",
        },
        filters = {
            type = "list",
            member = M.Filter,
        },
        sort = M.Sort,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SearchAgreementsOutput = {
    type = "structure",
    id = "SearchAgreementsOutput",
    members = {
        agreementViewSummaries = {
            type = "list",
            member = M.AgreementViewSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SendAgreementCancellationRequestInput = {
    type = "structure",
    id = "SendAgreementCancellationRequestInput",
    members = {
        agreementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reasonCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.SendAgreementCancellationRequestOutput = {
    type = "structure",
    id = "SendAgreementCancellationRequestOutput",
    members = {
        agreementId = {
            type = "string",
        },
        agreementCancellationRequestId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        reasonCode = {
            type = "string",
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
    },
}

M.SendAgreementPaymentRequestInput = {
    type = "structure",
    id = "SendAgreementPaymentRequestInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        agreementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        termId = {
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
        chargeAmount = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.SendAgreementPaymentRequestOutput = {
    type = "structure",
    id = "SendAgreementPaymentRequestOutput",
    members = {
        paymentRequestId = {
            type = "string",
        },
        agreementId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        chargeAmount = {
            type = "string",
        },
        currencyCode = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
    },
}

return M
