local M = {}

M.ByolPricingTerm = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
    },
}

M.Dimension = {
    type = "structure",
    members = {
        dimensionKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dimensionValue = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ConfigurableUpfrontPricingTermConfiguration = {
    type = "structure",
    members = {
        selectorValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dimensions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.Constraints = {
    type = "structure",
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
    members = {
        selector = {
            type = "structure",
        },
        constraints = {
            type = "structure",
        },
        rateCard = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ConfigurableUpfrontPricingTerm = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        currencyCode = {
            type = "string",
        },
        rateCards = {
            type = "list",
            member_type = "structure",
        },
        configuration = {
            type = "structure",
        },
    },
}

M.GrantItem = {
    type = "structure",
    members = {
        dimensionKey = {
            type = "string",
        },
        maxQuantity = {
            type = "number",
        },
    },
}

M.FixedUpfrontPricingTerm = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.FreeTrialPricingTerm = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        duration = {
            type = "string",
        },
        grants = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DocumentItem = {
    type = "structure",
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
    members = {
        type = {
            type = "string",
        },
        documents = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ScheduleItem = {
    type = "structure",
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
    members = {
        type = {
            type = "string",
        },
        currencyCode = {
            type = "string",
        },
        schedule = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RecurringPaymentTerm = {
    type = "structure",
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
    members = {
        type = {
            type = "string",
        },
        configuration = {
            type = "structure",
        },
    },
}

M.SupportTerm = {
    type = "structure",
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
    members = {
        rateCard = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UsageBasedPricingTerm = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        currencyCode = {
            type = "string",
        },
        rateCards = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ValidityTerm = {
    type = "structure",
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
        configuration = {
            type = "structure",
        },
    },
}

M.AcceptedTerm = {
    type = "union",
    members = {
        legalTerm = {
            type = "structure",
        },
        supportTerm = {
            type = "structure",
        },
        renewalTerm = {
            type = "structure",
        },
        usageBasedPricingTerm = {
            type = "structure",
        },
        configurableUpfrontPricingTerm = {
            type = "structure",
        },
        byolPricingTerm = {
            type = "structure",
        },
        recurringPaymentTerm = {
            type = "structure",
        },
        validityTerm = {
            type = "structure",
        },
        paymentScheduleTerm = {
            type = "structure",
        },
        freeTrialPricingTerm = {
            type = "structure",
        },
        fixedUpfrontPricingTerm = {
            type = "structure",
        },
        variablePaymentTerm = {
            type = "structure",
        },
    },
}

M.Acceptor = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
        },
    },
}

M.AccessDeniedException = {
    type = "structure",
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
    members = {
        month = {
            type = "number",
            traits = {
                required = true,
            },
        },
        year = {
            type = "number",
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
    members = {
        agreementId = {
            type = "string",
        },
        invoiceId = {
            type = "string",
        },
        pricingCurrencyAmount = {
            type = "structure",
        },
        invoiceBillingPeriod = {
            type = "structure",
        },
        issuedTime = {
            type = "timestamp",
        },
        invoiceType = {
            type = "string",
        },
        invoicingEntity = {
            type = "structure",
        },
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
    members = {
        resources = {
            type = "list",
            member_type = "structure",
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
    members = {
        accountId = {
            type = "string",
        },
    },
}

M.AgreementViewSummary = {
    type = "structure",
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
        acceptor = {
            type = "structure",
        },
        proposer = {
            type = "structure",
        },
        proposalSummary = {
            type = "structure",
        },
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
    members = {
        billingAdjustmentRequestEntries = {
            type = "list",
            member_type = "structure",
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
    members = {
        items = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
    },
}

M.CancelAgreementCancellationRequestInput = {
    type = "structure",
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
    members = {
        agreementId = {
            type = "string",
        },
        acceptor = {
            type = "structure",
        },
        proposer = {
            type = "structure",
        },
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
        estimatedCharges = {
            type = "structure",
        },
        proposalSummary = {
            type = "structure",
        },
        status = {
            type = "string",
        },
    },
}

M.GetAgreementCancellationRequestInput = {
    type = "structure",
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
    members = {
        agreementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetAgreementTermsOutput = {
    type = "structure",
    members = {
        acceptedTerms = {
            type = "list",
            member_type = "union",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetBillingAdjustmentRequestInput = {
    type = "structure",
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
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAgreementCancellationRequestsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        items = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.LineItemGroupBy = {
    INVOICE_ID = "INVOICE_ID",
}

M.ListAgreementInvoiceLineItemsInput = {
    type = "structure",
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
        invoiceBillingPeriod = {
            type = "structure",
        },
        beforeIssuedTime = {
            type = "timestamp",
        },
        afterIssuedTime = {
            type = "timestamp",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAgreementInvoiceLineItemsOutput = {
    type = "structure",
    members = {
        agreementInvoiceLineItemGroupSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAgreementPaymentRequestsInput = {
    type = "structure",
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
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PaymentRequestSummary = {
    type = "structure",
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
    members = {
        nextToken = {
            type = "string",
        },
        items = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListBillingAdjustmentRequestsInput = {
    type = "structure",
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
            type = "number",
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
    members = {
        nextToken = {
            type = "string",
        },
        items = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.Filter = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        values = {
            type = "list",
            member_type = "string",
        },
    },
}

M.SortOrder = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.Sort = {
    type = "structure",
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
    members = {
        catalog = {
            type = "string",
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        sort = {
            type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SearchAgreementsOutput = {
    type = "structure",
    members = {
        agreementViewSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SendAgreementCancellationRequestInput = {
    type = "structure",
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
        },
        description = {
            type = "string",
        },
    },
}

M.SendAgreementCancellationRequestOutput = {
    type = "structure",
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
    members = {
        clientToken = {
            type = "string",
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
