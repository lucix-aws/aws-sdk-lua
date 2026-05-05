local record AcceptAgreementCancellationRequestInput
    agreementId: string
    agreementCancellationRequestId: string
end

local record AcceptAgreementCancellationRequestOutput
    agreementId: string
    agreementCancellationRequestId: string
    status: string
    reasonCode: string
    description: string
    createdAt: number
    updatedAt: number
end

local record AcceptAgreementPaymentRequestInput
    paymentRequestId: string
    agreementId: string
    purchaseOrderReference: string
end

local record AcceptAgreementPaymentRequestOutput
    paymentRequestId: string
    agreementId: string
    status: string
    name: string
    description: string
    chargeAmount: string
    currencyCode: string
    createdAt: number
    updatedAt: number
end

local record AcceptAgreementRequestInput
    agreementRequestId: string
    purchaseOrders: {PurchaseOrder}
end

local record AcceptAgreementRequestOutput
    agreementId: string
end

local record BatchCreateBillingAdjustmentRequestInput
    billingAdjustmentRequestEntries: {BatchCreateBillingAdjustmentRequestEntry}
end

local record BatchCreateBillingAdjustmentRequestOutput
    items: {BatchCreateBillingAdjustmentItem}
    errors: {BatchCreateBillingAdjustmentError}
end

local record CancelAgreementInput
    agreementId: string
end

local record CancelAgreementOutput
end

local record CancelAgreementCancellationRequestInput
    agreementId: string
    agreementCancellationRequestId: string
    cancellationReason: string
end

local record CancelAgreementCancellationRequestOutput
    agreementCancellationRequestId: string
    agreementId: string
    reasonCode: string
    description: string
    status: string
    statusMessage: string
    createdAt: number
    updatedAt: number
end

local record CancelAgreementPaymentRequestInput
    paymentRequestId: string
    agreementId: string
end

local record CancelAgreementPaymentRequestOutput
    paymentRequestId: string
    agreementId: string
    status: string
    name: string
    description: string
    chargeAmount: string
    currencyCode: string
    createdAt: number
    updatedAt: number
end

local record CreateAgreementRequestInput
    clientToken: string
    intent: string
    requestedTerms: {RequestedTerm}
    sourceAgreementIdentifier: string
    agreementProposalIdentifier: string
    taxConfiguration: TaxConfiguration
end

local record CreateAgreementRequestOutput
    agreementRequestId: string
    chargeSummary: ChargeSummary
end

local record DescribeAgreementInput
    agreementId: string
end

local record DescribeAgreementOutput
    agreementId: string
    acceptor: Acceptor
    proposer: Proposer
    startTime: number
    endTime: number
    acceptanceTime: number
    agreementType: string
    estimatedCharges: EstimatedCharges
    proposalSummary: ProposalSummary
    status: string
end

local record GetAgreementCancellationRequestInput
    agreementCancellationRequestId: string
    agreementId: string
end

local record GetAgreementCancellationRequestOutput
    agreementCancellationRequestId: string
    agreementId: string
    reasonCode: string
    description: string
    status: string
    statusMessage: string
    createdAt: number
    updatedAt: number
end

local record GetAgreementEntitlementsInput
    agreementId: string
    maxResults: number
    nextToken: string
end

local record GetAgreementEntitlementsOutput
    agreementEntitlements: {AgreementEntitlement}
    nextToken: string
end

local record GetAgreementPaymentRequestInput
    paymentRequestId: string
    agreementId: string
end

local record GetAgreementPaymentRequestOutput
    paymentRequestId: string
    agreementId: string
    status: string
    statusMessage: string
    name: string
    description: string
    chargeId: string
    chargeAmount: string
    currencyCode: string
    createdAt: number
    updatedAt: number
end

local record GetAgreementTermsInput
    agreementId: string
    maxResults: number
    nextToken: string
end

local record GetAgreementTermsOutput
    acceptedTerms: {AcceptedTerm}
    nextToken: string
end

