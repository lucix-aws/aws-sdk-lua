local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listBillingViews.
function M.pages_list_billing_views(client, input)
    return paginator.pages(client, "listBillingViews", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "billingViews",
    })
end

--- Returns an item iterator for listBillingViews.
function M.items_list_billing_views(client, input)
    return paginator.items(client, "listBillingViews", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "billingViews",
    })
end

--- Returns a page iterator for listSourceViewsForBillingView.
function M.pages_list_source_views_for_billing_view(client, input)
    return paginator.pages(client, "listSourceViewsForBillingView", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "sourceViews",
    })
end

--- Returns an item iterator for listSourceViewsForBillingView.
function M.items_list_source_views_for_billing_view(client, input)
    return paginator.items(client, "listSourceViewsForBillingView", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "sourceViews",
    })
end

return M
