local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listLinuxSubscriptionInstances.
function M.pages_list_linux_subscription_instances(client, input)
    return paginator.pages(client, "listLinuxSubscriptionInstances", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Instances",
    })
end

--- Returns an item iterator for listLinuxSubscriptionInstances.
function M.items_list_linux_subscription_instances(client, input)
    return paginator.items(client, "listLinuxSubscriptionInstances", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Instances",
    })
end

--- Returns a page iterator for listLinuxSubscriptions.
function M.pages_list_linux_subscriptions(client, input)
    return paginator.pages(client, "listLinuxSubscriptions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Subscriptions",
    })
end

--- Returns an item iterator for listLinuxSubscriptions.
function M.items_list_linux_subscriptions(client, input)
    return paginator.items(client, "listLinuxSubscriptions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Subscriptions",
    })
end

--- Returns a page iterator for listRegisteredSubscriptionProviders.
function M.pages_list_registered_subscription_providers(client, input)
    return paginator.pages(client, "listRegisteredSubscriptionProviders", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RegisteredSubscriptionProviders",
    })
end

--- Returns an item iterator for listRegisteredSubscriptionProviders.
function M.items_list_registered_subscription_providers(client, input)
    return paginator.items(client, "listRegisteredSubscriptionProviders", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RegisteredSubscriptionProviders",
    })
end

return M
