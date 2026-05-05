local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listAsyncInvokes.
function M.pages_list_async_invokes(client, input)
    return paginator.pages(client, "listAsyncInvokes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "asyncInvokeSummaries",
    })
end

--- Returns an item iterator for listAsyncInvokes.
function M.items_list_async_invokes(client, input)
    return paginator.items(client, "listAsyncInvokes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "asyncInvokeSummaries",
    })
end

return M
