local types = require("marketplaceagreement.types")

local record Client
    acceptAgreementCancellationRequest: function(Client, types.AcceptAgreementCancellationRequestInput): types.AcceptAgreementCancellationRequestOutput, table
    acceptAgreementPaymentRequest: function(Client, types.AcceptAgreementPaymentRequestInput): types.AcceptAgreementPaymentRequestOutput, table
    acceptAgreementRequest: function(Client, types.AcceptAgreementRequestInput): types.AcceptAgreementRequestOutput, table
    batchCreateBillingAdjustmentRequest: function(Client, types.BatchCreateBillingAdjustmentRequestInput): types.BatchCreateBillingAdjustmentRequestOutput, table
    cancelAgreement: function(Client, types.CancelAgreementInput): types.CancelAgreementOutput, table
    cancelAgreementCancellationRequest: function(Client, types.CancelAgreementCancellationRequestInput): types.CancelAgreementCancellationRequestOutput, table
    cancelAgreementPaymentRequest: function(Client, types.CancelAgreementPaymentRequestInput): types.CancelAgreementPaymentRequestOutput, table
    createAgreementRequest: function(Client, types.CreateAgreementRequestInput): types.CreateAgreementRequestOutput, table
    describeAgreement: function(Client, types.DescribeAgreementInput): types.DescribeAgreementOutput, table
    getAgreementCancellationRequest: function(Client, types.GetAgreementCancellationRequestInput): types.GetAgreementCancellationRequestOutput, table
    getAgreementEntitlements: function(Client, types.GetAgreementEntitlementsInput): types.GetAgreementEntitlementsOutput, table
    getAgreementPaymentRequest: function(Client, types.GetAgreementPaymentRequestInput): types.GetAgreementPaymentRequestOutput, table
    getAgreementTerms: function(Client, types.GetAgreementTermsInput): types.GetAgreementTermsOutput, table
    getBillingAdjustmentRequest: function(Client, types.GetBillingAdjustmentRequestInput): types.GetBillingAdjustmentRequestOutput, table
    listAgreementCancellationRequests: function(Client, types.ListAgreementCancellationRequestsInput): types.ListAgreementCancellationRequestsOutput, table
    listAgreementCharges: function(Client, types.ListAgreementChargesInput): types.ListAgreementChargesOutput, table
    listAgreementInvoiceLineItems: function(Client, types.ListAgreementInvoiceLineItemsInput): types.ListAgreementInvoiceLineItemsOutput, table
    listAgreementPaymentRequests: function(Client, types.ListAgreementPaymentRequestsInput): types.ListAgreementPaymentRequestsOutput, table
    listBillingAdjustmentRequests: function(Client, types.ListBillingAdjustmentRequestsInput): types.ListBillingAdjustmentRequestsOutput, table
    rejectAgreementCancellationRequest: function(Client, types.RejectAgreementCancellationRequestInput): types.RejectAgreementCancellationRequestOutput, table
    rejectAgreementPaymentRequest: function(Client, types.RejectAgreementPaymentRequestInput): types.RejectAgreementPaymentRequestOutput, table
    searchAgreements: function(Client, types.SearchAgreementsInput): types.SearchAgreementsOutput, table
    sendAgreementCancellationRequest: function(Client, types.SendAgreementCancellationRequestInput): types.SendAgreementCancellationRequestOutput, table
    sendAgreementPaymentRequest: function(Client, types.SendAgreementPaymentRequestInput): types.SendAgreementPaymentRequestOutput, table
    updatePurchaseOrders: function(Client, types.UpdatePurchaseOrdersInput): types.UpdatePurchaseOrdersOutput, table
end

local record M
    new: function(table): Client
end

return M
