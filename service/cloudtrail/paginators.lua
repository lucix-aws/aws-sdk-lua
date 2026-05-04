local paginator = require("paginator")

local M = {}

--- Returns a page iterator for getQueryResults.
function M.pages_get_query_results(client, input)
    return paginator.pages(client, "getQueryResults", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listChannels.
function M.pages_list_channels(client, input)
    return paginator.pages(client, "listChannels", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listEventDataStores.
function M.pages_list_event_data_stores(client, input)
    return paginator.pages(client, "listEventDataStores", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listImportFailures.
function M.pages_list_import_failures(client, input)
    return paginator.pages(client, "listImportFailures", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Failures",
    })
end

--- Returns an item iterator for listImportFailures.
function M.items_list_import_failures(client, input)
    return paginator.items(client, "listImportFailures", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Failures",
    })
end

--- Returns a page iterator for listImports.
function M.pages_list_imports(client, input)
    return paginator.pages(client, "listImports", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Imports",
    })
end

--- Returns an item iterator for listImports.
function M.items_list_imports(client, input)
    return paginator.items(client, "listImports", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Imports",
    })
end

--- Returns a page iterator for listInsightsData.
function M.pages_list_insights_data(client, input)
    return paginator.pages(client, "listInsightsData", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Events",
    })
end

--- Returns an item iterator for listInsightsData.
function M.items_list_insights_data(client, input)
    return paginator.items(client, "listInsightsData", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Events",
    })
end

--- Returns a page iterator for listInsightsMetricData.
function M.pages_list_insights_metric_data(client, input)
    return paginator.pages(client, "listInsightsMetricData", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listPublicKeys.
function M.pages_list_public_keys(client, input)
    return paginator.pages(client, "listPublicKeys", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PublicKeyList",
    })
end

--- Returns an item iterator for listPublicKeys.
function M.items_list_public_keys(client, input)
    return paginator.items(client, "listPublicKeys", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PublicKeyList",
    })
end

--- Returns a page iterator for listQueries.
function M.pages_list_queries(client, input)
    return paginator.pages(client, "listQueries", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listTags.
function M.pages_list_tags(client, input)
    return paginator.pages(client, "listTags", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ResourceTagList",
    })
end

--- Returns an item iterator for listTags.
function M.items_list_tags(client, input)
    return paginator.items(client, "listTags", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ResourceTagList",
    })
end

--- Returns a page iterator for listTrails.
function M.pages_list_trails(client, input)
    return paginator.pages(client, "listTrails", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Trails",
    })
end

--- Returns an item iterator for listTrails.
function M.items_list_trails(client, input)
    return paginator.items(client, "listTrails", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Trails",
    })
end

--- Returns a page iterator for lookupEvents.
function M.pages_lookup_events(client, input)
    return paginator.pages(client, "lookupEvents", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Events",
    })
end

--- Returns an item iterator for lookupEvents.
function M.items_lookup_events(client, input)
    return paginator.items(client, "lookupEvents", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Events",
    })
end

return M
