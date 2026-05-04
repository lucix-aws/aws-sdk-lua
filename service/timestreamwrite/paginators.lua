local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listBatchLoadTasks.
function M.pages_list_batch_load_tasks(client, input)
    return paginator.pages(client, "listBatchLoadTasks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listDatabases.
function M.pages_list_databases(client, input)
    return paginator.pages(client, "listDatabases", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listTables.
function M.pages_list_tables(client, input)
    return paginator.pages(client, "listTables", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
