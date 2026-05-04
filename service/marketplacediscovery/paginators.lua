local paginator = require("paginator")

local M = {}

--- Returns a page iterator for getOfferTerms.
function M.pages_get_offer_terms(client, input)
    return paginator.pages(client, "getOfferTerms", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "offerTerms",
    })
end

--- Returns an item iterator for getOfferTerms.
function M.items_get_offer_terms(client, input)
    return paginator.items(client, "getOfferTerms", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "offerTerms",
    })
end

--- Returns a page iterator for listFulfillmentOptions.
function M.pages_list_fulfillment_options(client, input)
    return paginator.pages(client, "listFulfillmentOptions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "fulfillmentOptions",
    })
end

--- Returns an item iterator for listFulfillmentOptions.
function M.items_list_fulfillment_options(client, input)
    return paginator.items(client, "listFulfillmentOptions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "fulfillmentOptions",
    })
end

--- Returns a page iterator for listPurchaseOptions.
function M.pages_list_purchase_options(client, input)
    return paginator.pages(client, "listPurchaseOptions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "purchaseOptions",
    })
end

--- Returns an item iterator for listPurchaseOptions.
function M.items_list_purchase_options(client, input)
    return paginator.items(client, "listPurchaseOptions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "purchaseOptions",
    })
end

--- Returns a page iterator for searchFacets.
function M.pages_search_facets(client, input)
    return paginator.pages(client, "searchFacets", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "listingFacets",
    })
end

--- Returns an item iterator for searchFacets.
function M.items_search_facets(client, input)
    return paginator.items(client, "searchFacets", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "listingFacets",
    })
end

--- Returns a page iterator for searchListings.
function M.pages_search_listings(client, input)
    return paginator.pages(client, "searchListings", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "listingSummaries",
    })
end

--- Returns an item iterator for searchListings.
function M.items_search_listings(client, input)
    return paginator.items(client, "searchListings", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "listingSummaries",
    })
end

return M
