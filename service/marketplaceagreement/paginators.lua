local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for getAgreementTerms.
function M.pages_get_agreement_terms(client, input)
    return paginator.pages(client, "getAgreementTerms", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listAgreementCancellationRequests.
function M.pages_list_agreement_cancellation_requests(client, input)
    return paginator.pages(client, "listAgreementCancellationRequests", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listAgreementCancellationRequests.
function M.items_list_agreement_cancellation_requests(client, input)
    return paginator.items(client, "listAgreementCancellationRequests", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listAgreementInvoiceLineItems.
function M.pages_list_agreement_invoice_line_items(client, input)
    return paginator.pages(client, "listAgreementInvoiceLineItems", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "agreementInvoiceLineItemGroupSummaries",
    })
end

--- Returns an item iterator for listAgreementInvoiceLineItems.
function M.items_list_agreement_invoice_line_items(client, input)
    return paginator.items(client, "listAgreementInvoiceLineItems", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "agreementInvoiceLineItemGroupSummaries",
    })
end

--- Returns a page iterator for listAgreementPaymentRequests.
function M.pages_list_agreement_payment_requests(client, input)
    return paginator.pages(client, "listAgreementPaymentRequests", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listAgreementPaymentRequests.
function M.items_list_agreement_payment_requests(client, input)
    return paginator.items(client, "listAgreementPaymentRequests", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listBillingAdjustmentRequests.
function M.pages_list_billing_adjustment_requests(client, input)
    return paginator.pages(client, "listBillingAdjustmentRequests", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listBillingAdjustmentRequests.
function M.items_list_billing_adjustment_requests(client, input)
    return paginator.items(client, "listBillingAdjustmentRequests", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for searchAgreements.
function M.pages_search_agreements(client, input)
    return paginator.pages(client, "searchAgreements", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

return M
