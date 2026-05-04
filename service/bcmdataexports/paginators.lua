local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listExecutions.
function M.pages_list_executions(client, input)
    return paginator.pages(client, "listExecutions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Executions",
    })
end

--- Returns an item iterator for listExecutions.
function M.items_list_executions(client, input)
    return paginator.items(client, "listExecutions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Executions",
    })
end

--- Returns a page iterator for listExports.
function M.pages_list_exports(client, input)
    return paginator.pages(client, "listExports", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Exports",
    })
end

--- Returns an item iterator for listExports.
function M.items_list_exports(client, input)
    return paginator.items(client, "listExports", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Exports",
    })
end

--- Returns a page iterator for listTables.
function M.pages_list_tables(client, input)
    return paginator.pages(client, "listTables", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Tables",
    })
end

--- Returns an item iterator for listTables.
function M.items_list_tables(client, input)
    return paginator.items(client, "listTables", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Tables",
    })
end

return M
