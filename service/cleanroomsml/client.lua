local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("cleanroomsml.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("cleanroomsml.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSStarkControlService"
    cfg.signing_name = "awsstarkcontrolservice"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:cancelTrainedModel(input, options)
    return self:invokeOperation(input, {
        name = "CancelTrainedModel",
        input_schema = types.CancelTrainedModelInput,
        output_schema = types.CancelTrainedModelOutput,
        http_method = "PATCH",
        http_path = "/memberships/{membershipIdentifier}/trained-models/{trainedModelArn}",
    }, options)
end

function Client:cancelTrainedModelInferenceJob(input, options)
    return self:invokeOperation(input, {
        name = "CancelTrainedModelInferenceJob",
        input_schema = types.CancelTrainedModelInferenceJobInput,
        output_schema = types.CancelTrainedModelInferenceJobOutput,
        http_method = "PATCH",
        http_path = "/memberships/{membershipIdentifier}/trained-model-inference-jobs/{trainedModelInferenceJobArn}",
    }, options)
end

function Client:createAudienceModel(input, options)
    return self:invokeOperation(input, {
        name = "CreateAudienceModel",
        input_schema = types.CreateAudienceModelInput,
        output_schema = types.CreateAudienceModelOutput,
        http_method = "POST",
        http_path = "/audience-model",
    }, options)
end

function Client:createConfiguredAudienceModel(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfiguredAudienceModel",
        input_schema = types.CreateConfiguredAudienceModelInput,
        output_schema = types.CreateConfiguredAudienceModelOutput,
        http_method = "POST",
        http_path = "/configured-audience-model",
    }, options)
end

function Client:createConfiguredModelAlgorithm(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfiguredModelAlgorithm",
        input_schema = types.CreateConfiguredModelAlgorithmInput,
        output_schema = types.CreateConfiguredModelAlgorithmOutput,
        http_method = "POST",
        http_path = "/configured-model-algorithms",
    }, options)
end

function Client:createConfiguredModelAlgorithmAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfiguredModelAlgorithmAssociation",
        input_schema = types.CreateConfiguredModelAlgorithmAssociationInput,
        output_schema = types.CreateConfiguredModelAlgorithmAssociationOutput,
        http_method = "POST",
        http_path = "/memberships/{membershipIdentifier}/configured-model-algorithm-associations",
    }, options)
end

function Client:createMLInputChannel(input, options)
    return self:invokeOperation(input, {
        name = "CreateMLInputChannel",
        input_schema = types.CreateMLInputChannelInput,
        output_schema = types.CreateMLInputChannelOutput,
        http_method = "POST",
        http_path = "/memberships/{membershipIdentifier}/ml-input-channels",
    }, options)
end

function Client:createTrainedModel(input, options)
    return self:invokeOperation(input, {
        name = "CreateTrainedModel",
        input_schema = types.CreateTrainedModelInput,
        output_schema = types.CreateTrainedModelOutput,
        http_method = "POST",
        http_path = "/memberships/{membershipIdentifier}/trained-models",
    }, options)
end

function Client:createTrainingDataset(input, options)
    return self:invokeOperation(input, {
        name = "CreateTrainingDataset",
        input_schema = types.CreateTrainingDatasetInput,
        output_schema = types.CreateTrainingDatasetOutput,
        http_method = "POST",
        http_path = "/training-dataset",
    }, options)
end

function Client:deleteAudienceGenerationJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAudienceGenerationJob",
        input_schema = types.DeleteAudienceGenerationJobInput,
        output_schema = types.DeleteAudienceGenerationJobOutput,
        http_method = "DELETE",
        http_path = "/audience-generation-job/{audienceGenerationJobArn}",
    }, options)
end

function Client:deleteAudienceModel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAudienceModel",
        input_schema = types.DeleteAudienceModelInput,
        output_schema = types.DeleteAudienceModelOutput,
        http_method = "DELETE",
        http_path = "/audience-model/{audienceModelArn}",
    }, options)
