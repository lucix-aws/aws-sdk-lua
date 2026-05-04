local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listEndpointsByPlatformApplication.
function M.pages_list_endpoints_by_platform_application(client, input)
    return paginator.pages(client, "listEndpointsByPlatformApplication", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Endpoints",
    })
end

--- Returns an item iterator for listEndpointsByPlatformApplication.
function M.items_list_endpoints_by_platform_application(client, input)
    return paginator.items(client, "listEndpointsByPlatformApplication", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Endpoints",
    })
end

--- Returns a page iterator for listOriginationNumbers.
function M.pages_list_origination_numbers(client, input)
    return paginator.pages(client, "listOriginationNumbers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PhoneNumbers",
    })
end

--- Returns an item iterator for listOriginationNumbers.
function M.items_list_origination_numbers(client, input)
    return paginator.items(client, "listOriginationNumbers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PhoneNumbers",
    })
end

--- Returns a page iterator for listPhoneNumbersOptedOut.
function M.pages_list_phone_numbers_opted_out(client, input)
    return paginator.pages(client, "listPhoneNumbersOptedOut", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "phoneNumbers",
    })
end

--- Returns an item iterator for listPhoneNumbersOptedOut.
function M.items_list_phone_numbers_opted_out(client, input)
    return paginator.items(client, "listPhoneNumbersOptedOut", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "phoneNumbers",
    })
end

--- Returns a page iterator for listPlatformApplications.
function M.pages_list_platform_applications(client, input)
    return paginator.pages(client, "listPlatformApplications", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PlatformApplications",
    })
end

--- Returns an item iterator for listPlatformApplications.
function M.items_list_platform_applications(client, input)
    return paginator.items(client, "listPlatformApplications", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PlatformApplications",
    })
end

--- Returns a page iterator for listSMSSandboxPhoneNumbers.
function M.pages_list_s_m_s_sandbox_phone_numbers(client, input)
    return paginator.pages(client, "listSMSSandboxPhoneNumbers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PhoneNumbers",
    })
end

--- Returns an item iterator for listSMSSandboxPhoneNumbers.
function M.items_list_s_m_s_sandbox_phone_numbers(client, input)
    return paginator.items(client, "listSMSSandboxPhoneNumbers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PhoneNumbers",
    })
end

--- Returns a page iterator for listSubscriptions.
function M.pages_list_subscriptions(client, input)
    return paginator.pages(client, "listSubscriptions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Subscriptions",
    })
end

--- Returns an item iterator for listSubscriptions.
function M.items_list_subscriptions(client, input)
    return paginator.items(client, "listSubscriptions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Subscriptions",
    })
end

--- Returns a page iterator for listSubscriptionsByTopic.
function M.pages_list_subscriptions_by_topic(client, input)
    return paginator.pages(client, "listSubscriptionsByTopic", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Subscriptions",
    })
end

--- Returns an item iterator for listSubscriptionsByTopic.
function M.items_list_subscriptions_by_topic(client, input)
    return paginator.items(client, "listSubscriptionsByTopic", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Subscriptions",
    })
end

--- Returns a page iterator for listTopics.
function M.pages_list_topics(client, input)
    return paginator.pages(client, "listTopics", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Topics",
    })
end

--- Returns an item iterator for listTopics.
function M.items_list_topics(client, input)
    return paginator.items(client, "listTopics", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Topics",
    })
end

return M
