local record M
    pages_get_agreement_terms: function(client: table, input: table): function(): table, table
    pages_list_agreement_cancellation_requests: function(client: table, input: table): function(): table, table
    items_list_agreement_cancellation_requests: function(client: table, input: table): function(): any
    pages_list_agreement_invoice_line_items: function(client: table, input: table): function(): table, table
    items_list_agreement_invoice_line_items: function(client: table, input: table): function(): any
    pages_list_agreement_payment_requests: function(client: table, input: table): function(): table, table
    items_list_agreement_payment_requests: function(client: table, input: table): function(): any
    pages_list_billing_adjustment_requests: function(client: table, input: table): function(): table, table
    items_list_billing_adjustment_requests: function(client: table, input: table): function(): any
    pages_search_agreements: function(client: table, input: table): function(): table, table
end

return M