end

function Client:deleteConfiguredAudienceModel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfiguredAudienceModel",
        input_schema = types.DeleteConfiguredAudienceModelInput,
        output_schema = types.DeleteConfiguredAudienceModelOutput,
        http_method = "DELETE",
        http_path = "/configured-audience-model/{configuredAudienceModelArn}",
    }, options)
end

function Client:deleteConfiguredAudienceModelPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfiguredAudienceModelPolicy",
        input_schema = types.DeleteConfiguredAudienceModelPolicyInput,
        output_schema = types.DeleteConfiguredAudienceModelPolicyOutput,
        http_method = "DELETE",
        http_path = "/configured-audience-model/{configuredAudienceModelArn}/policy",
    }, options)
end

function Client:deleteConfiguredModelAlgorithm(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfiguredModelAlgorithm",
        input_schema = types.DeleteConfiguredModelAlgorithmInput,
        output_schema = types.DeleteConfiguredModelAlgorithmOutput,
        http_method = "DELETE",
        http_path = "/configured-model-algorithms/{configuredModelAlgorithmArn}",
    }, options)
end

function Client:deleteConfiguredModelAlgorithmAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfiguredModelAlgorithmAssociation",
        input_schema = types.DeleteConfiguredModelAlgorithmAssociationInput,
        output_schema = types.DeleteConfiguredModelAlgorithmAssociationOutput,
        http_method = "DELETE",
        http_path = "/memberships/{membershipIdentifier}/configured-model-algorithm-associations/{configuredModelAlgorithmAssociationArn}",
    }, options)
end

function Client:deleteMLConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMLConfiguration",
        input_schema = types.DeleteMLConfigurationInput,
        output_schema = types.DeleteMLConfigurationOutput,
        http_method = "DELETE",
        http_path = "/memberships/{membershipIdentifier}/ml-configurations",
    }, options)
end

function Client:deleteMLInputChannelData(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMLInputChannelData",
        input_schema = types.DeleteMLInputChannelDataInput,
        output_schema = types.DeleteMLInputChannelDataOutput,
        http_method = "DELETE",
        http_path = "/memberships/{membershipIdentifier}/ml-input-channels/{mlInputChannelArn}",
    }, options)
end

function Client:deleteTrainedModelOutput(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTrainedModelOutput",
        input_schema = types.DeleteTrainedModelOutputInput,
        output_schema = types.DeleteTrainedModelOutputOutput,
        http_method = "DELETE",
        http_path = "/memberships/{membershipIdentifier}/trained-models/{trainedModelArn}",
    }, options)
end

function Client:deleteTrainingDataset(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTrainingDataset",
        input_schema = types.DeleteTrainingDatasetInput,
        output_schema = types.DeleteTrainingDatasetOutput,
        http_method = "DELETE",
        http_path = "/training-dataset/{trainingDatasetArn}",
    }, options)
end

function Client:getAudienceGenerationJob(input, options)
    return self:invokeOperation(input, {
        name = "GetAudienceGenerationJob",
        input_schema = types.GetAudienceGenerationJobInput,
        output_schema = types.GetAudienceGenerationJobOutput,
        http_method = "GET",
        http_path = "/audience-generation-job/{audienceGenerationJobArn}",
    }, options)
end

function Client:getAudienceModel(input, options)
    return self:invokeOperation(input, {
        name = "GetAudienceModel",
        input_schema = types.GetAudienceModelInput,
        output_schema = types.GetAudienceModelOutput,
        http_method = "GET",
        http_path = "/audience-model/{audienceModelArn}",
    }, options)
end

function Client:getCollaborationConfiguredModelAlgorithmAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetCollaborationConfiguredModelAlgorithmAssociation",
        input_schema = types.GetCollaborationConfiguredModelAlgorithmAssociationInput,
        output_schema = types.GetCollaborationConfiguredModelAlgorithmAssociationOutput,
        http_method = "GET",
        http_path = "/collaborations/{collaborationIdentifier}/configured-model-algorithm-associations/{configuredModelAlgorithmAssociationArn}",
    }, options)
