local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listIndexes.
function M.pages_list_indexes(client, input)
    return paginator.pages(client, "listIndexes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "indexes",
    })
end

--- Returns an item iterator for listIndexes.
function M.items_list_indexes(client, input)
    return paginator.items(client, "listIndexes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "indexes",
    })
end

--- Returns a page iterator for listVectorBuckets.
function M.pages_list_vector_buckets(client, input)
    return paginator.pages(client, "listVectorBuckets", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "vectorBuckets",
    })
end

--- Returns an item iterator for listVectorBuckets.
function M.items_list_vector_buckets(client, input)
    return paginator.items(client, "listVectorBuckets", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "vectorBuckets",
    })
end

--- Returns a page iterator for listVectors.
function M.pages_list_vectors(client, input)
    return paginator.pages(client, "listVectors", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "vectors",
    })
end

--- Returns an item iterator for listVectors.
function M.items_list_vectors(client, input)
    return paginator.items(client, "listVectors", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "vectors",
    })
end

return M
