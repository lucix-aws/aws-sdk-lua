local types = require("marketplaceagreement.types")

local record Client
    batchCreateBillingAdjustmentRequest: function(Client, types.BatchCreateBillingAdjustmentRequestInput): types.BatchCreateBillingAdjustmentRequestOutput, table
    cancelAgreementCancellationRequest: function(Client, types.CancelAgreementCancellationRequestInput): types.CancelAgreementCancellationRequestOutput, table
    cancelAgreementPaymentRequest: function(Client, types.CancelAgreementPaymentRequestInput): types.CancelAgreementPaymentRequestOutput, table
    describeAgreement: function(Client, types.DescribeAgreementInput): types.DescribeAgreementOutput, table
    getAgreementCancellationRequest: function(Client, types.GetAgreementCancellationRequestInput): types.GetAgreementCancellationRequestOutput, table
    getAgreementPaymentRequest: function(Client, types.GetAgreementPaymentRequestInput): types.GetAgreementPaymentRequestOutput, table
    getAgreementTerms: function(Client, types.GetAgreementTermsInput): types.GetAgreementTermsOutput, table
    getBillingAdjustmentRequest: function(Client, types.GetBillingAdjustmentRequestInput): types.GetBillingAdjustmentRequestOutput, table
    listAgreementCancellationRequests: function(Client, types.ListAgreementCancellationRequestsInput): types.ListAgreementCancellationRequestsOutput, table
    listAgreementInvoiceLineItems: function(Client, types.ListAgreementInvoiceLineItemsInput): types.ListAgreementInvoiceLineItemsOutput, table
    listAgreementPaymentRequests: function(Client, types.ListAgreementPaymentRequestsInput): types.ListAgreementPaymentRequestsOutput, table
    listBillingAdjustmentRequests: function(Client, types.ListBillingAdjustmentRequestsInput): types.ListBillingAdjustmentRequestsOutput, table
    searchAgreements: function(Client, types.SearchAgreementsInput): types.SearchAgreementsOutput, table
    sendAgreementCancellationRequest: function(Client, types.SendAgreementCancellationRequestInput): types.SendAgreementCancellationRequestOutput, table
    sendAgreementPaymentRequest: function(Client, types.SendAgreementPaymentRequestInput): types.SendAgreementPaymentRequestOutput, table
end

local record M
    new: function(table): Client
end

return M