local record GetBillingAdjustmentRequestInput
    agreementId: string
    billingAdjustmentRequestId: string
end

local record GetBillingAdjustmentRequestOutput
    billingAdjustmentRequestId: string
    agreementId: string
    adjustmentReasonCode: string
    description: string
    originalInvoiceId: string
    adjustmentAmount: string
    currencyCode: string
    status: string
    statusMessage: string
    createdAt: number
    updatedAt: number
end

local record ListAgreementCancellationRequestsInput
    partyType: string
    agreementId: string
    status: string
    agreementType: string
    catalog: string
    maxResults: number
    nextToken: string
end

local record ListAgreementCancellationRequestsOutput
    nextToken: string
    items: {AgreementCancellationRequestSummary}
end

local record ListAgreementChargesInput
    catalog: string
    agreementId: string
    agreementType: string
    maxResults: number
    nextToken: string
end

local record ListAgreementChargesOutput
    items: {Charge}
    nextToken: string
end

local record ListAgreementInvoiceLineItemsInput
    agreementId: string
    groupBy: string
    invoiceId: string
    invoiceType: string
    invoiceBillingPeriod: InvoiceBillingPeriod
    beforeIssuedTime: number
    afterIssuedTime: number
    maxResults: number
    nextToken: string
end

local record ListAgreementInvoiceLineItemsOutput
    agreementInvoiceLineItemGroupSummaries: {AgreementInvoiceLineItemGroupSummary}
    nextToken: string
end

local record ListAgreementPaymentRequestsInput
    partyType: string
    agreementType: string
    catalog: string
    agreementId: string
    status: string
    maxResults: number
    nextToken: string
end

local record ListAgreementPaymentRequestsOutput
    nextToken: string
    items: {PaymentRequestSummary}
end

local record ListBillingAdjustmentRequestsInput
    agreementId: string
    status: string
    createdAfter: number
    createdBefore: number
    maxResults: number
    catalog: string
    agreementType: string
    nextToken: string
end

local record ListBillingAdjustmentRequestsOutput
    nextToken: string
    items: {BillingAdjustmentSummary}
end

local record RejectAgreementCancellationRequestInput
    agreementId: string
    agreementCancellationRequestId: string
    rejectionReason: string
end

local record RejectAgreementCancellationRequestOutput
    agreementId: string
    agreementCancellationRequestId: string
    status: string
    statusMessage: string
    reasonCode: string
    description: string
    createdAt: number
    updatedAt: number
end

local record RejectAgreementPaymentRequestInput
    paymentRequestId: string
    agreementId: string
    rejectionReason: string
end

local record RejectAgreementPaymentRequestOutput
    paymentRequestId: string
    agreementId: string
    status: string
    statusMessage: string
    name: string
    description: string
    chargeAmount: string
    currencyCode: string
    createdAt: number
    updatedAt: number
end

local record SearchAgreementsInput
    catalog: string
    filters: {Filter}
    sort: Sort
    maxResults: number
    nextToken: string
end

local record SearchAgreementsOutput
    agreementViewSummaries: {AgreementViewSummary}
    nextToken: string
end

local record SendAgreementCancellationRequestInput
    agreementId: string
    reasonCode: string
    clientToken: string
    description: string
end

local record SendAgreementCancellationRequestOutput
    agreementId: string
    agreementCancellationRequestId: string
    status: string
    reasonCode: string
    description: string
    createdAt: number
    updatedAt: number
end

local record SendAgreementPaymentRequestInput
    clientToken: string
    agreementId: string
    termId: string
    name: string
    chargeAmount: string
    description: string
end

local record SendAgreementPaymentRequestOutput
    paymentRequestId: string
    agreementId: string
    status: string
    name: string
    description: string
    chargeAmount: string
    currencyCode: string
    createdAt: number
end

local record UpdatePurchaseOrdersInput
    purchaseOrders: {PurchaseOrder}
end

local record UpdatePurchaseOrdersOutput
end

local record AccessDeniedException
    requestId: string
    message: string
    reason: string
end

