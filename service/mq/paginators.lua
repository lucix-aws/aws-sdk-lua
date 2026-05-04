local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listBrokers.
function M.pages_list_brokers(client, input)
    return paginator.pages(client, "listBrokers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "BrokerSummaries",
    })
end

--- Returns an item iterator for listBrokers.
function M.items_list_brokers(client, input)
    return paginator.items(client, "listBrokers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "BrokerSummaries",
    })
end

return M
