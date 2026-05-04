local paginator = require("paginator")

local M = {}

--- Returns a page iterator for getResourcePolicies.
function M.pages_get_resource_policies(client, input)
    return paginator.pages(client, "getResourcePolicies", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "resourcePolicies",
    })
end

--- Returns an item iterator for getResourcePolicies.
function M.items_get_resource_policies(client, input)
    return paginator.items(client, "getResourcePolicies", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "resourcePolicies",
    })
end

--- Returns a page iterator for listIncidentFindings.
function M.pages_list_incident_findings(client, input)
    return paginator.pages(client, "listIncidentFindings", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "findings",
    })
end

--- Returns an item iterator for listIncidentFindings.
function M.items_list_incident_findings(client, input)
    return paginator.items(client, "listIncidentFindings", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "findings",
    })
end

--- Returns a page iterator for listIncidentRecords.
function M.pages_list_incident_records(client, input)
    return paginator.pages(client, "listIncidentRecords", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "incidentRecordSummaries",
    })
end

--- Returns an item iterator for listIncidentRecords.
function M.items_list_incident_records(client, input)
    return paginator.items(client, "listIncidentRecords", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "incidentRecordSummaries",
    })
end

--- Returns a page iterator for listRelatedItems.
function M.pages_list_related_items(client, input)
    return paginator.pages(client, "listRelatedItems", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "relatedItems",
    })
end

--- Returns an item iterator for listRelatedItems.
function M.items_list_related_items(client, input)
    return paginator.items(client, "listRelatedItems", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "relatedItems",
    })
end

--- Returns a page iterator for listReplicationSets.
function M.pages_list_replication_sets(client, input)
    return paginator.pages(client, "listReplicationSets", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "replicationSetArns",
    })
end

--- Returns an item iterator for listReplicationSets.
function M.items_list_replication_sets(client, input)
    return paginator.items(client, "listReplicationSets", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "replicationSetArns",
    })
end

--- Returns a page iterator for listResponsePlans.
function M.pages_list_response_plans(client, input)
    return paginator.pages(client, "listResponsePlans", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "responsePlanSummaries",
    })
end

--- Returns an item iterator for listResponsePlans.
function M.items_list_response_plans(client, input)
    return paginator.items(client, "listResponsePlans", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "responsePlanSummaries",
    })
end

--- Returns a page iterator for listTimelineEvents.
function M.pages_list_timeline_events(client, input)
    return paginator.pages(client, "listTimelineEvents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "eventSummaries",
    })
end

--- Returns an item iterator for listTimelineEvents.
function M.items_list_timeline_events(client, input)
    return paginator.items(client, "listTimelineEvents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "eventSummaries",
    })
end

return M