local record ConflictException
    requestId: string
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    requestId: string
    message: string
end

local record ResourceNotFoundException
    requestId: string
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    requestId: string
    message: string
end

local record ValidationException
    requestId: string
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    requestId: string
    message: string
    reason: string
end

local record ConflictException
    requestId: string
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    requestId: string
    message: string
end

local record ResourceNotFoundException
    requestId: string
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    requestId: string
    message: string
end

local record ValidationException
    requestId: string
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    requestId: string
    message: string
    reason: string
end

local record ConflictException
    requestId: string
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    requestId: string
    message: string
end

local record ResourceNotFoundException
    requestId: string
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    requestId: string
    message: string
end

local record ValidationException
    requestId: string
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    requestId: string
    message: string
    reason: string
end

local record ConflictException
    requestId: string
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    requestId: string
    message: string
end

local record ThrottlingException
    requestId: string
    message: string
end

local record ValidationException
    requestId: string
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    requestId: string
    message: string
    reason: string
end

local record ConflictException
    requestId: string
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    requestId: string
    message: string
end

local record ResourceNotFoundException
    requestId: string
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    requestId: string
    message: string
end

local record ValidationException
    requestId: string
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    requestId: string
    message: string
    reason: string
end

local record ConflictException
    requestId: string
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    requestId: string
    message: string
end

local record ResourceNotFoundException
    requestId: string
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    requestId: string
    message: string
end

local record ValidationException
    requestId: string
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    requestId: string
    message: string
    reason: string
end

local record ConflictException
    requestId: string
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    requestId: string
    message: string
end

local record ResourceNotFoundException
    requestId: string
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    requestId: string
    message: string
end

local record ValidationException
    requestId: string
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    requestId: string
    message: string
    reason: string
end

local record ConflictException
    requestId: string
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    requestId: string
    message: string
end

local record ResourceNotFoundException
    requestId: string
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    requestId: string
    message: string
    quotaCode: string
    serviceCode: string
    resourceType: string
    resourceId: string
end

local record ThrottlingException
    requestId: string
    message: string
end

local record ValidationException
    requestId: string
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    requestId: string
    message: string
    reason: string
end

local record InternalServerException
    requestId: string
    message: string
end

local record ResourceNotFoundException
    requestId: string
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    requestId: string
    message: string
end

local record ValidationException
    requestId: string
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    requestId: string
    message: string
    reason: string
end

local record InternalServerException
    requestId: string
    message: string
end

local record ResourceNotFoundException
    requestId: string
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    requestId: string
    message: string
end

local record ValidationException
    requestId: string
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    requestId: string
    message: string
    reason: string
end

local record InternalServerException
    requestId: string
    message: string
end

local record ResourceNotFoundException
    requestId: string
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    requestId: string
    message: string
end

local record ValidationException
    requestId: string
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    requestId: string
    message: string
    reason: string
end

local record InternalServerException
    requestId: string
    message: string
end

local record ResourceNotFoundException
    requestId: string
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    requestId: string
    message: string
end

local record ValidationException
    requestId: string
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    requestId: string
    message: string
    reason: string
end

local record InternalServerException
    requestId: string
    message: string
end

local record ResourceNotFoundException
    requestId: string
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    requestId: string
    message: string
end

local record ValidationException
    requestId: string
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    requestId: string
    message: string
    reason: string
end

local record InternalServerException
    requestId: string
    message: string
end

local record ResourceNotFoundException
    requestId: string
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    requestId: string
    message: string
end

local record ValidationException
    requestId: string
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    requestId: string
    message: string
    reason: string
end

local record InternalServerException
    requestId: string
    message: string
end

local record ThrottlingException
    requestId: string
    message: string
end

local record ValidationException
    requestId: string
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    requestId: string
    message: string
    reason: string
end

local record InternalServerException
    requestId: string
    message: string
end

local record ThrottlingException
    requestId: string
    message: string
end

local record ValidationException
    requestId: string
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    requestId: string
    message: string
    reason: string
