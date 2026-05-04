local paginator = require("paginator")

local M = {}

--- Returns a page iterator for describeConnectorProfiles.
function M.pages_describe_connector_profiles(client, input)
    return paginator.pages(client, "describeConnectorProfiles", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for describeConnectors.
function M.pages_describe_connectors(client, input)
    return paginator.pages(client, "describeConnectors", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for describeFlowExecutionRecords.
function M.pages_describe_flow_execution_records(client, input)
    return paginator.pages(client, "describeFlowExecutionRecords", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listConnectors.
function M.pages_list_connectors(client, input)
    return paginator.pages(client, "listConnectors", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listFlows.
function M.pages_list_flows(client, input)
    return paginator.pages(client, "listFlows", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

return M
