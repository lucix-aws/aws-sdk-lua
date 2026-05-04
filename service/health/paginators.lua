local paginator = require("paginator")

local M = {}

--- Returns a page iterator for describeAffectedAccountsForOrganization.
function M.pages_describe_affected_accounts_for_organization(client, input)
    return paginator.pages(client, "describeAffectedAccountsForOrganization", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "affectedAccounts",
    })
end

--- Returns an item iterator for describeAffectedAccountsForOrganization.
function M.items_describe_affected_accounts_for_organization(client, input)
    return paginator.items(client, "describeAffectedAccountsForOrganization", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "affectedAccounts",
    })
end

--- Returns a page iterator for describeAffectedEntities.
function M.pages_describe_affected_entities(client, input)
    return paginator.pages(client, "describeAffectedEntities", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "entities",
    })
end

--- Returns an item iterator for describeAffectedEntities.
function M.items_describe_affected_entities(client, input)
    return paginator.items(client, "describeAffectedEntities", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "entities",
    })
end

--- Returns a page iterator for describeAffectedEntitiesForOrganization.
function M.pages_describe_affected_entities_for_organization(client, input)
    return paginator.pages(client, "describeAffectedEntitiesForOrganization", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "entities",
    })
end

--- Returns an item iterator for describeAffectedEntitiesForOrganization.
function M.items_describe_affected_entities_for_organization(client, input)
    return paginator.items(client, "describeAffectedEntitiesForOrganization", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "entities",
    })
end

--- Returns a page iterator for describeEventAggregates.
function M.pages_describe_event_aggregates(client, input)
    return paginator.pages(client, "describeEventAggregates", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "eventAggregates",
    })
end

--- Returns an item iterator for describeEventAggregates.
function M.items_describe_event_aggregates(client, input)
    return paginator.items(client, "describeEventAggregates", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "eventAggregates",
    })
end

--- Returns a page iterator for describeEventTypes.
function M.pages_describe_event_types(client, input)
    return paginator.pages(client, "describeEventTypes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "eventTypes",
    })
end

--- Returns an item iterator for describeEventTypes.
function M.items_describe_event_types(client, input)
    return paginator.items(client, "describeEventTypes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "eventTypes",
    })
end

--- Returns a page iterator for describeEvents.
function M.pages_describe_events(client, input)
    return paginator.pages(client, "describeEvents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "events",
    })
end

--- Returns an item iterator for describeEvents.
function M.items_describe_events(client, input)
    return paginator.items(client, "describeEvents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "events",
    })
end

--- Returns a page iterator for describeEventsForOrganization.
function M.pages_describe_events_for_organization(client, input)
    return paginator.pages(client, "describeEventsForOrganization", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "events",
    })
end

--- Returns an item iterator for describeEventsForOrganization.
function M.items_describe_events_for_organization(client, input)
    return paginator.items(client, "describeEventsForOrganization", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "events",
    })
end

return M