end

local record InternalServerException
    requestId: string
    message: string
end

local record ResourceNotFoundException
    requestId: string
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    requestId: string
    message: string
end

local record ValidationException
    requestId: string
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    requestId: string
    message: string
    reason: string
end

local record InternalServerException
    requestId: string
    message: string
end

local record ThrottlingException
    requestId: string
    message: string
end

local record ValidationException
    requestId: string
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    requestId: string
    message: string
    reason: string
end

local record InternalServerException
    requestId: string
    message: string
end

local record ThrottlingException
    requestId: string
    message: string
end

local record ValidationException
    requestId: string
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    requestId: string
    message: string
    reason: string
end

local record ConflictException
    requestId: string
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    requestId: string
    message: string
end

local record ResourceNotFoundException
    requestId: string
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    requestId: string
    message: string
end

local record ValidationException
    requestId: string
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    requestId: string
    message: string
    reason: string
end

local record ConflictException
    requestId: string
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    requestId: string
    message: string
end

local record ResourceNotFoundException
    requestId: string
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    requestId: string
    message: string
end

local record ValidationException
    requestId: string
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    requestId: string
    message: string
    reason: string
end

local record InternalServerException
    requestId: string
    message: string
end

local record ThrottlingException
    requestId: string
    message: string
end

local record ValidationException
    requestId: string
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    requestId: string
    message: string
    reason: string
end

local record ConflictException
    requestId: string
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    requestId: string
    message: string
end

local record ResourceNotFoundException
    requestId: string
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    requestId: string
    message: string
end

local record ValidationException
    requestId: string
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    requestId: string
    message: string
    reason: string
end

local record ConflictException
    requestId: string
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    requestId: string
    message: string
end

local record ResourceNotFoundException
    requestId: string
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    requestId: string
    message: string
end

local record ValidationException
    requestId: string
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    requestId: string
    message: string
    reason: string
end

local record ConflictException
    requestId: string
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    requestId: string
    message: string
end

local record ResourceNotFoundException
    requestId: string
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    requestId: string
    message: string
end

local record ValidationException
    requestId: string
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local type InvoiceType = "INVOICE" | "CREDIT_MEMO"

local type AgreementCancellationRequestReasonCode = "INCORRECT_TERMS_ACCEPTED" | "REPLACING_AGREEMENT" | "TEST_AGREEMENT" | "ALTERNATIVE_PROCUREMENT_CHANNEL" | "PRODUCT_DISCONTINUED" | "UNINTENDED_RENEWAL" | "BUYER_DISSATISFACTION" | "OTHER"

local type Intent = "NEW" | "AMEND" | "REPLACE"

local type PaymentRequestStatus = "VALIDATING" | "VALIDATION_FAILED" | "PENDING_APPROVAL" | "APPROVED" | "REJECTED" | "CANCELLED"

local type BillingAdjustmentReasonCode = "INCORRECT_TERMS_ACCEPTED" | "INCORRECT_METERING" | "TEST_ENVIRONMENT_CHARGES" | "ALTERNATIVE_PROCUREMENT_CHANNEL" | "UNINTENDED_RENEWAL" | "BUYER_DISSATISFACTION" | "OTHER"

local type LineItemGroupBy = "INVOICE_ID"

local type AgreementCancellationRequestStatus = "PENDING_APPROVAL" | "APPROVED" | "REJECTED" | "CANCELLED" | "VALIDATION_FAILED"

local type AgreementStatus = "ACTIVE" | "ARCHIVED" | "CANCELLED" | "EXPIRED" | "RENEWED" | "REPLACED" | "ROLLED_BACK" | "SUPERSEDED" | "TERMINATED"

local type BillingAdjustmentStatus = "PENDING" | "VALIDATION_FAILED" | "COMPLETED"

