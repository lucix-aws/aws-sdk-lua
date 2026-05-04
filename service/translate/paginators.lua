local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listLanguages.
function M.pages_list_languages(client, input)
    return paginator.pages(client, "listLanguages", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listParallelData.
function M.pages_list_parallel_data(client, input)
    return paginator.pages(client, "listParallelData", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listTerminologies.
function M.pages_list_terminologies(client, input)
    return paginator.pages(client, "listTerminologies", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listTextTranslationJobs.
function M.pages_list_text_translation_jobs(client, input)
    return paginator.pages(client, "listTextTranslationJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
