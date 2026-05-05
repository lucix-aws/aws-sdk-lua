local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for describeModelVersions.
function M.pages_describe_model_versions(client, input)
    return paginator.pages(client, "describeModelVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for getBatchImportJobs.
function M.pages_get_batch_import_jobs(client, input)
    return paginator.pages(client, "getBatchImportJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for getBatchPredictionJobs.
function M.pages_get_batch_prediction_jobs(client, input)
    return paginator.pages(client, "getBatchPredictionJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for getDetectors.
function M.pages_get_detectors(client, input)
    return paginator.pages(client, "getDetectors", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for getEntityTypes.
function M.pages_get_entity_types(client, input)
    return paginator.pages(client, "getEntityTypes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for getEventTypes.
function M.pages_get_event_types(client, input)
    return paginator.pages(client, "getEventTypes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for getExternalModels.
function M.pages_get_external_models(client, input)
    return paginator.pages(client, "getExternalModels", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for getLabels.
function M.pages_get_labels(client, input)
    return paginator.pages(client, "getLabels", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for getListElements.
function M.pages_get_list_elements(client, input)
    return paginator.pages(client, "getListElements", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for getListsMetadata.
function M.pages_get_lists_metadata(client, input)
    return paginator.pages(client, "getListsMetadata", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for getModels.
function M.pages_get_models(client, input)
    return paginator.pages(client, "getModels", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for getOutcomes.
function M.pages_get_outcomes(client, input)
    return paginator.pages(client, "getOutcomes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for getRules.
function M.pages_get_rules(client, input)
    return paginator.pages(client, "getRules", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for getVariables.
function M.pages_get_variables(client, input)
    return paginator.pages(client, "getVariables", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listEventPredictions.
function M.pages_list_event_predictions(client, input)
    return paginator.pages(client, "listEventPredictions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listTagsForResource.
function M.pages_list_tags_for_resource(client, input)
    return paginator.pages(client, "listTagsForResource", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

return M
