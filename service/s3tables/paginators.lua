local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listNamespaces.
function M.pages_list_namespaces(client, input)
    return paginator.pages(client, "listNamespaces", input, {
        input_token = "continuationToken",
        output_token = "continuationToken",
        items = "namespaces",
    })
end

--- Returns an item iterator for listNamespaces.
function M.items_list_namespaces(client, input)
    return paginator.items(client, "listNamespaces", input, {
        input_token = "continuationToken",
        output_token = "continuationToken",
        items = "namespaces",
    })
end

--- Returns a page iterator for listTableBuckets.
function M.pages_list_table_buckets(client, input)
    return paginator.pages(client, "listTableBuckets", input, {
        input_token = "continuationToken",
        output_token = "continuationToken",
        items = "tableBuckets",
    })
end

--- Returns an item iterator for listTableBuckets.
function M.items_list_table_buckets(client, input)
    return paginator.items(client, "listTableBuckets", input, {
        input_token = "continuationToken",
        output_token = "continuationToken",
        items = "tableBuckets",
    })
end

--- Returns a page iterator for listTables.
function M.pages_list_tables(client, input)
    return paginator.pages(client, "listTables", input, {
        input_token = "continuationToken",
        output_token = "continuationToken",
        items = "tables",
    })
end

--- Returns an item iterator for listTables.
function M.items_list_tables(client, input)
    return paginator.items(client, "listTables", input, {
        input_token = "continuationToken",
        output_token = "continuationToken",
        items = "tables",
    })
end

return M
