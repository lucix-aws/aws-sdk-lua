local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listDeadLetterSourceQueues.
function M.pages_list_dead_letter_source_queues(client, input)
    return paginator.pages(client, "listDeadLetterSourceQueues", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "queueUrls",
    })
end

--- Returns an item iterator for listDeadLetterSourceQueues.
function M.items_list_dead_letter_source_queues(client, input)
    return paginator.items(client, "listDeadLetterSourceQueues", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "queueUrls",
    })
end

--- Returns a page iterator for listQueues.
function M.pages_list_queues(client, input)
    return paginator.pages(client, "listQueues", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "QueueUrls",
    })
end

--- Returns an item iterator for listQueues.
function M.items_list_queues(client, input)
    return paginator.items(client, "listQueues", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "QueueUrls",
    })
end

return M
