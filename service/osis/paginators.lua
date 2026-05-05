local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listPipelineEndpointConnections.
function M.pages_list_pipeline_endpoint_connections(client, input)
    return paginator.pages(client, "listPipelineEndpointConnections", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PipelineEndpointConnections",
    })
end

--- Returns an item iterator for listPipelineEndpointConnections.
function M.items_list_pipeline_endpoint_connections(client, input)
    return paginator.items(client, "listPipelineEndpointConnections", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PipelineEndpointConnections",
    })
end

--- Returns a page iterator for listPipelineEndpoints.
function M.pages_list_pipeline_endpoints(client, input)
    return paginator.pages(client, "listPipelineEndpoints", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PipelineEndpoints",
    })
end

--- Returns an item iterator for listPipelineEndpoints.
function M.items_list_pipeline_endpoints(client, input)
    return paginator.items(client, "listPipelineEndpoints", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PipelineEndpoints",
    })
end

--- Returns a page iterator for listPipelines.
function M.pages_list_pipelines(client, input)
    return paginator.pages(client, "listPipelines", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
