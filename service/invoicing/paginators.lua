local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listInvoiceSummaries.
function M.pages_list_invoice_summaries(client, input)
    return paginator.pages(client, "listInvoiceSummaries", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "InvoiceSummaries",
    })
end

--- Returns an item iterator for listInvoiceSummaries.
function M.items_list_invoice_summaries(client, input)
    return paginator.items(client, "listInvoiceSummaries", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "InvoiceSummaries",
    })
end

--- Returns a page iterator for listInvoiceUnits.
function M.pages_list_invoice_units(client, input)
    return paginator.pages(client, "listInvoiceUnits", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "InvoiceUnits",
    })
end

--- Returns an item iterator for listInvoiceUnits.
function M.items_list_invoice_units(client, input)
    return paginator.items(client, "listInvoiceUnits", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "InvoiceUnits",
    })
end

--- Returns a page iterator for listProcurementPortalPreferences.
function M.pages_list_procurement_portal_preferences(client, input)
    return paginator.pages(client, "listProcurementPortalPreferences", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ProcurementPortalPreferences",
    })
end

--- Returns an item iterator for listProcurementPortalPreferences.
function M.items_list_procurement_portal_preferences(client, input)
    return paginator.items(client, "listProcurementPortalPreferences", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ProcurementPortalPreferences",
    })
end

return M
