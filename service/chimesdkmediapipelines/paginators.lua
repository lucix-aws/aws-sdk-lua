local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listMediaCapturePipelines.
function M.pages_list_media_capture_pipelines(client, input)
    return paginator.pages(client, "listMediaCapturePipelines", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listMediaInsightsPipelineConfigurations.
function M.pages_list_media_insights_pipeline_configurations(client, input)
    return paginator.pages(client, "listMediaInsightsPipelineConfigurations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listMediaPipelineKinesisVideoStreamPools.
function M.pages_list_media_pipeline_kinesis_video_stream_pools(client, input)
    return paginator.pages(client, "listMediaPipelineKinesisVideoStreamPools", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listMediaPipelines.
function M.pages_list_media_pipelines(client, input)
    return paginator.pages(client, "listMediaPipelines", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
