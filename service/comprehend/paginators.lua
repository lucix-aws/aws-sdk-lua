local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listDatasets.
function M.pages_list_datasets(client, input)
    return paginator.pages(client, "listDatasets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listDocumentClassificationJobs.
function M.pages_list_document_classification_jobs(client, input)
    return paginator.pages(client, "listDocumentClassificationJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listDocumentClassifierSummaries.
function M.pages_list_document_classifier_summaries(client, input)
    return paginator.pages(client, "listDocumentClassifierSummaries", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listDocumentClassifiers.
function M.pages_list_document_classifiers(client, input)
    return paginator.pages(client, "listDocumentClassifiers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listDominantLanguageDetectionJobs.
function M.pages_list_dominant_language_detection_jobs(client, input)
    return paginator.pages(client, "listDominantLanguageDetectionJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listEndpoints.
function M.pages_list_endpoints(client, input)
    return paginator.pages(client, "listEndpoints", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "EndpointPropertiesList",
    })
end

--- Returns an item iterator for listEndpoints.
function M.items_list_endpoints(client, input)
    return paginator.items(client, "listEndpoints", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "EndpointPropertiesList",
    })
end

--- Returns a page iterator for listEntitiesDetectionJobs.
function M.pages_list_entities_detection_jobs(client, input)
    return paginator.pages(client, "listEntitiesDetectionJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listEntityRecognizerSummaries.
function M.pages_list_entity_recognizer_summaries(client, input)
    return paginator.pages(client, "listEntityRecognizerSummaries", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listEntityRecognizers.
function M.pages_list_entity_recognizers(client, input)
    return paginator.pages(client, "listEntityRecognizers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listEventsDetectionJobs.
function M.pages_list_events_detection_jobs(client, input)
    return paginator.pages(client, "listEventsDetectionJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listFlywheelIterationHistory.
function M.pages_list_flywheel_iteration_history(client, input)
    return paginator.pages(client, "listFlywheelIterationHistory", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listFlywheels.
function M.pages_list_flywheels(client, input)
    return paginator.pages(client, "listFlywheels", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listKeyPhrasesDetectionJobs.
function M.pages_list_key_phrases_detection_jobs(client, input)
    return paginator.pages(client, "listKeyPhrasesDetectionJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listPiiEntitiesDetectionJobs.
function M.pages_list_pii_entities_detection_jobs(client, input)
    return paginator.pages(client, "listPiiEntitiesDetectionJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PiiEntitiesDetectionJobPropertiesList",
    })
end

--- Returns an item iterator for listPiiEntitiesDetectionJobs.
function M.items_list_pii_entities_detection_jobs(client, input)
    return paginator.items(client, "listPiiEntitiesDetectionJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PiiEntitiesDetectionJobPropertiesList",
    })
end

--- Returns a page iterator for listSentimentDetectionJobs.
function M.pages_list_sentiment_detection_jobs(client, input)
    return paginator.pages(client, "listSentimentDetectionJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listTargetedSentimentDetectionJobs.
function M.pages_list_targeted_sentiment_detection_jobs(client, input)
    return paginator.pages(client, "listTargetedSentimentDetectionJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listTopicsDetectionJobs.
function M.pages_list_topics_detection_jobs(client, input)
    return paginator.pages(client, "listTopicsDetectionJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