end

function Client:getCollaborationMLInputChannel(input, options)
    return self:invokeOperation(input, {
        name = "GetCollaborationMLInputChannel",
        input_schema = types.GetCollaborationMLInputChannelInput,
        output_schema = types.GetCollaborationMLInputChannelOutput,
        http_method = "GET",
        http_path = "/collaborations/{collaborationIdentifier}/ml-input-channels/{mlInputChannelArn}",
    }, options)
end

function Client:getCollaborationTrainedModel(input, options)
    return self:invokeOperation(input, {
        name = "GetCollaborationTrainedModel",
        input_schema = types.GetCollaborationTrainedModelInput,
        output_schema = types.GetCollaborationTrainedModelOutput,
        http_method = "GET",
        http_path = "/collaborations/{collaborationIdentifier}/trained-models/{trainedModelArn}",
    }, options)
end

function Client:getConfiguredAudienceModel(input, options)
    return self:invokeOperation(input, {
        name = "GetConfiguredAudienceModel",
        input_schema = types.GetConfiguredAudienceModelInput,
        output_schema = types.GetConfiguredAudienceModelOutput,
        http_method = "GET",
        http_path = "/configured-audience-model/{configuredAudienceModelArn}",
    }, options)
end

function Client:getConfiguredAudienceModelPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetConfiguredAudienceModelPolicy",
        input_schema = types.GetConfiguredAudienceModelPolicyInput,
        output_schema = types.GetConfiguredAudienceModelPolicyOutput,
        http_method = "GET",
        http_path = "/configured-audience-model/{configuredAudienceModelArn}/policy",
    }, options)
end

function Client:getConfiguredModelAlgorithm(input, options)
    return self:invokeOperation(input, {
        name = "GetConfiguredModelAlgorithm",
        input_schema = types.GetConfiguredModelAlgorithmInput,
        output_schema = types.GetConfiguredModelAlgorithmOutput,
        http_method = "GET",
        http_path = "/configured-model-algorithms/{configuredModelAlgorithmArn}",
    }, options)
end

function Client:getConfiguredModelAlgorithmAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetConfiguredModelAlgorithmAssociation",
        input_schema = types.GetConfiguredModelAlgorithmAssociationInput,
        output_schema = types.GetConfiguredModelAlgorithmAssociationOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/configured-model-algorithm-associations/{configuredModelAlgorithmAssociationArn}",
    }, options)
end

function Client:getMLConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetMLConfiguration",
        input_schema = types.GetMLConfigurationInput,
        output_schema = types.GetMLConfigurationOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/ml-configurations",
    }, options)
end

function Client:getMLInputChannel(input, options)
    return self:invokeOperation(input, {
        name = "GetMLInputChannel",
        input_schema = types.GetMLInputChannelInput,
        output_schema = types.GetMLInputChannelOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/ml-input-channels/{mlInputChannelArn}",
    }, options)
end

function Client:getTrainedModel(input, options)
    return self:invokeOperation(input, {
        name = "GetTrainedModel",
        input_schema = types.GetTrainedModelInput,
        output_schema = types.GetTrainedModelOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/trained-models/{trainedModelArn}",
    }, options)
end

function Client:getTrainedModelInferenceJob(input, options)
    return self:invokeOperation(input, {
        name = "GetTrainedModelInferenceJob",
        input_schema = types.GetTrainedModelInferenceJobInput,
        output_schema = types.GetTrainedModelInferenceJobOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/trained-model-inference-jobs/{trainedModelInferenceJobArn}",
    }, options)
end

function Client:getTrainingDataset(input, options)
    return self:invokeOperation(input, {
        name = "GetTrainingDataset",
        input_schema = types.GetTrainingDatasetInput,
        output_schema = types.GetTrainingDatasetOutput,
        http_method = "GET",
        http_path = "/training-dataset/{trainingDatasetArn}",
    }, options)
