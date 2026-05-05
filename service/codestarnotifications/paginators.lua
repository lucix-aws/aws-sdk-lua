local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listEventTypes.
function M.pages_list_event_types(client, input)
    return paginator.pages(client, "listEventTypes", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "EventTypes",
    })
end

--- Returns an item iterator for listEventTypes.
function M.items_list_event_types(client, input)
    return paginator.items(client, "listEventTypes", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "EventTypes",
    })
end

--- Returns a page iterator for listNotificationRules.
function M.pages_list_notification_rules(client, input)
    return paginator.pages(client, "listNotificationRules", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "NotificationRules",
    })
end

--- Returns an item iterator for listNotificationRules.
function M.items_list_notification_rules(client, input)
    return paginator.items(client, "listNotificationRules", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "NotificationRules",
    })
end

--- Returns a page iterator for listTargets.
function M.pages_list_targets(client, input)
    return paginator.pages(client, "listTargets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Targets",
    })
end

--- Returns an item iterator for listTargets.
function M.items_list_targets(client, input)
    return paginator.items(client, "listTargets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Targets",
    })
end

return M
