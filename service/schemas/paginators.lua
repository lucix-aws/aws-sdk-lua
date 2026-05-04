local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listDiscoverers.
function M.pages_list_discoverers(client, input)
    return paginator.pages(client, "listDiscoverers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Discoverers",
    })
end

--- Returns an item iterator for listDiscoverers.
function M.items_list_discoverers(client, input)
    return paginator.items(client, "listDiscoverers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Discoverers",
    })
end

--- Returns a page iterator for listRegistries.
function M.pages_list_registries(client, input)
    return paginator.pages(client, "listRegistries", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Registries",
    })
end

--- Returns an item iterator for listRegistries.
function M.items_list_registries(client, input)
    return paginator.items(client, "listRegistries", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Registries",
    })
end

--- Returns a page iterator for listSchemaVersions.
function M.pages_list_schema_versions(client, input)
    return paginator.pages(client, "listSchemaVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SchemaVersions",
    })
end

--- Returns an item iterator for listSchemaVersions.
function M.items_list_schema_versions(client, input)
    return paginator.items(client, "listSchemaVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SchemaVersions",
    })
end

--- Returns a page iterator for listSchemas.
function M.pages_list_schemas(client, input)
    return paginator.pages(client, "listSchemas", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Schemas",
    })
end

--- Returns an item iterator for listSchemas.
function M.items_list_schemas(client, input)
    return paginator.items(client, "listSchemas", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Schemas",
    })
end

--- Returns a page iterator for searchSchemas.
function M.pages_search_schemas(client, input)
    return paginator.pages(client, "searchSchemas", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Schemas",
    })
end

--- Returns an item iterator for searchSchemas.
function M.items_search_schemas(client, input)
    return paginator.items(client, "searchSchemas", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Schemas",
    })
end

return M
