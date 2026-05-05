local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listAppAuthorizations.
function M.pages_list_app_authorizations(client, input)
    return paginator.pages(client, "listAppAuthorizations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "appAuthorizationSummaryList",
    })
end

--- Returns an item iterator for listAppAuthorizations.
function M.items_list_app_authorizations(client, input)
    return paginator.items(client, "listAppAuthorizations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "appAuthorizationSummaryList",
    })
end

--- Returns a page iterator for listAppBundles.
function M.pages_list_app_bundles(client, input)
    return paginator.pages(client, "listAppBundles", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "appBundleSummaryList",
    })
end

--- Returns an item iterator for listAppBundles.
function M.items_list_app_bundles(client, input)
    return paginator.items(client, "listAppBundles", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "appBundleSummaryList",
    })
end

--- Returns a page iterator for listIngestionDestinations.
function M.pages_list_ingestion_destinations(client, input)
    return paginator.pages(client, "listIngestionDestinations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "ingestionDestinations",
    })
end

--- Returns an item iterator for listIngestionDestinations.
function M.items_list_ingestion_destinations(client, input)
    return paginator.items(client, "listIngestionDestinations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "ingestionDestinations",
    })
end

--- Returns a page iterator for listIngestions.
function M.pages_list_ingestions(client, input)
    return paginator.pages(client, "listIngestions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "ingestions",
    })
end

--- Returns an item iterator for listIngestions.
function M.items_list_ingestions(client, input)
    return paginator.items(client, "listIngestions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "ingestions",
    })
end

return M
