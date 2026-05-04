local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listCidrBlocks.
function M.pages_list_cidr_blocks(client, input)
    return paginator.pages(client, "listCidrBlocks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CidrBlocks",
    })
end

--- Returns an item iterator for listCidrBlocks.
function M.items_list_cidr_blocks(client, input)
    return paginator.items(client, "listCidrBlocks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CidrBlocks",
    })
end

--- Returns a page iterator for listCidrCollections.
function M.pages_list_cidr_collections(client, input)
    return paginator.pages(client, "listCidrCollections", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CidrCollections",
    })
end

--- Returns an item iterator for listCidrCollections.
function M.items_list_cidr_collections(client, input)
    return paginator.items(client, "listCidrCollections", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CidrCollections",
    })
end

--- Returns a page iterator for listCidrLocations.
function M.pages_list_cidr_locations(client, input)
    return paginator.pages(client, "listCidrLocations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CidrLocations",
    })
end

--- Returns an item iterator for listCidrLocations.
function M.items_list_cidr_locations(client, input)
    return paginator.items(client, "listCidrLocations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CidrLocations",
    })
end

--- Returns a page iterator for listHealthChecks.
function M.pages_list_health_checks(client, input)
    return paginator.pages(client, "listHealthChecks", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "HealthChecks",
    })
end

--- Returns an item iterator for listHealthChecks.
function M.items_list_health_checks(client, input)
    return paginator.items(client, "listHealthChecks", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "HealthChecks",
    })
end

--- Returns a page iterator for listHostedZones.
function M.pages_list_hosted_zones(client, input)
    return paginator.pages(client, "listHostedZones", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "HostedZones",
    })
end

--- Returns an item iterator for listHostedZones.
function M.items_list_hosted_zones(client, input)
    return paginator.items(client, "listHostedZones", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "HostedZones",
    })
end

--- Returns a page iterator for listQueryLoggingConfigs.
function M.pages_list_query_logging_configs(client, input)
    return paginator.pages(client, "listQueryLoggingConfigs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "QueryLoggingConfigs",
    })
end

--- Returns an item iterator for listQueryLoggingConfigs.
function M.items_list_query_logging_configs(client, input)
    return paginator.items(client, "listQueryLoggingConfigs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "QueryLoggingConfigs",
    })
end

return M