end

function Client:listAudienceExportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListAudienceExportJobs",
        input_schema = types.ListAudienceExportJobsInput,
        output_schema = types.ListAudienceExportJobsOutput,
        http_method = "GET",
        http_path = "/audience-export-job",
    }, options)
end

function Client:listAudienceGenerationJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListAudienceGenerationJobs",
        input_schema = types.ListAudienceGenerationJobsInput,
        output_schema = types.ListAudienceGenerationJobsOutput,
        http_method = "GET",
        http_path = "/audience-generation-job",
    }, options)
end

function Client:listAudienceModels(input, options)
    return self:invokeOperation(input, {
        name = "ListAudienceModels",
        input_schema = types.ListAudienceModelsInput,
        output_schema = types.ListAudienceModelsOutput,
        http_method = "GET",
        http_path = "/audience-model",
    }, options)
end

function Client:listCollaborationConfiguredModelAlgorithmAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListCollaborationConfiguredModelAlgorithmAssociations",
        input_schema = types.ListCollaborationConfiguredModelAlgorithmAssociationsInput,
        output_schema = types.ListCollaborationConfiguredModelAlgorithmAssociationsOutput,
        http_method = "GET",
        http_path = "/collaborations/{collaborationIdentifier}/configured-model-algorithm-associations",
    }, options)
end

function Client:listCollaborationMLInputChannels(input, options)
    return self:invokeOperation(input, {
        name = "ListCollaborationMLInputChannels",
        input_schema = types.ListCollaborationMLInputChannelsInput,
        output_schema = types.ListCollaborationMLInputChannelsOutput,
        http_method = "GET",
        http_path = "/collaborations/{collaborationIdentifier}/ml-input-channels",
    }, options)
end

function Client:listCollaborationTrainedModelExportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListCollaborationTrainedModelExportJobs",
        input_schema = types.ListCollaborationTrainedModelExportJobsInput,
        output_schema = types.ListCollaborationTrainedModelExportJobsOutput,
        http_method = "GET",
        http_path = "/collaborations/{collaborationIdentifier}/trained-models/{trainedModelArn}/export-jobs",
    }, options)
end

function Client:listCollaborationTrainedModelInferenceJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListCollaborationTrainedModelInferenceJobs",
        input_schema = types.ListCollaborationTrainedModelInferenceJobsInput,
        output_schema = types.ListCollaborationTrainedModelInferenceJobsOutput,
        http_method = "GET",
        http_path = "/collaborations/{collaborationIdentifier}/trained-model-inference-jobs",
    }, options)
end

function Client:listCollaborationTrainedModels(input, options)
    return self:invokeOperation(input, {
        name = "ListCollaborationTrainedModels",
        input_schema = types.ListCollaborationTrainedModelsInput,
        output_schema = types.ListCollaborationTrainedModelsOutput,
        http_method = "GET",
        http_path = "/collaborations/{collaborationIdentifier}/trained-models",
    }, options)
end

function Client:listConfiguredAudienceModels(input, options)
    return self:invokeOperation(input, {
        name = "ListConfiguredAudienceModels",
        input_schema = types.ListConfiguredAudienceModelsInput,
        output_schema = types.ListConfiguredAudienceModelsOutput,
        http_method = "GET",
        http_path = "/configured-audience-model",
    }, options)
end

function Client:listConfiguredModelAlgorithmAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListConfiguredModelAlgorithmAssociations",
        input_schema = types.ListConfiguredModelAlgorithmAssociationsInput,
        output_schema = types.ListConfiguredModelAlgorithmAssociationsOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/configured-model-algorithm-associations",
    }, options)
end

function Client:listConfiguredModelAlgorithms(input, options)
    return self:invokeOperation(input, {
        name = "ListConfiguredModelAlgorithms",
        input_schema = types.ListConfiguredModelAlgorithmsInput,
        output_schema = types.ListConfiguredModelAlgorithmsOutput,
        http_method = "GET",
        http_path = "/configured-model-algorithms",
    }, options)
