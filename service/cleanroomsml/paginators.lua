local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listAudienceExportJobs.
function M.pages_list_audience_export_jobs(client, input)
    return paginator.pages(client, "listAudienceExportJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "audienceExportJobs",
    })
end

--- Returns an item iterator for listAudienceExportJobs.
function M.items_list_audience_export_jobs(client, input)
    return paginator.items(client, "listAudienceExportJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "audienceExportJobs",
    })
end

--- Returns a page iterator for listAudienceGenerationJobs.
function M.pages_list_audience_generation_jobs(client, input)
    return paginator.pages(client, "listAudienceGenerationJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "audienceGenerationJobs",
    })
end

--- Returns an item iterator for listAudienceGenerationJobs.
function M.items_list_audience_generation_jobs(client, input)
    return paginator.items(client, "listAudienceGenerationJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "audienceGenerationJobs",
    })
end

--- Returns a page iterator for listAudienceModels.
function M.pages_list_audience_models(client, input)
    return paginator.pages(client, "listAudienceModels", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "audienceModels",
    })
end

--- Returns an item iterator for listAudienceModels.
function M.items_list_audience_models(client, input)
    return paginator.items(client, "listAudienceModels", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "audienceModels",
    })
end

--- Returns a page iterator for listCollaborationConfiguredModelAlgorithmAssociations.
function M.pages_list_collaboration_configured_model_algorithm_associations(client, input)
    return paginator.pages(client, "listCollaborationConfiguredModelAlgorithmAssociations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "collaborationConfiguredModelAlgorithmAssociations",
    })
end

--- Returns an item iterator for listCollaborationConfiguredModelAlgorithmAssociations.
function M.items_list_collaboration_configured_model_algorithm_associations(client, input)
    return paginator.items(client, "listCollaborationConfiguredModelAlgorithmAssociations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "collaborationConfiguredModelAlgorithmAssociations",
    })
end

--- Returns a page iterator for listCollaborationMLInputChannels.
function M.pages_list_collaboration_m_l_input_channels(client, input)
    return paginator.pages(client, "listCollaborationMLInputChannels", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "collaborationMLInputChannelsList",
    })
end

--- Returns an item iterator for listCollaborationMLInputChannels.
function M.items_list_collaboration_m_l_input_channels(client, input)
    return paginator.items(client, "listCollaborationMLInputChannels", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "collaborationMLInputChannelsList",
    })
end

--- Returns a page iterator for listCollaborationTrainedModelExportJobs.
function M.pages_list_collaboration_trained_model_export_jobs(client, input)
    return paginator.pages(client, "listCollaborationTrainedModelExportJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "collaborationTrainedModelExportJobs",
    })
end

--- Returns an item iterator for listCollaborationTrainedModelExportJobs.
function M.items_list_collaboration_trained_model_export_jobs(client, input)
    return paginator.items(client, "listCollaborationTrainedModelExportJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "collaborationTrainedModelExportJobs",
    })
end

--- Returns a page iterator for listCollaborationTrainedModelInferenceJobs.
function M.pages_list_collaboration_trained_model_inference_jobs(client, input)
    return paginator.pages(client, "listCollaborationTrainedModelInferenceJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "collaborationTrainedModelInferenceJobs",
    })
end

--- Returns an item iterator for listCollaborationTrainedModelInferenceJobs.
function M.items_list_collaboration_trained_model_inference_jobs(client, input)
    return paginator.items(client, "listCollaborationTrainedModelInferenceJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "collaborationTrainedModelInferenceJobs",
    })
end

--- Returns a page iterator for listCollaborationTrainedModels.
function M.pages_list_collaboration_trained_models(client, input)
    return paginator.pages(client, "listCollaborationTrainedModels", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "collaborationTrainedModels",
    })
end

--- Returns an item iterator for listCollaborationTrainedModels.
function M.items_list_collaboration_trained_models(client, input)
    return paginator.items(client, "listCollaborationTrainedModels", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "collaborationTrainedModels",
    })
end

--- Returns a page iterator for listConfiguredAudienceModels.
function M.pages_list_configured_audience_models(client, input)
    return paginator.pages(client, "listConfiguredAudienceModels", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "configuredAudienceModels",
    })
end

--- Returns an item iterator for listConfiguredAudienceModels.
function M.items_list_configured_audience_models(client, input)
    return paginator.items(client, "listConfiguredAudienceModels", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "configuredAudienceModels",
    })
end

--- Returns a page iterator for listConfiguredModelAlgorithmAssociations.
function M.pages_list_configured_model_algorithm_associations(client, input)
    return paginator.pages(client, "listConfiguredModelAlgorithmAssociations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "configuredModelAlgorithmAssociations",
    })
end

--- Returns an item iterator for listConfiguredModelAlgorithmAssociations.
function M.items_list_configured_model_algorithm_associations(client, input)
    return paginator.items(client, "listConfiguredModelAlgorithmAssociations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "configuredModelAlgorithmAssociations",
    })
end

--- Returns a page iterator for listConfiguredModelAlgorithms.
function M.pages_list_configured_model_algorithms(client, input)
    return paginator.pages(client, "listConfiguredModelAlgorithms", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "configuredModelAlgorithms",
    })
end

--- Returns an item iterator for listConfiguredModelAlgorithms.
function M.items_list_configured_model_algorithms(client, input)
    return paginator.items(client, "listConfiguredModelAlgorithms", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "configuredModelAlgorithms",
    })
end

--- Returns a page iterator for listMLInputChannels.
function M.pages_list_m_l_input_channels(client, input)
    return paginator.pages(client, "listMLInputChannels", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "mlInputChannelsList",
    })
end

--- Returns an item iterator for listMLInputChannels.
function M.items_list_m_l_input_channels(client, input)
    return paginator.items(client, "listMLInputChannels", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "mlInputChannelsList",
    })
end

--- Returns a page iterator for listTrainedModelInferenceJobs.
function M.pages_list_trained_model_inference_jobs(client, input)
    return paginator.pages(client, "listTrainedModelInferenceJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "trainedModelInferenceJobs",
    })
end

--- Returns an item iterator for listTrainedModelInferenceJobs.
function M.items_list_trained_model_inference_jobs(client, input)
    return paginator.items(client, "listTrainedModelInferenceJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "trainedModelInferenceJobs",
    })
end

--- Returns a page iterator for listTrainedModelVersions.
function M.pages_list_trained_model_versions(client, input)
    return paginator.pages(client, "listTrainedModelVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "trainedModels",
    })
end

--- Returns an item iterator for listTrainedModelVersions.
function M.items_list_trained_model_versions(client, input)
    return paginator.items(client, "listTrainedModelVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "trainedModels",
    })
end

--- Returns a page iterator for listTrainedModels.
function M.pages_list_trained_models(client, input)
    return paginator.pages(client, "listTrainedModels", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "trainedModels",
    })
end

--- Returns an item iterator for listTrainedModels.
function M.items_list_trained_models(client, input)
    return paginator.items(client, "listTrainedModels", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "trainedModels",
    })
end

--- Returns a page iterator for listTrainingDatasets.
function M.pages_list_training_datasets(client, input)
    return paginator.pages(client, "listTrainingDatasets", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "trainingDatasets",
    })
end

--- Returns an item iterator for listTrainingDatasets.
function M.items_list_training_datasets(client, input)
    return paginator.items(client, "listTrainingDatasets", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "trainingDatasets",
    })
end

return M
