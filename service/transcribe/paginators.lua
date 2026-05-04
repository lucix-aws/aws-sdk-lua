local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listCallAnalyticsCategories.
function M.pages_list_call_analytics_categories(client, input)
    return paginator.pages(client, "listCallAnalyticsCategories", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listCallAnalyticsJobs.
function M.pages_list_call_analytics_jobs(client, input)
    return paginator.pages(client, "listCallAnalyticsJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listLanguageModels.
function M.pages_list_language_models(client, input)
    return paginator.pages(client, "listLanguageModels", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listMedicalScribeJobs.
function M.pages_list_medical_scribe_jobs(client, input)
    return paginator.pages(client, "listMedicalScribeJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listMedicalTranscriptionJobs.
function M.pages_list_medical_transcription_jobs(client, input)
    return paginator.pages(client, "listMedicalTranscriptionJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listMedicalVocabularies.
function M.pages_list_medical_vocabularies(client, input)
    return paginator.pages(client, "listMedicalVocabularies", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listTranscriptionJobs.
function M.pages_list_transcription_jobs(client, input)
    return paginator.pages(client, "listTranscriptionJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listVocabularies.
function M.pages_list_vocabularies(client, input)
    return paginator.pages(client, "listVocabularies", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listVocabularyFilters.
function M.pages_list_vocabulary_filters(client, input)
    return paginator.pages(client, "listVocabularyFilters", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