end

function Client:listMLInputChannels(input, options)
    return self:invokeOperation(input, {
        name = "ListMLInputChannels",
        input_schema = types.ListMLInputChannelsInput,
        output_schema = types.ListMLInputChannelsOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/ml-input-channels",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:listTrainedModelInferenceJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListTrainedModelInferenceJobs",
        input_schema = types.ListTrainedModelInferenceJobsInput,
        output_schema = types.ListTrainedModelInferenceJobsOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/trained-model-inference-jobs",
    }, options)
end

function Client:listTrainedModels(input, options)
    return self:invokeOperation(input, {
        name = "ListTrainedModels",
        input_schema = types.ListTrainedModelsInput,
        output_schema = types.ListTrainedModelsOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/trained-models",
    }, options)
end

function Client:listTrainedModelVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListTrainedModelVersions",
        input_schema = types.ListTrainedModelVersionsInput,
        output_schema = types.ListTrainedModelVersionsOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/trained-models/{trainedModelArn}/versions",
    }, options)
end

function Client:listTrainingDatasets(input, options)
    return self:invokeOperation(input, {
        name = "ListTrainingDatasets",
        input_schema = types.ListTrainingDatasetsInput,
        output_schema = types.ListTrainingDatasetsOutput,
        http_method = "GET",
        http_path = "/training-dataset",
    }, options)
end

function Client:putConfiguredAudienceModelPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutConfiguredAudienceModelPolicy",
        input_schema = types.PutConfiguredAudienceModelPolicyInput,
        output_schema = types.PutConfiguredAudienceModelPolicyOutput,
        http_method = "PUT",
        http_path = "/configured-audience-model/{configuredAudienceModelArn}/policy",
    }, options)
end

function Client:putMLConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutMLConfiguration",
        input_schema = types.PutMLConfigurationInput,
        output_schema = types.PutMLConfigurationOutput,
        http_method = "PUT",
        http_path = "/memberships/{membershipIdentifier}/ml-configurations",
    }, options)
end

function Client:startAudienceExportJob(input, options)
    return self:invokeOperation(input, {
        name = "StartAudienceExportJob",
        input_schema = types.StartAudienceExportJobInput,
        output_schema = types.StartAudienceExportJobOutput,
        http_method = "POST",
        http_path = "/audience-export-job",
    }, options)
end

function Client:startAudienceGenerationJob(input, options)
    return self:invokeOperation(input, {
        name = "StartAudienceGenerationJob",
        input_schema = types.StartAudienceGenerationJobInput,
        output_schema = types.StartAudienceGenerationJobOutput,
        http_method = "POST",
        http_path = "/audience-generation-job",
    }, options)
end

function Client:startTrainedModelExportJob(input, options)
    return self:invokeOperation(input, {
        name = "StartTrainedModelExportJob",
        input_schema = types.StartTrainedModelExportJobInput,
        output_schema = types.StartTrainedModelExportJobOutput,
        http_method = "POST",
        http_path = "/memberships/{membershipIdentifier}/trained-models/{trainedModelArn}/export-jobs",
    }, options)
end

function Client:startTrainedModelInferenceJob(input, options)
    return self:invokeOperation(input, {
        name = "StartTrainedModelInferenceJob",
        input_schema = types.StartTrainedModelInferenceJobInput,
        output_schema = types.StartTrainedModelInferenceJobOutput,
        http_method = "POST",
        http_path = "/memberships/{membershipIdentifier}/trained-model-inference-jobs",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:updateConfiguredAudienceModel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConfiguredAudienceModel",
        input_schema = types.UpdateConfiguredAudienceModelInput,
        output_schema = types.UpdateConfiguredAudienceModelOutput,
        http_method = "PATCH",
        http_path = "/configured-audience-model/{configuredAudienceModelArn}",
    }, options)
end

return M