local record M
    AcceptAgreementCancellationRequestInput: AcceptAgreementCancellationRequestInput
    AcceptAgreementCancellationRequestOutput: AcceptAgreementCancellationRequestOutput
    AcceptAgreementPaymentRequestInput: AcceptAgreementPaymentRequestInput
    AcceptAgreementPaymentRequestOutput: AcceptAgreementPaymentRequestOutput
    AcceptAgreementRequestInput: AcceptAgreementRequestInput
    AcceptAgreementRequestOutput: AcceptAgreementRequestOutput
    BatchCreateBillingAdjustmentRequestInput: BatchCreateBillingAdjustmentRequestInput
    BatchCreateBillingAdjustmentRequestOutput: BatchCreateBillingAdjustmentRequestOutput
    CancelAgreementInput: CancelAgreementInput
    CancelAgreementOutput: CancelAgreementOutput
    CancelAgreementCancellationRequestInput: CancelAgreementCancellationRequestInput
    CancelAgreementCancellationRequestOutput: CancelAgreementCancellationRequestOutput
    CancelAgreementPaymentRequestInput: CancelAgreementPaymentRequestInput
    CancelAgreementPaymentRequestOutput: CancelAgreementPaymentRequestOutput
    CreateAgreementRequestInput: CreateAgreementRequestInput
    CreateAgreementRequestOutput: CreateAgreementRequestOutput
    DescribeAgreementInput: DescribeAgreementInput
    DescribeAgreementOutput: DescribeAgreementOutput
    GetAgreementCancellationRequestInput: GetAgreementCancellationRequestInput
    GetAgreementCancellationRequestOutput: GetAgreementCancellationRequestOutput
    GetAgreementEntitlementsInput: GetAgreementEntitlementsInput
    GetAgreementEntitlementsOutput: GetAgreementEntitlementsOutput
    GetAgreementPaymentRequestInput: GetAgreementPaymentRequestInput
    GetAgreementPaymentRequestOutput: GetAgreementPaymentRequestOutput
    GetAgreementTermsInput: GetAgreementTermsInput
    GetAgreementTermsOutput: GetAgreementTermsOutput
    GetBillingAdjustmentRequestInput: GetBillingAdjustmentRequestInput
    GetBillingAdjustmentRequestOutput: GetBillingAdjustmentRequestOutput
    ListAgreementCancellationRequestsInput: ListAgreementCancellationRequestsInput
    ListAgreementCancellationRequestsOutput: ListAgreementCancellationRequestsOutput
    ListAgreementChargesInput: ListAgreementChargesInput
    ListAgreementChargesOutput: ListAgreementChargesOutput
    ListAgreementInvoiceLineItemsInput: ListAgreementInvoiceLineItemsInput
    ListAgreementInvoiceLineItemsOutput: ListAgreementInvoiceLineItemsOutput
    ListAgreementPaymentRequestsInput: ListAgreementPaymentRequestsInput
    ListAgreementPaymentRequestsOutput: ListAgreementPaymentRequestsOutput
    ListBillingAdjustmentRequestsInput: ListBillingAdjustmentRequestsInput
    ListBillingAdjustmentRequestsOutput: ListBillingAdjustmentRequestsOutput
    RejectAgreementCancellationRequestInput: RejectAgreementCancellationRequestInput
    RejectAgreementCancellationRequestOutput: RejectAgreementCancellationRequestOutput
    RejectAgreementPaymentRequestInput: RejectAgreementPaymentRequestInput
    RejectAgreementPaymentRequestOutput: RejectAgreementPaymentRequestOutput
    SearchAgreementsInput: SearchAgreementsInput
    SearchAgreementsOutput: SearchAgreementsOutput
    SendAgreementCancellationRequestInput: SendAgreementCancellationRequestInput
    SendAgreementCancellationRequestOutput: SendAgreementCancellationRequestOutput
    SendAgreementPaymentRequestInput: SendAgreementPaymentRequestInput
    SendAgreementPaymentRequestOutput: SendAgreementPaymentRequestOutput
    UpdatePurchaseOrdersInput: UpdatePurchaseOrdersInput
    UpdatePurchaseOrdersOutput: UpdatePurchaseOrdersOutput
end

return M
