local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for getFreeTierUsage.
function M.pages_get_free_tier_usage(client, input)
    return paginator.pages(client, "getFreeTierUsage", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "freeTierUsages",
    })
end

--- Returns an item iterator for getFreeTierUsage.
function M.items_get_free_tier_usage(client, input)
    return paginator.items(client, "getFreeTierUsage", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "freeTierUsages",
    })
end

--- Returns a page iterator for listAccountActivities.
function M.pages_list_account_activities(client, input)
    return paginator.pages(client, "listAccountActivities", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "activities",
    })
end

--- Returns an item iterator for listAccountActivities.
function M.items_list_account_activities(client, input)
    return paginator.items(client, "listAccountActivities", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "activities",
    })
end

return M
