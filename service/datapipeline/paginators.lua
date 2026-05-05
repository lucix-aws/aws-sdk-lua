local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for describeObjects.
function M.pages_describe_objects(client, input)
    return paginator.pages(client, "describeObjects", input, {
        input_token = "marker",
        output_token = "marker",
        items = "pipelineObjects",
    })
end

--- Returns an item iterator for describeObjects.
function M.items_describe_objects(client, input)
    return paginator.items(client, "describeObjects", input, {
        input_token = "marker",
        output_token = "marker",
        items = "pipelineObjects",
    })
end

--- Returns a page iterator for listPipelines.
function M.pages_list_pipelines(client, input)
    return paginator.pages(client, "listPipelines", input, {
        input_token = "marker",
        output_token = "marker",
        items = "pipelineIdList",
    })
end

--- Returns an item iterator for listPipelines.
function M.items_list_pipelines(client, input)
    return paginator.items(client, "listPipelines", input, {
        input_token = "marker",
        output_token = "marker",
        items = "pipelineIdList",
    })
end

--- Returns a page iterator for queryObjects.
function M.pages_query_objects(client, input)
    return paginator.pages(client, "queryObjects", input, {
        input_token = "marker",
        output_token = "marker",
        items = "ids",
    })
end

--- Returns an item iterator for queryObjects.
function M.items_query_objects(client, input)
    return paginator.items(client, "queryObjects", input, {
        input_token = "marker",
        output_token = "marker",
        items = "ids",
    })
end

return M
