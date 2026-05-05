local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("cleanroomsml.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("cleanroomsml.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSStarkControlService"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    if not cfg.auth_scheme_resolver then
        cfg.auth_scheme_resolver = function(operation)
            local options = {}
            for _, scheme_id in ipairs(operation.effective_auth_schemes) do
                if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "cleanrooms-ml", signing_region = cfg.region } }
                else
                    options[#options + 1] = { scheme_id = scheme_id }
                end
            end
            return options
        end
    end
    defaults.resolve_auth_schemes(cfg)
    defaults.resolve_identity_resolvers(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:cancelTrainedModel(input, options)
    return self:invokeOperation(input, {
        name = "CancelTrainedModel",
        input_schema = schemas.CancelTrainedModelInput,
        output_schema = schemas.CancelTrainedModelOutput,
        http_method = "PATCH",
        http_path = "/memberships/{membershipIdentifier}/trained-models/{trainedModelArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelTrainedModelInferenceJob(input, options)
    return self:invokeOperation(input, {
        name = "CancelTrainedModelInferenceJob",
        input_schema = schemas.CancelTrainedModelInferenceJobInput,
        output_schema = schemas.CancelTrainedModelInferenceJobOutput,
        http_method = "PATCH",
        http_path = "/memberships/{membershipIdentifier}/trained-model-inference-jobs/{trainedModelInferenceJobArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAudienceModel(input, options)
    return self:invokeOperation(input, {
        name = "CreateAudienceModel",
        input_schema = schemas.CreateAudienceModelInput,
        output_schema = schemas.CreateAudienceModelOutput,
        http_method = "POST",
        http_path = "/audience-model",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConfiguredAudienceModel(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfiguredAudienceModel",
        input_schema = schemas.CreateConfiguredAudienceModelInput,
        output_schema = schemas.CreateConfiguredAudienceModelOutput,
        http_method = "POST",
        http_path = "/configured-audience-model",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConfiguredModelAlgorithm(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfiguredModelAlgorithm",
        input_schema = schemas.CreateConfiguredModelAlgorithmInput,
        output_schema = schemas.CreateConfiguredModelAlgorithmOutput,
        http_method = "POST",
        http_path = "/configured-model-algorithms",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConfiguredModelAlgorithmAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfiguredModelAlgorithmAssociation",
        input_schema = schemas.CreateConfiguredModelAlgorithmAssociationInput,
        output_schema = schemas.CreateConfiguredModelAlgorithmAssociationOutput,
        http_method = "POST",
        http_path = "/memberships/{membershipIdentifier}/configured-model-algorithm-associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMLInputChannel(input, options)
    return self:invokeOperation(input, {
        name = "CreateMLInputChannel",
        input_schema = schemas.CreateMLInputChannelInput,
        output_schema = schemas.CreateMLInputChannelOutput,
        http_method = "POST",
        http_path = "/memberships/{membershipIdentifier}/ml-input-channels",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTrainedModel(input, options)
    return self:invokeOperation(input, {
        name = "CreateTrainedModel",
        input_schema = schemas.CreateTrainedModelInput,
        output_schema = schemas.CreateTrainedModelOutput,
        http_method = "POST",
        http_path = "/memberships/{membershipIdentifier}/trained-models",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTrainingDataset(input, options)
    return self:invokeOperation(input, {
        name = "CreateTrainingDataset",
        input_schema = schemas.CreateTrainingDatasetInput,
        output_schema = schemas.CreateTrainingDatasetOutput,
        http_method = "POST",
        http_path = "/training-dataset",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAudienceGenerationJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAudienceGenerationJob",
        input_schema = schemas.DeleteAudienceGenerationJobInput,
        output_schema = schemas.DeleteAudienceGenerationJobOutput,
        http_method = "DELETE",
        http_path = "/audience-generation-job/{audienceGenerationJobArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAudienceModel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAudienceModel",
        input_schema = schemas.DeleteAudienceModelInput,
        output_schema = schemas.DeleteAudienceModelOutput,
        http_method = "DELETE",
        http_path = "/audience-model/{audienceModelArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConfiguredAudienceModel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfiguredAudienceModel",
        input_schema = schemas.DeleteConfiguredAudienceModelInput,
        output_schema = schemas.DeleteConfiguredAudienceModelOutput,
        http_method = "DELETE",
        http_path = "/configured-audience-model/{configuredAudienceModelArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConfiguredAudienceModelPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfiguredAudienceModelPolicy",
        input_schema = schemas.DeleteConfiguredAudienceModelPolicyInput,
        output_schema = schemas.DeleteConfiguredAudienceModelPolicyOutput,
        http_method = "DELETE",
        http_path = "/configured-audience-model/{configuredAudienceModelArn}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConfiguredModelAlgorithm(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfiguredModelAlgorithm",
        input_schema = schemas.DeleteConfiguredModelAlgorithmInput,
        output_schema = schemas.DeleteConfiguredModelAlgorithmOutput,
        http_method = "DELETE",
        http_path = "/configured-model-algorithms/{configuredModelAlgorithmArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConfiguredModelAlgorithmAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfiguredModelAlgorithmAssociation",
        input_schema = schemas.DeleteConfiguredModelAlgorithmAssociationInput,
        output_schema = schemas.DeleteConfiguredModelAlgorithmAssociationOutput,
        http_method = "DELETE",
        http_path = "/memberships/{membershipIdentifier}/configured-model-algorithm-associations/{configuredModelAlgorithmAssociationArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMLConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMLConfiguration",
        input_schema = schemas.DeleteMLConfigurationInput,
        output_schema = schemas.DeleteMLConfigurationOutput,
        http_method = "DELETE",
        http_path = "/memberships/{membershipIdentifier}/ml-configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMLInputChannelData(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMLInputChannelData",
        input_schema = schemas.DeleteMLInputChannelDataInput,
        output_schema = schemas.DeleteMLInputChannelDataOutput,
        http_method = "DELETE",
        http_path = "/memberships/{membershipIdentifier}/ml-input-channels/{mlInputChannelArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTrainedModelOutput(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTrainedModelOutput",
        input_schema = schemas.DeleteTrainedModelOutputInput,
        output_schema = schemas.DeleteTrainedModelOutputOutput,
        http_method = "DELETE",
        http_path = "/memberships/{membershipIdentifier}/trained-models/{trainedModelArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTrainingDataset(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTrainingDataset",
        input_schema = schemas.DeleteTrainingDatasetInput,
        output_schema = schemas.DeleteTrainingDatasetOutput,
        http_method = "DELETE",
        http_path = "/training-dataset/{trainingDatasetArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAudienceGenerationJob(input, options)
    return self:invokeOperation(input, {
        name = "GetAudienceGenerationJob",
        input_schema = schemas.GetAudienceGenerationJobInput,
        output_schema = schemas.GetAudienceGenerationJobOutput,
        http_method = "GET",
        http_path = "/audience-generation-job/{audienceGenerationJobArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAudienceModel(input, options)
    return self:invokeOperation(input, {
        name = "GetAudienceModel",
        input_schema = schemas.GetAudienceModelInput,
        output_schema = schemas.GetAudienceModelOutput,
        http_method = "GET",
        http_path = "/audience-model/{audienceModelArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCollaborationConfiguredModelAlgorithmAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetCollaborationConfiguredModelAlgorithmAssociation",
        input_schema = schemas.GetCollaborationConfiguredModelAlgorithmAssociationInput,
        output_schema = schemas.GetCollaborationConfiguredModelAlgorithmAssociationOutput,
        http_method = "GET",
        http_path = "/collaborations/{collaborationIdentifier}/configured-model-algorithm-associations/{configuredModelAlgorithmAssociationArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCollaborationMLInputChannel(input, options)
    return self:invokeOperation(input, {
        name = "GetCollaborationMLInputChannel",
        input_schema = schemas.GetCollaborationMLInputChannelInput,
        output_schema = schemas.GetCollaborationMLInputChannelOutput,
        http_method = "GET",
        http_path = "/collaborations/{collaborationIdentifier}/ml-input-channels/{mlInputChannelArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCollaborationTrainedModel(input, options)
    return self:invokeOperation(input, {
        name = "GetCollaborationTrainedModel",
        input_schema = schemas.GetCollaborationTrainedModelInput,
        output_schema = schemas.GetCollaborationTrainedModelOutput,
        http_method = "GET",
        http_path = "/collaborations/{collaborationIdentifier}/trained-models/{trainedModelArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConfiguredAudienceModel(input, options)
    return self:invokeOperation(input, {
        name = "GetConfiguredAudienceModel",
        input_schema = schemas.GetConfiguredAudienceModelInput,
        output_schema = schemas.GetConfiguredAudienceModelOutput,
        http_method = "GET",
        http_path = "/configured-audience-model/{configuredAudienceModelArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConfiguredAudienceModelPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetConfiguredAudienceModelPolicy",
        input_schema = schemas.GetConfiguredAudienceModelPolicyInput,
        output_schema = schemas.GetConfiguredAudienceModelPolicyOutput,
        http_method = "GET",
        http_path = "/configured-audience-model/{configuredAudienceModelArn}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConfiguredModelAlgorithm(input, options)
    return self:invokeOperation(input, {
        name = "GetConfiguredModelAlgorithm",
        input_schema = schemas.GetConfiguredModelAlgorithmInput,
        output_schema = schemas.GetConfiguredModelAlgorithmOutput,
        http_method = "GET",
        http_path = "/configured-model-algorithms/{configuredModelAlgorithmArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConfiguredModelAlgorithmAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetConfiguredModelAlgorithmAssociation",
        input_schema = schemas.GetConfiguredModelAlgorithmAssociationInput,
        output_schema = schemas.GetConfiguredModelAlgorithmAssociationOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/configured-model-algorithm-associations/{configuredModelAlgorithmAssociationArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMLConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetMLConfiguration",
        input_schema = schemas.GetMLConfigurationInput,
        output_schema = schemas.GetMLConfigurationOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/ml-configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMLInputChannel(input, options)
    return self:invokeOperation(input, {
        name = "GetMLInputChannel",
        input_schema = schemas.GetMLInputChannelInput,
        output_schema = schemas.GetMLInputChannelOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/ml-input-channels/{mlInputChannelArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTrainedModel(input, options)
    return self:invokeOperation(input, {
        name = "GetTrainedModel",
        input_schema = schemas.GetTrainedModelInput,
        output_schema = schemas.GetTrainedModelOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/trained-models/{trainedModelArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTrainedModelInferenceJob(input, options)
    return self:invokeOperation(input, {
        name = "GetTrainedModelInferenceJob",
        input_schema = schemas.GetTrainedModelInferenceJobInput,
        output_schema = schemas.GetTrainedModelInferenceJobOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/trained-model-inference-jobs/{trainedModelInferenceJobArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTrainingDataset(input, options)
    return self:invokeOperation(input, {
        name = "GetTrainingDataset",
        input_schema = schemas.GetTrainingDatasetInput,
        output_schema = schemas.GetTrainingDatasetOutput,
        http_method = "GET",
        http_path = "/training-dataset/{trainingDatasetArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAudienceExportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListAudienceExportJobs",
        input_schema = schemas.ListAudienceExportJobsInput,
        output_schema = schemas.ListAudienceExportJobsOutput,
        http_method = "GET",
        http_path = "/audience-export-job",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAudienceGenerationJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListAudienceGenerationJobs",
        input_schema = schemas.ListAudienceGenerationJobsInput,
        output_schema = schemas.ListAudienceGenerationJobsOutput,
        http_method = "GET",
        http_path = "/audience-generation-job",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAudienceModels(input, options)
    return self:invokeOperation(input, {
        name = "ListAudienceModels",
        input_schema = schemas.ListAudienceModelsInput,
        output_schema = schemas.ListAudienceModelsOutput,
        http_method = "GET",
        http_path = "/audience-model",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCollaborationConfiguredModelAlgorithmAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListCollaborationConfiguredModelAlgorithmAssociations",
        input_schema = schemas.ListCollaborationConfiguredModelAlgorithmAssociationsInput,
        output_schema = schemas.ListCollaborationConfiguredModelAlgorithmAssociationsOutput,
        http_method = "GET",
        http_path = "/collaborations/{collaborationIdentifier}/configured-model-algorithm-associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCollaborationMLInputChannels(input, options)
    return self:invokeOperation(input, {
        name = "ListCollaborationMLInputChannels",
        input_schema = schemas.ListCollaborationMLInputChannelsInput,
        output_schema = schemas.ListCollaborationMLInputChannelsOutput,
        http_method = "GET",
        http_path = "/collaborations/{collaborationIdentifier}/ml-input-channels",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCollaborationTrainedModelExportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListCollaborationTrainedModelExportJobs",
        input_schema = schemas.ListCollaborationTrainedModelExportJobsInput,
        output_schema = schemas.ListCollaborationTrainedModelExportJobsOutput,
        http_method = "GET",
        http_path = "/collaborations/{collaborationIdentifier}/trained-models/{trainedModelArn}/export-jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCollaborationTrainedModelInferenceJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListCollaborationTrainedModelInferenceJobs",
        input_schema = schemas.ListCollaborationTrainedModelInferenceJobsInput,
        output_schema = schemas.ListCollaborationTrainedModelInferenceJobsOutput,
        http_method = "GET",
        http_path = "/collaborations/{collaborationIdentifier}/trained-model-inference-jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCollaborationTrainedModels(input, options)
    return self:invokeOperation(input, {
        name = "ListCollaborationTrainedModels",
        input_schema = schemas.ListCollaborationTrainedModelsInput,
        output_schema = schemas.ListCollaborationTrainedModelsOutput,
        http_method = "GET",
        http_path = "/collaborations/{collaborationIdentifier}/trained-models",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConfiguredAudienceModels(input, options)
    return self:invokeOperation(input, {
        name = "ListConfiguredAudienceModels",
        input_schema = schemas.ListConfiguredAudienceModelsInput,
        output_schema = schemas.ListConfiguredAudienceModelsOutput,
        http_method = "GET",
        http_path = "/configured-audience-model",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConfiguredModelAlgorithmAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListConfiguredModelAlgorithmAssociations",
        input_schema = schemas.ListConfiguredModelAlgorithmAssociationsInput,
        output_schema = schemas.ListConfiguredModelAlgorithmAssociationsOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/configured-model-algorithm-associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConfiguredModelAlgorithms(input, options)
    return self:invokeOperation(input, {
        name = "ListConfiguredModelAlgorithms",
        input_schema = schemas.ListConfiguredModelAlgorithmsInput,
        output_schema = schemas.ListConfiguredModelAlgorithmsOutput,
        http_method = "GET",
        http_path = "/configured-model-algorithms",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMLInputChannels(input, options)
    return self:invokeOperation(input, {
        name = "ListMLInputChannels",
        input_schema = schemas.ListMLInputChannelsInput,
        output_schema = schemas.ListMLInputChannelsOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/ml-input-channels",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTrainedModelInferenceJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListTrainedModelInferenceJobs",
        input_schema = schemas.ListTrainedModelInferenceJobsInput,
        output_schema = schemas.ListTrainedModelInferenceJobsOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/trained-model-inference-jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTrainedModels(input, options)
    return self:invokeOperation(input, {
        name = "ListTrainedModels",
        input_schema = schemas.ListTrainedModelsInput,
        output_schema = schemas.ListTrainedModelsOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/trained-models",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTrainedModelVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListTrainedModelVersions",
        input_schema = schemas.ListTrainedModelVersionsInput,
        output_schema = schemas.ListTrainedModelVersionsOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/trained-models/{trainedModelArn}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTrainingDatasets(input, options)
    return self:invokeOperation(input, {
        name = "ListTrainingDatasets",
        input_schema = schemas.ListTrainingDatasetsInput,
        output_schema = schemas.ListTrainingDatasetsOutput,
        http_method = "GET",
        http_path = "/training-dataset",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putConfiguredAudienceModelPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutConfiguredAudienceModelPolicy",
        input_schema = schemas.PutConfiguredAudienceModelPolicyInput,
        output_schema = schemas.PutConfiguredAudienceModelPolicyOutput,
        http_method = "PUT",
        http_path = "/configured-audience-model/{configuredAudienceModelArn}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putMLConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutMLConfiguration",
        input_schema = schemas.PutMLConfigurationInput,
        output_schema = schemas.PutMLConfigurationOutput,
        http_method = "PUT",
        http_path = "/memberships/{membershipIdentifier}/ml-configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startAudienceExportJob(input, options)
    return self:invokeOperation(input, {
        name = "StartAudienceExportJob",
        input_schema = schemas.StartAudienceExportJobInput,
        output_schema = schemas.StartAudienceExportJobOutput,
        http_method = "POST",
        http_path = "/audience-export-job",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startAudienceGenerationJob(input, options)
    return self:invokeOperation(input, {
        name = "StartAudienceGenerationJob",
        input_schema = schemas.StartAudienceGenerationJobInput,
        output_schema = schemas.StartAudienceGenerationJobOutput,
        http_method = "POST",
        http_path = "/audience-generation-job",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startTrainedModelExportJob(input, options)
    return self:invokeOperation(input, {
        name = "StartTrainedModelExportJob",
        input_schema = schemas.StartTrainedModelExportJobInput,
        output_schema = schemas.StartTrainedModelExportJobOutput,
        http_method = "POST",
        http_path = "/memberships/{membershipIdentifier}/trained-models/{trainedModelArn}/export-jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startTrainedModelInferenceJob(input, options)
    return self:invokeOperation(input, {
        name = "StartTrainedModelInferenceJob",
        input_schema = schemas.StartTrainedModelInferenceJobInput,
        output_schema = schemas.StartTrainedModelInferenceJobOutput,
        http_method = "POST",
        http_path = "/memberships/{membershipIdentifier}/trained-model-inference-jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConfiguredAudienceModel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConfiguredAudienceModel",
        input_schema = schemas.UpdateConfiguredAudienceModelInput,
        output_schema = schemas.UpdateConfiguredAudienceModelOutput,
        http_method = "PATCH",
        http_path = "/configured-audience-model/{configuredAudienceModelArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
