local paginator = require("paginator")

local M = {}

--- Returns a page iterator for describeBatchPredictions.
function M.pages_describe_batch_predictions(client, input)
    return paginator.pages(client, "describeBatchPredictions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Results",
    })
end

--- Returns an item iterator for describeBatchPredictions.
function M.items_describe_batch_predictions(client, input)
    return paginator.items(client, "describeBatchPredictions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Results",
    })
end

--- Returns a page iterator for describeDataSources.
function M.pages_describe_data_sources(client, input)
    return paginator.pages(client, "describeDataSources", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Results",
    })
end

--- Returns an item iterator for describeDataSources.
function M.items_describe_data_sources(client, input)
    return paginator.items(client, "describeDataSources", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Results",
    })
end

--- Returns a page iterator for describeEvaluations.
function M.pages_describe_evaluations(client, input)
    return paginator.pages(client, "describeEvaluations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Results",
    })
end

--- Returns an item iterator for describeEvaluations.
function M.items_describe_evaluations(client, input)
    return paginator.items(client, "describeEvaluations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Results",
    })
end

--- Returns a page iterator for describeMLModels.
function M.pages_describe_m_l_models(client, input)
    return paginator.pages(client, "describeMLModels", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Results",
    })
end

--- Returns an item iterator for describeMLModels.
function M.items_describe_m_l_models(client, input)
    return paginator.items(client, "describeMLModels", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Results",
    })
end

return M
